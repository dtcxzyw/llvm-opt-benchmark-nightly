inline.NumInlined: 8736
inline.NumDeleted: 3468
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:bb.a
  %i.td = fneg double %i.sw
  %i.te = call double @llvm.fmuladd.f64(double %i.td, double %i.sy, double %i.tc)
  store double %i.te, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.tf = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.tf, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.ay, %bb.as
  %i.tg = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.tg, %i.qk
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.as, !llvm.loop !156

.loopexit433:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit434
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.th, ptr %44, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.ti, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.az unwind label %bb.ca

bb.az:                                            ; preds = %.loopexit433
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.tl, align 8, !alias.scope !157
  %i.tm = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.tj, ptr %i.tm, align 8, !tbaa !111, !alias.scope !157
  %i.tn = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.tk, ptr %i.tn, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.tj, ptr %i.to, align 8
  %.sroa.5345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5345.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.ba unwind label %bb.cb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !148 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !76 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.tr, 0        ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.tt, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %or.cond.i.i.i.i.i.i.i.i248 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i248, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tw = sdiv i64 9223372036854775807, %i.tt
  %i.tx = icmp sgt i64 %i.tr, %i.tw
  br i1 %i.tx, label %.invoke547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.ty = mul nsw i64 %i.tt, %i.tr                ; 4 uses
  %.not.i315 = icmp eq i64 %i.ty, 0
  br i1 %.not.i315, label %.noexc251, label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.tz = icmp sgt i64 %i.ty, 0
  br i1 %i.tz, label %bb.be, label %.sink.split.i316

bb.be:                                            ; preds = %bb.bd
  %i.ua = icmp samesign ugt i64 %i.ty, 2305843009213693951
  br i1 %i.ua, label %.invoke547, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i318

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i318: ; preds = %bb.be
  %i.ub = shl nuw i64 %i.ty, 3
  %i.uc = call noalias ptr @malloc(i64 noundef %i.ub) #24 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %.invoke547, label %.sink.split.i316

.invoke547:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i318, %bb.be, %bb.bc
  %i.ue = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ue, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.ue, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont548 unwind label %bb.cc

.cont548:                                         ; preds = %.invoke547
  unreachable

.sink.split.i316:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i318, %bb.bd
  %.sink.i317 = phi ptr [ %i.uc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i318 ], [ null, %bb.bd ]
  store ptr %.sink.i317, ptr %47, align 8, !tbaa !9
  br label %.noexc251

.noexc251:                                        ; preds = %.sink.split.i316, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.tr, ptr %i.tu, align 8, !tbaa !75
  store i64 %i.tt, ptr %i.tv, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc251, %bb.ba
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.tp, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.bf unwind label %bb.cc

bb.bf:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.uf, ptr %49, align 8
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5341.0..sroa_idx, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.ug, align 8, !tbaa !93, !alias.scope !160
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bg unwind label %bb.cd

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.uh, ptr %53, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5339.0..sroa_idx, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.ui, align 8
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.uh, ptr %.sroa.6336.0..sroa_idx, align 8
  %.sroa.7337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.tk, ptr %.sroa.7337.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bh unwind label %bb.ce

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.uj = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !76 ; 2 uses
  %i.ul = icmp sgt i64 %i.uk, 0
  br i1 %i.ul, label %.lr.ph58.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270

.lr.ph58.i.i:                                     ; preds = %bb.bh
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.un = load i64, ptr %i.um, align 8, !tbaa !148 ; 2 uses
  %i.uo = icmp sgt i64 %i.un, 0
  %i.up = load ptr, ptr %51, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ur = load i64, ptr %i.uq, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.uo, label %.lr.ph52.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270

.lr.ph52.i.i:                                     ; preds = %.lr.ph58.i.i, %._crit_edge53.i.i
  %.02556.i.i = phi i64 [ %i.ux, %._crit_edge53.i.i ], [ 0, %.lr.ph58.i.i ] ; 2 uses
  %i.uw = mul nsw i64 %.02556.i.i, %i.ur
  %invariant.gep54.i.i = getelementptr [8 x i8], ptr %i.up, i64 %i.uw ; 2 uses
  br label %bb.bi

._crit_edge53.i.i:                                ; preds = %.critedge2.i.i
  %i.ux = add nuw nsw i64 %.02556.i.i, 1          ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.ux, %i.uk
  br i1 %exitcond61.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270, label %.lr.ph52.i.i, !llvm.loop !163

bb.bi:                                            ; preds = %.critedge2.i.i, %.lr.ph52.i.i
  %.02650.in.i.i = phi i64 [ %i.un, %.lr.ph52.i.i ], [ %.02650.i.i, %.critedge2.i.i ] ; 2 uses
  %.02650.i.i = add nsw i64 %.02650.in.i.i, -1    ; 7 uses
  %gep55.i.i = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %.02650.i.i ; 3 uses
  %i.uy = load double, ptr %gep55.i.i, align 8, !tbaa !64 ; 2 uses
  %i.uz = fcmp une double %i.uy, 0.000000e+00
  br i1 %i.uz, label %bb.bj, label %.critedge2.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.va = load ptr, ptr %i.us, align 8, !tbaa !150 ; 2 uses
  %i.vb = load ptr, ptr %i.ut, align 8, !tbaa !151 ; 2 uses
  %i.vc = load ptr, ptr %i.uu, align 8, !tbaa !152
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %.02650.i.i ; 3 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !63
  %i.vf = sext i32 %i.ve to i64                   ; 7 uses
  %i.vg = load ptr, ptr %i.uv, align 8, !tbaa !153 ; 3 uses
  %i.vh = icmp eq ptr %i.vg, null                 ; 2 uses
  br i1 %i.vh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.vi = getelementptr i8, ptr %i.vd, i64 4
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !63
  %i.vk = sext i32 %i.vj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260

bb.bl:                                            ; preds = %bb.bj
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %.02650.i.i
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !63
  %i.vn = sext i32 %i.vm to i64
  %i.vo = add nsw i64 %i.vn, %i.vf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260: ; preds = %bb.bl, %bb.bk
  %.sink.i.i.i261 = phi i64 [ %i.vk, %bb.bk ], [ %i.vo, %bb.bl ] ; 3 uses
  %i.vp = icmp sgt i64 %.sink.i.i.i261, %i.vf
  br i1 %i.vp, label %.lr.ph.i.i264, label %._crit_edge.i.i262

.lr.ph.i.i264:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260, %bb.bm
  %.sroa.837.043.i.i = phi i64 [ %i.vt, %bb.bm ], [ %i.vf, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260 ] ; 3 uses
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %.sroa.837.043.i.i
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !63
  %i.vs = sext i32 %i.vr to i64
  %.not.i.i = icmp eq i64 %.02650.i.i, %i.vs
  br i1 %.not.i.i, label %._crit_edge.i.i262, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i264
  %i.vt = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i265 = icmp eq i64 %i.vt, %.sink.i.i.i261
  br i1 %exitcond.not.i.i265, label %._crit_edge.i.i262, label %.lr.ph.i.i264, !llvm.loop !164

._crit_edge.i.i262:                               ; preds = %bb.bm, %.lr.ph.i.i264, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.vf, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260 ], [ %.sroa.837.043.i.i, %.lr.ph.i.i264 ], [ %.sink.i.i.i261, %bb.bm ]
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.va, i64 %.sroa.837.0.lcssa.i.i
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !64
  %i.vw = fdiv double %i.uy, %i.vv
  store double %i.vw, ptr %gep55.i.i, align 8, !tbaa !64
  br i1 %i.vh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i.i262
  %i.vx = getelementptr i8, ptr %i.vd, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !63
  %i.vz = sext i32 %i.vy to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i262
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %.02650.i.i
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !63
  %i.wc = sext i32 %i.wb to i64
  %i.wd = add nsw i64 %i.wc, %i.vf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bo, %bb.bn
  %.sink.i28.i.i = phi i64 [ %i.vz, %bb.bn ], [ %i.wd, %bb.bo ] ; 2 uses
  %i.we = icmp sgt i64 %.sink.i28.i.i, %i.vf
  br i1 %i.we, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bp
  %.sroa.9.046.i.i = phi i64 [ %i.wp, %bb.bp ], [ %i.vf, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %.sroa.9.046.i.i
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !63
  %i.wh = sext i32 %i.wg to i64                   ; 2 uses
  %i.wi = icmp sgt i64 %.02650.i.i, %i.wh
  br i1 %i.wi, label %bb.bp, label %.critedge2.i.i

bb.bp:                                            ; preds = %.lr.ph47.i.i
  %i.wj = load double, ptr %gep55.i.i, align 8, !tbaa !64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.va, i64 %.sroa.9.046.i.i
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !64
  %gep.i.i263 = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %i.wh ; 2 uses
  %i.wm = load double, ptr %gep.i.i263, align 8, !tbaa !64
  %i.wn = fneg double %i.wj
  %i.wo = call double @llvm.fmuladd.f64(double %i.wn, double %i.wl, double %i.wm)
  store double %i.wo, ptr %gep.i.i263, align 8, !tbaa !64
  %i.wp = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.wp, %.sink.i28.i.i
  br i1 %exitcond60.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !165

.critedge2.i.i:                                   ; preds = %bb.bp, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bi
  %i.wq = icmp sgt i64 %.02650.in.i.i, 1
  br i1 %i.wq, label %bb.bi, label %._crit_edge53.i.i, !llvm.loop !166

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270: ; preds = %._crit_edge53.i.i, %.lr.ph58.i.i, %bb.bh
  %sext161 = shl i64 %i.nh, 32                    ; 4 uses
  %i.wr = ashr exact i64 %sext161, 32             ; 6 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i266 = icmp eq i64 %sext161, 0
  br i1 %.not.i.i.i.i.i.i.i.i266, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.bq

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270
  store i64 %i.wr, ptr %i.ws, align 8, !tbaa !75
  store i64 1, ptr %i.wt, align 8, !tbaa !76
  br label %.loopexit

bb.bq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270
  %i.wu = icmp sgt i64 %i.wr, 0
  br i1 %i.wu, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i325, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537: ; preds = %bb.bq
  store ptr null, ptr %52, align 8, !tbaa !9
  store i64 %i.wr, ptr %i.ws, align 8, !tbaa !75
  store i64 1, ptr %i.wt, align 8, !tbaa !76
  br label %.loopexit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i325: ; preds = %bb.bq
  %i.wv = lshr exact i64 %sext161, 29
  %i.ww = call noalias ptr @malloc(i64 noundef %i.wv) #24 ; 4 uses
  %i.wx = icmp eq ptr %i.ww, null
  br i1 %i.wx, label %bb.br, label %.loopexit.loopexit

bb.br:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i325
  %i.wy = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wy, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.wy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc327 unwind label %bb.cf

.noexc327:                                        ; preds = %bb.br
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i325
  store ptr %i.ww, ptr %52, align 8, !tbaa !9
  store i64 %i.wr, ptr %i.ws, align 8, !tbaa !75
  store i64 1, ptr %i.wt, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext161, 29
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ww, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.wz = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.ww, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store ptr %i.wz, ptr %54, align 8, !tbaa !135, !alias.scope !167
  %i.xa = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.ni, ptr %i.xa, align 8, !tbaa !138, !alias.scope !167
  %i.xb = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 1, ptr %i.xb, align 8, !tbaa !138, !alias.scope !167
  %i.xc = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.xc, align 8, !tbaa !93, !alias.scope !167
  %i.xd = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.xe = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, i8 0, i64 16, i1 false), !alias.scope !167
  store i64 %i.wr, ptr %i.xe, align 8, !tbaa !139, !alias.scope !167
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.xf = load ptr, ptr %51, align 8, !tbaa !9
  %i.xg = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !75
  store ptr %i.xf, ptr %15, align 8, !tbaa !170
  %i.xi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.wz, ptr %16, align 8, !tbaa !173
  %i.xj = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.wr, ptr %i.xj, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !175
  %i.xk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.xk, align 8, !tbaa !177
  %i.xl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.xl, align 8, !tbaa !179
  %i.xm = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.xm, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bs unwind label %bb.cg

bb.bs:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.xn, ptr %55, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.xo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.ch

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.xp = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.xp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.xq = load ptr, ptr %51, align 8, !tbaa !9
  call void @free(ptr noundef %i.xq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !14
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !183
  %i.xv = sext i32 %i.xu to i64
  %i.xw = add nsw i64 %i.xs, %i.xv                ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.xw, i64 noundef %i.xw, i64 noundef 1)
          to label %bb.bt unwind label %bb.cj

bb.bt:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  %i.xx = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.xy = load ptr, ptr %5, align 8, !tbaa !9, !noalias !184 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !75, !noalias !184 ; 2 uses
  store ptr %i.xy, ptr %56, align 8, !tbaa !135, !alias.scope !184
  %i.yb = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.yc = load <2 x i64>, ptr %i.xx, align 8, !tbaa !187
  %i.yd = load i64, ptr %i.xx, align 8, !tbaa !75
  store <2 x i64> %i.yc, ptr %i.yb, align 8, !tbaa !138, !alias.scope !184
  %i.ye = getelementptr inbounds nuw i8, ptr %56, i64 24
  store ptr %5, ptr %i.ye, align 8, !tbaa !93, !alias.scope !184
  %i.yf = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %56, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false)
  store i64 %i.ya, ptr %i.yg, align 8, !tbaa !139, !alias.scope !184
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.yh = load ptr, ptr %48, align 8, !tbaa !9
  store ptr %i.yh, ptr %10, align 8, !tbaa !170
  %i.yi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.yd, ptr %i.yi, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.xy, ptr %11, align 8, !tbaa !173
  %i.yj = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.ya, ptr %i.yj, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %11, ptr %12, align 8, !tbaa !175
  %i.yk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.yk, align 8, !tbaa !177
  %i.yl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.yl, align 8, !tbaa !179
  %i.ym = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %56, ptr %i.ym, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bu unwind label %bb.ck

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  %i.yn = load i64, ptr %i.xx, align 8, !tbaa !75 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
end_hunk_0
begin_hunk_1_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !61
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !281 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread, label %bb.b

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76
  store ptr %1, ptr %0, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !281 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !73, !noalias !281
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !281
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = shl nuw i64 %i.b, 2                      ; 4 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #24, !noalias !281 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !281 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !73, !noalias !281
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !281
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !62, !noalias !281
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.m, i64 %i.i, i1 false), !noalias !281
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76
  store ptr %1, ptr %0, align 8, !tbaa !93
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.i) #24 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.t, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 4 %i.j, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01317 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.j, %bb.f ]
  %i.u = phi i64 [ %i.e, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.o, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !187
  tail call void @free(ptr noundef %.sroa.06.01317) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.j) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.112") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !284 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread, label %bb.b

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread: ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !284 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !73, !noalias !284
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !284
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 2                      ; 4 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #24, !noalias !284 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23, !noalias !284 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !73, !noalias !284
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25, !noalias !284
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !62, !noalias !284
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.k, i64 %i.g, i1 false), !noalias !284
  store ptr %1, ptr %0, align 8, !tbaa !116
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.g) #24 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.p, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.h, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01317 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %.sroa.06.01317) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.h) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj2ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287, !nonnull !71, !align !122 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 4 uses
  br i1 %i.e, label %.lr.ph52.preheader.i, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi0EE3runERS4_RS6_.exit

.lr.ph52.preheader.i:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8
  %.fr3 = freeze ptr %i.n                         ; 2 uses
  %i.o = icmp eq ptr %.fr3, null
  br i1 %i.o, label %.lr.ph52.preheader.i.split.us, label %.lr.ph52.preheader.i.split

.lr.ph52.preheader.i.split.us:                    ; preds = %.lr.ph52.preheader.i, %.critedge2.i.us
  %.02650.in.i.us = phi i64 [ %.02650.i.us, %.critedge2.i.us ], [ %i.d, %.lr.ph52.preheader.i ] ; 2 uses
  %.02650.i.us = add nsw i64 %.02650.in.i.us, -1  ; 5 uses
  %gep54.i.us = getelementptr [8 x i8], ptr %i.f, i64 %.02650.i.us ; 4 uses
  %i.p = load double, ptr %gep54.i.us, align 8, !tbaa !64 ; 3 uses
  %i.q = fcmp une double %i.p, 0.000000e+00
  br i1 %i.q, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us, label %.critedge2.i.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us: ; preds = %.lr.ph52.preheader.i.split.us
  %i.r = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02650.i.us ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63   ; 2 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = icmp sgt i32 %i.v, %i.s
  br i1 %i.x, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.t
  %i.z = load double, ptr %i.y, align 8, !tbaa !64
  %i.aa = fdiv double %i.p, %i.z
  store double %i.aa, ptr %gep54.i.us, align 8, !tbaa !64
  br label %.critedge2.i.us

.lr.ph.i.us:                                      ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us, %bb.b
  %.sroa.837.043.i.us = phi i64 [ %i.ae, %bb.b ], [ %i.t, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us ] ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.837.043.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !63
  %i.ad = sext i32 %i.ac to i64
  %.not.i.us = icmp eq i64 %.02650.i.us, %i.ad
  br i1 %.not.i.us, label %._crit_edge.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.ae = add nsw i64 %.sroa.837.043.i.us, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ae, %i.w
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !291

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us, %bb.b
  %.sroa.837.0.lcssa.i.us = phi i64 [ %.sroa.837.043.i.us, %.lr.ph.i.us ], [ %i.w, %bb.b ]
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.837.0.lcssa.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !64
  %i.ah = fdiv double %i.p, %i.ag
  store double %i.ah, ptr %gep54.i.us, align 8, !tbaa !64
  br label %.lr.ph47.i.us

.lr.ph47.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.sroa.9.046.i.us = phi i64 [ %i.as, %bb.c ], [ %i.t, %._crit_edge.i.us ] ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.9.046.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp sgt i64 %.02650.i.us, %i.ak
  br i1 %i.al, label %bb.c, label %.critedge2.i.us

bb.c:                                             ; preds = %.lr.ph47.i.us
  %i.am = load double, ptr %gep54.i.us, align 8, !tbaa !64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.9.046.i.us
  %i.ao = load double, ptr %i.an, align 8, !tbaa !64
  %gep.i.us = getelementptr [8 x i8], ptr %i.f, i64 %i.ak ; 2 uses
  %i.ap = load double, ptr %gep.i.us, align 8, !tbaa !64
  %i.aq = fneg double %i.am
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ao, double %i.ap)
  store double %i.ar, ptr %gep.i.us, align 8, !tbaa !64
  %i.as = add nsw i64 %.sroa.9.046.i.us, 1        ; 2 uses
  %exitcond57.not.i.us = icmp eq i64 %i.as, %i.w
  br i1 %exitcond57.not.i.us, label %.critedge2.i.us, label %.lr.ph47.i.us, !llvm.loop !292

.critedge2.i.us:                                  ; preds = %.lr.ph47.i.us, %bb.c, %._crit_edge.i.us.thread, %.lr.ph52.preheader.i.split.us
  %i.at = icmp sgt i64 %.02650.in.i.us, 1
  br i1 %i.at, label %.lr.ph52.preheader.i.split.us, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi0EE3runERS4_RS6_.exit, !llvm.loop !293

.lr.ph52.preheader.i.split:                       ; preds = %.lr.ph52.preheader.i, %.critedge2.i
  %.02650.in.i = phi i64 [ %.02650.i, %.critedge2.i ], [ %i.d, %.lr.ph52.preheader.i ] ; 2 uses
  %.02650.i = add nsw i64 %.02650.in.i, -1        ; 6 uses
  %gep54.i = getelementptr [8 x i8], ptr %i.f, i64 %.02650.i ; 4 uses
  %i.au = load double, ptr %gep54.i, align 8, !tbaa !64 ; 3 uses
  %i.av = fcmp une double %i.au, 0.000000e+00
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, label %.critedge2.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %.lr.ph52.preheader.i.split
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02650.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.fr3, i64 %.02650.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add nsw i64 %i.bb, %i.ay                ; 3 uses
  %i.bd = icmp sgt i32 %i.ba, 0
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ay
  %i.bf = load double, ptr %i.be, align 8, !tbaa !64
  %i.bg = fdiv double %i.au, %i.bf
  store double %i.bg, ptr %gep54.i, align 8, !tbaa !64
  br label %.critedge2.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, %bb.d
  %.sroa.837.043.i = phi i64 [ %i.bk, %bb.d ], [ %i.ay, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ] ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.837.043.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63
  %i.bj = sext i32 %i.bi to i64
  %.not.i = icmp eq i64 %.02650.i, %i.bj
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.bk = add nsw i64 %.sroa.837.043.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.bc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !291

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i
  %.sroa.837.0.lcssa.i = phi i64 [ %.sroa.837.043.i, %.lr.ph.i ], [ %i.bc, %bb.d ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.837.0.lcssa.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !64
  %i.bn = fdiv double %i.au, %i.bm
  store double %i.bn, ptr %gep54.i, align 8, !tbaa !64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %bb.e
  %.sroa.9.046.i = phi i64 [ %i.by, %bb.e ], [ %i.ay, %._crit_edge.i ] ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.9.046.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp sgt i64 %.02650.i, %i.bq
  br i1 %i.br, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph47.i
  %i.bs = load double, ptr %gep54.i, align 8, !tbaa !64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.9.046.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !64
  %gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.bq ; 2 uses
  %i.bv = load double, ptr %gep.i, align 8, !tbaa !64
  %i.bw = fneg double %i.bs
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bu, double %i.bv)
  store double %i.bx, ptr %gep.i, align 8, !tbaa !64
  %i.by = add nsw i64 %.sroa.9.046.i, 1           ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.by, %i.bc
  br i1 %exitcond57.not.i, label %.critedge2.i, label %.lr.ph47.i, !llvm.loop !292

