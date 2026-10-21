Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS4_IS6_S3_Li0EEEEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISJ_EE5valueEPvE4typeE:bb.a
_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !70
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pr.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !68
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS5_IS7_S2_Li0EEEEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS5_IS7_S2_Li0EEEEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.h = phi ptr [ %.pre.i.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZN5Eigen8internal20generic_product_implINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEKNS_7ProductIS3_S8_Li0EEEEENS_11SparseShapeENS_10DenseShapeELi7EE13scaleAndAddToIS8_EEvRT_RKS3_RKSD_RKd(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(25) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS3_IS5_S1_Li0EEEEELi0EEEEERKT_.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bj, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS5_IS7_S2_Li0EEEEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !70
  call void @free(ptr noundef %i.k) #32
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS3_IS5_S1_Li0EEEEELi0EEEEERKT_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS5_IS7_S2_Li0EEEEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.l = load ptr, ptr %4, align 8, !tbaa !70     ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = load i64, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq i64 %i.p, %i.n
  br i1 %.not.i.i.i.i, label %bb.e, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS3_IS5_S1_Li0EEEEELi0EEEEERKT_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.n, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %thread-pre-split.i.i.i
  %.pr.i.i.i = load i64, ptr %i.o, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS3_IS5_S1_Li0EEEEELi0EEEEERKT_.exit
  %i.q = phi i64 [ %.pr.i.i.i, %.noexc ], [ %i.n, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS3_IS5_S1_Li0EEEEELi0EEEEERKT_.exit ] ; 7 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !70     ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = sdiv i64 %i.q, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 6 uses
  %i.v = icmp sgt i64 %i.q, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = icmp slt i64 %i.u, %i.q
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.x = sub i64 %i.q, %i.u                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %i.m, %i.s
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.z = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.u, %index                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !68
  %wide.load8 = load <2 x double>, ptr %i.ad, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load, ptr %i.ab, align 8, !tbaa !68
  store <2 x double> %wide.load8, ptr %i.ae, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ] ; 4 uses
  %i.ag = sub i64 %i.q, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader9 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !68
  store double %i.aj, ptr %i.ah, align 8, !tbaa !68
  %i.ak = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1112

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader9
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ], [ %i.ak, %.lr.ph.i.i.i.i.i.prol ]
  %i.al = sub i64 %.05.i.i.i.i.i.ph, %i.q
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !68
  store double %i.ap, ptr %i.an, align 8, !tbaa !68
  %i.aq = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !68
  store double %i.at, ptr %i.ar, align 8, !tbaa !68
  %i.au = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !68
  store double %i.ax, ptr %i.av, align 8, !tbaa !68
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !68
  store double %i.bb, ptr %i.az, align 8, !tbaa !68
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bc, %i.q
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1113

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !97
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !97
  %i.bg = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.u
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bi = load ptr, ptr %4, align 8, !tbaa !70
  call void @free(ptr noundef %i.bi) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %thread-pre-split.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %4, align 8, !tbaa !70
  call void @free(ptr noundef %i.bk) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal20generic_product_implINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEKNS_7ProductIS3_S8_Li0EEEEENS_11SparseShapeENS_10DenseShapeELi7EE13scaleAndAddToIS8_EEvRT_RKS3_RKSD_RKd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.12", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEENS0_13sub_assign_opIddEEE3runINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KS7_EES9_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEEEEERKT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !70
  call void @free(ptr noundef %i.b) #32
  resume { ptr, i32 } %i.a

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %5, align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.e, label %.split.i.i, label %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit

.split.i.i:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEEEEERKT_.exit
  %i.o = icmp eq ptr %i.n, null
  %i.p = load ptr, ptr %0, align 8                ; 4 uses
  br i1 %i.o, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i: ; preds = %.split.i.i, %._crit_edge.us.us.i.i
  %.01623.us.us.i.i = phi i64 [ %i.ba, %._crit_edge.us.us.i.i ], [ 0, %.split.i.i ] ; 3 uses
  %6 = load double, ptr %3, align 8, !tbaa !68
  %gep26.us.us.i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01623.us.us.i.i
  %i.q = load double, ptr %gep26.us.us.i.i, align 8, !tbaa !68
  %i.r = fmul double %6, %i.q                     ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01623.us.us.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78   ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = icmp slt i32 %i.t, %i.v
  br i1 %i.x, label %.lr.ph.us.us.preheader.i.i, label %._crit_edge.us.us.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i
  %i.y = sext i32 %i.t to i64                     ; 6 uses
  %i.z = sub nsw i64 %i.w, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.i.i.prol.loopexit, label %.lr.ph.us.us.i.i.prol

