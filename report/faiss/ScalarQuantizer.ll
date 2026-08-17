inline.NumInlined: 2999
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 166
begin_hunk_0_@_ZNK5faiss16scalar_quantizer10DCTemplateINS0_19Quantizer8bitDirectILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13query_to_codeEPKh:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_19Quantizer8bitDirectILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i.epil, !llvm.loop !635

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_19Quantizer8bitDirectILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit: ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_19Quantizer8bitDirectILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.sroa.8.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.af, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_19Quantizer8bitDirectILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.i.epil ]
  ret float %.sroa.8.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !636  ; 5 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %.lr.ph.i ] ; 4 uses
  %.sroa.6.09.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %.010.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.010.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -128
  %i.u = sitofp i32 %i.t to float
  %i.v = tail call float @llvm.fmuladd.f32(float %i.p, float %i.u, float %.sroa.6.09.i)
  %i.w = or disjoint i64 %.010.i, 1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -128
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -128
  %i.ag = sitofp i32 %i.af to float
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ag, float %i.v) ; 3 uses
  %i.ai = add nuw i64 %.010.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !638

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.6.09.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ah, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %.010.i.epil.init
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -128
  %i.an = sitofp i32 %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %.010.i.epil.init
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -128
  %i.as = sitofp i32 %i.ar to float
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.as, float %.sroa.6.09.i.epil.init)
  br label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.6.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ah, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.i.epil.preheader ]
  ret float %.sroa.6.0.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !636  ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %xtraiter = and i64 %i.b, 1
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.b, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.sroa.8.08.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.v, %.lr.ph.i ]
  %.sroa.4.07.i = phi ptr [ %i.d, %.lr.ph.i.preheader.new ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = zext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -128
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i, i64 4
  %i.l = load float, ptr %.sroa.4.07.i, align 4, !tbaa !37
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.j, float %.sroa.8.08.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -128
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i, i64 8 ; 2 uses
  %i.u = load float, ptr %i.k, align 4, !tbaa !37
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.s, float %i.m) ; 3 uses
  %i.w = add nuw i64 %.09.i, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !639

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.w, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %.sroa.8.08.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.v, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %.sroa.4.07.i.epil.init = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.t, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.epil.init
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -128
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = load float, ptr %.sroa.4.07.i.epil.init, align 4, !tbaa !37
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ab, float %.sroa.8.08.i.epil.init)
  br label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.8.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.v, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_25Quantizer8bitDirectSignedILNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil.preheader ]
  ret float %.sroa.8.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !640  ; 5 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 6 uses
  %xtraiter = and i64 %i.j, 1
  %3 = icmp eq i64 %i.j, 1
  br i1 %3, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.new ], [ %18, %bb.b ] ; 4 uses
  %.sroa.6.09.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ad, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ae, %bb.b ]
  %i.m = lshr i64 %.010.i, 3                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28    ; 2 uses
  %i.p = trunc i64 %.010.i to i8
  %i.q = and i8 %i.p, 6                           ; 2 uses
  %i.r = lshr i8 %i.o, %i.q
  %i.s = and i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28    ; 2 uses
  %4 = lshr i8 %i.x, %i.q
  %5 = and i8 %4, 1
  %6 = zext nneg i8 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !37
  %9 = tail call float @llvm.fmuladd.f32(float %i.v, float %8, float %.sroa.6.09.i)
  %10 = trunc i64 %.010.i to i8
  %11 = and i8 %10, 6
  %12 = or disjoint i8 %11, 1                     ; 2 uses
  %13 = lshr i8 %i.o, %12
  %14 = and i8 %13, 1
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !37
  %i.y = lshr i8 %i.x, %12
  %i.z = and i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !37
  %i.ad = tail call float @llvm.fmuladd.f32(float %17, float %i.ac, float %9) ; 3 uses
  %18 = add nuw i64 %.010.i, 2                    ; 2 uses
  %i.ae = add nuw i64 %niter, 2                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %unroll_iter
  br i1 %exitcond.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !642

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %18, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.6.09.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ad, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %19 = lshr i64 %.010.i.epil.init, 3             ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.f, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = trunc i64 %.010.i.epil.init to i8
  %23 = and i8 %22, 7                             ; 2 uses
  %24 = lshr i8 %21, %23
  %25 = and i8 %24, 1
  %26 = zext nneg i8 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !37
  %29 = getelementptr inbounds nuw i8, ptr %i.h, i64 %19
  %30 = load i8, ptr %29, align 1, !tbaa !28
  %31 = lshr i8 %30, %23
  %32 = and i8 %31, 1
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %33
  %35 = load float, ptr %34, align 4, !tbaa !37
  %36 = tail call float @llvm.fmuladd.f32(float %28, float %35, float %.sroa.6.09.i.epil.init)
  br label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit: ; preds = %.epil.preheader, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.6.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ad, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit.loopexit.unr-lcssa ], [ %36, %.epil.preheader ]
  ret float %.sroa.6.0.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !640  ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.g = icmp eq i64 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.af, %bb.b ] ; 4 uses
  %.sroa.8.08.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ae, %bb.b ]
  %.sroa.4.07.i = phi ptr [ %i.d, %.lr.ph.i.new ], [ %i.ac, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.h = lshr i64 %.09.i, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 2 uses
  %i.k = trunc i64 %.09.i to i8
  %i.l = and i8 %i.k, 6
  %i.m = lshr i8 %i.j, %i.l
  %i.n = and i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i, i64 4
  %i.s = load float, ptr %.sroa.4.07.i, align 4, !tbaa !37
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.q, float %.sroa.8.08.i)
  %i.u = trunc i64 %.09.i to i8
  %i.v = and i8 %i.u, 6
  %i.w = or disjoint i8 %i.v, 1
  %i.x = lshr i8 %i.j, %i.w
  %i.y = and i8 %i.x, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.r, align 4, !tbaa !37
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ab, float %i.t) ; 3 uses
  %i.af = add nuw i64 %.09.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !643

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.08.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ae, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %.sroa.4.07.i.epil.init = phi ptr [ %i.d, %.lr.ph.i ], [ %i.ac, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.ag = lshr i64 %.09.i.epil.init, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = trunc i64 %.09.i.epil.init to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = lshr i8 %i.ai, %i.ak
  %i.am = and i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !37
  %i.aq = load float, ptr %.sroa.4.07.i.epil.init, align 4, !tbaa !37
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %.sroa.8.08.i.epil.init)
  br label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit: ; preds = %.epil.preheader, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.8.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader ]
  ret float %.sroa.8.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !644  ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !82   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %bb.b ] ; 2 uses
  %.sroa.6.09.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ae, %bb.b ]
  %i.m = shl i64 %.010.i, 1                       ; 2 uses
  %i.n = lshr i64 %i.m, 3                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = trunc i64 %i.m to i8
  %i.r = and i8 %i.q, 6                           ; 2 uses
  %i.s = lshr i8 %i.p, %i.r
  %i.t = and i8 %i.s, 3
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = lshr i8 %i.y, %i.r
  %i.aa = and i8 %i.z, 3
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !37
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ad, float %.sroa.6.09.i) ; 2 uses
  %i.af = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit, label %bb.b, !llvm.loop !646

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE21compute_code_distanceEPKhS9_.exit: ; preds = %bb.b, %bb.a
  %.sroa.6.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.b ]
  ret float %.sroa.6.0.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !644  ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi2ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.g = icmp eq i64 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ag, %bb.b ] ; 3 uses
  %.sroa.8.08.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.af, %bb.b ]
  %.sroa.4.07.i = phi ptr [ %i.d, %.lr.ph.i.new ], [ %i.ad, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.h = shl i64 %.09.i, 1                        ; 2 uses
end_hunk_0
