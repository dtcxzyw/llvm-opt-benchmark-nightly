Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5clang10SemaOpenMP26checkTransformableLoopNestEN4llvm3omp9DirectiveEPNS_4StmtEiRNS1_15SmallVectorImplINS_21OMPLoopBasedDirective11HelperExprsEEERS5_RNS6_INS1_11SmallVectorIS5_Lj6EEEEE:bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.h, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !155
  %i.l = load i32, ptr %i.a, align 8, !tbaa !154
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !154
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPN5clang4StmtELj6EEEE12emplace_backIJEEERS5_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorIPN5clang4StmtELj6EEEE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %0, ptr %7, align 8, !tbaa !2244
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.o, align 8, !tbaa !4815
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.p, align 8, !tbaa !4816
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.q, align 8, !tbaa !4817
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %1, ptr %i.r, align 8, !tbaa !2245
  %i.s = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr %6, ptr %9, align 8, !tbaa !4817
  store ptr @"_ZN4llvm12function_refIFvPN5clang30OMPLoopTransformationDirectiveEEE11callback_fnIZNS1_10SemaOpenMP26checkTransformableLoopNestENS_3omp9DirectiveEPNS1_4StmtEiRNS_15SmallVectorImplINS1_21OMPLoopBasedDirective11HelperExprsEEERSB_RNSC_INS_11SmallVectorISB_Lj6EEEEEE3$_1EEvlS3_", ptr %8, align 8, !tbaa !1924
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = ptrtoint ptr %9 to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1925
  %i.v = call noundef zeroext i1 @_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE(ptr noundef %i.n, i1 noundef zeroext false, i32 noundef %3, ptr nonnull @"_ZN4llvm12function_refIFbjPN5clang4StmtEEE11callback_fnIZNS1_10SemaOpenMP26checkTransformableLoopNestENS_3omp9DirectiveES3_iRNS_15SmallVectorImplINS1_21OMPLoopBasedDirective11HelperExprsEEERS3_RNSA_INS_11SmallVectorIS3_Lj6EEEEEE3$_0EEbljS3_", i64 %i.s, ptr noundef nonnull byval(%"class.llvm::function_ref.1666") align 8 %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.w = load i32, ptr %i.a, align 8, !tbaa !154
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.a, align 8, !tbaa !154
  %i.y = load ptr, ptr %6, align 8, !tbaa !153
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !153 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPN5clang4StmtELj6EEELb0EE8pop_backEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPN5clang4StmtELj6EEEE12emplace_backIJEEERS5_DpOT_.exit
  call void @free(ptr noundef %i.ab) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPN5clang4StmtELj6EEELb0EE8pop_backEv.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPN5clang4StmtELj6EEELb0EE8pop_backEv.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPN5clang4StmtELj6EEEE12emplace_backIJEEERS5_DpOT_.exit, %bb.d
  ret i1 %i.v
}

declare noundef zeroext i1 @_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE(ptr noundef, i1 noundef zeroext, i32 noundef, ptr, i64, ptr noundef byval(%"class.llvm::function_ref.1666") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(1608) %2, ptr noundef nonnull align 8 dereferenceable(23904) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.clang::CanonicalDeclPtr.3101", align 8 ; 4 uses
  %6 = alloca %"class.clang::CanonicalDeclPtr.3101", align 8 ; 4 uses
  %7 = alloca %"class.clang::CanonicalDeclPtr.3101", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %8 = alloca %class.NestedLoopCounterVisitor, align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.llvm::SmallDenseMap.1391", align 8 ; 9 uses
  %12 = alloca %"class.llvm::iterator_range.1348", align 8 ; 6 uses
  %13 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i32 1, ptr %11, align 8
  store i32 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1348") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(48) %12, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.055.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.i = load ptr, ptr %13, align 8, !tbaa !196   ; 2 uses
  %i.j = icmp eq ptr %i.i, %.sroa.055.0.copyload
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, %.sroa.556.0.copyload
  %.not3.i.not106 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %.not3.i.not106, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1544
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.t = phi i64 [ %i.k, %.lr.ph ], [ %i.kz, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  %i.u = phi ptr [ %i.i, %.lr.ph ], [ %i.kx, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  %i.v = and i64 %i.t, 3
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #36
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1724 ; 8 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.aa = load i16, ptr %i.z, align 8
  %.fr88 = freeze i16 %i.aa                       ; 7 uses
  %i.ab = and i16 %.fr88, 511                     ; 7 uses
  switch i16 %i.ab, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit [
    i16 261, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
    i16 252, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
  ]

_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit: ; preds = %bb.d
  %i.ac = and i16 %.fr88, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ac, 226
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit
  switch i16 %i.ab, label %bb.e [
    i16 238, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
    i16 228, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
  ]

bb.e:                                             ; preds = %switch.early.test
  %i.ad = call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i1 noundef zeroext false) #36 ; 4 uses
  %.not15 = icmp eq ptr %i.ad, null
  br i1 %.not15, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i16, ptr %i.ad, align 8
  %.pre = freeze i16 %i.ae                        ; 3 uses
  %i.af = and i16 %.pre, 511
  %i.ag = icmp eq i16 %i.af, 258
  br i1 %i.ag, label %bb.g, label %._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge

._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge: ; preds = %bb.f
  %.pre112 = and i16 %.pre, 511
  br label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef zeroext i1 @_ZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(1608) %2, ptr noundef nonnull align 8 dereferenceable(23904) %3, i32 noundef %4)
  br i1 %i.ah, label %select.unfold, label %.loopexit

_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread: ; preds = %._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge, %switch.early.test, %switch.early.test, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit, %bb.d, %bb.d
  %.pre-phi = phi i16 [ %.pre112, %._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge ], [ %i.ab, %switch.early.test ], [ %i.ab, %switch.early.test ], [ %i.ab, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ] ; 3 uses
  %.fr89.pre-phi = phi i16 [ %.pre, %._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge ], [ %.fr88, %switch.early.test ], [ %.fr88, %switch.early.test ], [ %.fr88, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit ], [ %.fr88, %bb.d ], [ %.fr88, %bb.d ] ; 2 uses
  %.0 = phi ptr [ %i.ad, %._ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread_crit_edge ], [ %i.z, %switch.early.test ], [ %i.z, %switch.early.test ], [ %i.z, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit ], [ %i.z, %bb.d ], [ %i.z, %bb.d ] ; 8 uses
  switch i16 %.pre-phi, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19 [
    i16 261, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
    i16 252, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
  ]

_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19: ; preds = %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
  %i.ai = and i16 %.fr89.pre-phi, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16 = icmp eq i16 %i.ai, 226
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread, label %switch.early.test86

switch.early.test86:                              ; preds = %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19
  switch i16 %.pre-phi, label %bb.as [
    i16 238, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
    i16 228, label %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
  ]

_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread: ; preds = %switch.early.test86, %switch.early.test86, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit.thread
  %i.aj = and i16 %.fr89.pre-phi, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aj, 226
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %switch.early.test87

switch.early.test87:                              ; preds = %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
  switch i16 %.pre-phi, label %bb.ae [
    i16 238, label %bb.h
    i16 228, label %bb.h
  ]

bb.h:                                             ; preds = %switch.early.test87, %switch.early.test87, %_ZN5clang10SemaOpenMP20LoopSequenceAnalysis24isLoopSequenceDerivationEPNS_4StmtE.exit19.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0, ptr %i.b, align 8, !tbaa !1724
  %i.ak = load i16, ptr %.0, align 8              ; 2 uses
  %i.al = and i16 %i.ak, 511                      ; 2 uses
  %i.am = and i16 %i.ak, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.am, 226
  %i.an = icmp ne i16 %i.al, 228
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = and i1 %or.cond5.i.i.i.i.i.i.i.i.i.i, %i.an ; 2 uses
  %spec.select.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, ptr null, ptr %.0
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 40
  %.not90 = icmp eq i16 %i.al, 238                ; 2 uses
  %spec.select.i.i12.i.i = select i1 %.not90, ptr %.0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i.i12.i.i, i64 32
  %.1.i.i = select i1 %.not90, ptr %i.ap, ptr undef
  %.2.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, ptr %.1.i.i, ptr %i.ao ; 4 uses
  %i.aq = call noundef ptr @_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv(ptr noundef nonnull align 8 dereferenceable(16) %.2.i.i) #36, !inline_history !4818 ; 7 uses
  %i.ar = load i32, ptr %.2.i.i, align 8, !tbaa !4820 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp eq i32 %i.ar, 0
  br i1 %.not21.i, label %bb.j, label %"_ZZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveEENK3$_1clES2_.exit.thread83"

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !1724
  %i.at = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #37, !inline_history !4818
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.at, i32 noundef 4668) #36, !inline_history !4818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i32 0, ptr %i.c, align 4, !tbaa !268
  %i.au = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.c), !inline_history !4818 ; 6 uses
  %i.av = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef %4, i32 noundef 0) #36, !inline_history !4818 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !1590, !range !258, !noundef !116
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.bb, ptr %i.aw, i64 %i.ax)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit46

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !1591, !range !258, !noundef !116
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit46

