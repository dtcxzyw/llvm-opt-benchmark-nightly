Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang4Sema18CheckReturnValExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationEbPKN4llvm11SmallVectorIPNS_4AttrELj4EEEPKNS_12FunctionDeclE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not36 = icmp eq ptr %.sroa.07.1.i.i.i, %i.i
  br i1 %.not36, label %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit.thread, label %bb.e

_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit.thread: ; preds = %bb.c, %bb.b, %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit, %bb.a
  br i1 %4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit.thread
  %i.o = and i64 %2, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !1324
  %i.r = tail call i8 @_ZNK5clang4Type14getNullabilityEv(ptr noundef nonnull align 16 dereferenceable(24) %i.q) #31
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit
  %i.t = tail call fastcc noundef zeroext i1 @_ZL16CheckNonNullExprRN5clang4SemaEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 %3, i32 noundef 7417) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.v = zext i1 %4 to i32
  store i32 %i.v, ptr %i.b, align 4, !tbaa !1103
  %i.w = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.x = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  store i64 %i.x, ptr %8, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %_ZN5clang15hasSpecificAttrINS_18ReturnsNonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit.thread
  %.not26 = icmp eq ptr %6, null
  br i1 %.not26, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef i32 @_ZNK5clang12FunctionDecl21getOverloadedOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #31
  %i.aa = and i32 %i.z, -3
  %or.cond = icmp eq i32 %i.aa, 1
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !1129
  %i.ac = and i64 %.sroa.0.0.copyload.i, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !1324 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16
  %.not.i28 = icmp eq i8 %i.ag, 24
  br i1 %.not.i28, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ae) #31
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.i, %bb.j
  %.1.i = phi ptr [ %i.ah, %bb.j ], [ %i.ae, %bb.i ]
  %i.ai = call noundef i32 @_ZNK5clang17FunctionProtoType8canThrowEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i) #31
  %.not37 = icmp eq i32 %i.ai, 2
  br i1 %.not37, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.aj = call fastcc noundef zeroext i1 @_ZL16CheckNonNullExprRN5clang4SemaEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1)
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 %3, i32 noundef 7485) #31
  %i.al = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = lshr i32 %i.ap, 13
  %i.ar = and i32 %i.aq, 1
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !1103
  %i.as = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %bb.g
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.at, align 8, !tbaa !1129
  %i.au = and i64 %.sroa.0.0.copyload.i29, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !1324
  %i.ax = call noundef zeroext i1 @_ZNK5clang4Type22isWebAssemblyTableTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #31
  br i1 %i.ax, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 %3, i32 noundef 5606) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 1, ptr %i.d, align 4, !tbaa !1103
  %i.az = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.o, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 17712
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1102
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 248
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1352
  %i.bg = add i32 %i.bf, -23
  %spec.select.i = icmp ult i32 %i.bg, 2
  br i1 %spec.select.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1355
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.bj, align 8, !tbaa !1129
  %i.bk = call noundef zeroext i1 @_ZN5clang7SemaPPC15CheckPPCMMATypeENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i64 %.sroa.0.0.copyload.i31, i32 %3) #31 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL16CheckNonNullExprRN5clang4SemaEPKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit
  %.0810.i.i = phi ptr [ %.1.i, %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit ], [ %1, %bb.a ] ; 8 uses
  %i.b = load i16, ptr %.0810.i.i, align 8        ; 2 uses
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %i.d = icmp eq i16 %i.c, 81
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i) #31
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i16 %i.f, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1313 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.h, %.0810.i.i
  br i1 %.not.i.i28, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i, %bb.c
  switch i16 %i.c, label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.d
    i16 120, label %bb.g
  ]

bb.d:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8 ; 3 uses
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit

bb.f:                                             ; preds = %bb.d
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1691
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit

bb.g:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1694
  br label %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit

_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit: ; preds = %bb.b, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i, %bb.e, %bb.f, %bb.g
  %.1.i27 = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.h, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i.i ], [ %i.p, %bb.f ], [ %i.r, %bb.g ], [ %.0810.i.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i.i ] ; 15 uses
  %i.s = load i16, ptr %.1.i27, align 8
  %i.t = and i16 %i.s, 511
  %i.u = add nsw i16 %i.t, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.u, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit
  %i.v = load i32, ptr %.1.i27, align 8           ; 2 uses
  %i.w = and i32 %i.v, 524288
  %.not.i26 = icmp eq i32 %i.w, 0
  %i.x = and i32 %i.v, 511
  %i.y = icmp eq i32 %i.x, 118
  %or.cond.i = or i1 %.not.i26, %i.y
  br i1 %or.cond.i, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i27, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1697
  switch i32 %i.aa, label %bb.j [
    i32 1, label %.thread30.i
    i32 0, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit
  ]

.thread30.i:                                      ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %.1.i27, i64 40 ; 2 uses
  br label %.split.i

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i27, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1154
  %i.ad = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31
  br i1 %i.ad, label %bb.k, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit

bb.k:                                             ; preds = %bb.j
  %.pre.i = load i16, ptr %.1.i27, align 8
  %.pre.fr.i = freeze i16 %.pre.i
  %.pre24.i = and i16 %.pre.fr.i, 511
  %i.ae = icmp eq i16 %.pre24.i, 118
  %3 = getelementptr inbounds nuw i8, ptr %.1.i27, i64 40 ; 2 uses
  %spec.select = select i1 %i.ae, ptr %i.ab, ptr %3
  br label %.split.i

