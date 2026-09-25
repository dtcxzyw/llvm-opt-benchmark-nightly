Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprCXX?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang25DependentScopeDeclRefExprC2ENS_8QualTypeENS_22NestedNameSpecifierLocENS_14SourceLocationERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoE:bb.a
  store i24 %i.z, ptr %0, align 8
  ret void
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_25DependentScopeDeclRefExprE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang25DependentScopeDeclRefExpr6CreateERKNS_10ASTContextENS_22NestedNameSpecifierLocENS_14SourceLocationERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %.not17 = icmp eq i32 %3, 0
  %i.a = select i1 %.not17, i64 56, i64 72
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !127
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 5
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.f = phi i64 [ 72, %bb.b ], [ %i.a, %.thread ]
  %i.g = phi i64 [ %i.e, %bb.b ], [ 0, %.thread ]
  %i.h = add nuw nsw i64 %i.g, %i.f               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.h, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !60

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.c
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef %i.h, i64 noundef %i.h, i8 3)
  br label %bb.d

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.c
  %i.q = inttoptr i64 %i.l to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !58
  %i.r = icmp eq ptr %i.j, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i16 = phi ptr [ %i.p, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.j, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 19336
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !24
  tail call void @_ZN5clang25DependentScopeDeclRefExprC1ENS_8QualTypeENS_22NestedNameSpecifierLocENS_14SourceLocationERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i16, i64 %.sroa.0.0.copyload.i, i64 %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.t = phi ptr [ %.0.i.i.i16, %bb.d ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang25DependentScopeDeclRefExpr11CreateEmptyERKNS_10ASTContextEbj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %i.a = zext i32 %2 to i64
  %i.b = shl nuw nsw i64 %i.a, 5
  %i.c = select i1 %1, i64 72, i64 56
  %i.d = add nuw nsw i64 %i.b, %i.c               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.h to ptr
  store ptr %i.l, ptr %i.e, align 8, !tbaa !58
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 noundef %i.d, i64 noundef %i.d, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5clang25DependentScopeDeclRefExprC1ENS_8QualTypeENS_22NestedNameSpecifierLocENS_14SourceLocationERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i64 0, i64 0, ptr null, i32 0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.n = load i24, ptr %.0.i.i.i, align 8
  %i.o = select i1 %1, i24 524288, i24 0
  %i.p = and i24 %i.n, -524289
  %i.q = or disjoint i24 %i.p, %i.o
  store i24 %i.q, ptr %.0.i.i.i, align 8
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %1 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %i.c = icmp eq i16 %i.b, 118
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  store ptr %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.i, %bb.b ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %1 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %i.c = icmp eq i16 %i.b, 118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.e = icmp eq i64 %.sroa.3.0.extract.shift.i, 0
  br i1 %i.e, label %bb.c, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #16
  br label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread

_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit: ; preds = %bb.a
  %i.n = load i32, ptr %i.d, align 8, !tbaa !128
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp ne i32 %i.q, 0
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.t, align 4, !tbaa !108 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !143  ; 2 uses
  %.not1321 = icmp eq i32 %i.v, 0
  br i1 %.not1321, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.e
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = zext i32 %i.v to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.a, %bb.h
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.a ], [ %i.x, %bb.h ]
  %i.x = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.y = load i16, ptr %0, align 8
  %i.z = and i16 %i.y, 511
  %.not.i.i.i.i = icmp eq i16 %i.z, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.aa, ptr %1
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #17
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #16 ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.h, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not13.wide = icmp eq i64 %i.x, 0
  br i1 %.not13.wide, label %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread, label %bb.f, !llvm.loop !267

_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit.thread: ; preds = %bb.h, %bb.g, %bb.e, %bb.b, %bb.c, %bb.d, %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit
  %.sroa.0.6 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ], [ %i.q, %_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv.exit ], [ %.sroa.3.0.extract.trunc.i, %bb.b ], [ %.sroa.0.0.copyload.i14, %bb.e ], [ %.sroa.0.0.copyload.i14, %bb.h ], [ %i.ae, %bb.g ]
  ret i32 %.sroa.0.6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = icmp eq i64 %.sroa.3.0.extract.shift, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %i.d, -1
  %i.f = load i16, ptr %0, align 8
  %i.g = and i16 %i.f, 511
  %.not.i.i.i.i = icmp eq i16 %i.g, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %i.h
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.02.0 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.c ], [ %.sroa.3.0.extract.trunc, %bb.a ]
  ret i32 %.sroa.02.0
}