bb.m:                                             ; preds = %bb.l
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.au) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1597 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i37, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !195
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(168) %i.bi) #36, !inline_history !4819
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i38

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i38: ; preds = %bb.n, %bb.m
  %i.bn = phi ptr [ %i.bm, %bb.n ], [ null, %bb.m ]
  store ptr %i.bn, ptr %5, align 8, !tbaa !1599
  %i.bo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i39 = extractvalue { ptr, i8 } %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i39, i64 8
  %i.bq = load i32, ptr %i.bc, align 8, !tbaa !268
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !1602
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.bu, ptr %i.aw, i64 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit46

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit46: ; preds = %bb.k, %bb.l, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #36, !inline_history !4818
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %"_ZZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveEENK3$_1clES2_.exit.thread"

bb.o:                                             ; preds = %bb.h
  switch i32 %i.ar, label %"_ZZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveEENK3$_1clES2_.exit" [
    i32 0, label %bb.p
    i32 1, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !1724
  %i.bw = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #37, !inline_history !4818
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.bw, i32 noundef 4668) #36, !inline_history !4818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i32 0, ptr %i.d, align 4, !tbaa !268
  %i.bx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !4818 ; 6 uses
  %i.by = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef %4, i32 noundef 0) #36, !inline_history !4818 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1590, !range !258, !noundef !116
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ce, ptr %i.bz, i64 %i.ca)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit36

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !1591, !range !258, !noundef !116
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit36

bb.s:                                             ; preds = %bb.r
  %i.cj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.bx) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1597 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i27, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i28, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !195
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(168) %i.cl) #36, !inline_history !4819
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i28

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i28: ; preds = %bb.t, %bb.s
  %i.cq = phi ptr [ %i.cp, %bb.t ], [ null, %bb.s ]
  store ptr %i.cq, ptr %6, align 8, !tbaa !1599
  %i.cr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.fca.0.extract.i.i29 = extractvalue { ptr, i8 } %i.cr, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i29, i64 8
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !268
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !1602
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.cx, ptr %i.bz, i64 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit36

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit36: ; preds = %bb.q, %bb.r, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #36, !inline_history !4818
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %"_ZZN5clang10SemaOpenMP19analyzeLoopSequenceEPNS_4StmtERNS0_20LoopSequenceAnalysisERNS_10ASTContextEN4llvm3omp9DirectiveEENK3$_1clES2_.exit.thread"

bb.u:                                             ; preds = %bb.o
  %i.cy = load i32, ptr %i.n, align 8, !tbaa !154 ; 2 uses
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !155
  %.not.i26 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i26, label %bb.w, label %bb.v, !prof !271

bb.v:                                             ; preds = %bb.u
  %i.da = call noundef nonnull align 8 dereferenceable(760) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP12LoopAnalysisELb0EE18growAndEmplaceBackIJRPNS1_4StmtEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP12LoopAnalysisEE12emplace_backIJRPNS1_4StmtEEEERS3_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.db = zext i32 %i.cy to i64
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.dd = getelementptr inbounds nuw [760 x i8], ptr %i.dc, i64 %i.db ; 42 uses
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !1724
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !1997
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 160
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !153
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 168
  store i32 0, ptr %i.dh, align 8, !tbaa !154
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 172
  store i32 4, ptr %i.di, align 4, !tbaa !155
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 208
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !153
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 216
  store i32 0, ptr %i.dl, align 8, !tbaa !154
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 220
  store i32 4, ptr %i.dm, align 4, !tbaa !155
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 256
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 272
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !153
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 264
  store i32 0, ptr %i.dp, align 8, !tbaa !154
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 268
  store i32 4, ptr %i.dq, align 4, !tbaa !155
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 304
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 320
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !153
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 312
  store i32 0, ptr %i.dt, align 8, !tbaa !154
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 316
  store i32 4, ptr %i.du, align 4, !tbaa !155
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 352
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 368
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !153
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 360
  store i32 0, ptr %i.dx, align 8, !tbaa !154
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 364
  store i32 4, ptr %i.dy, align 4, !tbaa !155
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 400
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 416
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !153
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 408
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268, !noalias !5990
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1665, !noalias !5990
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268, !noalias !5990
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.aq = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ap, ptr noundef nonnull %.0.i) #36
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.0 = phi i64 [ %i.aq, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2785 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2497, !noalias !5999 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2498, !noalias !5999 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1817, !noalias !5999 ; 4 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268, !noalias !6000
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1665, !noalias !6000
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268, !noalias !6000
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not18 = icmp eq i32 %i.aq, 0
  br i1 %.not18, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1046
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4, !tbaa !268
  %i.aw = and i64 %.sroa.0.0, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2475  ; 2 uses
  %i.ay = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !1048
  %i.az = getelementptr i8, ptr %.val, i64 616
  %.val.val15 = load ptr, ptr %i.az, align 8, !tbaa !1039
  %i.ba = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.ax, ptr noundef %.val.val15) #36
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bb, %bb.f ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1290", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.1491", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1290", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2787
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1046
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #36
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i42 = icmp eq i16 %i.j, 118           ; 2 uses
  %spec.select.i.i.i.i.i43 = select i1 %.not.i.i.i42, ptr %1, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i43, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %spec.select.i.i.i44 = select i1 %.not.i.i.i42, ptr %7, ptr %i.k
  %i.l = load ptr, ptr %spec.select.i.i.i44, align 8, !tbaa !1046
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not59 = icmp eq i32 %i.o, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i45 = icmp eq i32 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i46 = select i1 %.not.i.i.i45, ptr %1, ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i46, i64 48
  %spec.select.i.i.i47 = select i1 %.not.i.i.i45, ptr %i.q, ptr %i.k
  %i.r = load ptr, ptr %spec.select.i.i.i47, align 8, !tbaa !1046
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !196 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i67 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i67, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #36, !inline_history !64
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !64 ; 2 uses
  %.not.i68 = icmp eq ptr %i.y, null
  br i1 %.not.i68, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !196 ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2788 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2497, !noalias !6009 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2498, !noalias !6009 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1817, !noalias !6009 ; 4 uses
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !268, !noalias !6010
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1665, !noalias !6010
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !271

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !268, !noalias !6010
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 5 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !153
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !154
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !155
  %.val = load ptr, ptr %0, align 8, !tbaa !2475  ; 5 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not60 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not60, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !153
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2656
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i48 = icmp eq i64 %i.cg, 0
  br i1 %.not.i48, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ch = phi i16 [ %i.bu, %bb.m ], [ %i.bu, %bb.n ], [ %.pre, %bb.o ], [ %i.bu, %bb.l ]
  %.sroa.4.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ]
  %i.ci = and i16 %i.ch, 511
  %.not.i.i = icmp eq i16 %i.ci, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %1, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i = select i1 %.not.i.i, ptr %8, ptr %i.cj
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !2787
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %.sroa.4.0, label %bb.p, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.p
  br i1 %i.cl, label %bb.u, label %.critedge

