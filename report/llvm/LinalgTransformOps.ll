Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgTransformOps?download=true
inline.NumInlined: 40314
inline.NumDeleted: 11533
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4mlir9transform5PadOp6verifyEv:bb.a
  %24 = alloca %"class.llvm::SmallVector.522", align 8 ; 6 uses
  %25 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %27 = alloca %"class.mlir::ArrayAttr", align 8  ; 5 uses
  %28 = alloca %"class.llvm::SmallVector.532", align 8 ; 10 uses
  %29 = alloca %"class.llvm::SmallVector.532", align 8 ; 9 uses
  %30 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %32 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !1874
  store ptr %i.h, ptr %16, align 8, !noalias !1874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.i = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #29, !noalias !1876
  %.fca.0.extract3.i.i.i = extractvalue { ptr, i64 } %i.i, 0 ; 2 uses
  %i.j = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #29, !noalias !1876 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.n, ptr %17, align 8, !tbaa !109, !alias.scope !1878
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !110, !alias.scope !1878
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !111, !alias.scope !1878
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %.fca.0.extract3.i.i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp ugt i64 %i.t, 6
  br i1 %i.u, label %bb.b, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.n, i64 noundef %i.t, i64 noundef 8) #29
  %.pre.i.i.i.i.i = load i32, ptr %i.o, align 8, !tbaa !110, !alias.scope !1878 ; 2 uses
  %.pre23.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.val.pre187.pre = load ptr, ptr %17, align 8, !tbaa !109
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %.val.pre187 = phi ptr [ %i.n, %bb.a ], [ %.val.pre187.pre, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.pre23.i.i.i.i.i, %bb.b ]
  %i.v = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i.i.i, %bb.b ]
  %i.w = icmp sgt i64 %i.t, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i:       ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.pre187, i64 %.pre-phi.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.fca.0.extract3.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !1878
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %15, align 8, !noalias !1878
  %i.y = call noundef i64 @_ZNK4mlir11IntegerAttr6getIntEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !1878
  store i64 %i.y, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !150
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ac = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i, !llvm.loop !17

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre22.i.i.i.i.i = load i32, ptr %i.o, align 8, !tbaa !110, !alias.scope !1878
  %.val.pre = load ptr, ptr %17, align 8, !tbaa !109
  br label %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit

_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i
  %.val = phi ptr [ %.val.pre, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i ], [ %.val.pre187, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ] ; 4 uses
  %i.ad = phi i32 [ %.pre22.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i ], [ %i.v, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i ]
  %i.ae = trunc i64 %i.t to i32
  %i.af = add i32 %i.ad, %i.ae                    ; 4 uses
  store i32 %i.af, ptr %i.o, align 8, !tbaa !110, !alias.scope !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29, !noalias !1874
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.idx1.i = shl nuw nsw i64 %i.ag, 3             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i
  %i.ai = lshr i64 %i.ag, 2                       ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit
  %i.aj = and i64 %.idx1.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.aj
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i
  %.044.i.i.i.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ai, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %.val, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i64, ptr %.02943.i.i.i.i.i.i, align 8, !tbaa !150
  %i.ak = icmp ugt i64 %.029.val32.i.i.i.i.i.i, 1
  br i1 %i.ak, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !150
  %i.am = icmp ugt i64 %.val31.i.i.i.i.i.i, 1
  br i1 %i.am, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !150
  %i.ao = icmp ugt i64 %.val30.i.i.i.i.i.i, 1
  br i1 %i.ao, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit230", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !150
  %i.aq = icmp ugt i64 %.val.i.i.i.i.i.i, 1
  br i1 %i.aq, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit232", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 32
  %i.as = add nsw i64 %.044.i.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.044.i.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1852

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.au = and i32 %i.af, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit
  %.pre-phi50.i.i.i.i.i.i = phi i32 [ %i.au, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.af, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.g
    i32 2, label %bb.i
    i32 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !150
  %i.av = icmp ugt i64 %.029.val.i.i.i.i.i.i, 1
  br i1 %i.av, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !150
  %i.ax = icmp ugt i64 %.1.val.i.i.i.i.i.i, 1
  br i1 %i.ax, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !150
  %i.az = icmp ugt i64 %.2.val.i.i.i.i.i.i, 1
  br i1 %i.az, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit230": ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit232": ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit230", %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit232", %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %bb.k ], [ %i.bc, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit232" ], [ %i.bb, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit230" ], [ %i.ba, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not153 = icmp eq ptr %i.ah, %.028.i.i.i.i.i.i
  br i1 %.not153, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread", label %bb.l

bb.l:                                             ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !121
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.be, align 1, !tbaa !122
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %19) #29
  %i.bf = load ptr, ptr %18, align 8, !tbaa !192
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i32 3, ptr %14, align 8, !tbaa !146
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.75, ptr %i.bh, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 54, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !150
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !110 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !111
  %.not.i.i.i.i.i = icmp ult i32 %i.bj, %i.bl
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = zext i32 %i.bj to i64
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !110
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bi, align 8, !tbaa !110
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %.pre = load ptr, ptr %18, align 8, !tbaa !192
  %i.br = icmp eq ptr %.pre, null
  %i.bs = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not.i.i.i.i35 = icmp ugt i32 %i.bu, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i35)
  br i1 %i.br, label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit
  %i.bv = lshr i32 %i.bu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i36 = and i32 %i.bv, 1
  %i.bw = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i36 to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.bz) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !110 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !111
  %.not.i.i.i.i.i38 = icmp ult i32 %i.cc, %i.ce
  br i1 %.not.i.i.i.i.i38, label %bb.r, label %bb.q, !prof !151

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.cf = zext i32 %i.cc to i64
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !109
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.ci = load i32, ptr %i.cb, align 8, !tbaa !110
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cb, align 8, !tbaa !110
  br label %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit: ; preds = %bb.l, %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i
  %i.ck = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #29
  %i.cl = load ptr, ptr %18, align 8, !tbaa !192
  %.not.i39 = icmp eq ptr %i.cl, null
  br i1 %.not.i39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !193, !range !194, !noundef !195
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.u, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.cm, align 8, !tbaa !193
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cp) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.bs

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.cq = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not.i.i.i.i40 = icmp ugt i32 %i.cs, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.ct = lshr i32 %i.cs, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i41 = and i32 %i.ct, 1
  %i.cu = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i41 to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !88
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !1879
  store ptr %i.cx, ptr %12, align 8, !noalias !1879
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %i.cy = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29, !noalias !1881
  %.fca.0.extract3.i.i.i42 = extractvalue { ptr, i64 } %i.cy, 0 ; 2 uses
  %i.cz = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29, !noalias !1881 ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.dd, ptr %20, align 8, !tbaa !109, !alias.scope !1883
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i32 0, ptr %i.de, align 8, !tbaa !110, !alias.scope !1883
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 6, ptr %i.df, align 4, !tbaa !111, !alias.scope !1883
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = ptrtoint ptr %.fca.0.extract3.i.i.i42 to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3                 ; 5 uses
  %i.dk = icmp ugt i64 %i.dj, 6
  br i1 %i.dk, label %bb.v, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43

