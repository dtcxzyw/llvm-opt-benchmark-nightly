Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateDeduction?download=true
inline.NumInlined: 31829
inline.NumDeleted: 13875
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5clang4Sema49isTemplateTemplateParameterAtLeastAsSpecializedAsEPNS_21TemplateParameterListEPNS_12TemplateDeclES4_RKNS_16DefaultArgumentsENS_14SourceLocationEbPb:bb.a
bb.bh:                                            ; preds = %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  call void @free(ptr noundef %i.mp) #22
  br label %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i: ; preds = %bb.bh, %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  %i.mr = load i32, ptr %i.n, align 8
  %i.ms = and i32 %i.mr, 1
  %.not.i.i.i93 = icmp eq i32 %i.ms, 0
  br i1 %.not.i.i.i93, label %bb.bi, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i
  %i.mt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !43 ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !43
  %i.my = zext i32 %i.mu to i64                   ; 2 uses
  %i.mz = shl nuw nsw i64 %i.my, 4
  %i.na = add nuw nsw i64 %i.my, 31
  %i.nb = lshr i64 %i.na, 3
  %i.nc = and i64 %i.nb, 1073741820
  %i.nd = add nuw nsw i64 %i.nc, %i.mz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mx, i64 noundef %i.nd, i64 noundef 8) #22
  br label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

_ZN5clang23LocalInstantiationScopeD2Ev.exit:      ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.a, %_ZN5clang23LocalInstantiationScopeD2Ev.exit
  %.4 = phi i1 [ %.3, %_ZN5clang23LocalInstantiationScopeD2Ev.exit ], [ false, %bb.a ]
  call void @_ZN5clang4Sema21InstantiatingTemplate5ClearEv(ptr noundef nonnull align 8 dereferenceable(9) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret i1 %.4
}

declare void @_ZN5clang4Sema21InstantiatingTemplateC1ERS0_NS_14SourceLocationENS1_18PartialOrderingTTPEPNS_12TemplateDeclENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i64) unnamed_addr #2

