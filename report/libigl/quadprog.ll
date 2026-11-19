Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quadprog?download=true
inline.NumInlined: 4879
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_2clES9_S5_S8_i":bb.a
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bm = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.w
  %i.bn = getelementptr [8 x i8], ptr %i.l, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34
  %i.bp = getelementptr [8 x i8], ptr %i.q, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !34
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.br ; 2 uses
  %i.bt = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !280

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.z, %bb.e ], [ %i.bk, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bu = load ptr, ptr %6, align 8, !tbaa !30    ; 3 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !34
  %i.bw = fadd double %.0.i.i.i.i.i.i.i.i.i.i.i, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !34
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i_crit_edge, %bb.a
  %i.bx = phi ptr [ %.pre14, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i_crit_edge ], [ null, %bb.a ]
  %i.by = phi i64 [ %.pre, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i_crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.l, ptr %4, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.q, ptr %5, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !53
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.i, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bx, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc3.i unwind label %bb.f

.noexc3.i:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pre15 = load ptr, ptr %6, align 8, !tbaa !30
  %.pre16 = load i64, ptr %i.r, align 8, !tbaa !16
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit

common.resume:                                    ; preds = %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.f ], [ %i.dz, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.thread.i, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %6, align 8, !tbaa !30
  call void @free(ptr noundef %i.cc) #22
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i, %.noexc3.i
  %i.cd = phi i64 [ %.pr.i.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i ], [ %.pre16, %.noexc3.i ] ; 3 uses
  %i.ce = phi ptr [ %i.bu, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.i.i.i.i.i.i.i ], [ %.pre15, %.noexc3.i ] ; 8 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cg, %i.cd
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.cd, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %bb.h

.noexc.i.i.i.i:                                   ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit
  %i.ch = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.cd, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERKT_.exit ] ; 7 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !30    ; 8 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = sdiv i64 %i.ch, 2
  %i.cl = shl nsw i64 %i.ck, 1                    ; 6 uses
  %i.cm = icmp sgt i64 %i.ch, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %i.cn = icmp slt i64 %i.cl, %i.ch
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.co = sub i64 %i.ch, %i.cl                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 8
  %i.cp = sub i64 %i.cf, %i.cj
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.co, -4                      ; 3 uses
  %i.cq = add i64 %i.cl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = add i64 %i.cl, %index                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <2 x double>, ptr %i.ct, align 8, !tbaa !34
  %wide.load21 = load <2 x double>, ptr %i.cu, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x double> %wide.load, ptr %i.cs, align 8, !tbaa !34
  store <2 x double> %wide.load21, ptr %i.cv, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.i.i.i.preheader22:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ] ; 4 uses
  %i.cx = sub i64 %i.ch, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter25 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22 ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.da = load double, ptr %i.cz, align 8, !tbaa !34
  store double %i.da, ptr %i.cy, align 8, !tbaa !34
  %i.db = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter25
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !282

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader22 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.dc = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.ch
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !34
  store double %i.dg, ptr %i.de, align 8, !tbaa !34
  %i.dh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dh
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !34
  store double %i.dk, ptr %i.di, align 8, !tbaa !34
  %i.dl = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dl
  %i.do = load double, ptr %i.dn, align 8, !tbaa !34
  store double %i.do, ptr %i.dm, align 8, !tbaa !34
  %i.dp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dp
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !34
  store double %i.ds, ptr %i.dq, align 8, !tbaa !34
  %i.dt = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dt, %i.ch
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !283

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.011.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.011.i.i.i.i.i.i.i.i
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !39
  store <2 x double> %i.dw, ptr %i.du, align 16, !tbaa !39
  %i.dx = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dy = icmp slt i64 %i.dx, %i.cl
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

