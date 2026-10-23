Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExprMember?download=true
inline.NumInlined: 3337
inline.NumDeleted: 1882
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL23CheckExtVectorComponentRN5clang4SemaENS_8QualTypeERNS_13ExprValueKindENS_14SourceLocationEPKNS_14IdentifierInfoES5_:bb.a
  br label %.critedge126

.critedge119.loopexit:                            ; preds = %.thread.split.us
  %.pre223.pre = load ptr, ptr %i.j, align 8, !tbaa !876
  br label %.critedge119

.critedge119:                                     ; preds = %.thread.split, %.critedge119.loopexit
  %.pre223 = phi ptr [ %.pre223.pre, %.critedge119.loopexit ], [ %i.dh, %.thread.split ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !701, !nonnull !702, !align !703
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = and i64 %i.eb, 4611686018427387904
  %i.ed = icmp eq i64 %i.ec, 0
  %.pre224 = load i64, ptr %.pre223, align 8, !tbaa !878 ; 2 uses
  br i1 %i.ed, label %.critedge119._crit_edge, label %bb.r

.critedge119._crit_edge:                          ; preds = %.critedge119
  %.pre227 = trunc i64 %.pre224 to i32
  br label %bb.s

bb.r:                                             ; preds = %.critedge119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ee = trunc i64 %.pre224 to i32               ; 2 uses
  %i.ef = sext i1 %i.q to i32
  %spec.select121 = add i32 %i.ee, %i.ef          ; 2 uses
  store i32 %spec.select121, ptr %i.c, align 4, !tbaa !780
  switch i32 %spec.select121, label %_ZL35IsValidOpenCLComponentSwizzleLengthj.exit [
    i32 8, label %.critedge123
    i32 4, label %.critedge123
    i32 3, label %.critedge123
    i32 2, label %.critedge123
    i32 1, label %.critedge123
    i32 16, label %.critedge123
  ]

_ZL35IsValidOpenCLComponentSwizzleLengthj.exit:   ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i32 %3, i32 noundef 4792) #17
  %i.eh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i32 %5, ptr %16, align 4, !tbaa !780
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %5, ptr %i.ei, align 4, !tbaa !780
  %i.ej = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.critedge126

.critedge123:                                     ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.s

bb.s:                                             ; preds = %.critedge123, %.critedge119._crit_edge
  %i.ek = phi i32 [ %i.ee, %.critedge123 ], [ %.pre227, %.critedge119._crit_edge ]
  %i.el = sext i1 %i.q to i32
  %spec.select124 = add i32 %i.ek, %i.el          ; 3 uses
  %i.em = icmp eq i32 %spec.select124, 1
  br i1 %i.em, label %bb.t, label %bb.u

.thread250:                                       ; preds = %bb.d, %.tail, %.tail194, %.tail194.thread
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !803
  %i.ep = add i32 %i.eo, 1
  %i.eq = lshr i32 %i.ep, 1
  %i.er = sext i1 %i.q to i32
  %spec.select124252 = add nsw i32 %i.eq, %i.er   ; 2 uses
  %i.es = icmp eq i32 %spec.select124252, 1
  br i1 %i.es, label %bb.t, label %.thread255

bb.t:                                             ; preds = %.thread250, %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.et, align 16, !tbaa !803
  br label %.critedge126

bb.u:                                             ; preds = %bb.s
  br i1 %.593.ph182, label %bb.v, label %.thread255

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %2, align 4, !tbaa !898
  br label %.thread255

.thread255:                                       ; preds = %.thread250, %bb.v, %bb.u
  %spec.select124254258 = phi i32 [ %spec.select124, %bb.u ], [ %spec.select124, %bb.v ], [ %spec.select124252, %.thread250 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !783, !nonnull !702, !align !703
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i134 = load i64, ptr %i.ew, align 16, !tbaa !803
  %i.ex = call i64 @_ZNK5clang10ASTContext16getExtVectorTypeENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.ev, i64 %.sroa.0.0.copyload.i134, i32 noundef %spec.select124254258) #17 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1152 ; 3 uses
  %.not.i135 = icmp eq ptr %i.fa, null
  br i1 %.not.i135, label %_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit, label %bb.w

bb.w:                                             ; preds = %.thread255
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !731
  %i.fc = getelementptr i8, ptr %i.fb, i64 328, !nosanitize !702
  %i.fd = load ptr, ptr %i.fc, align 8, !nosanitize !702
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(64) %i.ey) #17, !inline_history !1147
  br label %_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit

_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit: ; preds = %.thread255, %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !729 ; 2 uses
  %i.fg = sub nsw i32 0, %i.ff                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !729 ; 2 uses
  %.not193207 = icmp eq i32 %i.fi, %i.fg
  br i1 %.not193207, label %.critedge126, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.fk = zext i32 %i.ff to i64                   ; 2 uses
  %i.fl = sext i32 %i.fg to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph209, %bb.ad
  %indvars.iv = phi i64 [ %i.fl, %.lr.ph209 ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %i.fm = icmp slt i64 %indvars.iv, 0             ; 2 uses
  br i1 %i.fm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fn = load ptr, ptr %i.ey, align 8, !tbaa !704
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fk
  br label %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit

bb.z:                                             ; preds = %bb.x
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !704
  br label %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit

_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit: ; preds = %bb.y, %bb.z
  %.pn = phi ptr [ %i.fo, %bb.y ], [ %i.fp, %bb.z ]
  %.0.i138 = getelementptr inbounds [8 x i8], ptr %.pn, i64 %indvars.iv
  %i.fq = load ptr, ptr %.0.i138, align 8, !tbaa !1154
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %.0.copyload.i.i.i.i.i139 = load i64, ptr %i.fr, align 8 ; 2 uses
  %i.fs = and i64 %.0.copyload.i.i.i.i.i139, -8
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = shl i64 %.0.copyload.i.i.i.i.i139, 1
  %.sroa.0.0.in.idx.i = and i64 %i.fu, 8
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sroa.0.0.in.idx.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !803
  %i.fv = icmp eq i64 %.sroa.0.0.i, %i.ex
  br i1 %i.fv, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit
  %i.fw = load ptr, ptr %i.eu, align 8, !tbaa !783, !nonnull !702, !align !703
  br i1 %i.fm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load ptr, ptr %i.ey, align 8, !tbaa !704
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fk
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %indvars.iv
  br label %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit141

bb.ac:                                            ; preds = %bb.aa
  %i.ga = load ptr, ptr %i.fj, align 8, !tbaa !704
  %i.gb = and i64 %indvars.iv, 4294967295
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gb
  br label %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit141

_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit141: ; preds = %bb.ab, %bb.ac
  %.0.i140 = phi ptr [ %i.fz, %bb.ab ], [ %i.gc, %bb.ac ]
  %i.gd = load ptr, ptr %.0.i140, align 8, !tbaa !1154
  %i.ge = call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fw, i32 noundef 6, i64 0, ptr noundef %i.gd, i64 0, i16 0) #17
  br label %.critedge126

bb.ad:                                            ; preds = %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gf = trunc nsw i64 %indvars.iv.next to i32
  %.not193 = icmp eq i32 %i.fi, %i.gf
  br i1 %.not193, label %.critedge126, label %bb.x, !llvm.loop !1148

.critedge126:                                     ; preds = %bb.ad, %_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit, %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit141, %_ZL35IsValidOpenCLComponentSwizzleLengthj.exit, %bb.t, %_ZNK5clang13ExtVectorType27isAccessorWithinNumElementsEcb.exit.thread, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit
  %.sroa.0162.1 = phi i64 [ %.sroa.0.0.copyload.i, %bb.t ], [ 0, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit ], [ 0, %_ZL35IsValidOpenCLComponentSwizzleLengthj.exit ], [ 0, %_ZNK5clang13ExtVectorType27isAccessorWithinNumElementsEcb.exit.thread ], [ %i.ge, %_ZNK5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE8iteratordeEv.exit141 ], [ %i.ex, %_ZN5clang10LazyVectorIPNS_15TypedefNameDeclENS_18ExternalSemaSourceEXadL_ZNS3_18ReadExtVectorDeclsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EE5beginEPS3_b.exit ], [ %i.ex, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.sroa.0162.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang20ExtVectorElementExprC2ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 66
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !822, !range !732, !noundef !702
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang21ElementAccessExprBaseINS_20ExtVectorElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 66) #17
  br label %_ZN5clang21ElementAccessExprBaseINS_20ExtVectorElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit

_ZN5clang21ElementAccessExprBaseINS_20ExtVectorElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = icmp eq i32 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i24, ptr %0, align 8
  %i.i = trunc i32 %2 to i24
  %i.j = shl i24 %i.i, 9
  %i.k = and i24 %i.j, 1536
  %i.l = and i24 %i.h, -523777
  %.finite = select i1 %i.f, i24 0, i24 4096
  %i.m = or disjoint i24 %.finite, %i.k
  %i.n = or disjoint i24 %i.l, %i.m
  store i24 %i.n, ptr %0, align 8
  store i64 %1, ptr %i.g, align 8, !tbaa !803
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.o, align 8, !tbaa !1156
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.p, align 8, !tbaa !1157
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.q, align 8, !tbaa !780
  %i.r = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_20ExtVectorElementExprE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %i.s = load i24, ptr %0, align 8
  %i.t = and i8 %i.r, 31
  %i.u = zext nneg i8 %i.t to i24
  %i.v = shl nuw nsw i24 %i.u, 14
  %i.w = and i24 %i.s, -507905
  %i.x = or disjoint i24 %i.v, %i.w
  store i24 %i.x, ptr %0, align 8
  ret void
}