declare { ptr, i64 } @_ZN5clang21TemplateParameterList23getInjectedTemplateArgsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang21TemplateParameterList8getDepthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1059, !range !912, !noundef !728
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !1099, !range !912, !noundef !728
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1063 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIbvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1064
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1063
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIbvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIbvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = zext nneg i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1076
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 2, ptr %i.o, align 1, !tbaa !43
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1063 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !1076  ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !1076
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !790
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !1078, !range !912, !noundef !728
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1087 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1029
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #22, !inline_history !5
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !1089
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !909
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1092
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i8, ptr %1, align 1, !tbaa !1099, !range !912, !noundef !728
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1063 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1064
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !1063
  br label %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = zext nneg i8 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1076
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 2, ptr %i.ay, align 1, !tbaa !43
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !1063 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1076 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1076
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !790
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIbvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema26MarkUsedTemplateParametersEPKNS_4ExprEbjRN4llvm14SmallBitVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !727, !nonnull !728, !align !729
  tail call fastcc void @_ZL26MarkUsedTemplateParametersRN5clang10ASTContextEPKNS_4ExprEbjRN4llvm14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.b, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL26MarkUsedTemplateParametersRN5clang10ASTContextEPKNS_4ExprEbjRN4llvm14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::MarkUsedTemplateParameterVisitor", align 8 ; 8 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %i.a, align 8, !tbaa !1099
  store ptr getelementptr inbounds nuw inrange(-16, 8376) (i8, ptr @_ZTVN12_GLOBAL__N_132MarkUsedTemplateParameterVisitorE, i64 16), ptr %5, align 8, !tbaa !1029
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.b, align 8, !tbaa !1171
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !1718
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 1, ptr %i.d, align 4, !tbaa !1719
  %i.e = call noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12TraverseStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load i16, ptr %1, align 8
  %i.g = and i16 %i.f, 511
  %.not = icmp eq i16 %i.g, 22
  br i1 %.not, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1721
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  %.019.i.ph = phi ptr [ %1, %bb.c ], [ %i.i, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.thread.i
  %.019.i = phi ptr [ %.7.i, %.thread.i ], [ %.019.i.ph, %.preheader ] ; 13 uses
  %i.j = load i16, ptr %.019.i, align 8
  %i.k = and i16 %i.j, 511                        ; 4 uses
  switch i16 %i.k, label %bb.f [
    i16 81, label %6
    i16 63, label %8
    i16 8, label %10
  ]

6:                                                ; preds = %bb.e
  %7 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

8:                                                ; preds = %bb.e
  %9 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

10:                                               ; preds = %bb.e
  %11 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i16 %i.k, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.l, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.019.i, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !909 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.o = icmp ne i64 %i.n, 0
  %i.p = icmp ugt i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.q = and i1 %i.p, %i.o
  br i1 %i.q, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 118         ; 2 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %.019.i, ptr null
  %12 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i, i64 48
  %13 = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %12, ptr %13
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %10, %8, %6
  %.7.in.i = phi ptr [ %7, %6 ], [ %9, %8 ], [ %11, %10 ], [ %spec.select.i.i.i.i.i, %bb.h ]
  %.7.i = load ptr, ptr %.7.in.i, align 8, !tbaa !913
  br label %bb.e

_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit: ; preds = %bb.f
  %.not93 = icmp eq i16 %i.k, 24
  br i1 %.not93, label %bb.i, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

bb.i:                                             ; preds = %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

bb.j:                                             ; preds = %bb.i
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 64
  call void @llvm.assume(i1 true) [ "align"(ptr %.019.i, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.pre14.i.i = and i32 %.pre.i.i, 127            ; 2 uses
  %i.w = icmp eq i32 %.pre14.i.i, 69
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i, label %.split, label %_ZNK5clang12OverloadExpr18isConceptReferenceEv.exit

.split:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 7
  %i.aa = icmp eq i8 %i.z, 6
  br i1 %i.aa, label %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, label %.split85

_ZNK5clang12OverloadExpr18isConceptReferenceEv.exit: ; preds = %bb.j
  switch i32 %.pre14.i.i, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread [
    i32 74, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit
    i32 70, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  ]

.split85:                                         ; preds = %.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = and i8 %i.ac, 7
  %i.ae = icmp eq i8 %i.ad, 3
  br i1 %i.ae, label %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit: ; preds = %.split85, %.split
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = lshr i32 %i.ag, 20                      ; 2 uses
  %i.ai = load i64, ptr %4, align 8, !tbaa !1161  ; 5 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit
  %i.ak = lshr i64 %i.ai, 1
  %i.al = lshr i64 %i.ai, 58
  %i.am = shl nsw i64 -1, %i.al
  %i.an = xor i64 %i.am, -1
  %i.ao = zext nneg i32 %i.ah to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = or i64 %i.ap, %i.ak
  %i.ar = and i64 %i.aq, %i.an
  %i.as = shl nuw i64 %i.ar, 1
  %i.at = and i64 %i.ai, -288230376151711743
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %4, align 8, !tbaa !1161
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

bb.l:                                             ; preds = %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit
  %i.av = inttoptr i64 %i.ai to ptr
  %i.aw = and i32 %i.ah, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = lshr i32 %i.ag, 26
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !766
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !790
  %i.be = or i64 %i.bd, %i.ay
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !790
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZN4llvm14SmallBitVector9referenceaSEb.exit:      ; preds = %_ZNK5clang12OverloadExpr18isConceptReferenceEv.exit, %_ZNK5clang12OverloadExpr18isConceptReferenceEv.exit, %bb.l, %bb.k
  %i.bf = load i32, ptr %.019.i, align 8          ; 2 uses
  %i.bg = and i32 %i.bf, 524288
  %.not.i.i.i.i62 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i62, label %.loopexit, label %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i

_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i: ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.bh = and i32 %i.bf, 511
  %i.bi = icmp eq i32 %i.bh, 24
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !43
  %i.bk = zext i32 %i.bj to i64
  %.1.i.i.v.v.i.i.i.i = select i1 %i.bi, i64 64, i64 80
  %.1.i.i.v.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 %.1.i.i.v.v.i.i.i.i
  %.1.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i.i.i, i64 %i.bk ; 3 uses
  %i.bl = load i32, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !909
  %.not.i.i.i63 = icmp eq i32 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1289 ; 3 uses
  %.not.i.i = icmp eq i32 %i.bn, 0
  %or.cond.i = select i1 %.not.i.i.i63, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %.loopexit, label %_ZNK5clang12OverloadExpr18template_argumentsEv.exit

_ZNK5clang12OverloadExpr18template_argumentsEv.exit: ; preds = %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bp = zext i32 %i.bn to i64
  %i.bq = shl nuw nsw i64 %i.bp, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %.not5097 = icmp eq i32 %i.bn, 0
  br i1 %.not5097, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang12OverloadExpr18template_argumentsEv.exit, %.lr.ph
  %.04398 = phi ptr [ %i.bs, %.lr.ph ], [ %i.bo, %_ZNK5clang12OverloadExpr18template_argumentsEv.exit ] ; 2 uses
  tail call fastcc void @_ZL26MarkUsedTemplateParametersRN5clang10ASTContextERKNS_16TemplateArgumentEbjRN4llvm14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(24) %.04398, i1 noundef zeroext true, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.bs = getelementptr inbounds nuw i8, ptr %.04398, i64 32 ; 2 uses
  %.not50 = icmp eq ptr %i.bs, %i.br
  br i1 %.not50, label %.loopexit, label %.lr.ph

_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread: ; preds = %bb.g, %_ZNK5clang12OverloadExpr18isConceptReferenceEv.exit, %bb.i, %.split85, %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit
  %i.bt = tail call fastcc ptr @_ZL30getDeducedNTTParameterFromExprPKN5clang4ExprEj(ptr noundef nonnull %.019.i, i32 noundef %3) ; 6 uses
  %.not94 = icmp eq ptr %i.bt, null
  br i1 %.not94, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 127
  %.not95 = icmp eq i32 %i.bw, 48
  %.1.in.in.v.i = select i1 %.not95, i64 68, i64 64
  %.1.in.in.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.1.in.in.v.i
  %.1.in.i = load i32, ptr %.1.in.in.i, align 4   ; 3 uses
  %.1.i = and i32 %.1.in.i, 1048575
  %i.bx = icmp eq i32 %.1.i, %3
  br i1 %i.bx, label %bb.n, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit74

bb.n:                                             ; preds = %bb.m
  %.1.i71 = lshr i32 %.1.in.i, 20                 ; 2 uses
  %i.by = load i64, ptr %4, align 8, !tbaa !1161  ; 5 uses
  %i.bz = trunc i64 %i.by to i1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = lshr i64 %i.by, 1
  %i.cb = lshr i64 %i.by, 58
  %i.cc = shl nsw i64 -1, %i.cb
  %i.cd = xor i64 %i.cc, -1
  %i.ce = zext nneg i32 %.1.i71 to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = or i64 %i.ca, %i.cf
  %i.ch = and i64 %i.cg, %i.cd
  %i.ci = shl nuw i64 %i.ch, 1
  %i.cj = and i64 %i.by, -288230376151711743
  %i.ck = or i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %4, align 8, !tbaa !1161
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit74

bb.p:                                             ; preds = %bb.n
  %i.cl = inttoptr i64 %i.by to ptr
  %i.cm = and i32 %.1.i71, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = lshr i32 %.1.in.i, 26
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !766
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !790
  %i.cu = or i64 %i.ct, %i.co
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !790
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit74

_ZN4llvm14SmallBitVector9referenceaSEb.exit74:    ; preds = %bb.p, %bb.o, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1654, !nonnull !728, !align !729
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, 32768
  %.not51 = icmp eq i64 %i.cy, 0
  br i1 %.not51, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit74
  %i.cz = load i32, ptr %i.bu, align 4
  %i.da = and i32 %i.cz, 127
  %.not96 = icmp eq i32 %i.da, 48
  br i1 %.not96, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  br label %_ZNK28NonTypeOrVarTemplateParmDecl7getTypeEv.exit

bb.s:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = and i8 %i.dd, 7
  %i.df = icmp eq i8 %i.de, 6
  %i.dg = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %i.bt) #24 ; 2 uses
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 18904
end_hunk_0
begin_hunk_1_@_ZN4llvm6APSInt13compareValuesERKS0_S2_:bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1252, !range !912, !noundef !728 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !1252, !range !912, !noundef !728
  %.not = icmp eq i8 %i.g, %i.i
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw i8 %i.g to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.m = icmp ugt i32 %i.b, %i.d
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !1252, !range !912, !noalias !2258, !noundef !728
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit2.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.g
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %i.b) #22, !noalias !2258
  br label %_ZNK4llvm6APSInt6extendEj.exit

_ZN4llvm5APIntD2Ev.exit2.i:                       ; preds = %bb.g
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %i.b) #22, !noalias !2258
  br label %_ZNK4llvm6APSInt6extendEj.exit

