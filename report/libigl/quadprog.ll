Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quadprog?download=true
inline.NumInlined: 4879
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_2clES9_S5_S8_i":bb.a
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
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %wide.trip.count = and i64 %.8.val, 2147483647  ; 5 uses
  %i.g = add nsw i64 %i.e, -2                     ; 2 uses
  %i.h = mul i64 %.8.val, %i.g
  %i.i = shl i64 %i.h, 3
  %scevgep = getelementptr i8, ptr %.0.val, i64 %i.i
  %i.j = sext i32 %i.b to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.j) ; 2 uses
  %i.k = mul i64 %.8.val, %smin
  %i.l = shl nuw nsw i64 %wide.trip.count, 3
  %i.m = add i64 %i.k, %wide.trip.count
  %i.n = shl i64 %i.m, 3
  %scevgep41 = getelementptr i8, ptr %.0.val, i64 %i.n
  %i.o = mul i64 %.8.val, -8
  %i.p = mul i64 %.8.val, %4
  %i.q = shl i64 %i.p, 3
  %scevgep42 = getelementptr i8, ptr %.0.val, i64 %i.q
  %i.r = shl nsw i64 %smin, 3
  %i.s = add nsw i64 %i.r, 8
  %i.t = mul i64 %.8.val, %i.s
  %i.u = getelementptr i8, ptr %.0.val, i64 %i.t
  %scevgep43 = getelementptr i8, ptr %i.u, i64 %i.l
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %bound0 = icmp ult ptr %scevgep, %scevgep43
  %bound1 = icmp ult ptr %scevgep42, %scevgep41
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.o, 0
  %i.v = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %.8.val, 2147483646            ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %.loopexit
  %indvars.iv25.a = phi i64 [ %i.e, %.lr.ph22 ], [ %indvars.iv.next28, %.loopexit ] ; 2 uses
  %indvars.iv25 = phi i64 [ %4, %.lr.ph22 ], [ %indvars.iv.next26, %.loopexit ] ; 3 uses
  %i.w = add nsw i64 %indvars.iv25.a, -2          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.pre30, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.pre30, i64 %indvars.iv25
  %i.z = load <2 x double>, ptr %i.x, align 8, !tbaa !34 ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.z) ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1 ; 5 uses
  %i.ac = extractelement <2 x double> %i.aa, i64 0 ; 6 uses
  %i.ad = fcmp ogt double %i.ac, %i.ab
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = fdiv double %i.ab, %i.ac                ; 2 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fmul double %i.ac, %sqrt.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.d:                                             ; preds = %bb.b
  %i.ah = fcmp ogt double %i.ab, %i.ac
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fdiv double %i.ac, %i.ab                ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double 1.000000e+00)
  %sqrt1.i = tail call double @llvm.sqrt.f64(double %i.aj)
  %i.ak = fmul double %i.ab, %sqrt1.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.f:                                             ; preds = %bb.d
  %i.al = fmul double %i.ac, f0x3FF6A09E667F3BCD
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit": ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi double [ %i.ag, %bb.c ], [ %i.ak, %bb.e ], [ %i.al, %bb.f ] ; 4 uses
  %i.am = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.am, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !34
  %i.an = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x double> %i.z, %i.ao           ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0 ; 3 uses
  %i.ar = fcmp olt double %i.aq, 0.000000e+00     ; 3 uses
  %i.as = fneg double %i.aq
  %i.at = extractelement <2 x double> %i.ap, i64 1 ; 2 uses
  %i.au = fneg double %i.at
  %i.av = fneg double %.0.i
  %storemerge = select i1 %i.ar, double %i.av, double %.0.i
  %.068 = select i1 %i.ar, double %i.as, double %i.aq ; 3 uses
  %.0 = select i1 %i.ar, double %i.au, double %i.at ; 3 uses
  store double %storemerge, ptr %i.x, align 8, !tbaa !34
  %i.aw = fadd double %.068, 1.000000e+00
  %i.ax = fdiv double %.0, %i.aw                  ; 2 uses
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ay = mul nsw i64 %.8.val, %i.w               ; 2 uses
  %i.az = mul nsw i64 %.8.val, %indvars.iv25      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.v
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %.068, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %.0.val, i64 %index ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bb, align 8, !tbaa !34, !alias.scope !303, !noalias !304 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %wide.load48 = load <2 x double>, ptr %i.bc, align 8, !tbaa !34, !alias.scope !304 ; 2 uses
  %i.bd = fmul <2 x double> %broadcast.splat, %wide.load48
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat45, <2 x double> %i.bd) ; 2 uses
  store <2 x double> %i.be, ptr %i.bb, align 8, !tbaa !34, !alias.scope !303, !noalias !304
  %i.bf = fadd <2 x double> %wide.load, %i.be
  %i.bg = fneg <2 x double> %wide.load48
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat47, <2 x double> %i.bf, <2 x double> %i.bg)
  store <2 x double> %i.bh, ptr %i.bc, align 8, !tbaa !34, !alias.scope !304
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %.0.val, i64 %indvars.iv ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.ay ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !34 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bj, i64 %i.az ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !34 ; 2 uses
  %i.bo = fmul double %.0, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bl, double %.068, double %i.bo) ; 2 uses
  store double %i.bp, ptr %i.bk, align 8, !tbaa !34
  %i.bq = fadd double %i.bl, %i.bp
  %i.br = fneg double %i.bn
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bq, double %i.br)
  store double %i.bs, ptr %i.bm, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !290

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.g, %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next26, %i.f
  %indvars.iv.next28 = add nsw i64 %indvars.iv25.a, -1
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !291

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load ptr, ptr %1, align 8, !tbaa !30, !noalias !305
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre31, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ] ; 8 uses
  %i.bt = phi ptr [ %.pre30, %.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ] ; 14 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  store i32 %i.c, ptr %2, align 4, !tbaa !40
  %i.bv = sext i32 %i.b to i64                    ; 3 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !22, !noalias !306 ; 2 uses
  %i.bx = ptrtoaddr ptr %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18, !noalias !306 ; 3 uses
  %i.ca = mul nsw i64 %i.bz, %i.bv
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ca ; 14 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = and i64 %i.cc, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge
  %i.ce = lshr exact i64 %i.cc, 3
  %i.cf = and i64 %i.ce, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 %.pre-phi)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %._crit_edge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.h ], [ %.pre-phi, %._crit_edge ] ; 11 uses
  %i.ch = sub nsw i64 %.pre-phi, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = sdiv i64 %i.ch, 2
  %i.cj = shl nsw i64 %i.ci, 1                    ; 2 uses
  %i.ck = add nsw i64 %i.cj, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.cl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check51 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 18
  br i1 %min.iters.check51, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cm = mul i64 %i.bz, %i.bv
  %i.cn = shl i64 %i.cm, 3
  %i.co = add i64 %i.cn, %i.bx
  %i.cp = sub i64 %i.bu, %i.co
  %diff.check = icmp ugt i64 %i.cp, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck52
  %n.vec54 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next59, %vector.body55 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index56 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load57 = load <2 x double>, ptr %i.cr, align 8, !tbaa !34
  %wide.load58 = load <2 x double>, ptr %i.cs, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %wide.load57, ptr %i.cq, align 8, !tbaa !34
  store <2 x double> %wide.load58, ptr %i.ct, align 8, !tbaa !34
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.cu, label %middle.block60, label %vector.body55, !llvm.loop !296

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec54
  br i1 %cmp.n61, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80:         ; preds = %vector.memcheck52, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block60
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck52 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec54, %middle.block60 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80 ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !34
  store double %i.cx, ptr %i.cv, align 8, !tbaa !34
  %i.cy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !297

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader80 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cz = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !34
  store double %i.dd, ptr %i.db, align 8, !tbaa !34
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.de
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !34
  store double %i.dh, ptr %i.df, align 8, !tbaa !34
  %i.di = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !34
  store double %i.dl, ptr %i.dj, align 8, !tbaa !34
  %i.dm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.dm
  %i.dp = load double, ptr %i.do, align 8, !tbaa !34
  store double %i.dp, ptr %i.dn, align 8, !tbaa !34
  %i.dq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dq, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !298

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block60, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.dr = icmp sgt i64 %i.ch, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ds = icmp slt i64 %i.ck, %.pre-phi
  br i1 %i.ds, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.dt = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.cj
  %i.du = sub i64 %.pre-phi, %i.dt                ; 3 uses
  %min.iters.check66 = icmp ult i64 %i.du, 18
  br i1 %min.iters.check66, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.dv = mul i64 %i.bz, %i.bv
  %i.dw = shl i64 %i.dv, 3
  %i.dx = add i64 %i.dw, %i.bx
  %i.dy = sub i64 %i.bu, %i.dx
  %diff.check68 = icmp ugt i64 %i.dy, -32
  br i1 %diff.check68, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck67
  %n.vec70 = and i64 %i.du, -4                    ; 3 uses
  %i.dz = add i64 %i.ck, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 2 uses
  %i.ea = add i64 %i.ck, %index72                 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load73 = load <2 x double>, ptr %i.ec, align 8, !tbaa !34
  %wide.load74 = load <2 x double>, ptr %i.ed, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> %wide.load73, ptr %i.eb, align 8, !tbaa !34
  store <2 x double> %wide.load74, ptr %i.ee, align 8, !tbaa !34
  %index.next75 = add nuw i64 %index72, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.ef, label %middle.block76, label %vector.body71, !llvm.loop !299

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %i.du, %n.vec70
  br i1 %cmp.n77, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79:       ; preds = %vector.memcheck67, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block76
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ck, %vector.memcheck67 ], [ %i.ck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block76 ] ; 4 uses
  %i.eg = sub i64 %.pre-phi, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter81 = and i64 %i.eg, 3                  ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ek, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79 ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79 ]
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !34
  store double %i.ej, ptr %i.eh, align 8, !tbaa !34
  %i.ek = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !300

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader79 ], [ %i.ek, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.el = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.pre-phi
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !34
  store double %i.ep, ptr %i.en, align 8, !tbaa !34
  %i.eq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.eq
  %i.es = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.eq
end_hunk_0