bb.v:                                             ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull %i.dd, i64 noundef %i.dj, i64 noundef 8) #29
  %.pre.i.i.i.i.i53 = load i32, ptr %i.de, align 8, !tbaa !110, !alias.scope !1883 ; 2 uses
  %.pre23.i.i.i.i.i54 = zext i32 %.pre.i.i.i.i.i53 to i64
  %.val33.pre189.pre = load ptr, ptr %20, align 8, !tbaa !109
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43: ; preds = %bb.v, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  %.val33.pre189 = phi ptr [ %i.dd, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread" ], [ %.val33.pre189.pre, %bb.v ] ; 2 uses
  %.pre-phi.i.i.i.i.i44 = phi i64 [ 0, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread" ], [ %.pre23.i.i.i.i.i54, %bb.v ]
  %i.dl = phi i32 [ 0, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_0EEbOT_T0_.exit.thread" ], [ %.pre.i.i.i.i.i53, %bb.v ]
  %i.dm = icmp sgt i64 %i.dj, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45, label %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45:     ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val33.pre189, i64 %.pre-phi.i.i.i.i.i44
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.i47 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45 ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.i.i48 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46 ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45 ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i49 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46 ], [ %.fca.0.extract3.i.i.i42, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i45 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i50 = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i49, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !1883
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i50, ptr %11, align 8, !noalias !1883
  %i.do = call noundef i64 @_ZNK4mlir11IntegerAttr6getIntEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !1883
  store i64 %i.do, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.i48, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.i49, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.i48, i64 8
  %i.dr = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i47, -1
  %i.ds = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i47, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i51, !llvm.loop !17

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i51: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i46
  %.pre22.i.i.i.i.i52 = load i32, ptr %i.de, align 8, !tbaa !110, !alias.scope !1883
  %.val33.pre = load ptr, ptr %20, align 8, !tbaa !109
  br label %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55

_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i51
  %.val33 = phi ptr [ %.val33.pre, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i51 ], [ %.val33.pre189, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43 ] ; 4 uses
  %i.dt = phi i32 [ %.pre22.i.i.i.i.i52, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_27extractFromIntegerArrayAttrIlEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEES5_EUlS5_E_lEEPlEEvSA_SA_T0_.exit.loopexit.i.i.i.i.i51 ], [ %i.dl, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i43 ]
  %i.du = trunc i64 %i.dj to i32
  %i.dv = add i32 %i.dt, %i.du                    ; 4 uses
  store i32 %i.dv, ptr %i.de, align 8, !tbaa !110, !alias.scope !1883
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !1879
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.idx1.i56 = shl nuw nsw i64 %i.dw, 3           ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val33, i64 %.idx1.i56
  %i.dy = lshr i64 %i.dw, 2                       ; 2 uses
  %.not.i57 = icmp eq i64 %i.dy, 0
  br i1 %.not.i57, label %._crit_edge.i.i.i.i.i.i68, label %.lr.ph.preheader.i.i.i.i.i.i58

.lr.ph.preheader.i.i.i.i.i.i58:                   ; preds = %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55
  %i.dz = and i64 %.idx1.i56, 34359738336
  %scevgep.i.i.i.i.i.i59 = getelementptr i8, ptr %.val33, i64 %i.dz
  br label %.lr.ph.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i60:                             ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i58
  %.044.i.i.i.i.i.i61 = phi i64 [ %i.ei, %bb.z ], [ %i.dy, %.lr.ph.preheader.i.i.i.i.i.i58 ] ; 2 uses
  %.02943.i.i.i.i.i.i62 = phi ptr [ %i.eh, %bb.z ], [ %.val33, %.lr.ph.preheader.i.i.i.i.i.i58 ] ; 9 uses
  %.029.val32.i.i.i.i.i.i63 = load i64, ptr %.02943.i.i.i.i.i.i62, align 8, !tbaa !150
  %i.ea = icmp slt i64 %.029.val32.i.i.i.i.i.i63, 0
  br i1 %i.ea, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i60
  %i.eb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 8
  %.val31.i.i.i.i.i.i64 = load i64, ptr %i.eb, align 8, !tbaa !150
  %i.ec = icmp slt i64 %.val31.i.i.i.i.i.i64, 0
  br i1 %i.ec, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 16
  %.val30.i.i.i.i.i.i65 = load i64, ptr %i.ed, align 8, !tbaa !150
  %i.ee = icmp slt i64 %.val30.i.i.i.i.i.i65, 0
  br i1 %i.ee, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit238", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 24
  %.val.i.i.i.i.i.i66 = load i64, ptr %i.ef, align 8, !tbaa !150
  %i.eg = icmp slt i64 %.val.i.i.i.i.i.i66, 0
  br i1 %i.eg, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit240", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 32
  %i.ei = add nsw i64 %.044.i.i.i.i.i.i61, -1
  %i.ej = icmp sgt i64 %.044.i.i.i.i.i.i61, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i60, label %._crit_edge.loopexit.i.i.i.i.i.i67, !llvm.loop !1861

._crit_edge.loopexit.i.i.i.i.i.i67:               ; preds = %bb.z
  %i.ek = and i32 %i.dv, 3
  br label %._crit_edge.i.i.i.i.i.i68

._crit_edge.i.i.i.i.i.i68:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i67, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55
  %.pre-phi50.i.i.i.i.i.i69 = phi i32 [ %i.ek, %._crit_edge.loopexit.i.i.i.i.i.i67 ], [ %i.dv, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55 ]
  %.029.lcssa.i.i.i.i.i.i70 = phi ptr [ %scevgep.i.i.i.i.i.i59, %._crit_edge.loopexit.i.i.i.i.i.i67 ], [ %.val33, %_ZN4mlir27extractFromIntegerArrayAttrIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEENS_9AttributeE.exit55 ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i.i69, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread" [
    i32 3, label %bb.aa
    i32 2, label %bb.ac
    i32 1, label %bb.ae
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i68
  %.029.val.i.i.i.i.i.i76 = load i64, ptr %.029.lcssa.i.i.i.i.i.i70, align 8, !tbaa !150
  %i.el = icmp slt i64 %.029.val.i.i.i.i.i.i76, 0
  br i1 %i.el, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i70, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i68
  %.1.i.i.i.i.i.i74 = phi ptr [ %i.em, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i70, %._crit_edge.i.i.i.i.i.i68 ] ; 3 uses
  %.1.val.i.i.i.i.i.i75 = load i64, ptr %.1.i.i.i.i.i.i74, align 8, !tbaa !150
  %i.en = icmp slt i64 %.1.val.i.i.i.i.i.i75, 0
  br i1 %i.en, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i74, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i.i.i68
  %.2.i.i.i.i.i.i71 = phi ptr [ %i.eo, %bb.ad ], [ %.029.lcssa.i.i.i.i.i.i70, %._crit_edge.i.i.i.i.i.i68 ] ; 2 uses
  %.2.val.i.i.i.i.i.i72 = load i64, ptr %.2.i.i.i.i.i.i71, align 8, !tbaa !150
  %i.ep = icmp slt i64 %.2.val.i.i.i.i.i.i72, 0
  br i1 %i.ep, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit", label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 8
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit238": ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 16
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit240": ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i62, i64 24
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i60, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit238", %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit240", %bb.aa, %bb.ac, %bb.ae
  %.028.i.i.i.i.i.i73 = phi ptr [ %.1.i.i.i.i.i.i74, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i70, %bb.aa ], [ %.2.i.i.i.i.i.i71, %bb.ae ], [ %i.es, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit240" ], [ %i.er, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit238" ], [ %i.eq, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i.i62, %.lr.ph.i.i.i.i.i.i60 ]
  %.not154 = icmp eq ptr %i.dx, %.028.i.i.i.i.i.i73
  br i1 %.not154, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread", label %bb.af

bb.af:                                            ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 1, ptr %i.et, align 8, !tbaa !121
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eu, align 1, !tbaa !122
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %22) #29
  %i.ev = load ptr, ptr %21, align 8, !tbaa !192
  %.not.i.i77 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i77, label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 3, ptr %10, align 8, !tbaa !146
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.76, ptr %i.ex, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 63, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i78, align 8, !tbaa !150
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !110 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !111
  %.not.i.i.i.i.i79 = icmp ult i32 %i.ez, %i.fb
  br i1 %.not.i.i.i.i.i79, label %bb.ai, label %bb.ah, !prof !151

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA64_KcEEOS0_OT_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fc = zext i32 %i.ez to i64
  %i.fd = load ptr, ptr %i.ew, align 8, !tbaa !109
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ff = load i32, ptr %i.ey, align 8, !tbaa !110
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ey, align 8, !tbaa !110
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA64_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA64_KcEEOS0_OT_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.pre191 = load ptr, ptr %21, align 8, !tbaa !192
  %i.fh = icmp eq ptr %.pre191, null
  %i.fi = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  %i.fk = load i32, ptr %i.fj, align 4            ; 2 uses
  %.not.i.i.i.i80 = icmp ugt i32 %i.fk, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i80)
  br i1 %i.fh, label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86, label %bb.aj

bb.aj:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA64_KcEEOS0_OT_.exit
  %i.fl = lshr i32 %i.fk, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i81 = and i32 %i.fl, 1
  %i.fm = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i81 to i64
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.fp) #29
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !110 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !111
  %.not.i.i.i.i.i84 = icmp ult i32 %i.fs, %i.fu
  br i1 %.not.i.i.i.i.i84, label %bb.al, label %bb.ak, !prof !151

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i85

bb.al:                                            ; preds = %bb.aj
  %i.fv = zext i32 %i.fs to i64
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !109
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.fy = load i32, ptr %i.fr, align 8, !tbaa !110
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fr, align 8, !tbaa !110
  br label %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i85

_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i85: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86

_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86: ; preds = %bb.af, %_ZNO4mlir18InFlightDiagnosticlsIRA64_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_9ArrayAttrEEERS0_OT_.exit.i.i85
  %i.ga = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  %i.gb = load ptr, ptr %21, align 8, !tbaa !192
  %.not.i87 = icmp eq ptr %i.gb, null
  br i1 %.not.i87, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNO4mlir18InFlightDiagnosticlsINS_9ArrayAttrEEEOS0_OT_.exit86
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !193, !range !194, !noundef !195
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ao, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit88

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 0, ptr %i.gc, align 8, !tbaa !193
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gf) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit88

