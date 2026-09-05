Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %.sroa.7.24.copyload.pre = load ptr, ptr %i.v, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.7.24.copyload.pre, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !214
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.fz = phi ptr [ %i.eu, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.ep, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 6 uses
  %i.ga = phi i64 [ %.pre, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.er, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 4 uses
  %i.gb = load double, ptr %2, align 8, !tbaa !210, !noalias !685 ; 5 uses
  %i.gc = load i64, ptr %i.q, align 8, !tbaa !208, !noalias !686 ; 8 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i8.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i8.preheader:                    ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %min.iters.check87 = icmp ugt i64 %i.gc, 7
  %ident.check79.not = icmp eq i64 %i.ga, 1
  %or.cond100 = select i1 %min.iters.check87, i1 %ident.check79.not, i1 false
  br i1 %or.cond100, label %vector.memcheck80, label %.lr.ph.i.i.i.i.i.i8.preheader102

vector.memcheck80:                                ; preds = %.lr.ph.i.i.i.i.i.i8.preheader
  %i.ge = shl i64 %i.gc, 3                        ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.fz, i64 %i.ge
  %scevgep82 = getelementptr i8, ptr %3, i64 %i.ge
  %bound083 = icmp ult ptr %i.fz, %scevgep82
  %bound184 = icmp ult ptr %3, %scevgep81
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %.lr.ph.i.i.i.i.i.i8.preheader102, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck80
  %n.vec89 = and i64 %i.gc, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %index91 ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index91 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load92 = load <2 x double>, ptr %i.gg, align 8, !tbaa !210, !alias.scope !687
  %wide.load93 = load <2 x double>, ptr %i.gh, align 8, !tbaa !210, !alias.scope !687
  %i.gi = fmul <2 x double> %broadcast.splat, %wide.load92
  %i.gj = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.gf, align 8, !tbaa !210, !alias.scope !688, !noalias !687
  %wide.load95 = load <2 x double>, ptr %i.gk, align 8, !tbaa !210, !alias.scope !688, !noalias !687
  %i.gl = fsub <2 x double> %wide.load94, %i.gi
  %i.gm = fsub <2 x double> %wide.load95, %i.gj
  store <2 x double> %i.gl, ptr %i.gf, align 8, !tbaa !210, !alias.scope !688, !noalias !687
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !210, !alias.scope !688, !noalias !687
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.gn = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.gn, label %middle.block97, label %vector.body90, !llvm.loop !676

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.gc, %n.vec89
  br i1 %cmp.n98, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.preheader102

.lr.ph.i.i.i.i.i.i8.preheader102:                 ; preds = %vector.memcheck80, %.lr.ph.i.i.i.i.i.i8.preheader, %middle.block97
  %.05.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph.i.i.i.i.i.i8.preheader ], [ %n.vec89, %middle.block97 ] ; 5 uses
  %.neg112 = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  %xtraiter109 = and i64 %i.gc, 1
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i.i.i.i8.prol

.lr.ph.i.i.i.i.i.i8.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i8.preheader102
  %i.go = mul nsw i64 %.05.i.i.i.i.i.i9.ph, %i.ga
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.ph
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !210
  %i.gs = fmul double %i.gb, %i.gr
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !210
  %i.gu = fsub double %i.gt, %i.gs
  store double %i.gu, ptr %i.gp, align 8, !tbaa !210
  %i.gv = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  br label %.lr.ph.i.i.i.i.i.i8.prol.loopexit

.lr.ph.i.i.i.i.i.i8.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i.i8.prol, %.lr.ph.i.i.i.i.i.i8.preheader102
  %.05.i.i.i.i.i.i9.unr = phi i64 [ %.05.i.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i.i8.preheader102 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i8.prol ]
  %i.gw = icmp eq i64 %i.gc, %.neg112
  br i1 %i.gw, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8.prol.loopexit, %.lr.ph.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i9 = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i8 ], [ %.05.i.i.i.i.i.i9.unr, %.lr.ph.i.i.i.i.i.i8.prol.loopexit ] ; 4 uses
  %i.gx = mul nsw i64 %.05.i.i.i.i.i.i9, %i.ga
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !210
  %i.hb = fmul double %i.gb, %i.ha
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !210
  %i.hd = fsub double %i.hc, %i.hb
  store double %i.hd, ptr %i.gy, align 8, !tbaa !210
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %i.hf = mul nsw i64 %i.he, %i.ga
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.he
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !210
  %i.hj = fmul double %i.gb, %i.hi
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !210
  %i.hl = fsub double %i.hk, %i.hj
  store double %i.hl, ptr %i.hg, align 8, !tbaa !210
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i10.1 = icmp eq i64 %i.hm, %i.gc
  br i1 %exitcond.not.i.i.i.i.i.i10.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !677

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i8.prol.loopexit, %.lr.ph.i.i.i.i.i.i8, %middle.block97
  %.pre63 = load double, ptr %2, align 8, !tbaa !210, !noalias !689
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.hn = phi double [ %.pre63, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.gb, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  %i.ho = load i64, ptr %.sroa.034.sroa.4.0..sroa_idx, align 8, !tbaa !208, !noalias !689
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hp, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ho, ptr %i.hq, align 8, !alias.scope !690
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store double %i.hn, ptr %i.hr, align 8, !tbaa !244, !alias.scope !690
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  store ptr %3, ptr %i.hs, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 112
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  call void @_ZN5Eigen8internal26outer_product_selector_runINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS2_IKS4_Lin1ELi1ELb0EEEEENS_3MapINS3_IdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS0_20generic_product_implISK_SP_NS_10DenseShapeESR_Li5EE3subEEEvRT_RKT0_RKT1_RKT2_RKNS0_10false_typeE(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(26) %i.hs, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_S3_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.328", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.328", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.968", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.328", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.561", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !189
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.048.shrunk = xor i1 %3, %or.cond              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !234  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !233, !range !189, !noundef !102
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !235
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.aq = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !102, !align !242 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !214 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !212
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !248
  store i64 %i.at, ptr %i.n, align 8, !tbaa !208
  store i64 %i.an, ptr %i.o, align 8, !tbaa !208
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !230
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !208
  store i64 %i.am, ptr %i.r, align 8, !tbaa !208
  store i64 %i.as, ptr %i.s, align 8, !tbaa !253
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !214 ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.bb = select i1 %.048.shrunk, i64 %i.ba, i64 0 ; 2 uses
  br i1 %.048.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !215
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !212
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !248
  store i64 %i.at, ptr %i.u, align 8, !tbaa !208
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !208
  store ptr %1, ptr %i.w, align 8, !tbaa !230
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !208
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !208
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !258, !nonnull !102, !align !242 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211, !noalias !701
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !218, !noalias !701
  store ptr %i.bk, ptr %6, align 8, !tbaa !279, !alias.scope !701
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !208, !alias.scope !701
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !231, !alias.scope !701
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !208, !alias.scope !701
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !703, !alias.scope !701
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !234 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !693

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !218
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !211
  tail call void @free(ptr noundef %i.bu) #42
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #46 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !211
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !234
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !218
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.cs = phi i64 [ %i.cc, %.lr.ph ], [ %i.dx, %bb.k ]
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.k ] ; 3 uses
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !233, !range !189, !noundef !102
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i64 %.064, -1
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = select i1 %i.cu, i64 %.064, i64 %i.cw   ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !102, !align !242 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !214
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !235
  %i.dc = add i64 %i.cx, %i.db                    ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %.pre69 = load i64, ptr %i.br, align 8, !tbaa !215 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.dd, i64 %.pre69 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !214, !noalias !704 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sub nsw i64 %.pre69, %spec.select       ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !212, !noalias !704
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.df
  %i.dj = mul nsw i64 %i.dg, %i.de
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %7, align 8, !tbaa !248, !alias.scope !704
  store i64 %i.dd, ptr %i.cg, align 8, !tbaa !208, !alias.scope !704
  store i64 %spec.select, ptr %i.ch, align 8, !tbaa !208, !alias.scope !704
  store ptr %1, ptr %i.ci, align 8, !tbaa !230, !alias.scope !704
  store i64 %i.df, ptr %i.cj, align 8, !tbaa !208, !alias.scope !704
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !208, !alias.scope !704
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !253, !alias.scope !704
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #42
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !214, !noalias !707 ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !212, !noalias !707
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = mul nsw i64 %i.dm, %i.cx
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %8, align 8, !tbaa !255, !alias.scope !707
  store i64 %i.dn, ptr %i.cm, align 8, !tbaa !208, !alias.scope !707
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !230, !alias.scope !707
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !208, !alias.scope !707
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !208, !alias.scope !707
  store i64 %i.dm, ptr %i.cq, align 8, !tbaa !257, !alias.scope !707
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !258, !nonnull !102, !align !242
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !211
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cx
  %i.dv = load ptr, ptr %2, align 8, !tbaa !211
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  %i.dw = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !234 ; 2 uses
  %i.dy = icmp slt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.k, label %.loopexit, !llvm.loop !700

.loopexit:                                        ; preds = %bb.k, %bb.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  ret void
}

end_hunk_0