declare noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang19CXXOperatorCallExprC2ENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS3_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr %3, i64 %4, i64 %5, i32 noundef %6, i32 %7, i64 %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #5 align 2 {
bb.a:
  %11 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  store ptr %3, ptr %11, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !131
  tail call void @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEPNS_4ExprEN4llvm8ArrayRefIS4_EES7_NS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideEjNS0_11ADLCallKindE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 93, ptr noundef %2, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %11, i64 %5, i32 noundef %6, i32 %7, i64 %8, i32 noundef 0, i1 noundef zeroext %9) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !128
  %i.b = load i32, ptr %0, align 8
  %i.c = shl i32 %1, 25
  %i.d = and i32 %i.b, 33554431
  %i.e = select i1 %10, i32 -2147483648, i32 0
  %.masked = and i32 %i.c, 2113929216
  %i.f = or disjoint i32 %i.e, %.masked
  %i.g = or disjoint i32 %i.f, %i.d
  store i32 %i.g, ptr %0, align 8
  %i.h = tail call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %.sroa.0.0.extract.trunc = trunc i64 %i.h to i32
  store i32 %.sroa.0.0.extract.trunc, ptr %i.a, align 8, !tbaa !108
  ret void
}

declare void @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEPNS_4ExprEN4llvm8ArrayRefIS4_EES7_NS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideEjNS0_11ADLCallKindE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef") align 8, i64, i32 noundef, i32, i64, i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 9 uses
  %i.b = lshr i32 %i.a, 25
  %i.c = and i32 %i.b, 63                         ; 2 uses
  %i.d = add nsw i32 %i.c, -37
  %or.cond = icmp ult i32 %i.d, 2
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = lshr i32 %i.a, 19
  %i.k = and i32 %i.j, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #16
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = lshr i32 %i.a, 19
  %i.r = and i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i22 = load i32, ptr %i.w, align 4, !tbaa !108
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  switch i32 %i.c, label %bb.i [
    i32 41, label %bb.f
    i32 42, label %bb.g
    i32 43, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = lshr i32 %i.a, 19
  %i.z = and i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i23 = load i32, ptr %i.ae, align 4, !tbaa !108
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = lshr i32 %i.a, 19
  %i.ah = and i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4, !tbaa !108
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = lshr i32 %i.a, 19
  %i.ap = and i32 %i.ao, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.at = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.au, align 4, !tbaa !108
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !17
  switch i32 %i.aw, label %bb.n [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i25 = load i32, ptr %i.ax, align 4, !tbaa !108
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = lshr i32 %i.a, 19
  %i.ba = and i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22
  %i.be = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #16
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %.not = icmp sgt i32 %i.a, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = lshr i32 %i.a, 19
  %i.bh = and i32 %i.bg, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi ; 4 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #16
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bo = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #16
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bq = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i26 = load i32, ptr %i.bu, align 4, !tbaa !108 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.10.0 = phi i32 [ %i.o, %bb.c ], [ %.sroa.0.0.copyload.i.i22, %bb.d ], [ %i.be, %bb.j ], [ %i.bt, %bb.m ], [ %i.bo, %bb.l ], [ %.sroa.0.0.copyload.i.i26, %bb.n ], [ %.sroa.0.0.copyload.i.i23, %bb.f ], [ %.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.0.0.copyload.i24, %bb.h ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.v, %bb.d ], [ %.sroa.0.0.copyload.i.i25, %bb.j ], [ %i.bq, %bb.m ], [ %i.bm, %bb.l ], [ %.sroa.0.0.copyload.i.i26, %bb.n ], [ %i.ad, %bb.f ], [ %i.al, %bb.g ], [ %i.at, %bb.h ]
  %.sroa.10.0.insert.ext = zext i32 %.sroa.10.0 to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang19CXXOperatorCallExprC2EjbNS_4Stmt10EmptyShellE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEjjbNS1_10EmptyShellE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 93, i32 noundef 0, i32 noundef %1, i1 noundef zeroext %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !128
  ret void
}

declare void @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEjjbNS1_10EmptyShellE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1, ptr noundef %2, ptr %3, i64 %4, i64 %5, i32 noundef %6, i32 %7, i64 %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp ult i64 %8, 4294967296
  %i.a = shl i64 %4, 3
  %i.b = select i1 %.not, i64 4294967296, i64 8
end_hunk_0
begin_hunk_1_@_ZN5clang18CXXDefaultInitExpr11CreateEmptyERKNS_10ASTContextEb:bb.a
  br label %_ZN5clang18CXXDefaultInitExprC2ENS_4Stmt10EmptyShellEb.exit

_ZN5clang18CXXDefaultInitExprC2ENS_4Stmt10EmptyShellEb.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = load i32, ptr %.0.i.i.i5, align 8
  %i.s = select i1 %1, i32 524288, i32 0
  %i.t = and i32 %i.r, -524289
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %.0.i.i.i5, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang18CXXDefaultInitExprC2ENS_4Stmt10EmptyShellEb.exit, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.v = phi ptr [ %.0.i.i.i5, %_ZN5clang18CXXDefaultInitExprC2ENS_4Stmt10EmptyShellEb.exit ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang18CXXDefaultInitExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_9FieldDeclEPNS_11DeclContextEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq ptr %4, null
  %i.a = select i1 %.not, i64 32, i64 40          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !60

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !58
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i11 = phi ptr [ %i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.c, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !24
  tail call void @_ZN5clang18CXXDefaultInitExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_9FieldDeclENS_8QualTypeEPNS_11DeclContextEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i11, ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, ptr noundef nonnull %2, i64 %.sroa.0.0.copyload.i, ptr noundef %3, ptr noundef %4) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.m = phi ptr [ %.0.i.i.i11, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang18CXXDefaultInitExpr7getExprEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 524288
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157
  %i.g = tail call noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang12CXXTemporary6CreateERKNS_10ASTContextEPKNS_17CXXDestructorDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 8                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !58
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 8, i64 noundef 8, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  store ptr %1, ptr %.0.i.i.i.i, align 8, !tbaa !293
  ret ptr %.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang20CXXBindTemporaryExpr6CreateERKNS_10ASTContextEPNS_12CXXTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef 8) #17 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = load i16, ptr %i.a, align 8
  %i.d = and i16 %i.c, -512
  %i.e = or disjoint i16 %i.d, 120
  store i16 %i.e, ptr %i.a, align 8
  %i.f = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN5clang20CXXBindTemporaryExprC2EPNS_12CXXTemporaryEPNS_4ExprE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 120) #17
  br label %_ZN5clang20CXXBindTemporaryExprC2EPNS_12CXXTemporaryEPNS_4ExprE.exit

_ZN5clang20CXXBindTemporaryExprC2EPNS_12CXXTemporaryEPNS_4ExprE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i24, ptr %i.a, align 8
  %i.j = and i24 %i.i, -523777
  store i24 %i.j, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !296
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.l, align 8, !tbaa !297
  %i.m = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.n = load i24, ptr %i.a, align 8
  %i.o = and i8 %i.m, 31
  %i.p = zext nneg i8 %i.o to i24
  %i.q = shl nuw nsw i24 %i.p, 14
  %i.r = and i24 %i.n, -507905
  %i.s = or disjoint i24 %i.q, %i.r
  store i24 %i.s, ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22CXXTemporaryObjectExprC2EPNS_18CXXConstructorDeclENS_8QualTypeEPNS_14TypeSourceInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeEbbbb(ptr noundef nonnull align 8 dereferenceable(48) initializes((4, 36)) %0, ptr noundef %1, i64 %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, i64 %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #5 align 2 {
bb.a:
  %11 = alloca %"class.clang::TypeLoc", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %11, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #17
  %i.e = load i16, ptr %0, align 8
  %i.f = and i16 %i.e, -512
  %i.g = or disjoint i16 %i.f, 118
  store i16 %i.g, ptr %0, align 8
  %i.h = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 118) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit.i

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i24, ptr %0, align 8
  %i.l = and i24 %i.k, -523777
  store i24 %i.l, ptr %0, align 8
  store i64 %2, ptr %i.j, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = trunc i64 %5 to i32
  store i32 %i.p, ptr %i.o, align 8, !tbaa !143
  %i.q = load i32, ptr %0, align 8                ; 2 uses
  %i.r = and i32 %i.q, -267911169
  %i.s = select i1 %7, i32 1048576, i32 0
  %i.t = select i1 %8, i32 2097152, i32 0
  %i.u = select i1 %9, i32 4194304, i32 0
  %i.v = select i1 %10, i32 8388608, i32 0
  %i.w = or disjoint i32 %i.t, %i.s
  %i.x = or disjoint i32 %i.w, %i.u
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = or disjoint i32 %i.y, %i.r
  store i32 %i.z, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.aa, align 4, !tbaa !108
  %i.ab = icmp sgt i64 %5, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit.i
  %i.ac = and i32 %i.q, 511
  %.not.i.i = icmp eq i32 %i.ac, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %0, ptr null
  %12 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i = select i1 %.not.i.i, ptr %12, ptr %i.ad ; 3 uses
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i
  %n.vec = and i64 %5, 9223372036854775804        ; 3 uses
  %i.ae = and i64 %5, 3
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %spec.select.i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %4, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %spec.select.i.i, i64 %i.ai ; 2 uses
  %next.gep14 = getelementptr i8, ptr %4, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep14, align 8, !tbaa !22
  %wide.load15 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !21
  store <2 x ptr> %wide.load15, ptr %i.ak, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.012.i.i.i.i.i.i.i.ph = phi i64 [ %5, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ae, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.ph = phi ptr [ %spec.select.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ag, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ah, %middle.block ] ; 3 uses
  %i.am = load ptr, ptr %.0910.i.i.i.i.i.i.i.ph, align 8, !tbaa !22
  store ptr %i.am, ptr %.0811.i.i.i.i.i.i.i.ph, align 8, !tbaa !21
  %i.an = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.ph, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.1, label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.ph, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.ph, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !21
  %i.ar = icmp eq i64 %.012.i.i.i.i.i.i.i.ph, 3
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.2, label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.ph, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.ph, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  store ptr %i.au, ptr %i.as, align 8, !tbaa !21
  br label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %middle.block, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.av, align 8, !tbaa !142
  %i.aw = call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull %0) #17
  %i.ax = load i24, ptr %0, align 8
  %i.ay = and i8 %i.aw, 31
  %i.az = zext nneg i8 %i.ay to i24
  %i.ba = shl nuw nsw i24 %i.az, 14
  %i.bb = and i24 %i.ax, -507905
  %i.bc = or disjoint i24 %i.ba, %i.bb
  store i24 %i.bc, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(36) initializes((4, 36)) %0, i32 noundef %1, i64 %2, i32 %3, ptr noundef %4, i1 noundef zeroext %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, i32 noundef %11, i64 %12) unnamed_addr #5 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = load i16, ptr %0, align 8
  %i.c = and i16 %i.a, 511
  %i.d = and i16 %i.b, -512
  %i.e = or disjoint i16 %i.d, %i.c
  store i16 %i.e, ptr %0, align 8
  %i.f = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef %1) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i24, ptr %0, align 8
  %i.j = and i24 %i.i, -523777
  store i24 %i.j, ptr %0, align 8
  store i64 %2, ptr %i.h, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.k, align 8, !tbaa !158
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %12, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !120  ; 7 uses
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.m, align 8, !tbaa !143
  %i.q = load i32, ptr %0, align 8
  %i.r = select i1 %5, i32 524288, i32 0
  %i.s = and i32 %i.q, -267911169
  %i.t = select i1 %7, i32 1048576, i32 0
  %i.u = select i1 %8, i32 2097152, i32 0
  %i.v = select i1 %9, i32 4194304, i32 0
  %i.w = select i1 %10, i32 8388608, i32 0
  %i.x = shl i32 %11, 24
  %i.y = and i32 %i.x, 117440512
  %i.z = or disjoint i32 %i.t, %i.r
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = or disjoint i32 %i.aa, %i.v
  %i.ac = or disjoint i32 %i.ab, %i.w
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = or disjoint i32 %i.ad, %i.s             ; 2 uses
  store i32 %i.ae, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.af, align 4, !tbaa !108
  %i.ag = icmp sgt i64 %i.o, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.ah = and i32 %i.ae, 511
  %.not.i = icmp eq i32 %i.ah, 118                ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i, ptr %0, ptr null
  %13 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i, ptr %13, ptr %i.ai ; 3 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !121   ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %n.vec = and i64 %i.o, 9223372036854775804      ; 3 uses
  %i.ak = and i64 %i.o, 3
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %spec.select.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %spec.select.i, i64 %i.ao ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep13, align 8, !tbaa !22
  %wide.load14 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !21
  store <2 x ptr> %wide.load14, ptr %i.aq, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ak, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %spec.select.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.am, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.an, %middle.block ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i.i.ph, align 8, !tbaa !22
  store ptr %i.as, ptr %.0811.i.i.i.i.i.i.ph, align 8, !tbaa !21
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i.i.ph, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.1, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.ph, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.ph, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !21
  %i.ax = icmp eq i64 %.012.i.i.i.i.i.i.ph, 3
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.2, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.ph, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.ph, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !22
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !21
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %middle.block, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.bb = icmp eq i32 %1, 117
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit
  %i.bc = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_16CXXConstructExprE(ptr noundef nonnull %0) #17
  %i.bd = load i24, ptr %0, align 8
  %i.be = and i8 %i.bc, 31
  %i.bf = zext nneg i8 %i.be to i24
  %i.bg = shl nuw nsw i24 %i.bf, 14
  %i.bh = and i24 %i.bd, -507905
  %i.bi = or disjoint i24 %i.bg, %i.bh
  store i24 %i.bi, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPPNS2_4StmtEEET0_OT_SA_.exit
  ret void
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_22CXXTemporaryObjectExprE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22CXXTemporaryObjectExprC2ENS_4Stmt10EmptyShellEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((8, 16), (24, 36)) %0, i32 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 118
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 118) #17
  br label %_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellEj.exit