.split.i:                                         ; preds = %bb.k, %.thread30.i
  %4 = phi ptr [ %2, %.thread30.i ], [ %3, %bb.k ]
  %5 = phi ptr [ %2, %.thread30.i ], [ %spec.select, %bb.k ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !1154
  %i.ag = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31
  br i1 %i.ag, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit, label %bb.l

bb.l:                                             ; preds = %.split.i
  %i.ah = load i32, ptr %.1.i27, align 8          ; 2 uses
  %i.ai = and i32 %i.ah, 2097152
  %.not23.i = icmp eq i32 %i.ai, 0
  br i1 %.not23.i, label %bb.m, label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = and i32 %i.ah, 511
  %.not.i.i.i12.i = icmp eq i32 %i.aj, 118        ; 2 uses
  %spec.select.i.i.i.i.i13.i = select i1 %.not.i.i.i12.i, ptr %.1.i27, ptr null
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i13.i, i64 48
  %spec.select.i.i.i14.i = select i1 %.not.i.i.i12.i, ptr %i.ak, ptr %4
  %i.al = load ptr, ptr %spec.select.i.i.i14.i, align 8, !tbaa !1154
  br label %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit

_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit, %bb.h, %bb.i, %bb.j, %.split.i, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.al, %bb.m ], [ %.1.i27, %_ZN5clang33IgnoreImplicitAsWrittenSingleStepEPNS_4ExprE.exit ], [ %.1.i27, %bb.j ], [ %.1.i27, %bb.h ], [ %.1.i27, %bb.i ], [ %.1.i27, %bb.l ], [ %.1.i27, %.split.i ] ; 3 uses
  %.not.i.i = icmp eq ptr %.1.i, %.0810.i.i
  br i1 %.not.i.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_EEEPKS1_S6_DpOT_.exit, label %.lr.ph.i.i, !llvm.loop !2347

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_EEEPKS1_S6_DpOT_.exit: ; preds = %_ZN5clang43IgnoreElidableImplicitConstructorSingleStepEPNS_4ExprE.exit
  %i.am = load i16, ptr %.1.i, align 8
  %i.an = and i16 %i.am, 511
  %i.ao = icmp eq i16 %i.an, 107
  br i1 %i.ao, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_EEEPKS1_S6_DpOT_.exit
  %i.ap = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !tbaa !1129
  %i.ar = and i64 %.sroa.0.0.copyload.i, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !1324
  %i.au = tail call i8 @_ZNK5clang4Type14getNullabilityEv(ptr noundef nonnull align 16 dereferenceable(24) %i.at) #31
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.aw, align 8, !tbaa !1129
  %i.ax = and i64 %.sroa.0.0.copyload.i22, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !1324
  %i.ba = tail call noundef ptr @_ZNK5clang4Type14getAsUnionTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.az) #31 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1334
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1700 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bf, align 8 ; 3 uses
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i = select i1 %i.bh, i64 %i.bi, i64 0 ; 3 uses
  %i.bj = icmp ugt i64 %spec.select.i.i.i.i.i.i, 3
  br i1 %i.bj, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bk = and i64 %spec.select.i.i.i.i.i.i, 2
  %.not.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %spec.select.i.i.i.i.i.i, -4
  %i.bm = inttoptr i64 %i.bl to ptr               ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 18624
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1701 ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.not.i.i.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2632 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1385 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = add i64 %i.br, 24                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 2640
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !1386
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.u, !prof !1151

bb.t:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %i.bs to ptr
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !1385
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bx = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.bx to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i, %bb.u ], [ %i.br, %bb.t ]
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %bb.u ], [ %i.bq, %bb.t ] ; 3 uses
  store ptr %i.bo, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1703
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.by, align 8, !tbaa !1704
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.be, ptr %i.bz, align 8, !tbaa !1705
  %i.ca = or i64 %.pre-phi.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.cb = ptrtoint ptr %i.be to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.w ], [ %i.ca, %bb.v ]
  %i.cc = or i64 %.sroa.0.1.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.cc, ptr %i.bf, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i, %bb.p
  %.0.copyload.i.i.i.i10.i.i.i.i = phi i64 [ %i.cc, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.p ] ; 2 uses
  %i.cd = and i64 %.0.copyload.i.i.i.i10.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  %i.ce = and i64 %.0.copyload.i.i.i.i10.i.i.i.i, -6 ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 4 uses
  %.not.not14.i.i.i.i.i = icmp eq i64 %i.ce, 0
  %.not.not.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1704
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1703 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1708 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i32 %i.ch, %i.ck
  br i1 %.not12.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.ck, ptr %i.cg, align 8, !tbaa !1704
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !1143
  %i.cm = getelementptr i8, ptr %i.cl, i64 152, !nosanitize !734
  %i.cn = load ptr, ptr %i.cm, align 8, !nosanitize !734
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull %i.be) #31, !inline_history !2348
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1705
  br label %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit

_ZN5clang10RecordDecl17getMostRecentDeclEv.exit:  ; preds = %bb.q, %bb.x, %bb.aa
  %.3.i.i.i.i = phi ptr [ %i.bm, %bb.q ], [ %i.cp, %bb.aa ], [ %i.cf, %bb.x ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.3.i.i.i.i, i64 28
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 256
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit
  %i.ct = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.3.i.i.i.i) #31 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1152 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1149 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %.idx.i.i = shl nuw nsw i64 %i.cx, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i ; 2 uses
  %.not.i.i24 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i24, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ab, %bb.ac
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.dd, %bb.ac ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cz = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1205
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  %i.db = load i16, ptr %i.da, align 4
  %i.dc = icmp eq i16 %i.db, 404
  br i1 %i.dc, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33, label %.lr.ph.i.i.i.i.i, !llvm.loop !2349

_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not36 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.cy
  br i1 %.not36, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit
  %i.de = load i16, ptr %1, align 8
  %i.df = and i16 %i.de, 511
  %.not38 = icmp eq i16 %i.df, 78
  br i1 %.not38, label %bb.ae, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1712 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 8
  %i.dj = and i16 %i.di, 511
  %.not40 = icmp eq i16 %i.dj, 55
  br i1 %.not40, label %bb.af, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1644
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1313
  br label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33