.critedge2.i:                                     ; preds = %bb.e, %.lr.ph47.i, %._crit_edge.i.thread, %.lr.ph52.preheader.i.split
  %i.bz = icmp sgt i64 %.02650.in.i, 1
  br i1 %i.bz, label %.lr.ph52.preheader.i.split, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi0EE3runERS4_RS6_.exit, !llvm.loop !293

_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi0EE3runERS4_RS6_.exit: ; preds = %.critedge2.i, %.critedge2.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE(ptr noundef nonnull align 8 dereferenceable(2384) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.321", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.301", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1201", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.321", align 8 ; 5 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.301", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1201", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %14 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.321", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.301", align 8 ; 5 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1201", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %19 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %20 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %21 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %22 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %23 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %24 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %25 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %27 = alloca %"class.Eigen::Matrix", align 8    ; 14 uses
  %28 = alloca %"class.Eigen::Matrix", align 8    ; 12 uses
  %29 = alloca %"class.Eigen::IndexedView", align 8 ; 7 uses
  %30 = alloca %"class.Eigen::Matrix", align 8    ; 15 uses
  %31 = alloca %"class.Eigen::CwiseBinaryOp.198", align 8 ; 7 uses
  %32 = alloca %"class.Eigen::Solve", align 8     ; 6 uses
  %33 = alloca %"class.Eigen::Solve.77", align 8  ; 6 uses
  %34 = alloca %"class.Eigen::Solve.83", align 8  ; 6 uses
  %35 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %36 = alloca %"class.Eigen::Product.205", align 8 ; 11 uses
  %37 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %38 = alloca %"class.Eigen::IndexedView.226", align 8 ; 7 uses
  %39 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %40 = alloca %"class.Eigen::CwiseBinaryOp.232", align 8 ; 12 uses
  %41 = alloca %"class.Eigen::Matrix", align 8    ; 10 uses
  %42 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %43 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %44 = alloca %"class.Eigen::Product.139", align 8 ; 6 uses
  %45 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %46 = alloca %"class.Eigen::CwiseBinaryOp.146", align 8 ; 10 uses
  %47 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %48 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %49 = alloca %"class.Eigen::CwiseBinaryOp.198", align 8 ; 7 uses
  %50 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %51 = alloca %"class.Eigen::Matrix", align 8    ; 12 uses
  %52 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %53 = alloca %"class.Eigen::CwiseBinaryOp.246", align 8 ; 10 uses
  %54 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %55 = alloca %"class.Eigen::Product.139", align 8 ; 6 uses
  %56 = alloca %"class.Eigen::Block", align 8     ; 9 uses
  %57 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !76   ; 5 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %sext = shl i64 %i.f, 32                        ; 2 uses
  %i.j = ashr exact i64 %sext, 32                 ; 23 uses
  %i.k = icmp eq i32 %i.h, 0
  %i.l = icmp eq i64 %sext, 0                     ; 3 uses
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sdiv i64 9223372036854775807, %i.j
  %i.n = icmp slt i64 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.p = mul nsw i64 %i.j, %i.i
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i64 noundef %i.i, i64 noundef %i.j)
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = icmp sgt i32 %i.g, 0
  %or.cond539 = and i1 %i.q, %i.r
  br i1 %or.cond539, label %.preheader422.lr.ph.split, label %._crit_edge427.split

.preheader422.lr.ph.split:                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = load i64, ptr %i.t, align 8, !tbaa !75   ; 6 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.y = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !75  ; 6 uses
  %wide.trip.count442 = and i64 %i.c, 2147483647
  %wide.trip.count = and i64 %i.f, 2147483647     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 14
  %ident.check = icmp ne i64 %i.aa, 1
  %ident.check550 = icmp ne i64 %i.w, 1
  %i.ab = or i1 %ident.check, %ident.check550
  %n.vec = and i64 %i.f, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader422

.preheader422:                                    ; preds = %.preheader422.lr.ph.split, %._crit_edge
  %indvars.iv439 = phi i64 [ 0, %.preheader422.lr.ph.split ], [ %indvars.iv.next440, %._crit_edge ] ; 4 uses
  %i.ac = shl i64 %indvars.iv439, 3
  %i.ad = add i64 %i.ac, %i.v
  %i.ae = sub i64 %i.z, %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv439 ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv439
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.y, i64 %i.ai ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ab
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader422
  %i.ak = shl nsw i64 %i.ai, 3
  %i.al = add i64 %i.ae, %i.ak
  %i.am = add i64 %i.al, -1
  %diff.check = icmp ult i64 %i.am, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !64
end_hunk_1
begin_hunk_2_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:bb.a
  %i.tw = fneg double %i.tp
  %i.tx = call double @llvm.fmuladd.f64(double %i.tw, double %i.tr, double %i.tv)
  store double %i.tx, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.ty = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.ty, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.bc, %bb.aw
  %i.tz = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.tz, %i.rd
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.aw, !llvm.loop !156

.loopexit420:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit421
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.ua, ptr %44, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.ub, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.bd unwind label %bb.cl

bb.bd:                                            ; preds = %.loopexit420
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.ue, align 8, !alias.scope !336
  %i.uf = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.uc, ptr %i.uf, align 8, !tbaa !111, !alias.scope !336
  %i.ug = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.ud, ptr %i.ug, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.uc, ptr %i.uh, align 8
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5329.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.be unwind label %bb.cm

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !148 ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !76 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.uk, 0        ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.um, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %or.cond.i.i.i.i.i.i.i.i244 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i244, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.up = sdiv i64 9223372036854775807, %i.um
  %i.uq = icmp sgt i64 %i.uk, %i.up
  br i1 %i.uq, label %.invoke544, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %i.ur = mul nsw i64 %i.um, %i.uk                ; 4 uses
  %.not.i299 = icmp eq i64 %i.ur, 0
  br i1 %.not.i299, label %.noexc246, label %bb.bh

bb.bh:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.us = icmp sgt i64 %i.ur, 0
  br i1 %i.us, label %bb.bi, label %.sink.split.i300

bb.bi:                                            ; preds = %bb.bh
  %i.ut = icmp samesign ugt i64 %i.ur, 2305843009213693951
  br i1 %i.ut, label %.invoke544, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i302

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i302: ; preds = %bb.bi
  %i.uu = shl nuw i64 %i.ur, 3
  %i.uv = call noalias ptr @malloc(i64 noundef %i.uu) #24 ; 2 uses
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %.invoke544, label %.sink.split.i300

.invoke544:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i302, %bb.bi, %bb.bg
  %i.ux = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ux, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.ux, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont545 unwind label %bb.cn

.cont545:                                         ; preds = %.invoke544
  unreachable

.sink.split.i300:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i302, %bb.bh
  %.sink.i301 = phi ptr [ %i.uv, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i302 ], [ null, %bb.bh ]
  store ptr %.sink.i301, ptr %47, align 8, !tbaa !9
  br label %.noexc246

.noexc246:                                        ; preds = %.sink.split.i300, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.uk, ptr %i.un, align 8, !tbaa !75
  store i64 %i.um, ptr %i.uo, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc246, %bb.be
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.ui, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.bj unwind label %bb.cn

bb.bj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.uy, ptr %49, align 8
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5325.0..sroa_idx, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.uz, align 8, !tbaa !93, !alias.scope !339
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bk unwind label %bb.co

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.va, ptr %53, align 8
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5323.0..sroa_idx, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.vb, align 8
  %.sroa.6320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.va, ptr %.sroa.6320.0..sroa_idx, align 8
  %.sroa.7321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.ud, ptr %.sroa.7321.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bl unwind label %bb.cp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.vc = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !76 ; 2 uses
  %i.ve = icmp sgt i64 %i.vd, 0
  br i1 %i.ve, label %.lr.ph58.i.i, label %.loopexit419

.lr.ph58.i.i:                                     ; preds = %bb.bl
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !148 ; 2 uses
  %i.vh = icmp sgt i64 %i.vg, 0
  %i.vi = load ptr, ptr %51, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.vk = load i64, ptr %i.vj, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.vh, label %.lr.ph52.i.i, label %.loopexit419

.lr.ph52.i.i:                                     ; preds = %.lr.ph58.i.i, %._crit_edge53.i.i
  %.02556.i.i = phi i64 [ %i.vq, %._crit_edge53.i.i ], [ 0, %.lr.ph58.i.i ] ; 2 uses
  %i.vp = mul nsw i64 %.02556.i.i, %i.vk
  %invariant.gep54.i.i = getelementptr [8 x i8], ptr %i.vi, i64 %i.vp ; 2 uses
  br label %bb.bm

._crit_edge53.i.i:                                ; preds = %.critedge2.i.i
  %i.vq = add nuw nsw i64 %.02556.i.i, 1          ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.vq, %i.vd
  br i1 %exitcond61.not.i.i, label %.loopexit419, label %.lr.ph52.i.i, !llvm.loop !163

bb.bm:                                            ; preds = %.critedge2.i.i, %.lr.ph52.i.i
  %.02650.in.i.i = phi i64 [ %i.vg, %.lr.ph52.i.i ], [ %.02650.i.i, %.critedge2.i.i ] ; 2 uses
  %.02650.i.i = add nsw i64 %.02650.in.i.i, -1    ; 7 uses
  %gep55.i.i = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %.02650.i.i ; 3 uses
  %i.vr = load double, ptr %gep55.i.i, align 8, !tbaa !64 ; 2 uses
  %i.vs = fcmp une double %i.vr, 0.000000e+00
  br i1 %i.vs, label %bb.bn, label %.critedge2.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.vt = load ptr, ptr %i.vl, align 8, !tbaa !150 ; 2 uses
  %i.vu = load ptr, ptr %i.vm, align 8, !tbaa !151 ; 2 uses
  %i.vv = load ptr, ptr %i.vn, align 8, !tbaa !152
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %.02650.i.i ; 3 uses
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !63
  %i.vy = sext i32 %i.vx to i64                   ; 7 uses
  %i.vz = load ptr, ptr %i.vo, align 8, !tbaa !153 ; 3 uses
  %i.wa = icmp eq ptr %i.vz, null                 ; 2 uses
  br i1 %i.wa, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.wb = getelementptr i8, ptr %i.vw, i64 4
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !63
  %i.wd = sext i32 %i.wc to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256

bb.bp:                                            ; preds = %bb.bn
  %i.we = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %.02650.i.i
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !63
  %i.wg = sext i32 %i.wf to i64
  %i.wh = add nsw i64 %i.wg, %i.vy
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256: ; preds = %bb.bp, %bb.bo
  %.sink.i.i.i257 = phi i64 [ %i.wd, %bb.bo ], [ %i.wh, %bb.bp ] ; 3 uses
  %i.wi = icmp sgt i64 %.sink.i.i.i257, %i.vy
  br i1 %i.wi, label %.lr.ph.i.i260, label %._crit_edge.i.i258

.lr.ph.i.i260:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256, %bb.bq
  %.sroa.837.043.i.i = phi i64 [ %i.wm, %bb.bq ], [ %i.vy, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256 ] ; 3 uses
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %.sroa.837.043.i.i
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !63
  %i.wl = sext i32 %i.wk to i64
  %.not.i.i = icmp eq i64 %.02650.i.i, %i.wl
  br i1 %.not.i.i, label %._crit_edge.i.i258, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i260
  %i.wm = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i261 = icmp eq i64 %i.wm, %.sink.i.i.i257
  br i1 %exitcond.not.i.i261, label %._crit_edge.i.i258, label %.lr.ph.i.i260, !llvm.loop !164

._crit_edge.i.i258:                               ; preds = %bb.bq, %.lr.ph.i.i260, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.vy, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i256 ], [ %.sroa.837.043.i.i, %.lr.ph.i.i260 ], [ %.sink.i.i.i257, %bb.bq ]
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %.sroa.837.0.lcssa.i.i
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !64
  %i.wp = fdiv double %i.vr, %i.wo
  store double %i.wp, ptr %gep55.i.i, align 8, !tbaa !64
  br i1 %i.wa, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.i.i258
  %i.wq = getelementptr i8, ptr %i.vw, i64 4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !63
  %i.ws = sext i32 %i.wr to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i258
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %.02650.i.i
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !63
  %i.wv = sext i32 %i.wu to i64
  %i.ww = add nsw i64 %i.wv, %i.vy
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bs, %bb.br
  %.sink.i28.i.i = phi i64 [ %i.ws, %bb.br ], [ %i.ww, %bb.bs ] ; 2 uses
  %i.wx = icmp sgt i64 %.sink.i28.i.i, %i.vy
  br i1 %i.wx, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bt
  %.sroa.9.046.i.i = phi i64 [ %i.xi, %bb.bt ], [ %i.vy, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %.sroa.9.046.i.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !63
  %i.xa = sext i32 %i.wz to i64                   ; 2 uses
  %i.xb = icmp sgt i64 %.02650.i.i, %i.xa
  br i1 %i.xb, label %bb.bt, label %.critedge2.i.i

bb.bt:                                            ; preds = %.lr.ph47.i.i
  %i.xc = load double, ptr %gep55.i.i, align 8, !tbaa !64
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %.sroa.9.046.i.i
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !64
  %gep.i.i259 = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %i.xa ; 2 uses
  %i.xf = load double, ptr %gep.i.i259, align 8, !tbaa !64
  %i.xg = fneg double %i.xc
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.xe, double %i.xf)
  store double %i.xh, ptr %gep.i.i259, align 8, !tbaa !64
  %i.xi = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.xi, %.sink.i28.i.i
  br i1 %exitcond60.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !165

.critedge2.i.i:                                   ; preds = %bb.bt, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bm
  %i.xj = icmp sgt i64 %.02650.in.i.i, 1
  br i1 %i.xj, label %bb.bm, label %._crit_edge53.i.i, !llvm.loop !166

.loopexit419:                                     ; preds = %._crit_edge53.i.i, %bb.bl, %.lr.ph58.i.i
  %sext161 = shl i64 %i.oa, 32                    ; 2 uses
  %i.xk = ashr exact i64 %sext161, 32             ; 7 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i262 = icmp eq i64 %i.xm, %i.xk
  %i.xn = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8            ; 2 uses
  %.not8.i.i.i.i.i.i.i.i263 = icmp eq i64 %i.xo, %i.j
  %or.cond.i.i.i.i.i.i.i.i264 = select i1 %.not.i.i.i.i.i.i.i.i262, i1 %.not8.i.i.i.i.i.i.i.i263, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i264, label %.loopexit419._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, label %bb.bu

.loopexit419._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %.loopexit419
  %.pre469 = mul nsw i64 %i.xk, %i.j
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %.loopexit419
  %i.xp = icmp eq i64 %sext161, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i265 = or i1 %i.l, %i.xp
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i265, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i266, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.xq = sdiv i64 9223372036854775807, %i.j
  %i.xr = icmp sgt i64 %i.xk, %i.xq
  br i1 %i.xr, label %.invoke546, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i266

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i266: ; preds = %bb.bv, %bb.bu
  %i.xs = mul nsw i64 %i.xk, %i.j                 ; 5 uses
  %i.xt = mul nsw i64 %i.xo, %i.xm
  %.not.i306 = icmp eq i64 %i.xs, %i.xt
  br i1 %.not.i306, label %.noexc269, label %bb.bw

bb.bw:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i266
  %i.xu = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.xu) #23
  %i.xv = icmp sgt i64 %i.xs, 0
  br i1 %i.xv, label %bb.bx, label %.sink.split.i307

bb.bx:                                            ; preds = %bb.bw
  %i.xw = icmp samesign ugt i64 %i.xs, 2305843009213693951
  br i1 %i.xw, label %.invoke546, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i309

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i309: ; preds = %bb.bx
  %i.xx = shl nuw i64 %i.xs, 3
  %i.xy = call noalias ptr @malloc(i64 noundef %i.xx) #24 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %.invoke546, label %.sink.split.i307

.invoke546:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i309, %bb.bx, %bb.bv
  %i.ya = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ya, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.ya, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont547 unwind label %bb.cq

.cont547:                                         ; preds = %.invoke546
  unreachable

.sink.split.i307:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i309, %bb.bw
  %.sink.i308 = phi ptr [ %i.xy, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i309 ], [ null, %bb.bw ]
  store ptr %.sink.i308, ptr %52, align 8, !tbaa !9
  br label %.noexc269

.noexc269:                                        ; preds = %.sink.split.i307, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i266
  store i64 %i.xk, ptr %i.xl, align 8, !tbaa !75
  store i64 %i.j, ptr %i.xn, align 8, !tbaa !76
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.loopexit419._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, %.noexc269
  %.pre-phi470 = phi i64 [ %.pre469, %.loopexit419._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge ], [ %i.xs, %.noexc269 ] ; 2 uses
  %i.yb = icmp slt i64 %.pre-phi470, 1
  %.pre462 = load ptr, ptr %52, align 8, !tbaa !9 ; 3 uses
  br i1 %i.yb, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pre-phi470, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.pre462, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store ptr %.pre462, ptr %54, align 8, !tbaa !135, !alias.scope !342
  %i.yc = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.ob, ptr %i.yc, align 8, !tbaa !138, !alias.scope !342
  %i.yd = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 %i.j, ptr %i.yd, align 8, !tbaa !138, !alias.scope !342
  %i.ye = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.ye, align 8, !tbaa !93, !alias.scope !342
  %i.yf = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false), !alias.scope !342
  store i64 %i.xk, ptr %i.yg, align 8, !tbaa !139, !alias.scope !342
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.yh = load ptr, ptr %51, align 8, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !75
  store ptr %i.yh, ptr %15, align 8, !tbaa !170
  %i.yk = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.yj, ptr %i.yk, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %.pre462, ptr %16, align 8, !tbaa !173
  %i.yl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.xk, ptr %i.yl, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !175
  %i.ym = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.ym, align 8, !tbaa !177
  %i.yn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.yn, align 8, !tbaa !179
  %i.yo = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.yo, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.by unwind label %bb.cr

bb.by:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.yp, ptr %55, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.yq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %bb.bz unwind label %bb.cs

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.yr = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.yr) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.ys = load ptr, ptr %51, align 8, !tbaa !9
  call void @free(ptr noundef %i.ys) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !14
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !183
  %i.yx = sext i32 %i.yw to i64
  %i.yy = add nsw i64 %i.yu, %i.yx                ; 4 uses
  %i.yz = icmp eq i64 %i.yy, 0
  %or.cond.i.i275 = or i1 %i.l, %i.yz
  br i1 %or.cond.i.i275, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.za = sdiv i64 9223372036854775807, %i.j
  %i.zb = icmp sgt i64 %i.yy, %i.za
  br i1 %i.zb, label %bb.cb, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.zc = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zc, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.zc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc276 unwind label %bb.cu

.noexc276:                                        ; preds = %bb.cb
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.ca, %bb.bz
  %i.zd = mul nsw i64 %i.yy, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.zd, i64 noundef %i.yy, i64 noundef %i.j)
end_hunk_2
begin_hunk_3_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES3_S4_S4_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:bb.a
  %i.vo = fneg double %i.vh
  %i.vp = call double @llvm.fmuladd.f64(double %i.vo, double %i.vj, double %i.vn)
  store double %i.vp, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.vq = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.vq, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.be, %bb.ay
  %i.vr = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.vr, %i.sv
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.ay, !llvm.loop !156

.loopexit439:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit440
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.vs, ptr %44, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.vt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.bf unwind label %bb.cm

bb.bf:                                            ; preds = %.loopexit439
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.vw, align 8, !alias.scope !412
  %i.vx = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.vu, ptr %i.vx, align 8, !tbaa !111, !alias.scope !412
  %i.vy = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.vv, ptr %i.vy, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.vu, ptr %i.vz, align 8
  %.sroa.5348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5348.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.bg unwind label %bb.cn

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !148 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !76 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.wc, 0        ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.we, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %or.cond.i.i.i.i.i.i.i.i248 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i248, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.wh = sdiv i64 9223372036854775807, %i.we
  %i.wi = icmp sgt i64 %i.wc, %i.wh
  br i1 %i.wi, label %.invoke574, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %i.wj = mul nsw i64 %i.we, %i.wc                ; 4 uses
  %.not.i318 = icmp eq i64 %i.wj, 0
  br i1 %.not.i318, label %.noexc251, label %bb.bj

bb.bj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.wk = icmp sgt i64 %i.wj, 0
  br i1 %i.wk, label %bb.bk, label %.sink.split.i319

bb.bk:                                            ; preds = %bb.bj
  %i.wl = icmp samesign ugt i64 %i.wj, 2305843009213693951
  br i1 %i.wl, label %.invoke574, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i321

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i321: ; preds = %bb.bk
  %i.wm = shl nuw i64 %i.wj, 3
  %i.wn = call noalias ptr @malloc(i64 noundef %i.wm) #24 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %.invoke574, label %.sink.split.i319