bb.h:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %6, align 8, !tbaa !30
  call void @free(ptr noundef %i.ea) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS4_IKS1_Lin1ELi1ELb0EEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.eb = load ptr, ptr %6, align 8, !tbaa !30
  call void @free(ptr noundef %i.eb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_4clERS3_SB_S9_RiRd"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i64 %.8.val to i32                 ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !40     ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  %.not.not19 = icmp slt i32 %i.c, %i.a
  %.pre30 = load ptr, ptr %1, align 8, !tbaa !30  ; 3 uses
  br i1 %.not.not19, label %.lr.ph22, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre31 = sext i32 %i.c to i64
  br label %._crit_edge

.lr.ph22:                                         ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 0
  %sext = shl i64 %.8.val, 32
  %i.e = ashr exact i64 %sext, 32                 ; 3 uses
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %wide.trip.count = and i64 %.8.val, 2147483647  ; 5 uses
  %4 = mul i64 %.8.val, -8
  %5 = sext i32 %i.b to i64                       ; 2 uses
  %i.g = shl nsw i64 %5, 3
  %6 = add nsw i64 %i.g, 8
  %7 = mul i64 %.8.val, %6
  %8 = shl nuw nsw i64 %wide.trip.count, 3
  %i.h = getelementptr i8, ptr %.0.val, i64 %7
  %scevgep = getelementptr i8, ptr %i.h, i64 %8
  %i.i = add nsw i64 %i.e, 2305843009213693951
  %i.j = mul i64 %.8.val, %i.i
  %i.k = shl i64 %i.j, 3
  %scevgep44 = getelementptr i8, ptr %.0.val, i64 %i.k
  %9 = mul i64 %.8.val, %5
  %10 = add i64 %9, %wide.trip.count
  %11 = shl i64 %10, 3
  %scevgep45 = getelementptr i8, ptr %.0.val, i64 %11
  %12 = add nsw i64 %i.e, 2305843009213693950
  %13 = mul i64 %.8.val, %12
  %14 = shl i64 %13, 3
  %scevgep46 = getelementptr i8, ptr %.0.val, i64 %14
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %bound0 = icmp ult ptr %scevgep46, %scevgep
  %bound1 = icmp ult ptr %scevgep44, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %4, 0
  %15 = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %.8.val, 2147483646            ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %.loopexit
  %indvars.iv25 = phi i64 [ %i.e, %.lr.ph22 ], [ %indvars.iv.next26, %.loopexit ] ; 2 uses
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1 ; 4 uses
  %i.l = add nsw i64 %indvars.iv25, -2            ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.pre30, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.pre30, i64 %indvars.iv.next26
  %i.o = load <2 x double>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %i.p = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.o) ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 1  ; 5 uses
  %i.r = extractelement <2 x double> %i.p, i64 0  ; 6 uses
  %i.s = fcmp ogt double %i.r, %i.q
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fdiv double %i.q, %i.r                   ; 2 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.u)
  %i.v = fmul double %i.r, %sqrt.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.d:                                             ; preds = %bb.b
  %i.w = fcmp ogt double %i.q, %i.r
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fdiv double %i.r, %i.q                   ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double 1.000000e+00)
  %sqrt1.i = tail call double @llvm.sqrt.f64(double %i.y)
  %i.z = fmul double %i.q, %sqrt1.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.f:                                             ; preds = %bb.d
  %i.aa = fmul double %i.r, f0x3FF6A09E667F3BCD
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit": ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi double [ %i.v, %bb.c ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ab = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !34
  %i.ac = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x double> %i.o, %i.ad           ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0 ; 3 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00     ; 3 uses
  %i.ah = fneg double %i.af
  %i.ai = extractelement <2 x double> %i.ae, i64 1 ; 2 uses
  %i.aj = fneg double %i.ai
  %i.ak = fneg double %.0.i
  %storemerge = select i1 %i.ag, double %i.ak, double %.0.i
  %.068 = select i1 %i.ag, double %i.ah, double %i.af ; 3 uses
  %.0 = select i1 %i.ag, double %i.aj, double %i.ai ; 3 uses
  store double %storemerge, ptr %i.m, align 8, !tbaa !34
  %i.al = fadd double %.068, 1.000000e+00
  %i.am = fdiv double %.0, %i.al                  ; 2 uses
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.an = mul nsw i64 %.8.val, %i.l               ; 2 uses
  %i.ao = mul nsw i64 %.8.val, %indvars.iv.next26 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %15
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %.068, i64 0
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.0.val, i64 %index ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !34, !alias.scope !303, !noalias !304 ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %wide.load51 = load <2 x double>, ptr %i.ar, align 8, !tbaa !34, !alias.scope !304 ; 2 uses
  %i.as = fmul <2 x double> %broadcast.splat, %wide.load51
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat48, <2 x double> %i.as) ; 2 uses
  store <2 x double> %i.at, ptr %i.aq, align 8, !tbaa !34, !alias.scope !303, !noalias !304
  %i.au = fadd <2 x double> %wide.load, %i.at
  %i.av = fneg <2 x double> %wide.load51
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %i.au, <2 x double> %i.av)
  store <2 x double> %i.aw, ptr %i.ar, align 8, !tbaa !34, !alias.scope !304
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %.0.val, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.an ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %i.ao ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bd = fmul double %.0, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ba, double %.068, double %i.bd) ; 2 uses
  store double %i.be, ptr %i.az, align 8, !tbaa !34
  %i.bf = fadd double %i.ba, %i.be
  %i.bg = fneg double %i.bc
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.am, double %i.bf, double %i.bg)
  store double %i.bh, ptr %i.bb, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !290

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.g, %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %.not.not = icmp sgt i64 %indvars.iv.next26, %i.f
  br i1 %.not.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !291

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load ptr, ptr %1, align 8, !tbaa !30, !noalias !305
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre31, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ] ; 8 uses
  %i.bi = phi ptr [ %.pre30, %.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ] ; 14 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  store i32 %i.c, ptr %2, align 4, !tbaa !40
  %i.bk = sext i32 %i.b to i64                    ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !22, !noalias !306 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18, !noalias !306 ; 3 uses
  %i.bp = mul nsw i64 %i.bo, %i.bk
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bp ; 14 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = and i64 %i.br, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge
  %i.bt = lshr exact i64 %i.br, 3
  %i.bu = and i64 %i.bt, 1
  %i.bv = tail call i64 @llvm.smin.i64(i64 %i.bu, i64 %.pre-phi)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %._crit_edge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.h ], [ %.pre-phi, %._crit_edge ] ; 11 uses
  %i.bw = sub nsw i64 %.pre-phi, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = sdiv i64 %i.bw, 2
  %i.by = shl nsw i64 %i.bx, 1                    ; 2 uses
  %i.bz = add nsw i64 %i.by, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ca = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check54 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 18
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cb = mul i64 %i.bo, %i.bk
  %i.cc = shl i64 %i.cb, 3
  %i.cd = add i64 %i.cc, %i.bm
  %i.ce = sub i64 %i.bj, %i.cd
  %diff.check = icmp ugt i64 %i.ce, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck55
  %n.vec57 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index59 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index59 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load60 = load <2 x double>, ptr %i.cg, align 8, !tbaa !34
  %wide.load61 = load <2 x double>, ptr %i.ch, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x double> %wide.load60, ptr %i.cf, align 8, !tbaa !34
  store <2 x double> %wide.load61, ptr %i.ci, align 8, !tbaa !34
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.cj, label %middle.block63, label %vector.body58, !llvm.loop !296

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec57
  br i1 %cmp.n64, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83:         ; preds = %vector.memcheck55, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block63
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec57, %middle.block63 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !34
  store double %i.cm, ptr %i.ck, align 8, !tbaa !34
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !297

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader83 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.co = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !34
  store double %i.cs, ptr %i.cq, align 8, !tbaa !34
  %i.ct = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ct
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !34
  store double %i.cw, ptr %i.cu, align 8, !tbaa !34
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !34
  store double %i.da, ptr %i.cy, align 8, !tbaa !34
  %i.db = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.db
  %i.de = load double, ptr %i.dd, align 8, !tbaa !34
  store double %i.de, ptr %i.dc, align 8, !tbaa !34
  %i.df = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.df, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !298

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block63, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.dg = icmp sgt i64 %i.bw, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.dh = icmp slt i64 %i.bz, %.pre-phi
  br i1 %i.dh, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.di = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.by
  %i.dj = sub i64 %.pre-phi, %i.di                ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.dj, 18
  br i1 %min.iters.check69, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader82, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.dk = mul i64 %i.bo, %i.bk
  %i.dl = shl i64 %i.dk, 3
  %i.dm = add i64 %i.dl, %i.bm
  %i.dn = sub i64 %i.bj, %i.dm
  %diff.check71 = icmp ugt i64 %i.dn, -32
  br i1 %diff.check71, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader82, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck70
end_hunk_0
