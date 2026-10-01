Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenModule?download=true
inline.NumInlined: 33934
inline.NumDeleted: 16733
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE17TraverseOMPClauseEPNS_9OMPClauseE:bb.a

bb.bd:                                            ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !4049
  %i.cd = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.cc, ptr noundef null), !inline_history !4017
  br i1 %i.cd, label %bb.bn, label %bb.bo

bb.be:                                            ; preds = %bb.b
  %i.ce = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE19VisitOMPSizesClauseEPNS_14OMPSizesClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  br i1 %i.ce, label %bb.bn, label %bb.bo

bb.bf:                                            ; preds = %bb.b
  %i.cf = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27VisitOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  br i1 %i.cf, label %bb.bn, label %bb.bo

bb.bg:                                            ; preds = %bb.b
  %i.cg = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  br i1 %i.cg, label %bb.bn, label %bb.bo

bb.bh:                                            ; preds = %bb.b
  %i.ch = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_11OMPToClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1), !inline_history !4018
  br i1 %i.ch, label %bb.bn, label %bb.bo

bb.bi:                                            ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !4052
  %i.ck = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.cj, ptr noundef null), !inline_history !4019
  br i1 %i.ck, label %bb.bn, label %bb.bo

bb.bj:                                            ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !4054
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.cm, ptr noundef null), !inline_history !4020
  br i1 %i.cn, label %bb.bn, label %bb.bo

bb.bk:                                            ; preds = %bb.b
  %i.co = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPUseDeviceAddrClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1), !inline_history !4021
  br i1 %i.co, label %bb.bn, label %bb.bo

bb.bl:                                            ; preds = %bb.b
  %i.cp = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPUseDevicePtrClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1), !inline_history !4022
  br i1 %i.cp, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.b
  %i.cq = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPUsesAllocatorsClauseEPNS_23OMPUsesAllocatorsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  br i1 %i.cq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.bn
  %.0 = phi i1 [ true, %bb.bn ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.ay ], [ false, %bb.bb ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.af ], [ false, %bb.bl ], [ false, %bb.ao ], [ false, %bb.ak ], [ false, %bb.ax ], [ false, %bb.bk ], [ false, %bb.aw ], [ false, %bb.g ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.aq ], [ false, %bb.at ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.ag ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.ah ], [ false, %bb.ba ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.an ], [ false, %bb.az ], [ false, %bb.s ], [ false, %bb.as ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.al ], [ false, %bb.y ], [ false, %bb.bh ], [ false, %bb.bg ], [ false, %bb.ai ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.am ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.aj ], [ false, %bb.ad ], [ false, %bb.bf ], [ false, %bb.be ], [ false, %bb.bd ], [ false, %bb.ae ], [ false, %bb.bc ], [ false, %bb.bm ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPAffinityClauseEPNS_17OMPAffinityClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4056
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null)
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4056 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01216 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01216, align 8, !tbaa !1648
  %i.l = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k, ptr noundef null) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01216, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.m, %i.j
  %or.cond.not = select i1 %i.l, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.l, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE21VisitOMPAlignedClauseEPNS_16OMPAlignedClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4059
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null)
  br i1 %i.g, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPAlignedClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !4059 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i4 = icmp eq i32 %i.h, 0
  br i1 %.not.i4, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPAlignedClauseEEEbPT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.011.i5 = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.011.i5, align 8, !tbaa !1648
  %i.l = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k, ptr noundef null), !inline_history !4057 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i5, i64 8 ; 2 uses
  %.not.i = icmp ne ptr %i.m, %i.j
  %or.cond.not = select i1 %i.l, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPAlignedClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPAlignedClauseEEEbPT_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.l, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPAllocateClauseEPNS_17OMPAllocateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4064
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null)
  br i1 %i.c, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_17OMPAllocateClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !4065 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not.i4 = icmp eq i32 %i.e, 0
  br i1 %.not.i4, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_17OMPAllocateClauseEEEbPT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.011.i5 = phi ptr [ %i.k, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.011.i5, align 8, !tbaa !1648
  %i.j = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.i, ptr noundef null), !inline_history !4060 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i5, i64 8 ; 2 uses
  %.not.i = icmp ne ptr %i.k, %i.h
  %or.cond.not = select i1 %i.j, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_17OMPAllocateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_17OMPAllocateClauseEEEbPT_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.j, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPCopyprivateClauseEPNS_20OMPCopyprivateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4068 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i64 = icmp eq i32 %i.b, 0
  br i1 %.not.i64, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i65, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i65 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i65, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4066
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4068 ; 2 uses
  %i.i = zext i32 %.pre to i64                    ; 2 uses
  %.idx83 = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx83 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.not66 = icmp eq i32 %.pre, 0
  br i1 %.not66, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit, label %.lr.ph69

bb.c:                                             ; preds = %.lr.ph69
  %i.l = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.k
  br i1 %.not, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %._crit_edge, %bb.c
  %.03667 = phi ptr [ %i.l, %bb.c ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.03667, align 8, !tbaa !1648
  %i.n = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m, ptr noundef null)
  br i1 %i.n, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit

._crit_edge70:                                    ; preds = %bb.c
  %.pre89 = load i32, ptr %i.a, align 4, !tbaa !4068 ; 2 uses
  %i.o = zext i32 %.pre89 to i64                  ; 3 uses
  %.idx84.a = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx84.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %.not4371 = icmp eq i32 %.pre89, 0
  br i1 %.not4371, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit, label %.lr.ph74

bb.d:                                             ; preds = %.lr.ph74
  %i.q = getelementptr inbounds nuw i8, ptr %.03472, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.q, %3
  br i1 %.not43, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge70, %bb.d
  %.03472 = phi ptr [ %i.q, %bb.d ], [ %2, %._crit_edge70 ] ; 2 uses
  %i.r = load ptr, ptr %.03472, align 8, !tbaa !1648
  %i.s = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.r, ptr noundef null)
  br i1 %i.s, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit

._crit_edge75:                                    ; preds = %bb.d
  %.pre90 = load i32, ptr %i.a, align 4, !tbaa !4068 ; 2 uses
  %i.t = zext i32 %.pre90 to i64                  ; 4 uses
  %.idx85.a = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx85.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.t
  %.not4476 = icmp eq i32 %.pre90, 0
  br i1 %.not4476, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit, label %.lr.ph80

.lr.ph80:                                         ; preds = %._crit_edge75, %.lr.ph80
  %.077 = phi ptr [ %i.y, %.lr.ph80 ], [ %5, %._crit_edge75 ] ; 2 uses
  %i.w = load ptr, ptr %.077, align 8, !tbaa !1648
  %i.x = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.w, ptr noundef null) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077, i64 8 ; 2 uses
  %.not44 = icmp ne ptr %i.y, %i.v
  %or.cond.not = select i1 %i.x, i1 %.not44, i1 false
  br i1 %or.cond.not, label %.lr.ph80, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPCopyprivateClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph69, %.lr.ph74, %.lr.ph80, %bb.a, %._crit_edge, %._crit_edge70, %._crit_edge75
  %.9 = phi i1 [ %i.x, %.lr.ph80 ], [ true, %._crit_edge ], [ false, %.lr.ph74 ], [ true, %._crit_edge75 ], [ false, %.lr.ph69 ], [ true, %bb.a ], [ true, %._crit_edge70 ], [ false, %.lr.ph ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE20VisitOMPCopyinClauseEPNS_15OMPCopyinClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4071 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i64 = icmp eq i32 %i.b, 0
  br i1 %.not.i64, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i65, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i65 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i65, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4069
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4071 ; 2 uses
  %i.i = zext i32 %.pre to i64                    ; 2 uses
  %.idx83 = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx83 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.not66 = icmp eq i32 %.pre, 0
  br i1 %.not66, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit, label %.lr.ph69

bb.c:                                             ; preds = %.lr.ph69
  %i.l = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.k
  br i1 %.not, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %._crit_edge, %bb.c
  %.03667 = phi ptr [ %i.l, %bb.c ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.03667, align 8, !tbaa !1648
  %i.n = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m, ptr noundef null)
  br i1 %i.n, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit

._crit_edge70:                                    ; preds = %bb.c
  %.pre89 = load i32, ptr %i.a, align 4, !tbaa !4071 ; 2 uses
  %i.o = zext i32 %.pre89 to i64                  ; 3 uses
  %.idx84.a = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx84.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %.not4371 = icmp eq i32 %.pre89, 0
  br i1 %.not4371, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit, label %.lr.ph74

bb.d:                                             ; preds = %.lr.ph74
  %i.q = getelementptr inbounds nuw i8, ptr %.03472, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.q, %3
  br i1 %.not43, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge70, %bb.d
  %.03472 = phi ptr [ %i.q, %bb.d ], [ %2, %._crit_edge70 ] ; 2 uses
  %i.r = load ptr, ptr %.03472, align 8, !tbaa !1648
  %i.s = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.r, ptr noundef null)
  br i1 %i.s, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit

._crit_edge75:                                    ; preds = %bb.d
  %.pre90 = load i32, ptr %i.a, align 4, !tbaa !4071 ; 2 uses
  %i.t = zext i32 %.pre90 to i64                  ; 4 uses
  %.idx85.a = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx85.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.t
  %.not4476 = icmp eq i32 %.pre90, 0
  br i1 %.not4476, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit, label %.lr.ph80

.lr.ph80:                                         ; preds = %._crit_edge75, %.lr.ph80
  %.077 = phi ptr [ %i.y, %.lr.ph80 ], [ %5, %._crit_edge75 ] ; 2 uses
  %i.w = load ptr, ptr %.077, align 8, !tbaa !1648
  %i.x = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.w, ptr noundef null) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077, i64 8 ; 2 uses
  %.not44 = icmp ne ptr %i.y, %i.v
  %or.cond.not = select i1 %i.x, i1 %.not44, i1 false
  br i1 %or.cond.not, label %.lr.ph80, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPCopyinClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph69, %.lr.ph74, %.lr.ph80, %bb.a, %._crit_edge, %._crit_edge70, %._crit_edge75
  %.9 = phi i1 [ %i.x, %.lr.ph80 ], [ true, %._crit_edge ], [ false, %.lr.ph74 ], [ true, %._crit_edge75 ], [ false, %.lr.ph69 ], [ true, %bb.a ], [ true, %._crit_edge70 ], [ false, %.lr.ph ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE20VisitOMPCountsClauseEPNS_15OMPCountsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4073 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01116 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01116, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE20VisitOMPDeviceClauseEPNS_15OMPDeviceClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4076
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE26VisitOMPDistScheduleClauseEPNS_21OMPDistScheduleClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4079
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE29VisitOMPDynGroupprivateClauseEPNS_24OMPDynGroupprivateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4081
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE20VisitOMPFilterClauseEPNS_15OMPFilterClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4083
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE19VisitOMPFinalClauseEPNS_14OMPFinalClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4085
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE26VisitOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4088 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i43 = icmp eq i32 %i.b, 0
  br i1 %.not.i43, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i44, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i44 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i44, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4086
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2312
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.j, ptr noundef null), !inline_history !101
  br i1 %i.k, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.l = load i32, ptr %i.a, align 8, !tbaa !4088 ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %.idx57 = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx57 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit, label %.lr.ph48

bb.d:                                             ; preds = %.lr.ph48
  %i.p = getelementptr inbounds nuw i8, ptr %.02546, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.o
  br i1 %.not, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c, %bb.d
  %.02546 = phi ptr [ %i.p, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %.02546, align 8, !tbaa !1648
  %i.r = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.q, ptr noundef null)
  br i1 %i.r, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit

._crit_edge49:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 8, !tbaa !4088 ; 2 uses
  %i.s = zext i32 %.pre to i64                    ; 3 uses
  %.idx58.a = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx58.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %.not3050 = icmp eq i32 %.pre, 0
  br i1 %.not3050, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit, label %.lr.ph54

.lr.ph54:                                         ; preds = %._crit_edge49, %.lr.ph54
  %.051 = phi ptr [ %i.w, %.lr.ph54 ], [ %2, %._crit_edge49 ] ; 2 uses
  %i.u = load ptr, ptr %.051, align 8, !tbaa !1648
  %i.v = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.u, ptr noundef null) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %.not30 = icmp ne ptr %i.w, %3
  %or.cond.not = select i1 %i.v, i1 %.not30, i1 false
  br i1 %or.cond.not, label %.lr.ph54, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_21OMPFirstprivateClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph48, %.lr.ph54, %bb.c, %._crit_edge49, %._crit_edge
  %.6 = phi i1 [ false, %._crit_edge ], [ %i.v, %.lr.ph54 ], [ true, %bb.c ], [ true, %._crit_edge49 ], [ false, %.lr.ph48 ], [ false, %.lr.ph ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE23VisitOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4091
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE16VisitOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4093
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !1090
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1083
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE30TraverseNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br i1 %i.b, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27TraverseDeclarationNameInfoENS_19DeclarationNameInfoE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %i.c)
  br i1 %i.d, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 7 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i114 = icmp eq i32 %i.f, 0
  br i1 %.not.i114, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i115, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.011.i115 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.011.i115, align 8, !tbaa !1648
  %i.l = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k, ptr noundef null), !inline_history !4094
  br i1 %i.l, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2312
  %i.o = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.n, ptr noundef null), !inline_history !102
  br i1 %i.o, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2314
  %i.r = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.q, ptr noundef null), !inline_history !103
  br i1 %i.r, label %bb.e, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

bb.e:                                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %i.s = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx143 = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx143 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %.not116 = icmp eq i32 %i.s, 0
  br i1 %.not116, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit, label %.lr.ph119

bb.f:                                             ; preds = %.lr.ph119
  %i.w = getelementptr inbounds nuw i8, ptr %.063117, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.v
  br i1 %.not, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.e, %bb.f
  %.063117 = phi ptr [ %i.w, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %.063117, align 8, !tbaa !1648
  %i.y = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.x, ptr noundef null)
  br i1 %i.y, label %bb.f, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

._crit_edge120:                                   ; preds = %bb.f
  %.pre = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.z = zext i32 %.pre to i64                    ; 3 uses
  %.idx144.a = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx144.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %.not74121 = icmp eq i32 %.pre, 0
  br i1 %.not74121, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit, label %.lr.ph124

bb.g:                                             ; preds = %.lr.ph124
  %i.ab = getelementptr inbounds nuw i8, ptr %.061122, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.ab, %3
  br i1 %.not74, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge120, %bb.g
  %.061122 = phi ptr [ %i.ab, %bb.g ], [ %2, %._crit_edge120 ] ; 2 uses
  %i.ac = load ptr, ptr %.061122, align 8, !tbaa !1648
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ac, ptr noundef null)
  br i1 %i.ad, label %bb.g, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

._crit_edge125:                                   ; preds = %bb.g
  %.pre153 = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.ae = zext i32 %.pre153 to i64                ; 4 uses
  %.idx145.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx145.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  %.not75126 = icmp eq i32 %.pre153, 0
  br i1 %.not75126, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit, label %.lr.ph129

bb.h:                                             ; preds = %.lr.ph129
  %i.ah = getelementptr inbounds nuw i8, ptr %.060127, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not75, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %._crit_edge125, %bb.h
  %.060127 = phi ptr [ %i.ah, %bb.h ], [ %5, %._crit_edge125 ] ; 2 uses
  %i.ai = load ptr, ptr %.060127, align 8, !tbaa !1648
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ai, ptr noundef null)
  br i1 %i.aj, label %bb.h, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

._crit_edge130:                                   ; preds = %bb.h
  %.pre154 = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.ak = zext i32 %.pre154 to i64                ; 5 uses
  %.idx146.a = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx146.a
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ak
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ak ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ak
  %.not76131 = icmp eq i32 %.pre154, 0
  br i1 %.not76131, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit, label %.lr.ph134

bb.i:                                             ; preds = %.lr.ph134
  %i.am = getelementptr inbounds nuw i8, ptr %.059132, i64 8 ; 2 uses
  %.not76 = icmp eq ptr %i.am, %9
  br i1 %.not76, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge130, %bb.i
  %.059132 = phi ptr [ %i.am, %bb.i ], [ %8, %._crit_edge130 ] ; 2 uses
  %i.an = load ptr, ptr %.059132, align 8, !tbaa !1648
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.an, ptr noundef null)
  br i1 %i.ao, label %bb.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

._crit_edge135:                                   ; preds = %bb.i
  %.pre155 = load i32, ptr %i.e, align 8, !tbaa !4096 ; 2 uses
  %i.ap = zext i32 %.pre155 to i64                ; 6 uses
  %.idx147.a = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx147.a
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ap
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ap
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.ap
  %.not77136 = icmp eq i32 %.pre155, 0
  br i1 %.not77136, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit, label %.lr.ph140