.invoke574:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i321, %bb.bk, %bb.bi
  %i.wp = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wp, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.wp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont575 unwind label %bb.co

.cont575:                                         ; preds = %.invoke574
  unreachable

.sink.split.i319:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i321, %bb.bj
  %.sink.i320 = phi ptr [ %i.wn, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i321 ], [ null, %bb.bj ]
  store ptr %.sink.i320, ptr %47, align 8, !tbaa !9
  br label %.noexc251

.noexc251:                                        ; preds = %.sink.split.i319, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.wc, ptr %i.wf, align 8, !tbaa !75
  store i64 %i.we, ptr %i.wg, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc251, %bb.bg
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.wa, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.bl unwind label %bb.co

bb.bl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.wq, ptr %49, align 8
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5344.0..sroa_idx, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.wr, align 8, !tbaa !93, !alias.scope !415
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bm unwind label %bb.cp

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.ws, ptr %53, align 8
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5342.0..sroa_idx, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.wt, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.ws, ptr %.sroa.6339.0..sroa_idx, align 8
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.vv, ptr %.sroa.7340.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bn unwind label %bb.cq

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.wu = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !76 ; 2 uses
  %i.ww = icmp sgt i64 %i.wv, 0
  br i1 %i.ww, label %.lr.ph58.i.i, label %.loopexit438

.lr.ph58.i.i:                                     ; preds = %bb.bn
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !148 ; 2 uses
  %i.wz = icmp sgt i64 %i.wy, 0
  %i.xa = load ptr, ptr %51, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xc = load i64, ptr %i.xb, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.wz, label %.lr.ph52.i.i, label %.loopexit438

.lr.ph52.i.i:                                     ; preds = %.lr.ph58.i.i, %._crit_edge53.i.i
  %.02556.i.i = phi i64 [ %i.xi, %._crit_edge53.i.i ], [ 0, %.lr.ph58.i.i ] ; 2 uses
  %i.xh = mul nsw i64 %.02556.i.i, %i.xc
  %invariant.gep54.i.i = getelementptr [8 x i8], ptr %i.xa, i64 %i.xh ; 2 uses
  br label %bb.bo

._crit_edge53.i.i:                                ; preds = %.critedge2.i.i
  %i.xi = add nuw nsw i64 %.02556.i.i, 1          ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.xi, %i.wv
  br i1 %exitcond61.not.i.i, label %.loopexit438, label %.lr.ph52.i.i, !llvm.loop !163

bb.bo:                                            ; preds = %.critedge2.i.i, %.lr.ph52.i.i
  %.02650.in.i.i = phi i64 [ %i.wy, %.lr.ph52.i.i ], [ %.02650.i.i, %.critedge2.i.i ] ; 2 uses
  %.02650.i.i = add nsw i64 %.02650.in.i.i, -1    ; 7 uses
  %gep55.i.i = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %.02650.i.i ; 3 uses
  %i.xj = load double, ptr %gep55.i.i, align 8, !tbaa !64 ; 2 uses
  %i.xk = fcmp une double %i.xj, 0.000000e+00
  br i1 %i.xk, label %bb.bp, label %.critedge2.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.xl = load ptr, ptr %i.xd, align 8, !tbaa !150 ; 2 uses
  %i.xm = load ptr, ptr %i.xe, align 8, !tbaa !151 ; 2 uses
  %i.xn = load ptr, ptr %i.xf, align 8, !tbaa !152
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %.02650.i.i ; 3 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !63
  %i.xq = sext i32 %i.xp to i64                   ; 7 uses
  %i.xr = load ptr, ptr %i.xg, align 8, !tbaa !153 ; 3 uses
  %i.xs = icmp eq ptr %i.xr, null                 ; 2 uses
  br i1 %i.xs, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.xt = getelementptr i8, ptr %i.xo, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !63
  %i.xv = sext i32 %i.xu to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261

bb.br:                                            ; preds = %bb.bp
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xr, i64 %.02650.i.i
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !63
  %i.xy = sext i32 %i.xx to i64
  %i.xz = add nsw i64 %i.xy, %i.xq
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261: ; preds = %bb.br, %bb.bq
  %.sink.i.i.i262 = phi i64 [ %i.xv, %bb.bq ], [ %i.xz, %bb.br ] ; 3 uses
  %i.ya = icmp sgt i64 %.sink.i.i.i262, %i.xq
  br i1 %i.ya, label %.lr.ph.i.i265, label %._crit_edge.i.i263

.lr.ph.i.i265:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261, %bb.bs
  %.sroa.837.043.i.i = phi i64 [ %i.ye, %bb.bs ], [ %i.xq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261 ] ; 3 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %.sroa.837.043.i.i
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !63
  %i.yd = sext i32 %i.yc to i64
  %.not.i.i = icmp eq i64 %.02650.i.i, %i.yd
  br i1 %.not.i.i, label %._crit_edge.i.i263, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i265
  %i.ye = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i266 = icmp eq i64 %i.ye, %.sink.i.i.i262
  br i1 %exitcond.not.i.i266, label %._crit_edge.i.i263, label %.lr.ph.i.i265, !llvm.loop !164

._crit_edge.i.i263:                               ; preds = %bb.bs, %.lr.ph.i.i265, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.xq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261 ], [ %.sroa.837.043.i.i, %.lr.ph.i.i265 ], [ %.sink.i.i.i262, %bb.bs ]
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.xl, i64 %.sroa.837.0.lcssa.i.i
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !64
  %i.yh = fdiv double %i.xj, %i.yg
  store double %i.yh, ptr %gep55.i.i, align 8, !tbaa !64
  br i1 %i.xs, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i263
  %i.yi = getelementptr i8, ptr %i.xo, i64 4
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !63
  %i.yk = sext i32 %i.yj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bu:                                            ; preds = %._crit_edge.i.i263
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.xr, i64 %.02650.i.i
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !63
  %i.yn = sext i32 %i.ym to i64
  %i.yo = add nsw i64 %i.yn, %i.xq
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bu, %bb.bt
  %.sink.i28.i.i = phi i64 [ %i.yk, %bb.bt ], [ %i.yo, %bb.bu ] ; 2 uses
  %i.yp = icmp sgt i64 %.sink.i28.i.i, %i.xq
  br i1 %i.yp, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bv
  %.sroa.9.046.i.i = phi i64 [ %i.za, %bb.bv ], [ %i.xq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %.sroa.9.046.i.i
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !63
  %i.ys = sext i32 %i.yr to i64                   ; 2 uses
  %i.yt = icmp sgt i64 %.02650.i.i, %i.ys
  br i1 %i.yt, label %bb.bv, label %.critedge2.i.i

bb.bv:                                            ; preds = %.lr.ph47.i.i
  %i.yu = load double, ptr %gep55.i.i, align 8, !tbaa !64
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.xl, i64 %.sroa.9.046.i.i
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !64
  %gep.i.i264 = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %i.ys ; 2 uses
  %i.yx = load double, ptr %gep.i.i264, align 8, !tbaa !64
  %i.yy = fneg double %i.yu
  %i.yz = call double @llvm.fmuladd.f64(double %i.yy, double %i.yw, double %i.yx)
  store double %i.yz, ptr %gep.i.i264, align 8, !tbaa !64
  %i.za = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.za, %.sink.i28.i.i
  br i1 %exitcond60.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !165

.critedge2.i.i:                                   ; preds = %bb.bv, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bo
  %i.zb = icmp sgt i64 %.02650.in.i.i, 1
  br i1 %i.zb, label %bb.bo, label %._crit_edge53.i.i, !llvm.loop !166

.loopexit438:                                     ; preds = %._crit_edge53.i.i, %bb.bn, %.lr.ph58.i.i
  %sext161 = shl i64 %i.ps, 32                    ; 2 uses
  %i.zc = ashr exact i64 %sext161, 32             ; 7 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i267 = icmp eq i64 %i.ze, %i.zc
  %i.zf = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.zg = load i64, ptr %i.zf, align 8            ; 2 uses
  %.not8.i.i.i.i.i.i.i.i268 = icmp eq i64 %i.zg, %i.j
  %or.cond.i.i.i.i.i.i.i.i269 = select i1 %.not.i.i.i.i.i.i.i.i267, i1 %.not8.i.i.i.i.i.i.i.i268, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i269, label %.loopexit438._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, label %bb.bw

.loopexit438._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %.loopexit438
  %.pre491 = mul nsw i64 %i.zc, %i.j
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %.loopexit438
  %i.zh = icmp eq i64 %sext161, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i270 = or i1 %i.l, %i.zh
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i270, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zi = sdiv i64 9223372036854775807, %i.j
  %i.zj = icmp sgt i64 %i.zc, %i.zi
  br i1 %i.zj, label %.invoke576, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271: ; preds = %bb.bx, %bb.bw
  %i.zk = mul nsw i64 %i.zc, %i.j                 ; 5 uses
  %i.zl = mul nsw i64 %i.zg, %i.ze
  %.not.i325 = icmp eq i64 %i.zk, %i.zl
  br i1 %.not.i325, label %.noexc274, label %bb.by

bb.by:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271
  %i.zm = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.zm) #23
  %i.zn = icmp sgt i64 %i.zk, 0
  br i1 %i.zn, label %bb.bz, label %.sink.split.i326

bb.bz:                                            ; preds = %bb.by
  %i.zo = icmp samesign ugt i64 %i.zk, 2305843009213693951
  br i1 %i.zo, label %.invoke576, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i328

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i328: ; preds = %bb.bz
  %i.zp = shl nuw i64 %i.zk, 3
  %i.zq = call noalias ptr @malloc(i64 noundef %i.zp) #24 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, null
  br i1 %i.zr, label %.invoke576, label %.sink.split.i326

.invoke576:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i328, %bb.bz, %bb.bx
  %i.zs = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zs, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.zs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont577 unwind label %bb.cr

.cont577:                                         ; preds = %.invoke576
  unreachable

.sink.split.i326:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i328, %bb.by
  %.sink.i327 = phi ptr [ %i.zq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i328 ], [ null, %bb.by ]
  store ptr %.sink.i327, ptr %52, align 8, !tbaa !9
  br label %.noexc274

.noexc274:                                        ; preds = %.sink.split.i326, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271
  store i64 %i.zc, ptr %i.zd, align 8, !tbaa !75
  store i64 %i.j, ptr %i.zf, align 8, !tbaa !76
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.loopexit438._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, %.noexc274
  %.pre-phi492 = phi i64 [ %.pre491, %.loopexit438._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge ], [ %i.zk, %.noexc274 ] ; 2 uses
  %i.zt = icmp slt i64 %.pre-phi492, 1
  %.pre483 = load ptr, ptr %52, align 8, !tbaa !9 ; 3 uses
  br i1 %i.zt, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pre-phi492, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.pre483, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store ptr %.pre483, ptr %54, align 8, !tbaa !135, !alias.scope !418
  %i.zu = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.pt, ptr %i.zu, align 8, !tbaa !138, !alias.scope !418
  %i.zv = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 %i.j, ptr %i.zv, align 8, !tbaa !138, !alias.scope !418
  %i.zw = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.zw, align 8, !tbaa !93, !alias.scope !418
  %i.zx = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zx, i8 0, i64 16, i1 false), !alias.scope !418
  store i64 %i.zc, ptr %i.zy, align 8, !tbaa !139, !alias.scope !418
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.zz = load ptr, ptr %51, align 8, !tbaa !9
  %i.aaa = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !75
  store ptr %i.zz, ptr %15, align 8, !tbaa !170
  %i.aac = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.aab, ptr %i.aac, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %.pre483, ptr %16, align 8, !tbaa !173
  %i.aad = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.zc, ptr %i.aad, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !175
  %i.aae = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.aae, align 8, !tbaa !177
  %i.aaf = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.aaf, align 8, !tbaa !179
  %i.aag = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.aag, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ca unwind label %bb.cs

bb.ca:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.aah, ptr %55, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.aai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %bb.cb unwind label %bb.ct

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.aaj = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.aaj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.aak = load ptr, ptr %51, align 8, !tbaa !9
  call void @free(ptr noundef %i.aak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !14
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !183
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = add nsw i64 %i.aam, %i.aap             ; 4 uses
  %i.aar = icmp eq i64 %i.aaq, 0
  %or.cond.i.i280 = or i1 %i.l, %i.aar
  br i1 %or.cond.i.i280, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aas = sdiv i64 9223372036854775807, %i.j
  %i.aat = icmp sgt i64 %i.aaq, %i.aas
  br i1 %i.aat, label %bb.cd, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.aau = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aau, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.aau, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc281 unwind label %bb.cv

.noexc281:                                        ; preds = %bb.cd
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.cc, %bb.cb
  %i.aav = mul nsw i64 %i.aaq, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.aav, i64 noundef %i.aaq, i64 noundef %i.j)
end_hunk_3
begin_hunk_4_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_NS2_IdLin1ELin1ELi0ELin1ELin1EEES4_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.tt = fneg double %i.tm
  %i.tu = call double @llvm.fmuladd.f64(double %i.tt, double %i.to, double %i.ts)
  store double %i.tu, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.tv = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.tv, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.ax, %bb.ar
  %i.tw = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.tw, %i.ra
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.ar, !llvm.loop !156

.loopexit434:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit435
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.tx, ptr %44, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.ty, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.ay unwind label %bb.ca

bb.ay:                                            ; preds = %.loopexit434
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.ub, align 8, !alias.scope !470
  %i.uc = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.tz, ptr %i.uc, align 8, !tbaa !111, !alias.scope !470
  %i.ud = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.ua, ptr %i.ud, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.tz, ptr %i.ue, align 8
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5346.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.az unwind label %bb.cb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !148 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !76 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.uh, 0        ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.uj, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %or.cond.i.i.i.i.i.i.i.i248 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i248, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.um = sdiv i64 9223372036854775807, %i.uj
  %i.un = icmp sgt i64 %i.uh, %i.um
  br i1 %i.un, label %.invoke555, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.uo = mul nsw i64 %i.uj, %i.uh                ; 4 uses
  %.not.i316 = icmp eq i64 %i.uo, 0
  br i1 %.not.i316, label %.noexc251, label %bb.bc

bb.bc:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.up = icmp sgt i64 %i.uo, 0
  br i1 %i.up, label %bb.bd, label %.sink.split.i317

bb.bd:                                            ; preds = %bb.bc
  %i.uq = icmp samesign ugt i64 %i.uo, 2305843009213693951
  br i1 %i.uq, label %.invoke555, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319: ; preds = %bb.bd
  %i.ur = shl nuw i64 %i.uo, 3
  %i.us = call noalias ptr @malloc(i64 noundef %i.ur) #24 ; 2 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %.invoke555, label %.sink.split.i317

.invoke555:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319, %bb.bd, %bb.bb
  %i.uu = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.uu, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.uu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont556 unwind label %bb.cc

.cont556:                                         ; preds = %.invoke555
  unreachable

.sink.split.i317:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319, %bb.bc
  %.sink.i318 = phi ptr [ %i.us, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319 ], [ null, %bb.bc ]
  store ptr %.sink.i318, ptr %47, align 8, !tbaa !9
  br label %.noexc251

.noexc251:                                        ; preds = %.sink.split.i317, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.uh, ptr %i.uk, align 8, !tbaa !75
  store i64 %i.uj, ptr %i.ul, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc251, %bb.az
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.uf, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.be unwind label %bb.cc

bb.be:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.uv, ptr %49, align 8
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5342.0..sroa_idx, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.uw, align 8, !tbaa !93, !alias.scope !473
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bf unwind label %bb.cd

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.ux, ptr %53, align 8
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5340.0..sroa_idx, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.uy, align 8
  %.sroa.6337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.ux, ptr %.sroa.6337.0..sroa_idx, align 8
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.ua, ptr %.sroa.7338.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bg unwind label %bb.ce

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.uz = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !76 ; 2 uses
  %i.vb = icmp sgt i64 %i.va, 0
  br i1 %i.vb, label %.lr.ph58.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270

.lr.ph58.i.i:                                     ; preds = %bb.bg
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !148 ; 2 uses
  %i.ve = icmp sgt i64 %i.vd, 0
  %i.vf = load ptr, ptr %51, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.vh = load i64, ptr %i.vg, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.ve, label %.lr.ph52.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270

.lr.ph52.i.i:                                     ; preds = %.lr.ph58.i.i, %._crit_edge53.i.i
  %.02556.i.i = phi i64 [ %i.vn, %._crit_edge53.i.i ], [ 0, %.lr.ph58.i.i ] ; 2 uses
  %i.vm = mul nsw i64 %.02556.i.i, %i.vh
  %invariant.gep54.i.i = getelementptr [8 x i8], ptr %i.vf, i64 %i.vm ; 2 uses
  br label %bb.bh

._crit_edge53.i.i:                                ; preds = %.critedge2.i.i
  %i.vn = add nuw nsw i64 %.02556.i.i, 1          ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.vn, %i.va
  br i1 %exitcond61.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270, label %.lr.ph52.i.i, !llvm.loop !163

bb.bh:                                            ; preds = %.critedge2.i.i, %.lr.ph52.i.i
  %.02650.in.i.i = phi i64 [ %i.vd, %.lr.ph52.i.i ], [ %.02650.i.i, %.critedge2.i.i ] ; 2 uses
  %.02650.i.i = add nsw i64 %.02650.in.i.i, -1    ; 7 uses
  %gep55.i.i = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %.02650.i.i ; 3 uses
  %i.vo = load double, ptr %gep55.i.i, align 8, !tbaa !64 ; 2 uses
  %i.vp = fcmp une double %i.vo, 0.000000e+00
  br i1 %i.vp, label %bb.bi, label %.critedge2.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.vq = load ptr, ptr %i.vi, align 8, !tbaa !150 ; 2 uses
  %i.vr = load ptr, ptr %i.vj, align 8, !tbaa !151 ; 2 uses
  %i.vs = load ptr, ptr %i.vk, align 8, !tbaa !152
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %.02650.i.i ; 3 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !63
  %i.vv = sext i32 %i.vu to i64                   ; 7 uses
  %i.vw = load ptr, ptr %i.vl, align 8, !tbaa !153 ; 3 uses
  %i.vx = icmp eq ptr %i.vw, null                 ; 2 uses
  br i1 %i.vx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.vy = getelementptr i8, ptr %i.vt, i64 4
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !63
  %i.wa = sext i32 %i.vz to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260

bb.bk:                                            ; preds = %bb.bi
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %.02650.i.i
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !63
  %i.wd = sext i32 %i.wc to i64
  %i.we = add nsw i64 %i.wd, %i.vv
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260: ; preds = %bb.bk, %bb.bj
  %.sink.i.i.i261 = phi i64 [ %i.wa, %bb.bj ], [ %i.we, %bb.bk ] ; 3 uses
  %i.wf = icmp sgt i64 %.sink.i.i.i261, %i.vv
  br i1 %i.wf, label %.lr.ph.i.i264, label %._crit_edge.i.i262

.lr.ph.i.i264:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260, %bb.bl
  %.sroa.837.043.i.i = phi i64 [ %i.wj, %bb.bl ], [ %i.vv, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260 ] ; 3 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %.sroa.837.043.i.i
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !63
  %i.wi = sext i32 %i.wh to i64
  %.not.i.i = icmp eq i64 %.02650.i.i, %i.wi
  br i1 %.not.i.i, label %._crit_edge.i.i262, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i264
  %i.wj = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i265 = icmp eq i64 %i.wj, %.sink.i.i.i261
  br i1 %exitcond.not.i.i265, label %._crit_edge.i.i262, label %.lr.ph.i.i264, !llvm.loop !164