.critedge:                                        ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %i.cm = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #37 ; 2 uses
  %i.cn = load i32, ptr %1, align 8               ; 3 uses
  %i.co = and i32 %i.cn, 524288
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = load ptr, ptr %4, align 8, !tbaa !153
  %i.cr = load i32, ptr %i.bq, align 8, !tbaa !154
  %i.cs = zext i32 %i.cr to i64
  %i.ct = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cv = and <4 x i32> %i.cu, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cw = icmp ne <4 x i32> %i.cv, zeroinitializer ; 4 uses
  %i.cx = lshr i32 %i.cn, 24
  %i.cy = and i32 %i.cx, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.cz, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, 2305843009213693952
  %.not.i50 = icmp eq i64 %i.dc, 0
  br i1 %.not.i50, label %bb.q, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !2789
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i51 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dd, ptr %2, align 8, !tbaa !153
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.de, align 8, !tbaa !154
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.df, align 4, !tbaa !155
  %.val21.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.dg = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val21.i, ptr noundef %.0.i51, i64 %.sroa.0.0.copyload.i.i, ptr %i.cq, i64 %i.cs, i32 %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #36
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.dh = load ptr, ptr %2, align 8, !tbaa !153
  store ptr %i.dh, ptr %3, align 8, !tbaa !1873
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !154
  %i.dk = zext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !1874
  %i.dl = extractelement <4 x i1> %i.cw, i64 0
  %i.dm = extractelement <4 x i1> %i.cw, i64 1
  %i.dn = extractelement <4 x i1> %i.cw, i64 2
  %i.do = extractelement <4 x i1> %i.cw, i64 3
  %i.dp = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cm, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cp, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1491") align 8 %3, i1 noundef zeroext %i.do, i1 noundef zeroext %i.dn, i1 noundef zeroext %i.dm, i1 noundef zeroext %i.dl, i32 noundef %i.cy, i64 %.sroa.0.0.copyload.i49) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.020.0.i = phi i64 [ %i.dp, %bb.r ], [ 1, %bb.q ]
  %i.dq = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dd
  br i1 %i.dr, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.dq) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit
  %.1 = phi i64 [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.ds = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bp
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ds) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.4 = phi i64 [ %i.s, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformTypeENS_8QualTypeE.exit ], [ %.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.llvm::SmallVector.1290", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2791
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2788 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2497, !noalias !6019 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2498, !noalias !6019 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1817, !noalias !6019 ; 4 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268, !noalias !6020
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1665, !noalias !6020
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !271

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268, !noalias !6020
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ]
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.s, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2787 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #36
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !2475  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not49 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not49, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !153
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !154
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2656
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i41 = icmp eq i64 %i.bo, 0
  br i1 %.not.i41, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
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
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2787
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %i.bx = load ptr, ptr %2, align 8, !tbaa !153
  %i.by = load i32, ptr %i.au, align 8, !tbaa !154
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %.val39 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #36 ; 2 uses
  %.not51 = icmp eq i64 %i.cb, 1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !154
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !155
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #36
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !154
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !153
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !154
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !154
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !196
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cl = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cl, ptr %3, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ck, ptr %i.cm, align 8
  %i.cn = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.co = load ptr, ptr %2, align 8, !tbaa !153
  %i.cp = load i32, ptr %i.au, align 8, !tbaa !154
  %i.cq = zext i32 %i.cp to i64
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %i.cs = load i32, ptr %1, align 8
  %i.ct = and i32 %i.cs, 2097152
  %i.cu = icmp ne i32 %i.ct, 0
  %.val40 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.cv = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef nonnull %i.d, i32 %i.cn, ptr %i.co, i64 %i.cq, i32 %i.cr, i1 noundef zeroext %i.cu) #36
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.p
  %.sroa.035.3 = phi i64 [ %i.cv, %bb.p ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.cw = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.at
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.cw) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.s

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #26 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2792
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2795 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1553
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #37
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1553
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3232", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.538", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2798 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #36
  %i.e = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #36 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2800
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2800
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !155
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !1732
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !1733
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 16, ptr %i.af, align 8, !tbaa !1734
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !2522
  %i.ah = call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2803
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2804
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 16           ; 6 uses
  %i.ap = and i64 %i.ao, 536870912
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ar = lshr i64 %i.ao, 48
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = lshr i64 %i.ao, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i64 %i.at, 1
end_hunk_1
begin_hunk_2_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp ugt i32 %i.ar, 64
  %or.cond.i.i.i.i.i.i.i = select i1 %i.t, i1 %i.as, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !196 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #38
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !6401, !nonnull !116, !align !117
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !3000
  %i.ba = load ptr, ptr %0, align 8, !tbaa !6401, !nonnull !116, !align !117 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !6421
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !6422
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !1957, !range !258, !noundef !116
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !1957
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !196 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #38
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #4

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !153
  %i.g = load i32, ptr %i.a, align 8, !tbaa !154
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !154
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !154
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang8SemaSYCL23BuildSYCLKernelCallStmtEPNS_12FunctionDeclEPNS_12CompoundStmtEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5clang10SwitchStmt20getConditionVariableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema22ActOnStartOfSwitchStmtENS_14SourceLocationES1_PNS_4StmtENS0_15ConditionResultES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema16ActOnDefaultStmtENS_14SourceLocationES1_PNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema13ActOnCaseExprENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema13ActOnCaseStmtENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEES1_S5_S1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32, i64, i32) local_unnamed_addr #4