.lr.ph.us.us.i.i.prol:                            ; preds = %.lr.ph.us.us.preheader.i.i
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !68
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !78
  %i.ae = sext i32 %i.ad to i64
  %gep.us.us.i.i.prol = getelementptr [8 x i8], ptr %i.p, i64 %i.ae ; 2 uses
  %i.af = load double, ptr %gep.us.us.i.i.prol, align 8, !tbaa !68
  %i.ag = call double @llvm.fmuladd.f64(double %i.ab, double %i.r, double %i.af)
  store double %i.ag, ptr %gep.us.us.i.i.prol, align 8, !tbaa !68
  %i.ah = add nsw i64 %i.y, 1
  br label %.lr.ph.us.us.i.i.prol.loopexit

.lr.ph.us.us.i.i.prol.loopexit:                   ; preds = %.lr.ph.us.us.i.i.prol, %.lr.ph.us.us.preheader.i.i
  %.sroa.8.022.us.us.i.i.unr = phi i64 [ %i.y, %.lr.ph.us.us.preheader.i.i ], [ %i.ah, %.lr.ph.us.us.i.i.prol ]
  %i.ai = add nsw i64 %i.w, -1
  %i.aj = icmp eq i64 %i.ai, %i.y
  br i1 %i.aj, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %.lr.ph.us.us.i.i.prol.loopexit, %.lr.ph.us.us.i.i
  %.sroa.8.022.us.us.i.i = phi i64 [ %i.az, %.lr.ph.us.us.i.i ], [ %.sroa.8.022.us.us.i.i.unr, %.lr.ph.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.sroa.8.022.us.us.i.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !68
  %i.am = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.sroa.8.022.us.us.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !78
  %i.ao = sext i32 %i.an to i64
  %gep.us.us.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.ao ; 2 uses
  %i.ap = load double, ptr %gep.us.us.i.i, align 8, !tbaa !68
  %i.aq = call double @llvm.fmuladd.f64(double %i.al, double %i.r, double %i.ap)
  store double %i.aq, ptr %gep.us.us.i.i, align 8, !tbaa !68
  %i.ar = add nsw i64 %.sroa.8.022.us.us.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !68
  %i.au = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !78
  %i.aw = sext i32 %i.av to i64
  %gep.us.us.i.i.1 = getelementptr [8 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %i.ax = load double, ptr %gep.us.us.i.i.1, align 8, !tbaa !68
  %i.ay = call double @llvm.fmuladd.f64(double %i.at, double %i.r, double %i.ax)
  store double %i.ay, ptr %gep.us.us.i.i.1, align 8, !tbaa !68
  %i.az = add nsw i64 %.sroa.8.022.us.us.i.i, 2   ; 2 uses
  %exitcond35.not.i.i.1 = icmp eq i64 %i.az, %i.w
  br i1 %exitcond35.not.i.i.1, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i, !llvm.loop !12

._crit_edge.us.us.i.i:                            ; preds = %.lr.ph.us.us.i.i.prol.loopexit, %.lr.ph.us.us.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i
  %i.ba = add nuw nsw i64 %.01623.us.us.i.i, 1    ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %i.ba, %i.d
  br i1 %exitcond36.not.i.i, label %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i, !llvm.loop !13

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i: ; preds = %.split.i.i, %._crit_edge.i.i
  %.01623.i.i = phi i64 [ %i.bl, %._crit_edge.i.i ], [ 0, %.split.i.i ] ; 4 uses
  %7 = load double, ptr %3, align 8, !tbaa !68
  %gep26.i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01623.i.i
  %i.bb = load double, ptr %gep26.i.i, align 8, !tbaa !68
  %i.bc = fmul double %7, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01623.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !78
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.01623.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add nsw i64 %i.bi, %i.bf
  %i.bk = icmp sgt i32 %i.bh, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i
  %i.bl = add nuw nsw i64 %.01623.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.d
  br i1 %exitcond.not.i.i, label %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i, !llvm.loop !13

.lr.ph.i.i:                                       ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i, %.lr.ph.i.i
  %.sroa.8.022.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %i.bf, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.sroa.8.022.i.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !68
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.sroa.8.022.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !78
  %i.bq = sext i32 %i.bp to i64
  %gep.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.bq ; 2 uses
  %i.br = load double, ptr %gep.i.i, align 8, !tbaa !68
  %i.bs = call double @llvm.fmuladd.f64(double %i.bn, double %i.bc, double %i.br)
  store double %i.bs, ptr %gep.i.i, align 8, !tbaa !68
  %i.bt = add nsw i64 %.sroa.8.022.i.i, 1         ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %i.bj
  br i1 %i.bu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !12

_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.us.us.i.i, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEEEEERKT_.exit
  call void @free(ptr noundef %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEENS0_13sub_assign_opIddEEE3runINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KS7_EES9_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1119, !nonnull !91, !align !116 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq i64 %i.g, %i.e
  br i1 %.not.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e, i64 noundef 1)
  %.pr.i.i.i = load i64, ptr %i.f, align 8, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split.i.i.i, %bb.a
  %i.h = phi i64 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.e, %bb.a ] ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 8 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = sdiv i64 %i.h, 2
  %i.l = shl nsw i64 %i.k, 1                      ; 6 uses
  %i.m = icmp sgt i64 %i.h, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.n = icmp slt i64 %i.l, %i.h
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.o = sub i64 %i.h, %i.l                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  %i.p = sub i64 %i.c, %i.j
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.q = add i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = add i64 %i.l, %index                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !68
  %wide.load17 = load <2 x double>, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x double> %wide.load, ptr %i.s, align 8, !tbaa !68
  store <2 x double> %wide.load17, ptr %i.v, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.preheader19:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 4 uses
  %i.x = sub i64 %i.h, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader19 ]
  %i.y = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.prol
  %i.z = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !68
  store double %i.aa, ptr %i.y, align 8, !tbaa !68
  %i.ab = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1117

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader19
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %i.ac = sub i64 %.05.i.i.i.i.i.ph, %i.h
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i
  %i.af = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.05.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !68
  store double %i.ag, ptr %i.ae, align 8, !tbaa !68
  %i.ah = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ah
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !68
  store double %i.ak, ptr %i.ai, align 8, !tbaa !68
  %i.al = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.al
  %i.ao = load double, ptr %i.an, align 8, !tbaa !68
  store double %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  %i.as = load double, ptr %i.ar, align 8, !tbaa !68
  store double %i.as, ptr %i.aq, align 8, !tbaa !68
  %i.at = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.at, %i.h
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1118

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !97
  store <2 x double> %i.aw, ptr %i.au, align 16, !tbaa !97
  %i.ax = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.l
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !258, !nonnull !91, !align !116 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !259, !nonnull !91, !align !116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !74 ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 0
  %i.bg = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  br i1 %i.bf, label %.split.i.i.i.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_13sub_assign_opIddEEEEvRT_RKT0_RKT1_.exit