._crit_edge.i.i262:                               ; preds = %bb.bl, %.lr.ph.i.i264, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.vv, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i260 ], [ %.sroa.837.043.i.i, %.lr.ph.i.i264 ], [ %.sink.i.i.i261, %bb.bl ]
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %.sroa.837.0.lcssa.i.i
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !64
  %i.wm = fdiv double %i.vo, %i.wl
  store double %i.wm, ptr %gep55.i.i, align 8, !tbaa !64
  br i1 %i.vx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i.i262
  %i.wn = getelementptr i8, ptr %i.vt, i64 4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !63
  %i.wp = sext i32 %i.wo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bn:                                            ; preds = %._crit_edge.i.i262
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %.02650.i.i
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !63
  %i.ws = sext i32 %i.wr to i64
  %i.wt = add nsw i64 %i.ws, %i.vv
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bn, %bb.bm
  %.sink.i28.i.i = phi i64 [ %i.wp, %bb.bm ], [ %i.wt, %bb.bn ] ; 2 uses
  %i.wu = icmp sgt i64 %.sink.i28.i.i, %i.vv
  br i1 %i.wu, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bo
  %.sroa.9.046.i.i = phi i64 [ %i.xf, %bb.bo ], [ %i.vv, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %.sroa.9.046.i.i
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !63
  %i.wx = sext i32 %i.ww to i64                   ; 2 uses
  %i.wy = icmp sgt i64 %.02650.i.i, %i.wx
  br i1 %i.wy, label %bb.bo, label %.critedge2.i.i

bb.bo:                                            ; preds = %.lr.ph47.i.i
  %i.wz = load double, ptr %gep55.i.i, align 8, !tbaa !64
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %.sroa.9.046.i.i
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !64
  %gep.i.i263 = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %i.wx ; 2 uses
  %i.xc = load double, ptr %gep.i.i263, align 8, !tbaa !64
  %i.xd = fneg double %i.wz
  %i.xe = call double @llvm.fmuladd.f64(double %i.xd, double %i.xb, double %i.xc)
  store double %i.xe, ptr %gep.i.i263, align 8, !tbaa !64
  %i.xf = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.xf, %.sink.i28.i.i
  br i1 %exitcond60.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !165

.critedge2.i.i:                                   ; preds = %bb.bo, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bh
  %i.xg = icmp sgt i64 %.02650.in.i.i, 1
  br i1 %i.xg, label %bb.bh, label %._crit_edge53.i.i, !llvm.loop !166

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270: ; preds = %._crit_edge53.i.i, %.lr.ph58.i.i, %bb.bg
  %sext161 = shl i64 %i.nx, 32                    ; 4 uses
  %i.xh = ashr exact i64 %sext161, 32             ; 6 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i266 = icmp eq i64 %sext161, 0
  br i1 %.not.i.i.i.i.i.i.i.i266, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.bp

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !75
  store i64 1, ptr %i.xj, align 8, !tbaa !76
  br label %.loopexit

bb.bp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i270
  %i.xk = icmp sgt i64 %i.xh, 0
  br i1 %i.xk, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread545

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread545: ; preds = %bb.bp
  store ptr null, ptr %52, align 8, !tbaa !9
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !75
  store i64 1, ptr %i.xj, align 8, !tbaa !76
  br label %.loopexit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326: ; preds = %bb.bp
  %i.xl = lshr exact i64 %sext161, 29
  %i.xm = call noalias ptr @malloc(i64 noundef %i.xl) #24 ; 4 uses
  %i.xn = icmp eq ptr %i.xm, null
  br i1 %i.xn, label %bb.bq, label %.loopexit.loopexit

bb.bq:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326
  %i.xo = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.xo, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.xo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc328 unwind label %bb.cf

.noexc328:                                        ; preds = %bb.bq
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326
  store ptr %i.xm, ptr %52, align 8, !tbaa !9
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !75
  store i64 1, ptr %i.xj, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext161, 29
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread545, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.xp = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.xm, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread545 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store ptr %i.xp, ptr %54, align 8, !tbaa !135, !alias.scope !476
  %i.xq = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.ny, ptr %i.xq, align 8, !tbaa !138, !alias.scope !476
  %i.xr = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 1, ptr %i.xr, align 8, !tbaa !138, !alias.scope !476
  %i.xs = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.xs, align 8, !tbaa !93, !alias.scope !476
  %i.xt = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.xu = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xt, i8 0, i64 16, i1 false), !alias.scope !476
  store i64 %i.xh, ptr %i.xu, align 8, !tbaa !139, !alias.scope !476
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.xv = load ptr, ptr %51, align 8, !tbaa !9
  %i.xw = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !75
  store ptr %i.xv, ptr %15, align 8, !tbaa !170
  %i.xy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.xx, ptr %i.xy, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.xp, ptr %16, align 8, !tbaa !173
  %i.xz = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.xh, ptr %i.xz, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !175
  %i.ya = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.ya, align 8, !tbaa !177
  %i.yb = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.yb, align 8, !tbaa !179
  %i.yc = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.yc, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.br unwind label %bb.cg

bb.br:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.yd, ptr %55, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.ye, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.ch

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.yf = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.yf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.yg = load ptr, ptr %51, align 8, !tbaa !9
  call void @free(ptr noundef %i.yg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !14
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !183
  %i.yl = sext i32 %i.yk to i64
  %i.ym = add nsw i64 %i.yi, %i.yl                ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ym, i64 noundef %i.ym, i64 noundef 1)
          to label %bb.bs unwind label %bb.cj

bb.bs:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  %i.yn = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.yo = load ptr, ptr %5, align 8, !tbaa !9, !noalias !479 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !75, !noalias !479 ; 2 uses
  store ptr %i.yo, ptr %56, align 8, !tbaa !135, !alias.scope !479
  %i.yr = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.ys = load <2 x i64>, ptr %i.yn, align 8, !tbaa !187
  %i.yt = load i64, ptr %i.yn, align 8, !tbaa !75
  store <2 x i64> %i.ys, ptr %i.yr, align 8, !tbaa !138, !alias.scope !479
  %i.yu = getelementptr inbounds nuw i8, ptr %56, i64 24
  store ptr %5, ptr %i.yu, align 8, !tbaa !93, !alias.scope !479
  %i.yv = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.yw = getelementptr inbounds nuw i8, ptr %56, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yv, i8 0, i64 16, i1 false)
  store i64 %i.yq, ptr %i.yw, align 8, !tbaa !139, !alias.scope !479
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.yx = load ptr, ptr %48, align 8, !tbaa !9
  store ptr %i.yx, ptr %10, align 8, !tbaa !170
  %i.yy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.yt, ptr %i.yy, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.yo, ptr %11, align 8, !tbaa !173
  %i.yz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.yq, ptr %i.yz, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %11, ptr %12, align 8, !tbaa !175
  %i.za = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.za, align 8, !tbaa !177
  %i.zb = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.zb, align 8, !tbaa !179
  %i.zc = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %56, ptr %i.zc, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bt unwind label %bb.ck

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  %i.zd = load i64, ptr %i.yn, align 8, !tbaa !75 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
end_hunk_4
begin_hunk_5_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNS9_IT1_EERKNS9_IT2_EERNS1_15PlainObjectBaseIT3_EERNSM_IT4_EE:bb.a
  %i.uf = fneg double %i.ty
  %i.ug = call double @llvm.fmuladd.f64(double %i.uf, double %i.ua, double %i.ue)
  store double %i.ug, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.uh = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.uh, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.bc, %bb.aw
  %i.ui = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.ui, %i.rm
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.aw, !llvm.loop !156

.loopexit423:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit424
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.uj, ptr %44, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.uk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.bd unwind label %bb.cl

bb.bd:                                            ; preds = %.loopexit423
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.un, align 8, !alias.scope !530
  %i.uo = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.ul, ptr %i.uo, align 8, !tbaa !111, !alias.scope !530
  %i.up = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.um, ptr %i.up, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.ul, ptr %i.uq, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5331.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.be unwind label %bb.cm

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !148 ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !76 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ut, 0        ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.uv, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %or.cond.i.i.i.i.i.i.i.i246 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i246, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uy = sdiv i64 9223372036854775807, %i.uv
  %i.uz = icmp sgt i64 %i.ut, %i.uy
  br i1 %i.uz, label %.invoke547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %i.va = mul nsw i64 %i.uv, %i.ut                ; 4 uses
  %.not.i301 = icmp eq i64 %i.va, 0
  br i1 %.not.i301, label %.noexc248, label %bb.bh

bb.bh:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.vb = icmp sgt i64 %i.va, 0
  br i1 %i.vb, label %bb.bi, label %.sink.split.i302

bb.bi:                                            ; preds = %bb.bh
  %i.vc = icmp samesign ugt i64 %i.va, 2305843009213693951
  br i1 %i.vc, label %.invoke547, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i304

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i304: ; preds = %bb.bi
  %i.vd = shl nuw i64 %i.va, 3
  %i.ve = call noalias ptr @malloc(i64 noundef %i.vd) #24 ; 2 uses
  %i.vf = icmp eq ptr %i.ve, null
  br i1 %i.vf, label %.invoke547, label %.sink.split.i302

.invoke547:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i304, %bb.bi, %bb.bg
  %i.vg = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vg, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.vg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont548 unwind label %bb.cn

.cont548:                                         ; preds = %.invoke547
  unreachable

.sink.split.i302:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i304, %bb.bh
  %.sink.i303 = phi ptr [ %i.ve, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i304 ], [ null, %bb.bh ]
  store ptr %.sink.i303, ptr %47, align 8, !tbaa !9
  br label %.noexc248

.noexc248:                                        ; preds = %.sink.split.i302, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.ut, ptr %i.uw, align 8, !tbaa !75
  store i64 %i.uv, ptr %i.ux, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc248, %bb.be
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.ur, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.bj unwind label %bb.cn

bb.bj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.vh, ptr %49, align 8
  %.sroa.5327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5327.0..sroa_idx, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.vi, align 8, !tbaa !93, !alias.scope !533
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bk unwind label %bb.co

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.vj, ptr %53, align 8
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5325.0..sroa_idx, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.vk, align 8
  %.sroa.6322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.vj, ptr %.sroa.6322.0..sroa_idx, align 8
  %.sroa.7323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.um, ptr %.sroa.7323.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bl unwind label %bb.cp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %i.vl = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !76 ; 2 uses
  %i.vn = icmp sgt i64 %i.vm, 0
  br i1 %i.vn, label %.lr.ph58.i.i, label %.loopexit422

.lr.ph58.i.i:                                     ; preds = %bb.bl
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !148 ; 2 uses
  %i.vq = icmp sgt i64 %i.vp, 0
  %i.vr = load ptr, ptr %51, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.vt = load i64, ptr %i.vs, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.vq, label %.lr.ph52.i.i, label %.loopexit422

.lr.ph52.i.i:                                     ; preds = %.lr.ph58.i.i, %._crit_edge53.i.i
  %.02556.i.i = phi i64 [ %i.vz, %._crit_edge53.i.i ], [ 0, %.lr.ph58.i.i ] ; 2 uses
  %i.vy = mul nsw i64 %.02556.i.i, %i.vt
  %invariant.gep54.i.i = getelementptr [8 x i8], ptr %i.vr, i64 %i.vy ; 2 uses
  br label %bb.bm

._crit_edge53.i.i:                                ; preds = %.critedge2.i.i
  %i.vz = add nuw nsw i64 %.02556.i.i, 1          ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.vz, %i.vm
  br i1 %exitcond61.not.i.i, label %.loopexit422, label %.lr.ph52.i.i, !llvm.loop !163

bb.bm:                                            ; preds = %.critedge2.i.i, %.lr.ph52.i.i
  %.02650.in.i.i = phi i64 [ %i.vp, %.lr.ph52.i.i ], [ %.02650.i.i, %.critedge2.i.i ] ; 2 uses
  %.02650.i.i = add nsw i64 %.02650.in.i.i, -1    ; 7 uses
  %gep55.i.i = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %.02650.i.i ; 3 uses
  %i.wa = load double, ptr %gep55.i.i, align 8, !tbaa !64 ; 2 uses
  %i.wb = fcmp une double %i.wa, 0.000000e+00
  br i1 %i.wb, label %bb.bn, label %.critedge2.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.wc = load ptr, ptr %i.vu, align 8, !tbaa !150 ; 2 uses
  %i.wd = load ptr, ptr %i.vv, align 8, !tbaa !151 ; 2 uses
  %i.we = load ptr, ptr %i.vw, align 8, !tbaa !152
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %.02650.i.i ; 3 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !63
  %i.wh = sext i32 %i.wg to i64                   ; 7 uses
  %i.wi = load ptr, ptr %i.vx, align 8, !tbaa !153 ; 3 uses
  %i.wj = icmp eq ptr %i.wi, null                 ; 2 uses
  br i1 %i.wj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.wk = getelementptr i8, ptr %i.wf, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !63
  %i.wm = sext i32 %i.wl to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258

bb.bp:                                            ; preds = %bb.bn
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %.02650.i.i
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !63
  %i.wp = sext i32 %i.wo to i64
  %i.wq = add nsw i64 %i.wp, %i.wh
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258: ; preds = %bb.bp, %bb.bo
  %.sink.i.i.i259 = phi i64 [ %i.wm, %bb.bo ], [ %i.wq, %bb.bp ] ; 3 uses
  %i.wr = icmp sgt i64 %.sink.i.i.i259, %i.wh
  br i1 %i.wr, label %.lr.ph.i.i262, label %._crit_edge.i.i260

.lr.ph.i.i262:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258, %bb.bq
  %.sroa.837.043.i.i = phi i64 [ %i.wv, %bb.bq ], [ %i.wh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258 ] ; 3 uses
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %.sroa.837.043.i.i
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !63
  %i.wu = sext i32 %i.wt to i64
  %.not.i.i = icmp eq i64 %.02650.i.i, %i.wu
  br i1 %.not.i.i, label %._crit_edge.i.i260, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i262
  %i.wv = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i263 = icmp eq i64 %i.wv, %.sink.i.i.i259
  br i1 %exitcond.not.i.i263, label %._crit_edge.i.i260, label %.lr.ph.i.i262, !llvm.loop !164

._crit_edge.i.i260:                               ; preds = %bb.bq, %.lr.ph.i.i262, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.wh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i258 ], [ %.sroa.837.043.i.i, %.lr.ph.i.i262 ], [ %.sink.i.i.i259, %bb.bq ]
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %.sroa.837.0.lcssa.i.i
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !64
  %i.wy = fdiv double %i.wa, %i.wx
  store double %i.wy, ptr %gep55.i.i, align 8, !tbaa !64
  br i1 %i.wj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.i.i260
  %i.wz = getelementptr i8, ptr %i.wf, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !63
  %i.xb = sext i32 %i.xa to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i260
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %.02650.i.i
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !63
  %i.xe = sext i32 %i.xd to i64
  %i.xf = add nsw i64 %i.xe, %i.wh
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bs, %bb.br
  %.sink.i28.i.i = phi i64 [ %i.xb, %bb.br ], [ %i.xf, %bb.bs ] ; 2 uses
  %i.xg = icmp sgt i64 %.sink.i28.i.i, %i.wh
  br i1 %i.xg, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bt
  %.sroa.9.046.i.i = phi i64 [ %i.xr, %bb.bt ], [ %i.wh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %.sroa.9.046.i.i
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !63
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  %i.xk = icmp sgt i64 %.02650.i.i, %i.xj
  br i1 %i.xk, label %bb.bt, label %.critedge2.i.i

bb.bt:                                            ; preds = %.lr.ph47.i.i
  %i.xl = load double, ptr %gep55.i.i, align 8, !tbaa !64
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %.sroa.9.046.i.i
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !64
  %gep.i.i261 = getelementptr [8 x i8], ptr %invariant.gep54.i.i, i64 %i.xj ; 2 uses
  %i.xo = load double, ptr %gep.i.i261, align 8, !tbaa !64
  %i.xp = fneg double %i.xl
  %i.xq = call double @llvm.fmuladd.f64(double %i.xp, double %i.xn, double %i.xo)
  store double %i.xq, ptr %gep.i.i261, align 8, !tbaa !64
  %i.xr = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.xr, %.sink.i28.i.i
  br i1 %exitcond60.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !165

.critedge2.i.i:                                   ; preds = %bb.bt, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bm
  %i.xs = icmp sgt i64 %.02650.in.i.i, 1
  br i1 %i.xs, label %bb.bm, label %._crit_edge53.i.i, !llvm.loop !166

.loopexit422:                                     ; preds = %._crit_edge53.i.i, %bb.bl, %.lr.ph58.i.i
  %sext161 = shl i64 %i.oj, 32                    ; 2 uses
  %i.xt = ashr exact i64 %sext161, 32             ; 7 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i264 = icmp eq i64 %i.xv, %i.xt
  %i.xw = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8            ; 2 uses
  %.not8.i.i.i.i.i.i.i.i265 = icmp eq i64 %i.xx, %i.j
  %or.cond.i.i.i.i.i.i.i.i266 = select i1 %.not.i.i.i.i.i.i.i.i264, i1 %.not8.i.i.i.i.i.i.i.i265, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i266, label %.loopexit422._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, label %bb.bu

.loopexit422._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %.loopexit422
  %.pre472 = mul nsw i64 %i.xt, %i.j
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %.loopexit422
  %i.xy = icmp eq i64 %sext161, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i267 = or i1 %i.l, %i.xy
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i267, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i268, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.xz = sdiv i64 9223372036854775807, %i.j
  %i.ya = icmp sgt i64 %i.xt, %i.xz
  br i1 %i.ya, label %.invoke549, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i268

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i268: ; preds = %bb.bv, %bb.bu
  %i.yb = mul nsw i64 %i.xt, %i.j                 ; 5 uses
  %i.yc = mul nsw i64 %i.xx, %i.xv
  %.not.i308 = icmp eq i64 %i.yb, %i.yc
  br i1 %.not.i308, label %.noexc271, label %bb.bw

bb.bw:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i268
  %i.yd = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.yd) #23
  %i.ye = icmp sgt i64 %i.yb, 0
  br i1 %i.ye, label %bb.bx, label %.sink.split.i309

bb.bx:                                            ; preds = %bb.bw
  %i.yf = icmp samesign ugt i64 %i.yb, 2305843009213693951
  br i1 %i.yf, label %.invoke549, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i311

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i311: ; preds = %bb.bx
  %i.yg = shl nuw i64 %i.yb, 3
  %i.yh = call noalias ptr @malloc(i64 noundef %i.yg) #24 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, null
  br i1 %i.yi, label %.invoke549, label %.sink.split.i309

.invoke549:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i311, %bb.bx, %bb.bv
  %i.yj = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.yj, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.yj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont550 unwind label %bb.cq

.cont550:                                         ; preds = %.invoke549
  unreachable

.sink.split.i309:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i311, %bb.bw
  %.sink.i310 = phi ptr [ %i.yh, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i311 ], [ null, %bb.bw ]
  store ptr %.sink.i310, ptr %52, align 8, !tbaa !9
  br label %.noexc271

.noexc271:                                        ; preds = %.sink.split.i309, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i268
  store i64 %i.xt, ptr %i.xu, align 8, !tbaa !75
  store i64 %i.j, ptr %i.xw, align 8, !tbaa !76
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.loopexit422._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge, %.noexc271
  %.pre-phi473 = phi i64 [ %.pre472, %.loopexit422._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i_crit_edge ], [ %i.yb, %.noexc271 ] ; 2 uses
  %i.yk = icmp slt i64 %.pre-phi473, 1
  %.pre465 = load ptr, ptr %52, align 8, !tbaa !9 ; 3 uses
  br i1 %i.yk, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pre-phi473, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.pre465, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store ptr %.pre465, ptr %54, align 8, !tbaa !135, !alias.scope !536
  %i.yl = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.ok, ptr %i.yl, align 8, !tbaa !138, !alias.scope !536
  %i.ym = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 %i.j, ptr %i.ym, align 8, !tbaa !138, !alias.scope !536
  %i.yn = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.yn, align 8, !tbaa !93, !alias.scope !536
  %i.yo = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.yp = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yo, i8 0, i64 16, i1 false), !alias.scope !536
  store i64 %i.xt, ptr %i.yp, align 8, !tbaa !139, !alias.scope !536
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.yq = load ptr, ptr %51, align 8, !tbaa !9
  %i.yr = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !75
  store ptr %i.yq, ptr %15, align 8, !tbaa !170
  %i.yt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ys, ptr %i.yt, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %.pre465, ptr %16, align 8, !tbaa !173
  %i.yu = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.xt, ptr %i.yu, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !175
  %i.yv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.yv, align 8, !tbaa !177
  %i.yw = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.yw, align 8, !tbaa !179
  %i.yx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.yx, align 8, !tbaa !181
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.by unwind label %bb.cr

bb.by:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.yy, ptr %55, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.yz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %bb.bz unwind label %bb.cs

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.za = load ptr, ptr %52, align 8, !tbaa !9
  call void @free(ptr noundef %i.za) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.zb = load ptr, ptr %51, align 8, !tbaa !9
  call void @free(ptr noundef %i.zb) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !14
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !183
  %i.zg = sext i32 %i.zf to i64
  %i.zh = add nsw i64 %i.zd, %i.zg                ; 4 uses
  %i.zi = icmp eq i64 %i.zh, 0
  %or.cond.i.i277 = or i1 %i.l, %i.zi
  br i1 %or.cond.i.i277, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.zj = sdiv i64 9223372036854775807, %i.j
  %i.zk = icmp sgt i64 %i.zh, %i.zj
  br i1 %i.zk, label %bb.cb, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.zl = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zl, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.zl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc278 unwind label %bb.cu

.noexc278:                                        ; preds = %bb.cb
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.ca, %bb.bz
  %i.zm = mul nsw i64 %i.zh, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.zm, i64 noundef %i.zh, i64 noundef %i.j)
end_hunk_5
begin_hunk_6_@_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runINS2_IdLin1ELi1ELi0ELin1ELi1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 6 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, %i.b
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %i.j = icmp sgt i64 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %.preheader78
  %i.k = load ptr, ptr %1, align 8, !tbaa !62     ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 4 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.n) ; 6 uses
  %i.p = icmp eq ptr %calloc, null
  br i1 %i.p, label %.noexc.i, label %.preheader.preheader