_ZNK4llvm6APSInt6extendEj.exit:                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit2.i
  %.sink7.i.sroa.phi = phi ptr [ %.sink7.i.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %.sink7.i.sroa.gep31, %_ZN4llvm5APIntD2Ev.exit.i ]
  %.sink7.i = phi ptr [ %5, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %4, %_ZN4llvm5APIntD2Ev.exit.i ]
  %i.q = load i8, ptr %i.n, align 4, !tbaa !1252, !range !912, !noalias !2258, !noundef !728
  %i.r = load i32, ptr %.sink7.i.sroa.phi, align 8, !tbaa !1245, !noalias !2258
  %i.s = load i64, ptr %.sink7.i, align 8, !noalias !2258
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.r, ptr %i.t, align 8, !tbaa !1245, !alias.scope !2258
  store i64 %i.s, ptr %6, align 8, !alias.scope !2258
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.q, ptr %i.u, align 4, !tbaa !1252, !alias.scope !2258
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %6)
  %i.w = load i32, ptr %i.t, align 8, !tbaa !1245
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZNK4llvm6APSInt6extendEj.exit
  %i.y = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.y) #23
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm6APSInt6extendEj.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp ugt i32 %i.d, %i.b
  br i1 %i.aa, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !1252, !range !912, !noalias !2259, !noundef !728
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4llvm5APIntD2Ev.exit.i26, label %_ZN4llvm5APIntD2Ev.exit2.i24

