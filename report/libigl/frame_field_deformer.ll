Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/frame_field_deformer?download=true
inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN3igl20Frame_field_deformer14precompute_optEv:bb.a
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !84
  %i.dt = fmul double %i.az, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !84
  %i.dw = fmul double %i.ay, %i.dv
  %i.dx = fadd double %i.dt, %i.dw
  store double %i.dx, ptr %i.dq, align 8, !tbaa !84
  %i.dy = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dy, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EESC_EESG_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !141

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.011.i.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.011.i.i.i.i.i.i.i.i
  %i.eb = load <2 x double>, ptr %i.ea, align 16, !tbaa !91
  %i.ec = fmul <2 x double> %i.cb, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.011.i.i.i.i.i.i.i.i
  %i.ee = load <2 x double>, ptr %i.ed, align 16, !tbaa !91
  %i.ef = fmul <2 x double> %i.cc, %i.ee
  %i.eg = fadd <2 x double> %i.ec, %i.ef
  store <2 x double> %i.eg, ptr %i.dz, align 16, !tbaa !91
  %i.eh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bz
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !142

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EESC_EESG_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !38, !range !143, !noundef !144
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EESC_EESG_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb1EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(185) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %_ZN5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit unwind label %bb.s

bb.q:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EESC_EESG_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb0EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(185) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %_ZN5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit unwind label %bb.s

_ZN5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit: ; preds = %bb.p, %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !20
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !145
  %i.eq = call i64 @fwrite(ptr nonnull @.str, i64 42, i64 1, ptr %i.ep) #32 ; 0 uses
  call void @exit(i32 noundef -1) #33
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.j, %bb.i, %bb.h, %bb.g
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.k
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ac

