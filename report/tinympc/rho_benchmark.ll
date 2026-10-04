Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rho_benchmark?download=true
inline.NumInlined: 3320
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_Z15format_matricesP10RhoAdapterRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_S5_P9TinyCacheP13TinyWorkspacei:bb.a
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit205

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit205: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %bb.j
  %i.gv = phi ptr [ %i.gu, %bb.j ], [ null, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  store ptr %i.gv, ptr %58, align 8, !tbaa !31, !alias.scope !195
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !32, !alias.scope !195
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !32, !alias.scope !195
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !34, !alias.scope !195
  store i64 %i.gp, ptr %i.bo, align 8, !tbaa !32, !alias.scope !195
  store i64 %i.fq, ptr %i.bp, align 8, !tbaa !32, !alias.scope !195
  store i64 %i.gn, ptr %i.bq, align 8, !tbaa !188, !alias.scope !195
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.gw = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.gx = load i64, ptr %i.br, align 8, !tbaa !13
  store ptr %i.gw, ptr %44, align 8, !tbaa !51
  store i64 %i.gx, ptr %i.bs, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  store ptr %i.gv, ptr %45, align 8, !tbaa !41
  store i64 %i.gn, ptr %i.bt, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store ptr %45, ptr %46, align 8, !tbaa !189
  store ptr %44, ptr %i.bu, align 8, !tbaa !54
  store ptr %47, ptr %i.bv, align 8, !tbaa !45
  store ptr %58, ptr %i.bw, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br i1 %or.cond.i.i.i.i, label %._crit_edge.i.i.i.i207, label %bb.k

._crit_edge.i.i.i.i207:                           ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit205
  %.pre.i.i.i.i209 = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !196
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit210

bb.k:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit205
  %i.gy = load ptr, ptr %i.at, align 8, !tbaa !17, !noalias !196 ; 2 uses
  %i.gz = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !196 ; 2 uses
  %i.ha = mul nsw i64 %i.gz, %i.fr
  %.not.i.i.i.i.i206 = icmp eq ptr %i.gy, null
  %i.hb = getelementptr [8 x i8], ptr %i.gy, i64 %i.gp
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = select i1 %.not.i.i.i.i.i206, ptr null, ptr %i.hc
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit210

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit210: ; preds = %._crit_edge.i.i.i.i207, %bb.k
  %i.he = phi i64 [ %i.gz, %bb.k ], [ %.pre.i.i.i.i209, %._crit_edge.i.i.i.i207 ] ; 2 uses
  %i.hf = phi ptr [ %i.hd, %bb.k ], [ null, %._crit_edge.i.i.i.i207 ] ; 2 uses
  store ptr %i.hf, ptr %59, align 8, !tbaa !31, !alias.scope !196
  store i64 %i.bk, ptr %i.by, align 8, !tbaa !32, !alias.scope !196
  store i64 %i.bf, ptr %i.bz, align 8, !tbaa !32, !alias.scope !196
  store ptr %i.at, ptr %i.ca, align 8, !tbaa !34, !alias.scope !196
  store i64 %i.gp, ptr %i.cb, align 8, !tbaa !32, !alias.scope !196
  store i64 %i.fr, ptr %i.cc, align 8, !tbaa !32, !alias.scope !196
  store i64 %i.he, ptr %i.cd, align 8, !tbaa !188, !alias.scope !196
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.hg = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.hh = load i64, ptr %i.ce, align 8, !tbaa !13
  store ptr %i.hg, ptr %40, align 8, !tbaa !51
  store i64 %i.hh, ptr %i.cf, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  store ptr %i.hf, ptr %41, align 8, !tbaa !41
  store i64 %i.he, ptr %i.cg, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  store ptr %41, ptr %42, align 8, !tbaa !189
  store ptr %40, ptr %i.ch, align 8, !tbaa !54
  store ptr %43, ptr %i.ci, align 8, !tbaa !45
  store ptr %59, ptr %i.cj, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  %i.hi = add nsw i64 %i.fr, %i.bf                ; 2 uses
  %i.hj = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.hk = icmp sle i64 %i.hj, %i.hi
  %brmerge = or i1 %i.bj, %i.hk
  br i1 %brmerge, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_14CwiseNullaryOpINS6_18scalar_identity_opIdEES2_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit216

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit216: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit210
  %i.hl = load ptr, ptr %i.at, align 8, !tbaa !17, !noalias !197
  %i.hm = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !197 ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %i.hi
  %i.ho = getelementptr [8 x i8], ptr %i.hl, i64 %i.gp
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %i.hn
  br i1 %i.ck, label %.preheader.i.i.i.i.i.i.i.i.i.i218, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_14CwiseNullaryOpINS6_18scalar_identity_opIdEES2_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i218:                ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit216, %._crit_edge.i.i.i.i.i.i.i.i.i.i222
  %.0810.i.i.i.i.i.i.i.i.i.i219 = phi i64 [ %i.hz, %._crit_edge.i.i.i.i.i.i.i.i.i.i222 ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit216 ] ; 4 uses
  %i.hq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i219, %i.hm
  %i.hr = getelementptr [8 x i8], ptr %i.hp, i64 %i.hq ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i218
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i219, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %index ; 2 uses
  %i.ht = icmp eq <2 x i64> %vec.ind, %broadcast.splat
  %i.hu = icmp eq <2 x i64> %step.add, %broadcast.splat
  %i.hv = select <2 x i1> %i.ht, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double -0.000000e+00)
  %i.hw = select <2 x i1> %i.hu, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double -0.000000e+00)
  %i.hx = getelementptr i8, ptr %i.hs, i64 16
  store <2 x double> %i.hv, ptr %i.hs, align 8, !tbaa !19
  store <2 x double> %i.hw, ptr %i.hx, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hy = icmp eq i64 %index.next, %n.vec
  br i1 %i.hy, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i222, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i218, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i220.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i218 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i222:               ; preds = %scalar.ph, %middle.block
  %i.hz = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i219, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i223 = icmp eq i64 %i.hz, %i.bk
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i223, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_14CwiseNullaryOpINS6_18scalar_identity_opIdEES2_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i218, !llvm.loop !129

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i220 = phi i64 [ %i.id, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i220.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hr, i64 %.09.i.i.i.i.i.i.i.i.i.i220
  %i.ib = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i220, %.0810.i.i.i.i.i.i.i.i.i.i219
  %i.ic = select i1 %i.ib, double -1.000000e+00, double -0.000000e+00
  store double %i.ic, ptr %i.ia, align 8, !tbaa !19
  %i.id = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i220, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i221 = icmp eq i64 %i.id, %i.bk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i221, label %._crit_edge.i.i.i.i.i.i.i.i.i.i222, label %scalar.ph, !llvm.loop !130

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_14CwiseNullaryOpINS6_18scalar_identity_opIdEES2_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i222, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit210, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit216
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count445
  br i1 %exitcond446.not, label %.lr.ph432, label %bb.i, !llvm.loop !131

._crit_edge433:                                   ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 11 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 11 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !16
  %i.ij = mul nsw i64 %i.ii, %i.ig                ; 2 uses
  %i.ik = icmp slt i64 %i.ij, 1
  br i1 %i.ik, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i224

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i224: ; preds = %._crit_edge433
  %i.il = load ptr, ptr %i.ie, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i225 = shl nuw nsw i64 %i.ij, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.il, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i225, i1 false), !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226: ; preds = %._crit_edge433, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i224
  br i1 %i.n, label %.lr.ph436, label %._crit_edge440