_ZN4llvm5APIntD2Ev.exit.i26:                      ; preds = %bb.k
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(13) %0, i32 noundef %i.d) #22, !noalias !2259
  br label %_ZNK4llvm6APSInt6extendEj.exit27

_ZN4llvm5APIntD2Ev.exit2.i24:                     ; preds = %bb.k
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(13) %0, i32 noundef %i.d) #22, !noalias !2259
  br label %_ZNK4llvm6APSInt6extendEj.exit27

_ZNK4llvm6APSInt6extendEj.exit27:                 ; preds = %_ZN4llvm5APIntD2Ev.exit.i26, %_ZN4llvm5APIntD2Ev.exit2.i24
  %.sink7.i25.sroa.phi = phi ptr [ %.sink7.i25.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2.i24 ], [ %.sink7.i25.sroa.gep32, %_ZN4llvm5APIntD2Ev.exit.i26 ]
  %.sink7.i25 = phi ptr [ %3, %_ZN4llvm5APIntD2Ev.exit2.i24 ], [ %2, %_ZN4llvm5APIntD2Ev.exit.i26 ]
  %i.ae = load i8, ptr %i.ab, align 4, !tbaa !1252, !range !912, !noalias !2259, !noundef !728
  %i.af = load i32, ptr %.sink7.i25.sroa.phi, align 8, !tbaa !1245, !noalias !2259
  %i.ag = load i64, ptr %.sink7.i25, align 8, !noalias !2259
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !1245, !alias.scope !2259
  store i64 %i.ag, ptr %7, align 8, !alias.scope !2259
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 %i.ae, ptr %i.ai, align 4, !tbaa !1252, !alias.scope !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aj = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(13) %1)
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !1245
  %i.al = icmp ugt i32 %i.ak, 64
  br i1 %i.al, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit28

bb.l:                                             ; preds = %_ZNK4llvm6APSInt6extendEj.exit27
  %i.am = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit28, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #23
  br label %_ZN4llvm5APIntD2Ev.exit28

_ZN4llvm5APIntD2Ev.exit28:                        ; preds = %_ZNK4llvm6APSInt6extendEj.exit27, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !1252, !range !912, !noundef !728
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %bb.n
  %i.ar = add i32 %i.b, -1                        ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = icmp ult i32 %i.b, 65
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = lshr i32 %i.ar, 6
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %.in.i.i.i.i = select i1 %i.av, ptr %0, ptr %i.az
  %i.ba = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !43
  %i.bb = and i64 %i.ba, %i.au
  %.not34 = icmp eq i64 %i.bb, 0
  br i1 %.not34, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !1252, !range !912, !noundef !728
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %_ZNK4llvm6APSInt10isNegativeEv.exit30