_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33: ; preds = %bb.ac, %bb.ab, %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit, %bb.ad, %bb.af, %bb.ae, %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit, %bb.o
  %.2 = phi ptr [ %1, %bb.o ], [ %1, %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit ], [ %1, %bb.ad ], [ %i.dm, %bb.af ], [ %1, %bb.ae ], [ %1, %bb.ab ], [ %1, %_ZN5clang10RecordDecl17getMostRecentDeclEv.exit ], [ %1, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.dn = load i24, ptr %.2, align 8
  %i.do = and i24 %i.dn, 131072
  %.not41 = icmp eq i24 %i.do, 0
  br i1 %.not41, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread33
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_0
begin_hunk_1_@_ZL26AnalyzeImplicitConversionsRN5clang4SemaEPNS_4ExprENS_14SourceLocationEb:_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemELb1EE9push_backES2_.exit
  %i.awd = phi ptr [ %i.avh, %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit26.thread ], [ %i.awc, %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit26 ] ; 2 uses
  %i.awe = load i16, ptr %i.awd, align 8
  %i.awf = and i16 %i.awe, 511
  %i.awg = icmp eq i16 %i.awf, 9
  br i1 %i.awg, label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit26
  %i.awh = phi ptr [ %i.awd, %bb.hw ], [ %i.awc, %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit26 ]
  %i.awi = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.sroa.0.0.copyload.i.i21 = load i32, ptr %i.awi, align 4, !tbaa !1103
  %i.awj = load ptr, ptr %i.h, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.awk = load i64, ptr %i.awj, align 8
  %i.awl = and i64 %i.awk, 4096
  %.not.i16 = icmp eq i64 %i.awl, 0
  br i1 %.not.i16, label %bb.hy, label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20

bb.hy:                                            ; preds = %bb.hx
  %i.awm = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awh) #32 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.awn, align 8, !tbaa !1129
  %i.awo = and i64 %.sroa.0.0.copyload.i.i17, -16
  %i.awp = inttoptr i64 %i.awo to ptr
  %i.awq = load ptr, ptr %i.awp, align 16, !tbaa !1324
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i18 = load i64, ptr %i.awr, align 8, !tbaa !1129
  %i.aws = and i64 %.sroa.0.0.copyload.i.i.i.i.i18, -16
  %i.awt = inttoptr i64 %i.aws to ptr
  %i.awu = load ptr, ptr %i.awt, align 16, !tbaa !1324
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  %i.aww = load i8, ptr %i.awv, align 16
  %i.awx = icmp eq i8 %i.aww, 7
  br i1 %i.awx, label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.awy = load ptr, ptr %i.m, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 18904
  %.sroa.0.0.copyload.i7.i19 = load i64, ptr %i.awz, align 8, !tbaa !1129
  call void @_ZN5clang4Sema23CheckImplicitConversionEPNS_4ExprENS_8QualTypeENS_14SourceLocationEPbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.awm, i64 %.sroa.0.0.copyload.i7.i19, i32 %.sroa.0.0.copyload.i.i21, ptr noundef null, i1 noundef zeroext false)
  br label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20

_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20: ; preds = %bb.hw, %bb.hx, %bb.hy, %bb.hz, %bb.hq, %._crit_edge
  %i.axa = load i16, ptr %i.bq, align 8
  %i.axb = and i16 %i.axa, 511
  %.not345 = icmp eq i16 %i.axb, 4
  br i1 %.not345, label %bb.ia, label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split

bb.ia:                                            ; preds = %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20
  %i.axc = load i32, ptr %i.bq, align 8
  %i.axd = lshr i32 %i.axc, 19
  %i.axe = and i32 %i.axd, 31
  switch i32 %i.axe, label %bb.ie [
    i32 9, label %bb.ib
    i32 4, label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split
  ]

bb.ib:                                            ; preds = %bb.ia
  %i.axf = load ptr, ptr %i.h, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.axg = load i64, ptr %i.axf, align 8
  %i.axh = and i64 %i.axg, 4096
  %.not.i15 = icmp eq i64 %i.axh, 0
  br i1 %.not.i15, label %bb.ic, label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split

bb.ic:                                            ; preds = %bb.ib
  %i.axi = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !1399
  %i.axk = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axj) #32 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.axl, align 8, !tbaa !1129
  %i.axm = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.axn = inttoptr i64 %i.axm to ptr
  %i.axo = load ptr, ptr %i.axn, align 16, !tbaa !1324
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.axp, align 8, !tbaa !1129
  %i.axq = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.axr = inttoptr i64 %i.axq to ptr
  %i.axs = load ptr, ptr %i.axr, align 16, !tbaa !1324
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i8, ptr %i.axt, align 16
  %i.axv = icmp eq i8 %i.axu, 7
  br i1 %i.axv, label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.axw = load ptr, ptr %i.m, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 18904
  %.sroa.0.0.copyload.i7.i = load i64, ptr %i.axx, align 8, !tbaa !1129
  call void @_ZN5clang4Sema23CheckImplicitConversionEPNS_4ExprENS_8QualTypeENS_14SourceLocationEPbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.axk, i64 %.sroa.0.0.copyload.i7.i, i32 %i.atd, ptr noundef null, i1 noundef zeroext false)
  br label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split

bb.ie:                                            ; preds = %bb.ia
  %i.axy = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !1399 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.aya, align 8, !tbaa !1129
  %i.ayb = and i64 %.sroa.0.0.copyload.i14, -16
  %i.ayc = inttoptr i64 %i.ayb to ptr
  %i.ayd = load ptr, ptr %i.ayc, align 16, !tbaa !1324
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aye, align 8, !tbaa !1129
  %i.ayf = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ayg = inttoptr i64 %i.ayf to ptr
  %i.ayh = load ptr, ptr %i.ayg, align 16, !tbaa !1324
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  %i.ayj = load i8, ptr %i.ayi, align 16
  %i.ayk = icmp eq i8 %i.ayj, 7
  br i1 %i.ayk, label %bb.if, label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split