bb.u:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %_ZN5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !145
  %i.ev = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.eu) ; 0 uses
  %i.ew = load ptr, ptr %4, align 8, !tbaa !62
  call void @free(ptr noundef %i.ew) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ex = load ptr, ptr %i.x, align 8, !tbaa !66
  call void @free(ptr noundef %i.ex) #27
  %i.ey = load ptr, ptr %i.ac, align 8, !tbaa !67
  call void @free(ptr noundef %i.ey) #27
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !68 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.fa) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !69 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.fd) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ff = load ptr, ptr %2, align 8, !tbaa !62
  call void @free(ptr noundef %i.ff) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.fg = load ptr, ptr %i.p, align 8, !tbaa !66
  call void @free(ptr noundef %i.fg) #27
  %i.fh = load ptr, ptr %i.u, align 8, !tbaa !67
  call void @free(ptr noundef %i.fh) #27
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !68 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !69 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit23, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit23

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit23:       ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.ac:                                            ; preds = %bb.u, %bb.t, %bb.s
  %.pn11 = phi { ptr, i32 } [ %i.er, %bb.s ], [ %i.es, %bb.t ], [ %i.et, %bb.u ]
  %i.fo = load ptr, ptr %4, align 8, !tbaa !62
  call void @free(ptr noundef %i.fo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #27
  br label %.body

.body:                                            ; preds = %bb.f, %bb.ac
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11, %bb.ac ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.fp = load ptr, ptr %2, align 8, !tbaa !62
  call void @free(ptr noundef %i.fp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20Frame_field_deformer8optimizeEib(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl20Frame_field_deformer9reset_optEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.d ]
  tail call void @_ZN3igl20Frame_field_deformer25compute_optimal_rotationsEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  tail call void @_ZN3igl20Frame_field_deformer25compute_optimal_positionsEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  tail call void @_ZN3igl20Frame_field_deformer13computeXFieldERSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = add nuw nsw i32 %.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !147
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20Frame_field_deformer25compute_optimal_rotationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i98 = alloca [4 x double], align 16 ; 7 uses
  %.sroa.4.i.i.i.i90 = alloca [4 x double], align 16 ; 7 uses
  %.sroa.4.i.i.i.i82 = alloca [4 x double], align 16 ; 7 uses
  %1 = alloca %"struct.Eigen::internal::evaluator.689", align 16 ; 14 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.697", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.701", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.672", align 8 ; 13 uses
  %.sroa.4.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.7479 = alloca [4 x double], align 16     ; 7 uses
  %6 = alloca %"class.Eigen::Matrix.147", align 8 ; 12 uses
  %7 = alloca %"class.Eigen::Matrix.147", align 16 ; 15 uses
  %.sroa.0458 = alloca [4 x double], align 16     ; 8 uses
  %8 = alloca %"class.Eigen::JacobiSVD", align 16 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7479)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0458)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = ptrtoint ptr %7 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 180
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.4449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.5450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.6451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.7452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 104
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 120
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 128
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 136
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.0458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0458, i64 24
  %.sroa.0458.8..sroa_idx503 = getelementptr inbounds nuw i8, ptr %.sroa.0458, i64 8
  %.sroa.0458.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0458, i64 8
  %.sroa.0458.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0458, i64 16
  %.sroa.4.i.i.i.i82.8.i.i.i.i82.8.i.i.i.i82.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i82, i64 8
  %.sroa.4.i.i.i.i82.24.i.i.i.i82.24.i.i.i.i82.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i82, i64 24
  %.sroa.4.i.i.i.i82.16.i.i.i.i82.16.i.i.i.i82.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i82, i64 16
  %.sroa.7479.16..sroa_idx504 = getelementptr inbounds nuw i8, ptr %.sroa.7479, i64 16
  %.sroa.4.i.i.i.i90.8.i.i.i.i90.8.i.i.i.i90.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i90, i64 8
  %.sroa.4.i.i.i.i90.24.i.i.i.i90.24.i.i.i.i90.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i90, i64 24
  %.sroa.4.i.i.i.i90.16.i.i.i.i90.16.i.i.i.i90.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i90, i64 16
  %.sroa.7479.16..sroa_idx505 = getelementptr inbounds nuw i8, ptr %.sroa.7479, i64 16
  %.sroa.7479.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7479, i64 8
  %.sroa.4.i.i.i.i98.8.i.i.i.i98.8.i.i.i.i98.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i98, i64 8
  %.sroa.4.i.i.i.i98.24.i.i.i.i98.24.i.i.i.i98.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i98, i64 24
  %.sroa.4.i.i.i.i98.16.i.i.i.i98.16.i.i.i.i98.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i98, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0458)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7479)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.bb = phi i64 [ %i.b, %.lr.ph ], [ %i.oz, %bb.d ] ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %indvars.iv ; 4 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !95
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %0, align 8, !tbaa !62, !noalias !148 ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bg ; 4 uses
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !95
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk ; 4 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !80  ; 4 uses
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !84
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !84
  %i.bp = fsub double %i.bn, %i.bo
  store double %i.bp, ptr %7, align 16, !tbaa !84
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !84
  %i.bt = load double, ptr %i.br, align 8, !tbaa !84
  %i.bu = fsub double %i.bs, %i.bt
  store double %i.bu, ptr %i.f, align 8, !tbaa !84
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bm, 4 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !84
  %i.by = load double, ptr %i.bw, align 8, !tbaa !84
  %i.bz = fsub double %i.bx, %i.by
  store double %i.bz, ptr %i.g, align 16, !tbaa !84
  %.idx = shl i64 %i.bb, 3
  %i.ca = getelementptr i8, ptr %i.bd, i64 %.idx  ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !95
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cc ; 4 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !84
  %i.cf = load double, ptr %i.bi, align 8, !tbaa !84
  %i.cg = fsub double %i.ce, %i.cf
  store double %i.cg, ptr %i.h, align 8, !tbaa !84
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bm ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !84
  %i.cj = load double, ptr %i.bq, align 8, !tbaa !84
  %i.ck = fsub double %i.ci, %i.cj                ; 3 uses
  store double %i.ck, ptr %i.i, align 16, !tbaa !84
  %i.cl = getelementptr inbounds i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !84
  %i.cn = load double, ptr %i.bv, align 8, !tbaa !84
  %i.co = fsub double %i.cm, %i.cn                ; 3 uses
  store double %i.co, ptr %i.j, align 8, !tbaa !84
  %i.cp = load double, ptr %i.bl, align 8, !tbaa !84
  %i.cq = load double, ptr %i.cd, align 8, !tbaa !84
  %i.cr = fsub double %i.cp, %i.cq                ; 3 uses
  store double %i.cr, ptr %i.k, align 16, !tbaa !84
  %i.cs = load double, ptr %i.br, align 8, !tbaa !84
  %i.ct = load double, ptr %i.ch, align 8, !tbaa !84
  %i.cu = fsub double %i.cs, %i.ct                ; 3 uses
  store double %i.cu, ptr %i.l, align 8, !tbaa !84
  %i.cv = load double, ptr %i.bw, align 8, !tbaa !84
  %i.cw = load double, ptr %i.cl, align 8, !tbaa !84
  %i.cx = fsub double %i.cv, %i.cw                ; 3 uses
  store double %i.cx, ptr %i.m, align 16, !tbaa !84
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr %i.cy, i64 %indvars.iv ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = load <2 x double>, ptr %i.cz, align 1, !tbaa !91 ; 3 uses
  %i.db = load <2 x double>, ptr %7, align 16     ; 2 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.df = load <2 x double>, ptr %i.de, align 1, !tbaa !91 ; 3 uses
  %i.dg = load <2 x double>, ptr %i.f, align 8    ; 2 uses
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.df, %i.dh
  %i.dj = fadd <2 x double> %i.dd, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dl = load <2 x double>, ptr %i.dk, align 1, !tbaa !91 ; 3 uses
  %i.dm = load <2 x double>, ptr %i.g, align 16   ; 3 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dl, %i.dn
  %i.dp = fadd <2 x double> %i.dj, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !84 ; 3 uses
  %i.ds = extractelement <2 x double> %i.db, i64 0
  %i.dt = fmul double %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dv = load double, ptr %i.du, align 8, !tbaa !84 ; 3 uses
  %i.dw = extractelement <2 x double> %i.dg, i64 0
  %i.dx = fmul double %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !84 ; 3 uses
  %i.ea = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fmul <2 x double> %i.da, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.df, %i.ed
  %i.ef = fadd <2 x double> %i.eb, %i.ee
  %i.eg = insertelement <2 x double> poison, double %i.co, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.dl, %i.eh
  %i.ej = fadd <2 x double> %i.ef, %i.ei
  store <2 x double> %i.ej, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !91
  %i.ek = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.dr, i64 1
  %i.em = fmul <2 x double> %i.dm, %i.el          ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = fadd double %i.dx, %i.en
  %i.ep = fadd double %i.dt, %i.eo
  store double %i.ep, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !84
  %i.eq = fmul double %i.dv, %i.ck
  %i.er = fmul double %i.dz, %i.co
  %i.es = fadd double %i.eq, %i.er
  %i.et = extractelement <2 x double> %i.em, i64 1
  %i.eu = fadd double %i.et, %i.es
  store double %i.eu, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !84
  %i.ev = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.ew, %i.da
  %i.ey = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.df, %i.ez
  %i.fb = fadd <2 x double> %i.ex, %i.fa
  %i.fc = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x double> %i.dl, %i.fd
  %i.ff = fadd <2 x double> %i.fb, %i.fe
  %i.fg = fmul double %i.cr, %i.dr
  %i.fh = fmul double %i.dv, %i.cu
  %i.fi = fmul double %i.dz, %i.cx
  %i.fj = fadd double %i.fh, %i.fi
  %i.fk = fadd double %i.fg, %i.fj
  store <2 x double> %i.dp, ptr %7, align 16, !tbaa !91
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !91
  store <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, ptr %i.g, align 16, !tbaa !91
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !91
  store <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, ptr %i.i, align 16, !tbaa !91
  store <2 x double> %i.ff, ptr %i.k, align 16, !tbaa !91
  store double %i.fk, ptr %i.m, align 16, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.fl = load i32, ptr %i.be, align 4, !tbaa !95
  %i.fm = sext i32 %i.fl to i64
  %i.fn = load ptr, ptr %i.o, align 8, !tbaa !62, !noalias !151 ; 3 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fm ; 3 uses
  %i.fp = load i32, ptr %i.bd, align 4, !tbaa !95
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fq ; 3 uses
  %i.fs = load i64, ptr %i.p, align 8, !tbaa !80  ; 4 uses
  %i.ft = load double, ptr %i.fo, align 8, !tbaa !84 ; 2 uses
  %i.fu = load double, ptr %i.fr, align 8, !tbaa !84 ; 2 uses
  %i.fv = fsub double %i.ft, %i.fu
  %.sroa.0469.0.vec.insert = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fs
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !84 ; 2 uses
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !84 ; 2 uses
  %i.ga = fsub double %i.fy, %i.fz
  %.sroa.0469.8.vec.insert = insertelement <2 x double> %.sroa.0469.0.vec.insert, double %i.ga, i64 1 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i37 = shl nsw i64 %i.fs, 4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i37
  %i.gc = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i37
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !84 ; 2 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !84 ; 2 uses
  %i.gf = fsub double %i.gd, %i.ge                ; 3 uses
  %i.gg = load i32, ptr %i.ca, align 4, !tbaa !95
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.gh ; 3 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !84 ; 2 uses
  %i.gk = fsub double %i.gj, %i.ft
  %.sroa.6472.24.vec.insert = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.fs
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !84 ; 2 uses
  %i.gn = fsub double %i.gm, %i.fy
  %.sroa.6472.32.vec.insert = insertelement <2 x double> %.sroa.6472.24.vec.insert, double %i.gn, i64 1 ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.gi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i37
  %i.gp = load double, ptr %i.go, align 8, !tbaa !84 ; 2 uses
  %i.gq = fsub double %i.gp, %i.gd                ; 3 uses
  %i.gr = fsub double %i.fu, %i.gj
  %.sroa.11475.48.vec.insert = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gs = fsub double %i.fz, %i.gm
  %.sroa.11475.56.vec.insert = insertelement <2 x double> %.sroa.11475.48.vec.insert, double %i.gs, i64 1 ; 3 uses
  %i.gt = fsub double %i.ge, %i.gp                ; 3 uses
  %i.gu = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.gv = load i64, ptr %i.r, align 8, !tbaa !80  ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gu, i64 %indvars.iv ; 3 uses
  %.idx445.a = shl i64 %i.gv, 4
  %i.gx = getelementptr i8, ptr %i.gw, i64 %.idx445.a
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !84, !noalias !154
  store double %i.gy, ptr %.sroa.0458, align 16, !tbaa !84, !noalias !154
  store double 0.000000e+00, ptr %.sroa.0458.24..sroa_idx, align 8, !tbaa !84
  %i.gz = load double, ptr %i.gw, align 8, !tbaa !84 ; 2 uses
  store <2 x double> zeroinitializer, ptr %.sroa.0458.8..sroa_idx503, align 8, !tbaa !84
  %i.ha = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %.sroa.0458.0..sroa.0458.0..sroa.0458.0. = load <2 x double>, ptr %.sroa.0458, align 16 ; 2 uses
  %i.hc = shufflevector <2 x double> %.sroa.0458.0..sroa.0458.0..sroa.0458.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x double> %.sroa.0469.8.vec.insert, %i.hc
  %.sroa.0458.8..sroa.0458.8..sroa.0458.8. = load <2 x double>, ptr %.sroa.0458.8..sroa_idx, align 8 ; 2 uses
  %i.he = shufflevector <2 x double> %.sroa.0458.8..sroa.0458.8..sroa.0458.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x double> %.sroa.6472.32.vec.insert, %i.he
  %i.hg = fadd <2 x double> %i.hd, %i.hf
  %.sroa.0458.16..sroa.0458.16..sroa.0458.16. = load <2 x double>, ptr %.sroa.0458.16..sroa_idx, align 16 ; 4 uses
  %i.hh = shufflevector <2 x double> %.sroa.0458.16..sroa.0458.16..sroa.0458.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x double> %.sroa.11475.56.vec.insert, %i.hh
  %i.hj = fadd <2 x double> %i.hg, %i.hi
  store <2 x double> %i.hj, ptr %1, align 16, !tbaa !91
  %i.hk = extractelement <2 x double> %.sroa.0458.0..sroa.0458.0..sroa.0458.0., i64 0
  %i.hl = fmul double %i.gf, %i.hk
  %i.hm = extractelement <2 x double> %.sroa.0458.8..sroa.0458.8..sroa.0458.8., i64 0
  %i.hn = fmul double %i.hm, %i.gq
  %i.ho = extractelement <2 x double> %.sroa.0458.16..sroa.0458.16..sroa.0458.16., i64 0
  %i.hp = fmul double %i.ho, %i.gt
  %i.hq = fadd double %i.hn, %i.hp
  %i.hr = fadd double %i.hl, %i.hq
  store double %i.hr, ptr %i.t, align 16, !tbaa !84
  %i.hs = extractelement <2 x double> %.sroa.0458.16..sroa.0458.16..sroa.0458.16., i64 1
  %i.ht = shufflevector <2 x double> %.sroa.0458.16..sroa.0458.16..sroa.0458.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x double> %.sroa.0469.8.vec.insert, %i.ht
  %i.hv = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %.sroa.6472.32.vec.insert, %i.hw
  %i.hy = fadd <2 x double> %i.hu, %i.hx
  %i.hz = fmul <2 x double> %.sroa.11475.56.vec.insert, zeroinitializer
  %i.ia = fadd <2 x double> %i.hy, %i.hz
  store <2 x double> %i.ia, ptr %i.u, align 8, !tbaa !91
  %i.ib = fmul double %i.gf, %i.hs
  %i.ic = fmul double %i.gq, %i.gz
  %i.id = fmul double %i.gt, 0.000000e+00
  %i.ie = fadd double %i.ic, %i.id
  %i.if = fadd double %i.ib, %i.ie
  store double %i.if, ptr %i.v, align 8, !tbaa !84
  %i.ig = fmul <2 x double> %.sroa.0469.8.vec.insert, zeroinitializer
  %i.ih = fmul <2 x double> %.sroa.6472.32.vec.insert, zeroinitializer
  %i.ii = fadd <2 x double> %i.ig, %i.ih
  %i.ij = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x double> %.sroa.11475.56.vec.insert, %i.ik
  %i.im = fadd <2 x double> %i.ii, %i.il
  store <2 x double> %i.im, ptr %i.w, align 16, !tbaa !91
  %i.in = fmul double %i.gf, 0.000000e+00
  %i.io = fmul double %i.gq, 0.000000e+00
  %i.ip = fmul double %i.gt, %i.hb
  %i.iq = fadd double %i.io, %i.ip
  %i.ir = fadd double %i.in, %i.iq
  store double %i.ir, ptr %i.x, align 16, !tbaa !84
  store i64 %i.s, ptr %i.y, align 8
  store ptr %1, ptr %i.z, align 16, !tbaa !157
  store ptr %7, ptr %i.aa, align 8, !tbaa !157
  store i64 3, ptr %i.ab, align 16, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %5, ptr %2, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !170
  store ptr %1, ptr %i.ac, align 8, !tbaa !172
  store ptr %4, ptr %i.ad, align 8, !tbaa !174
  store ptr %5, ptr %i.ae, align 8, !tbaa !176
  call void @_ZN5Eigen8internal55copy_using_evaluator_DefaultTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi1ELi3ELi3EEEEENS3_INS_7ProductINS7_INS4_IdLi3ELi3ELi0ELi3ELi3EEES8_Li0EEENS_9TransposeIS8_EELi1EEEEENS0_9assign_opIddEELi0EEELi0ELi9EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.is = load double, ptr %5, align 8, !tbaa !84
  store double %i.is, ptr %6, align 8, !tbaa !84
  %i.it = load double, ptr %i.ag, align 8, !tbaa !84
  store double %i.it, ptr %i.af, align 8, !tbaa !84
  %i.iu = load double, ptr %i.ai, align 8, !tbaa !84
  store double %i.iu, ptr %i.ah, align 8, !tbaa !84
  %i.iv = load double, ptr %i.ak, align 8, !tbaa !84
  store double %i.iv, ptr %i.aj, align 8, !tbaa !84
  %i.iw = load double, ptr %i.am, align 8, !tbaa !84
  store double %i.iw, ptr %i.al, align 8, !tbaa !84
  %i.ix = load double, ptr %i.ao, align 8, !tbaa !84
  store double %i.ix, ptr %i.an, align 8, !tbaa !84
  %i.iy = load double, ptr %i.aq, align 8, !tbaa !84
  store double %i.iy, ptr %i.ap, align 8, !tbaa !84
  %i.iz = load double, ptr %i.as, align 8, !tbaa !84
  store double %i.iz, ptr %i.ar, align 8, !tbaa !84
  %i.ja = load double, ptr %i.au, align 8, !tbaa !84
  store double %i.ja, ptr %i.at, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 0, ptr %i.aw, align 4, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.av, i8 0, i64 11, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ax, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.ay, align 16, !tbaa !184
  %i.jb = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 8 dereferenceable(376) %8, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef 20) ; 0 uses
  %.sroa.0448.0.copyload = load <2 x double>, ptr %8, align 16 ; 3 uses
  %.sroa.4449.0.copyload = load double, ptr %.sroa.4449.0..sroa_idx, align 16 ; 3 uses
  %.sroa.5450.0.copyload = load <2 x double>, ptr %.sroa.5450.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6451.0.copyload = load double, ptr %.sroa.6451.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7452.0.copyload = load <2 x double>, ptr %.sroa.7452.0..sroa_idx, align 16 ; 6 uses
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !91 ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.az, align 8 ; 2 uses
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 16 ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 16 ; 2 uses
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 16 ; 2 uses
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i82)
  %i.jc = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x double> %.sroa.0448.0.copyload, %i.jd
  %i.jf = insertelement <2 x double> poison, double %.sroa.6.0.copyload, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %.sroa.5450.0.copyload, %i.jg
  %i.ji = fadd <2 x double> %i.je, %i.jh          ; 2 uses
  %i.jj = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul <2 x double> %.sroa.7452.0.copyload, %i.jk
  %i.jm = fadd <2 x double> %i.ji, %i.jl          ; 4 uses
  %i.jn = fmul double %.sroa.0.0.copyload, %.sroa.4449.0.copyload ; 2 uses
  %i.jo = fmul double %.sroa.6.0.copyload, %.sroa.6451.0.copyload ; 2 uses
  %i.jp = fmul double %.sroa.9.0.copyload, %.sroa.13.0.copyload ; 2 uses
  %i.jq = fadd double %i.jo, %i.jp
  %i.jr = fadd double %i.jn, %i.jq
  store double %i.jr, ptr %.sroa.4.i.i.i.i82, align 16, !tbaa !84
  %i.js = insertelement <2 x double> poison, double %.sroa.4.0.copyload, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x double> %.sroa.0448.0.copyload, %i.jt
  %i.jv = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %.sroa.5450.0.copyload, %i.jw
  %i.jy = fadd <2 x double> %i.ju, %i.jx          ; 2 uses
  %i.jz = insertelement <2 x double> poison, double %.sroa.10.0.copyload, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = fmul <2 x double> %.sroa.7452.0.copyload, %i.ka
  %i.kc = fadd <2 x double> %i.jy, %i.kb
  store <2 x double> %i.kc, ptr %.sroa.4.i.i.i.i82.8.i.i.i.i82.8.i.i.i.i82.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !91
  %i.kd = fmul double %.sroa.4449.0.copyload, %.sroa.4.0.copyload ; 2 uses
  %i.ke = fmul double %.sroa.6451.0.copyload, %.sroa.7.0.copyload ; 2 uses
  %i.kf = fmul double %.sroa.13.0.copyload, %.sroa.10.0.copyload ; 2 uses
  %i.kg = fadd double %i.ke, %i.kf
  %i.kh = fadd double %i.kd, %i.kg
  store double %i.kh, ptr %.sroa.4.i.i.i.i82.24.i.i.i.i82.24.i.i.i.i82.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !84
  %i.ki = insertelement <2 x double> poison, double %.sroa.5.0.copyload, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x double> %.sroa.0448.0.copyload, %i.kj
  %i.kl = insertelement <2 x double> poison, double %.sroa.8.0.copyload, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x double> %.sroa.5450.0.copyload, %i.km
  %i.ko = fadd <2 x double> %i.kk, %i.kn          ; 2 uses
  %i.kp = insertelement <2 x double> poison, double %.sroa.11.0.copyload, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kr = fmul <2 x double> %.sroa.7452.0.copyload, %i.kq
  %i.ks = fadd <2 x double> %i.ko, %i.kr          ; 4 uses
  %i.kt = fmul double %.sroa.4449.0.copyload, %.sroa.5.0.copyload ; 2 uses
  %i.ku = fmul double %.sroa.6451.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.kv = fmul double %.sroa.13.0.copyload, %.sroa.11.0.copyload ; 2 uses
  %i.kw = fadd double %i.ku, %i.kv
  %i.kx = fadd double %i.kt, %i.kw                ; 3 uses
  %.sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i85 = load <2 x double>, ptr %.sroa.4.i.i.i.i82, align 16, !tbaa !91 ; 4 uses
  store <2 x double> %.sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i85, ptr %.sroa.7479, align 16, !tbaa !91
  %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87 = load <2 x double>, ptr %.sroa.4.i.i.i.i82.16.i.i.i.i82.16.i.i.i.i82.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !91 ; 5 uses
  store <2 x double> %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87, ptr %.sroa.7479.16..sroa_idx504, align 16, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i82)
  %.sroa.18.56.vec.extract = extractelement <2 x double> %i.ks, i64 1
  %i.ky = extractelement <2 x double> %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87, i64 1
  %i.kz = extractelement <2 x double> %.sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i85, i64 1
  %.sroa.0477.8.vec.extract = extractelement <2 x double> %i.jm, i64 1
  %i.la = extractelement <2 x double> %.sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i85, i64 0 ; 2 uses
  %i.lb = shufflevector <2 x double> %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87, <2 x double> %.sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.i82.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i85, <2 x i32> <i32 1, i32 2>
  %i.lc = fneg <2 x double> %i.lb
  %i.ld = fneg double %i.la
  %i.le = fmul double %.sroa.18.56.vec.extract, %i.ld
  %i.lf = call double @llvm.fmuladd.f64(double %.sroa.0477.8.vec.extract, double %i.kx, double %i.le)
  %i.lg = fmul double %i.kz, %i.lf
  %i.lh = shufflevector <2 x double> %i.ks, <2 x double> %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87, <2 x i32> <i32 1, i32 2>
  %i.li = fmul <2 x double> %i.lh, %i.lc
  %i.lj = insertelement <2 x double> %i.jm, double %i.kx, i64 0
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.i82.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i87, <2 x double> %i.lj, <2 x double> %i.li)
  %i.ll = shufflevector <2 x double> %i.jm, <2 x double> %i.ks, <2 x i32> <i32 0, i32 2>
  %i.lm = fmul <2 x double> %i.ll, %i.lk          ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0
  %i.lo = fsub double %i.ln, %i.lg
  %i.lp = extractelement <2 x double> %i.lm, i64 1
  %i.lq = fadd double %i.lp, %i.lo
end_hunk_0