.noexc.i:                                         ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.preheader.preheader:                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  br label %.preheader

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.s = icmp slt i64 %i.z, %i.n
  br i1 %i.s, label %.preheader.backedge, label %.critedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.14082 = phi i64 [ 0, %.preheader.preheader ], [ %.14082.be, %.preheader.backedge ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.u = load i8, ptr %i.t, align 1, !tbaa !599, !range !70, !noundef !71
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = add nsw i64 %.14082, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.n
  br i1 %i.x, label %.preheader.backedge, label %.critedge

.preheader.backedge:                              ; preds = %bb.d, %.loopexit
  %.14082.be = phi i64 [ %i.w, %bb.d ], [ %i.z, %.loopexit ]
  br label %.preheader, !llvm.loop !600

bb.e:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.z = add nsw i64 %.14082, 1                   ; 2 uses
  store i8 1, ptr %i.y, align 1, !tbaa !599
  %.037.in.in83 = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.14082
  %.037.in84 = load i32, ptr %.037.in.in83, align 4, !tbaa !63
  %.03785 = sext i32 %.037.in84 to i64            ; 2 uses
  %.not4486 = icmp eq i64 %.14082, %.03785
  br i1 %.not4486, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.14082 ; 2 uses
  %.pre = load double, ptr %i.aa, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph88, %bb.f
  %i.ab = phi double [ %.pre, %.lr.ph88 ], [ %i.ad, %bb.f ]
  %.03787 = phi i64 [ %.03785, %.lr.ph88 ], [ %.037, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.03787 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !tbaa !64
  store double %i.ad, ptr %i.aa, align 8, !tbaa !64
  %i.ae = getelementptr inbounds i8, ptr %calloc, i64 %.03787
  store i8 1, ptr %i.ae, align 1, !tbaa !599
  %.037.in.in = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.03787
  %.037.in = load i32, ptr %.037.in.in, align 4, !tbaa !63
  %.037 = sext i32 %.037.in to i64                ; 2 uses
  %.not44 = icmp eq i64 %.14082, %.037
  br i1 %.not44, label %.loopexit, label %bb.f, !llvm.loop !601

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.b
  %.sroa.068.07699 = phi ptr [ null, %bb.b ], [ %calloc, %bb.d ], [ %calloc, %.loopexit ]
  tail call void @free(ptr noundef %.sroa.068.07699) #23
  br label %.loopexit79

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.081 = phi i64 [ 0, %.lr.ph.new ], [ %i.bg, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.081
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ai
  %i.ak = load double, ptr %i.af, align 8, !tbaa !64
  store double %i.ak, ptr %i.aj, align 8, !tbaa !64
  %i.al = or disjoint i64 %.081, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load double, ptr %i.am, align 8, !tbaa !64
  store double %i.ar, ptr %i.aq, align 8, !tbaa !64
  %i.as = or disjoint i64 %.081, 2                ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !63
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load double, ptr %i.at, align 8, !tbaa !64
  store double %i.ay, ptr %i.ax, align 8, !tbaa !64
  %i.az = or disjoint i64 %.081, 3                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !64
  store double %i.bf, ptr %i.be, align 8, !tbaa !64
  %i.bg = add nuw nsw i64 %.081, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit79.loopexit.unr-lcssa, label %bb.g, !llvm.loop !602

.loopexit79.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit79, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit79.loopexit.unr-lcssa, %.lr.ph
  %.081.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bg, %.loopexit79.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.081.epil = phi i64 [ %.081.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.081.epil
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !64
  store double %i.bm, ptr %i.bl, align 8, !tbaa !64
  %i.bn = add nuw nsw i64 %.081.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit79, label %bb.h, !llvm.loop !603

.loopexit79:                                      ; preds = %.loopexit79.loopexit.unr-lcssa, %bb.h, %.preheader78, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !604, !nonnull !71, !align !122 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split50

.split:                                           ; preds = %bb.a
  %.02243 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150  ; 8 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !151  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !152  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !153  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02244.us.us = phi i64 [ %.022.us.us, %._crit_edge.us.us ], [ %.02243, %.split ] ; 5 uses
  %gep48.us.us = getelementptr [8 x i8], ptr %i.f, i64 %.02244.us.us ; 2 uses
  %i.p = load double, ptr %gep48.us.us, align 8, !tbaa !64 ; 3 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244.us.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63   ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !63   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 6 uses
  %i.w = icmp slt i32 %i.r, %i.u
  br i1 %i.w, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.035.us.us = phi i64 [ %i.ab, %bb.b ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.035.us.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp sgt i64 %.02244.us.us, %i.z
  br i1 %i.aa, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ab = add nsw i64 %.sroa.10.035.us.us, 1      ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond59.not, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !610

.critedge.us.us:                                  ; preds = %.lr.ph.us.us, %bb.b, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us
  %.sroa.10.0.lcssa.us.us = phi i64 [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ], [ %i.v, %bb.b ], [ %.sroa.10.035.us.us, %.lr.ph.us.us ] ; 5 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.0.lcssa.us.us
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !64
  %.sroa.10.138.us.us = add nsw i64 %.sroa.10.0.lcssa.us.us, 1 ; 4 uses
  %i.ae = icmp slt i64 %.sroa.10.138.us.us, %i.v
  br i1 %i.ae, label %.lr.ph41.us.us.preheader, label %._crit_edge.us.us

.lr.ph41.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.af = add nsw i64 %i.v, -2
  %i.ag = sub i64 %.sroa.10.0.lcssa.us.us, %i.v
  %i.ah = and i64 %i.ag, 1
  %lcmp.mod72.not.not = icmp eq i64 %i.ah, 0
  br i1 %lcmp.mod72.not.not, label %.lr.ph41.us.us.prol, label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol:                              ; preds = %.lr.ph41.us.us.preheader
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.138.us.us
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.138.us.us
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = sext i32 %i.al to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.am
  %i.an = load double, ptr %gep.us.us.prol, align 8, !tbaa !64
  %i.ao = fneg double %i.aj
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.p) ; 2 uses
  %.sroa.10.1.us.us.prol = add nsw i64 %.sroa.10.0.lcssa.us.us, 2
  br label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol.loopexit:                     ; preds = %.lr.ph41.us.us.prol, %.lr.ph41.us.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph41.us.us.preheader ], [ %i.ap, %.lr.ph41.us.us.prol ]
  %.sroa.10.140.us.us.unr = phi i64 [ %.sroa.10.138.us.us, %.lr.ph41.us.us.preheader ], [ %.sroa.10.1.us.us.prol, %.lr.ph41.us.us.prol ]
  %.02139.us.us.unr = phi double [ %i.p, %.lr.ph41.us.us.preheader ], [ %i.ap, %.lr.ph41.us.us.prol ]
  %i.aq = icmp eq i64 %i.af, %.sroa.10.0.lcssa.us.us
  br i1 %i.aq, label %._crit_edge.us.us, label %.lr.ph41.us.us

.lr.ph41.us.us:                                   ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us
  %.sroa.10.140.us.us = phi i64 [ %.sroa.10.1.us.us.1, %.lr.ph41.us.us ], [ %.sroa.10.140.us.us.unr, %.lr.ph41.us.us.prol.loopexit ] ; 4 uses
  %.02139.us.us = phi double [ %i.bg, %.lr.ph41.us.us ], [ %.02139.us.us.unr, %.lr.ph41.us.us.prol.loopexit ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.140.us.us
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.140.us.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !63
  %i.av = sext i32 %i.au to i64
  %gep.us.us = getelementptr [8 x i8], ptr %i.f, i64 %i.av
  %i.aw = load double, ptr %gep.us.us, align 8, !tbaa !64
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double %.02139.us.us)
  %.sroa.10.1.us.us = add nsw i64 %.sroa.10.140.us.us, 1 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.ba = load double, ptr %i.az, align 8, !tbaa !64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = sext i32 %i.bc to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.bd
  %i.be = load double, ptr %gep.us.us.1, align 8, !tbaa !64
  %i.bf = fneg double %i.ba
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.be, double %i.ay) ; 2 uses
  %.sroa.10.1.us.us.1 = add nsw i64 %.sroa.10.140.us.us, 2 ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %.sroa.10.1.us.us.1, %i.v
  br i1 %exitcond60.not.1, label %._crit_edge.us.us, label %.lr.ph41.us.us, !llvm.loop !611

._crit_edge.us.us:                                ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.p, %.critedge.us.us ], [ %.lcssa.unr, %.lr.ph41.us.us.prol.loopexit ], [ %i.bg, %.lr.ph41.us.us ]
  %i.bh = fdiv double %.021.lcssa.us.us, %i.ad
  store double %i.bh, ptr %gep48.us.us, align 8, !tbaa !64
  %.022.us.us = add nsw i64 %.02244.us.us, -1
  %i.bi = icmp sgt i64 %.02244.us.us, 0
  br i1 %i.bi, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %.split50, !llvm.loop !612

.split50:                                         ; preds = %._crit_edge, %._crit_edge.us.us, %bb.a
  ret void

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.split, %._crit_edge
  %.02244 = phi i64 [ %.022, %._crit_edge ], [ %.02243, %.split ] ; 6 uses
  %gep48 = getelementptr [8 x i8], ptr %i.f, i64 %.02244 ; 2 uses
  %i.bj = load double, ptr %gep48, align 8, !tbaa !64 ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bm = sext i32 %i.bl to i64                   ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.02244
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !63 ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %i.bq = add nsw i64 %i.bp, %i.bm                ; 4 uses
  %i.br = icmp sgt i32 %i.bo, 0
  br i1 %i.br, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.c
  %.sroa.10.035 = phi i64 [ %i.bw, %bb.c ], [ %i.bm, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.035
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !63
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp sgt i64 %.02244, %i.bu
  br i1 %i.bv, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.bw = add nsw i64 %.sroa.10.035, 1            ; 2 uses
  %i.bx = icmp slt i64 %i.bw, %i.bq
  br i1 %i.bx, label %.lr.ph, label %.critedge, !llvm.loop !610

.critedge:                                        ; preds = %.lr.ph, %bb.c, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %.sroa.10.0.lcssa = phi i64 [ %i.bm, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ], [ %i.bq, %bb.c ], [ %.sroa.10.035, %.lr.ph ] ; 5 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.0.lcssa
  %i.bz = load double, ptr %i.by, align 8, !tbaa !64
  %.sroa.10.138 = add nsw i64 %.sroa.10.0.lcssa, 1 ; 4 uses
  %i.ca = icmp slt i64 %.sroa.10.138, %i.bq
  br i1 %i.ca, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.critedge
  %i.cb = add nsw i64 %i.bp, -2
  %i.cc = add nsw i64 %i.cb, %i.bm
  %i.cd = sub nsw i64 %i.bp, %i.bm
  %i.ce = add i64 %i.cd, %.sroa.10.0.lcssa
  %i.cf = and i64 %i.ce, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph41.prol, label %.lr.ph41.prol.loopexit

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.138
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.138
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !63
  %i.ck = sext i32 %i.cj to i64
  %gep.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ck
  %i.cl = load double, ptr %gep.prol, align 8, !tbaa !64
  %i.cm = fneg double %i.ch
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.bj) ; 2 uses
  %.sroa.10.1.prol = add nsw i64 %.sroa.10.0.lcssa, 2
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %.lcssa70.unr = phi double [ poison, %.lr.ph41.preheader ], [ %i.cn, %.lr.ph41.prol ]
  %.sroa.10.140.unr = phi i64 [ %.sroa.10.138, %.lr.ph41.preheader ], [ %.sroa.10.1.prol, %.lr.ph41.prol ]
  %.02139.unr = phi double [ %i.bj, %.lr.ph41.preheader ], [ %i.cn, %.lr.ph41.prol ]
  %i.co = icmp eq i64 %i.cc, %.sroa.10.0.lcssa
  br i1 %i.co, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %.sroa.10.140 = phi i64 [ %.sroa.10.1.1, %.lr.ph41 ], [ %.sroa.10.140.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %.02139 = phi double [ %i.de, %.lr.ph41 ], [ %.02139.unr, %.lr.ph41.prol.loopexit ]
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.140
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.140
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.ct = sext i32 %i.cs to i64
  %gep = getelementptr [8 x i8], ptr %i.f, i64 %i.ct
  %i.cu = load double, ptr %gep, align 8, !tbaa !64
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %.02139)
  %.sroa.10.1 = add nsw i64 %.sroa.10.140, 1      ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !63
  %i.db = sext i32 %i.da to i64
  %gep.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.db
  %i.dc = load double, ptr %gep.1, align 8, !tbaa !64
  %i.dd = fneg double %i.cy
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dc, double %i.cw) ; 2 uses
  %.sroa.10.1.1 = add nsw i64 %.sroa.10.140, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.10.1.1, %i.bq
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph41, !llvm.loop !611

._crit_edge:                                      ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %.critedge
  %.021.lcssa = phi double [ %i.bj, %.critedge ], [ %.lcssa70.unr, %.lr.ph41.prol.loopexit ], [ %i.de, %.lr.ph41 ]
  %i.df = fdiv double %.021.lcssa, %i.bz
  store double %i.df, ptr %gep48, align 8, !tbaa !64
  %.022 = add nsw i64 %.02244, -1
  %i.dg = icmp sgt i64 %.02244, 0
  br i1 %i.dg, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %.split50, !llvm.loop !612
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !61     ; 6 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, %i.b
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %i.j = icmp sgt i64 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %.preheader78
  %i.k = load ptr, ptr %1, align 8, !tbaa !62     ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 4 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.n) ; 6 uses
  %i.p = icmp eq ptr %calloc, null
  br i1 %i.p, label %.noexc.i, label %.preheader.preheader

.noexc.i:                                         ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.preheader.preheader:                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  br label %.preheader

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.s = icmp slt i64 %i.z, %i.n
  br i1 %i.s, label %.preheader.backedge, label %.critedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.14082 = phi i64 [ 0, %.preheader.preheader ], [ %.14082.be, %.preheader.backedge ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.u = load i8, ptr %i.t, align 1, !tbaa !599, !range !70, !noundef !71
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = add nsw i64 %.14082, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.n
  br i1 %i.x, label %.preheader.backedge, label %.critedge

.preheader.backedge:                              ; preds = %bb.d, %.loopexit
  %.14082.be = phi i64 [ %i.w, %bb.d ], [ %i.z, %.loopexit ]
  br label %.preheader, !llvm.loop !613

bb.e:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.z = add nsw i64 %.14082, 1                   ; 2 uses
  store i8 1, ptr %i.y, align 1, !tbaa !599
  %.037.in.in83 = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.14082
  %.037.in84 = load i32, ptr %.037.in.in83, align 4, !tbaa !63
  %.03785 = sext i32 %.037.in84 to i64            ; 2 uses
  %.not4486 = icmp eq i64 %.14082, %.03785
  br i1 %.not4486, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.14082 ; 2 uses
  %.pre = load double, ptr %i.aa, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph88, %bb.f
  %i.ab = phi double [ %.pre, %.lr.ph88 ], [ %i.ad, %bb.f ]
  %.03787 = phi i64 [ %.03785, %.lr.ph88 ], [ %.037, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.03787 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !tbaa !64
  store double %i.ad, ptr %i.aa, align 8, !tbaa !64
  %i.ae = getelementptr inbounds i8, ptr %calloc, i64 %.03787
  store i8 1, ptr %i.ae, align 1, !tbaa !599
  %.037.in.in = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.03787
  %.037.in = load i32, ptr %.037.in.in, align 4, !tbaa !63
  %.037 = sext i32 %.037.in to i64                ; 2 uses
  %.not44 = icmp eq i64 %.14082, %.037
  br i1 %.not44, label %.loopexit, label %bb.f, !llvm.loop !614

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.b
  %.sroa.068.07699 = phi ptr [ null, %bb.b ], [ %calloc, %bb.d ], [ %calloc, %.loopexit ]
  tail call void @free(ptr noundef %.sroa.068.07699) #23
  br label %.loopexit79

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.081 = phi i64 [ 0, %.lr.ph.new ], [ %i.bg, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.081
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081
end_hunk_6
begin_hunk_7_@_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE:bb.a
  br i1 %i.af, label %.lr.ph41.i.us.preheader, label %.loopexit.i.us

.lr.ph41.i.us.preheader:                          ; preds = %.critedge.i.us
  %i.ag = sub i64 %i.w, %.sroa.10.1.i.us
  %xtraiter47 = and i64 %i.ag, 1
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph41.i.us.prol.loopexit, label %.lr.ph41.i.us.prol

.lr.ph41.i.us.prol:                               ; preds = %.lr.ph41.i.us.preheader
  %i.ah = load double, ptr %gep47.i.us, align 8, !tbaa !64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.i.us
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.i.us
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = sext i32 %i.al to i64
  %gep.i.us.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.am ; 2 uses
  %i.an = load double, ptr %gep.i.us.prol, align 8, !tbaa !64
  %i.ao = fneg double %i.ah
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aj, double %i.an)
  store double %i.ap, ptr %gep.i.us.prol, align 8, !tbaa !64
  %i.aq = add nsw i64 %.sroa.10.1.i.us, 1
  br label %.lr.ph41.i.us.prol.loopexit

.lr.ph41.i.us.prol.loopexit:                      ; preds = %.lr.ph41.i.us.prol, %.lr.ph41.i.us.preheader
  %.sroa.10.240.i.us.unr = phi i64 [ %.sroa.10.1.i.us, %.lr.ph41.i.us.preheader ], [ %i.aq, %.lr.ph41.i.us.prol ]
  %i.ar = add nsw i64 %i.w, -1
  %i.as = icmp eq i64 %.sroa.10.1.i.us, %i.ar
  br i1 %i.as, label %.loopexit.i.us, label %.lr.ph41.i.us

.lr.ph41.i.us:                                    ; preds = %.lr.ph41.i.us.prol.loopexit, %.lr.ph41.i.us
  %.sroa.10.240.i.us = phi i64 [ %i.bm, %.lr.ph41.i.us ], [ %.sroa.10.240.i.us.unr, %.lr.ph41.i.us.prol.loopexit ] ; 4 uses
  %i.at = load double, ptr %gep47.i.us, align 8, !tbaa !64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240.i.us
  %i.av = load double, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240.i.us
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = sext i32 %i.ax to i64
  %gep.i.us = getelementptr [8 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.az = load double, ptr %gep.i.us, align 8, !tbaa !64
  %i.ba = fneg double %i.at
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.av, double %i.az)
  store double %i.bb, ptr %gep.i.us, align 8, !tbaa !64
  %i.bc = add nsw i64 %.sroa.10.240.i.us, 1       ; 2 uses
  %i.bd = load double, ptr %gep47.i.us, align 8, !tbaa !64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bc
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !63
  %i.bi = sext i32 %i.bh to i64
  %gep.i.us.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.bi ; 2 uses
  %i.bj = load double, ptr %gep.i.us.1, align 8, !tbaa !64
  %i.bk = fneg double %i.bd
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bf, double %i.bj)
  store double %i.bl, ptr %gep.i.us.1, align 8, !tbaa !64
  %i.bm = add nsw i64 %.sroa.10.240.i.us, 2       ; 2 uses
  %exitcond51.not.i.us.1 = icmp eq i64 %i.bm, %i.w
  br i1 %exitcond51.not.i.us.1, label %.loopexit.i.us, label %.lr.ph41.i.us, !llvm.loop !647

.loopexit.i.us:                                   ; preds = %bb.b, %.lr.ph41.i.us.prol.loopexit, %.lr.ph41.i.us, %.critedge.i.us, %.preheader.preheader.i.split.us
  %i.bn = add nuw nsw i64 %.02042.i.us, 1         ; 2 uses
  %exitcond52.not.i.us = icmp eq i64 %i.bn, %i.d
  br i1 %exitcond52.not.i.us, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi5ELi1ELi0EE3runERS4_RS6_.exit, label %.preheader.preheader.i.split.us, !llvm.loop !648

.preheader.preheader.i.split:                     ; preds = %.preheader.preheader.i, %.loopexit.i
  %.02042.i = phi i64 [ %i.dp, %.loopexit.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %gep47.i = getelementptr [8 x i8], ptr %i.f, i64 %.02042.i ; 4 uses
  %i.bo = load double, ptr %gep47.i, align 8, !tbaa !64
  %i.bp = fcmp une double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, label %.loopexit.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %.preheader.preheader.i.split
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.02042.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.bs = sext i32 %i.br to i64                   ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.fr6, i64 %.02042.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63 ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 3 uses
  %i.bw = add nsw i64 %i.bv, %i.bs                ; 3 uses
  %i.bx = icmp sgt i32 %i.bu, 0
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, %bb.d
  %.sroa.10.039.i = phi i64 [ %i.cc, %bb.d ], [ %i.bs, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ] ; 3 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !63
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = icmp sgt i64 %.02042.i, %i.ca
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.cc = add nsw i64 %.sroa.10.039.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.bw
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !646

bb.e:                                             ; preds = %.lr.ph.i
  %i.cd = icmp eq i64 %.02042.i, %i.ca
  %i.ce = zext i1 %i.cd to i64
  %spec.select.i = add nsw i64 %.sroa.10.039.i, %i.ce
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %.sroa.10.1.i = phi i64 [ %spec.select.i, %bb.e ], [ %i.bs, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ] ; 7 uses
  %i.cf = icmp slt i64 %.sroa.10.1.i, %i.bw
  br i1 %i.cf, label %.lr.ph41.i.preheader, label %.loopexit.i

.lr.ph41.i.preheader:                             ; preds = %.critedge.i
  %i.cg = add nsw i64 %i.bv, %i.bs
  %i.ch = sub i64 %i.cg, %.sroa.10.1.i
  %i.ci = add nsw i64 %i.bv, -1
  %i.cj = add nsw i64 %i.ci, %i.bs
  %xtraiter = and i64 %i.ch, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.i.prol.loopexit, label %.lr.ph41.i.prol

.lr.ph41.i.prol:                                  ; preds = %.lr.ph41.i.preheader
  %i.ck = load double, ptr %gep47.i, align 8, !tbaa !64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !63
  %i.cp = sext i32 %i.co to i64
  %gep.i.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.cp ; 2 uses
  %i.cq = load double, ptr %gep.i.prol, align 8, !tbaa !64
  %i.cr = fneg double %i.ck
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cm, double %i.cq)
  store double %i.cs, ptr %gep.i.prol, align 8, !tbaa !64
  %i.ct = add nsw i64 %.sroa.10.1.i, 1
  br label %.lr.ph41.i.prol.loopexit

.lr.ph41.i.prol.loopexit:                         ; preds = %.lr.ph41.i.prol, %.lr.ph41.i.preheader
  %.sroa.10.240.i.unr = phi i64 [ %.sroa.10.1.i, %.lr.ph41.i.preheader ], [ %i.ct, %.lr.ph41.i.prol ]
  %i.cu = icmp eq i64 %i.cj, %.sroa.10.1.i
  br i1 %i.cu, label %.loopexit.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.prol.loopexit, %.lr.ph41.i
  %.sroa.10.240.i = phi i64 [ %i.do, %.lr.ph41.i ], [ %.sroa.10.240.i.unr, %.lr.ph41.i.prol.loopexit ] ; 4 uses
  %i.cv = load double, ptr %gep47.i, align 8, !tbaa !64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !63
  %i.da = sext i32 %i.cz to i64
  %gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.da ; 2 uses
  %i.db = load double, ptr %gep.i, align 8, !tbaa !64
  %i.dc = fneg double %i.cv
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cx, double %i.db)
  store double %i.dd, ptr %gep.i, align 8, !tbaa !64
  %i.de = add nsw i64 %.sroa.10.240.i, 1          ; 2 uses
  %i.df = load double, ptr %gep47.i, align 8, !tbaa !64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.de
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.de
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !63
  %i.dk = sext i32 %i.dj to i64
  %gep.i.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.dk ; 2 uses
  %i.dl = load double, ptr %gep.i.1, align 8, !tbaa !64
  %i.dm = fneg double %i.df
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dh, double %i.dl)
  store double %i.dn, ptr %gep.i.1, align 8, !tbaa !64
  %i.do = add nsw i64 %.sroa.10.240.i, 2          ; 2 uses
  %exitcond51.not.i.1 = icmp eq i64 %i.do, %i.bw
  br i1 %exitcond51.not.i.1, label %.loopexit.i, label %.lr.ph41.i, !llvm.loop !647