bb.if:                                            ; preds = %bb.ie
  %i.ayl = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axz) #32, !inline_history !2475
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %45, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 %i.ayl, i32 noundef 6727) #31, !inline_history !2475
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %45) #31, !inline_history !2475
  br label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split

_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split: ; preds = %bb.if, %bb.ie, %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit20, %_ZL25AnalyzeCompoundAssignmentRN5clang4SemaEPNS_14BinaryOperatorE.exit, %_ZL17AnalyzeAssignmentRN5clang4SemaEPNS_14BinaryOperatorE.exit, %bb.ap, %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemELb1EE9push_backES2_.exit.i, %bb.an, %bb.br, %bb.bz, %_ZL15TryGetExprRangeRN5clang10ASTContextEPKNS_4ExprEbb.exit.i, %bb.gb, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEvEERKS0_OT_.exit130.i, %bb.gd, %bb.cd, %bb.cf, %bb.fq, %bb.fy, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit134.i, %bb.ib, %bb.ic, %bb.id, %bb.hb, %bb.hb, %bb.ia
  %.pr.pr = load i32, ptr %i.f, align 8, !tbaa !1149
  br label %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exit

_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exit: ; preds = %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split, %bb.ca, %bb.bs
  %.pr = phi i32 [ %.pr.pr, %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exitthread-pre-split ], [ %i.rg, %bb.ca ], [ %i.qc, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  %.not.i11 = icmp eq i32 %.pr, 0
  br i1 %.not.i11, label %bb.ig, label %bb.a, !llvm.loop !2494

bb.ig:                                            ; preds = %_ZL26AnalyzeImplicitConversionsRN5clang4SemaEN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemERN4llvm15SmallVectorImplIS3_EE.exit
  %i.aym = load ptr, ptr %46, align 8, !tbaa !1152 ; 2 uses
  %i.ayn = icmp eq ptr %i.aym, %i.e
  br i1 %i.ayn, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemELj16EED2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @free(ptr noundef %i.aym) #31
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemELj16EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_134AnalyzeImplicitConversionsWorkItemELj16EED2Ev.exit: ; preds = %bb.ig, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema23CheckBoolLikeConversionEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 4096
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !1129
  %i.g = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !1324
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !1129
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !1324
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp eq i8 %i.o, 7
  br i1 %i.p, label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 18904
  %.sroa.0.0.copyload.i7.i = load i64, ptr %i.s, align 8, !tbaa !1129
  tail call void @_ZN5clang4Sema23CheckImplicitConversionEPNS_4ExprENS_8QualTypeENS_14SourceLocationEPbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.e, i64 %.sroa.0.0.copyload.i7.i, i32 %2, ptr noundef null, i1 noundef zeroext false)
  br label %_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit

_ZL23CheckBoolLikeConversionRN5clang4SemaEPNS_4ExprENS_14SourceLocationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema19CheckForIntOverflowEPKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i.i.i.i.i:
  %2 = alloca %"class.llvm::SmallVector.1521", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %.ptr106 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %.ptr106, ptr %2, align 8, !tbaa !1152
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  store i32 2, ptr %i.a, align 4, !tbaa !1150
  store ptr %1, ptr %.ptr106, align 8, !tbaa !1154
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.d = phi i32 [ %i.fv, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !1152   ; 2 uses
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1154 ; 5 uses
  %i.j = add i32 %i.d, -1                         ; 11 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !1149
  %i.k = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #32 ; 18 uses
  %i.l = load i16, ptr %i.k, align 8              ; 3 uses
  %i.m = and i16 %i.l, 510
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i16 %i.m, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = and i16 %i.l, 511                        ; 5 uses
  %i.o = icmp eq i16 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.k, align 8              ; 2 uses
  %i.q = and i32 %i.p, 16777216
  %.not107 = icmp eq i32 %i.q, 0
  %i.r = trunc i32 %i.p to i16
  br i1 %.not107, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !737, !nonnull !734, !align !735
  call void @_ZNK5clang4Expr19EvaluateForOverflowERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(23904) %i.s) #31
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i16 [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %i.u = load i16, ptr %i.i, align 8
  %i.v = and i16 %i.u, 511                        ; 2 uses
  switch i16 %i.v, label %bb.i [
    i16 55, label %bb.f
    i16 34, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1644 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1745
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr i64 %i.ac, 3                       ; 4 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 6 uses
  %i.af = zext i32 %i.j to i64                    ; 2 uses
  %i.ag = add nuw nsw i64 %i.ae, %i.af            ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !1150
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.ptr106, i64 noundef %i.ag, i64 noundef 8) #31
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %.pre8.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.af, %bb.f ], [ %.pre8.i, %bb.g ] ; 2 uses
  %i.ak = phi i32 [ %i.j, %bb.f ], [ %.pre.i, %bb.g ]
  %.not109 = icmp eq i64 %i.ae, 0
  br i1 %.not109, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i:               ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !1152  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.pre-phi.i ; 4 uses
  %min.iters.check175 = icmp samesign ult i64 %i.ae, 6
  br i1 %min.iters.check175, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = shl nuw nsw i64 %.pre-phi.i, 3
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = sub i64 %i.ab, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck
  %n.vec177 = and i64 %i.ad, 4294967292           ; 3 uses
  %i.ar = and i64 %i.ad, 3
  %i.as = shl nuw nsw i64 %n.vec177, 3            ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as
  %i.au = getelementptr i8, ptr %i.x, i64 %i.as
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %i.av = shl i64 %index179, 3                    ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.x, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep181, i64 16
  %wide.load182 = load <2 x ptr>, ptr %next.gep181, align 8, !tbaa !1154
  %wide.load183 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !1154
  %i.ax = getelementptr i8, ptr %next.gep180, i64 16
  store <2 x ptr> %wide.load182, ptr %next.gep180, align 8, !tbaa !1154
  store <2 x ptr> %wide.load183, ptr %i.ax, align 8, !tbaa !1154
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ay, label %middle.block185, label %vector.body178, !llvm.loop !2509