.lr.ph140:                                        ; preds = %._crit_edge135, %.lr.ph140
  %.0137 = phi ptr [ %i.au, %.lr.ph140 ], [ %13, %._crit_edge135 ] ; 2 uses
  %i.as = load ptr, ptr %.0137, align 8, !tbaa !1648
  %i.at = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.as, ptr noundef null) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0137, i64 8 ; 2 uses
  %.not77 = icmp ne ptr %i.au, %i.ar
  %or.cond.not = select i1 %i.at, i1 %.not77, i1 false
  br i1 %or.cond.not, label %.lr.ph140, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPInReductionClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph119, %.lr.ph124, %.lr.ph129, %.lr.ph134, %.lr.ph140, %bb.e, %._crit_edge120, %._crit_edge125, %._crit_edge130, %._crit_edge135, %._crit_edge, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, %bb.b, %bb.a
  %.15 = phi i1 [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit ], [ false, %._crit_edge ], [ false, %.lr.ph129 ], [ false, %.lr.ph119 ], [ true, %._crit_edge120 ], [ false, %.lr.ph134 ], [ false, %bb.a ], [ false, %bb.b ], [ %i.at, %.lr.ph140 ], [ true, %._crit_edge135 ], [ false, %.lr.ph124 ], [ true, %bb.e ], [ true, %._crit_edge130 ], [ true, %._crit_edge125 ], [ false, %.lr.ph ]
  ret i1 %.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4099 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i21 = icmp eq i32 %i.b, 0
  br i1 %.not.i21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i22, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i22 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i22, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4097
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_13OMPInitClauseEEEbPT_.exit

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4099
  %i.i = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi i64 [ %i.i, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4101 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx30 = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx30
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_13OMPInitClauseEEEbPT_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge, %.lr.ph27
  %.01224 = phi ptr [ %i.r, %.lr.ph27 ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.01224, align 8, !tbaa !1648
  %i.q = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.p, ptr noundef null) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01224, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.r, %i.o
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph27, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_13OMPInitClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_13OMPInitClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph27, %._crit_edge
  %.3 = phi i1 [ %i.q, %.lr.ph27 ], [ true, %._crit_edge ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4104 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i88 = icmp eq i32 %i.b, 0
  br i1 %.not.i88, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i89, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i89 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i89, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4102
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2312
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.j, ptr noundef null), !inline_history !102
  br i1 %i.k, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit: ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2314
  %i.n = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.m, ptr noundef null), !inline_history !103
  br i1 %i.n, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

bb.c:                                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !4104 ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx112 = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx112 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %.not90 = icmp eq i32 %i.o, 0
  br i1 %.not90, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit, label %.lr.ph93

bb.d:                                             ; preds = %.lr.ph93
  %i.s = getelementptr inbounds nuw i8, ptr %.04991, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.r
  br i1 %.not, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.c, %bb.d
  %.04991 = phi ptr [ %i.s, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.04991, align 8, !tbaa !1648
  %i.u = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.t, ptr noundef null)
  br i1 %i.u, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

._crit_edge94:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 8, !tbaa !4104 ; 2 uses
  %i.v = zext i32 %.pre to i64                    ; 3 uses
  %.idx113.a = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx113.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %.not5895 = icmp eq i32 %.pre, 0
  br i1 %.not5895, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit, label %.lr.ph98

bb.e:                                             ; preds = %.lr.ph98
  %i.x = getelementptr inbounds nuw i8, ptr %.04796, i64 8 ; 2 uses
  %.not58 = icmp eq ptr %i.x, %3
  br i1 %.not58, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge94, %bb.e
  %.04796 = phi ptr [ %i.x, %bb.e ], [ %2, %._crit_edge94 ] ; 2 uses
  %i.y = load ptr, ptr %.04796, align 8, !tbaa !1648
  %i.z = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.y, ptr noundef null)
  br i1 %i.z, label %bb.e, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

._crit_edge99:                                    ; preds = %bb.e
  %.pre120 = load i32, ptr %i.a, align 8, !tbaa !4104 ; 2 uses
  %i.aa = zext i32 %.pre120 to i64                ; 4 uses
  %.idx114.a = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx114.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa
  %.not59100 = icmp eq i32 %.pre120, 0
  br i1 %.not59100, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit, label %.lr.ph103

bb.f:                                             ; preds = %.lr.ph103
  %i.ad = getelementptr inbounds nuw i8, ptr %.046101, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not59, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %._crit_edge99, %bb.f
  %.046101 = phi ptr [ %i.ad, %bb.f ], [ %5, %._crit_edge99 ] ; 2 uses
  %i.ae = load ptr, ptr %.046101, align 8, !tbaa !1648
  %i.af = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ae, ptr noundef null)
  br i1 %i.af, label %bb.f, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

._crit_edge104:                                   ; preds = %bb.f
  %.pre121 = load i32, ptr %i.a, align 8, !tbaa !4104 ; 2 uses
  %i.ag = zext i32 %.pre121 to i64                ; 5 uses
  %.idx115.a = shl nuw nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx115.a
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ag
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ag ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ag
  %.not60105 = icmp eq i32 %.pre121, 0
  br i1 %.not60105, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit, label %.lr.ph109

.lr.ph109:                                        ; preds = %._crit_edge104, %.lr.ph109
  %.0106 = phi ptr [ %i.ak, %.lr.ph109 ], [ %8, %._crit_edge104 ] ; 2 uses
  %i.ai = load ptr, ptr %.0106, align 8, !tbaa !1648
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ai, ptr noundef null) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0106, i64 8 ; 2 uses
  %.not60 = icmp ne ptr %i.ak, %9
  %or.cond.not = select i1 %i.aj, i1 %.not60, i1 false
  br i1 %or.cond.not, label %.lr.ph109, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPLastprivateClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph93, %.lr.ph98, %.lr.ph103, %.lr.ph109, %bb.c, %._crit_edge94, %._crit_edge99, %._crit_edge104, %._crit_edge, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %.12 = phi i1 [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit ], [ false, %._crit_edge ], [ %i.aj, %.lr.ph109 ], [ false, %.lr.ph98 ], [ false, %.lr.ph93 ], [ true, %._crit_edge94 ], [ true, %._crit_edge104 ], [ false, %.lr.ph103 ], [ true, %bb.c ], [ true, %._crit_edge99 ], [ false, %.lr.ph ]
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE20VisitOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4107
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.c
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null)
  br i1 %i.g, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !4107
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.i
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.i
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1648
  %i.m = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.l, ptr noundef null)
  br i1 %i.m, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !4107 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i90 = icmp eq i32 %i.n, 0
  br i1 %.not.i90, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i91, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.011.i91 = phi ptr [ %i.q, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %.011.i91, align 8, !tbaa !1648
  %i.s = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.r, ptr noundef null), !inline_history !4105
  br i1 %i.s, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2312
  %i.v = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.u, ptr noundef null), !inline_history !102
  br i1 %i.v, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit: ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2314
  %i.y = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.x, ptr noundef null), !inline_history !103
  br i1 %i.y, label %bb.e, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