declare void @_ZN5clang4Sema17ActOnCaseStmtBodyEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema16ActOnSEHTryBlockEbNS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5clang14SEHFinallyStmt6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN5clang4Sema19ActOnSEHExceptBlockENS_14SourceLocationEPNS_4ExprEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1290", align 8 ; 10 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1547 ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1724
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1904 ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1550
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1553 ; 3 uses
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
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #36 ; 2 uses
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
  %.tr118.be = load ptr, ptr %.tr118.be.in, align 8, !tbaa !1814 ; 2 uses
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
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #37 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #36
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #36
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
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
  %.val50 = load ptr, ptr %0, align 8, !tbaa !2475 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !153
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2656
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !2475
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !154
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !153
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !3094, !range !258, !noundef !116
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !3094
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !3095, !range !258, !noundef !116
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !154
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !197
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %.5, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i64 = select i1 %.not.i.i, ptr %8, ptr %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2787
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i64, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #37
  %i.ch = load ptr, ptr %3, align 8, !tbaa !153
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !154
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #37
  %.val54 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #36
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8, !tbaa !268 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !154
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ct = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #36
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.3179", align 8 ; 8 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1046 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !197
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1046 ; 3 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2565 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.d, ptr %6, align 8, !tbaa !153
  store i32 0, ptr %i.e, align 8, !tbaa !154
  store i32 2, ptr %i.f, align 4, !tbaa !155
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #36
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2566
  %.val89 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !268
  store i32 0, ptr %i.v, align 4, !tbaa !268
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !268
  %.val93 = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #36 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !197
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !271

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !153
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !154
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !268
  %i.am = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
  br i1 %i.ar, label %.critedge88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = and i64 %storemerge, -2
  %i.at = inttoptr i64 %i.as to ptr               ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !1046
end_hunk_2
begin_hunk_3_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_7VarDeclEvEERKS1_OT_:bb.a
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1619 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1619
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_7VarDeclEvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPNS_7VarDeclEvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL16getExprAsWrittenPN5clang4ExprE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8                ; 2 uses
  %i.b = and i16 %i.a, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.b, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1547 ; 2 uses
  %.pre.i = load i16, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i16 [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  %.013.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.f = and i16 %i.e, 511
  %.not.i = icmp eq i16 %i.f, 50
  br i1 %.not.i, label %bb.d, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1550
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi ptr [ %.013.i, %bb.c ], [ %i.j, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %i.o = load i16, ptr %.1.i, align 8             ; 2 uses
  %i.p = and i16 %i.o, 511
  %.not3033.i = icmp eq i16 %i.p, 120
  br i1 %.not3033.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i, %.lr.ph.i
  %.234.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.1.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.234.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1553 ; 3 uses
  %i.s = load i16, ptr %i.r, align 8              ; 2 uses
  %i.t = and i16 %i.s, 511
  %.not30.i = icmp eq i16 %i.t, 120
  br i1 %.not30.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i
  %i.u = phi i16 [ %i.o, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %i.s, %.lr.ph.i ]
  %.2.lcssa.i = phi ptr [ %.1.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.v = and i16 %i.u, 511
  %.not32.i = icmp eq i16 %i.v, 81
  br i1 %.not32.i, label %bb.g, label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.w = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.lcssa.i) #36
  br label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit

_ZL16getExprAsWrittenPKN5clang4ExprE.exit:        ; preds = %._crit_edge.i, %bb.g
  %.4.i = phi ptr [ %i.w, %bb.g ], [ %.2.lcssa.i, %._crit_edge.i ]
  %i.x = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.4.i) #37
  ret ptr %i.x
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_127OpenMPIterationSpaceChecker15checkAndSetInitEPN5clang4StmtEbENK3$_0clEPNS1_9ValueDeclENS1_14SourceLocationE"(i8 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef %0, i32 %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !270
  %i.b = trunc nuw i8 %.0.val.0.val to i1
  br i1 %i.b, label %bb.b, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2185, !nonnull !116, !align !117 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(33) %0) #36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2077, !range !258, !noundef !116
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !2074 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2076 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01218.i.i = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %.01218.i.i, align 8, !tbaa !1814
  %.not15.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread3, label %bb.d

_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit: ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef %i.h) #36
  %.not6 = icmp eq ptr %i.s, null
  br i1 %.not6, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread3

_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread3: ; preds = %.lr.ph.i.i, %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.t = load ptr, ptr %.8.val, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 %1, i32 noundef 4652) #36
  %i.v = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9ValueDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread

_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread: ; preds = %bb.d, %bb.c, %bb.a, %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit, %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread3
  %.0 = phi i1 [ true, %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit.thread3 ], [ false, %_ZNK4llvm15SmallPtrSetImplIPKN5clang4DeclEE5countES4_.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker14setLCDeclAndLBEPN5clang9ValueDeclEPNS1_4ExprES5_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.(anonymous namespace)::(anonymous namespace)::LoopCounterRefChecker", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i24, ptr %3, align 8
  %i.e = and i24 %i.d, 262144
  %.not30 = icmp eq i24 %i.e, 0
  br i1 %.not30, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprENS1_4ExprEEEDaPT0_.exit, label %bb.l

_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprENS1_4ExprEEEDaPT0_.exit: ; preds = %bb.b
  %i.f = tail call fastcc noundef ptr @_ZL16getCanonicalDeclPKN5clang9ValueDeclE(ptr noundef nonnull %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !2177
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.h, align 8, !tbaa !2178
  %i.i = load i16, ptr %3, align 8
  %i.j = and i16 %i.i, 511
  %i.k = add nsw i16 %i.j, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.k, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprENS1_4ExprEEEDaPT0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2788 ; 3 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.n = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isConvertingConstructorEb(ptr noundef nonnull align 8 dereferenceable(176) %i.m, i1 noundef zeroext false) #36
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2787
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %3, align 8
  %i.s = and i16 %i.r, 511
  %.not.i.i.i = icmp eq i16 %i.s, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %3, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %spec.select.i.i.i26 = select i1 %.not.i.i.i, ptr %6, ptr %i.t
  %i.u = load ptr, ptr %spec.select.i.i.i26, align 8, !tbaa !1046 ; 2 uses
  %.not25 = icmp eq ptr %i.u, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprENS1_4ExprEEEDaPT0_.exit
  %.1 = phi ptr [ %3, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprENS1_4ExprEEEDaPT0_.exit ], [ %i.v, %bb.h ], [ %3, %bb.g ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.1, ptr %i.w, align 8, !tbaa !2187
  br i1 %4, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.x = load ptr, ptr %0, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3324, !nonnull !116, !align !117
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !2177
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2175
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !2169, !range !258, !noundef !116
  store ptr %i.x, ptr %5, align 8, !tbaa !157
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.z, ptr %i.af, align 8, !tbaa !2170
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aa, ptr %i.ag, align 8, !tbaa !3326
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !3327
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !3328
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 1, ptr %i.aj, align 8, !tbaa !3329
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 41
  store i8 %i.ae, ptr %i.ak, align 1, !tbaa !3330
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !3331
  %i.am = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_112_GLOBAL__N_121LoopCounterRefCheckerEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1)
  br i1 %i.am, label %bb.k, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.ah, align 8, !tbaa !3327
  store ptr %.val.i, ptr %i.ab, align 8, !tbaa !2175
  %.val2.i = load i32, ptr %i.al, align 4, !tbaa !3331
  %i.an = zext i32 %.val2.i to i64
  %i.ao = or disjoint i64 %i.an, 4294967296
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit

_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit: ; preds = %bb.j, %bb.k
  %.sroa.2.0.i = phi i64 [ %i.ao, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.2.0.i, ptr %i.ap, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit ], [ false, %bb.i ]
  ret i1 %.0
}

declare void @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE6anchorEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117ForSubExprCheckerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #38
  ret void
}

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE11TraverseASTERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(23904)) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12TraverseAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseConstructorInitializerEPNS_18CXXCtorInitializerE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseCXXBaseSpecifierERKNS_16CXXBaseSpecifierE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12TraverseDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27TraverseDeclarationNameInfoENS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef byval(%"struct.clang::DeclarationNameInfo") align 8) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21TraverseLambdaCaptureEPNS_10LambdaExprEPKNS_13LambdaCaptureEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27TraverseNestedNameSpecifierENS_19NestedNameSpecifierE(ptr noundef nonnull align 8 dereferenceable(12), i64) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(12), i64, ptr) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseTemplateArgumentERKNS_16TemplateArgumentE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27TraverseTemplateArgumentLocERKNS_19TemplateArgumentLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20TraverseTemplateNameENS_12TemplateNameE(ptr noundef nonnull align 8 dereferenceable(12), i64) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(12), i64, i1 noundef zeroext) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15TraverseTypeLocENS_7TypeLocEb(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr, i1 noundef zeroext) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23TraverseObjCProtocolLocENS_15ObjCProtocolLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, i32) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22TraverseTypeConstraintEPKNS_14TypeConstraintE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26TraverseConceptRequirementEPNS_8concepts11RequirementE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseConceptTypeRequirementEPNS_8concepts15TypeRequirementE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseConceptExprRequirementEPNS_8concepts15ExprRequirementE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE32TraverseConceptNestedRequirementEPNS_8concepts17NestedRequirementE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseConceptReferenceEPNS_16ConceptReferenceE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21VisitConceptReferenceEPNS_16ConceptReferenceE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20TraverseOffsetOfNodeEPKNS_12OffsetOfNodeE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE17VisitOffsetOfNodeEPKNS_12OffsetOfNodeE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE9VisitAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE9VisitTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE12VisitTypeLocENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19dataTraverseStmtPreEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20dataTraverseStmtPostEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE16dataTraverseNodeEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseTemplateInstantiationsEPNS_17ClassTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseTemplateInstantiationsEPNS_15VarTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseTemplateInstantiationsEPNS_20FunctionTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27TraverseTranslationUnitDeclEPNS_19TranslationUnitDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseTopLevelStmtDeclEPNS_16TopLevelStmtDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseRequiresExprBodyDeclEPNS_20RequiresExprBodyDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseOutlinedFunctionDeclEPNS_20OutlinedFunctionDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23TraverseLinkageSpecDeclEPNS_15LinkageSpecDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26TraverseExternCContextDeclEPNS_18ExternCContextDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18TraverseExportDeclEPNS_10ExportDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20TraverseCapturedDeclEPNS_12CapturedDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseCXXExpansionStmtDeclEPNS_20CXXExpansionStmtDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE17TraverseBlockDeclEPNS_9BlockDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseStaticAssertDeclEPNS_16StaticAssertDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE32TraversePragmaDetectMismatchDeclEPNS_24PragmaDetectMismatchDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25TraversePragmaCommentDeclEPNS_17PragmaCommentDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26TraverseOpenACCRoutineDeclEPNS_18OpenACCRoutineDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26TraverseOpenACCDeclareDeclEPNS_18OpenACCDeclareDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseObjCPropertyImplDeclEPNS_20ObjCPropertyImplDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseOMPThreadPrivateDeclEPNS_20OMPThreadPrivateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23TraverseOMPRequiresDeclEPNS_15OMPRequiresDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27TraverseOMPGroupPrivateDeclEPNS_19OMPGroupPrivateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23TraverseOMPAllocateDeclEPNS_15OMPAllocateDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22TraverseObjCMethodDeclEPNS_14ObjCMethodDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseObjCProtocolDeclEPNS_16ObjCProtocolDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25TraverseObjCInterfaceDeclEPNS_17ObjCInterfaceDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30TraverseObjCImplementationDeclEPNS_22ObjCImplementationDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28TraverseObjCCategoryImplDeclEPNS_20ObjCCategoryImplDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24TraverseObjCCategoryDeclEPNS_16ObjCCategoryDeclE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4
end_hunk_3
begin_hunk_4_@"_ZZN12_GLOBAL__N_127OpenMPIterationSpaceChecker15checkAndSetCondEPN5clang4ExprEENK3$_0clENS1_18BinaryOperatorKindEPKS2_S7_NS1_11SourceRangeENS1_14SourceLocationE":bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  store i16 %.sroa.02.0.insert.insert, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 114
  store i8 %i.as, ptr %i.ax, align 2, !tbaa !2173
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  store i64 %3, ptr %i.ay, align 8, !tbaa !268
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  store i32 %4, ptr %i.az, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ba = load ptr, ptr %.0.val, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3324, !nonnull !116, !align !117
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 120 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2175
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !2169, !range !258, !noundef !116
  store ptr %i.ba, ptr %6, align 8, !tbaa !157
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !2170
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.al, ptr %i.bi, align 8, !tbaa !3326
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !3327
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !3328
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !3329
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 41
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !3330
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !3331
  %i.bo = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_112_GLOBAL__N_121LoopCounterRefCheckerEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %1)
  br i1 %i.bo, label %bb.k, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i33

bb.k:                                             ; preds = %bb.j
  %.val.i.i35 = load ptr, ptr %i.bj, align 8, !tbaa !3327
  store ptr %.val.i.i35, ptr %i.bd, align 8, !tbaa !2175
  %.val2.i.i36 = load i32, ptr %i.bn, align 4, !tbaa !3331
  %i.bp = zext i32 %.val2.i.i36 to i64
  %i.bq = or disjoint i64 %i.bp, 4294967296
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i33