middle.block185:                                  ; preds = %vector.body178
  %cmp.n186 = icmp eq i64 %i.ae, %n.vec177
  br i1 %cmp.n186, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i, %middle.block185
  %.012.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.ar, %middle.block185 ]
  %.0811.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.at, %middle.block185 ]
  %.0910.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.au, %middle.block185 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.0910.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1154
  store ptr %i.az, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1154
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i.i.i.i, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit, !llvm.loop !2510

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block185, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i
  %i.be = trunc i64 %i.ad to i32
  %i.bf = add i32 %i.ak, %i.be                    ; 2 uses
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.h:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !737, !nonnull !734, !align !735
  call void @_ZNK5clang4Expr19EvaluateForOverflowERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(23904) %i.bg) #31
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.i:                                             ; preds = %bb.e
  %i.bh = add nsw i16 %i.n, -96
  %spec.select.i.i.i.i.i.i.i.i47 = icmp ult i16 %i.bh, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i47, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bj = load i32, ptr %i.k, align 8
  %i.bk = lshr i32 %i.bj, 19
  %i.bl = and i32 %i.bk, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1108 ; 4 uses
  %i.bq = zext i32 %i.bp to i64                   ; 5 uses
  %i.br = zext i32 %i.j to i64                    ; 2 uses
  %i.bs = add nuw nsw i64 %i.bq, %i.br            ; 2 uses
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !1150
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ugt i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.k, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i49

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.ptr106, i64 noundef %i.bs, i64 noundef 8) #31
  %.pre.i53 = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %.pre11.i = zext i32 %.pre.i53 to i64
  br label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i49

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i49: ; preds = %bb.k, %bb.j
  %.pre-phi.i50 = phi i64 [ %i.br, %bb.j ], [ %.pre11.i, %bb.k ]
  %i.bw = phi i32 [ %i.j, %bb.j ], [ %.pre.i53, %bb.k ]
  %.not111 = icmp eq i32 %i.bp, 0
  br i1 %.not111, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51

.lr.ph.i.i.i.i.i.i.i.i.preheader.i51:             ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i49
  %i.bx = load ptr, ptr %2, align 8, !tbaa !1152
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.pre-phi.i50 ; 3 uses
  %min.iters.check159 = icmp ult i32 %i.bp, 4
  br i1 %min.iters.check159, label %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51
  %n.vec161 = and i64 %i.bq, 4294967292           ; 3 uses
  %i.bz = and i64 %i.bq, 3
  %i.ca = shl nuw nsw i64 %n.vec161, 3            ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bn, i64 %i.ca
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.cd = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.by, i64 %i.cd ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.bn, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x ptr>, ptr %next.gep165, align 8, !tbaa !1313
  %wide.load167 = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !1313
  %i.cf = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x ptr> %wide.load166, ptr %next.gep164, align 8, !tbaa !1154
  store <2 x ptr> %wide.load167, ptr %i.cf, align 8, !tbaa !1154
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.cg, label %middle.block169, label %vector.body162, !llvm.loop !2511

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %n.vec161, %i.bq
  br i1 %cmp.n170, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i.i.i.i.i52.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51, %middle.block169
  %.010.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51 ], [ %i.bz, %middle.block169 ]
  %.049.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51 ], [ %i.cb, %middle.block169 ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i51 ], [ %i.cc, %middle.block169 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i.i.i.i52:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i52
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i52 ], [ %.010.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i52 ], [ %.049.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i52 ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i52.preheader ] ; 2 uses
  %i.ch = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1313
  store ptr %i.ch, ptr %.049.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1154
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i, i64 8
  %i.ck = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -1
  %i.cl = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i52, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit, !llvm.loop !2512

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i52, %middle.block169, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i49
  %i.cm = add i32 %i.bw, %i.bp                    ; 2 uses
  store i32 %i.cm, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.l:                                             ; preds = %bb.i
  %.not113 = icmp eq i16 %i.n, 36
  br i1 %.not113, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = and i32 %i.cp, 65535                    ; 4 uses
  %i.cr = zext nneg i32 %i.cq to i64              ; 5 uses
  %i.cs = zext i32 %i.j to i64                    ; 2 uses
  %i.ct = add nuw nsw i64 %i.cr, %i.cs            ; 2 uses
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !1150
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ugt i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.n, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i55

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.ptr106, i64 noundef %i.ct, i64 noundef 8) #31
  %.pre.i62 = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %.pre11.i63 = zext i32 %.pre.i62 to i64
  br label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i55

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i55: ; preds = %bb.n, %bb.m
  %.pre-phi.i56 = phi i64 [ %i.cs, %bb.m ], [ %.pre11.i63, %bb.n ]
  %i.cx = phi i32 [ %i.j, %bb.m ], [ %.pre.i62, %bb.n ]
  %.not114 = icmp eq i32 %i.cq, 0
  br i1 %.not114, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57

