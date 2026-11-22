Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprCXX?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL25isGLValueFromPointerDerefPKN5clang4ExprE:bb.a
  switch i16 %i.l, label %bb.h [
    i16 122, label %bb.e
    i16 132, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 8
  %i.n = and i32 %i.m, 33030144
  %i.o = icmp eq i32 %i.n, 16777216
  br i1 %i.o, label %tailrecurse.backedge.sink.split, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i16 %i.c, 132                    ; 2 uses
  %.1.in.v.i = select i1 %i.p, i64 32, i64 40
  %.1.in.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.in.v.i
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !21
  %i.q = tail call fastcc noundef zeroext i1 @_ZL25isGLValueFromPointerDerefPKN5clang4ExprE(ptr noundef %.1.i)
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.1.in.v.i37 = select i1 %i.p, i64 40, i64 48
  br label %tailrecurse.backedge.sink.split

bb.h:                                             ; preds = %bb.e, %bb.d
  switch i16 %i.c, label %bb.j [
    i16 127, label %.thread
    i16 4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.a, align 8
  %i.s = and i32 %i.r, 16252928
  %i.t = icmp eq i32 %i.s, 2621440
  br i1 %i.t, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.h, %bb.j, %bb.i
  %.5 = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.j ], [ %spec.select.i.i.i.i.i.i.i.i, %bb.b ], [ %spec.select.i.i.i.i.i.i.i.i, %bb.f ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK5clang13CXXUuidofExpr14getTypeOperandERNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.clang::Qualifiers", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -5
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !24 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !27  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 16
  %i.i = and i8 %i.h, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.i, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !24
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 16
  %i.p = and i8 %i.o, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.p, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.f) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.a
  %.1.i8.i = phi ptr [ %i.q, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.s = load i24, ptr %i.r, align 16
  %i.t = and i24 %i.s, 1048576
  %.not4.i.i = icmp eq i24 %i.t, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !27  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  %i.aa = and i8 %i.z, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.aa, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.x) #17
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.lr.ph.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ad = load i24, ptr %i.ac, align 16
  %i.ae = and i24 %i.ad, 1048576
  %.not.i.i = icmp eq i24 %i.ae, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.af, align 8, !tbaa !24
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ag = call i64 @_ZNK5clang10ASTContext23getUnqualifiedArrayTypeENS_8QualTypeERNS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %.sroa.0.0.in.i.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.ag
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @_ZNK5clang22CXXScalarValueInitExpr11getBeginLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %1 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i1 = load i32, ptr %i.g, align 4, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 %.sroa.0.0
}