_ZNK4llvm6APSInt10isNegativeEv.exit30:            ; preds = %bb.o
  %i.bf = add i32 %i.d, -1                        ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = icmp ult i32 %i.d, 65
  %i.bk = load ptr, ptr %1, align 8
  %i.bl = lshr i32 %i.bf, 6
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %.in.i.i.i.i29 = select i1 %i.bj, ptr %1, ptr %i.bn
  %i.bo = load i64, ptr %.in.i.i.i.i29, align 8, !tbaa !43
  %i.bp = and i64 %i.bo, %i.bi
  %.not33 = icmp eq i64 %i.bp, 0
  br i1 %.not33, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %bb.p

_ZNK4llvm6APSInt10isNegativeEv.exit30.thread:     ; preds = %bb.o, %_ZNK4llvm6APSInt10isNegativeEv.exit30, %_ZNK4llvm6APSInt10isNegativeEv.exit
  %i.bq = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit30, %_ZNK4llvm6APSInt10isNegativeEv.exit, %bb.d, %bb.e, %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, %_ZN4llvm5APIntD2Ev.exit28, %_ZN4llvm5APIntD2Ev.exit
  %.0 = phi i32 [ -1, %_ZNK4llvm6APSInt10isNegativeEv.exit ], [ %i.v, %_ZN4llvm5APIntD2Ev.exit ], [ %i.aj, %_ZN4llvm5APIntD2Ev.exit28 ], [ %i.l, %bb.e ], [ %i.bq, %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread ], [ %i.k, %bb.d ], [ 1, %_ZNK4llvm6APSInt10isNegativeEv.exit30 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

declare void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc ptr @_ZL30getDeducedNTTParameterFromExprPKN5clang4ExprEj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.thread.i, %bb.a
  %.019.i = phi ptr [ %0, %bb.a ], [ %.7.i, %.thread.i ] ; 11 uses
  %i.a = load i16, ptr %.019.i, align 8
  %i.b = and i16 %i.a, 511                        ; 4 uses
  switch i16 %i.b, label %bb.c [
    i16 81, label %2
    i16 63, label %4
    i16 8, label %6
  ]

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

4:                                                ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

6:                                                ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  br label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i16 %i.b, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.c, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !909 ; 2 uses
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ugt i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i16 %i.b, 118         ; 2 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %.019.i, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %8, ptr %9
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %6, %4, %2
  %.7.in.i = phi ptr [ %3, %2 ], [ %5, %4 ], [ %7, %6 ], [ %spec.select.i.i.i.i.i, %bb.e ]
  %.7.i = load ptr, ptr %.7.in.i, align 8, !tbaa !913
  br label %bb.b

_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit: ; preds = %bb.c, %bb.d
  switch i16 %i.b, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread [
    i16 73, label %bb.f
    i16 24, label %bb.h
  ]

bb.f:                                             ; preds = %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1734 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 127
  %i.n = icmp ne i32 %i.m, 48
  %.not2554 = icmp eq ptr %i.j, null
  %.not25 = or i1 %.not2554, %i.n
  br i1 %.not25, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1048575
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %bb.j, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

bb.h:                                             ; preds = %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 64
  call void @llvm.assume(i1 true) [ "align"(ptr %.019.i, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.pre14.i.i = and i32 %.pre.i.i, 127
  %i.x = icmp eq i32 %.pre14.i.i, 69
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %.split, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

.split:                                           ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 7
  %i.ab = icmp eq i8 %i.aa, 6
  br i1 %i.ab, label %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, label %.split46

.split46:                                         ; preds = %.split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, 7
  %i.af = icmp eq i8 %i.ae, 3
  br i1 %i.af, label %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit: ; preds = %.split46, %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %bb.j, label %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread

_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread: ; preds = %bb.i, %bb.f, %bb.g, %_ZL28unwrapExpressionForDeductionPKN5clang4ExprE.exit, %bb.h, %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, %.split46
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit, %bb.g, %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread
  %.sroa.0.2 = phi ptr [ null, %_ZNK5clang12OverloadExpr18isVarDeclReferenceEv.exit.thread ], [ %i.j, %bb.g ], [ %i.w, %_ZNK5clang12OverloadExpr23getTemplateTemplateDeclEv.exit ]
  ret ptr %.sroa.0.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare i64 @_ZNK5clang10ASTContext24getAdjustedParameterTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext22getRValueReferenceTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext22getLValueReferenceTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904), i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #6

declare i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef, ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang16TemplateArgument19initFromDeclarationEPNS_9ValueDeclENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24), i64, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang29NestedNameSpecifierLocBuilder11PushTrivialERNS_10ASTContextENS_19NestedNameSpecifierENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(23904), i64, i64) local_unnamed_addr #2