.loopexit.i:                                      ; preds = %bb.d, %.lr.ph41.i.prol.loopexit, %.lr.ph41.i, %.critedge.i, %.preheader.preheader.i.split
  %i.dp = add nuw nsw i64 %.02042.i, 1            ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.dp, %i.d
  br i1 %exitcond52.not.i, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi5ELi1ELi0EE3runERS4_RS6_.exit, label %.preheader.preheader.i.split, !llvm.loop !648

_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi5ELi1ELi0EE3runERS4_RS6_.exit: ; preds = %.loopexit.i, %.loopexit.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !604, !nonnull !71, !align !122 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split51

.split:                                           ; preds = %bb.a
  %.02144 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150  ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !151  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !152  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !153  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02145.us.us = phi i64 [ %.021.us.us, %._crit_edge.us.us ], [ %.02144, %.split ] ; 6 uses
  %gep49.us.us = getelementptr [8 x i8], ptr %i.f, i64 %.02145.us.us ; 2 uses
  %i.p = load double, ptr %gep49.us.us, align 8, !tbaa !64 ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02145.us.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63   ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !63   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = icmp slt i32 %i.r, %i.u
  br i1 %i.w, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.039.us.us = phi i64 [ %i.ab, %bb.b ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039.us.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp sgt i64 %.02145.us.us, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ab = add nsw i64 %.sroa.10.039.us.us, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond64.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !649

bb.c:                                             ; preds = %.lr.ph.us.us
  %i.ac = icmp eq i64 %.02145.us.us, %i.z
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.us = add nsw i64 %.sroa.10.039.us.us, %i.ad
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.c
  %.sroa.10.1.us.us = phi i64 [ %spec.select.us.us, %bb.c ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 7 uses
  %i.ae = icmp slt i64 %.sroa.10.1.us.us, %i.v
  br i1 %i.ae, label %.lr.ph42.us.us.preheader, label %._crit_edge.us.us

.lr.ph42.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.af = sub i64 %i.v, %.sroa.10.1.us.us
  %xtraiter104 = and i64 %i.af, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph42.us.us.prol.loopexit, label %.lr.ph42.us.us.prol

.lr.ph42.us.us.prol:                              ; preds = %.lr.ph42.us.us.preheader
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.ak = sext i32 %i.aj to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ak
  %i.al = load double, ptr %gep.us.us.prol, align 8, !tbaa !64
  %i.am = fneg double %i.ah
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.p) ; 2 uses
  %i.ao = add nsw i64 %.sroa.10.1.us.us, 1
  br label %.lr.ph42.us.us.prol.loopexit

.lr.ph42.us.us.prol.loopexit:                     ; preds = %.lr.ph42.us.us.prol, %.lr.ph42.us.us.preheader
  %.lcssa97.unr = phi double [ poison, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.02241.us.us.unr = phi double [ %i.p, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.sroa.10.240.us.us.unr = phi i64 [ %.sroa.10.1.us.us, %.lr.ph42.us.us.preheader ], [ %i.ao, %.lr.ph42.us.us.prol ]
  %i.ap = add nsw i64 %i.v, -1
  %i.aq = icmp eq i64 %.sroa.10.1.us.us, %i.ap
  br i1 %i.aq, label %._crit_edge.us.us, label %.lr.ph42.us.us

.lr.ph42.us.us:                                   ; preds = %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us
  %.02241.us.us = phi double [ %i.bh, %.lr.ph42.us.us ], [ %.02241.us.us.unr, %.lr.ph42.us.us.prol.loopexit ]
  %.sroa.10.240.us.us = phi i64 [ %i.bi, %.lr.ph42.us.us ], [ %.sroa.10.240.us.us.unr, %.lr.ph42.us.us.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240.us.us
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240.us.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !63
  %i.av = sext i32 %i.au to i64
  %gep.us.us = getelementptr [8 x i8], ptr %i.f, i64 %i.av
  %i.aw = load double, ptr %gep.us.us, align 8, !tbaa !64
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double %.02241.us.us)
  %i.az = add nsw i64 %.sroa.10.240.us.us, 1      ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63
  %i.be = sext i32 %i.bd to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.be
  %i.bf = load double, ptr %gep.us.us.1, align 8, !tbaa !64
  %i.bg = fneg double %i.bb
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.ay) ; 2 uses
  %i.bi = add nsw i64 %.sroa.10.240.us.us, 2      ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.bi, %i.v
  br i1 %exitcond65.not.1, label %._crit_edge.us.us, label %.lr.ph42.us.us, !llvm.loop !650

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us, %.critedge.us.us
  %.022.lcssa.us.us = phi double [ %i.p, %.critedge.us.us ], [ %i.bh, %.lr.ph42.us.us ], [ %.lcssa97.unr, %.lr.ph42.us.us.prol.loopexit ], [ %i.p, %bb.b ]
  store double %.022.lcssa.us.us, ptr %gep49.us.us, align 8, !tbaa !64
  %.021.us.us = add nsw i64 %.02145.us.us, -1
  %i.bj = icmp sgt i64 %.02145.us.us, 0
  br i1 %i.bj, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %.split51, !llvm.loop !651

.split51:                                         ; preds = %._crit_edge, %._crit_edge.us.us, %bb.a
  ret void

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.split, %._crit_edge
  %.02145 = phi i64 [ %.021, %._crit_edge ], [ %.02144, %.split ] ; 7 uses
  %gep49 = getelementptr [8 x i8], ptr %i.f, i64 %.02145 ; 2 uses
  %i.bk = load double, ptr %gep49, align 8, !tbaa !64 ; 4 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02145
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.bn = sext i32 %i.bm to i64                   ; 5 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.02145
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63 ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = add nsw i64 %i.bq, %i.bn                ; 3 uses
  %i.bs = icmp sgt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.d
  %.sroa.10.039 = phi i64 [ %i.bx, %bb.d ], [ %i.bn, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp sgt i64 %.02145, %i.bv
  br i1 %i.bw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bx = add nsw i64 %.sroa.10.039, 1            ; 2 uses
  %i.by = icmp slt i64 %i.bx, %i.br
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !649

bb.e:                                             ; preds = %.lr.ph
  %i.bz = icmp eq i64 %.02145, %i.bv
  %i.ca = zext i1 %i.bz to i64
  %spec.select = add nsw i64 %.sroa.10.039, %i.ca
  br label %.critedge

.critedge:                                        ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.e
  %.sroa.10.1 = phi i64 [ %spec.select, %bb.e ], [ %i.bn, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 7 uses
  %i.cb = icmp slt i64 %.sroa.10.1, %i.br
  br i1 %i.cb, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.critedge
  %i.cc = add nsw i64 %i.bq, %i.bn
  %i.cd = sub i64 %i.cc, %.sroa.10.1
  %i.ce = add nsw i64 %i.bq, -1
  %i.cf = add nsw i64 %i.ce, %i.bn
  %xtraiter = and i64 %i.cd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !63
  %i.ck = sext i32 %i.cj to i64
  %gep.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ck
  %i.cl = load double, ptr %gep.prol, align 8, !tbaa !64
  %i.cm = fneg double %i.ch
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.bk) ; 2 uses
  %i.co = add nsw i64 %.sroa.10.1, 1
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.lcssa103.unr = phi double [ poison, %.lr.ph42.preheader ], [ %i.cn, %.lr.ph42.prol ]
  %.02241.unr = phi double [ %i.bk, %.lr.ph42.preheader ], [ %i.cn, %.lr.ph42.prol ]
  %.sroa.10.240.unr = phi i64 [ %.sroa.10.1, %.lr.ph42.preheader ], [ %i.co, %.lr.ph42.prol ]
  %i.cp = icmp eq i64 %i.cf, %.sroa.10.1
  br i1 %i.cp, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.02241 = phi double [ %i.dg, %.lr.ph42 ], [ %.02241.unr, %.lr.ph42.prol.loopexit ]
  %.sroa.10.240 = phi i64 [ %i.dh, %.lr.ph42 ], [ %.sroa.10.240.unr, %.lr.ph42.prol.loopexit ] ; 4 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !63
  %i.cu = sext i32 %i.ct to i64
  %gep = getelementptr [8 x i8], ptr %i.f, i64 %i.cu
  %i.cv = load double, ptr %gep, align 8, !tbaa !64
  %i.cw = fneg double %i.cr
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cv, double %.02241)
  %i.cy = add nsw i64 %.sroa.10.240, 1            ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !63
  %i.dd = sext i32 %i.dc to i64
  %gep.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.dd
  %i.de = load double, ptr %gep.1, align 8, !tbaa !64
  %i.df = fneg double %i.da
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.de, double %i.cx) ; 2 uses
  %i.dh = add nsw i64 %.sroa.10.240, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.br
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph42, !llvm.loop !650

._crit_edge:                                      ; preds = %bb.d, %.lr.ph42.prol.loopexit, %.lr.ph42, %.critedge
  %.022.lcssa = phi double [ %i.bk, %.critedge ], [ %i.dg, %.lr.ph42 ], [ %.lcssa103.unr, %.lr.ph42.prol.loopexit ], [ %i.bk, %bb.d ]
  store double %.022.lcssa, ptr %gep49, align 8, !tbaa !64
  %.021 = add nsw i64 %.02145, -1
  %i.di = icmp sgt i64 %.02145, 0
  br i1 %i.di, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %.split51, !llvm.loop !651
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEbRKNS_10MatrixBaseIT_EERNSA_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::SparseLUMatrixUReturnType", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !9, !noalias !652 ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !75, !noalias !652 ; 10 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !61, !noalias !655 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72, !noalias !655 ; 3 uses
  %i.m = icmp eq i64 %i.l, %i.i
  %i.n = icmp sgt i64 %i.i, 0                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.fr = freeze i1 %i.m
  br i1 %.fr, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter122 = and i64 %i.i, 3                  ; 3 uses
  %i.p = icmp ult i64 %i.i, 4
  %unroll_iter126 = and i64 %i.i, 9223372036854775804
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.n, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !62   ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.r = icmp ult i64 %i.i, 4
  %unroll_iter = and i64 %i.i, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod121 = icmp ne i64 %xtraiter, 0
  br label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us: ; preds = %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us, %.lr.ph.split.us.split
  %.02077.us = phi i64 [ 0, %.lr.ph.split.us.split ], [ %i.bf, %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us ] ; 3 uses
  %i.s = mul nuw nsw i64 %i.i, %.02077.us
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s ; 5 uses
  %i.u = mul nsw i64 %i.l, %.02077.us
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u ; 5 uses
  br i1 %i.r, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us: ; preds = %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us
  %.088.i.us = phi i64 [ %i.ax, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.088.i.us
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.088.i.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load double, ptr %i.w, align 8, !tbaa !64
  store double %i.ab, ptr %i.aa, align 8, !tbaa !64
  %i.ac = or disjoint i64 %.088.i.us, 1           ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ag
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !64
  store double %i.ai, ptr %i.ah, align 8, !tbaa !64
  %i.aj = or disjoint i64 %.088.i.us, 2           ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.an
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !64
  store double %i.ap, ptr %i.ao, align 8, !tbaa !64
  %i.aq = or disjoint i64 %.088.i.us, 3           ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !63
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.au
  %i.aw = load double, ptr %i.ar, align 8, !tbaa !64
  store double %i.aw, ptr %i.av, align 8, !tbaa !64
  %i.ax = add nuw nsw i64 %.088.i.us, 4           ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us.unr-lcssa, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us, !llvm.loop !658

_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us.unr-lcssa: ; preds = %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader: ; preds = %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us.unr-lcssa, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us
  %.088.i.us.epil.init = phi i64 [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.preheader.i.us ], [ %i.ax, %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil: ; preds = %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader
  %.088.i.us.epil = phi i64 [ %.088.i.us.epil.init, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader ], [ %i.be, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil.preheader ], [ %epil.iter.next, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEENS2_INS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS8_SB_EE5valueEvE4typeE.exit.i.us.epil ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.088.i.us.epil
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.088.i.us.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
end_hunk_7
begin_hunk_8_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !64
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !64
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !761

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !64
  %i.is = load double, ptr %i.iq, align 8, !tbaa !64
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !762
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ES7_EELi1ELi2ELi0ELi1EE3runERKS8_RSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !678    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #24 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.d
  %i.m = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.o = icmp samesign ugt i64 %i.b, 16384        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !138
  %i.r = load ptr, ptr %0, align 8, !tbaa !712
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !138
  invoke void @_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi2ELb0ELi0EE3runElPKdlPd(i64 noundef %i.q, ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.o, label %bb.h, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.m) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.u

bb.i:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  br i1 %i.o, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.m) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28: ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi2ELb0ELi0EE3runElPKdlPd(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = shl i64 %0, 3                            ; 2 uses
  %i.e = add i64 %i.d, -8
  %i.f = add nuw i64 %0, 2305843009213693951
  %i.g = mul i64 %2, %i.f
  %i.h = add i64 %i.g, %0
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = shl i64 %2, 6
  %i.k = sub nuw nsw i64 -64, %i.j
  %i.l = mul i64 %2, -8
  %i.m = shl i64 %2, 3
  %i.n = sub nuw nsw i64 -8, %i.m
  %i.o = shl i64 %0, 3
  %i.p = add nuw i64 %0, 2305843009213693951
  %i.q = mul i64 %2, %i.p
  %i.r = add i64 %i.q, %0
  %i.s = shl i64 %i.r, 3
  %i.t = shl i64 %2, 6
  %i.u = sub nuw nsw i64 -64, %i.t
  %i.v = mul i64 %2, -8
  %i.w = getelementptr i8, ptr %3, i64 %i.d
  %i.x = getelementptr i8, ptr %1, i64 %i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.g ] ; 5 uses
  %.092 = phi i64 [ %0, %.lr.ph ], [ %i.ff, %bb.g ] ; 8 uses
  %umin137 = call i64 @llvm.umin.i64(i64 %.092, i64 8) ; 2 uses
  %i.z = add nsw i64 %umin137, -2
  %i.aa = shl i64 %indvar, 6
  %i.ab = sub i64 %i.o, %i.aa
  %scevgep109 = getelementptr i8, ptr %3, i64 %i.ab ; 2 uses
  %umin110 = call i64 @llvm.umin.i64(i64 %.092, i64 8) ; 2 uses
  %i.ac = mul nsw i64 %umin110, -8                ; 2 uses
  %scevgep111 = getelementptr i8, ptr %scevgep109, i64 %i.ac
  %i.ad = mul i64 %i.u, %indvar
  %i.ae = add i64 %i.s, %i.ad
  %i.af = shl nuw nsw i64 %umin110, 3
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = mul i64 %indvar, -64                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ah
  %umin98 = call i64 @llvm.umin.i64(i64 %.092, i64 8) ; 2 uses
  %i.ai = mul nsw i64 %umin98, -8
  %i.aj = add i64 %i.e, %i.ah
  %i.ak = mul i64 %i.k, %indvar                   ; 2 uses
  %i.al = add i64 %i.i, %i.ak
  %i.am = shl nuw nsw i64 %umin98, 3
  %i.an = sub i64 %i.al, %i.am
  %umin = call i64 @llvm.umin.i64(i64 %.092, i64 8) ; 4 uses
  %i.ao = sub nuw nsw i64 %.092, %umin            ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ao ; 11 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = lshr exact i64 %i.aq, 3
  %i.at = and i64 %i.as, 1
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.ai
  %scevgep112 = getelementptr i8, ptr %scevgep109, i64 %i.ac
  %i.au = getelementptr i8, ptr %1, i64 %i.ag
  %i.av = getelementptr i8, ptr %1, i64 %i.an
  %i.aw = getelementptr i8, ptr %i.y, i64 %i.ak
  br label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit
  %.04691 = phi i64 [ 0, %bb.b ], [ %i.fc, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit ] ; 8 uses
  %i.ay = mul i64 %i.v, %.04691
  %scevgep114 = getelementptr i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.az = shl i64 %.04691, 3
  %i.ba = sub i64 %i.aj, %i.az
  %scevgep101 = getelementptr i8, ptr %3, i64 %i.ba
  %i.bb = mul i64 %i.l, %.04691
  %scevgep102 = getelementptr i8, ptr %i.av, i64 %i.bb
  %i.bc = mul i64 %i.n, %.04691
  %scevgep104 = getelementptr i8, ptr %i.aw, i64 %i.bc
  %i.bd = xor i64 %.04691, -1                     ; 2 uses
  %i.be = add nsw i64 %.092, %i.bd                ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %3, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !64 ; 2 uses
  %i.bh = fcmp une double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.e, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = mul nsw i64 %i.be, %2
  %i.bj = getelementptr [8 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.be
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !64
  %i.bm = fdiv double %i.bg, %i.bl                ; 10 uses
  store double %i.bm, ptr %i.bf, align 8, !tbaa !64
  %i.bn = add nsw i64 %umin, %i.bd                ; 6 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ao ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bm, i64 0
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.at, i64 %i.bn ; 13 uses
  %i.bq = sub nsw i64 %i.bn, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.br = sdiv i64 %i.bq, 2                       ; 3 uses
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bs, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check120 = icmp ult i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.i.i.i.i.preheader136, label %vector.memcheck108

vector.memcheck108:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bu = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.bu
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.bu
  %bound0116 = icmp ult ptr %scevgep111, %scevgep115
  %bound1117 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict118 = and i1 %bound0116, %bound1117
  br i1 %found.conflict118, label %.lr.ph.i.i.i.i.i.i.i.preheader136, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck108
  %n.vec122 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next131, %vector.body125 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index126 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load127 = load <2 x double>, ptr %i.bw, align 8, !tbaa !64, !alias.scope !763
  %wide.load128 = load <2 x double>, ptr %i.bx, align 8, !tbaa !64, !alias.scope !763
  %i.by = fmul <2 x double> %broadcast.splat124, %wide.load127
  %i.bz = fmul <2 x double> %broadcast.splat124, %wide.load128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load129 = load <2 x double>, ptr %i.bv, align 8, !tbaa !64, !alias.scope !766, !noalias !763
  %wide.load130 = load <2 x double>, ptr %i.ca, align 8, !tbaa !64, !alias.scope !766, !noalias !763
  %i.cb = fsub <2 x double> %wide.load129, %i.by
  %i.cc = fsub <2 x double> %wide.load130, %i.bz
  store <2 x double> %i.cb, ptr %i.bv, align 8, !tbaa !64, !alias.scope !766, !noalias !763
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !64, !alias.scope !766, !noalias !763
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.cd, label %middle.block132, label %vector.body125, !llvm.loop !768

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec122
  br i1 %cmp.n133, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.i.preheader136:                ; preds = %vector.memcheck108, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block132
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck108 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec122, %middle.block132 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader136
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.05.i.i.i.i.i.i.i.ph
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !64
  %i.ch = fmul double %i.bm, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !64
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !64
  %i.ck = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader136
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader136 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cl = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.cl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.05.i.i.i.i.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !64
  %i.cp = fmul double %i.bm, %i.co
  %i.cq = load double, ptr %i.cm, align 8, !tbaa !64
  %i.cr = fsub double %i.cq, %i.cp
  store double %i.cr, ptr %i.cm, align 8, !tbaa !64
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cs
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !64
  %i.cw = fmul double %i.bm, %i.cv
  %i.cx = load double, ptr %i.ct, align 8, !tbaa !64
  %i.cy = fsub double %i.cx, %i.cw
  store double %i.cy, ptr %i.ct, align 8, !tbaa !64
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cz, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !769

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block132, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.da = icmp sgt i64 %i.bq, 1
  br i1 %i.da, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.db = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dc = icmp slt i64 %i.bt, %i.bn
  br i1 %i.dc, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dd = shl nsw i64 %i.br, 1
  %i.de = add i64 %.0.i.i.i.i.i.i.i, %i.dd
  %i.df = sub i64 %i.bn, %i.de                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.dg = shl i64 %i.br, 4
  %i.dh = shl i64 %.0.i.i.i.i.i.i.i, 3
  %i.di = add i64 %i.dg, %i.dh                    ; 2 uses
  %scevgep100 = getelementptr i8, ptr %scevgep99, i64 %i.di
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.di
  %bound0 = icmp ult ptr %scevgep100, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.dj = add i64 %i.bt, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = add i64 %i.bt, %index                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !64, !alias.scope !770
  %wide.load105 = load <2 x double>, ptr %i.dn, align 8, !tbaa !64, !alias.scope !770
  %i.do = fmul <2 x double> %broadcast.splat, %wide.load
  %i.dp = fmul <2 x double> %broadcast.splat, %wide.load105
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load106 = load <2 x double>, ptr %i.dl, align 8, !tbaa !64, !alias.scope !773, !noalias !770
  %wide.load107 = load <2 x double>, ptr %i.dq, align 8, !tbaa !64, !alias.scope !773, !noalias !770
  %i.dr = fsub <2 x double> %wide.load106, %i.do
  %i.ds = fsub <2 x double> %wide.load107, %i.dp
  store <2 x double> %i.dr, ptr %i.dl, align 8, !tbaa !64, !alias.scope !773, !noalias !770
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !64, !alias.scope !773, !noalias !770
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !775

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader135

.lr.ph.i17.i.i.i.i.i.i.preheader135:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block ] ; 6 uses
  %i.du = add i64 %.04691, %.05.i18.i.i.i.i.i.i.ph
  %i.dv = sub nsw i64 %.04691, %umin137
  %i.dw = add i64 %i.dv, %.05.i18.i.i.i.i.i.i.ph
  %i.dx = and i64 %i.dw, 1
  %lcmp.mod139.not.not = icmp eq i64 %i.dx, 0
  br i1 %lcmp.mod139.not.not, label %.lr.ph.i17.i.i.i.i.i.i.prol, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader135
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !64
  %i.eb = fmul double %i.bm, %i.ea
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !64
  %i.ed = fsub double %i.ec, %i.eb
  store double %i.ed, ptr %i.dy, align 8, !tbaa !64
  %i.ee = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader135
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader135 ], [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ef = icmp eq i64 %i.z, %i.du
  br i1 %i.ef, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a

.noexc:                                           ; preds = %bb.c
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.x = mul nsw i64 %i.n, %i.l
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.l, i64 noundef %i.n)
  %.pr = load i64, ptr %i.q, align 8, !tbaa !76
  %.pre = load i64, ptr %i.o, align 8, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.y = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.l, %bb.a ] ; 11 uses
  %i.z = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %.lr.ph54.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit

.lr.ph54.i.preheader:                             ; preds = %bb.d
  %i.ad = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ae = sub i64 %i.ad, %i.f
  %i.af = shl i64 %i.y, 3
  %i.ag = sub i64 %i.ad, %i.h
  %i.ah = sub i64 %i.y, %i.j
  %i.ai = shl i64 %i.ah, 3
  %invariant.op = add i64 %i.ae, -1
  %invariant.op39 = add i64 %i.ag, -1
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 6 uses
  %.03251.i = phi i64 [ %i.bv, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 9 uses
  %i.aj = mul i64 %i.af, %.03251.i
  %i.ak = mul i64 %i.ai, %.03251.i
  %i.al = sub i64 %i.y, %.03152.i                 ; 3 uses
  %i.am = and i64 %i.al, -2
  %i.an = add nsw i64 %i.am, %.03152.i            ; 6 uses
  %i.ao = icmp sgt i64 %.03152.i, 0
  br i1 %i.ao, label %.preheader39.loopexit.i, label %.preheader39.i

.preheader39.loopexit.i:                          ; preds = %.lr.ph54.i
  %i.ap = mul nsw i64 %.03251.i, %i.j
  %invariant.gep41.i = getelementptr [8 x i8], ptr %i.g, i64 %i.ap
  %i.aq = mul nsw i64 %.03251.i, %i.y
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.aa, i64 %i.aq
  %i.ar = load double, ptr %i.e, align 8, !tbaa !64
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = load double, ptr %invariant.gep41.i, align 8, !tbaa !64
  %i.au = fmul double %i.as, %i.at
  store double %i.au, ptr %invariant.gep.i, align 8, !tbaa !64
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph54.i
  %i.av = icmp sgt i64 %i.al, 1
  br i1 %i.av, label %.lr.ph44.i.preheader, label %.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.preheader39.i
  %i.aw = mul nsw i64 %.03251.i, %i.y
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.aw
  %i.ax = mul nsw i64 %.03251.i, %i.j
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.g, i64 %i.ax
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %.lr.ph44.i, %.preheader39.i
  %i.ay = icmp slt i64 %i.an, %i.y
  br i1 %i.ay, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.az = mul nsw i64 %.03251.i, %i.y
  %invariant.gep47.i = getelementptr [8 x i8], ptr %i.aa, i64 %i.az ; 2 uses
  %i.ba = mul nsw i64 %.03251.i, %i.j
  %invariant.gep49.i = getelementptr [8 x i8], ptr %i.g, i64 %i.ba ; 2 uses
  %i.bb = and i64 %i.al, -2
  %i.bc = add i64 %.03152.i, %i.bb
  %i.bd = sub i64 %i.y, %i.bc                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bd, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %.reass = add i64 %i.aj, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass40 = add i64 %i.ak, %invariant.op39
  %diff.check37 = icmp ult i64 %.reass40, 15
  %conflict.rdx = or i1 %diff.check, %diff.check37
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, -2                      ; 3 uses
  %i.be = add i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = add i64 %i.an, %index                   ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bf
  %wide.load = load <2 x double>, ptr %i.bh, align 8, !tbaa !64
  %i.bi = fdiv <2 x double> splat (double 1.000000e+00), %wide.load
  %i.bj = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %i.bf
  %wide.load38 = load <2 x double>, ptr %i.bj, align 8, !tbaa !64
  %i.bk = fmul <2 x double> %i.bi, %wide.load38
  store <2 x double> %i.bk, ptr %i.bg, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !963

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph46.i ], [ %i.be, %middle.block ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.02943.i = phi i64 [ %i.br, %.lr.ph44.i ], [ %.03152.i, %.lr.ph44.i.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02943.i
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.02943.i
  %i.bm = load <2 x double>, ptr %gep30, align 1, !tbaa !91
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.02943.i
  %i.bo = load <2 x double>, ptr %i.bn, align 1, !tbaa !91
  %i.bp = fdiv <2 x double> splat (double 1.000000e+00), %i.bo
  %i.bq = fmul <2 x double> %i.bm, %i.bp
  store <2 x double> %i.bq, ptr %gep, align 16, !tbaa !91
  %i.br = add nsw i64 %.02943.i, 2                ; 2 uses
  %i.bs = icmp slt i64 %i.br, %i.an
  br i1 %i.bs, label %.lr.ph44.i, label %.preheader.i, !llvm.loop !964

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.bt = add nsw i64 %.03152.i, %i.ab
  %i.bu = srem i64 %i.bt, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.bu)
  %i.bv = add nuw nsw i64 %.03251.i, 1            ; 2 uses
  %exitcond56.not.i = icmp eq i64 %i.bv, %i.z
  br i1 %exitcond56.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit, label %.lr.ph54.i, !llvm.loop !965

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i64 [ %i.cb, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 4 uses
  %gep48.i = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %.045.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.045.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !64
  %i.by = fdiv double 1.000000e+00, %i.bx
  %gep50.i = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %.045.i
  %i.bz = load double, ptr %gep50.i, align 8, !tbaa !64
  %i.ca = fmul double %i.by, %i.bz
  store double %i.ca, ptr %gep48.i, align 8, !tbaa !64
  %i.cb = add nsw i64 %.045.i, 1                  ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.y
  br i1 %i.cc, label %scalar.ph, label %._crit_edge.i, !llvm.loop !966

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph52, label %._crit_edge53.split

.lr.ph52:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !604, !nonnull !71, !align !122 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %.02243 = add nsw i64 %i.g, -1                  ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.h, label %.lr.ph52.split, label %._crit_edge53.split

.lr.ph52.split:                                   ; preds = %.lr.ph52
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150  ; 8 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !151  ; 8 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !152  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !153  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph46.us, label %.lr.ph46

.lr.ph46.us:                                      ; preds = %.lr.ph52.split, %._crit_edge47.split.us.us
  %.050.us = phi i64 [ %i.bp, %._crit_edge47.split.us.us ], [ 0, %.lr.ph52.split ] ; 2 uses
  %i.u = mul nsw i64 %i.k, %.050.us
  %invariant.gep48.us = getelementptr [8 x i8], ptr %i.i, i64 %i.u ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %._crit_edge.us.us, %.lr.ph46.us
  %.02244.us.us = phi i64 [ %.02243, %.lr.ph46.us ], [ %.022.us.us, %._crit_edge.us.us ] ; 5 uses
  %gep49.us.us = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %.02244.us.us ; 2 uses
  %i.v = load double, ptr %gep49.us.us, align 8, !tbaa !64 ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.02244.us.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63   ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !63  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 6 uses
  %i.ac = icmp slt i32 %i.x, %i.aa
  br i1 %i.ac, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.035.us.us = phi i64 [ %i.ah, %bb.b ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.035.us.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp sgt i64 %.02244.us.us, %i.af
  br i1 %i.ag, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ah = add nsw i64 %.sroa.10.035.us.us, 1      ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond59.not, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !967

.critedge.us.us:                                  ; preds = %.lr.ph.us.us, %bb.b, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us
  %.sroa.10.0.lcssa.us.us = phi i64 [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ], [ %i.ab, %bb.b ], [ %.sroa.10.035.us.us, %.lr.ph.us.us ] ; 5 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.0.lcssa.us.us
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !64
  %.sroa.10.138.us.us = add nsw i64 %.sroa.10.0.lcssa.us.us, 1 ; 4 uses
  %i.ak = icmp slt i64 %.sroa.10.138.us.us, %i.ab
  br i1 %i.ak, label %.lr.ph41.us.us.preheader, label %._crit_edge.us.us

.lr.ph41.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.al = add nsw i64 %i.ab, -2
  %i.am = sub i64 %.sroa.10.0.lcssa.us.us, %i.ab
  %i.an = and i64 %i.am, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph41.us.us.prol, label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol:                              ; preds = %.lr.ph41.us.us.preheader
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.138.us.us
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.138.us.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = sext i32 %i.ar to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.as
  %i.at = load double, ptr %gep.us.us.prol, align 8, !tbaa !64
  %i.au = fneg double %i.ap
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.at, double %i.v) ; 2 uses
  %.sroa.10.1.us.us.prol = add nsw i64 %.sroa.10.0.lcssa.us.us, 2
  br label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol.loopexit:                     ; preds = %.lr.ph41.us.us.prol, %.lr.ph41.us.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph41.us.us.preheader ], [ %i.av, %.lr.ph41.us.us.prol ]
  %.sroa.10.140.us.us.unr = phi i64 [ %.sroa.10.138.us.us, %.lr.ph41.us.us.preheader ], [ %.sroa.10.1.us.us.prol, %.lr.ph41.us.us.prol ]
  %.02139.us.us.unr = phi double [ %i.v, %.lr.ph41.us.us.preheader ], [ %i.av, %.lr.ph41.us.us.prol ]
  %i.aw = icmp eq i64 %i.al, %.sroa.10.0.lcssa.us.us
  br i1 %i.aw, label %._crit_edge.us.us, label %.lr.ph41.us.us

.lr.ph41.us.us:                                   ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us
  %.sroa.10.140.us.us = phi i64 [ %.sroa.10.1.us.us.1, %.lr.ph41.us.us ], [ %.sroa.10.140.us.us.unr, %.lr.ph41.us.us.prol.loopexit ] ; 4 uses
  %.02139.us.us = phi double [ %i.bm, %.lr.ph41.us.us ], [ %.02139.us.us.unr, %.lr.ph41.us.us.prol.loopexit ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.140.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.140.us.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
  %i.bb = sext i32 %i.ba to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.bb
  %i.bc = load double, ptr %gep.us.us, align 8, !tbaa !64
  %i.bd = fneg double %i.ay
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bc, double %.02139.us.us)
  %.sroa.10.1.us.us = add nsw i64 %.sroa.10.140.us.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1.us.us
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1.us.us
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63
  %i.bj = sext i32 %i.bi to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.bj
  %i.bk = load double, ptr %gep.us.us.1, align 8, !tbaa !64
  %i.bl = fneg double %i.bg
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bk, double %i.be) ; 2 uses
  %.sroa.10.1.us.us.1 = add nsw i64 %.sroa.10.140.us.us, 2 ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %.sroa.10.1.us.us.1, %i.ab
  br i1 %exitcond60.not.1, label %._crit_edge.us.us, label %.lr.ph41.us.us, !llvm.loop !968

._crit_edge.us.us:                                ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.v, %.critedge.us.us ], [ %.lcssa.unr, %.lr.ph41.us.us.prol.loopexit ], [ %i.bm, %.lr.ph41.us.us ]
  %i.bn = fdiv double %.021.lcssa.us.us, %i.aj
  store double %i.bn, ptr %gep49.us.us, align 8, !tbaa !64
  %.022.us.us = add nsw i64 %.02244.us.us, -1
  %i.bo = icmp sgt i64 %.02244.us.us, 0
  br i1 %i.bo, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %._crit_edge47.split.us.us, !llvm.loop !969

