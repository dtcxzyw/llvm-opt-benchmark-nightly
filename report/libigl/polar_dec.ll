Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/polar_dec?download=true
inline.NumInlined: 11948
inline.NumDeleted: 5626
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_NS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %.03251.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 7 uses
  %i.ad = sub i64 %i.t, %.03251.i                 ; 3 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = add nsw i64 %i.ae, %.03251.i            ; 6 uses
  %i.ag = icmp sgt i64 %.03251.i, 0
  br i1 %i.ag, label %.preheader39.loopexit.i, label %.preheader39.i

.preheader39.loopexit.i:                          ; preds = %.lr.ph54.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i
  %i.ai = mul nsw i64 %.03152.i, %i.g
  %invariant.gep41.i = getelementptr [8 x i8], ptr %i.e, i64 %i.ai
  %i.aj = mul nsw i64 %.03152.i, %i.t
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.v, i64 %i.aj
  %i.ak = load double, ptr %invariant.gep41.i, align 8, !tbaa !40
  %i.al = load double, ptr %i.ah, align 8, !tbaa !40
  %i.am = fdiv double 1.000000e+00, %i.al
  %i.an = fmul double %i.ak, %i.am
  store double %i.an, ptr %invariant.gep.i, align 8, !tbaa !40
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph54.i
  %i.ao = icmp sgt i64 %i.ad, 1
  br i1 %i.ao, label %.lr.ph44.i.preheader, label %.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.preheader39.i
  %i.ap = mul nsw i64 %.03152.i, %i.t
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.ap
  %i.aq = mul nsw i64 %.03152.i, %i.g
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.e, i64 %i.aq
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %.lr.ph44.i, %.preheader39.i
  %i.as = icmp slt i64 %i.af, %i.t
  br i1 %i.as, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.at = mul nsw i64 %.03152.i, %i.t
  %invariant.gep47.i = getelementptr [8 x i8], ptr %i.v, i64 %i.at ; 2 uses
  %i.au = mul nsw i64 %.03152.i, %i.g
  %invariant.gep49.i = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i ; 2 uses
  %i.aw = add i64 %.03251.i, %i.ae
  %i.ax = sub i64 %i.t, %i.aw                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %i.ay = mul i64 %.03152.i, %i.aa                ; 2 uses
  %i.az = shl i64 %i.ad, 3
  %i.ba = and i64 %i.az, -16                      ; 2 uses
  %i.bb = shl i64 %.03251.i, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.v, i64 %i.ay
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bb  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ab, i64 %i.ay  ; 2 uses
  %i.bg = mul i64 %.03152.i, %i.z                 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.e, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ba
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bb
  %i.bk = getelementptr i8, ptr %i.ac, i64 %i.bg
  %bound0 = icmp ult ptr %i.be, %i.bk
  %bound1 = icmp ult ptr %i.bj, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %i.be, %scevgep
  %bound145 = icmp ult ptr %i.d, %i.bf
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, -4                      ; 3 uses
  %i.bl = add i64 %i.af, %n.vec
  %i.bm = load double, ptr %i.av, align 8, !tbaa !40, !alias.scope !1128
  %i.bn = fdiv double 1.000000e+00, %i.bm
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = add i64 %i.af, %index                   ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %i.bo ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %i.bo ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %wide.load = load <2 x double>, ptr %i.bq, align 8, !tbaa !40, !alias.scope !1129
  %wide.load47 = load <2 x double>, ptr %i.br, align 8, !tbaa !40, !alias.scope !1129
  %i.bs = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bt = fmul <2 x double> %wide.load47, %broadcast.splat
  %i.bu = getelementptr i8, ptr %i.bp, i64 16
  store <2 x double> %i.bs, ptr %i.bp, align 8, !tbaa !40, !alias.scope !1130, !noalias !1131
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !40, !alias.scope !1130, !noalias !1131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph46.i ], [ %i.bl, %middle.block ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.02943.i = phi i64 [ %i.cc, %.lr.ph44.i ], [ %.03251.i, %.lr.ph44.i.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02943.i
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.02943.i
  %i.bw = load <2 x double>, ptr %gep30, align 1, !tbaa !62
  %i.bx = load double, ptr %i.ar, align 8, !tbaa !40
  %i.by = fdiv double 1.000000e+00, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.bw, %i.ca
  store <2 x double> %i.cb, ptr %gep, align 16, !tbaa !62
  %i.cc = add nsw i64 %.02943.i, 2                ; 2 uses
  %i.cd = icmp slt i64 %i.cc, %i.af
  br i1 %i.cd, label %.lr.ph44.i, label %.preheader.i, !llvm.loop !1125

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.ce = add nsw i64 %.03251.i, %i.w
  %i.cf = srem i64 %i.ce, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.cf)
  %i.cg = add nuw nsw i64 %.03152.i, 1            ; 2 uses
  %exitcond56.not.i = icmp eq i64 %i.cg, %i.u
  br i1 %exitcond56.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductIS5_NS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit, label %.lr.ph54.i, !llvm.loop !1126

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i64 [ %i.cl, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep48.i = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %.045.i
  %gep50.i = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %.045.i
  %i.ch = load double, ptr %gep50.i, align 8, !tbaa !40
  %i.ci = load double, ptr %i.av, align 8, !tbaa !40
  %i.cj = fdiv double 1.000000e+00, %i.ci
  %i.ck = fmul double %i.ch, %i.cj
  store double %i.ck, ptr %gep48.i, align 8, !tbaa !40
  %i.cl = add nsw i64 %.045.i, 1                  ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %i.t
  br i1 %i.cm, label %scalar.ph, label %._crit_edge.i, !llvm.loop !1127

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductIS5_NS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIKNS_7ProductIS6_NS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS5_IdLin1ELi1ELi0ELin1ELi1EEEEEEELi1EEELi1ELin1ELb0EEEEENS4_INSA_INS5_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEEEEvRKT_RKT0_RT1_RKNSZ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.3", align 8   ; 11 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %6 = alloca %"class.Eigen::internal::const_blas_data_mapper.595", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !189, !nonnull !75, !align !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = load ptr, ptr %1, align 8, !tbaa !187, !noalias !1136, !nonnull !75, !align !76 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190, !noalias !1136, !nonnull !75, !align !76
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.616.32.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.32.copyload = load i64, ptr %.sroa.8.32..sroa_idx, align 8 ; 5 uses
  %.sroa.917.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.917.32.copyload = load i64, ptr %.sroa.917.32..sroa_idx, align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.917.32.copyload, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.m, %.sroa.917.32.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.917.32.copyload, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.n = phi i64 [ %.pr.i.i.i.i.i.i, %.noexc.i.i ], [ %.sroa.917.32.copyload, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 7 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 6 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %.sroa.616.32.copyload ; 4 uses
  %min.iters.check = icmp ugt i64 %i.n, 3
  %ident.check.not = icmp eq i64 %i.k, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.s = shl i64 %.sroa.8.32.copyload, 3          ; 2 uses
  %i.t = shl i64 %.sroa.616.32.copyload, 3
  %i.u = add i64 %i.s, %i.i
  %i.v = add i64 %i.u, %i.t
  %i.w = sub i64 %i.v, %i.p
  %diff.check = icmp ugt i64 %i.w, -16
  %i.x = add i64 %i.s, %i.g
  %i.y = sub i64 %i.x, %i.p
  %diff.check24 = icmp ugt i64 %i.y, -16
  %conflict.rdx = or i1 %diff.check, %diff.check24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775806      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.aa = add nsw i64 %index, %.sroa.8.32.copyload ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.aa
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aa
  %wide.load25 = load <2 x double>, ptr %i.ac, align 8, !tbaa !40
  %i.ad = fdiv <2 x double> splat (double 1.000000e+00), %wide.load25
  %i.ae = fmul <2 x double> %wide.load, %i.ad
  store <2 x double> %i.ae, ptr %i.z, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.n, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i.ph
  %i.ah = add nsw i64 %.05.i.i.i.i.i.i.i.ph, %.sroa.8.32.copyload ; 2 uses
  %i.ai = mul nsw i64 %i.ah, %i.k
  %i.aj = getelementptr [8 x i8], ptr %i.r, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ah
  %i.am = load double, ptr %i.al, align 8, !tbaa !40
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fmul double %i.ak, %i.an
  store double %i.ao, ptr %i.ag, align 8, !tbaa !40
  %i.ap = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.n, %.neg
  br i1 %i.aq, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bk, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i
  %i.as = add nsw i64 %.05.i.i.i.i.i.i.i, %.sroa.8.32.copyload ; 2 uses
  %i.at = mul nsw i64 %i.as, %i.k
  %i.au = getelementptr [8 x i8], ptr %i.r, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !40
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.as
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !40
  %i.ay = fdiv double 1.000000e+00, %i.ax
  %i.az = fmul double %i.av, %i.ay
  store double %i.az, ptr %i.ar, align 8, !tbaa !40
  %i.ba = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ba
  %i.bc = add nsw i64 %i.ba, %.sroa.8.32.copyload ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.k
  %i.be = getelementptr [8 x i8], ptr %i.r, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bc
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !40
  %i.bi = fdiv double 1.000000e+00, %i.bh
  %i.bj = fmul double %i.bf, %i.bi
  store double %i.bj, ptr %i.bb, align 8, !tbaa !40
  %i.bk = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bk, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !1135

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.c ], [ %i.bx, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.bm) #21
  br label %common.resume

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.bn = load double, ptr %3, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !24
  store ptr %i.bs, ptr %5, align 8, !tbaa !131
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bp, ptr %i.bt, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.o, ptr %6, align 8, !tbaa !134
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bu, align 8, !tbaa !135
  %i.bv = load ptr, ptr %2, align 8, !tbaa !198
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.bp, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bv, i64 noundef 1, double noundef %i.bn)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bw = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.bw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.by = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.by) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, double noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %12) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"struct.Eigen::internal::gemm_pack_lhs.1332", align 1 ; 6 uses
  %14 = alloca %"struct.Eigen::internal::gemm_pack_rhs.1967", align 1 ; 4 uses
  %15 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 5 uses
  %16 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 14 uses
  %17 = alloca %"class.Eigen::internal::const_blas_data_mapper.595", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::internal::blas_data_mapper.1254", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %.sroa.speculated145 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !141  ; 2 uses
  %.sroa.speculated140 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.g = mul nsw i64 %.sroa.speculated145, %i.b   ; 4 uses
  %i.h = mul nsw i64 %.sroa.speculated140, %i.b   ; 4 uses
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99: ; preds = %bb.a
  %i.k = load ptr, ptr %11, align 8, !tbaa !147   ; 2 uses
  %.not89 = icmp eq ptr %i.k, null
  br i1 %.not89, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99
  %i.l = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.m = icmp samesign ult i64 %i.g, 16385
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.l, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99, %bb.d
  %i.s = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 5 uses
  %i.u = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.v = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.v, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148  ; 2 uses
  %.not90 = icmp eq ptr %i.x, null
  br i1 %.not90, label %bb.g, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_NS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %i.cd, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 12 uses
  %.03251.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 7 uses
  %i.ad = sub i64 %i.t, %.03251.i                 ; 3 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = add nsw i64 %i.ae, %.03251.i            ; 6 uses
  %i.ag = icmp sgt i64 %.03251.i, 0
  br i1 %i.ag, label %.preheader39.loopexit.i, label %.preheader39.i