declare void @_ZNK5clang12TemplateName30getQualifierAndTemplateKeywordEv(ptr dead_on_unwind writable sret(%"class.std::tuple.1402") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema21InstantiatingTemplate5ClearEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::MultiLevelTemplateArgumentList::ArgumentListLevel", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1735
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !767
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !766
  %i.g = load i32, ptr %i.a, align 8, !tbaa !767
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !767
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !767
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang17FunctionProtoType14getMethodQualsEv(ptr noundef nonnull align 16 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16             ; 9 uses
  %i.c = and i64 %i.b, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = lshr i64 %i.b, 48                        ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = lshr i64 %i.b, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i64 %i.g, 1
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.lobit.i.i.i.i.i.i.i.i.i.i
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, 7
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = and i64 %i.b, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i24, ptr %i.l, align 8              ; 2 uses
  %i.o = lshr i24 %i.n, 10
  %.lobit.i.i.i.i.i.i.i.i.i = and i24 %i.o, 1
  %i.p = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p
  %i.s = lshr i24 %i.n, 11
  %.lobit.i.i.i.i.i.i.i.i = and i24 %i.s, 1
  %i.t = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %i.v = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %i.w = and i64 %i.b, 503316480
  %i.x = icmp eq i64 %i.w, 67108864
  br i1 %i.x, label %bb.d, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %i.y = load i24, ptr %i.l, align 8
  %i.z = and i24 %i.y, 1023
  %i.aa = zext nneg i24 %i.z to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.d ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i ]
  %i.ab = trunc i64 %i.b to i32
  %i.ac = lshr i32 %i.ab, 25
  %i.ad = and i32 %i.ac, 15                       ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE18TransformBlockExprEPNS_9BlockExprE, i64 %i.ae
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %spec.select.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1691  ; 3 uses
  %i.ap = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !732
  %i.aq = icmp eq i32 %.val.val, 0
  %i.ar = icmp eq ptr %.0.i, %i.b
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2909
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !994
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  %i.az = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ay, ptr noundef nonnull %.0.i) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.g ], [ %i.az, %bb.h ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2919 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1794, !noalias !2920 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1795, !noalias !2920 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1240, !noalias !2920 ; 4 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !909, !noalias !2921
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1742

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1107, !noalias !2921
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !982

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !909, !noalias !2921
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1743

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1797
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1164
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1691  ; 4 uses
  %i.av = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.av, align 4, !tbaa !732
  %.not24 = icmp eq i32 %.val.val, 0
  br i1 %.not24, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !2919
  %i.ax = icmp eq ptr %.0.i, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2922
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !994
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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1164
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
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 4, !tbaa !909
  %i.bn = and i64 %.sroa.0.0, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %.val, i64 232
  %.val15.val = load ptr, ptr %i.bp, align 8, !tbaa !727
  %i.bq = getelementptr i8, ptr %.val, i64 616
  %.val15.val16 = load ptr, ptr %i.bq, align 8, !tbaa !994
  %i.br = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val15.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.bo, ptr noundef %.val15.val16) #22
  %i.bs = ptrtoint ptr %i.br to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.022.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bl, %bb.k ], [ %i.bs, %bb.l ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.sroa.022.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1888", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.1887", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.1888", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1882
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1164
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i44 = icmp eq i16 %i.j, 118           ; 2 uses
  %spec.select.i.i.i.i.i45 = select i1 %.not.i.i.i44, ptr %1, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i45, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %spec.select.i.i.i46 = select i1 %.not.i.i.i44, ptr %7, ptr %i.k
  %i.l = load ptr, ptr %spec.select.i.i.i46, align 8, !tbaa !1164
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not74 = icmp eq i32 %i.o, 0
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i47 = icmp eq i32 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i48 = select i1 %.not.i.i.i47, ptr %1, ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i48, i64 48
  %spec.select.i.i.i49 = select i1 %.not.i.i.i47, ptr %i.q, ptr %i.k
  %i.r = load ptr, ptr %spec.select.i.i.i49, align 8, !tbaa !1164
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !43 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1691
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !727, !nonnull !728, !align !729
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #22, !inline_history !8
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !8 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !43 ; 4 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1883 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1794, !noalias !2931 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1795, !noalias !2931 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1240, !noalias !2931 ; 4 uses
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !909, !noalias !2932
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1742

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1107, !noalias !2932
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !982

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !909, !noalias !2932
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1743

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
  %.not.i50 = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i50, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1797
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !766
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !767
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !844
  %.val = load ptr, ptr %0, align 8, !tbaa !1691  ; 6 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not75 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not75, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !766
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !767
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1229
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1034, !nonnull !728, !align !729
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i51 = icmp eq i64 %i.cg, 0
  br i1 %.not.i51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #22
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
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !1882
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cl, label %bb.p, label %.critedge38

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #22
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52

bb.r:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #22
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52: ; preds = %.critedge38, %bb.r
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1691 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.cm, align 4, !tbaa !732
  %.not76 = icmp eq i32 %.val39.val, 0
  br i1 %.not76, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.t, align 8, !tbaa !43
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i53
  br i1 %i.cn, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !1883
  %i.cp = icmp ne ptr %.0.i, %i.co
  %i.cq = load i8, ptr %i.a, align 1, !range !912
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #24
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.cs, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #22
  %i.ct = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.t, %bb.s, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit52
  %i.cu = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #24 ; 2 uses
  %i.cv = load i32, ptr %1, align 8               ; 3 uses
  %i.cw = and i32 %i.cv, 524288
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = load ptr, ptr %4, align 8, !tbaa !766
  %i.cz = load i32, ptr %i.bq, align 8, !tbaa !767
  %i.da = zext i32 %i.cz to i64
  %i.db = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = and <4 x i32> %i.dc, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.de = icmp ne <4 x i32> %i.dd, zeroinitializer ; 4 uses
  %i.df = lshr i32 %i.cv, 24
  %i.dg = and i32 %i.df, 7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.dh, align 8, !tbaa !909
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 2305843009213693952
  %.not.i56 = icmp eq i64 %i.dk, 0
  br i1 %.not.i56, label %bb.v, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !2933
  br label %bb.v

bb.v:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i57 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dl, ptr %2, align 8, !tbaa !766
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !767
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dn, align 4, !tbaa !844
  %i.do = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef %.0.i57, i64 %.sroa.0.0.copyload.i.i, ptr %i.cy, i64 %i.da, i32 %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #22
  br i1 %i.do, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i58 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.dp = load ptr, ptr %2, align 8, !tbaa !766
  store ptr %i.dp, ptr %3, align 8, !tbaa !1163
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !767
  %i.ds = zext i32 %i.dr to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !1144
  %i.dt = extractelement <4 x i1> %i.de, i64 0
  %i.du = extractelement <4 x i1> %i.de, i64 1
  %i.dv = extractelement <4 x i1> %i.de, i64 2
  %i.dw = extractelement <4 x i1> %i.de, i64 3
  %i.dx = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i58, i32 %i.cu, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cx, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1887") align 8 %3, i1 noundef zeroext %i.dw, i1 noundef zeroext %i.dv, i1 noundef zeroext %i.du, i1 noundef zeroext %i.dt, i32 noundef %i.dg, i64 %.sroa.0.0.copyload.i55) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.020.0.i = phi i64 [ %i.dx, %bb.w ], [ 1, %bb.v ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !766   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dl
  br i1 %i.dz, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.dy) #22
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.p, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.u
  %.sroa.069.0 = phi i64 [ %i.ct, %bb.u ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.ea = load ptr, ptr %4, align 8, !tbaa !766   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bp
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.ea) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.069.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.069.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.sroa.069.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1888", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2943
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1883 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1794, !noalias !2944 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1795, !noalias !2944 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1240, !noalias !2944 ; 4 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !909, !noalias !2945
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1742

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1107, !noalias !2945
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !982

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !909, !noalias !2945
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1743

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1797
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.w, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !766
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !767
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !844
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1882 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #22
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !1691  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not51 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !766
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !767
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1229
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1034, !nonnull !728, !align !729
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i42 = icmp eq i64 %i.bo, 0
  br i1 %.not.i42, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #22
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
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !1882
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond50.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond50.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %i.bx = load ptr, ptr %2, align 8, !tbaa !766
  %i.by = load i32, ptr %i.au, align 8, !tbaa !767
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #22 ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 1
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !767
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !844
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #22
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !767
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !766
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !767
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !767
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #22
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1691 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.ck, align 4, !tbaa !732
  %.not52 = icmp eq i32 %.val39.val, 0
  br i1 %.not52, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !2943
  %i.cm = icmp eq ptr %i.d, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !1883
  %i.co = icmp ne ptr %.0.i, %i.cn
  %i.cp = load i8, ptr %i.a, align 1, !range !912
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.cr, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #22
  %i.cs = load ptr, ptr %0, align 8, !tbaa !1691, !nonnull !728, !align !729
  %i.ct = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cs, ptr noundef nonnull %1) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cv, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.cy = load ptr, ptr %2, align 8, !tbaa !766
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !767
  %i.da = zext i32 %i.cz to i64
  %i.db = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #24
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 2097152
  %i.de = icmp ne i32 %i.dd, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.df = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.cx, ptr %i.cy, i64 %i.da, i32 %i.db, i1 noundef zeroext %i.de) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.t, %bb.s
  %.sroa.035.3 = phi i64 [ %i.df, %bb.t ], [ %i.ct, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dg = load ptr, ptr %2, align 8, !tbaa !766   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dg) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2946
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2949 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1691, !nonnull !728, !align !729
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1886
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1886
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2752", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.500", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2952 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1691, !nonnull !728, !align !729
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #22
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #22
  %i.e = load ptr, ptr %0, align 8, !tbaa !1691, !nonnull !728, !align !729
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #22 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2954
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2954
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !766
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !767
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !766
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !767
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !844
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #22 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !43  ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #23
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !3346, !nonnull !728, !align !729
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !1994
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3346, !nonnull !728, !align !729 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !3366
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !3367
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !1768, !range !912, !noundef !728
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !1768
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !43  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #23
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !767
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !766
  %i.g = load i32, ptr %i.a, align 8, !tbaa !767
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !767
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !767
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang8SemaSYCL23BuildSYCLKernelCallStmtEPNS_12FunctionDeclEPNS_12CompoundStmtEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

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
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1888", align 8 ; 10 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1865 ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1661
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1863 ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1861
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1886 ; 3 uses
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
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #22 ; 2 uses
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
  %.tr118.be = load ptr, ptr %.tr118.be.in, align 8, !tbaa !913 ; 2 uses
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
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #24 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #22
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #22
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
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
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1691 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !766
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !767
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1229
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1034, !nonnull !728, !align !729
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #22
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1691
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !767
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !766
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !2036, !range !912, !noundef !728
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !2036
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !2037, !range !912, !noundef !728
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !2037
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !766
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !767
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !1099
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %.5, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i64 = select i1 %.not.i.i, ptr %8, ptr %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1882
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i64, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #24
  %i.ch = load ptr, ptr %3, align 8, !tbaa !766
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !767
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #24
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #22
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8, !tbaa !909 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !766
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !767
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ct = load ptr, ptr %3, align 8, !tbaa !766   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #22
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.1503", align 8 ; 8 uses
  %.not141 = icmp eq i32 %2, 0
  br i1 %.not141, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1164 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !1099
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1164 ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %.not140 = icmp eq i16 %i.n, 22
  br i1 %.not140, label %bb.g, label %.thread136

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  %.not140156 = icmp eq i16 %i.p, 22
  br i1 %.not140156, label %bb.g, label %.thread136.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1721 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.d, ptr %6, align 8, !tbaa !766
  store i32 0, ptr %i.e, align 8, !tbaa !767
  store i32 2, ptr %i.f, align 4, !tbaa !844
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1827
  %.val89 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !909
  store i32 0, ptr %i.v, align 4, !tbaa !909
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !909
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1691
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #22 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !1099
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !767 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !844
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !982

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !766
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !767
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !767
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !909
  %i.am = load ptr, ptr %6, align 8, !tbaa !766   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_130SubstituteDeducedTypeTransformEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
  br i1 %i.ar, label %.critedge88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = and i64 %storemerge, -2
end_hunk_3