declare i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang10CXXNewExprC2EbPNS_12FunctionDeclES2_RKNS_28ImplicitAllocationParametersEbN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeESt8optionalIS9_ENS_25CXXNewInitializationStyleES9_NS_8QualTypeEPNS_14TypeSourceInfoESB_SB_(ptr noundef nonnull align 8 dereferenceable(56) initializes((4, 56)) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i1 noundef zeroext %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, i64 %7, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %8, i32 noundef %9, ptr noundef %10, i64 %11, ptr noundef %12, i64 %13, i64 %14) unnamed_addr #5 align 2 {
bb.a:
  %.sroa.326.0.extract.shift = lshr i64 %7, 32    ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %14, 32
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 109
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 109) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i24, ptr %0, align 8
  %i.h = and i24 %i.g, -523777
  store i24 %i.h, ptr %0, align 8
  store i64 %11, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.i, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.j, align 8, !tbaa !203
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %12, ptr %i.k, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %13, ptr %i.l, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %14, ptr %i.m, align 8, !tbaa !108
  %i.n = load i32, ptr %0, align 8
  %i.o = select i1 %1, i32 524288, i32 0
  %i.p = and i32 %i.n, -1572865
  %i.q = or disjoint i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !116, !range !111, !noundef !71
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = select i1 %i.t, i32 1048576, i32 0       ; 3 uses
  %i.v = or disjoint i32 %i.q, %i.u               ; 2 uses
  store i32 %i.v, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !208
  %i.y = icmp eq i32 %i.x, 1
  %i.z = select i1 %i.y, i32 2097152, i32 0
  %i.aa = and i32 %i.v, -2097153
  %i.ab = or disjoint i32 %i.aa, %i.z             ; 2 uses
  store i32 %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !209
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = select i1 %i.ae, i32 4194304, i32 0
  %i.ag = and i32 %i.ab, -264241153
  %i.ah = select i1 %5, i32 8388608, i32 0
  %.not = icmp eq ptr %10, null                   ; 2 uses
  %i.ai = select i1 %.not, i32 0, i32 16777216    ; 2 uses
  %i.aj = shl i32 %9, 25
  %i.ak = and i32 %i.aj, 100663296
  %i.al = and i64 %7, 4294967295
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ne i64 %.sroa.326.0.extract.shift, 0
  %i.ao = and i1 %i.am, %i.an                     ; 3 uses
  %i.ap = select i1 %i.ao, i32 134217728, i32 0
  %i.aq = or disjoint i32 %i.ap, %i.ah
  %i.ar = or disjoint i32 %i.aq, %i.ak
  %i.as = or disjoint i32 %i.ar, %i.af
  %i.at = or disjoint i32 %i.as, %i.ag
  %i.au = or disjoint i32 %i.at, %i.ai            ; 2 uses
  store i32 %i.au, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !120 ; 7 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !24
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.az = load ptr, ptr %8, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = lshr exact i32 %i.u, 20
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd
  store ptr %10, ptr %i.be, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.f
  %i.bh = lshr exact i32 %i.u, 20
  %i.bi = lshr exact i32 %i.ai, 24
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !121   ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %n.vec = and i64 %i.aw, 9223372036854775804     ; 3 uses
  %i.bn = and i64 %i.aw, 3
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.br ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.bm, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep29, align 8, !tbaa !22
  %wide.load30 = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !21
  store <2 x ptr> %wide.load30, ptr %i.bt, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.bn, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.bp, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.bq, %middle.block ] ; 3 uses
  %i.bv = load ptr, ptr %.0910.i.i.i.i.i.i.ph, align 8, !tbaa !22
  store ptr %i.bv, ptr %.0811.i.i.i.i.i.i.ph, align 8, !tbaa !21
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i.i.ph, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.1, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.ph, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.ph, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !21
  %i.ca = icmp eq i64 %.012.i.i.i.i.i.i.ph, 3
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.2, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.ph, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.ph, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !22
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !21
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %middle.block
  %.pre.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit: ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit, %bb.f
  %.pre = phi i32 [ %.pre.pre, %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit.loopexit ], [ %i.au, %bb.f ] ; 5 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit
  %i.ce = lshr i32 %.pre, 20
  %.lobit.i.i.i.i.i = and i32 %i.ce, 1
  %i.cf = lshr i32 %.pre, 24
  %.lobit1.i.i.i.i.i = and i32 %i.cf, 1
  %i.cg = load i32, ptr %i.ay, align 4, !tbaa !24
  %i.ch = add i32 %.lobit1.i.i.i.i.i, %i.cg
  %i.ci = add i32 %i.ch, %.lobit.i.i.i.i.i
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cj
  store i64 %7, ptr %i.ck, align 8, !tbaa !108
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit
  %i.cl = lshr i32 %.pre, 25
  %i.cm = and i32 %i.cl, 3
  switch i32 %i.cm, label %bb.i [
    i32 1, label %.sink.split
    i32 2, label %_ZN5clang10CXXNewExpr14getInitializerEv.exit
  ]

_ZN5clang10CXXNewExpr14getInitializerEv.exit:     ; preds = %bb.h
  %i.cn = and i32 %.pre, 16777216
  %.not.i = icmp ne i32 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.co = lshr i32 %.pre, 20
  %.lobit.i.i20 = and i32 %i.co, 1
  %i.cp = zext nneg i32 %.lobit.i.i20 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #16
  %.sroa.3.0.extract.shift = lshr i64 %i.cs, 32
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  br i1 %i.ao, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h, %_ZN5clang10CXXNewExpr14getInitializerEv.exit
  %.sroa.326.0.extract.trunc.sink.in = phi i64 [ %.sroa.2.0.extract.shift, %bb.h ], [ %.sroa.3.0.extract.shift, %_ZN5clang10CXXNewExpr14getInitializerEv.exit ], [ %.sroa.326.0.extract.shift, %bb.i ]
  %.sroa.326.0.extract.trunc.sink = trunc nuw i64 %.sroa.326.0.extract.trunc.sink.in to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.326.0.extract.trunc.sink, ptr %i.ct, align 4, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %i.cu = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_10CXXNewExprE(ptr noundef nonnull %0) #17
  %i.cv = load i24, ptr %0, align 8
  %i.cw = and i8 %i.cu, 31
  %i.cx = zext nneg i8 %i.cw to i24
  %i.cy = shl nuw nsw i24 %i.cx, 14
  %i.cz = and i24 %i.cv, -507905
  %i.da = or disjoint i24 %i.cy, %i.cz
  store i24 %i.da, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_10CXXNewExprE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang10CXXNewExprC2ENS_4Stmt10EmptyShellEbjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((4, 16), (40, 56)) %0, i1 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 109
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
end_hunk_0