.preheader39.loopexit.i:                          ; preds = %.lr.ph54.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i
  %i.ai = mul nsw i64 %.03152.i, %i.g
  %invariant.gep41.i = getelementptr [8 x i8], ptr %i.e, i64 %i.ai
  %i.aj = mul nsw i64 %.03152.i, %i.t
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.v, i64 %i.aj
  %i.ak = load double, ptr %invariant.gep41.i, align 8, !tbaa !40
  %i.al = load double, ptr %i.ah, align 8, !tbaa !40
  %i.am = fmul double %i.ak, %i.al
  store double %i.am, ptr %invariant.gep.i, align 8, !tbaa !40
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph54.i
  %i.an = icmp sgt i64 %i.ad, 1
  br i1 %i.an, label %.lr.ph44.i.preheader, label %.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.preheader39.i
  %i.ao = mul nsw i64 %.03152.i, %i.t
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.ao
  %i.ap = mul nsw i64 %.03152.i, %i.g
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.e, i64 %i.ap
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %.lr.ph44.i, %.preheader39.i
  %i.ar = icmp slt i64 %i.af, %i.t
  br i1 %i.ar, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.as = mul nsw i64 %.03152.i, %i.t
  %invariant.gep47.i = getelementptr [8 x i8], ptr %i.v, i64 %i.as ; 2 uses
  %i.at = mul nsw i64 %.03152.i, %i.g
  %invariant.gep49.i = getelementptr [8 x i8], ptr %i.e, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03152.i ; 2 uses
  %i.av = add i64 %.03251.i, %i.ae
  %i.aw = sub i64 %i.t, %i.av                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %i.ax = mul i64 %.03152.i, %i.aa                ; 2 uses
  %i.ay = shl i64 %i.ad, 3
  %i.az = and i64 %i.ay, -16                      ; 2 uses
  %i.ba = shl i64 %.03251.i, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.v, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.az
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ba  ; 2 uses
  %i.be = getelementptr i8, ptr %i.ab, i64 %i.ax  ; 2 uses
  %i.bf = mul i64 %.03152.i, %i.z                 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.e, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.az
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ba
  %i.bj = getelementptr i8, ptr %i.ac, i64 %i.bf
  %bound0 = icmp ult ptr %i.bd, %i.bj
  %bound1 = icmp ult ptr %i.bi, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %i.bd, %scevgep
  %bound145 = icmp ult ptr %i.d, %i.be
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.bk = add i64 %i.af, %n.vec
  %i.bl = load double, ptr %i.au, align 8, !tbaa !40, !alias.scope !1205
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add i64 %i.af, %index                   ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %i.bm ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %i.bm ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !40, !alias.scope !1206
  %wide.load47 = load <2 x double>, ptr %i.bp, align 8, !tbaa !40, !alias.scope !1206
  %i.bq = fmul <2 x double> %wide.load, %broadcast.splat
  %i.br = fmul <2 x double> %wide.load47, %broadcast.splat
  %i.bs = getelementptr i8, ptr %i.bn, i64 16
  store <2 x double> %i.bq, ptr %i.bn, align 8, !tbaa !40, !alias.scope !1207, !noalias !1208
  store <2 x double> %i.br, ptr %i.bs, align 8, !tbaa !40, !alias.scope !1207, !noalias !1208
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph46.i ], [ %i.bk, %middle.block ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.02943.i = phi i64 [ %i.bz, %.lr.ph44.i ], [ %.03251.i, %.lr.ph44.i.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02943.i
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.02943.i
  %i.bu = load <2 x double>, ptr %gep30, align 1, !tbaa !62
  %i.bv = load double, ptr %i.aq, align 8, !tbaa !40
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bu, %i.bx
  store <2 x double> %i.by, ptr %gep, align 16, !tbaa !62
  %i.bz = add nsw i64 %.02943.i, 2                ; 2 uses
  %i.ca = icmp slt i64 %i.bz, %i.af
  br i1 %i.ca, label %.lr.ph44.i, label %.preheader.i, !llvm.loop !1202

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.cb = add nsw i64 %.03251.i, %i.w
  %i.cc = srem i64 %i.cb, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.cc)
  %i.cd = add nuw nsw i64 %.03152.i, 1            ; 2 uses
  %exitcond56.not.i = icmp eq i64 %i.cd, %i.u
  br i1 %exitcond56.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductIS5_NS_15DiagonalWrapperIKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSG_.exit, label %.lr.ph54.i, !llvm.loop !1203

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i64 [ %i.ch, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep48.i = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %.045.i
  %gep50.i = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %.045.i
  %i.ce = load double, ptr %gep50.i, align 8, !tbaa !40
  %i.cf = load double, ptr %i.au, align 8, !tbaa !40
  %i.cg = fmul double %i.ce, %i.cf
  store double %i.cg, ptr %gep48.i, align 8, !tbaa !40
  %i.ch = add nsw i64 %.045.i, 1                  ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.t
  br i1 %i.ci, label %scalar.ph, label %._crit_edge.i, !llvm.loop !1204

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductIS5_NS_15DiagonalWrapperIKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSG_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIKNS_7ProductIS6_NS_15DiagonalWrapperIKNS5_IdLin1ELi1ELi0ELin1ELi1EEEEELi1EEELi1ELin1ELb0EEEEENS4_INSA_INS5_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEEEEvRKT_RKT0_RT1_RKNSU_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.3", align 8   ; 11 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %6 = alloca %"class.Eigen::internal::const_blas_data_mapper.595", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !189, !nonnull !75, !align !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.715.0.copyload = load i64, ptr %.sroa.715.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.715.0.copyload, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKS2_EELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKS2_EELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !22 ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !24 ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.i, %.sroa.715.0.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKS2_EELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.715.0.copyload, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKS2_EELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.j = phi i64 [ %.pr.i.i.i.i.i.i, %.noexc.i.i ], [ %.sroa.715.0.copyload, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKS2_EELi1EEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 7 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !22     ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = icmp sgt i64 %i.j, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %.sroa.5.0.copyload ; 4 uses
  %min.iters.check = icmp ugt i64 %i.j, 17
  %ident.check.not = icmp eq i64 %i.g, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.o = shl i64 %.sroa.6.0.copyload, 3           ; 2 uses
  %i.p = shl i64 %.sroa.5.0.copyload, 3
  %i.q = add i64 %i.o, %i.e
  %i.r = add i64 %i.q, %i.p
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %i.t = add i64 %i.o, %i.c
  %i.u = sub i64 %i.t, %i.l
  %diff.check22 = icmp ugt i64 %i.u, -32
  %conflict.rdx = or i1 %diff.check, %diff.check22
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.w = add nsw i64 %index, %.sroa.6.0.copyload  ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !40
  %wide.load23 = load <2 x double>, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load24 = load <2 x double>, ptr %i.z, align 8, !tbaa !40
  %wide.load25 = load <2 x double>, ptr %i.aa, align 8, !tbaa !40
  %i.ab = fmul <2 x double> %wide.load, %wide.load24
  %i.ac = fmul <2 x double> %wide.load23, %wide.load25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.ab, ptr %i.v, align 8, !tbaa !40
  store <2 x double> %i.ac, ptr %i.ad, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.ph
  %i.ag = add nsw i64 %.05.i.i.i.i.i.i.i.ph, %.sroa.6.0.copyload ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.g
  %i.ai = getelementptr [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !40
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ag
  %i.al = load double, ptr %i.ak, align 8, !tbaa !40
  %i.am = fmul double %i.aj, %i.al
  store double %i.am, ptr %i.af, align 8, !tbaa !40
  %i.an = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.j, %.neg
  br i1 %i.ao, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bg, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i
  %i.aq = add nsw i64 %.05.i.i.i.i.i.i.i, %.sroa.6.0.copyload ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.g
  %i.as = getelementptr [8 x i8], ptr %i.n, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !40
  %i.aw = fmul double %i.at, %i.av
  store double %i.aw, ptr %i.ap, align 8, !tbaa !40
  %i.ax = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ax
  %i.az = add nsw i64 %i.ax, %.sroa.6.0.copyload  ; 2 uses
  %i.ba = mul nsw i64 %i.az, %i.g
  %i.bb = getelementptr [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !40
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.az
  %i.be = load double, ptr %i.bd, align 8, !tbaa !40
  %i.bf = fmul double %i.bc, %i.be
  store double %i.bf, ptr %i.ay, align 8, !tbaa !40
  %i.bg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bg, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !1210

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.c ], [ %i.bt, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.bi) #21
  br label %common.resume

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.bj = load double, ptr %3, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !24
  store ptr %i.bo, ptr %5, align 8, !tbaa !131
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bl, ptr %i.bp, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.k, ptr %6, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bq, align 8, !tbaa !135
  %i.br = load ptr, ptr %2, align 8, !tbaa !198
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.bl, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.br, i64 noundef 1, double noundef %i.bj)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bs = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.bs) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bu = load ptr, ptr %4, align 8, !tbaa !22
  call void @free(ptr noundef %i.bu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ReverseIS3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1216, !nonnull !75, !align !76 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.i, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not8.i = icmp eq i64 %i.k, %i.g
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  %i.m = icmp eq i64 %i.g, 0
  %or.cond.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i64 9223372036854775807, %i.g
  %i.o = icmp sgt i64 %i.e, %i.n
  br i1 %i.o, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.q = mul nsw i64 %i.g, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.e, i64 noundef %i.g)
  %.pr = load i64, ptr %i.j, align 8, !tbaa !35
  %.pre = load i64, ptr %i.h, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.r = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.e, %bb.a ] ; 10 uses
  %i.s = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.u = and i64 %i.r, 1
  %i.v = icmp sgt i64 %i.s, 0
  br i1 %i.v, label %.lr.ph54.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ReverseIS5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.lr.ph54.i.preheader:                             ; preds = %bb.d
  %i.w = ptrtoaddr ptr %i.t to i64
  %i.x = add i64 %i.r, %i.e
  %i.y = shl i64 %i.x, 3
  %i.z = add i64 %i.g, 2305843009213693951
  %i.aa = mul i64 %i.e, %i.z
  %i.ab = shl i64 %i.aa, 3
  %i.ac = add i64 %i.ab, %i.c
  %i.ad = sub i64 %i.w, %i.ac
  %invariant.op = add i64 %i.ad, -1
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %i.bm, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 8 uses
  %.03251.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 6 uses
  %i.ae = sub i64 %i.r, %.03251.i                 ; 2 uses
end_hunk_1