.lr.ph.i.i.i.i.i.i.i.i.preheader.i57:             ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i55
  %i.cy = load ptr, ptr %2, align 8, !tbaa !1152
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi.i56 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.cq, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57
  %n.vec = and i64 %i.cr, 65532                   ; 3 uses
  %i.da = and i64 %i.cr, 3
  %i.db = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.cn, i64 %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.de ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.cn, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !1313
  %wide.load139 = load <2 x ptr>, ptr %i.df, align 8, !tbaa !1313
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !1154
  store <2 x ptr> %wide.load139, ptr %i.dg, align 8, !tbaa !1154
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cr
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64, label %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i.i.i.i.i58.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57, %middle.block
  %.010.i.i.i.i.i.i.i.i.i59.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57 ], [ %i.da, %middle.block ]
  %.049.i.i.i.i.i.i.i.i.i60.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57 ], [ %i.dc, %middle.block ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i61.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i57 ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i.i.i58:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i58
  %.010.i.i.i.i.i.i.i.i.i59 = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i58 ], [ %.010.i.i.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i60 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.i.i58 ], [ %.049.i.i.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i61 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i58 ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i.i.i.i58.preheader ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i61, align 8, !tbaa !1313
  store ptr %i.di, ptr %.049.i.i.i.i.i.i.i.i.i60, align 8, !tbaa !1154
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i61, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i60, i64 8
  %i.dl = add nsw i64 %.010.i.i.i.i.i.i.i.i.i59, -1
  %i.dm = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i59, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i.i.i58, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64, !llvm.loop !2514

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i58, %middle.block, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i55
  %i.dn = add i32 %i.cx, %i.cq                    ; 2 uses
  store i32 %i.dn, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.o:                                             ; preds = %bb.l
  %i.do = add nsw i16 %i.n, -119
  %spec.select.i.i.i.i.i.i.i.i65 = icmp ult i16 %i.do, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i65, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = and i16 %i.t, 511
  %.not.i.i.i = icmp eq i16 %i.dp, 118            ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %i.k, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %3, ptr %i.dq ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1697 ; 4 uses
  %i.dt = zext i32 %i.ds to i64                   ; 5 uses
  %i.du = zext i32 %i.j to i64                    ; 2 uses
  %i.dv = add nuw nsw i64 %i.dt, %i.du            ; 2 uses
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !1150
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp samesign ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.q, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i67

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.ptr106, i64 noundef %i.dv, i64 noundef 8) #31
  %.pre.i74 = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %.pre11.i75 = zext i32 %.pre.i74 to i64
  br label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i67

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i67: ; preds = %bb.q, %bb.p
  %.pre-phi.i68 = phi i64 [ %i.du, %bb.p ], [ %.pre11.i75, %bb.q ]
  %i.dz = phi i32 [ %i.j, %bb.p ], [ %.pre.i74, %bb.q ]
  %.not116 = icmp eq i32 %i.ds, 0
  br i1 %.not116, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69

.lr.ph.i.i.i.i.i.i.i.i.preheader.i69:             ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i67
  %i.ea = load ptr, ptr %2, align 8, !tbaa !1152
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.pre-phi.i68 ; 3 uses
  %min.iters.check143 = icmp ult i32 %i.ds, 4
  br i1 %min.iters.check143, label %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69
  %n.vec145 = and i64 %i.dt, 4294967292           ; 3 uses
  %i.ec = and i64 %i.dt, 3
  %i.ed = shl nuw nsw i64 %n.vec145, 3            ; 2 uses
  %i.ee = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ef = getelementptr i8, ptr %spec.select.i.i.i, i64 %i.ed
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.eg = shl i64 %index147, 3                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.eb, i64 %i.eg ; 2 uses
  %next.gep149 = getelementptr i8, ptr %spec.select.i.i.i, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load150 = load <2 x ptr>, ptr %next.gep149, align 8, !tbaa !1313
  %wide.load151 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !1313
  %i.ei = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> %wide.load150, ptr %next.gep148, align 8, !tbaa !1154
  store <2 x ptr> %wide.load151, ptr %i.ei, align 8, !tbaa !1154
  %index.next152 = add nuw i64 %index147, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.ej, label %middle.block153, label %vector.body146, !llvm.loop !2515

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %n.vec145, %i.dt
  br i1 %cmp.n154, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76, label %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i.i.i.i.i70.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69, %middle.block153
  %.010.i.i.i.i.i.i.i.i.i71.ph = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69 ], [ %i.ec, %middle.block153 ]
  %.049.i.i.i.i.i.i.i.i.i72.ph = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69 ], [ %i.ee, %middle.block153 ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i73.ph = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i69 ], [ %i.ef, %middle.block153 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i.i.i.i70:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i70
  %.010.i.i.i.i.i.i.i.i.i71 = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i70 ], [ %.010.i.i.i.i.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i72 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i70 ], [ %.049.i.i.i.i.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i73 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i70 ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i.i.i.i.i70.preheader ] ; 2 uses
  %i.ek = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i73, align 8, !tbaa !1313
  store ptr %i.ek, ptr %.049.i.i.i.i.i.i.i.i.i72, align 8, !tbaa !1154
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i73, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i72, i64 8
  %i.en = add nsw i64 %.010.i.i.i.i.i.i.i.i.i71, -1
  %i.eo = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i71, 1
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i.i.i.i70, label %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76, !llvm.loop !2516

_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i70, %middle.block153, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE7reserveEm.exit.i67
  %i.ep = add i32 %i.dz, %i.ds                    ; 2 uses
  store i32 %i.ep, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.r:                                             ; preds = %bb.o
  switch i16 %i.n, label %bb.ab [
    i16 120, label %bb.s
    i16 127, label %bb.v
    i16 78, label %bb.y
    i16 109, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1694 ; 2 uses
  %i.es = load i32, ptr %i.a, align 4, !tbaa !1150
  %.not.i = icmp ult i32 %i.j, %i.es
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !1151

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.er)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.et = zext i32 %i.j to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.et
  store ptr %i.er, ptr %i.eu, align 1
  %i.ev = load i32, ptr %i.b, align 8, !tbaa !1149
  %i.ew = add i32 %i.ev, 1                        ; 2 uses
  store i32 %i.ew, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.v:                                             ; preds = %bb.r
  %i.ex = call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %.in.v.i = select i1 %i.ex, i64 24, i64 16
  %.in.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.in.v.i
  %i.ey = load ptr, ptr %.in.i, align 8, !tbaa !1313 ; 2 uses
  %i.ez = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !1150
  %.not.i79 = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i79, label %bb.x, label %bb.w, !prof !1151

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ey)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.x:                                             ; preds = %bb.v
  %i.fb = zext i32 %i.ez to i64
  %i.fc = load ptr, ptr %2, align 8, !tbaa !1152
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  store ptr %i.ey, ptr %i.fd, align 1
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !1149
  %i.ff = add i32 %i.fe, 1                        ; 2 uses
  store i32 %i.ff, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.y:                                             ; preds = %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1712
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.fh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.z:                                             ; preds = %bb.r
  %i.fi = load i32, ptr %i.k, align 8
  %i.fj = and i32 %i.fi, 1048576
  %.not125 = icmp eq i32 %i.fj, 0
  br i1 %.not125, label %bb.ab, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit

_ZNK5clang10CXXNewExpr12getArraySizeEv.exit:      ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1313 ; 2 uses
  %.not.not.i.not = icmp eq ptr %i.fl, null
  br i1 %.not.not.i.not, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.fl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.ab:                                            ; preds = %bb.r, %bb.z
  %.not127 = icmp eq i16 %i.v, 50
  br i1 %.not127, label %bb.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fm, align 8 ; 3 uses
  %i.fn = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fp = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fq = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1691
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.ad, %bb.ae
  %i.fu = phi ptr [ %i.fp, %bb.ad ], [ %i.ft, %bb.ae ]
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.fu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split: ; preds = %bb.d, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %bb.ab, %bb.y, %bb.h, %bb.t, %bb.w, %bb.aa, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit
  %.pr = load i32, ptr %i.b, align 8, !tbaa !1149
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split, %bb.x, %bb.u, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit
  %i.fv = phi i32 [ %.pr, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exitthread-pre-split ], [ %i.ff, %bb.x ], [ %i.ew, %bb.u ], [ %i.bf, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendIPKPS2_vEEvT_SA_.exit ], [ %i.dn, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit64 ], [ %i.ep, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit76 ], [ %i.cm, %_ZN4llvm15SmallVectorImplIPKN5clang4ExprEE6appendINS1_4Stmt12CastIteratorIS2_KS4_KPKS7_EEvEEvT_SE_.exit ] ; 2 uses
  %.not.i86 = icmp eq i32 %i.fv, 0
  br i1 %.not.i86, label %bb.af, label %bb.a, !llvm.loop !2517

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit
  %i.fw = load ptr, ptr %2, align 8, !tbaa !1152  ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %.ptr106
  br i1 %i.fx, label %_ZN4llvm11SmallVectorIPKN5clang4ExprELj2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.fw) #31
  br label %_ZN4llvm11SmallVectorIPKN5clang4ExprELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang4ExprELj2EED2Ev.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

declare void @_ZNK5clang4Expr19EvaluateForOverflowERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1149 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1150
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !1151

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !1152
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !1149
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !1149
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema26CheckUnsequencedOperationsEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit:
  %2 = alloca %"class.llvm::SmallVector.1555", align 8 ; 9 uses
  %3 = alloca %"class.(anonymous namespace)::SequenceChecker", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1152
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !1150
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1096
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1104
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1112
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1120
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.a
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115SequenceChecker24VisitCXXOperatorCallExprEPKN5clang19CXXOperatorCallExprE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1108
  %.not1 = icmp eq i32 %i.l, 2
  %.pre = load i32, ptr %1, align 8               ; 2 uses
  %i.m = and i32 %.pre, 2113929216
  %.not2 = icmp eq i32 %i.m, 1409286144
  %or.cond = select i1 %.not1, i1 true, i1 %.not2
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !tbaa !1157
  %i.n = load ptr, ptr %0, align 8, !tbaa !1864, !nonnull !734, !align !735
  %i.o = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.n) #31, !inline_history !2788
  br i1 %i.o, label %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %0, ptr %4, align 8, !tbaa !1849
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1152
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !1149
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.s, align 4, !tbaa !1150
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1766
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1859
  store ptr %i.p, ptr %i.u, align 8, !tbaa !1766
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1861, !nonnull !734, !align !735
  %i.x = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #32, !inline_history !2788
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !1866
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.y, align 8, !tbaa !1224
  %i.z = ptrtoint ptr %5 to i64
  call void @_ZN5clang4Sema27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.w, i32 %i.x, ptr nonnull @_ZN4llvm12function_refIFvvEE11callback_fnIZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprEEUlvE_EEvl, i64 %i.z) #31, !inline_history !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker22SequencedSubexpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #31, !inline_history !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit

_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.aa = lshr i32 %.pre, 25
  %i.ab = and i32 %i.aa, 63
  %switch.tableidx = add nsw i32 %i.ab, -15       ; 3 uses
  %i.ac = icmp ult i32 %switch.tableidx, 29
  %switch.shifted = lshr i32 456163321, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond4 = select i1 %i.ac, i1 %switch.lobit, i1 false
  br i1 %or.cond4, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !1157
  %i.ad = load ptr, ptr %0, align 8, !tbaa !1864, !nonnull !734, !align !735
  %i.ae = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ad) #31, !inline_history !2788
  br i1 %i.ae, label %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !1849
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !1152
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !1149
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.ai, align 4, !tbaa !1150
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1766
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1859
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !1766
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !1861, !nonnull !734, !align !735
  %i.an = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #32, !inline_history !2788
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %0, ptr %3, align 8, !tbaa !1866
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !1224
  %i.ap = ptrtoint ptr %3 to i64
  call void @_ZN5clang4Sema27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.am, i32 %i.an, ptr nonnull @_ZN4llvm12function_refIFvvEE11callback_fnIZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprEEUlvE_EEvl, i64 %i.ap) #31, !inline_history !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker22SequencedSubexpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #31, !inline_history !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit3

_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit3: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