bb.e:                                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %i.z = load i32, ptr %i.a, align 8, !tbaa !4107 ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %.idx114 = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx114 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.not92 = icmp eq i32 %i.z, 0
  br i1 %.not92, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit, label %.lr.ph95

bb.f:                                             ; preds = %.lr.ph95
  %i.ad = getelementptr inbounds nuw i8, ptr %.05193, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.ac
  br i1 %.not, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.e, %bb.f
  %.05193 = phi ptr [ %i.ad, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.05193, align 8, !tbaa !1648
  %i.af = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ae, ptr noundef null)
  br i1 %i.af, label %bb.f, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

._crit_edge96:                                    ; preds = %bb.f
  %.pre = load i32, ptr %i.a, align 8, !tbaa !4107 ; 2 uses
  %i.ag = zext i32 %.pre to i64                   ; 3 uses
  %.idx115.a = shl nuw nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx115.a
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ag
  %.not6097 = icmp eq i32 %.pre, 0
  br i1 %.not6097, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit, label %.lr.ph100

bb.g:                                             ; preds = %.lr.ph100
  %i.ai = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.ai, %11
  br i1 %.not60, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge96, %bb.g
  %.04998 = phi ptr [ %i.ai, %bb.g ], [ %10, %._crit_edge96 ] ; 2 uses
  %i.aj = load ptr, ptr %.04998, align 8, !tbaa !1648
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.aj, ptr noundef null)
  br i1 %i.ak, label %bb.g, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

._crit_edge101:                                   ; preds = %bb.g
  %.pre122 = load i32, ptr %i.a, align 8, !tbaa !4107 ; 2 uses
  %i.al = zext i32 %.pre122 to i64                ; 4 uses
  %.idx116.a = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx116.a
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.al
  %.not61102 = icmp eq i32 %.pre122, 0
  br i1 %.not61102, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit, label %.lr.ph105

bb.h:                                             ; preds = %.lr.ph105
  %i.ao = getelementptr inbounds nuw i8, ptr %.048103, i64 8 ; 2 uses
  %.not61 = icmp eq ptr %i.ao, %i.an
  br i1 %.not61, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge101, %bb.h
  %.048103 = phi ptr [ %i.ao, %bb.h ], [ %13, %._crit_edge101 ] ; 2 uses
  %i.ap = load ptr, ptr %.048103, align 8, !tbaa !1648
  %i.aq = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ap, ptr noundef null)
  br i1 %i.aq, label %bb.h, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

._crit_edge106:                                   ; preds = %bb.h
  %.pre123 = load i32, ptr %i.a, align 8, !tbaa !4107 ; 2 uses
  %i.ar = zext i32 %.pre123 to i64                ; 5 uses
  %.idx117.a = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx117.a
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %i.ar
  %16 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.ar ; 2 uses
  %17 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.ar
  %.not62107 = icmp eq i32 %.pre123, 0
  br i1 %.not62107, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit, label %.lr.ph111

.lr.ph111:                                        ; preds = %._crit_edge106, %.lr.ph111
  %.0108 = phi ptr [ %i.av, %.lr.ph111 ], [ %16, %._crit_edge106 ] ; 2 uses
  %i.at = load ptr, ptr %.0108, align 8, !tbaa !1648
  %i.au = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.at, ptr noundef null) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108, i64 8 ; 2 uses
  %.not62 = icmp ne ptr %i.av, %17
  %or.cond.not = select i1 %i.au, i1 %.not62, i1 false
  br i1 %or.cond.not, label %.lr.ph111, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPLinearClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph95, %.lr.ph100, %.lr.ph105, %.lr.ph111, %bb.e, %._crit_edge96, %._crit_edge101, %._crit_edge106, %._crit_edge, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, %bb.b, %bb.a
  %.12 = phi i1 [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit ], [ false, %._crit_edge ], [ %i.au, %.lr.ph111 ], [ false, %.lr.ph100 ], [ false, %.lr.ph95 ], [ false, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge96 ], [ true, %._crit_edge106 ], [ false, %.lr.ph105 ], [ true, %bb.e ], [ true, %._crit_edge101 ], [ false, %.lr.ph ]
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE23VisitOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2305
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2305
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE23VisitOMPNocontextClauseEPNS_18OMPNocontextClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4109
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPNontemporalClauseEPNS_20OMPNontemporalClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4114 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i19 = icmp eq i32 %i.b, 0
  br i1 %.not.i19, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br label %._crit_edge25

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i20, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i20 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i20, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4110
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPNontemporalClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4114, !noalias !4115 ; 2 uses
  %i.i = zext i32 %.pre to i64                    ; 2 uses
  %.idx27 = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx27 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.j, ptr %2, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.412.0..sroa_idx, align 8
  %i.l = icmp eq i32 %.pre, 0
  br i1 %i.l, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.m = phi i64 [ %i.ab, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ 0, %._crit_edge ]
  %i.n = phi ptr [ %i.z, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.j, %._crit_edge ]
  %i.o = and i64 %i.m, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph24
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph24, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.n, %.lr.ph24 ]
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2305
  %i.t = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.s, ptr noundef null) ; 3 uses
  br i1 %i.t, label %bb.d, label %._crit_edge25

