Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplate?download=true
inline.NumInlined: 36021
inline.NumDeleted: 15703
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4165 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4165
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPFlushClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !765
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !868
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4176 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1450 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !4176
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !868
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 0, ptr %9, align 8, !tbaa !898
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !877
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !765
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !868
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !4176
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1450
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4166 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !765 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !868
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !901

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !765
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !867 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !874
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !4166 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #28, !inline_history !4166
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !867
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !867
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !4176
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1450 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.ay, ptr %5, align 8, !tbaa !84
  store i32 0, ptr %i.az, align 8, !tbaa !765
  store i32 8, ptr %i.ba, align 4, !tbaa !868
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !843 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1925
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #28, !inline_history !4166 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !765
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #28, !inline_history !4166 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !901

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !84
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !765
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !1926, !noalias !4177 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !1927, !noalias !4177 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1518, !noalias !4177 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58, !noalias !4178
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1356, !noalias !4178
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !901

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !58, !noalias !4178
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !765 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !868
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !901

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !765
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !901

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !765
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !58
  %i.es = load ptr, ptr %7, align 8, !tbaa !84
  %i.et = load i32, ptr %i.f, align 8, !tbaa !765
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !84
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !765
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.fa) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !981
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !982
  call void @free(ptr noundef %i.ff) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %.0.val, i64 13800
  %.val.val = load i32, ptr %i.a, align 4, !tbaa !1941
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr i8, ptr %.0.val, i64 832
  %.val6.val = load ptr, ptr %i.c, align 8, !tbaa !2128
  %i.d = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFullClauseENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(552) %.val6.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i7) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4181
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4182
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !2128
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4184 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4184
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE:bb.a

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformOMPHintClauseEPNS_13OMPHintClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4186
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPHintClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4188
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4190
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4191
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !2128
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4201 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4201
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !867
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !867
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !867
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !765
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !868
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !4201 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !84
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !84
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1450 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ag, ptr %8, align 8, !tbaa !84
  store i32 0, ptr %i.ah, align 8, !tbaa !765
  store i32 8, ptr %i.ai, align 4, !tbaa !868
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !843 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #28 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !901

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !84
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !1926, !noalias !4202 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !1927, !noalias !4202 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !1518, !noalias !4202 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !58, !noalias !4203
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1356, !noalias !4203
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !901

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !58, !noalias !4203
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !765 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !868
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !901

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !84
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !901

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !84
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !981
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !982
  call void @free(ptr noundef %i.eo) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4205 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4205
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.2482", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1450
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !4222, !range !878, !noundef !865
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !4223, !range !878, !noundef !865
  store i8 %i.g, ptr %2, align 8, !tbaa !4230
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !4231
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !4232
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !765
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !868
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4233, !noalias !4234 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4235, !noalias !4234
  %i.v = add i32 %i.u, %i.q
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %.not7982 = icmp eq i32 %i.r, 0
  br i1 %.not7982, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit
  %.sroa.067.083 = phi i64 [ 0, %.lr.ph84 ], [ %i.ah, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit ] ; 4 uses
  %i.ab = icmp eq i64 %.sroa.067.083, 0
  br i1 %i.ab, label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add nuw nsw i64 %.sroa.067.083, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58, !noalias !4236
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1450, !noalias !4236 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !4233, !noalias !4236
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !58
  %i.ac = load ptr, ptr %2, align 8, !tbaa !84
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !2128
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4241 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4241
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02538 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4244
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !58
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !2128
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4246 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4246
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02844 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !4246
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %3 = shl nuw nsw i64 %i.z, 5
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1450
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !84
  %i.af = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4249
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !2128
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1581
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1581
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1581
  %.not = icmp eq ptr %i.m, %i.j
  br i1 %.not, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val20.pre = load ptr, ptr %0, align 8, !tbaa !1925
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1581
  %.not28 = icmp eq ptr %i.n, %i.l
  %.val20.pre30 = load ptr, ptr %0, align 8, !tbaa !1925 ; 3 uses
  br i1 %.not28, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val20.pre30, i64 13800
  %.val.val = load i32, ptr %i.o, align 4, !tbaa !1941
  %.not29 = icmp eq i32 %.val.val, 0
  br i1 %.not29, label %bb.f, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e, %bb.d
  %.val20 = phi ptr [ %.val20.pre, %..critedge_crit_edge ], [ %.val20.pre30, %bb.e ], [ %.val20.pre30, %bb.d ]
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.p, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.q, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.r, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.s, align 4, !tbaa !58
  %i.t = getelementptr i8, ptr %.val20, i64 832
  %.val20.val = load ptr, ptr %i.t, align 8, !tbaa !2128
  %i.u = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.u, %.critedge ], [ %1, %bb.e ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !765
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !868
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4260 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1450 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !4260
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !868
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre103, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i64 0, ptr %10, align 8, !tbaa !898
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !877
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !765
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !868
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !4260
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre104, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i89 = icmp eq i32 %i.ab, 0
  br i1 %.not.i89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56
  %.058.i90 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i90, align 8, !tbaa !1450
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4250 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !765 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !868
  %.not.i55 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i55, label %bb.h, label %bb.g, !prof !901

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !765
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ar, align 8, !tbaa !867 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i50, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !874
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i50, ptr %.sroa.2.0.copyload.i52, i64 0, ptr noundef null), !inline_history !4250 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.075.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.075.0, ptr %.sroa.6.0) #28, !inline_history !4250
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !867
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !4250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !867
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not86, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !4260
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.ax, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i96 = icmp samesign eq i64 %.idx100, %.idx.i.i
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %14 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %14, %.lr.ph99 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i97, align 8, !tbaa !1450 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.ay, ptr %6, align 8, !tbaa !84
  store i32 0, ptr %i.az, align 8, !tbaa !765
  store i32 8, ptr %i.ba, align 4, !tbaa !868
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !843 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx101 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bj, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1925
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #28, !inline_history !4250 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !765
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #28, !inline_history !4250 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i39 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i39, label %bb.p, label %bb.o, !prof !901