switch.lookup:                                    ; preds = %bb.e
  %i.aq = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115SequenceChecker24VisitCXXOperatorCallExprEPKN5clang19CXXOperatorCallExprE, i64 %i.aq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.d, align 4, !tbaa !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %0, ptr %6, align 8, !tbaa !1849
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !1152
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !1149
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4, ptr %i.au, align 4, !tbaa !1150
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1766
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !1859
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !1766
  %i.ay = load i32, ptr %1, align 8
  %i.az = lshr i32 %i.ay, 25
  %i.ba = and i32 %i.az, 63                       ; 2 uses
  %i.bb = add nsw i32 %i.ba, -41
  %or.cond.i = icmp ult i32 %i.bb, -36
  %i.bc = add nsw i32 %i.ba, -37
  %i.bd = icmp ult i32 %i.bc, 2
  %or.cond5.i = or i1 %or.cond.i, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bf, align 4
  %.sroa.0.0.i = select i1 %or.cond5.i, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.d, ptr %7, align 8, !tbaa !1225
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.bg, align 8, !tbaa !1871
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.c, ptr %i.bh, align 8, !tbaa !2789
  %i.bi = ptrtoint ptr %7 to i64
  call void @_ZN5clang4Sema27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.f, i32 %.sroa.0.0.i, ptr nonnull @_ZN4llvm12function_refIFvvEE11callback_fnIZN12_GLOBAL__N_115SequenceChecker24VisitCXXOperatorCallExprEPKN5clang19CXXOperatorCallExprEEUlvE_EEvl, i64 %i.bi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker22SequencedSubexpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_115SequenceChecker13VisitCallExprEPKN5clang8CallExprE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEE18VisitCXXTypeidExprEPKNS_13CXXTypeidExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr22isPotentiallyEvaluatedEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115SequenceChecker21VisitCXXConstructExprEPKN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::SequenceChecker::SequencedSubexpression", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !1849
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1152
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !1149
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.d, align 4, !tbaa !1150
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1766
  store ptr %i.g, ptr %i.e, align 8, !tbaa !1859
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1766
  %i.h = load i32, ptr %1, align 8                ; 2 uses
  %i.i = and i32 %i.h, 2097152
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull %1), !inline_history !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.h, 511
  %.not.i.i.i = icmp eq i32 %i.j, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %3, ptr %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1697
  %i.n = zext i32 %i.m to i64
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker26SequenceExpressionsInOrderEN4llvm8ArrayRefIPKN5clang4ExprEEE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr nonnull %spec.select.i.i.i, i64 %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker22SequencedSubexpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115SequenceChecker23VisitArraySubscriptExprEPKN5clang18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::SequenceChecker::SequencedSubexpression", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1861, !nonnull !734, !align !735
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 32768
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1313 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1313
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 6 uses
  %.sroa.06.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
  %i.m = and i32 %.sroa.06.0.copyload.i, 2147483647 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1150
  %.not.i.i5 = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.i5, label %bb.d, label %bb.c, !prof !1151

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_115SequenceChecker12SequenceTree5ValueELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 %i.m)
  %.pre.i6 = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.r = add i32 %.pre.i6, -1
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.o to i64
  %.val.i.i7 = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i7, i64 %i.s
  store i32 %i.m, ptr %i.t, align 1
  %i.u = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.n, align 8, !tbaa !1149
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8

_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8: ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %.pre.i6, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.x = phi i32 [ %i.r, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
  %i.y = and i32 %.sroa.04.0.copyload.i, 2147483647 ; 2 uses
  %i.z = load i32, ptr %i.p, align 4, !tbaa !1150
  %.not.i.i = icmp ult i32 %i.w, %i.z
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !1151

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_115SequenceChecker12SequenceTree5ValueELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 %i.y)
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !1149
  %i.aa = add i32 %.pre.i, -1
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8
  %i.ab = zext i32 %i.w to i64
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ab
  store i32 %i.y, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.n, align 8, !tbaa !1149
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit

_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit: ; preds = %bb.e, %bb.f
  %i.af = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !1849
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !1152
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !1149
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.aj, align 4, !tbaa !1150
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1766
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !1859
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !1766
  store i32 %i.x, ptr %i.l, align 8, !tbaa !1103
  call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef %i.h), !inline_history !34
  call fastcc void @_ZN12_GLOBAL__N_115SequenceChecker22SequencedSubexpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #31, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store i32 %i.af, ptr %i.l, align 8, !tbaa !1103
  call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef %i.j), !inline_history !34
  store i32 %.sroa.02.0.copyload.i, ptr %i.l, align 8, !tbaa !1103
  %.val10.i = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.an = zext i32 %i.x to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, -2147483648
  store i32 %i.aq, ptr %i.ao, align 4
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.ar = zext i32 %i.af to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = or i32 %i.at, -2147483648
  store i32 %i.au, ptr %i.as, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.h)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1313
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_115SequenceCheckerEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.aw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115SequenceChecker14VisitBinPtrMemEPKN5clang14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::SequenceChecker::SequencedSubexpression", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1861, !nonnull !734, !align !735
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 32768
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1313 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1313
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 6 uses
  %.sroa.06.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
  %i.m = and i32 %.sroa.06.0.copyload.i, 2147483647 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1150
  %.not.i.i5 = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.i5, label %bb.d, label %bb.c, !prof !1151

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_115SequenceChecker12SequenceTree5ValueELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 %i.m)
  %.pre.i6 = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.r = add i32 %.pre.i6, -1
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.o to i64
  %.val.i.i7 = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i7, i64 %i.s
  store i32 %i.m, ptr %i.t, align 1
  %i.u = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.n, align 8, !tbaa !1149
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8

_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8: ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %.pre.i6, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.x = phi i32 [ %i.r, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
  %i.y = and i32 %.sroa.04.0.copyload.i, 2147483647 ; 2 uses
  %i.z = load i32, ptr %i.p, align 4, !tbaa !1150
  %.not.i.i = icmp ult i32 %i.w, %i.z
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !1151

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_115SequenceChecker12SequenceTree5ValueELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 %i.y)
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !1149
  %i.aa = add i32 %.pre.i, -1
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit8
  %i.ab = zext i32 %i.w to i64
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !1152
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ab
  store i32 %i.y, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !1149 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.n, align 8, !tbaa !1149
  br label %_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit

_ZN12_GLOBAL__N_115SequenceChecker12SequenceTree8allocateENS1_3SeqE.exit: ; preds = %bb.e, %bb.f
  %i.af = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.l, align 8, !tbaa !1103
end_hunk_2