bb.d:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.u = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !2307 ; 2 uses
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !1014
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %2, align 8, !tbaa !1014
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.f:                                             ; preds = %bb.d
  %.not.i10 = icmp ult i64 %i.u, 4
  br i1 %.not.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true) #28
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !1014   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  %i.ab = load i64, ptr %.sroa.412.0..sroa_idx, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %.not3.i.not = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %.not3.i.not, label %._crit_edge25, label %.lr.ph24

._crit_edge25:                                    ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %._crit_edge.thread, %._crit_edge
  %.not3.i.not.lcssa = phi i1 [ true, %._crit_edge ], [ true, %._crit_edge.thread ], [ %i.t, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.t, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPNontemporalClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPNontemporalClauseEEEbPT_.exit: ; preds = %.lr.ph, %._crit_edge25
  %.3 = phi i1 [ %.not3.i.not.lcssa, %._crit_edge25 ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE24VisitOMPNovariantsClauseEPNS_19OMPNovariantsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4117
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPNumTasksClauseEPNS_17OMPNumTasksClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4120
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPNumTeamsClauseEPNS_17OMPNumTeamsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4123 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i10 = icmp eq i32 %i.b, 0
  br i1 %.not.i10, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i11, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPNumTeamsClauseEPNS_17OMPNumTeamsClauseE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE24VisitOMPNumThreadsClauseEPNS_19OMPNumThreadsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4125
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27VisitOMPXDynCGroupMemClauseEPNS_22OMPXDynCGroupMemClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4127
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPPermutationClauseEPNS_20OMPPermutationClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4129 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01116 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01116, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPPriorityClauseEPNS_17OMPPriorityClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4131
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE21VisitOMPPrivateClauseEPNS_16OMPPrivateClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4134 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i21 = icmp eq i32 %i.b, 0
  br i1 %.not.i21, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPPrivateClauseEEEbPT_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i22, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i22 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i22, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4132
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPPrivateClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4134 ; 2 uses
  %i.i = zext i32 %.pre to i64                    ; 2 uses
  %.idx30 = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx30 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.not23 = icmp eq i32 %.pre, 0
  br i1 %.not23, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPPrivateClauseEEEbPT_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge, %.lr.ph27
  %.01224 = phi ptr [ %i.n, %.lr.ph27 ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.l = load ptr, ptr %.01224, align 8, !tbaa !1648
  %i.m = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.l, ptr noundef null) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01224, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.n, %i.k
  %or.cond.not = select i1 %i.m, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph27, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPPrivateClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_16OMPPrivateClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph27, %bb.a, %._crit_edge
  %.3 = phi i1 [ %i.m, %.lr.ph27 ], [ true, %._crit_edge ], [ true, %bb.a ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE23VisitOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !1090
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1083
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE30TraverseNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br i1 %i.b, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27TraverseDeclarationNameInfoENS_19DeclarationNameInfoE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %i.c)
  br i1 %i.d, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 9 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i161 = icmp eq i32 %i.f, 0
  br i1 %.not.i161, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i162, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.011.i162 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.011.i162, align 8, !tbaa !1648
  %i.l = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k, ptr noundef null), !inline_history !4135
  br i1 %i.l, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2312
  %i.o = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.n, ptr noundef null), !inline_history !102
  br i1 %i.o, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2314
  %i.r = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.q, ptr noundef null), !inline_history !103
  br i1 %i.r, label %bb.e, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

bb.e:                                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %i.s = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx199 = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx199 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %.not163 = icmp eq i32 %i.s, 0
  br i1 %.not163, label %._crit_edge182, label %.lr.ph166

bb.f:                                             ; preds = %.lr.ph166
  %i.w = getelementptr inbounds nuw i8, ptr %.088164, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.v
  br i1 %.not, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.e, %bb.f
  %.088164 = phi ptr [ %i.w, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %.088164, align 8, !tbaa !1648
  %i.y = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.x, ptr noundef null)
  br i1 %i.y, label %bb.f, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge167:                                   ; preds = %bb.f
  %.pre = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.z = zext i32 %.pre to i64                    ; 3 uses
  %.idx200 = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx200
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %.not103168 = icmp eq i32 %.pre, 0
  br i1 %.not103168, label %._crit_edge182, label %.lr.ph171

bb.g:                                             ; preds = %.lr.ph171
  %i.ab = getelementptr inbounds nuw i8, ptr %.086169, i64 8 ; 2 uses
  %.not103 = icmp eq ptr %i.ab, %3
  br i1 %.not103, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %._crit_edge167, %bb.g
  %.086169 = phi ptr [ %i.ab, %bb.g ], [ %2, %._crit_edge167 ] ; 2 uses
  %i.ac = load ptr, ptr %.086169, align 8, !tbaa !1648
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ac, ptr noundef null)
  br i1 %i.ad, label %bb.g, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge172:                                   ; preds = %bb.g
  %.pre213 = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.ae = zext i32 %.pre213 to i64                ; 4 uses
  %.idx201 = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx201
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  %.not104173 = icmp eq i32 %.pre213, 0
  br i1 %.not104173, label %._crit_edge182, label %.lr.ph176

bb.h:                                             ; preds = %.lr.ph176
  %i.ah = getelementptr inbounds nuw i8, ptr %.085174, i64 8 ; 2 uses
  %.not104 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not104, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %._crit_edge172, %bb.h
  %.085174 = phi ptr [ %i.ah, %bb.h ], [ %5, %._crit_edge172 ] ; 2 uses
  %i.ai = load ptr, ptr %.085174, align 8, !tbaa !1648
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ai, ptr noundef null)
  br i1 %i.aj, label %bb.h, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge177:                                   ; preds = %bb.h
  %.pre214 = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.ak = zext i32 %.pre214 to i64                ; 5 uses
  %.idx202.a = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx202.a
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ak
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ak ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ak
  %.not105178 = icmp eq i32 %.pre214, 0
  br i1 %.not105178, label %._crit_edge182, label %.lr.ph181

