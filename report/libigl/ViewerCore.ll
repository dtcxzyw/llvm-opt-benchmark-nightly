Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerCore?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1769
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE:bb.a
  store ptr %1, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = invoke noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef 0, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit56
  %i.al = call noundef double @llvm.fabs.f64(double %i.ak) ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !14
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %.loopexit55

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.noexc12
  %.01724.i.i.i.i = phi i64 [ %i.as, %.noexc12 ], [ 1, %.noexc ] ; 2 uses
  %.02223.i.i.i.i = phi double [ %i.ar, %.noexc12 ], [ %i.al, %.noexc ] ; 2 uses
  %i.ao = invoke noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef 0, i64 noundef %.01724.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.lr.ph.i.i.i.i
  %i.ap = call noundef double @llvm.fabs.f64(double %i.ao) ; 2 uses
  %i.aq = fcmp olt double %.02223.i.i.i.i, %i.ap
  %i.ar = select i1 %i.aq, double %i.ap, double %.02223.i.i.i.i ; 2 uses
  %i.as = add nuw nsw i64 %.01724.i.i.i.i, 1      ; 2 uses
  %i.at = load i64, ptr %i.d, align 8, !tbaa !14
  %i.au = icmp slt i64 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %.loopexit55, !llvm.loop !65