.lr.ph436:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 1128 ; 2 uses
  %i.in = icmp eq i32 %i.k, 0                     ; 3 uses
  %i.io = sext i32 %i.k to i64                    ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %66, i64 24 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %66, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %66, i64 40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %66, i64 48 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %64, i64 48
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 1144 ; 2 uses
  %i.jj = icmp eq i32 %i.m, 0                     ; 2 uses
  %i.jk = sext i32 %i.m to i64                    ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %68, i64 32 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %68, i64 40 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.s, label %.lr.ph436.split

.lr.ph436.split:                                  ; preds = %.lr.ph436
  %i.jr = add nsw i32 %9, -2
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph432, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254
  %indvars.iv447 = phi i64 [ 0, %.lr.ph432 ], [ %indvars.iv.next448, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254 ] ; 5 uses
  %i.js = load ptr, ptr %4, align 8, !tbaa !17, !noalias !198 ; 2 uses
  %i.jt = load i64, ptr %i.dm, align 8, !tbaa !13, !noalias !198 ; 2 uses
  %i.ju = mul nsw i64 %i.jt, %indvars.iv447
  %.not.i.i.i.i.i227 = icmp eq ptr %i.js, null
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.ju
  %i.jw = select i1 %.not.i.i.i.i.i227, ptr null, ptr %i.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  %i.jx = mul nsw i64 %indvars.iv447, %i.dp       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  br i1 %i.do, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jy = load ptr, ptr %i.dn, align 8, !tbaa !17, !noalias !199 ; 2 uses
  %.not.i.i.i.i.i229 = icmp eq ptr %i.jy, null
  %i.jz = getelementptr [8 x i8], ptr %i.jy, i64 %i.jx
  %i.ka = select i1 %.not.i.i.i.i.i229, ptr null, ptr %i.jz
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233: ; preds = %bb.l, %bb.m
  %i.kb = phi ptr [ %i.ka, %bb.m ], [ null, %bb.l ] ; 2 uses
  %i.kc = load i64, ptr %.in422, align 8, !tbaa !13, !noalias !199 ; 2 uses
  store ptr %i.kb, ptr %60, align 8, !tbaa !31, !alias.scope !199
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !32, !alias.scope !199
  store i64 1, ptr %i.dr, align 8, !tbaa !32, !alias.scope !199
  store ptr %i.dn, ptr %i.ds, align 8, !tbaa !34, !alias.scope !199
  store i64 %i.jx, ptr %i.dt, align 8, !tbaa !32, !alias.scope !199
  store i64 0, ptr %i.du, align 8, !tbaa !32, !alias.scope !199
  store i64 %i.kc, ptr %i.dv, align 8, !tbaa !188, !alias.scope !199
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store ptr %i.jw, ptr %36, align 8, !tbaa !39
  store i64 %i.jt, ptr %i.dw, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  store ptr %i.kb, ptr %37, align 8, !tbaa !41
  store i64 %i.kc, ptr %i.dx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  store ptr %37, ptr %38, align 8, !tbaa !189
  store ptr %36, ptr %i.dy, align 8, !tbaa !190
  store ptr %39, ptr %i.dz, align 8, !tbaa !45
  store ptr %60, ptr %i.ea, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 4 uses
  %i.kd = load ptr, ptr %3, align 8, !tbaa !17, !noalias !200 ; 2 uses
  %i.ke = load i64, ptr %i.eb, align 8, !tbaa !13, !noalias !200 ; 2 uses
  %i.kf = mul nsw i64 %i.ke, %indvars.iv.next448
  %.not.i.i.i.i.i234 = icmp eq ptr %i.kd, null
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.kf
  %i.kh = select i1 %.not.i.i.i.i.i234, ptr null, ptr %i.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.ki = mul nsw i64 %indvars.iv447, %i.ee
  %i.kj = add nsw i64 %i.ki, %i.fp                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  br i1 %i.ed, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233
  %i.kk = load ptr, ptr %i.dn, align 8, !tbaa !17, !noalias !201 ; 2 uses
  %.not.i.i.i.i.i236 = icmp eq ptr %i.kk, null
  %i.kl = getelementptr [8 x i8], ptr %i.kk, i64 %i.kj
  %i.km = select i1 %.not.i.i.i.i.i236, ptr null, ptr %i.kl
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233, %bb.n
  %i.kn = phi ptr [ %i.km, %bb.n ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit233 ] ; 2 uses
  %i.ko = load i64, ptr %.in422, align 8, !tbaa !13, !noalias !201 ; 2 uses
  store ptr %i.kn, ptr %61, align 8, !tbaa !31, !alias.scope !201
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !32, !alias.scope !201
  store i64 1, ptr %i.eg, align 8, !tbaa !32, !alias.scope !201
  store ptr %i.dn, ptr %i.eh, align 8, !tbaa !34, !alias.scope !201
  store i64 %i.kj, ptr %i.ei, align 8, !tbaa !32, !alias.scope !201
  store i64 0, ptr %i.ej, align 8, !tbaa !32, !alias.scope !201
  store i64 %i.ko, ptr %i.ek, align 8, !tbaa !188, !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store ptr %i.kh, ptr %32, align 8, !tbaa !39
  store i64 %i.ke, ptr %i.el, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  store ptr %i.kn, ptr %33, align 8, !tbaa !41
  store i64 %i.ko, ptr %i.em, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store ptr %33, ptr %34, align 8, !tbaa !189
  store ptr %32, ptr %i.en, align 8, !tbaa !190
  store ptr %35, ptr %i.eo, align 8, !tbaa !45
  store ptr %61, ptr %i.ep, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  %i.kp = load ptr, ptr %6, align 8, !tbaa !17, !noalias !202 ; 2 uses
  %i.kq = load i64, ptr %i.eq, align 8, !tbaa !13, !noalias !202 ; 2 uses
  %i.kr = mul nsw i64 %i.kq, %indvars.iv447
  %.not.i.i.i.i.i241 = icmp eq ptr %i.kp, null
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.kr
  %i.kt = select i1 %.not.i.i.i.i.i241, ptr null, ptr %i.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  br i1 %i.do, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240
  %i.ku = load ptr, ptr %i.er, align 8, !tbaa !17, !noalias !203 ; 2 uses
  %.not.i.i.i.i.i243 = icmp eq ptr %i.ku, null
  %i.kv = getelementptr [8 x i8], ptr %i.ku, i64 %i.jx
  %i.kw = select i1 %.not.i.i.i.i.i243, ptr null, ptr %i.kv
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240, %bb.o
  %i.kx = phi ptr [ %i.kw, %bb.o ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit240 ] ; 2 uses
  %i.ky = load i64, ptr %.in423, align 8, !tbaa !13, !noalias !203 ; 2 uses
  store ptr %i.kx, ptr %62, align 8, !tbaa !31, !alias.scope !203
  store i64 %i.dp, ptr %i.es, align 8, !tbaa !32, !alias.scope !203
  store i64 1, ptr %i.et, align 8, !tbaa !32, !alias.scope !203
  store ptr %i.er, ptr %i.eu, align 8, !tbaa !34, !alias.scope !203
  store i64 %i.jx, ptr %i.ev, align 8, !tbaa !32, !alias.scope !203
  store i64 0, ptr %i.ew, align 8, !tbaa !32, !alias.scope !203
  store i64 %i.ky, ptr %i.ex, align 8, !tbaa !188, !alias.scope !203
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.kt, ptr %28, align 8, !tbaa !39
  store i64 %i.kq, ptr %i.ey, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  store ptr %i.kx, ptr %29, align 8, !tbaa !41
  store i64 %i.ky, ptr %i.ez, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  store ptr %29, ptr %30, align 8, !tbaa !189
  store ptr %28, ptr %i.fa, align 8, !tbaa !190
  store ptr %31, ptr %i.fb, align 8, !tbaa !45
  store ptr %62, ptr %i.fc, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  %i.kz = load ptr, ptr %5, align 8, !tbaa !17, !noalias !204 ; 2 uses
  %i.la = load i64, ptr %i.fd, align 8, !tbaa !13, !noalias !204 ; 2 uses
  %i.lb = mul nsw i64 %i.la, %indvars.iv.next448
  %.not.i.i.i.i.i248 = icmp eq ptr %i.kz, null
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lb
  %i.ld = select i1 %.not.i.i.i.i.i248, ptr null, ptr %i.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  br i1 %i.ed, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247
  %i.le = load ptr, ptr %i.er, align 8, !tbaa !17, !noalias !205 ; 2 uses
  %.not.i.i.i.i.i250 = icmp eq ptr %i.le, null
  %i.lf = getelementptr [8 x i8], ptr %i.le, i64 %i.kj
  %i.lg = select i1 %.not.i.i.i.i.i250, ptr null, ptr %i.lf
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit254: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247, %bb.p
  %i.lh = phi ptr [ %i.lg, %bb.p ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit247 ] ; 2 uses
  %i.li = load i64, ptr %.in423, align 8, !tbaa !13, !noalias !205 ; 2 uses
  store ptr %i.lh, ptr %63, align 8, !tbaa !31, !alias.scope !205
  store i64 %i.ee, ptr %i.fe, align 8, !tbaa !32, !alias.scope !205
  store i64 1, ptr %i.ff, align 8, !tbaa !32, !alias.scope !205
  store ptr %i.er, ptr %i.fg, align 8, !tbaa !34, !alias.scope !205
  store i64 %i.kj, ptr %i.fh, align 8, !tbaa !32, !alias.scope !205
  store i64 0, ptr %i.fi, align 8, !tbaa !32, !alias.scope !205
  store i64 %i.li, ptr %i.fj, align 8, !tbaa !188, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr %i.ld, ptr %24, align 8, !tbaa !39
  store i64 %i.la, ptr %i.fk, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.lh, ptr %25, align 8, !tbaa !41
  store i64 %i.li, ptr %i.fl, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr %25, ptr %26, align 8, !tbaa !189
  store ptr %24, ptr %i.fm, align 8, !tbaa !190
  store ptr %27, ptr %i.fn, align 8, !tbaa !45
  store ptr %63, ptr %i.fo, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge433, label %bb.l, !llvm.loop !148