bb.i:                                             ; preds = %.lr.ph181
  %i.am = getelementptr inbounds nuw i8, ptr %.084179, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.am, %9
  br i1 %.not105, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge177, %bb.i
  %.084179 = phi ptr [ %i.am, %bb.i ], [ %8, %._crit_edge177 ] ; 2 uses
  %i.an = load ptr, ptr %.084179, align 8, !tbaa !1648
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.an, ptr noundef null)
  br i1 %i.ao, label %bb.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge182:                                   ; preds = %bb.i, %bb.e, %._crit_edge167, %._crit_edge172, %._crit_edge177
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !4141
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

bb.j:                                             ; preds = %._crit_edge182
  %i.as = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 6 uses
  %.idx203.a = shl nuw nsw i64 %i.at, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx203.a
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.at
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.at
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.at
  %.not106183 = icmp eq i32 %i.as, 0
  br i1 %.not106183, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit, label %.lr.ph186

bb.k:                                             ; preds = %.lr.ph186
  %i.aw = getelementptr inbounds nuw i8, ptr %.083184, i64 8 ; 2 uses
  %.not106 = icmp eq ptr %i.aw, %i.av
  br i1 %.not106, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.j, %bb.k
  %.083184 = phi ptr [ %i.aw, %bb.k ], [ %13, %bb.j ] ; 2 uses
  %i.ax = load ptr, ptr %.083184, align 8, !tbaa !1648
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ax, ptr noundef null)
  br i1 %i.ay, label %bb.k, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge187:                                   ; preds = %bb.k
  %.pre215 = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.az = zext i32 %.pre215 to i64                ; 7 uses
  %.idx204.a = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx204.a
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %i.az
  %16 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.az
  %17 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.az
  %18 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.az ; 2 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %i.az
  %.not107188 = icmp eq i32 %.pre215, 0
  br i1 %.not107188, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit, label %.lr.ph191

bb.l:                                             ; preds = %.lr.ph191
  %i.bb = getelementptr inbounds nuw i8, ptr %.082189, i64 8 ; 2 uses
  %.not107 = icmp eq ptr %i.bb, %19
  br i1 %.not107, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %._crit_edge187, %bb.l
  %.082189 = phi ptr [ %i.bb, %bb.l ], [ %18, %._crit_edge187 ] ; 2 uses
  %i.bc = load ptr, ptr %.082189, align 8, !tbaa !1648
  %i.bd = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.bc, ptr noundef null)
  br i1 %i.bd, label %bb.l, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

._crit_edge192:                                   ; preds = %bb.l
  %.pre216 = load i32, ptr %i.e, align 8, !tbaa !4137 ; 2 uses
  %i.be = zext i32 %.pre216 to i64                ; 8 uses
  %.idx205.a = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx205.a
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %21 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %i.be
  %22 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.be
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %i.be
  %24 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %i.be
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %i.be
  %.not108193 = icmp eq i32 %.pre216, 0
  br i1 %.not108193, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit, label %.lr.ph196

.lr.ph196:                                        ; preds = %._crit_edge192, %.lr.ph196
  %.0194 = phi ptr [ %i.bj, %.lr.ph196 ], [ %25, %._crit_edge192 ] ; 2 uses
  %i.bh = load ptr, ptr %.0194, align 8, !tbaa !1648
  %i.bi = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.bh, ptr noundef null) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0194, i64 8 ; 2 uses
  %.not108 = icmp ne ptr %i.bj, %i.bg
  %or.cond.not = select i1 %i.bi, i1 %.not108, i1 false
  br i1 %or.cond.not, label %.lr.ph196, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPReductionClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph166, %.lr.ph171, %.lr.ph176, %.lr.ph181, %.lr.ph186, %.lr.ph191, %.lr.ph196, %bb.j, %._crit_edge187, %._crit_edge192, %._crit_edge, %._crit_edge182, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, %bb.b, %bb.a
  %.21 = phi i1 [ false, %._crit_edge ], [ false, %.lr.ph171 ], [ true, %._crit_edge192 ], [ false, %.lr.ph191 ], [ true, %._crit_edge187 ], [ false, %.lr.ph186 ], [ false, %.lr.ph181 ], [ true, %._crit_edge182 ], [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph176 ], [ false, %.lr.ph166 ], [ %i.bi, %.lr.ph196 ], [ true, %bb.j ], [ false, %.lr.ph ]
  ret i1 %.21
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE22VisitOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2312
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.b, ptr noundef null), !inline_history !101
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4144
  %i.f = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE19VisitOMPSizesClauseEPNS_14OMPSizesClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4146 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01116 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01116, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27VisitOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !1090
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1083
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE30TraverseNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br i1 %i.b, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE27TraverseDeclarationNameInfoENS_19DeclarationNameInfoE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %i.c)
  br i1 %i.d, label %bb.c, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4149 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i92 = icmp eq i32 %i.f, 0
  br i1 %.not.i92, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i93, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.011.i93 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.011.i93, align 8, !tbaa !1648
  %i.l = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k, ptr noundef null), !inline_history !4147
  br i1 %i.l, label %bb.d, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2312
  %i.o = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.n, ptr noundef null), !inline_history !102
  br i1 %i.o, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2314
  %i.r = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.q, ptr noundef null), !inline_history !103
  br i1 %i.r, label %bb.e, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

bb.e:                                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit
  %i.s = load i32, ptr %i.e, align 8, !tbaa !4149 ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx116 = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx116 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %.not94 = icmp eq i32 %i.s, 0
  br i1 %.not94, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit, label %.lr.ph97