.loopexit55:                                      ; preds = %.noexc12, %.noexc
  %.022.lcssa.i.i.i.i = phi double [ %i.al, %.noexc ], [ %i.ar, %.noexc12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.av = fdiv double 2.000000e+00, %.022.lcssa.i.i.i.i
  %i.aw = fptrunc double %i.av to float
  store float %i.aw, ptr %2, align 4, !tbaa !62
  %i.ax = load ptr, ptr %6, align 8, !tbaa !60
  call void @free(ptr noundef %i.ax) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit55
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.loopexit56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ay = load ptr, ptr %6, align 8, !tbaa !60
  call void @free(ptr noundef %i.ay) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore19align_camera_centerERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::redux_evaluator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE(ptr nonnull align 16 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = mul nsw i64 %i.h, %i.f
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = call noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.p = fmul double %i.o, %i.o                   ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !14
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %.02223.i.i.i.i.i = phi double [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.s = call noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 0, i64 noundef %.01724.i.i.i.i.i) ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fadd double %.02223.i.i.i.i.i, %i.t      ; 2 uses
  %i.v = add nuw nsw i64 %.01724.i.i.i.i.i, 1     ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !14
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i, !llvm.loop !17

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.022.lcssa.i.i.i.i.i = phi double [ %i.p, %bb.d ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.y = call double @llvm.sqrt.f64(double %.022.lcssa.i.i.i.i.i)
  %i.z = fptrunc double %i.y to float
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit: ; preds = %bb.c, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i
  %.0.i.i.i = phi float [ %i.z, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i ], [ 0.000000e+00, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %.0.i.i.i, ptr %i.aa, align 16, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore18clear_framebuffersEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(544) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @glad_glScissor, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load float, ptr %i.b, align 16, !tbaa !62
  %i.d = fptosi float %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !62
  %i.g = fptosi <2 x float> %i.f to <2 x i32>     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.i = load float, ptr %i.h, align 4, !tbaa !62
  %i.j = fptosi float %i.i to i32
  %i.k = extractelement <2 x i32> %i.g, i64 0
  %i.l = extractelement <2 x i32> %i.g, i64 1
  tail call void %i.a(i32 noundef %i.d, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.j)
  %i.m = load ptr, ptr @glad_glEnable, align 8, !tbaa !66
  tail call void %i.m(i32 noundef 3089)
  %i.n = load ptr, ptr @glad_glClearColor, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 16, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load float, ptr %i.u, align 4, !tbaa !62
  tail call void %i.n(float noundef %i.p, float noundef %i.r, float noundef %i.t, float noundef %i.v)
  %i.w = load ptr, ptr @glad_glClear, align 8, !tbaa !66
  tail call void %i.w(i32 noundef 16640)
  %i.x = load ptr, ptr @glad_glDisable, align 8, !tbaa !66
  tail call void %i.x(i32 noundef 3089)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.12", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i8, ptr %i.a, align 4, !tbaa !67, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  %glad_glEnable.val = load ptr, ptr @glad_glEnable, align 8
  %glad_glDisable.val = load ptr, ptr @glad_glDisable, align 8
  %i.d = select i1 %i.c, ptr %glad_glEnable.val, ptr %glad_glDisable.val
  tail call void %i.d(i32 noundef 2929)
  %i.e = load ptr, ptr @glad_glEnable, align 8, !tbaa !66
  tail call void %i.e(i32 noundef 3042)
  %i.f = load ptr, ptr @glad_glBlendFunc, align 8, !tbaa !66
  tail call void %i.f(i32 noundef 770, i32 noundef 771)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !70
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 582
  %i.j = load i8, ptr %i.i, align 2, !tbaa !101, !range !68, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @_ZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLE(ptr noundef nonnull align 8 dereferenceable(1488) %1, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %i.k, ptr noundef nonnull align 8 dereferenceable(804) %i.l)
  store i32 0, ptr %i.g, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 7 uses
  tail call void @_ZN3igl6opengl6MeshGL9bind_meshEv(ptr noundef nonnull align 8 dereferenceable(804) %i.m)
  %i.n = load ptr, ptr @glad_glViewport, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load float, ptr %i.o, align 16, !tbaa !62
  %i.q = fptosi float %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.s = load float, ptr %i.r, align 4, !tbaa !62
  %i.t = fptosi float %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !62
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.y = load float, ptr %i.x, align 4, !tbaa !62
  %i.z = fptosi float %i.y to i32
  tail call void %i.n(i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.z)
  br i1 %2, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store float 1.000000e+00, ptr %i.aa, align 16, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  store float 1.000000e+00, ptr %i.ah, align 16, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 308
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store float 1.000000e+00, ptr %i.ao, align 16, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 372
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !62
  %4 = load <2 x float>, ptr %i.u, align 8, !tbaa !62 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3igl7look_atIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEES3_S3_NS2_IfLi4ELi4ELi0ELi4ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ba = load float, ptr %i.az, align 4, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load float, ptr %i.bb, align 16, !tbaa !103
  %i.bd = fmul float %i.ba, %i.bc                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bg = load <2 x float>, ptr %i.ay, align 16, !tbaa !62, !noalias !104 ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.bi = load <3 x float>, ptr %i.ay, align 16, !tbaa !62, !noalias !104
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bk = load float, ptr %i.bf, align 4, !tbaa !62, !noalias !104
  %i.bl = load <2 x float>, ptr %i.be, align 8, !tbaa !62, !noalias !104
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul <4 x float> %i.bj, splat (float 2.000000e+00) ; 4 uses
  %i.bo = extractelement <4 x float> %i.bn, i64 2
  %i.bp = fmul float %i.bo, %i.bk                 ; 2 uses
  %i.bq = fmul <4 x float> %i.bh, %i.bn           ; 5 uses
  %i.br = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.bs = fmul <4 x float> %i.br, %i.bm           ; 3 uses
  %i.bt = fadd <4 x float> %i.bq, %i.bs           ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.bw = shufflevector <4 x float> %i.bq, <4 x float> %i.bn, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bx = shufflevector <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, <4 x float> %i.bw, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.by = fmul <4 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bt, <4 x float> %i.bs, <4 x i32> <i32 0, i32 7, i32 2, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float %i.bp, i64 3
  %i.cb = fsub <4 x float> %i.by, %i.ca           ; 4 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.bt, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.bq, %i.bs
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = extractelement <4 x float> %i.by, i64 3
  %i.ch = fadd float %i.cg, %i.bp
  %i.ci = insertelement <4 x float> %i.cd, float %i.ch, i64 1
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %shift = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop151 = fadd <4 x float> %shift, %i.bq
  %i.cl = extractelement <4 x float> %foldExtExtBinop151, i64 0
  %i.cm = fsub float 1.000000e+00, %i.cl
  %i.cn = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <4 x float> %i.co, %i.cf           ; 7 uses
  %i.cq = fmul <4 x float> %i.co, %i.ck           ; 8 uses
  %i.cr = fmul float %i.bd, %i.cm                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cw = load float, ptr %i.cu, align 16, !tbaa !62
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !62
  %i.cy = fadd float %i.cw, %i.cx                 ; 3 uses
  %.sroa.0112.4.vec.extract = extractelement <4 x float> %i.cp, i64 1
  %.sroa.7.16.vec.extract = extractelement <4 x float> %i.cq, i64 0
  %.sroa.7.24.vec.extract = extractelement <4 x float> %i.cq, i64 2
  %.sroa.7.28.vec.extract = extractelement <4 x float> %i.cq, i64 3
  %i.cz = fmul float %i.cy, %.sroa.7.24.vec.extract
  %i.da = fmul float %i.cy, %.sroa.7.28.vec.extract
  %i.db = load <2 x float>, ptr %i.cs, align 8, !tbaa !62
  %i.dc = load <2 x float>, ptr %i.ct, align 4, !tbaa !62
  %i.dd = fadd <2 x float> %i.db, %i.dc           ; 4 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %i.df = extractelement <2 x float> %i.dd, i64 1
  %i.dg = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dh = fmul <2 x float> %i.dd, %i.dg           ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 1
  %i.dj = fadd float %i.di, %i.cz
  %i.dk = extractelement <2 x float> %i.dh, i64 0
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fmul float %i.de, %.sroa.0112.4.vec.extract
  %i.dn = fmul float %i.df, %.sroa.7.16.vec.extract
  %i.do = fadd float %i.dn, %i.da
  %i.dp = fadd float %i.dm, %i.do
  %i.dq = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <2 x i32> <i32 2, i32 5>
  %i.dr = fmul <2 x float> %i.dd, %i.dq           ; 2 uses
  %i.ds = fmul float %i.cr, %i.cy
  %i.dt = extractelement <2 x float> %i.dr, i64 1
  %i.du = fadd float %i.ds, %i.dt
  %i.dv = extractelement <2 x float> %i.dr, i64 0
  %i.dw = fadd float %i.dv, %i.du
  %i.dx = load <4 x float>, ptr %i.aa, align 16, !tbaa !51 ; 4 uses
  %.sroa.0.sroa.0.0.vec.extract = extractelement <4 x float> %i.cp, i64 0
  %i.dy = bitcast float %.sroa.0.sroa.0.0.vec.extract to <1 x float>
  %i.dz = shufflevector <1 x float> %i.dy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fmul <4 x float> %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !51 ; 4 uses
  %.sroa.0.sroa.0.4.vec.extract = extractelement <4 x float> %i.cp, i64 1
  %i.ed = bitcast float %.sroa.0.sroa.0.4.vec.extract to <1 x float>
  %i.ee = shufflevector <1 x float> %i.ed, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fmul <4 x float> %i.ec, %i.ee
  %i.eg = fadd <4 x float> %i.ea, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !51 ; 4 uses
  %.sroa.0.sroa.0.8.vec.extract = extractelement <4 x float> %i.cp, i64 2
  %i.ej = bitcast float %.sroa.0.sroa.0.8.vec.extract to <1 x float>
  %i.ek = shufflevector <1 x float> %i.ej, <1 x float> poison, <4 x i32> zeroinitializer
  %i.el = fmul <4 x float> %i.ei, %i.ek
  %i.em = fadd <4 x float> %i.eg, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !51 ; 4 uses
  %i.ep = fmul <4 x float> %i.eo, zeroinitializer
  %i.eq = fadd <4 x float> %i.em, %i.ep           ; 11 uses
  %i.er = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.es = fmul <4 x float> %i.dx, %i.er
  %i.et = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul <4 x float> %i.ec, %i.et
  %i.ev = fadd <4 x float> %i.es, %i.eu
  %i.ew = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = fmul <4 x float> %i.ei, %i.ew
  %i.ey = fadd <4 x float> %i.ex, %i.ev
  %i.ez = fmul <4 x float> %i.eo, zeroinitializer
  %i.fa = fadd <4 x float> %i.ez, %i.ey           ; 11 uses
  %i.fb = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = fmul <4 x float> %i.fb, %i.dx
  %i.fd = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fe = fmul <4 x float> %i.fd, %i.ec
  %i.ff = fadd <4 x float> %i.fc, %i.fe
  %i.fg = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = fmul <4 x float> %i.fh, %i.ei
  %i.fj = fadd <4 x float> %i.ff, %i.fi
  %i.fk = fmul <4 x float> %i.eo, zeroinitializer
  %i.fl = fadd <4 x float> %i.fj, %i.fk           ; 11 uses
  %i.fm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = fmul <4 x float> %i.fn, %i.dx
  %i.fp = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = fmul <4 x float> %i.fq, %i.ec
  %i.fs = fadd <4 x float> %i.fo, %i.fr
  %i.ft = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul <4 x float> %i.fu, %i.ei
  %i.fw = fadd <4 x float> %i.fs, %i.fv
  %i.fx = fadd <4 x float> %i.fw, %i.eo           ; 11 uses
  store <4 x float> %i.eq, ptr %i.aa, align 16, !tbaa !51
  store <4 x float> %i.fa, ptr %i.eb, align 16, !tbaa !51
  store <4 x float> %i.fl, ptr %i.eh, align 16, !tbaa !51
  store <4 x float> %i.fx, ptr %i.en, align 16, !tbaa !51
  %i.fy = shufflevector <4 x float> %i.eq, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.fz = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.ga = shufflevector <4 x float> %i.fl, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.gb = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.gc = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.gd = fmul <4 x float> %i.fz, %i.gc
  %i.ge = shufflevector <4 x float> %i.eq, <4 x float> %i.fa, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.gf = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.gg = fmul <4 x float> %i.ge, %i.gf
  %i.gh = fsub <4 x float> %i.gd, %i.gg           ; 5 uses
  %i.gi = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.gj = fmul <4 x float> %i.ga, %i.gi
  %i.gk = shufflevector <4 x float> %i.fl, <4 x float> %i.fx, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.gl = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gm = fmul <4 x float> %i.gk, %i.gl
  %i.gn = fsub <4 x float> %i.gj, %i.gm           ; 5 uses
  %i.go = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.gp = fmul <4 x float> %i.fy, %i.go           ; 2 uses
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gr = fsub <4 x float> %i.gp, %i.gq           ; 2 uses
  %i.gs = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.gt = fmul <4 x float> %i.fz, %i.gs           ; 2 uses
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gv = fsub <4 x float> %i.gt, %i.gu           ; 2 uses
  %i.gw = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.gx = fmul <4 x float> %i.ga, %i.gw           ; 2 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gz = fsub <4 x float> %i.gx, %i.gy           ; 2 uses
  %i.ha = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.hb = fmul <4 x float> %i.gb, %i.ha           ; 2 uses
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hd = fsub <4 x float> %i.hb, %i.hc           ; 2 uses
  %i.he = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hf = fmul <4 x float> %i.he, %i.gh           ; 2 uses
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hh = fadd <4 x float> %i.hf, %i.hg           ; 2 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hj = fadd <4 x float> %i.hh, %i.hi
  %i.hk = fmul <4 x float> %i.hd, %i.gr
  %i.hl = fmul <4 x float> %i.gz, %i.gv
  %i.hm = fadd <4 x float> %i.hk, %i.hl
  %i.hn = fsub <4 x float> %i.hm, %i.hj
  %i.ho = fdiv <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.hn
  %i.hp = bitcast <4 x float> %i.ho to <4 x i32>
  %i.hq = shufflevector <4 x i32> %i.hp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hr = shufflevector <4 x float> %i.fl, <4 x float> %i.fx, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.hs = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ht = fmul <4 x float> %i.hr, %i.hs
  %i.hu = shufflevector <4 x float> %i.fl, <4 x float> %i.fx, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.hv = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hw = fmul <4 x float> %i.hu, %i.hv
  %i.hx = fadd <4 x float> %i.ht, %i.hw
  %i.hy = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fmul <4 x float> %i.gb, %i.hy
  %i.ia = fsub <4 x float> %i.hz, %i.hx
  %i.ib = shufflevector <4 x float> %i.eq, <4 x float> %i.fa, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.ic = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.id = fmul <4 x float> %i.ic, %i.ib
  %i.ie = shufflevector <4 x float> %i.eq, <4 x float> %i.fa, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.if = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ig = fmul <4 x float> %i.if, %i.ie
  %i.ih = fadd <4 x float> %i.id, %i.ig
  %i.ii = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = fmul <4 x float> %i.fy, %i.ii
  %i.ik = fsub <4 x float> %i.ij, %i.ih
  %i.il = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.im = fmul <4 x float> %i.gb, %i.il
  %i.in = shufflevector <4 x float> %i.fl, <4 x float> %i.fx, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.io = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.ip = fmul <4 x float> %i.in, %i.io
  %i.iq = fsub <4 x float> %i.im, %i.ip
  %i.ir = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul <4 x float> %i.ga, %i.ir
  %i.it = fsub <4 x float> %i.is, %i.iq
  %i.iu = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.iv = fmul <4 x float> %i.iu, %i.fy
  %i.iw = shufflevector <4 x float> %i.eq, <4 x float> %i.fa, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ix = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.iy = fmul <4 x float> %i.ix, %i.iw
  %i.iz = fsub <4 x float> %i.iv, %i.iy
  %i.ja = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = fmul <4 x float> %i.fz, %i.ja
  %i.jc = fsub <4 x float> %i.jb, %i.iz
  %i.jd = xor <4 x i32> %i.hq, <i32 0, i32 -2147483648, i32 -2147483648, i32 0>
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>  ; 4 uses
  %i.jf = fmul <4 x float> %i.ik, %i.je           ; 2 uses
  %i.jg = fmul <4 x float> %i.it, %i.je           ; 2 uses
  %i.jh = fmul <4 x float> %i.jc, %i.je           ; 2 uses
  %i.ji = fmul <4 x float> %i.ia, %i.je           ; 2 uses
  %i.jj = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  store <4 x float> %i.jj, ptr %i.ao, align 16, !tbaa !62
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.jl = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  store <4 x float> %i.jl, ptr %i.jk, align 16, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.jn = shufflevector <4 x float> %i.jg, <4 x float> %i.ji, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  store <4 x float> %i.jn, ptr %i.jm, align 16, !tbaa !62
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.jp = shufflevector <4 x float> %i.jg, <4 x float> %i.ji, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  store <4 x float> %i.jp, ptr %i.jo, align 16, !tbaa !62
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !111, !range !68, !noundef !69
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.jt = load <2 x float>, ptr %i.av, align 4, !tbaa !62
  %i.ju = load <2 x float>, ptr %i.aw, align 4, !tbaa !62
  %i.jv = fsub <2 x float> %i.jt, %i.ju           ; 2 uses
  %i.jw = fmul <2 x float> %i.jv, %i.jv           ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.jz = load float, ptr %i.jx, align 4, !tbaa !62
  %i.ka = load float, ptr %i.jy, align 4, !tbaa !62
  %i.kb = fsub float %i.jz, %i.ka                 ; 2 uses
  %i.kc = fmul float %i.kb, %i.kb
  %i.kd = extractelement <2 x float> %i.jw, i64 1
  %i.ke = fadd float %i.kd, %i.kc
  %i.kf = extractelement <2 x float> %i.jw, i64 0
  %i.kg = fadd float %i.kf, %i.ke
  %i.kh = tail call noundef float @llvm.sqrt.f32(float %i.kg)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kj = load float, ptr %i.ki, align 8, !tbaa !112
  %i.kk = fpext float %i.kj to double
  %i.kl = fdiv double %i.kk, 3.600000e+02
  %i.km = fmul double %i.kl, f0x400921FB54442D18
  %i.kn = tail call double @tan(double noundef %i.km) #19
  %i.ko = fpext float %i.kh to double
  %i.kp = fmul double %i.kn, %i.ko
  %i.kq = fptrunc double %i.kp to float           ; 3 uses
  %i.kr = fneg float %i.kq                        ; 2 uses
  %i.ks = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.ku = insertelement <2 x float> %i.kt, float %i.kq, i64 1
  %i.kv = fmul <2 x float> %i.ks, %i.ku
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kw = fdiv <2 x float> %i.kv, %5              ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !113
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.la = load float, ptr %i.kz, align 16, !tbaa !114
  %i.lb = extractelement <2 x float> %i.kw, i64 0
  %i.lc = extractelement <2 x float> %i.kw, i64 1
  tail call void @_ZN3igl5orthoIN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEvNT_6ScalarES5_S5_S5_S5_S5_RNS1_15PlainObjectBaseIS4_EE(float noundef %i.lb, float noundef %i.lc, float noundef %i.kr, float noundef %i.kq, float noundef %i.ky, float noundef %i.la, ptr noundef nonnull align 16 dereferenceable(64) %i.ah)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.le = load float, ptr %i.ld, align 8, !tbaa !112
  %i.lf = fpext float %i.le to double
  %i.lg = fdiv double %i.lf, 3.600000e+02
  %i.lh = fmul double %i.lg, f0x400921FB54442D18
  %i.li = tail call double @tan(double noundef %i.lh) #19
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !113 ; 2 uses
  %i.ll = fpext float %i.lk to double
  %i.lm = fmul double %i.li, %i.ll
  %i.ln = fptrunc double %i.lm to float           ; 3 uses
  %i.lo = fpext float %i.ln to double
  %6 = fpext <2 x float> %4 to <2 x double>       ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.lp = fmul double %7, %i.lo
  %8 = extractelement <2 x double> %6, i64 1
  %i.lq = fdiv double %i.lp, %8
  %i.lr = fptrunc double %i.lq to float           ; 2 uses
  %i.ls = fneg float %i.lr
  %i.lt = fneg float %i.ln
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lv = load float, ptr %i.lu, align 16, !tbaa !114
  tail call void @_ZN3igl7frustumIN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEvNT_6ScalarES5_S5_S5_S5_S5_RNS1_15PlainObjectBaseIS4_EE(float noundef %i.ls, float noundef %i.lr, float noundef %i.lt, float noundef %i.ln, float noundef %i.lk, float noundef %i.lv, ptr noundef nonnull align 16 dereferenceable(64) %i.ah)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.lw = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 16 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.lz = tail call i32 %i.lw(i32 noundef %i.ly, ptr noundef nonnull @.str)
  %i.ma = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mb = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mc = tail call i32 %i.ma(i32 noundef %i.mb, ptr noundef nonnull @.str.3)
  %i.md = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.me = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mf = tail call i32 %i.md(i32 noundef %i.me, ptr noundef nonnull @.str.4)
  %i.mg = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  tail call void %i.mg(i32 noundef %i.lz, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.mh)
  %i.mi = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  tail call void %i.mi(i32 noundef %i.mc, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.mj)
  %i.mk = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void %i.mk(i32 noundef %i.mf, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.ml)
  %i.mm = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mn = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mo = tail call i32 %i.mm(i32 noundef %i.mn, ptr noundef nonnull @.str.5) ; 2 uses
  %i.mp = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mq = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mr = tail call i32 %i.mp(i32 noundef %i.mq, ptr noundef nonnull @.str.6) ; 2 uses
  %i.ms = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mt = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mu = tail call i32 %i.ms(i32 noundef %i.mt, ptr noundef nonnull @.str.7)
  %i.mv = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mw = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.mx = tail call i32 %i.mv(i32 noundef %i.mw, ptr noundef nonnull @.str.8) ; 3 uses
  %i.my = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.mz = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.na = tail call i32 %i.my(i32 noundef %i.mz, ptr noundef nonnull @.str.9) ; 2 uses
  %i.nb = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.nc = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.nd = tail call i32 %i.nb(i32 noundef %i.nc, ptr noundef nonnull @.str.10) ; 2 uses
  %i.ne = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.nf = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.ng = tail call i32 %i.ne(i32 noundef %i.nf, ptr noundef nonnull @.str.11)
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ni = load i8, ptr %i.nh, align 4, !tbaa !116, !range !68, !noundef !69
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.nk = load ptr, ptr @glad_glUniform1f, align 8, !tbaa !66
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !117
  tail call void %i.nk(i32 noundef %i.mo, float noundef %i.nm)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !118, !range !68, !noundef !69
  %i.np = trunc nuw i8 %i.no to i1
  %i.nq = load ptr, ptr @glad_glUniform1f, align 8, !tbaa !66
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !117
  tail call void %i.nq(i32 noundef %i.mo, float noundef %i.ns)
  br i1 %i.np, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.nu = load <2 x float>, ptr %i.nt, align 16, !tbaa !62, !noalias !119 ; 3 uses
  %i.nv = fmul <2 x float> %i.nu, %i.nu           ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !62, !noalias !119 ; 3 uses
  %i.ny = fmul float %i.nx, %i.nx
  %i.nz = extractelement <2 x float> %i.nv, i64 1
  %i.oa = fadd float %i.nz, %i.ny
  %i.ob = extractelement <2 x float> %i.nv, i64 0
  %i.oc = fadd float %i.ob, %i.oa                 ; 2 uses
  %i.od = fcmp ogt float %i.oc, 0.000000e+00
  br i1 %i.od, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.oe = tail call float @llvm.sqrt.f32(float %i.oc) ; 2 uses
  %i.of = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = fdiv <2 x float> %i.nu, %i.og
  store <2 x float> %i.oh, ptr %3, align 8, !tbaa !62, !alias.scope !119
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oj = fdiv float %i.nx, %i.oe
  store float %i.oj, ptr %i.oi, align 8, !tbaa !62, !alias.scope !119
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 16 dereferenceable(12) %i.nt, i64 12, i1 false), !tbaa.struct !122
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit: ; preds = %bb.j, %bb.k
  %i.ok = load ptr, ptr @glad_glUniform3fv, align 8, !tbaa !66
  call void %i.ok(i32 noundef %i.mr, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ol = load ptr, ptr @glad_glUniform3fv, align 8, !tbaa !66
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void %i.ol(i32 noundef %i.mr, i32 noundef 1, ptr noundef nonnull %i.om)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %i.on = phi i32 [ 0, %bb.l ], [ 1, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit ]
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !118, !range !68, !noundef !69
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.or = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.os = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.ot = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.ou = call i32 %i.os(i32 noundef %i.ot, ptr noundef nonnull @.str.12)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void %i.or(i32 noundef %i.ou, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.ov)
  %i.ow = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.ox = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.oy = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.oz = call i32 %i.ox(i32 noundef %i.oy, ptr noundef nonnull @.str.13)
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void %i.ow(i32 noundef %i.oz, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.pa)
  %i.pb = load ptr, ptr @glad_glActiveTexture, align 8, !tbaa !66
  call void %i.pb(i32 noundef 33985)
  %i.pc = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !66
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !123
  call void %i.pc(i32 noundef 3553, i32 noundef %i.pe)
  %i.pf = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.pg = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.ph = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.pi = call i32 %i.pg(i32 noundef %i.ph, ptr noundef nonnull @.str.14)
  call void %i.pf(i32 noundef %i.pi, i32 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.pj = load ptr, ptr @glad_glUniform1f, align 8, !tbaa !66
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !124
  call void %i.pj(i32 noundef %i.mu, float noundef %i.pl)
  %i.pm = load ptr, ptr @glad_glUniform4f, align 8, !tbaa !66
  call void %i.pm(i32 noundef %i.mx, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00)
  %i.pn = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.po = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.pp = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.pq = call i32 %i.po(i32 noundef %i.pp, ptr noundef nonnull @.str.15)
  call void %i.pn(i32 noundef %i.pq, i32 noundef %i.on)
  %i.pr = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.ps = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.pt = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.pu = call i32 %i.ps(i32 noundef %i.pt, ptr noundef nonnull @.str.16)
  %i.pv = load i8, ptr %i.oo, align 1, !tbaa !118, !range !68, !noundef !69
  %i.pw = zext nneg i8 %i.pv to i32
  call void %i.pr(i32 noundef %i.pu, i32 noundef %i.pw)
  %i.px = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.py = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.pz = load i32, ptr %i.lx, align 8, !tbaa !115
  %i.qa = call i32 %i.py(i32 noundef %i.pz, ptr noundef nonnull @.str.17)
  call void %i.px(i32 noundef %i.qa, i32 noundef 0)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !9
  %i.qd = icmp sgt i64 %i.qc, 0
  %.pre143 = load i32, ptr %0, align 16, !tbaa !125 ; 4 uses
  br i1 %i.qd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !126
  %i.qg = and i32 %.pre143, %i.qf
  %.not118 = icmp eq i32 %i.qg, 0
  br i1 %.not118, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.qh = load ptr, ptr @glad_glUniform1f, align 8, !tbaa !66
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !127
  %i.qk = and i32 %i.qj, %.pre143
  %.not119 = icmp eq i32 %i.qk, 0
  %i.ql = select i1 %.not119, float 0.000000e+00, float 1.000000e+00
  call void %i.qh(i32 noundef %i.na, float noundef %i.ql)
  %i.qm = load ptr, ptr @glad_glUniform1f, align 8, !tbaa !66
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !128
  %i.qp = load i32, ptr %0, align 16, !tbaa !125
  %i.qq = and i32 %i.qp, %i.qo
  %.not120 = icmp eq i32 %i.qq, 0
  %i.qr = select i1 %.not120, float 0.000000e+00, float 1.000000e+00
  call void %i.qm(i32 noundef %i.nd, float noundef %i.qr)
end_hunk_0