._crit_edge47.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bp = add nuw nsw i64 %.050.us, 1             ; 2 uses
  %exitcond61.not = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond61.not, label %._crit_edge53.split, label %.lr.ph46.us, !llvm.loop !970

._crit_edge53.split:                              ; preds = %._crit_edge47.split, %._crit_edge47.split.us.us, %.lr.ph52, %bb.a
  ret void

.lr.ph46:                                         ; preds = %.lr.ph52.split, %._crit_edge47.split
  %.050 = phi i64 [ %i.br, %._crit_edge47.split ], [ 0, %.lr.ph52.split ] ; 2 uses
  %i.bq = mul nsw i64 %i.k, %.050
  %invariant.gep48 = getelementptr [8 x i8], ptr %i.i, i64 %i.bq ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

._crit_edge47.split:                              ; preds = %._crit_edge
  %i.br = add nuw nsw i64 %.050, 1                ; 2 uses
  %exitcond58.not = icmp eq i64 %i.br, %i.b
  br i1 %exitcond58.not, label %._crit_edge53.split, label %.lr.ph46, !llvm.loop !970

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph46, %._crit_edge
  %.02244 = phi i64 [ %.02243, %.lr.ph46 ], [ %.022, %._crit_edge ] ; 6 uses
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %.02244 ; 2 uses
  %i.bs = load double, ptr %gep49, align 8, !tbaa !64 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.02244
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.02244
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !63 ; 2 uses
  %i.by = sext i32 %i.bx to i64                   ; 3 uses
  %i.bz = add nsw i64 %i.by, %i.bv                ; 4 uses
  %i.ca = icmp sgt i32 %i.bx, 0
  br i1 %i.ca, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.c
  %.sroa.10.035 = phi i64 [ %i.cf, %bb.c ], [ %i.bv, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.035
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !63
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp sgt i64 %.02244, %i.cd
  br i1 %i.ce, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.cf = add nsw i64 %.sroa.10.035, 1            ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.bz
  br i1 %i.cg, label %.lr.ph, label %.critedge, !llvm.loop !967

.critedge:                                        ; preds = %.lr.ph, %bb.c, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %.sroa.10.0.lcssa = phi i64 [ %i.bv, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ], [ %i.bz, %bb.c ], [ %.sroa.10.035, %.lr.ph ] ; 5 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.0.lcssa
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !64
  %.sroa.10.138 = add nsw i64 %.sroa.10.0.lcssa, 1 ; 4 uses
  %i.cj = icmp slt i64 %.sroa.10.138, %i.bz
  br i1 %i.cj, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.critedge
  %i.ck = add nsw i64 %i.by, -2
  %i.cl = add nsw i64 %i.ck, %i.bv
  %i.cm = sub nsw i64 %i.by, %i.bv
  %i.cn = add i64 %i.cm, %.sroa.10.0.lcssa
  %i.co = and i64 %i.cn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph41.prol, label %.lr.ph41.prol.loopexit

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.138
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.138
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.ct = sext i32 %i.cs to i64
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.ct
  %i.cu = load double, ptr %gep.prol, align 8, !tbaa !64
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %i.bs) ; 2 uses
  %.sroa.10.1.prol = add nsw i64 %.sroa.10.0.lcssa, 2
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %.lcssa74.unr = phi double [ poison, %.lr.ph41.preheader ], [ %i.cw, %.lr.ph41.prol ]
  %.sroa.10.140.unr = phi i64 [ %.sroa.10.138, %.lr.ph41.preheader ], [ %.sroa.10.1.prol, %.lr.ph41.prol ]
  %.02139.unr = phi double [ %i.bs, %.lr.ph41.preheader ], [ %i.cw, %.lr.ph41.prol ]
  %i.cx = icmp eq i64 %i.cl, %.sroa.10.0.lcssa
  br i1 %i.cx, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %.sroa.10.140 = phi i64 [ %.sroa.10.1.1, %.lr.ph41 ], [ %.sroa.10.140.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %.02139 = phi double [ %i.dn, %.lr.ph41 ], [ %.02139.unr, %.lr.ph41.prol.loopexit ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.140
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.140
  %i.db = load i32, ptr %i.da, align 4, !tbaa !63
  %i.dc = sext i32 %i.db to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.dc
  %i.dd = load double, ptr %gep, align 8, !tbaa !64
  %i.de = fneg double %i.cz
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %.02139)
  %.sroa.10.1 = add nsw i64 %.sroa.10.140, 1      ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !63
  %i.dk = sext i32 %i.dj to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.dk
  %i.dl = load double, ptr %gep.1, align 8, !tbaa !64
  %i.dm = fneg double %i.dh
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dl, double %i.df) ; 2 uses
  %.sroa.10.1.1 = add nsw i64 %.sroa.10.140, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.10.1.1, %i.bz
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph41, !llvm.loop !968

._crit_edge:                                      ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %.critedge
  %.021.lcssa = phi double [ %i.bs, %.critedge ], [ %.lcssa74.unr, %.lr.ph41.prol.loopexit ], [ %i.dn, %.lr.ph41 ]
  %i.do = fdiv double %.021.lcssa, %i.ci
  store double %i.do, ptr %gep49, align 8, !tbaa !64
  %.022 = add nsw i64 %.02244, -1
  %i.dp = icmp sgt i64 %.02244, 0
  br i1 %i.dp, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %._crit_edge47.split, !llvm.loop !969
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Product.903", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::TriangularView.490", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !617
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.not11.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.e, %i.n
  br i1 %i.o, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = mul nsw i64 %i.h, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.q, i64 noundef %i.e, i64 noundef %i.h)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  tail call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

bb.g:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !9      ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !75   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !76   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.w
  %or.cond.i.i.i.i.i.i.i11 = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i11, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.u, 0
  %i.ac = icmp eq i64 %i.w, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sdiv i64 9223372036854775807, %i.w
  %i.ae = icmp sgt i64 %i.u, %i.ad
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ag = mul nsw i64 %i.w, %i.u
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag, i64 noundef %i.u, i64 noundef %i.w)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !75
  %.pre20.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %bb.g
  %i.ah = phi i64 [ %.pre20.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.w, %bb.g ]
  %i.ai = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.g ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !9     ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = mul nsw i64 %i.ai, %i.ah                ; 7 uses
  %i.am = sdiv i64 %i.al, 2                       ; 2 uses
  %i.an = shl nsw i64 %i.am, 1                    ; 5 uses
  %i.ao = icmp sgt i64 %i.al, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.ap = icmp slt i64 %i.an, %i.al
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