.preheader.loopexit.peel.begin:                   ; preds = %bb.ac
  %i.lj = icmp eq i32 %i.oy, %i.bb
  br i1 %i.lj, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.preheader.loopexit.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store ptr %i.im, ptr %65, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  %i.lk = sext i32 %.3174 to i64                  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  br i1 %i.in, label %._crit_edge.i.i.i.i263.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ll = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !206 ; 2 uses
  %i.lm = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !206 ; 2 uses
  %i.ln = mul nsw i64 %i.lm, %i.lk
  %.not.i.i.i.i.i262.peel = icmp eq ptr %i.ll, null
  %i.lo = getelementptr [8 x i8], ptr %i.ll, i64 %i.lk
  %i.lp = getelementptr [8 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = select i1 %.not.i.i.i.i.i262.peel, ptr null, ptr %i.lp
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel

._crit_edge.i.i.i.i263.peel:                      ; preds = %bb.q
  %.pre.i.i.i.i265.peel = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !206
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel: ; preds = %._crit_edge.i.i.i.i263.peel, %bb.r
  %i.lr = phi i64 [ %i.lm, %bb.r ], [ %.pre.i.i.i.i265.peel, %._crit_edge.i.i.i.i263.peel ]
  %i.ls = phi ptr [ %i.lq, %bb.r ], [ null, %._crit_edge.i.i.i.i263.peel ]
  store ptr %i.ls, ptr %66, align 8, !tbaa !31, !alias.scope !206
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !32, !alias.scope !206
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !32, !alias.scope !206
  store ptr %i.ie, ptr %i.ir, align 8, !tbaa !34, !alias.scope !206
  store i64 %i.lk, ptr %i.is, align 8, !tbaa !32, !alias.scope !206
  store i64 %i.lk, ptr %i.it, align 8, !tbaa !32, !alias.scope !206
  store i64 %i.lr, ptr %i.iu, align 8, !tbaa !188, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %66, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 1 dereferenceable(1) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph436, %.preheader.loopexit.peel.begin
  %75 = phi i32 [ %.3174, %.preheader.loopexit.peel.begin ], [ 0, %.lr.ph436 ] ; 2 uses
  %76 = phi i32 [ %i.oy, %.preheader.loopexit.peel.begin ], [ 0, %.lr.ph436 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  %i.lt = sext i32 %75 to i64                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  br i1 %i.in, label %._crit_edge.i.i.i.i257.peel, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lu = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !207 ; 2 uses
  %i.lv = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !207 ; 2 uses
  %i.lw = mul nsw i64 %i.lv, %i.lt
  %.not.i.i.i.i.i256.peel = icmp eq ptr %i.lu, null
  %i.lx = getelementptr [8 x i8], ptr %i.lu, i64 %i.lt
  %i.ly = getelementptr [8 x i8], ptr %i.lx, i64 %i.lw
  %i.lz = select i1 %.not.i.i.i.i.i256.peel, ptr null, ptr %i.ly
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel

._crit_edge.i.i.i.i257.peel:                      ; preds = %bb.s
  %.pre.i.i.i.i259.peel = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !207
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel: ; preds = %._crit_edge.i.i.i.i257.peel, %bb.t
  %i.ma = phi i64 [ %i.lv, %bb.t ], [ %.pre.i.i.i.i259.peel, %._crit_edge.i.i.i.i257.peel ] ; 2 uses
  %i.mb = phi ptr [ %i.lz, %bb.t ], [ null, %._crit_edge.i.i.i.i257.peel ] ; 2 uses
  store ptr %i.mb, ptr %64, align 8, !tbaa !31, !alias.scope !207
  store i64 %i.io, ptr %i.iw, align 8, !tbaa !32, !alias.scope !207
  store i64 %i.io, ptr %i.ix, align 8, !tbaa !32, !alias.scope !207
  store ptr %i.ie, ptr %i.iy, align 8, !tbaa !34, !alias.scope !207
  store i64 %i.lt, ptr %i.iz, align 8, !tbaa !32, !alias.scope !207
  store i64 %i.lt, ptr %i.ja, align 8, !tbaa !32, !alias.scope !207
  store i64 %i.ma, ptr %i.jb, align 8, !tbaa !188, !alias.scope !207
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.mc = load ptr, ptr %i.iv, align 8, !tbaa !17
  %i.md = load i64, ptr %i.jc, align 8, !tbaa !13
  store ptr %i.mc, ptr %20, align 8, !tbaa !51
  store i64 %i.md, ptr %i.jd, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.mb, ptr %21, align 8, !tbaa !41
  store i64 %i.ma, ptr %i.je, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %21, ptr %22, align 8, !tbaa !189
  store ptr %20, ptr %i.jf, align 8, !tbaa !54
  store ptr %23, ptr %i.jg, align 8, !tbaa !45
  store ptr %64, ptr %i.jh, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel
  %77 = phi i32 [ %75, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel ], [ %.3174, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel ]
  %78 = phi i32 [ %76, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel ], [ %i.oy, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel ]
  %i.me = icmp slt i32 %78, %i.bb
  br i1 %i.me, label %bb.v, label %.lr.ph439

bb.v:                                             ; preds = %bb.u
  %i.mf = add nsw i32 %77, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr %i.ji, ptr %67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.mg = sext i32 %i.mf to i64                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  br i1 %i.jj, label %._crit_edge.i.i.i.i269.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mh = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !208 ; 2 uses
  %i.mi = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !208 ; 2 uses
  %i.mj = mul nsw i64 %i.mi, %i.mg
  %.not.i.i.i.i.i268.peel = icmp eq ptr %i.mh, null
  %i.mk = getelementptr [8 x i8], ptr %i.mh, i64 %i.mg
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = select i1 %.not.i.i.i.i.i268.peel, ptr null, ptr %i.ml
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel

._crit_edge.i.i.i.i269.peel:                      ; preds = %bb.v
  %.pre.i.i.i.i271.peel = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !208
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel: ; preds = %._crit_edge.i.i.i.i269.peel, %bb.w
  %i.mn = phi i64 [ %i.mi, %bb.w ], [ %.pre.i.i.i.i271.peel, %._crit_edge.i.i.i.i269.peel ]
  %i.mo = phi ptr [ %i.mm, %bb.w ], [ null, %._crit_edge.i.i.i.i269.peel ]
  store ptr %i.mo, ptr %68, align 8, !tbaa !31, !alias.scope !208
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.jk, ptr %i.jm, align 8, !tbaa !32, !alias.scope !208
  store ptr %i.ie, ptr %i.jn, align 8, !tbaa !34, !alias.scope !208
  store i64 %i.mg, ptr %i.jo, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.mg, ptr %i.jp, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.mn, ptr %i.jq, align 8, !tbaa !188, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %68, ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel, %bb.u
  %i.mp = sext i32 %i.k to i64                    ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %8, i64 1128
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.mw = icmp eq i32 %i.k, 0
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %71, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %71, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.nc = getelementptr inbounds nuw i8, ptr %71, i64 48
  %i.nd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.nj = sext i32 %i.m to i64                    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 1144
  %i.np = icmp eq i32 %i.m, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.nt = getelementptr inbounds nuw i8, ptr %74, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %74, i64 40
  %i.nv = getelementptr inbounds nuw i8, ptr %74, i64 48
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.oc = zext nneg i32 %i.bb to i64
  %wide.trip.count457 = zext nneg i32 %9 to i64
  br label %bb.ad

bb.x:                                             ; preds = %bb.ac, %.lr.ph436.split
  %.0167435 = phi i32 [ 0, %.lr.ph436.split ], [ %i.oy, %bb.ac ] ; 3 uses
  %.2173434 = phi i32 [ 0, %.lr.ph436.split ], [ %.3174, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store ptr %i.im, ptr %65, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  %i.od = sext i32 %.2173434 to i64               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  br i1 %i.in, label %._crit_edge.i.i.i.i263, label %bb.y

._crit_edge.i.i.i.i263:                           ; preds = %bb.x
  %.pre.i.i.i.i265 = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !209
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.oe = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !209 ; 2 uses
  %i.of = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !209 ; 2 uses
  %i.og = mul nsw i64 %i.of, %i.od
  %.not.i.i.i.i.i262 = icmp eq ptr %i.oe, null
  %i.oh = getelementptr [8 x i8], ptr %i.oe, i64 %i.od
  %i.oi = getelementptr [8 x i8], ptr %i.oh, i64 %i.og
  %i.oj = select i1 %.not.i.i.i.i.i262, ptr null, ptr %i.oi
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i263
  %i.ok = phi i64 [ %i.of, %bb.y ], [ %.pre.i.i.i.i265, %._crit_edge.i.i.i.i263 ]
  %i.ol = phi ptr [ %i.oj, %bb.y ], [ null, %._crit_edge.i.i.i.i263 ]
  store ptr %i.ol, ptr %66, align 8, !tbaa !31, !alias.scope !209
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !32, !alias.scope !209
  store ptr %i.ie, ptr %i.ir, align 8, !tbaa !34, !alias.scope !209
  store i64 %i.od, ptr %i.is, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.od, ptr %i.it, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.ok, ptr %i.iu, align 8, !tbaa !188, !alias.scope !209
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %66, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 1 dereferenceable(1) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.om = add nsw i32 %.2173434, %i.k             ; 3 uses
  %i.on = icmp slt i32 %.0167435, %i.bb
  br i1 %i.on, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr %i.ji, ptr %67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.oo = sext i32 %i.om to i64                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  br i1 %i.jj, label %._crit_edge.i.i.i.i269, label %bb.ab

._crit_edge.i.i.i.i269:                           ; preds = %bb.aa
  %.pre.i.i.i.i271 = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !210
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272

bb.ab:                                            ; preds = %bb.aa
  %i.op = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !210 ; 2 uses
  %i.oq = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !210 ; 2 uses
  %i.or = mul nsw i64 %i.oq, %i.oo
  %.not.i.i.i.i.i268 = icmp eq ptr %i.op, null
  %i.os = getelementptr [8 x i8], ptr %i.op, i64 %i.oo
  %i.ot = getelementptr [8 x i8], ptr %i.os, i64 %i.or
  %i.ou = select i1 %.not.i.i.i.i.i268, ptr null, ptr %i.ot
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272: ; preds = %._crit_edge.i.i.i.i269, %bb.ab
  %i.ov = phi i64 [ %i.oq, %bb.ab ], [ %.pre.i.i.i.i271, %._crit_edge.i.i.i.i269 ]
  %i.ow = phi ptr [ %i.ou, %bb.ab ], [ null, %._crit_edge.i.i.i.i269 ]
  store ptr %i.ow, ptr %68, align 8, !tbaa !31, !alias.scope !210
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.jk, ptr %i.jm, align 8, !tbaa !32, !alias.scope !210
  store ptr %i.ie, ptr %i.jn, align 8, !tbaa !34, !alias.scope !210
  store i64 %i.oo, ptr %i.jo, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.oo, ptr %i.jp, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.ov, ptr %i.jq, align 8, !tbaa !188, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %68, ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  %i.ox = add nsw i32 %i.om, %i.m
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272
  %.3174 = phi i32 [ %i.ox, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272 ], [ %i.om, %bb.z ] ; 4 uses
  %i.oy = add nuw nsw i32 %.0167435, 1            ; 4 uses
  %exitcond452.not = icmp eq i32 %.0167435, %i.jr
  br i1 %exitcond452.not, label %.preheader.loopexit.peel.begin, label %bb.x, !llvm.loop !157

._crit_edge440:                                   ; preds = %bb.au, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  ret void

bb.ad:                                            ; preds = %.lr.ph439, %bb.au
  %indvars.iv454 = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next455, %bb.au ] ; 6 uses
  %.4175437 = phi i32 [ 0, %.lr.ph439 ], [ %.5176, %bb.au ] ; 2 uses
  %i.oz = shl i64 %indvars.iv454, 3
  %i.pa = shl i64 %indvars.iv454, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  store i64 %i.mp, ptr %70, align 8, !tbaa !32, !alias.scope !212
  store i64 1, ptr %i.mq, align 8, !tbaa !32, !alias.scope !212
  store double 0.000000e+00, ptr %i.mr, align 8, !tbaa !56, !alias.scope !212
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 1 dereferenceable(1) %70)
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  %i.pb = load ptr, ptr %1, align 8, !tbaa !17, !noalias !213 ; 2 uses
  %i.pc = ptrtoaddr ptr %i.pb to i64
  %i.pd = load i64, ptr %i.ms, align 8, !tbaa !13, !noalias !213 ; 2 uses
  %i.pe = mul nsw i64 %i.pd, %indvars.iv454
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.pe ; 7 uses
  %i.pg = load i64, ptr %i.mt, align 8, !tbaa !13 ; 12 uses
  %i.ph = icmp sgt i64 %i.pg, 0
  br i1 %i.ph, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.pi = icmp samesign ugt i64 %i.pg, 2305843009213693951
  br i1 %i.pi, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310: ; preds = %bb.ae
  %i.pj = shl nuw i64 %i.pg, 3
  %i.pk = call noalias ptr @malloc(i64 noundef %i.pj) #24 ; 4 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %.invoke, label %bb.af

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310, %bb.ae
  %i.pm = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pm, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.pm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.ag

.cont:                                            ; preds = %.invoke
  unreachable

.thread:                                          ; preds = %bb.ad
  %i.pn = load ptr, ptr %69, align 8, !tbaa !17
  %.nonneg = sub i64 0, %i.pg
  %i.po = and i64 %.nonneg, -2
  %i.pp = sub i64 0, %i.po
  br label %._crit_edge.i.i.i.i.i.i.i

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310
  %i.pq = load ptr, ptr %69, align 8, !tbaa !17   ; 3 uses
  %i.pr = and i64 %i.pg, 2305843009213693950      ; 3 uses
  %.not511 = icmp eq i64 %i.pg, 1
  br i1 %.not511, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread, %bb.af
  %i.ps = phi i64 [ %i.pp, %.thread ], [ %i.pr, %bb.af ], [ %i.pr, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %i.pt = phi ptr [ %i.pn, %.thread ], [ %i.pq, %bb.af ], [ %i.pq, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.0464.0494 = phi ptr [ null, %.thread ], [ %i.pk, %bb.af ], [ %i.pk, %.lr.ph.i.i.i.i.i.i.i ] ; 10 uses
  %.sroa.0464.0494553 = ptrtoaddr ptr %.sroa.0464.0494 to i64 ; 2 uses
  %i.pu = ptrtoaddr ptr %i.pt to i64
  %i.pv = icmp slt i64 %i.ps, %i.pg
  br i1 %i.pv, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit425

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.pw = sub i64 %i.pg, %i.ps                    ; 3 uses
  %min.iters.check558 = icmp ult i64 %i.pw, 8
  br i1 %min.iters.check558, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574, label %vector.memcheck552

vector.memcheck552:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.px = mul i64 %i.pd, %i.oz
  %i.py = add i64 %i.px, %i.pc
  %i.pz = sub i64 %i.py, %.sroa.0464.0494553
  %diff.check554 = icmp ugt i64 %i.pz, -32
  %i.qa = sub i64 %i.pu, %.sroa.0464.0494553
  %diff.check555 = icmp ugt i64 %i.qa, -32
  %conflict.rdx556 = or i1 %diff.check554, %diff.check555
  br i1 %conflict.rdx556, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck552
  %n.vec560 = and i64 %i.pw, -4                   ; 3 uses
  %i.qb = add i64 %i.ps, %n.vec560
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next567, %vector.body561 ] ; 2 uses
  %i.qc = add i64 %i.ps, %index562                ; 3 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.qc ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.qc ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %wide.load563 = load <2 x double>, ptr %i.qe, align 8, !tbaa !19
  %wide.load564 = load <2 x double>, ptr %i.qf, align 8, !tbaa !19
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.qc ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %wide.load565 = load <2 x double>, ptr %i.qg, align 8, !tbaa !19
  %wide.load566 = load <2 x double>, ptr %i.qh, align 8, !tbaa !19
  %i.qi = fsub <2 x double> %wide.load563, %wide.load565
  %i.qj = fsub <2 x double> %wide.load564, %wide.load566
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store <2 x double> %i.qi, ptr %i.qd, align 8, !tbaa !19
  store <2 x double> %i.qj, ptr %i.qk, align 8, !tbaa !19
  %index.next567 = add nuw i64 %index562, 4       ; 2 uses
  %i.ql = icmp eq i64 %index.next567, %n.vec560
  br i1 %i.ql, label %middle.block568, label %vector.body561, !llvm.loop !166

middle.block568:                                  ; preds = %vector.body561
  %cmp.n569 = icmp eq i64 %i.pw, %n.vec560
  br i1 %cmp.n569, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574

.lr.ph.i.i.i.i.i.i.i.i.preheader574:              ; preds = %vector.memcheck552, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block568
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ps, %vector.memcheck552 ], [ %i.ps, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.qb, %middle.block568 ] ; 4 uses
  %i.qm = sub i64 %i.pg, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.qm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader574, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.qt, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ]
  %i.qn = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !19
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !19
  %i.qs = fsub double %i.qp, %i.qr
  store double %i.qs, ptr %i.qn, align 8, !tbaa !19
  %i.qt = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !167

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader574
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ], [ %i.qt, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.qu = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.pg
  %i.qv = icmp ugt i64 %i.qu, -4
  br i1 %i.qv, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.qw = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %.05.i.i.i.i.i.i.i.i
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %.05.i.i.i.i.i.i.i.i
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !19
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %.05.i.i.i.i.i.i.i.i
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !19
  %i.rb = fsub double %i.qy, %i.ra
  store double %i.rb, ptr %i.qw, align 8, !tbaa !19
  %i.rc = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 3 uses
  %i.rd = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.rc
  %i.re = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.rc
  %i.rf = load double, ptr %i.re, align 8, !tbaa !19
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.rc
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !19
  %i.ri = fsub double %i.rf, %i.rh
  store double %i.ri, ptr %i.rd, align 8, !tbaa !19
  %i.rj = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 3 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.rj
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.rj
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !19
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.rj
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !19
  %i.rp = fsub double %i.rm, %i.ro
  store double %i.rp, ptr %i.rk, align 8, !tbaa !19
  %i.rq = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 3 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.rq
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.rq
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !19
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.rq
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !19
  %i.rw = fsub double %i.rt, %i.rv
  store double %i.rw, ptr %i.rr, align 8, !tbaa !19
  %i.rx = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.rx, %i.pg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !168

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.se, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.af ] ; 4 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %.011.i.i.i.i.i.i.i
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.011.i.i.i.i.i.i.i
  %i.sa = load <2 x double>, ptr %i.rz, align 1, !tbaa !58
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %.011.i.i.i.i.i.i.i
  %i.sc = load <2 x double>, ptr %i.sb, align 1, !tbaa !58
  %i.sd = fsub <2 x double> %i.sa, %i.sc
  store <2 x double> %i.sd, ptr %i.ry, align 16, !tbaa !58
  %i.se = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.sf = icmp samesign ult i64 %i.se, %i.pr
  br i1 %i.sf, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !169

bb.ag:                                            ; preds = %.invoke
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit425:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block568, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  %i.sh = sext i32 %.4175437 to i64               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
end_hunk_0