_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i33: ; preds = %bb.k, %bb.j
  %.sroa.2.0.i.i34 = phi i64 [ %i.bq, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit.sink.split

bb.l:                                             ; preds = %bb.a
  %i.br = trunc nuw i8 %.8.val to i1
  %i.bs = icmp eq i32 %0, 15
  %or.cond = and i1 %i.bs, %i.br
  br i1 %or.cond, label %bb.m, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit

bb.m:                                             ; preds = %bb.l
  %i.bt = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113getInitLCDeclEPKN5clang4ExprE(ptr noundef %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2177 ; 2 uses
  %i.bw = icmp eq ptr %i.bt, %i.bv
  %i.bx = select i1 %i.bw, ptr %2, ptr %1         ; 4 uses
  %.not.i38 = icmp eq ptr %i.bx, null
  br i1 %.not.i38, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i24, ptr %i.bx, align 8
  %i.bz = and i24 %i.by, 262144
  %.not8.i39 = icmp eq i24 %i.bz, 0
  br i1 %.not8.i39, label %bb.o, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !2188
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.val, i64 114
  store i8 1, ptr %i.cb, align 2, !tbaa !2173
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  store i64 %3, ptr %i.cc, align 8, !tbaa !268
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  store i32 %4, ptr %i.cd, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ce = load ptr, ptr %.0.val, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !3324, !nonnull !116, !align !117
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.val, i64 120 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2175
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !2169, !range !258, !noundef !116
  store ptr %i.ce, ptr %5, align 8, !tbaa !157
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !2170
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bv, ptr %i.cm, align 8, !tbaa !3326
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !3327
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ci, ptr %i.co, align 8, !tbaa !3328
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.cp, align 8, !tbaa !3329
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 41
  store i8 %i.ck, ptr %i.cq, align 1, !tbaa !3330
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store i32 0, ptr %i.cr, align 4, !tbaa !3331
  %i.cs = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_112_GLOBAL__N_121LoopCounterRefCheckerEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.bx)
  br i1 %i.cs, label %bb.p, label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i42

bb.p:                                             ; preds = %bb.o
  %.val.i.i44 = load ptr, ptr %i.cn, align 8, !tbaa !3327
  store ptr %.val.i.i44, ptr %i.ch, align 8, !tbaa !2175
  %.val2.i.i45 = load i32, ptr %i.cr, align 4, !tbaa !3331
  %i.ct = zext i32 %.val2.i.i45 to i64
  %i.cu = or disjoint i64 %i.ct, 4294967296
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i42

_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i42: ; preds = %bb.p, %bb.o
  %.sroa.2.0.i.i43 = phi i64 [ %i.cu, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit.sink.split

_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit.sink.split: ; preds = %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i33, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i42
  %.sroa.2.0.i.i43.sink = phi i64 [ %.sroa.2.0.i.i43, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i42 ], [ %.sroa.2.0.i.i34, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i33 ], [ %.sroa.2.0.i.i, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker23doesDependOnLoopCounterEPKN5clang4StmtEb.exit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  store i64 %.sroa.2.0.i.i43.sink, ptr %i.cv, align 8
  br label %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit

_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit: ; preds = %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit.sink.split, %bb.n, %bb.m, %bb.i, %bb.h, %bb.d, %bb.c, %bb.g, %bb.l
  %.sroa.4.0 = phi i16 [ 0, %bb.g ], [ 257, %bb.c ], [ 257, %bb.h ], [ 0, %bb.l ], [ 257, %bb.m ], [ 257, %bb.d ], [ 257, %bb.n ], [ 257, %bb.i ], [ 256, %_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker5setUBEPN5clang4ExprESt8optionalIbEbNS1_11SourceRangeENS1_14SourceLocationE.exit.sink.split ]
  ret i16 %.sroa.4.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_113getInitLCDeclEPKN5clang4ExprE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8                ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1547 ; 2 uses
  %.pre.i = load i16, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i16 [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %.013.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not.i = icmp eq i16 %i.g, 50
  br i1 %.not.i, label %bb.e, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8 ; 3 uses
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1550
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.1.i = phi ptr [ %.013.i, %bb.d ], [ %i.k, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %i.p = load i16, ptr %.1.i, align 8             ; 2 uses
  %i.q = and i16 %i.p, 511
  %.not3033.i = icmp eq i16 %i.q, 120
  br i1 %.not3033.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i, %.lr.ph.i
  %.234.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.1.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.234.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1553 ; 3 uses
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %i.u = and i16 %i.t, 511
  %.not30.i = icmp eq i16 %i.u, 120
  br i1 %.not30.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i
  %i.v = phi i16 [ %i.p, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %i.t, %.lr.ph.i ]
  %.2.lcssa.i = phi ptr [ %.1.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not32.i = icmp eq i16 %i.w, 81
  br i1 %.not32.i, label %bb.h, label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.lcssa.i) #36
  br label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit

_ZL16getExprAsWrittenPKN5clang4ExprE.exit:        ; preds = %._crit_edge.i, %bb.h
  %.4.i = phi ptr [ %i.x, %bb.h ], [ %.2.lcssa.i, %._crit_edge.i ]
  %i.y = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.4.i) #37 ; 12 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZL16getExprAsWrittenPKN5clang4ExprE.exit
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 511
  %i.ab = add nsw i16 %i.aa, -117
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ab, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91

_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2788 ; 3 uses
  %.not36 = icmp eq ptr %i.ad, null
  br i1 %.not36, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ae = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isConvertingConstructorEb(ptr noundef nonnull align 8 dereferenceable(176) %i.ad, i1 noundef zeroext false) #36
  br i1 %i.af, label %bb.l, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !2787
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i16, ptr %i.y, align 8
  %i.aj = and i16 %i.ai, 511
  %.not.i.i.i.i = icmp eq i16 %i.aj, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.y, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %i.ak
  %i.al = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !1046 ; 2 uses
  %.not38 = icmp eq ptr %i.al, null
  br i1 %.not38, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread: ; preds = %bb.m
  %i.am = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #37 ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.am, null
  br i1 %.not.i.i46, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread, label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91

_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit, %bb.k, %bb.l, %bb.m, %bb.i, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread
  %.12556 = phi ptr [ %i.y, %bb.i ], [ %i.am, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread ], [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit ] ; 5 uses
  %i.an = load i16, ptr %.12556, align 8
  %i.ao = and i16 %i.an, 511
  switch i16 %i.ao, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread [
    i16 73, label %_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit
    i16 46, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit
  ]

_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91
  %i.ap = getelementptr inbounds nuw i8, ptr %.12556, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !386 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 127
  %i.au = add nsw i32 %i.at, -48
  %i.av = icmp ult i32 %i.au, -7
  %.not4096 = icmp eq ptr %i.aq, null
  %.not40 = or i1 %.not4096, %i.av
  br i1 %.not40, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread.sink.split

_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91
  %i.aw = load i32, ptr %.12556, align 8
  %i.ax = and i32 %i.aw, 524288
  %.not97 = icmp eq i32 %i.ax, 0
  br i1 %.not97, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.12556, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2186
  %i.ba = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #37
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 511
  %i.bd = icmp eq i16 %i.bc, 100
  br i1 %i.bd, label %.critedge, label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread

.critedge:                                        ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.12556, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1555
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread.sink.split

_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread.sink.split: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit, %.critedge
  %.sink = phi ptr [ %i.bf, %.critedge ], [ %i.aq, %_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit ]
  %i.bg = call fastcc noundef ptr @_ZL16getCanonicalDeclPKN5clang9ValueDeclE(ptr noundef %.sink)
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread.sink.split, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91, %_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit, %_ZL16getExprAsWrittenPKN5clang4ExprE.exit, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread, %bb.n, %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang11DeclRefExprEKNS1_4ExprEEEDaPT0_.exit ], [ null, %bb.n ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit.thread.thread91 ], [ null, %_ZL16getExprAsWrittenPKN5clang4ExprE.exit ], [ %i.bg, %_ZN4llvm16dyn_cast_or_nullIN5clang10MemberExprEKNS1_4ExprEEEDaPT0_.exit.thread.sink.split ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127OpenMPIterationSpaceChecker7setStepEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.IntConvertDiagnoser, align 8 ; 7 uses
  %4 = alloca %"class.std::optional.1886", align 8 ; 15 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i24, ptr %1, align 8                ; 3 uses
  %i.b = and i24 %i.a, 262144
  %.not64 = icmp eq i24 %i.b, 0
  %i.c = trunc i24 %i.a to i16                    ; 2 uses
  br i1 %.not64, label %bb.c, label %.thread60

bb.c:                                             ; preds = %bb.b
  %i.d = and i24 %i.a, 131072
  %.not65 = icmp eq i24 %i.d, 0
  br i1 %.not65, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #37
  %i.f = load ptr, ptr %0, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193
  %i.i = and i16 %i.c, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i16 %i.i, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1547 ; 2 uses
  %.pre.i.i = load i16, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i16 [ %.pre.i.i, %bb.e ], [ %i.c, %bb.d ]
  %.013.i.i = phi ptr [ %i.k, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not.i.i = icmp eq i16 %i.m, 50
  br i1 %.not.i.i, label %bb.g, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1550
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %.1.i.i = phi ptr [ %.013.i.i, %bb.f ], [ %i.q, %bb.h ], [ %i.u, %bb.i ] ; 3 uses
  %i.v = load i16, ptr %.1.i.i, align 8           ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not3033.i.i = icmp eq i16 %i.w, 120
  br i1 %.not3033.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i, %.lr.ph.i.i
  %.234.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.1.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.234.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1553 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not30.i.i = icmp eq i16 %i.aa, 120
  br i1 %.not30.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %.2.lcssa.i.i = phi ptr [ %.1.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ], [ %i.y, %.lr.ph.i.i ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not32.i.i = icmp eq i16 %i.ac, 81
  br i1 %.not32.i.i, label %bb.j, label %_ZL16getExprAsWrittenPN5clang4ExprE.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.lcssa.i.i) #36
  br label %_ZL16getExprAsWrittenPN5clang4ExprE.exit

_ZL16getExprAsWrittenPN5clang4ExprE.exit:         ; preds = %._crit_edge.i.i, %bb.j
  %.4.i.i = phi ptr [ %i.ad, %bb.j ], [ %.2.lcssa.i.i, %._crit_edge.i.i ]
  %i.ae = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.4.i.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %.thread60, label %_ZN5clang10SemaOpenMP38PerformOpenMPImplicitIntegerConversionENS_14SourceLocationEPNS_4ExprE.exit

_ZN5clang10SemaOpenMP38PerformOpenMPImplicitIntegerConversionENS_14SourceLocationEPNS_4ExprE.exit: ; preds = %_ZL16getExprAsWrittenPN5clang4ExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !2110
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.ag, align 1, !tbaa !2111
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 0, ptr %i.ah, align 2, !tbaa !2113
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVZN5clang10SemaOpenMP38PerformOpenMPImplicitIntegerConversionENS_14SourceLocationEPNS_4ExprEE19IntConvertDiagnoser, i64 16), ptr %3, align 8, !tbaa !195
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.aj = call i64 @_ZN5clang4Sema35PerformContextualImplicitConversionENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ai, i32 %i.e, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(10) %3) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %.thread60, label %bb.k

bb.k:                                             ; preds = %_ZN5clang10SemaOpenMP38PerformOpenMPImplicitIntegerConversionENS_14SourceLocationEPNS_4ExprE.exit
  %i.al = and i64 %i.aj, -2
  %i.am = inttoptr i64 %i.al to ptr               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.an = load ptr, ptr %0, align 8, !tbaa !2180, !nonnull !116, !align !117
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1048, !nonnull !116, !align !117
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1886") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(23904) %i.ap) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !tbaa !196
  %i.ar = and i64 %.sroa.0.0.copyload.i, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !252
  %i.au = call noundef zeroext i1 @_ZNK5clang4Type30hasSignedIntegerRepresentationEv(ptr noundef nonnull align 16 dereferenceable(24) %i.at) #36 ; 2 uses
  %i.av = xor i1 %i.au, true                      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !1957, !range !258, !noundef !116
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %_ZNK4llvm5APInt12getBoolValueEv.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !1972, !range !258, !noundef !116
  %i.bb = trunc nuw i8 %i.ba to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1564 ; 3 uses
  br i1 %i.bb, label %._crit_edge, label %_ZNK4llvm6APSInt10isNegativeEv.exit50

_ZNK4llvm6APSInt10isNegativeEv.exit50:            ; preds = %bb.l
  %i.bc = add i32 %.pre, -1                       ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 3 uses
  %i.ap = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !2489
  %i.aq = icmp eq i32 %.val.val, 0
  %i.ar = icmp eq ptr %.0.i, %i.b
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7094
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1039
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  %i.az = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ay, ptr noundef nonnull %.0.i) #36
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.g ], [ %i.az, %bb.h ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2785 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2497, !noalias !7103 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2498, !noalias !7103 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1817, !noalias !7103 ; 4 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268, !noalias !7104
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1665, !noalias !7104
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !271

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268, !noalias !7104
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1046
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 4 uses
  %i.av = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.av, align 4, !tbaa !2489
  %.not24 = icmp eq i32 %.val.val, 0
  br i1 %.not24, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !2785
  %i.ax = icmp eq ptr %.0.i, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !7105
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1039
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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1046
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
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 4, !tbaa !268
  %i.bn = and i64 %.sroa.0.0, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %.val, i64 232
  %.val15.val = load ptr, ptr %i.bp, align 8, !tbaa !1048
  %i.bq = getelementptr i8, ptr %.val, i64 616
  %.val15.val16 = load ptr, ptr %i.bq, align 8, !tbaa !1039
  %i.br = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val15.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.bo, ptr noundef %.val15.val16) #36
  %i.bs = ptrtoint ptr %i.br to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.022.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bl, %bb.k ], [ %i.bs, %bb.l ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.sroa.022.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1290", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.1491", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.1290", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2787
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1046
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #36
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i44 = icmp eq i16 %i.j, 118           ; 2 uses
  %spec.select.i.i.i.i.i45 = select i1 %.not.i.i.i44, ptr %1, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i45, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %spec.select.i.i.i46 = select i1 %.not.i.i.i44, ptr %7, ptr %i.k
  %i.l = load ptr, ptr %spec.select.i.i.i46, align 8, !tbaa !1046
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not70 = icmp eq i32 %i.o, 0
  br i1 %.not70, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i47 = icmp eq i32 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i48 = select i1 %.not.i.i.i47, ptr %1, ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i48, i64 48
  %spec.select.i.i.i49 = select i1 %.not.i.i.i47, ptr %i.q, ptr %i.k
  %i.r = load ptr, ptr %spec.select.i.i.i49, align 8, !tbaa !1046
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !196 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i79 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i79, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #36, !inline_history !85
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !85 ; 2 uses
  %.not.i80 = icmp eq ptr %i.y, null
  br i1 %.not.i80, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !196 ; 4 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2788 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2497, !noalias !7114 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2498, !noalias !7114 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1817, !noalias !7114 ; 4 uses
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !268, !noalias !7115
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1665, !noalias !7115
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !271

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !268, !noalias !7115
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !153
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !154
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !155
  %.val39 = load ptr, ptr %0, align 8, !tbaa !3339 ; 6 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not71 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not71, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !153
  %i.bx = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2656
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i50 = icmp eq i64 %i.cg, 0
  br i1 %.not.i50, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
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
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !2787
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cl, label %bb.p, label %.critedge38

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

bb.r:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51: ; preds = %.critedge38, %bb.r
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 3 uses
  %i.cm = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.cm, align 4, !tbaa !2489
  %.not72 = icmp eq i32 %.val.val, 0
  br i1 %.not72, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.t, align 8, !tbaa !196
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i52
  br i1 %i.cn, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !2788
  %i.cp = icmp ne ptr %.0.i, %i.co
  %i.cq = load i8, ptr %i.a, align 1, !range !258
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #37
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cs, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #36
  %i.ct = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.t, %bb.s, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %i.cu = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #37 ; 2 uses
  %i.cv = load i32, ptr %1, align 8               ; 3 uses
  %i.cw = and i32 %i.cv, 524288
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = load ptr, ptr %4, align 8, !tbaa !153
  %i.cz = load i32, ptr %i.bq, align 8, !tbaa !154
  %i.da = zext i32 %i.cz to i64
  %i.db = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = and <4 x i32> %i.dc, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.de = icmp ne <4 x i32> %i.dd, zeroinitializer ; 4 uses
  %i.df = lshr i32 %i.cv, 24
  %i.dg = and i32 %i.df, 7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.dh, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 2305843009213693952
  %.not.i55 = icmp eq i64 %i.dk, 0
  br i1 %.not.i55, label %bb.v, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !2789
  br label %bb.v

bb.v:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i56 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dl, ptr %2, align 8, !tbaa !153
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !154
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dn, align 4, !tbaa !155
  %i.do = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %.0.i56, i64 %.sroa.0.0.copyload.i.i, ptr %i.cy, i64 %i.da, i32 %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #36
  br i1 %i.do, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.dp = load ptr, ptr %2, align 8, !tbaa !153
  store ptr %i.dp, ptr %3, align 8, !tbaa !1873
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !154
  %i.ds = zext i32 %i.dr to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !1874
  %i.dt = extractelement <4 x i1> %i.de, i64 0
  %i.du = extractelement <4 x i1> %i.de, i64 1
  %i.dv = extractelement <4 x i1> %i.de, i64 2
  %i.dw = extractelement <4 x i1> %i.de, i64 3
  %i.dx = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cu, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cx, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1491") align 8 %3, i1 noundef zeroext %i.dw, i1 noundef zeroext %i.dv, i1 noundef zeroext %i.du, i1 noundef zeroext %i.dt, i32 noundef %i.dg, i64 %.sroa.0.0.copyload.i54) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.020.0.i = phi i64 [ %i.dx, %bb.w ], [ 1, %bb.v ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dl
  br i1 %i.dz, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.dy) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.p, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.u
  %.sroa.067.0 = phi i64 [ %i.ct, %bb.u ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.ea = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bp
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.ea) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.067.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.067.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.sroa.067.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1290", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2791
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2788 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2497, !noalias !7124 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2498, !noalias !7124 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1817, !noalias !7124 ; 4 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268, !noalias !7125
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1665, !noalias !7125
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !271

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268, !noalias !7125
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

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
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.w, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2787 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #36
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val39 = load ptr, ptr %0, align 8, !tbaa !3339 ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not51 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !153
  %i.bf = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !154
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2656
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i42 = icmp eq i64 %i.bo, 0
  br i1 %.not.i42, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
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
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2787
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond50.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond50.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %i.bx = load ptr, ptr %2, align 8, !tbaa !153
  %i.by = load i32, ptr %i.au, align 8, !tbaa !154
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %.val40 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #36 ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 1
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !154
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !155
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #36
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !154
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !153
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !154
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !154
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.ck = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ck, align 4, !tbaa !2489
  %.not52 = icmp eq i32 %.val.val, 0
  br i1 %.not52, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !2791
  %i.cm = icmp eq ptr %i.d, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !2788
  %i.co = icmp ne ptr %.0.i, %i.cn
  %i.cp = load i8, ptr %i.a, align 1, !range !258
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cr, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #36
  %i.cs = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ct = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cs, ptr noundef nonnull %1) #36
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !196
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cv, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cy = load ptr, ptr %2, align 8, !tbaa !153
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !154
  %i.da = zext i32 %i.cz to i64
  %i.db = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #37
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 2097152
  %i.de = icmp ne i32 %i.dd, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.df = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.cx, ptr %i.cy, i64 %i.da, i32 %i.db, i1 noundef zeroext %i.de) #36
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.t, %bb.s
  %.sroa.035.3 = phi i64 [ %i.df, %bb.t ], [ %i.ct, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dg = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dg) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #26 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2792
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2795 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1553
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #37
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1553
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3232", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.538", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2798 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #36
  %i.e = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #36 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2800
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2800
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !155
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #36 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE18TransformConditionENS_14SourceLocationEPNS_7VarDeclEPNS_4ExprENS_4Sema13ConditionKindE:bb.a
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !269

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %i.x = phi i64 [ %i.ad, %bb.e ], [ %i.q, %bb.d ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.e ], [ %i.p, %bb.d ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1665, !noalias !7472
  %i.aa = icmp eq ptr %3, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i, label %bb.e, !prof !271

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268, !noalias !7472
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !272

.loopexit.i.i.i.i:                                ; preds = %bb.e, %bb.d, %bb.c
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i ], [ %i.ak, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i ], [ %i.al, %.loopexit.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.am
  br i1 %.not.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %3, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i ] ; 2 uses
  %.not17 = icmp eq ptr %.0.i.i, null
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit
  store ptr null, ptr %0, align 8, !tbaa !3133, !alias.scope !7473
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ap, align 8, !tbaa !3068, !alias.scope !7473
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aq, align 8, !tbaa !2988, !alias.scope !7473
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.ar, align 2, !tbaa !2172, !alias.scope !7473
  br label %bb.n

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit
  %.val18 = load ptr, ptr %1, align 8, !tbaa !3339
  tail call void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::Sema::ConditionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18640) %.val18, ptr noundef nonnull %.0.i.i, i32 %2, i32 noundef %5) #36
  br label %bb.n