end_hunk_9
begin_hunk_10_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %vec.phi240 = phi <4 x i32> [ %i.ns, %vector.ph236 ], [ %i.nw, %vector.body238 ]
  %vec.phi241 = phi <4 x i32> [ zeroinitializer, %vector.ph236 ], [ %i.nx, %vector.body238 ]
  %i.nu = getelementptr [4 x i8], ptr %i.nt, i64 %index239 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %wide.load242 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !63
  %wide.load243 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !63
  %i.nw = add <4 x i32> %wide.load242, %vec.phi240 ; 2 uses
  %i.nx = add <4 x i32> %wide.load243, %vec.phi241 ; 2 uses
  %index.next244 = add nuw i64 %index239, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.ny, label %middle.block245, label %vector.body238, !llvm.loop !988

middle.block245:                                  ; preds = %vector.body238
  %bin.rdx246 = add <4 x i32> %i.nx, %i.nw
  %i.nz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx246) ; 2 uses
  %cmp.n247 = icmp eq i64 %i.nq, %n.vec237
  br i1 %cmp.n247, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph89.i.i.i.i25.preheader273

.lr.ph89.i.i.i.i25.preheader273:                  ; preds = %.lr.ph89.i.i.i.i25.preheader, %middle.block245
  %.05588.i.i.i.i26.ph = phi i64 [ %i.mc, %.lr.ph89.i.i.i.i25.preheader ], [ %i.nr, %middle.block245 ]
  %.187.i.i.i.i27.ph = phi i32 [ %.075.lcssa.i.i.i.i21, %.lr.ph89.i.i.i.i25.preheader ], [ %i.nz, %middle.block245 ]
  br label %.lr.ph89.i.i.i.i25

.lr.ph85.i.i.i.i28:                               ; preds = %.lr.ph85.i.i.i.i28.preheader278, %.lr.ph85.i.i.i.i28
  %.05683.i.i.i.i29 = phi i64 [ %i.od, %.lr.ph85.i.i.i.i28 ], [ %.05683.i.i.i.i29.ph, %.lr.ph85.i.i.i.i28.preheader278 ] ; 2 uses
  %.07582.i.i.i.i30 = phi i32 [ %i.oc, %.lr.ph85.i.i.i.i28 ], [ %.07582.i.i.i.i30.ph, %.lr.ph85.i.i.i.i28.preheader278 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.05683.i.i.i.i29
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !63
  %i.oc = add nsw i32 %i.ob, %.07582.i.i.i.i30    ; 2 uses
  %i.od = add nuw nsw i64 %.05683.i.i.i.i29, 1    ; 2 uses
  %exitcond.not.i.i.i.i31 = icmp eq i64 %i.od, %.0.i.i.i.i.i.i.i.i14
  br i1 %exitcond.not.i.i.i.i31, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28, !llvm.loop !989

.lr.ph89.i.i.i.i25:                               ; preds = %.lr.ph89.i.i.i.i25.preheader273, %.lr.ph89.i.i.i.i25
  %.05588.i.i.i.i26 = phi i64 [ %i.oh, %.lr.ph89.i.i.i.i25 ], [ %.05588.i.i.i.i26.ph, %.lr.ph89.i.i.i.i25.preheader273 ] ; 2 uses
  %.187.i.i.i.i27 = phi i32 [ %i.og, %.lr.ph89.i.i.i.i25 ], [ %.187.i.i.i.i27.ph, %.lr.ph89.i.i.i.i25.preheader273 ]
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %.05588.i.i.i.i26
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !63
  %i.og = add nsw i32 %i.of, %.187.i.i.i.i27      ; 2 uses
  %i.oh = add nsw i64 %.05588.i.i.i.i26, 1        ; 2 uses
  %i.oi = icmp slt i64 %i.oh, %i.lo
  br i1 %i.oi, label %.lr.ph89.i.i.i.i25, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, !llvm.loop !990

bb.ak:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.oj = load i32, ptr %i.ld, align 4, !tbaa !63 ; 3 uses
  %i.ok = icmp sgt i64 %i.lo, 1
  br i1 %i.ok, label %.lr.ph94.i.i.i.i42.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph94.i.i.i.i42.preheader:                     ; preds = %bb.ak
  %i.ol = add nsw i64 %i.lo, -1                   ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.lo, 9
  br i1 %min.iters.check251, label %.lr.ph94.i.i.i.i42.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph94.i.i.i.i42.preheader
  %n.vec253 = and i64 %i.ol, -8                   ; 3 uses
  %i.om = or disjoint i64 %n.vec253, 1
  %i.on = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.oj, i64 0
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <4 x i32> [ %i.on, %vector.ph252 ], [ %i.or, %vector.body254 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph252 ], [ %i.os, %vector.body254 ]
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index255 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  %wide.load258 = load <4 x i32>, ptr %i.op, align 4, !tbaa !63
  %wide.load259 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !63
  %i.or = add <4 x i32> %wide.load258, %vec.phi256 ; 2 uses
  %i.os = add <4 x i32> %wide.load259, %vec.phi257 ; 2 uses
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.ot = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.ot, label %middle.block261, label %vector.body254, !llvm.loop !991

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <4 x i32> %i.os, %i.or
  %i.ou = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.ol, %n.vec253
  br i1 %cmp.n263, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42.preheader270

.lr.ph94.i.i.i.i42.preheader270:                  ; preds = %.lr.ph94.i.i.i.i42.preheader, %middle.block261
  %.092.i.i.i.i43.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i42.preheader ], [ %i.om, %middle.block261 ]
  %.291.i.i.i.i44.ph = phi i32 [ %i.oj, %.lr.ph94.i.i.i.i42.preheader ], [ %i.ou, %middle.block261 ]
  br label %.lr.ph94.i.i.i.i42

.lr.ph94.i.i.i.i42:                               ; preds = %.lr.ph94.i.i.i.i42.preheader270, %.lr.ph94.i.i.i.i42
  %.092.i.i.i.i43 = phi i64 [ %i.oy, %.lr.ph94.i.i.i.i42 ], [ %.092.i.i.i.i43.ph, %.lr.ph94.i.i.i.i42.preheader270 ] ; 2 uses
  %.291.i.i.i.i44 = phi i32 [ %i.ox, %.lr.ph94.i.i.i.i42 ], [ %.291.i.i.i.i44.ph, %.lr.ph94.i.i.i.i42.preheader270 ]
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.092.i.i.i.i43
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !63
  %i.ox = add nsw i32 %i.ow, %.291.i.i.i.i44      ; 2 uses
  %i.oy = add nuw nsw i64 %.092.i.i.i.i43, 1      ; 2 uses
  %exitcond102.not.i.i.i.i45 = icmp eq i64 %i.oy, %i.lo
  br i1 %exitcond102.not.i.i.i.i45, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42, !llvm.loop !992

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46: ; preds = %.lr.ph89.i.i.i.i25, %.lr.ph94.i.i.i.i42, %middle.block245, %middle.block261, %.preheader.i.i.i.i20, %bb.ak, %bb.ac
  %.0.i24.in = phi i32 [ %i.lm, %bb.ac ], [ %i.ox, %.lr.ph94.i.i.i.i42 ], [ %.075.lcssa.i.i.i.i21, %.preheader.i.i.i.i20 ], [ %i.oj, %bb.ak ], [ %i.ou, %middle.block261 ], [ %i.nz, %middle.block245 ], [ %i.og, %.lr.ph89.i.i.i.i25 ]
  %i.oz = icmp sgt i32 %.0.i24.in, 0
  br i1 %i.oz, label %bb.al, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

bb.al:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i8 0, ptr %5, align 8, !tbaa !635, !alias.scope !993
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.pa, align 8, !alias.scope !993
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cc, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !993
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread: ; preds = %bb.ad, %bb.al, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  %i.pb = load i64, ptr %i.d, align 8, !tbaa !14
  %i.pc = icmp sgt i64 %i.pb, 0
  br i1 %i.pc, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !14 ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !76 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !75
  %.not.i.i.i.i.i49 = icmp eq i64 %i.pj, %i.pf
  br i1 %.not.i.i.i.i.i49, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pk = icmp eq i64 %i.pf, 0
  %i.pl = icmp eq i64 %i.ph, 0
  %or.cond.i.i.i.i.i.i.i52 = or i1 %i.pk, %i.pl
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pm = sdiv i64 9223372036854775807, %i.ph
  %i.pn = icmp sgt i64 %i.pf, %i.pm
  br i1 %i.pn, label %bb.ap, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53

bb.ap:                                            ; preds = %bb.ao
  %i.po = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.po, align 8, !tbaa !73
  call void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53: ; preds = %bb.ao, %bb.an
  %i.pp = mul nsw i64 %i.ph, %i.pf
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.pp, i64 noundef %i.pf, i64 noundef %i.ph)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56: ; preds = %bb.am, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph53, label %._crit_edge54.split

.lr.ph53:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !604, !nonnull !71, !align !122 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %.02144 = add nsw i64 %i.g, -1                  ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.h, label %.lr.ph53.split, label %._crit_edge54.split

.lr.ph53.split:                                   ; preds = %.lr.ph53
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150  ; 6 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !151  ; 8 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !152  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !153  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph47.us, label %.lr.ph47

.lr.ph47.us:                                      ; preds = %.lr.ph53.split, %._crit_edge48.split.us.us
  %.051.us = phi i64 [ %i.bq, %._crit_edge48.split.us.us ], [ 0, %.lr.ph53.split ] ; 2 uses
  %i.u = mul nsw i64 %i.k, %.051.us
  %invariant.gep49.us = getelementptr [8 x i8], ptr %i.i, i64 %i.u ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %._crit_edge.us.us, %.lr.ph47.us
  %.02145.us.us = phi i64 [ %.02144, %.lr.ph47.us ], [ %.021.us.us, %._crit_edge.us.us ] ; 6 uses
  %gep50.us.us = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %.02145.us.us ; 2 uses
  %i.v = load double, ptr %gep50.us.us, align 8, !tbaa !64 ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.02145.us.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63   ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !63  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = icmp slt i32 %i.x, %i.aa
  br i1 %i.ac, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.039.us.us = phi i64 [ %i.ah, %bb.b ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.039.us.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp sgt i64 %.02145.us.us, %i.af
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ah = add nsw i64 %.sroa.10.039.us.us, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond64.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !998

bb.c:                                             ; preds = %.lr.ph.us.us
  %i.ai = icmp eq i64 %.02145.us.us, %i.af
  %i.aj = zext i1 %i.ai to i64
  %spec.select.us.us = add nsw i64 %.sroa.10.039.us.us, %i.aj
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.c
  %.sroa.10.1.us.us = phi i64 [ %spec.select.us.us, %bb.c ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 7 uses
  %i.ak = icmp slt i64 %.sroa.10.1.us.us, %i.ab
  br i1 %i.ak, label %.lr.ph42.us.us.preheader, label %._crit_edge.us.us

.lr.ph42.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.al = sub i64 %i.ab, %.sroa.10.1.us.us
  %xtraiter108 = and i64 %i.al, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph42.us.us.prol.loopexit, label %.lr.ph42.us.us.prol

.lr.ph42.us.us.prol:                              ; preds = %.lr.ph42.us.us.preheader
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1.us.us
  %i.an = load double, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1.us.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !63
  %i.aq = sext i32 %i.ap to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.aq
  %i.ar = load double, ptr %gep.us.us.prol, align 8, !tbaa !64
  %i.as = fneg double %i.an
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.v) ; 2 uses
  %i.au = add nsw i64 %.sroa.10.1.us.us, 1
  br label %.lr.ph42.us.us.prol.loopexit

.lr.ph42.us.us.prol.loopexit:                     ; preds = %.lr.ph42.us.us.prol, %.lr.ph42.us.us.preheader
  %.lcssa101.unr = phi double [ poison, %.lr.ph42.us.us.preheader ], [ %i.at, %.lr.ph42.us.us.prol ]
  %.02241.us.us.unr = phi double [ %i.v, %.lr.ph42.us.us.preheader ], [ %i.at, %.lr.ph42.us.us.prol ]
  %.sroa.10.240.us.us.unr = phi i64 [ %.sroa.10.1.us.us, %.lr.ph42.us.us.preheader ], [ %i.au, %.lr.ph42.us.us.prol ]
  %i.av = add nsw i64 %i.ab, -1
  %i.aw = icmp eq i64 %.sroa.10.1.us.us, %i.av
  br i1 %i.aw, label %._crit_edge.us.us, label %.lr.ph42.us.us

.lr.ph42.us.us:                                   ; preds = %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us
  %.02241.us.us = phi double [ %i.bn, %.lr.ph42.us.us ], [ %.02241.us.us.unr, %.lr.ph42.us.us.prol.loopexit ]
  %.sroa.10.240.us.us = phi i64 [ %i.bo, %.lr.ph42.us.us ], [ %.sroa.10.240.us.us.unr, %.lr.ph42.us.us.prol.loopexit ] ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.240.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.240.us.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
  %i.bb = sext i32 %i.ba to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.bb
  %i.bc = load double, ptr %gep.us.us, align 8, !tbaa !64
  %i.bd = fneg double %i.ay
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bc, double %.02241.us.us)
  %i.bf = add nsw i64 %.sroa.10.240.us.us, 1      ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.bk = sext i32 %i.bj to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.bk
  %i.bl = load double, ptr %gep.us.us.1, align 8, !tbaa !64
  %i.bm = fneg double %i.bh
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.be) ; 2 uses
  %i.bo = add nsw i64 %.sroa.10.240.us.us, 2      ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.bo, %i.ab
  br i1 %exitcond65.not.1, label %._crit_edge.us.us, label %.lr.ph42.us.us, !llvm.loop !999

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us, %.critedge.us.us
  %.022.lcssa.us.us = phi double [ %i.v, %.critedge.us.us ], [ %i.bn, %.lr.ph42.us.us ], [ %.lcssa101.unr, %.lr.ph42.us.us.prol.loopexit ], [ %i.v, %bb.b ]
  store double %.022.lcssa.us.us, ptr %gep50.us.us, align 8, !tbaa !64
  %.021.us.us = add nsw i64 %.02145.us.us, -1
  %i.bp = icmp sgt i64 %.02145.us.us, 0
  br i1 %i.bp, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %._crit_edge48.split.us.us, !llvm.loop !1000

._crit_edge48.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bq = add nuw nsw i64 %.051.us, 1             ; 2 uses
  %exitcond66.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond66.not, label %._crit_edge54.split, label %.lr.ph47.us, !llvm.loop !1001

._crit_edge54.split:                              ; preds = %._crit_edge48.split, %._crit_edge48.split.us.us, %.lr.ph53, %bb.a
  ret void

.lr.ph47:                                         ; preds = %.lr.ph53.split, %._crit_edge48.split
  %.051 = phi i64 [ %i.bs, %._crit_edge48.split ], [ 0, %.lr.ph53.split ] ; 2 uses
  %i.br = mul nsw i64 %i.k, %.051
  %invariant.gep49 = getelementptr [8 x i8], ptr %i.i, i64 %i.br ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

._crit_edge48.split:                              ; preds = %._crit_edge
  %i.bs = add nuw nsw i64 %.051, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.bs, %i.b
  br i1 %exitcond63.not, label %._crit_edge54.split, label %.lr.ph47, !llvm.loop !1001

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph47, %._crit_edge
  %.02145 = phi i64 [ %.02144, %.lr.ph47 ], [ %.021, %._crit_edge ] ; 7 uses
  %gep50 = getelementptr [8 x i8], ptr %invariant.gep49, i64 %.02145 ; 2 uses
  %i.bt = load double, ptr %gep50, align 8, !tbaa !64 ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.02145
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !63
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.02145
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63 ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %i.ca = add nsw i64 %i.bz, %i.bw                ; 3 uses
  %i.cb = icmp sgt i32 %i.by, 0
  br i1 %i.cb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.d
  %.sroa.10.039 = phi i64 [ %i.cg, %bb.d ], [ %i.bw, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.039
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !63
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = icmp sgt i64 %.02145, %i.ce
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.cg = add nsw i64 %.sroa.10.039, 1            ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ca
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !998

bb.e:                                             ; preds = %.lr.ph
  %i.ci = icmp eq i64 %.02145, %i.ce
  %i.cj = zext i1 %i.ci to i64
  %spec.select = add nsw i64 %.sroa.10.039, %i.cj
  br label %.critedge

.critedge:                                        ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.e
  %.sroa.10.1 = phi i64 [ %spec.select, %bb.e ], [ %i.bw, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 7 uses
  %i.ck = icmp slt i64 %.sroa.10.1, %i.ca
  br i1 %i.ck, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.critedge
  %i.cl = add nsw i64 %i.bz, %i.bw
  %i.cm = sub i64 %i.cl, %.sroa.10.1
  %i.cn = add nsw i64 %i.bz, -1
  %i.co = add nsw i64 %i.cn, %i.bw
  %xtraiter = and i64 %i.cm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.ct = sext i32 %i.cs to i64
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.ct
  %i.cu = load double, ptr %gep.prol, align 8, !tbaa !64
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %i.bt) ; 2 uses
  %i.cx = add nsw i64 %.sroa.10.1, 1
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.lcssa107.unr = phi double [ poison, %.lr.ph42.preheader ], [ %i.cw, %.lr.ph42.prol ]
  %.02241.unr = phi double [ %i.bt, %.lr.ph42.preheader ], [ %i.cw, %.lr.ph42.prol ]
  %.sroa.10.240.unr = phi i64 [ %.sroa.10.1, %.lr.ph42.preheader ], [ %i.cx, %.lr.ph42.prol ]
  %i.cy = icmp eq i64 %i.co, %.sroa.10.1
  br i1 %i.cy, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.02241 = phi double [ %i.dp, %.lr.ph42 ], [ %.02241.unr, %.lr.ph42.prol.loopexit ]
  %.sroa.10.240 = phi i64 [ %i.dq, %.lr.ph42 ], [ %.sroa.10.240.unr, %.lr.ph42.prol.loopexit ] ; 4 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.240
  %i.da = load double, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.240
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !63
  %i.dd = sext i32 %i.dc to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.dd
  %i.de = load double, ptr %gep, align 8, !tbaa !64
  %i.df = fneg double %i.da
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.de, double %.02241)
  %i.dh = add nsw i64 %.sroa.10.240, 1            ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !63
  %i.dm = sext i32 %i.dl to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.dm
  %i.dn = load double, ptr %gep.1, align 8, !tbaa !64
  %i.do = fneg double %i.dj
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dn, double %i.dg) ; 2 uses
  %i.dq = add nsw i64 %.sroa.10.240, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dq, %i.ca
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph42, !llvm.loop !999

._crit_edge:                                      ; preds = %bb.d, %.lr.ph42.prol.loopexit, %.lr.ph42, %.critedge
  %.022.lcssa = phi double [ %i.bt, %.critedge ], [ %i.dp, %.lr.ph42 ], [ %.lcssa107.unr, %.lr.ph42.prol.loopexit ], [ %i.bt, %bb.d ]
  store double %.022.lcssa, ptr %gep50, align 8, !tbaa !64
  %.021 = add nsw i64 %.02145, -1
  %i.dr = icmp sgt i64 %.02145, 0
  br i1 %i.dr, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %._crit_edge48.split, !llvm.loop !1000
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_EEbRKNS_10MatrixBaseIT_EERNS9_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::SparseLUMatrixUReturnType", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !9, !noalias !1002 ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !75, !noalias !1002 ; 10 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !9, !noalias !1005 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75, !noalias !1005 ; 3 uses
  %i.s = icmp eq i64 %i.r, %i.o
  %i.t = icmp sgt i64 %i.o, 0                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.fr = freeze i1 %i.s
  br i1 %.fr, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter126 = and i64 %i.o, 3                  ; 3 uses
  %i.v = icmp ult i64 %i.o, 4
  %unroll_iter130 = and i64 %i.o, 9223372036854775804
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.t, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !62   ; 5 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.o, 4
  %unroll_iter = and i64 %i.o, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0
  br label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us: ; preds = %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runIS5_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us, %.lr.ph.split.us.split
  %.02079.us = phi i64 [ 0, %.lr.ph.split.us.split ], [ %i.bl, %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runIS5_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us ] ; 3 uses
  %i.y = mul nuw nsw i64 %i.o, %.02079.us
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y ; 5 uses
  %i.aa = mul nsw i64 %i.r, %.02079.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  br i1 %i.x, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us.epil.preheader, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us: ; preds = %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us
  %.088.i.us = phi i64 [ %i.bd, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.088.i.us
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.088.i.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !64
  store double %i.ah, ptr %i.ag, align 8, !tbaa !64
  %i.ai = or disjoint i64 %.088.i.us, 1           ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.am
  %i.ao = load double, ptr %i.aj, align 8, !tbaa !64
  store double %i.ao, ptr %i.an, align 8, !tbaa !64
  %i.ap = or disjoint i64 %.088.i.us, 2           ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !63
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.at
  %i.av = load double, ptr %i.aq, align 8, !tbaa !64
  store double %i.av, ptr %i.au, align 8, !tbaa !64
  %i.aw = or disjoint i64 %.088.i.us, 3           ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !64
  store double %i.bc, ptr %i.bb, align 8, !tbaa !64
  %i.bd = add nuw nsw i64 %.088.i.us, 4           ; 2 uses
end_hunk_10