_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellEj.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.i, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((8, 16), (24, 36)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = load i16, ptr %0, align 8
  %i.c = and i16 %i.a, 511
  %i.d = and i16 %i.b, -512
  %i.e = or disjoint i16 %i.d, %i.c
  store i16 %i.e, ptr %0, align 8
  %i.f = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef %1) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.k, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang22CXXTemporaryObjectExpr6CreateERKNS_10ASTContextEPNS_18CXXConstructorDeclENS_8QualTypeEPNS_14TypeSourceInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeEbbbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i64 %2, ptr noundef %3, ptr %4, i64 %5, i64 %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i64 %5, 3
  %i.b = and i64 %i.a, 4294967288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.d = add nuw nsw i64 %i.b, 48                 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !60

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.d, i64 noundef %i.d, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.l = inttoptr i64 %i.g to ptr
  store ptr %i.l, ptr %i.c, align 8, !tbaa !58
  %i.m = icmp eq ptr %i.e, null
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i14 = phi ptr [ %i.k, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.e, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang22CXXTemporaryObjectExprC1EPNS_18CXXConstructorDeclENS_8QualTypeEPNS_14TypeSourceInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeEbbbb(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i14, ptr noundef %1, i64 %2, ptr noundef %3, ptr %4, i64 %5, i64 %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.n = phi ptr [ %.0.i.i.i14, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang22CXXTemporaryObjectExpr11CreateEmptyERKNS_10ASTContextEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.d = add nuw nsw i64 %i.b, 48                 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !60

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.d, i64 noundef %i.d, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.l = inttoptr i64 %i.g to ptr
  store ptr %i.l, ptr %i.c, align 8, !tbaa !58
  %i.m = icmp eq ptr %i.e, null
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i5 = phi ptr [ %i.k, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.e, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang22CXXTemporaryObjectExprC1ENS_4Stmt10EmptyShellEj(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i5, i32 noundef %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.n = phi ptr [ %.0.i.i.i5, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang16CXXConstructExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, i32 %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, i64 %11) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120
  %i.c = shl i64 %i.b, 3
  %i.d = and i64 %i.c, 4294967288
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.f = add nuw nsw i64 %i.d, 40                 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !58   ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !60

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.m = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 noundef %i.f, i64 noundef %i.f, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  store ptr %i.n, ptr %i.e, align 8, !tbaa !58
  %i.o = icmp eq ptr %i.g, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i15 = phi ptr [ %i.m, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.g, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang16CXXConstructExprC1ENS_4Stmt9StmtClassENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i15, i32 noundef 117, i64 %1, i32 %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, i64 %11) #17
  br label %bb.c

end_hunk_1