bb.i:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit
  %.not16 = icmp eq ptr %4, null
  br i1 %.not16, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %4) ; 2 uses
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !3133, !alias.scope !7474
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.au, align 8, !tbaa !3068, !alias.scope !7474
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !2988, !alias.scope !7474
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.aw, align 2, !tbaa !2172, !alias.scope !7474
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.val = load ptr, ptr %1, align 8, !tbaa !3339
  %i.ax = and i64 %i.as, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::Sema::ConditionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef null, i32 %2, ptr noundef %i.ay, i32 noundef %5, i1 noundef zeroext true) #36
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.az, align 2, !tbaa !2172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %0, i8 0, i64 17, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.g, %bb.h, %bb.m
  br i1 %i.b, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.a) #36
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1290", align 8 ; 10 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1547 ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1724
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1904 ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1550
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1553 ; 3 uses
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
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #36 ; 2 uses
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
  %.tr118.be = load ptr, ptr %.tr118.be.in, align 8, !tbaa !1814 ; 2 uses
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
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #37 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #36
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #36
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
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
  %.val50 = load ptr, ptr %0, align 8, !tbaa !3339 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !153
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2656
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1050, !nonnull !116, !align !117
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #36
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !3339
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !154
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !153
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !3094, !range !258, !noundef !116
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !3094
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !3095, !range !258, !noundef !116
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !154
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !197
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %.5, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i64 = select i1 %.not.i.i, ptr %8, ptr %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2787
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i64, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #37
  %i.ch = load ptr, ptr %3, align 8, !tbaa !153
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !154
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #37
  %.val54 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #36
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8, !tbaa !268 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !154
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ct = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #36
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.3179", align 8 ; 8 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1046 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !197
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1046 ; 3 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2565 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.d, ptr %6, align 8, !tbaa !153
  store i32 0, ptr %i.e, align 8, !tbaa !154
  store i32 2, ptr %i.f, align 4, !tbaa !155
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #36
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2566
  %.val89 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !268
  store i32 0, ptr %i.v, align 4, !tbaa !268
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !268
  %.val93 = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #36 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !197
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !271

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !153
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !154
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !268
  %i.am = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
  br i1 %i.ar, label %.critedge88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = and i64 %storemerge, -2
  %i.at = inttoptr i64 %i.as to ptr               ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !1046
end_hunk_6
