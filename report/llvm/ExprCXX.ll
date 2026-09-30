Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprCXX?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang16CXXConstructExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellEj:bb.a
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

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.p = phi ptr [ %.0.i.i.i15, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang16CXXConstructExpr11CreateEmptyERKNS_10ASTContextEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.d = add nuw nsw i64 %i.b, 40                 ; 3 uses
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
  tail call void @_ZN5clang16CXXConstructExprC1ENS_4Stmt9StmtClassENS1_10EmptyShellEj(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i5, i32 noundef 117, i32 noundef %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.n = phi ptr [ %.0.i.i.i5, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.n
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_16CXXConstructExprE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5clang13LambdaCaptureC2ENS_14SourceLocationEbNS_17LambdaCaptureKindEPNS_9ValueDeclES1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 %5) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %5, ptr %i.b, align 4, !tbaa !108
  %spec.select = zext i1 %2 to i64                ; 4 uses
  switch i32 %3, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = or disjoint i64 %spec.select, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.c, %bb.b ], [ %spec.select, %bb.a ]
  %i.d = or i64 %.1, 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = or disjoint i64 %spec.select, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.2 = phi i64 [ %spec.select, %bb.a ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %i.f = ptrtoint ptr %4 to i64
  %i.g = and i64 %i.f, -8
  %i.h = or i64 %.2, %i.g
  store i64 %i.h, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 5) i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = icmp ult i64 %.0.copyload.i.i.i.i, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %.0.copyload.i.i.i.i to i32
  %i.c = icmp ult i64 %.0.copyload.i.i.i.i, 8
  %.lobit.a = lshr i32 %i.b, 1
  %.lobit = and i32 %.lobit.a, 1                  ; 2 uses
  %1 = xor i32 %.lobit, 3
  %.0 = select i1 %i.c, i32 %.lobit, i32 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %.0, %bb.b ], [ 4, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang10LambdaExprC2ENS_8QualTypeENS_11SourceRangeENS_20LambdaCaptureDefaultENS_14SourceLocationEbbN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(32) initializes((4, 6), (8, 32)) %0, i64 %1, i64 %2, i32 noundef %3, i32 %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7, i32 %8, i1 noundef zeroext %9) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 53
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !110, !range !111, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 53) #17
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i24, ptr %0, align 8
  %i.h = and i24 %i.g, -523777
  store i24 %i.h, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.i, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.j, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %8, ptr %i.k, align 4, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !120  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = trunc i64 %i.m to i16
  store i16 %i.o, ptr %i.n, align 4
  %i.p = load i32, ptr %0, align 8
  %i.q = shl i32 %3, 19
  %i.r = and i32 %i.q, 1572864
  %i.s = and i32 %i.p, -7864321
  %i.t = select i1 %5, i32 2097152, i32 0
  %i.u = select i1 %6, i32 4194304, i32 0
  %i.v = or disjoint i32 %i.t, %i.r
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = or disjoint i32 %i.w, %i.s
  store i32 %i.x, ptr %0, align 8
  %i.y = and i64 %1, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !27 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16            ; 3 uses
  %i.ah = add i8 %i.ag, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ah, 3
  %.not.i7.i.i = icmp ne ptr %i.ae, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = and i8 %i.ag, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.ai, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.c, label %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.al = icmp eq i8 %i.ag, 49
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 127
  %i.ap = add nsw i32 %i.ao, -60
  %i.aq = icmp ult i32 %i.ap, 3
  br i1 %i.aq, label %bb.e, label %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ak) ; 0 uses
  br label %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit

_ZNK5clang10LambdaExpr14getLambdaClassEv.exit:    ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit, %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.at = and i64 %i.m, 4294967295
  %.not16 = icmp eq i64 %i.at, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit
  %i.au = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.av = and i64 %i.m, 4294967295                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.av, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.m, 4294967292               ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.as, i64 %i.aw  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x ptr>, ptr %i.az, align 8, !tbaa !22
  %wide.load21 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !22
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !21
  store <2 x ptr> %wide.load21, ptr %i.bb, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01417.ph = phi ptr [ %i.as, %.lr.ph ], [ %i.ax, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit
  %.014.lcssa = phi ptr [ %i.as, %_ZNK5clang10LambdaExpr14getLambdaClassEv.exit ], [ %i.ax, %middle.block ], [ %i.cf, %scalar.ph ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !tbaa !24
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !27, !nonnull !71, !noundef !71 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i8, ptr %i.bk, align 16            ; 2 uses
  %i.bm = add nsw i8 %i.bl, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bm, 3
  %i.bn = and i8 %i.bl, 62
  %spec.select.i.i.i.i.i = icmp eq i8 %i.bn, 48
  tail call void @llvm.assume(i1 %spec.select.i.i.i.i.i)
  tail call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33 ; 2 uses
  %i.bq = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bp) ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.bq, null
  %spec.select.i.i.i.i15 = select i1 %.not.not.i.i.i.i, ptr %i.bp, ptr %i.bq
  %i.br = tail call noundef ptr @_ZNK5clang13CXXRecordDecl21getLambdaCallOperatorEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i.i.i15) #17 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(168) %i.br) #17
  store ptr %i.bv, ptr %.014.lcssa, align 8, !tbaa !21
  %i.bw = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_10LambdaExprEb(ptr noundef nonnull %0, i1 noundef zeroext %9) #17
  %i.bx = load i24, ptr %0, align 8
  %i.by = and i8 %i.bw, 31
  %i.bz = zext nneg i8 %i.by to i24
  %i.ca = shl nuw nsw i24 %i.bz, 14
  %i.cb = and i24 %i.bx, -507905
  %i.cc = or disjoint i24 %i.ca, %i.cb
  store i24 %i.cc, ptr %0, align 8
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01417 = phi ptr [ %i.cf, %scalar.ph ], [ %.01417.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  store ptr %i.ce, ptr %.01417, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.av
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !301
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang10LambdaExpr14getLambdaClassEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !24
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !27  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16              ; 3 uses
  %i.k = add i8 %i.j, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, 3
  %.not.i7.i = icmp ne ptr %i.h, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.l = and i8 %i.j, 62
end_hunk_0