bb.o:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

bb.p:                                             ; preds = %._crit_edge95
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %11, align 8, !tbaa !84
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !765
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40
  call void @free(ptr noundef %i.cf) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.064.092 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.064.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.064.092, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !1926, !noalias !4261 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !1927, !noalias !4261 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1518, !noalias !4261 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph94
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58, !noalias !4262
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1356, !noalias !4262
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !901

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !58, !noalias !4262
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph94
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i38 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i38, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !765 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !868
  %.not.i.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i37, label %bb.v, label %bb.u, !prof !901

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %6, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !765
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.064.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i36 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !901

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %11, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !765
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %13
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.er = load i64, ptr %9, align 8, !tbaa !58
  store i64 %i.er, ptr %12, align 8, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et) #28
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !4266
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !4267, !range !878, !noundef !865
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.fb, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.fc, align 4, !tbaa !58
  %i.fd = load ptr, ptr %8, align 8, !tbaa !84
  %i.fe = load i32, ptr %i.f, align 8, !tbaa !765
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %11, align 8, !tbaa !84
  %i.fh = load i32, ptr %i.x, align 8, !tbaa !765
  %i.fi = zext i32 %i.fh to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.fj = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fj, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fg, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fi, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fd, ptr %3, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ff, ptr %.sroa.260.0..sroa_idx, align 8
  %i.fk = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull %i.ep, i64 7, ptr nonnull %i.eq, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !981
  %.not.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !982
  call void @free(ptr noundef %i.fo) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.z, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.fk, %bb.z ], [ %i.fk, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fp = load ptr, ptr %11, align 8, !tbaa !84   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fp) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !981
  %.not.i.i33 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !982
  call void @free(ptr noundef %i.fu) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.fv = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.e
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fv) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4269
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4271 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPNowaitClauseENS_14SourceLocationES1_S1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformOMPNocontextClauseEPNS_18OMPNocontextClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4273
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPNocontextClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPNontemporalClauseEPNS_20OMPNontemporalClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4308
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4311
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !58
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !58
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #28
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4321 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4321
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not97 = icmp eq i32 %i.h, 0
  br i1 %.not97, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.05098 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05098, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.05098, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !867
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !867
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !867
  %.not94 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not94, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !765
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !868
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !4321 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx107.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx107.a ; 2 uses
  %.idx107 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx107
  %.not55102 = icmp eq i32 %i.ad, 0
  br i1 %.not55102, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge106.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre110 = load ptr, ptr %7, align 8, !tbaa !84
  %.pre111 = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.am = zext i32 %.pre111 to i64
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge106.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre110, %._crit_edge106.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !84
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ay = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aa
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge106
  call void @free(ptr noundef %i.ba) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge106, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph105, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053103 = phi ptr [ %i.af, %.lr.ph105 ], [ %i.en, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.bc = load ptr, ptr %.053103, align 8, !tbaa !1450 ; 4 uses
  %.not56 = icmp eq ptr %i.bc, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ag, ptr %8, align 8, !tbaa !84
  store i32 0, ptr %i.ah, align 8, !tbaa !765
  store i32 8, ptr %i.ai, align 4, !tbaa !868
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %i.bf = icmp eq i16 %i.be, 24
  %.1.v.i.i.i.i = select i1 %i.bf, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !843 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx108 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx108
  %.not9599 = icmp eq i32 %i.bh, 0
  br i1 %.not9599, label %._crit_edge, label %.lr.ph101

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bn = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #28 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.br = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm, ptr noundef null, i64 %i.bo, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bu, i64 %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.bx = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.by = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i72 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !901

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %7, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.ce = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.ce) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph101:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0100 = phi ptr [ %i.ef, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0100, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0100, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !1926, !noalias !4322 ; 3 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !1927, !noalias !4322 ; 2 uses
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !1518, !noalias !4322 ; 4 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph101
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  %i.cn = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !58, !noalias !4323
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cz = phi i64 [ %i.df, %bb.o ], [ %i.cs, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.de, %bb.o ], [ %i.cr, %bb.n ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1356, !noalias !4323
  %i.dc = icmp eq ptr %i.db, %i.ch
  br i1 %i.dc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !901

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw i32 %.017.i.i.i.i.i, 1
  %i.de = and i32 %i.dd, %i.cm                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !58, !noalias !4323
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph101
  %i.dm = zext i32 %i.ck to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.dm
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ck to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dm, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.da, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.pre-phi.i
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.do
  br i1 %.not.i74, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dq, %bb.p ], [ %i.ch, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = ptrtoint ptr %.0.i to i64
  %i.dx = or i64 %i.dv, %i.dw                     ; 2 uses
  %i.dy = load i32, ptr %i.ah, align 8, !tbaa !765 ; 2 uses
  %i.dz = load i32, ptr %i.ai, align 4, !tbaa !868
  %.not.i.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !901

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dx)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store i64 %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ah, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.ef, %i.bj
  br i1 %.not95, label %._crit_edge, label %.lr.ph101

bb.s:                                             ; preds = %bb.i
  %i.eg = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.eh = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i75 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !901

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %7, align 8, !tbaa !84
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr null, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.053103, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.en, %9
  br i1 %.not55, label %._crit_edge106.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !981
  %.not.i.i77 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !982
  call void @free(ptr noundef %i.er) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.es = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4325
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4328
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4330
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4330
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !4331
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !2128
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4334
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !58
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !58
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #28
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4336 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4336
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPSharedClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !765
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !765
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.not34 = icmp ne ptr %i.l, %i.w
  %spec.select = select i1 %.not34, i1 true, i1 %.02355 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i36 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i36, label %bb.i, label %bb.h, !prof !901

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !765
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %.326.ph = phi i1 [ %spec.select, %bb.i ], [ %spec.select, %bb.h ], [ %.02355, %bb.d ], [ %.02355, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03154, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  br i1 %.326.ph, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val35.pre = load ptr, ptr %0, align 8, !tbaa !1925
  br label %bb.k

.critedge:                                        ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %._crit_edge
  %.val = load ptr, ptr %0, align 8, !tbaa !1925  ; 2 uses
  %i.af = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.af, align 4, !tbaa !1941
  %.not51 = icmp eq i32 %.val.val, 0
  br i1 %.not51, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %.val35 = phi ptr [ %.val35.pre, %._crit_edge._crit_edge ], [ %.val, %.critedge ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !84
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ai = zext i32 %i.ah to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.al = getelementptr i8, ptr %.val35, i64 832
  %.val35.val = load ptr, ptr %i.al, align 8, !tbaa !2128
  %i.am = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val35.val, ptr %i.ag, i64 %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i38, i32 %.sroa.0.0.copyload.i39) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %.critedge, %bb.k
  %.4 = phi ptr [ %i.am, %bb.k ], [ %1, %.critedge ], [ null, %bb.f ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.an) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4350 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4350
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !867
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !867
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !867
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !765
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !868
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !4350 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !84
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !84
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !765
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1450 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ag, ptr %8, align 8, !tbaa !84
  store i32 0, ptr %i.ah, align 8, !tbaa !765
  store i32 8, ptr %i.ai, align 4, !tbaa !868
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !843 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #28 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !901

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !84
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !1926, !noalias !4351 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !1927, !noalias !4351 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !1518, !noalias !4351 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !58, !noalias !4352
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1356, !noalias !4352
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !901

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !58, !noalias !4352
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !765 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !868
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !901

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !84
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !765
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !901

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !84
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !981
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !982
  call void @free(ptr noundef %i.eo) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3362", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4354 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4354
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !84
  %i.z = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !2128
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1233", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3184", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !765
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !868
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4365 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1450 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !4365
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !868
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 0, ptr %9, align 8, !tbaa !898
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !877
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !765
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !868
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !4365
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1450
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4355 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !765 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !868
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !901

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !765
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !867 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !874
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !4355 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #28, !inline_history !4355
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1416
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !867
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !867
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !4365
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1450 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.ay, ptr %5, align 8, !tbaa !84
  store i32 0, ptr %i.az, align 8, !tbaa !765
  store i32 8, ptr %i.ba, align 4, !tbaa !868
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !843 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1925
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #28, !inline_history !4355 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !765
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #28, !inline_history !4355 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !901

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !84
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !765
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #28
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !1926, !noalias !4366 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !1927, !noalias !4366 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1518, !noalias !4366 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58, !noalias !4367
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1928

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1356, !noalias !4367
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !901

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !58, !noalias !4367
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1929

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !765 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !868
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !901

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !765
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !765
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !765 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !868
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !901

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !765
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !58
  %i.es = load ptr, ptr %7, align 8, !tbaa !84
  %i.et = load i32, ptr %i.f, align 8, !tbaa !765
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !84
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !765
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1233") align 8 %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.fa) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_129CurrentInstantiationRebuilderENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !981
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !982
  call void @free(ptr noundef %i.ff) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4370
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !2128
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4372
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.i, align 4, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !1925
  %i.j = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !2128
  %i.k = tail call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPUseClauseEPNS_4ExprENS_14SourceLocationES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3184", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4374 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4374
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1450
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !901

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !765
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !58
end_hunk_4
