Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14220
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !38
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !71
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !71
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !71
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !965

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !197
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !198
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !71
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !71
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !71
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !71
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !38
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !71
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !71
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !966

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !197
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !198
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !71
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !71
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !38
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !71
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !967

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !197
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !198
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !38
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !38
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !968

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !38
  %i.is = load double, ptr %i.iq, align 8, !tbaa !38
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !969
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES7_EES7_EELi1ELin1ELb0EEEEENS4_INSB_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSX_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.54", align 8  ; 11 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %6 = alloca %"class.Eigen::internal::const_blas_data_mapper.1128", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !184, !nonnull !59, !align !60 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !51, !noalias !980 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182, !noalias !980, !nonnull !59, !align !60 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.758.48.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.48.copyload = load i64, ptr %.sroa.9.48..sroa_idx, align 8 ; 5 uses
  %.sroa.1060.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.1060.48.copyload = load i64, ptr %.sroa.1060.48..sroa_idx, align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.1060.48.copyload, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEESF_EELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEESF_EELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %.sroa.1060.48.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEESF_EELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.1060.48.copyload, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !73
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEESF_EELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.m = phi i64 [ %.pr.i.i.i.i.i.i, %.noexc.i.i ], [ %.sroa.1060.48.copyload, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEESF_EELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 7 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !74     ; 6 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit66

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %.sroa.758.48.copyload ; 4 uses
  %min.iters.check = icmp ugt i64 %i.m, 11
  %ident.check.not = icmp eq i64 %i.j, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.r = add i64 %.sroa.758.48.copyload, %.sroa.9.48.copyload
  %i.s = shl i64 %i.r, 3
  %i.t = add i64 %i.s, %i.h
  %i.u = sub i64 %i.t, %i.o
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.9.48.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !38
  %wide.load71 = load <2 x double>, ptr %i.w, align 8, !tbaa !38
  %i.x = fmul <2 x double> %broadcast.splat, %wide.load
  %i.y = fmul <2 x double> %broadcast.splat, %wide.load71
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.x, ptr %i.v, align 8, !tbaa !38
  store <2 x double> %i.y, ptr %i.z, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !972

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit66, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i.i.i.i.i.i.i.ph
  %i.ac = add nsw i64 %.05.i.i.i.i.i.i.i.ph, %.sroa.9.48.copyload
  %i.ad = mul nsw i64 %i.ac, %i.j
  %i.ae = getelementptr [8 x i8], ptr %i.q, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !38
  %i.ag = fmul double %i.c, %i.af
  store double %i.ag, ptr %i.ab, align 8, !tbaa !38
  %i.ah = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.m, %.neg
  br i1 %i.ai, label %.loopexit66, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.aw, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i.i.i.i.i.i.i
  %i.ak = add nsw i64 %.05.i.i.i.i.i.i.i, %.sroa.9.48.copyload
  %i.al = mul nsw i64 %i.ak, %i.j
  %i.am = getelementptr [8 x i8], ptr %i.q, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !38
  %i.ao = fmul double %i.c, %i.an
  store double %i.ao, ptr %i.aj, align 8, !tbaa !38
  %i.ap = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ap
  %i.ar = add nsw i64 %i.ap, %.sroa.9.48.copyload
  %i.as = mul nsw i64 %i.ar, %i.j
  %i.at = getelementptr [8 x i8], ptr %i.q, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !38
  %i.av = fmul double %i.c, %i.au
  store double %i.av, ptr %i.aq, align 8, !tbaa !38
  %i.aw = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.aw, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %.loopexit66, label %scalar.ph, !llvm.loop !973

common.resume:                                    ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit44, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.c ], [ %.pn29.pn.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit44 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %4, align 8, !tbaa !74
  call void @free(ptr noundef %i.ay) #20
  br label %common.resume

.loopexit66:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.az = load double, ptr %3, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !44 ; 10 uses
  %i.bc = icmp ugt i64 %i.bb, 2305843009213693951
  br i1 %i.bc, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %.loopexit66
  %i.bd = shl nuw i64 %i.bb, 3                    ; 2 uses
  %i.be = icmp samesign ugt i64 %i.bb, 16384      ; 4 uses
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.bf = call noalias ptr @malloc(i64 noundef %i.bd) #22 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.invoke, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.invoke:                                          ; preds = %bb.d, %.loopexit66
  %i.bi = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bi, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.bj = add nuw nsw i64 %i.bd, 15
  %i.bk = alloca i8, i64 %i.bj, align 16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.bm = phi ptr [ %i.bh, %.thread ], [ %i.bl, %bb.e ] ; 4 uses
  %i.bn = phi ptr [ %i.bf, %.thread ], [ %i.bk, %bb.e ] ; 9 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !210   ; 6 uses
  %.pn = load ptr, ptr %i.bm, align 8, !tbaa !213, !nonnull !59, !align !60
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.bp = load i64, ptr %.in, align 8, !tbaa !34  ; 6 uses
  %min.iters.check75 = icmp ugt i64 %i.bb, 3
  %ident.check73.not = icmp eq i64 %i.bp, 1
  %or.cond104 = select i1 %min.iters.check75, i1 %ident.check73.not, i1 false
  br i1 %or.cond104, label %vector.ph76, label %.lr.ph.i.i.i.i.i.i.i.i.preheader109

vector.ph76:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec77 = and i64 %i.bb, 2305843009213693948   ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body78 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index79 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %index79 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load80 = load <2 x double>, ptr %i.br, align 8, !tbaa !38
  %wide.load81 = load <2 x double>, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> %wide.load80, ptr %i.bq, align 8, !tbaa !38
  store <2 x double> %wide.load81, ptr %i.bt, align 8, !tbaa !38
  %index.next82 = add nuw i64 %index79, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.bu, label %middle.block83, label %vector.body78, !llvm.loop !974

middle.block83:                                   ; preds = %vector.body78
  %cmp.n84 = icmp eq i64 %i.bb, %n.vec77
  br i1 %cmp.n84, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader109

.lr.ph.i.i.i.i.i.i.i.i.preheader109:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block83
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec77, %middle.block83 ] ; 3 uses
  %xtraiter110 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader109 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader109 ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.bp
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !38
  store double %i.by, ptr %i.bv, align 8, !tbaa !38
  %i.bz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter110
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !975

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader109
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader109 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ca = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.bb
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05.i.i.i.i.i.i.i.i
  %i.cd = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.bp
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !38
  store double %i.cf, ptr %i.cc, align 8, !tbaa !38
  %i.cg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cg
  %i.ci = mul nsw i64 %i.cg, %i.bp
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !38
  store double %i.ck, ptr %i.ch, align 8, !tbaa !38
  %i.cl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cl
  %i.cn = mul nsw i64 %i.cl, %i.bp
end_hunk_0