.split.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.bp, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i.i.i
  %.01623.us.us.i.i.i.i.i.i.i = phi i64 [ %i.db, %._crit_edge.us.us.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i ] ; 3 uses
  %gep26.us.us.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bg, i64 %.01623.us.us.i.i.i.i.i.i.i
  %i.br = load double, ptr %gep26.us.us.i.i.i.i.i.i.i, align 8, !tbaa !68
  %i.bs = fneg double %i.br                       ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.01623.us.us.i.i.i.i.i.i.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !78 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !78 ; 2 uses
  %i.bx = sext i32 %i.bw to i64                   ; 3 uses
  %i.by = icmp slt i32 %i.bu, %i.bw
  br i1 %i.by, label %.lr.ph.us.us.preheader.i.i.i.i.i.i.i, label %._crit_edge.us.us.i.i.i.i.i.i.i

.lr.ph.us.us.preheader.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i
  %i.bz = sext i32 %i.bu to i64                   ; 6 uses
  %i.ca = sub nsw i64 %i.bx, %i.bz
  %xtraiter20 = and i64 %i.ca, 1
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.us.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.us.us.i.i.i.i.i.i.i.prol

.lr.ph.us.us.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.us.us.preheader.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !68
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bz
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !78
  %i.cf = sext i32 %i.ce to i64
  %gep.us.us.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.bq, i64 %i.cf ; 2 uses
  %i.cg = load double, ptr %gep.us.us.i.i.i.i.i.i.i.prol, align 8, !tbaa !68
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.bs, double %i.cg)
  store double %i.ch, ptr %gep.us.us.i.i.i.i.i.i.i.prol, align 8, !tbaa !68
  %i.ci = add nsw i64 %i.bz, 1
  br label %.lr.ph.us.us.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.us.us.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.us.us.i.i.i.i.i.i.i.prol, %.lr.ph.us.us.preheader.i.i.i.i.i.i.i
  %.sroa.8.022.us.us.i.i.i.i.i.i.i.unr = phi i64 [ %i.bz, %.lr.ph.us.us.preheader.i.i.i.i.i.i.i ], [ %i.ci, %.lr.ph.us.us.i.i.i.i.i.i.i.prol ]
  %i.cj = add nsw i64 %i.bx, -1
  %i.ck = icmp eq i64 %i.cj, %i.bz
  br i1 %i.ck, label %._crit_edge.us.us.i.i.i.i.i.i.i, label %.lr.ph.us.us.i.i.i.i.i.i.i

.lr.ph.us.us.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.us.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.us.us.i.i.i.i.i.i.i
  %.sroa.8.022.us.us.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.us.us.i.i.i.i.i.i.i ], [ %.sroa.8.022.us.us.i.i.i.i.i.i.i.unr, %.lr.ph.us.us.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !68
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !78
  %i.cp = sext i32 %i.co to i64
end_hunk_0