bb.f:                                             ; preds = %.lr.ph97
  %i.w = getelementptr inbounds nuw i8, ptr %.05195, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.v
  br i1 %.not, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.e, %bb.f
  %.05195 = phi ptr [ %i.w, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %.05195, align 8, !tbaa !1648
  %i.y = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.x, ptr noundef null)
  br i1 %i.y, label %bb.f, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

._crit_edge98:                                    ; preds = %bb.f
  %.pre = load i32, ptr %i.e, align 8, !tbaa !4149 ; 2 uses
  %i.z = zext i32 %.pre to i64                    ; 3 uses
  %.idx117.a = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx117.a
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %.not6099 = icmp eq i32 %.pre, 0
  br i1 %.not6099, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit, label %.lr.ph102

bb.g:                                             ; preds = %.lr.ph102
  %i.ab = getelementptr inbounds nuw i8, ptr %.049100, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.ab, %3
  br i1 %.not60, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge98, %bb.g
  %.049100 = phi ptr [ %i.ab, %bb.g ], [ %2, %._crit_edge98 ] ; 2 uses
  %i.ac = load ptr, ptr %.049100, align 8, !tbaa !1648
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ac, ptr noundef null)
  br i1 %i.ad, label %bb.g, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

._crit_edge103:                                   ; preds = %bb.g
  %.pre124 = load i32, ptr %i.e, align 8, !tbaa !4149 ; 2 uses
  %i.ae = zext i32 %.pre124 to i64                ; 4 uses
  %.idx118.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx118.a
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  %.not61104 = icmp eq i32 %.pre124, 0
  br i1 %.not61104, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit, label %.lr.ph107

bb.h:                                             ; preds = %.lr.ph107
  %i.ah = getelementptr inbounds nuw i8, ptr %.048105, i64 8 ; 2 uses
  %.not61 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not61, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %._crit_edge103, %bb.h
  %.048105 = phi ptr [ %i.ah, %bb.h ], [ %5, %._crit_edge103 ] ; 2 uses
  %i.ai = load ptr, ptr %.048105, align 8, !tbaa !1648
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ai, ptr noundef null)
  br i1 %i.aj, label %bb.h, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

._crit_edge108:                                   ; preds = %bb.h
  %.pre125 = load i32, ptr %i.e, align 8, !tbaa !4149 ; 2 uses
  %i.ak = zext i32 %.pre125 to i64                ; 5 uses
  %.idx119.a = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx119.a
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ak
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ak ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ak
  %.not62109 = icmp eq i32 %.pre125, 0
  br i1 %.not62109, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge108, %.lr.ph113
  %.0110 = phi ptr [ %i.ao, %.lr.ph113 ], [ %8, %._crit_edge108 ] ; 2 uses
  %i.am = load ptr, ptr %.0110, align 8, !tbaa !1648
  %i.an = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.am, ptr noundef null) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0110, i64 8 ; 2 uses
  %.not62 = icmp ne ptr %i.ao, %9
  %or.cond.not = select i1 %i.an, i1 %.not62, i1 false
  br i1 %or.cond.not, label %.lr.ph113, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_22OMPTaskReductionClauseEEEbPT_.exit: ; preds = %.lr.ph, %.lr.ph97, %.lr.ph102, %.lr.ph107, %.lr.ph113, %bb.e, %._crit_edge98, %._crit_edge103, %._crit_edge108, %._crit_edge, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit, %bb.b, %bb.a
  %.12 = phi i1 [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPClauseWithPostUpdateEPNS_23OMPClauseWithPostUpdateE.exit ], [ false, %._crit_edge ], [ %i.an, %.lr.ph113 ], [ false, %.lr.ph102 ], [ false, %.lr.ph97 ], [ false, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge98 ], [ true, %._crit_edge108 ], [ false, %.lr.ph107 ], [ true, %bb.e ], [ true, %._crit_edge103 ], [ false, %.lr.ph ]
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE25VisitOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4152 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i6, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011.i6 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011.i6, align 8, !tbaa !1648
  %i.h = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null), !inline_history !4150
  br i1 %i.h, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPThreadLimitClauseEEEbPT_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2312
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.j, ptr noundef null), !inline_history !101
  br label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPThreadLimitClauseEEEbPT_.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_20OMPThreadLimitClauseEEEbPT_.exit: ; preds = %.lr.ph, %._crit_edge
  %.0 = phi i1 [ %i.k, %._crit_edge ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE28VisitOMPUsesAllocatorsClauseEPNS_23OMPUsesAllocatorsClauseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPUsesAllocatorsClause::Data", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4155 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %.0913 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK5clang23OMPUsesAllocatorsClause16getAllocatorDataEj(ptr dead_on_unwind nonnull writable sret(%"struct.clang::OMPUsesAllocatorsClause::Data") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.0913) #28
  %i.e = load ptr, ptr %2, align 8, !tbaa !4157
  %i.f = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef null)
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !4158
  %i.h = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.g, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.i = add nuw i32 %.0913, 1                    ; 2 uses
  %exitcond.not = icmp ne i32 %i.i, %i.b
  %or.cond.not = select i1 %i.h, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !4153

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %.critedge
  %i.j = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ %i.h, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_15OMPDependClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4160 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01115 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01115, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01115, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_17OMPDoacrossClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4162 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01115 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01115, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01115, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_18OMPExclusiveClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4164 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01115 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01115, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01115, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_14OMPFlushClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4166 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01115 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01115, align 8, !tbaa !1648
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.f, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01115, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.h, %i.e
  %or.cond.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_124DLLImportFunctionVisitorEE18VisitOMPClauseListINS_13OMPFromClauseEEEbPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4168 ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01115 = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.01115, align 8, !tbaa !1648
end_hunk_1