declare i64 @_ZN5clang8SemaHLSL20checkMatrixComponentERNS_4SemaENS_8QualTypeERNS_13ExprValueKindENS_14SourceLocationEPKNS_14IdentifierInfoES6_(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef nonnull align 8 dereferenceable(18640), i64, ptr noundef nonnull align 4 dereferenceable(4), i32, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17MatrixElementExprC2ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 49
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !822, !range !732, !noundef !702
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang21ElementAccessExprBaseINS_17MatrixElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 49) #17
  br label %_ZN5clang21ElementAccessExprBaseINS_17MatrixElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit

_ZN5clang21ElementAccessExprBaseINS_17MatrixElementExprEEC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindEPNS_4ExprERNS_14IdentifierInfoENS_14SourceLocationENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i24, ptr %0, align 8
  %i.h = trunc i32 %2 to i24
  %i.i = shl i24 %i.h, 9
  %i.j = and i24 %i.i, 1536
  %i.k = and i24 %i.g, -523777
  %i.l = or disjoint i24 %i.k, %i.j
  store i24 %i.l, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8, !tbaa !803
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.m, align 8, !tbaa !1159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.n, align 8, !tbaa !1160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.o, align 8, !tbaa !780
  %i.p = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_17MatrixElementExprE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %i.q = load i24, ptr %0, align 8
  %i.r = and i8 %i.p, 31
  %i.s = zext nneg i8 %i.r to i24
  %i.t = shl nuw nsw i24 %i.s, 14
  %i.u = and i24 %i.q, -507905
  %i.v = or disjoint i24 %i.t, %i.u
  store i24 %i.v, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang10ASTContext26getObjCSelRedefinitionTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = icmp ult i64 %.0.copyload.i.i.i.i, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK5clang10ASTContext14getObjCSelDeclEv(ptr noundef nonnull align 8 dereferenceable(23904) %0) #17
  %i.d = tail call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef 6, i64 0, ptr noundef %i.c, i64 0, i16 0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ %.0.copyload.i.i.i.i, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Type13isObjCSelTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 16
  %.not.i = icmp eq i8 %i.b, 40
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !803
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !845
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 16
  %i.i = icmp eq i8 %i.h, 40
  br i1 %i.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) #17 ; 2 uses
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i8 = phi ptr [ %i.j, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i8, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 16, !tbaa !803
  %i.l = and i64 %.sroa.0.0.copyload.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !845
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !803
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !845 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 16
  %i.u = icmp eq i8 %i.t, 13
  %.not7.i = icmp ne ptr %i.r, null
  %.not.not.not.i = and i1 %.not7.i, %i.u
  br i1 %.not.not.not.i, label %bb.c, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit

bb.c:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %i.v = load i32, ptr %i.s, align 16
  %i.w = and i32 %i.v, 536346624
  %i.x = icmp eq i32 %i.w, 266338304
  br label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit:    ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, %bb.c
  %i.y = phi i1 [ false, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ], [ %i.x, %bb.c ], [ false, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ false, %bb.b ]
  ret i1 %i.y
}

declare i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema20tryToRecoverWithCallERNS_12ActionResultIPNS_4ExprELb1EEERKNS_17PartialDiagnosticEbPFbNS_8QualTypeEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL21isPointerToRecordTypeN5clang8QualTypeE(i64 %0) #0 {
bb.a:
  %i.a = and i64 %0, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !845 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  %.not.i = icmp eq i8 %i.e, 40
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !803
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !845
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 40
  br i1 %i.l, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #17 ; 2 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i10 = phi ptr [ %i.m, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i10, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 16, !tbaa !803
  %i.o = and i64 %.sroa.0.0.copyload.i, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !845
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i.i.i.i6 = load i64, ptr %i.r, align 8, !tbaa !803
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i6, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !845
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %i.x = icmp eq i8 %i.w, 49
  br label %.thread

.thread:                                          ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.b, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %i.y = phi i1 [ %i.x, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ], [ false, %bb.b ], [ false, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ]
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL12isRecordTypeN5clang8QualTypeE(i64 %0) #14 {
bb.a:
  %i.a = and i64 %0, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !845
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !803
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !845
end_hunk_0