_ZN4mlir18InFlightDiagnosticD2Ev.exit88:          ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.bq

"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread": ; preds = %bb.ae, %._crit_edge.i.i.i.i.i.i68, %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @_ZN4mlir9transform5PadOp23getMixedPadToMultipleOfEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.gg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !110
  %.not.i89 = icmp eq i32 %i.gh, 0
  %i.gi = load ptr, ptr %23, align 8, !tbaa !109  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread"
  call void @free(ptr noundef %i.gi) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIlLj6EEEZN4mlir9transform5PadOp6verifyEvE3$_1EEbOT_T0_.exit.thread", %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br i1 %.not.i89, label %bb.az, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @_ZN4mlir9transform5PadOp23getMixedPadToMultipleOfEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.522") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !110
  %i.gn = load i32, ptr %i.de, align 8, !tbaa !110
  %.not = icmp eq i32 %i.gm, %i.gn
  %i.go = load ptr, ptr %24, align 8, !tbaa !109  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit90, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef %i.go) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit90

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit90: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br i1 %.not, label %bb.az, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 1, ptr %i.gr, align 8, !tbaa !121
  %i.gs = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.gs, align 1, !tbaa !122
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %26) #29
  %i.gt = load ptr, ptr %25, align 8, !tbaa !192
  %.not.i.i91 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i91, label %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 3, ptr %8, align 8, !tbaa !146
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.77, ptr %i.gv, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 47, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i92, align 8, !tbaa !150
  %i.gw = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !110 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %25, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !111
  %.not.i.i.i.i.i93 = icmp ult i32 %i.gx, %i.gz
  br i1 %.not.i.i.i.i.i93, label %bb.av, label %bb.au, !prof !151

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendIRA48_KcEERS0_OT_.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.ha = zext i32 %i.gx to i64
  %i.hb = load ptr, ptr %i.gu, align 8, !tbaa !109
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.hd = load i32, ptr %i.gw, align 8, !tbaa !110
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.gw, align 8, !tbaa !110
  br label %_ZN4mlir10Diagnostic6appendIRA48_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA48_KcEERS0_OT_.exit.i.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit: ; preds = %bb.as, %_ZN4mlir10Diagnostic6appendIRA48_KcEERS0_OT_.exit.i.i
  %i.hf = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  %i.hg = load ptr, ptr %25, align 8, !tbaa !192
  %.not.i94 = icmp eq ptr %i.hg, null
  br i1 %.not.i94, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %25, i64 200 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !193, !range !194, !noundef !195
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ay, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit95

bb.ay:                                            ; preds = %bb.ax
  %i.hk = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i8 0, ptr %i.hh, align 8, !tbaa !193
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.hk) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit95

_ZN4mlir18InFlightDiagnosticD2Ev.exit95:          ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.bq

bb.az:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit90, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.hl = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 44
  %i.hn = load i32, ptr %i.hm, align 4            ; 2 uses
  %.not.i.i.i.i96 = icmp ugt i32 %i.hn, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i96)
  %i.ho = lshr i32 %i.hn, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i97 = and i32 %i.ho, 1
  %i.hp = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i97 to i64
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 104
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !88
  store ptr %i.hs, ptr %27, align 8
  %i.ht = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #29
  %i.hu = extractvalue { ptr, i64 } %i.ht, 0      ; 2 uses
  %i.hv = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #29 ; 2 uses
  %i.hw = extractvalue { ptr, i64 } %i.hv, 0
  %i.hx = extractvalue { ptr, i64 } %i.hv, 1
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hx ; 2 uses
  %.not31175 = icmp eq ptr %i.hu, %i.hy
  br i1 %.not31175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.ic = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %31, i64 33
  %i.ih = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i114 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 200 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit123
  %i.in = getelementptr inbounds nuw i8, ptr %.030176, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.in, %i.hy
  br i1 %.not31, label %._crit_edge, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.ba
  %.sroa.029.0177 = phi i8 [ undef, %.lr.ph ], [ %.sroa.029.1, %bb.ba ]
  %.030176 = phi ptr [ %i.hu, %.lr.ph ], [ %i.in, %bb.ba ] ; 2 uses
  %i.io = load i64, ptr %.030176, align 8, !tbaa !218
  %i.ip = inttoptr i64 %i.io to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !1884
  store ptr %i.ip, ptr %7, align 8, !noalias !1884
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.iq = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !1886
  %.fca.0.extract3.i.i.i98 = extractvalue { ptr, i64 } %i.iq, 0 ; 2 uses
  %i.ir = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !1886 ; 2 uses
  %i.is = extractvalue { ptr, i64 } %i.ir, 0
  %i.it = extractvalue { ptr, i64 } %i.ir, 1
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
end_hunk_0
