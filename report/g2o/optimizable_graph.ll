Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RT0_:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load320 = load <2 x double>, ptr %i.gt, align 8, !tbaa !242, !alias.scope !428
  %wide.load321 = load <2 x double>, ptr %i.gu, align 8, !tbaa !242, !alias.scope !428
  %i.gv = fmul <2 x double> %broadcast.splat317, %wide.load320
  %i.gw = fmul <2 x double> %broadcast.splat317, %wide.load321
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load322 = load <2 x double>, ptr %i.gs, align 8, !tbaa !242, !alias.scope !431, !noalias !428
  %wide.load323 = load <2 x double>, ptr %i.gx, align 8, !tbaa !242, !alias.scope !431, !noalias !428
  %i.gy = fadd <2 x double> %i.gv, %wide.load322
  %i.gz = fadd <2 x double> %i.gw, %wide.load323
  store <2 x double> %i.gy, ptr %i.gs, align 8, !tbaa !242, !alias.scope !431, !noalias !428
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !242, !alias.scope !431, !noalias !428
  %index.next324 = add nuw i64 %index319, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next324, %n.vec315
  br i1 %i.ha, label %middle.block325, label %vector.body318, !llvm.loop !433

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec315
  br i1 %cmp.n326, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader332

.lr.ph.i.i.i.i.i.i.i.preheader332:                ; preds = %vector.memcheck306, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block325
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec315, %middle.block325 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter335 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader332
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.05.i.i.i.i.i.i.i.ph
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !242
  %i.he = fmul double %i.gb, %i.hd
  %i.hf = load double, ptr %i.hb, align 8, !tbaa !242
  %i.hg = fadd double %i.he, %i.hf
  store double %i.hg, ptr %i.hb, align 8, !tbaa !242
  %i.hh = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader332
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader332 ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.hi = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.hi, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.05.i.i.i.i.i.i.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !242
  %i.hm = fmul double %i.gb, %i.hl
  %i.hn = load double, ptr %i.hj, align 8, !tbaa !242
  %i.ho = fadd double %i.hm, %i.hn
  store double %i.ho, ptr %i.hj, align 8, !tbaa !242
  %i.hp = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.hp
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !242
  %i.ht = fmul double %i.gb, %i.hs
  %i.hu = load double, ptr %i.hq, align 8, !tbaa !242
  %i.hv = fadd double %i.ht, %i.hu
  store double %i.hv, ptr %i.hq, align 8, !tbaa !242
  %i.hw = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.hw, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !434

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block325, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.hx = icmp sgt i64 %i.gh, 1
  br i1 %i.hx, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.hy = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.hz = icmp slt i64 %i.gk, %i.al
  br i1 %i.hz, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ia = add i64 %.0.i.i.i.i.i.i.i, %i.gj
  %i.ib = sub i64 %i.al, %i.ia                    ; 3 uses
  %min.iters.check291 = icmp ult i64 %i.ib, 12
  br i1 %min.iters.check291, label %.lr.ph.i17.i.i.i.i.i.i.preheader331, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ic = shl i64 %i.gi, 4                        ; 2 uses
  %i.id = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ie = shl i64 %i.cp, 3
  %i.if = getelementptr i8, ptr %i.cq, i64 %i.ic
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.id
  %scevgep283 = getelementptr i8, ptr %i.ig, i64 %i.ie
  %i.ih = shl i64 %i.co, 3
  %scevgep284 = getelementptr i8, ptr %i.cq, i64 %i.ih
  %i.ii = mul i64 %i.ct, %i.af
  %i.ij = shl i64 %i.cw, 3
  %i.ik = getelementptr i8, ptr %i.cs, i64 %i.ii
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ic
  %i.im = getelementptr i8, ptr %i.il, i64 %i.id
  %scevgep285 = getelementptr i8, ptr %i.im, i64 %i.ij
  %i.in = mul i64 %i.ct, %i.ag
  %scevgep286 = getelementptr i8, ptr %i.cs, i64 %i.in
  %bound0287 = icmp ult ptr %scevgep283, %scevgep286
  %bound1288 = icmp ult ptr %scevgep285, %scevgep284
  %found.conflict289 = and i1 %bound0287, %bound1288
  br i1 %found.conflict289, label %.lr.ph.i17.i.i.i.i.i.i.preheader331, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck282
  %n.vec293 = and i64 %i.ib, -4                   ; 3 uses
  %i.io = add i64 %i.gk, %n.vec293
  %broadcast.splatinsert294 = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat295 = shufflevector <2 x double> %broadcast.splatinsert294, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph292
  %index297 = phi i64 [ 0, %vector.ph292 ], [ %index.next302, %vector.body296 ] ; 2 uses
  %i.ip = add i64 %i.gk, %index297                ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ip ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ip ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load298 = load <2 x double>, ptr %i.ir, align 8, !tbaa !242, !alias.scope !435
  %wide.load299 = load <2 x double>, ptr %i.is, align 8, !tbaa !242, !alias.scope !435
  %i.it = fmul <2 x double> %broadcast.splat295, %wide.load298
  %i.iu = fmul <2 x double> %broadcast.splat295, %wide.load299
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %wide.load300 = load <2 x double>, ptr %i.iq, align 8, !tbaa !242, !alias.scope !438, !noalias !435
  %wide.load301 = load <2 x double>, ptr %i.iv, align 8, !tbaa !242, !alias.scope !438, !noalias !435
  %i.iw = fadd <2 x double> %i.it, %wide.load300
  %i.ix = fadd <2 x double> %i.iu, %wide.load301
  store <2 x double> %i.iw, ptr %i.iq, align 8, !tbaa !242, !alias.scope !438, !noalias !435
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !242, !alias.scope !438, !noalias !435
  %index.next302 = add nuw i64 %index297, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next302, %n.vec293
  br i1 %i.iy, label %middle.block303, label %vector.body296, !llvm.loop !440

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %i.ib, %n.vec293
  br i1 %cmp.n304, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader331

.lr.ph.i17.i.i.i.i.i.i.preheader331:              ; preds = %vector.memcheck282, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block303
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.gk, %vector.memcheck282 ], [ %i.gk, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.io, %middle.block303 ] ; 6 uses
  %i.iz = sub i64 %i.al, %.05.i18.i.i.i.i.i.i.ph
  %i.ja = add i64 %.0217, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter338 = and i64 %i.iz, 1
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader331
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !242
  %i.je = fmul double %i.gb, %i.jd
  %i.jf = load double, ptr %i.jb, align 8, !tbaa !242
  %i.jg = fadd double %i.je, %i.jf
  store double %i.jg, ptr %i.jb, align 8, !tbaa !242
  %i.jh = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader331
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader331 ], [ %i.jh, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ji = icmp eq i64 %i.z, %i.ja
  br i1 %i.ji, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.jw, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %.05.i18.i.i.i.i.i.i
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !242
  %i.jm = fmul double %i.gb, %i.jl
  %i.jn = load double, ptr %i.jj, align 8, !tbaa !242
  %i.jo = fadd double %i.jm, %i.jn
  store double %i.jo, ptr %i.jj, align 8, !tbaa !242
  %i.jp = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.jp
  %i.js = load double, ptr %i.jr, align 8, !tbaa !242
  %i.jt = fmul double %i.gb, %i.js
  %i.ju = load double, ptr %i.jq, align 8, !tbaa !242
  %i.jv = fadd double %i.jt, %i.ju
  store double %i.jv, ptr %i.jq, align 8, !tbaa !242
  %i.jw = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.jw, %i.al
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !441

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.kd, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %.021.i.i.i.i.i.i
  %i.jz = load <2 x double>, ptr %i.jy, align 1, !tbaa !78
  %i.ka = fmul <2 x double> %i.hy, %i.jz
  %i.kb = load <2 x double>, ptr %i.jx, align 16, !tbaa !78
  %i.kc = fadd <2 x double> %i.kb, %i.ka
  store <2 x double> %i.kc, ptr %i.jx, align 16, !tbaa !78
  %i.kd = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.ke = icmp slt i64 %i.kd, %i.gk
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !442

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block303, %._crit_edge.i.i.i.i.i.i
  %i.kf = load i64, ptr %i.d, align 8, !tbaa !252, !noalias !443 ; 8 uses
  %i.kg = sub i64 %i.kf, %i.al                    ; 3 uses
  %i.kh = load i64, ptr %i.p, align 8, !tbaa !253, !noalias !443
  %i.ki = sub i64 %i.kh, %i.al                    ; 2 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !248, !noalias !443 ; 5 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kg
  %i.kl = mul nsw i64 %i.ki, %i.kf
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = mul nsw i64 %i.kf, %.0217               ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kn
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.kg
  %i.kq = load i64, ptr %i.t, align 8, !tbaa !271, !noalias !446
  %i.kr = sub i64 %i.kq, %i.al                    ; 2 uses
  %i.ks = load ptr, ptr %1, align 8, !tbaa !246, !noalias !446 ; 3 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.kr
  %i.ku = icmp sgt i64 %i.al, 0
  br i1 %i.ku, label %.lr.ph.i.i.a, label %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit

.lr.ph.i.i.a:                                     ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit
  %i.kv = shl i64 %i.kf, 3
  %i.kw = mul i64 %i.kv, %i.ki
  %i.kx = shl i64 %i.kg, 3                        ; 2 uses
  %i.ky = shl i64 %i.kf, 3
  %i.kz = shl i64 %i.kr, 3
  %i.la = getelementptr i8, ptr %i.ks, i64 %i.ai
  %scevgep238 = getelementptr i8, ptr %i.la, i64 %i.kz
  %i.lb = mul i64 %i.kf, %i.aj
  %i.lc = getelementptr i8, ptr %i.kj, i64 %i.ai
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.lb
  %scevgep240 = getelementptr i8, ptr %i.ld, i64 %i.kx
  %i.le = getelementptr i8, ptr %i.kj, i64 %i.ai
  %i.lf = getelementptr i8, ptr %i.le, i64 %i.kw
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.kx
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.a, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i
  %.070.i.i = phi i64 [ %i.qv, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i ], [ 0, %.lr.ph.i.i.a ] ; 8 uses
  %i.lh = add nuw i64 %.0217, %.070.i.i
  %i.li = mul i64 %i.ky, %.070.i.i
  %scevgep236 = getelementptr i8, ptr %i.lg, i64 %i.li ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.070.i.i ; 13 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !242 ; 9 uses
  %i.ll = fneg double %i.lk
  %i.lm = sub nsw i64 %i.al, %.070.i.i            ; 7 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.070.i.i ; 13 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !242
  %i.lp = fneg double %i.lo                       ; 9 uses
  %i.lq = mul nsw i64 %.070.i.i, %i.kf
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %.070.i.i ; 14 uses
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ll, i64 0
  %.sroa.1223.64.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.lp, i64 0
  %6 = ptrtoint ptr %i.ls to i64                  ; 2 uses
  %7 = and i64 %6, 7
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %7, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.lt = lshr exact i64 %6, 3
  %i.lu = and i64 %i.lt, 1
  %i.lv = call i64 @llvm.smin.i64(i64 %i.lu, i64 %i.lm)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lv, %bb.l ], [ %i.lm, %bb.k ] ; 13 uses
  %i.lw = sub nsw i64 %i.lm, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lx = sdiv i64 %i.lw, 2                       ; 2 uses
  %i.ly = shl nsw i64 %i.lx, 1                    ; 2 uses
  %i.lz = add nsw i64 %i.ly, %.0.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ma = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ma, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %min.iters.check263 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check263, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.mb = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3        ; 3 uses
  %scevgep252 = getelementptr i8, ptr %i.ls, i64 %i.mb ; 2 uses
  %scevgep253 = getelementptr i8, ptr %i.ln, i64 %i.mb
  %scevgep254 = getelementptr i8, ptr %i.lj, i64 %i.mb
  %bound0255 = icmp ult ptr %i.ls, %scevgep253
  %bound1256 = icmp ult ptr %i.ln, %scevgep252
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0258 = icmp ult ptr %i.ls, %scevgep254
  %bound1259 = icmp ult ptr %i.lj, %scevgep252
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %found.conflict257, %found.conflict260
  br i1 %conflict.rdx261, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330, label %vector.ph264

vector.ph264:                                     ; preds = %vector.memcheck251
  %n.vec265 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert266 = insertelement <2 x double> poison, double %i.lp, i64 0
  %broadcast.splat267 = shufflevector <2 x double> %broadcast.splatinsert266, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert268 = insertelement <2 x double> poison, double %i.lk, i64 0
  %broadcast.splat269 = shufflevector <2 x double> %broadcast.splatinsert268, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph264
  %index271 = phi i64 [ 0, %vector.ph264 ], [ %index.next278, %vector.body270 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %index271 ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %index271 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %wide.load272 = load <2 x double>, ptr %i.md, align 8, !tbaa !242, !alias.scope !449
  %wide.load273 = load <2 x double>, ptr %i.me, align 8, !tbaa !242, !alias.scope !449
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index271 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %wide.load274 = load <2 x double>, ptr %i.mf, align 8, !tbaa !242, !alias.scope !452
  %wide.load275 = load <2 x double>, ptr %i.mg, align 8, !tbaa !242, !alias.scope !452
  %i.mh = fmul <2 x double> %wide.load274, %broadcast.splat267
  %i.mi = fmul <2 x double> %wide.load275, %broadcast.splat267
  %i.mj = fmul <2 x double> %broadcast.splat269, %wide.load272
  %i.mk = fmul <2 x double> %broadcast.splat269, %wide.load273
  %i.ml = fsub <2 x double> %i.mh, %i.mj
  %i.mm = fsub <2 x double> %i.mi, %i.mk
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %wide.load276 = load <2 x double>, ptr %i.mc, align 8, !tbaa !242, !alias.scope !454, !noalias !456
  %wide.load277 = load <2 x double>, ptr %i.mn, align 8, !tbaa !242, !alias.scope !454, !noalias !456
  %i.mo = fadd <2 x double> %wide.load276, %i.ml
  %i.mp = fadd <2 x double> %wide.load277, %i.mm
  store <2 x double> %i.mo, ptr %i.mc, align 8, !tbaa !242, !alias.scope !454, !noalias !456
  store <2 x double> %i.mp, ptr %i.mn, align 8, !tbaa !242, !alias.scope !454, !noalias !456
  %index.next278 = add nuw i64 %index271, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next278, %n.vec265
  br i1 %i.mq, label %middle.block279, label %vector.body270, !llvm.loop !457

middle.block279:                                  ; preds = %vector.body270
  %cmp.n280 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec265
  br i1 %cmp.n280, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330

.lr.ph.i.i.i.i.i.i.i.i.i.preheader330:            ; preds = %vector.memcheck251, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block279
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec265, %middle.block279 ] ; 6 uses
  %.neg347 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter341 = and i64 %.0.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.05.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !242
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !242
  %i.mw = fmul double %i.mv, %i.lp
  %i.mx = fmul double %i.lk, %i.mt
  %i.my = fsub double %i.mw, %i.mx
  %i.mz = load double, ptr %i.mr, align 8, !tbaa !242
  %i.na = fadd double %i.mz, %i.my
  store double %i.na, ptr %i.mr, align 8, !tbaa !242
  %i.nb = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader330 ], [ %i.nb, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.nc = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %.neg347
  br i1 %i.nc, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !242
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !242
  %i.ni = fmul double %i.nh, %i.lp
  %i.nj = fmul double %i.lk, %i.nf
  %i.nk = fsub double %i.ni, %i.nj
  %i.nl = load double, ptr %i.nd, align 8, !tbaa !242
  %i.nm = fadd double %i.nl, %i.nk
  store double %i.nm, ptr %i.nd, align 8, !tbaa !242
  %i.nn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.nn
  %i.nq = load double, ptr %i.np, align 8, !tbaa !242
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.nn
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !242
  %i.nt = fmul double %i.ns, %i.lp
  %i.nu = fmul double %i.lk, %i.nq
  %i.nv = fsub double %i.nt, %i.nu
  %i.nw = load double, ptr %i.no, align 8, !tbaa !242
  %i.nx = fadd double %i.nw, %i.nv
  store double %i.nx, ptr %i.no, align 8, !tbaa !242
  %i.ny = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ny, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !458

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block279, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.nz = icmp sgt i64 %i.lw, 1
  br i1 %i.nz, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oa = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = shufflevector <2 x double> %.sroa.1223.64.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oc = icmp slt i64 %i.lz, %i.lm
  br i1 %i.oc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.od = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.ly
  %i.oe = sub i64 %i.lm, %i.od                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.oe, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader
  %i.of = shl i64 %i.lx, 4
  %i.og = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3
  %i.oh = add i64 %i.of, %i.og                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ls, i64 %i.oh ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.ln, i64 %i.oh
  %scevgep239 = getelementptr i8, ptr %i.lj, i64 %i.oh
  %bound0 = icmp ult ptr %scevgep, %scevgep238
  %bound1 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict = and i1 %bound0, %bound1
  %bound0241 = icmp ult ptr %scevgep, %scevgep240
  %bound1242 = icmp ult ptr %scevgep239, %scevgep236
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oe, -4                      ; 3 uses
  %i.oi = add i64 %i.lz, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.lp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert244 = insertelement <2 x double> poison, double %i.lk, i64 0
  %broadcast.splat245 = shufflevector <2 x double> %broadcast.splatinsert244, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oj = add i64 %i.lz, %index                   ; 3 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.oj ; 3 uses
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.oj ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %wide.load = load <2 x double>, ptr %i.ol, align 8, !tbaa !242, !alias.scope !459
  %wide.load246 = load <2 x double>, ptr %i.om, align 8, !tbaa !242, !alias.scope !459
  %i.on = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.oj ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load247 = load <2 x double>, ptr %i.on, align 8, !tbaa !242, !alias.scope !462
  %wide.load248 = load <2 x double>, ptr %i.oo, align 8, !tbaa !242, !alias.scope !462
  %i.op = fmul <2 x double> %wide.load247, %broadcast.splat
  %i.oq = fmul <2 x double> %wide.load248, %broadcast.splat
  %i.or = fmul <2 x double> %broadcast.splat245, %wide.load
  %i.os = fmul <2 x double> %broadcast.splat245, %wide.load246
  %i.ot = fsub <2 x double> %i.op, %i.or
  %i.ou = fsub <2 x double> %i.oq, %i.os
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 2 uses
  %wide.load249 = load <2 x double>, ptr %i.ok, align 8, !tbaa !242, !alias.scope !464, !noalias !466
  %wide.load250 = load <2 x double>, ptr %i.ov, align 8, !tbaa !242, !alias.scope !464, !noalias !466
  %i.ow = fadd <2 x double> %wide.load249, %i.ot
  %i.ox = fadd <2 x double> %wide.load250, %i.ou
  store <2 x double> %i.ow, ptr %i.ok, align 8, !tbaa !242, !alias.scope !464, !noalias !466
  store <2 x double> %i.ox, ptr %i.ov, align 8, !tbaa !242, !alias.scope !464, !noalias !466
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oy = icmp eq i64 %index.next, %n.vec
  br i1 %i.oy, label %middle.block, label %vector.body, !llvm.loop !467

end_hunk_0
begin_hunk_1_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  store double %i.gf, ptr %i.gc, align 8, !tbaa !242
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !242
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !242
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !483

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !78
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !78
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !484

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block53, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !242 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !242
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS2_INS2_IS4_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_ISC_Lin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load double, ptr %3, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !409
  %i.e = fmul double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !241  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !414    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39
  %i.k = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 16385
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #46 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !241  ; 4 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !12
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !376  ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.v, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #46 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !12
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc43 unwind label %bb.q

.noexc43:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ag = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ai = icmp samesign ugt i64 %i.v, 16384       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !241
  %i.al = load ptr, ptr %1, align 8, !tbaa !485
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !487, !nonnull !94, !align !394
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !252
  invoke void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd(i64 noundef %i.ak, ptr noundef nonnull %i.al, i64 noundef %i.ap, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, double noundef %i.e)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ai, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.ag) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.m, %bb.n
  br i1 %i.t, label %bb.o, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45

bb.o:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.r) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.q:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.r:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ag) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46: ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ar, %bb.q ], [ %i.as, %bb.s ], [ %i.as, %bb.r ]
  br i1 %i.t, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46
  call void @free(ptr noundef %i.r) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46, %bb.t
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %0, i64 8)
  %.sroa.speculated = add nuw i64 %i.a, 4294967288
  %i.b = and i64 %.sroa.speculated, 4294967294    ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.a
  %i.c = insertelement <2 x double> poison, double %5, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph225

.preheader:                                       ; preds = %._crit_edge220, %bb.a
  %i.e = icmp slt i64 %i.b, %0
  br i1 %i.e, label %.lr.ph233.preheader, label %._crit_edge234

.lr.ph233.preheader:                              ; preds = %.preheader
  %i.f = mul nsw i64 %i.b, %2                     ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !242
  %i.j = fmul double %5, %i.i                     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.l = load double, ptr %i.k, align 8, !tbaa !242
  %i.m = fmul double %i.l, %i.j
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.b ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !242
  %i.p = fadd double %i.o, %i.m                   ; 2 uses
  store double %i.p, ptr %i.n, align 8, !tbaa !242
  %i.q = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.r = icmp slt i64 %i.q, %0
  br i1 %i.r, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge220
  %.0145223 = phi i64 [ %i.ah, %._crit_edge220 ], [ 0, %.lr.ph225.preheader ] ; 6 uses
  %i.s = mul nsw i64 %.0145223, %2
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s ; 5 uses
  %i.u = or disjoint i64 %.0145223, 1             ; 5 uses
  %i.v = mul nsw i64 %i.u, %2
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0145223
  %i.y = load double, ptr %i.x, align 8, !tbaa !242
  %i.z = fmul double %5, %i.y                     ; 5 uses
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !242
  %i.ae = fmul double %5, %i.ad                   ; 4 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = add nuw nsw i64 %.0145223, 2            ; 6 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = sub nsw i64 %0, %i.ah                   ; 2 uses
  %7 = ptrtoint ptr %6 to i64                     ; 2 uses
  %8 = and i64 %7, 7
  %.not.i.i = icmp eq i64 %8, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit

bb.b:                                             ; preds = %.lr.ph225
  %i.aj = lshr exact i64 %7, 3
  %i.ak = and i64 %i.aj, 1
  %i.al = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ai)
  br label %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit

_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit: ; preds = %.lr.ph225, %bb.b
  %.0.i.i = phi i64 [ %i.al, %bb.b ], [ %i.ai, %.lr.ph225 ] ; 2 uses
  %i.am = add nsw i64 %.0.i.i, %i.ah              ; 8 uses
  %i.an = sub nsw i64 %0, %i.am                   ; 2 uses
  %i.ao = sdiv i64 %i.an, 2
  %i.ap = shl nsw i64 %i.ao, 1
  %i.aq = add nsw i64 %i.ap, %i.am                ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0145223
  %i.as = load double, ptr %i.ar, align 8, !tbaa !242
  %i.at = fmul double %i.z, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0145223 ; 4 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !242
  %i.aw = fadd double %i.av, %i.at
  store double %i.aw, ptr %i.au, align 8, !tbaa !242
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !242
  %i.az = fmul double %i.ae, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !242
  %i.bc = fadd double %i.bb, %i.az                ; 2 uses
  store double %i.bc, ptr %i.ba, align 8, !tbaa !242
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !242
  %i.bf = fmul double %i.z, %i.be
  %i.bg = fadd double %i.bc, %i.bf
  store double %i.bg, ptr %i.ba, align 8, !tbaa !242
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !242
  %i.bi = load double, ptr %i.ac, align 8, !tbaa !242
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = fadd double %i.bj, 0.000000e+00
  %i.bl = icmp sgt i64 %.0.i.i, 0
  %i.bm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bk, i64 0 ; 2 uses
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit
  %i.bn = phi <2 x double> [ %i.bm, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ], [ %i.cn, %.lr.ph ] ; 2 uses
  %i.bo = icmp sgt i64 %i.an, 1
  br i1 %i.bo, label %.lr.ph213.preheader, label %.preheader200

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.bp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.am
  %i.bq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.am
  %i.br = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.am
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.am
  br label %.lr.ph213

.lr.ph:                                           ; preds = %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit, %.lr.ph
  %.0144203 = phi i64 [ %i.co, %.lr.ph ], [ %i.ah, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ] ; 5 uses
  %i.bt = phi <2 x double> [ %i.cn, %.lr.ph ], [ %i.bm, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0144203 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !242
  %i.bw = fmul double %i.z, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0144203 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !242
  %i.bz = fmul double %i.ae, %i.by
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0144203 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !242
  %i.cd = fadd double %i.cc, %i.ca
  store double %i.cd, ptr %i.cb, align 8, !tbaa !242
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0144203
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !242
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !242
  %i.ch = load double, ptr %i.bx, align 8, !tbaa !242
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1
  %i.cm = fmul <2 x double> %i.cj, %i.cl
  %i.cn = fadd <2 x double> %i.bt, %i.cm          ; 2 uses
  %i.co = add nuw nsw i64 %.0144203, 1            ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.am
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !490

.preheader200:                                    ; preds = %.lr.ph213, %._crit_edge
  %.0199.lcssa = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.df, %.lr.ph213 ] ; 2 uses
  %.0196.lcssa = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.dd, %.lr.ph213 ] ; 2 uses
  %i.cq = icmp slt i64 %i.aq, %0
  br i1 %i.cq, label %.lr.ph219, label %._crit_edge220

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.0139211 = phi i64 [ %i.dh, %.lr.ph213 ], [ %i.am, %.lr.ph213.preheader ]
  %.0140210 = phi ptr [ %i.dg, %.lr.ph213 ], [ %i.bp, %.lr.ph213.preheader ] ; 3 uses
  %.0141209 = phi ptr [ %i.cw, %.lr.ph213 ], [ %i.bq, %.lr.ph213.preheader ] ; 2 uses
  %.0142208 = phi ptr [ %i.cu, %.lr.ph213 ], [ %i.br, %.lr.ph213.preheader ] ; 2 uses
  %.0143207 = phi ptr [ %i.cs, %.lr.ph213 ], [ %i.bs, %.lr.ph213.preheader ] ; 2 uses
  %.0196206 = phi <2 x double> [ %i.dd, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %.0199205 = phi <2 x double> [ %i.df, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %i.cr = load <2 x double>, ptr %.0143207, align 1, !tbaa !78 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0143207, i64 16
  %i.ct = load <2 x double>, ptr %.0142208, align 1, !tbaa !78 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0142208, i64 16
  %i.cv = load <2 x double>, ptr %.0141209, align 1, !tbaa !78 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0141209, i64 16
  %i.cx = load <2 x double>, ptr %.0140210, align 16, !tbaa !78
  %i.cy = fmul <2 x double> %i.ag, %i.ct
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = fmul <2 x double> %i.ab, %i.cr
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = fmul <2 x double> %i.cr, %i.cv
  %i.dd = fadd <2 x double> %.0196206, %i.dc      ; 2 uses
  %i.de = fmul <2 x double> %i.ct, %i.cv
  %i.df = fadd <2 x double> %.0199205, %i.de      ; 2 uses
  store <2 x double> %i.db, ptr %.0140210, align 16, !tbaa !78
  %i.dg = getelementptr inbounds nuw i8, ptr %.0140210, i64 16
  %i.dh = add nsw i64 %.0139211, 2                ; 2 uses
  %i.di = icmp slt i64 %i.dh, %i.aq
  br i1 %i.di, label %.lr.ph213, label %.preheader200, !llvm.loop !491

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.dj = phi <2 x double> [ %i.bn, %.preheader200 ], [ %i.el, %.lr.ph219 ]
  %i.dk = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 0, i32 2>
  %i.dl = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 1, i32 3>
  %i.dm = fadd <2 x double> %i.dk, %i.dl
  %i.dn = fadd <2 x double> %i.dm, %i.dj
  %i.do = load <2 x double>, ptr %i.au, align 8, !tbaa !242
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.dn, <2 x double> %i.do)
  store <2 x double> %i.dp, ptr %i.au, align 8, !tbaa !242
  %i.dq = icmp samesign ult i64 %i.ah, %i.b
  br i1 %i.dq, label %.lr.ph225, label %.preheader, !llvm.loop !492

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0138218 = phi i64 [ %i.em, %.lr.ph219 ], [ %i.aq, %.preheader200 ] ; 5 uses
  %i.dr = phi <2 x double> [ %i.el, %.lr.ph219 ], [ %i.bn, %.preheader200 ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.0138218 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !242
  %i.du = fmul double %i.z, %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0138218 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !242
  %i.dx = fmul double %i.ae, %i.dw
  %i.dy = fadd double %i.du, %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %4, i64 %.0138218 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !242
  %i.eb = fadd double %i.ea, %i.dy
  store double %i.eb, ptr %i.dz, align 8, !tbaa !242
  %i.ec = getelementptr inbounds [8 x i8], ptr %3, i64 %.0138218
  %i.ed = load double, ptr %i.ds, align 8, !tbaa !242
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !242
  %i.ef = load double, ptr %i.dv, align 8, !tbaa !242
  %i.eg = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ef, i64 1
  %i.ek = fmul <2 x double> %i.eh, %i.ej
  %i.el = fadd <2 x double> %i.dr, %i.ek          ; 2 uses
  %i.em = add nsw i64 %.0138218, 1                ; 2 uses
  %i.en = icmp slt i64 %i.em, %0
  br i1 %i.en, label %.lr.ph219, label %._crit_edge220, !llvm.loop !493

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.eo = phi i64 [ %i.fg, %._crit_edge230 ], [ %i.q, %.lr.ph233.preheader ] ; 6 uses
  %i.ep = phi ptr [ %i.fd, %._crit_edge230 ], [ %i.n, %.lr.ph233.preheader ] ; 2 uses
  %i.eq = phi double [ %i.ez, %._crit_edge230 ], [ %i.j, %.lr.ph233.preheader ]
  %i.er = phi i64 [ %i.ev, %._crit_edge230 ], [ %i.f, %.lr.ph233.preheader ]
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa257 = phi ptr [ %i.n, %.lr.ph233.preheader ], [ %i.fd, %._crit_edge230 ]
  %.lcssa256 = phi double [ %i.p, %.lr.ph233.preheader ], [ %i.ff, %._crit_edge230 ]
  %i.et = tail call double @llvm.fmuladd.f64(double %5, double 0.000000e+00, double %.lcssa256)
  store double %i.et, ptr %.lcssa257, align 8, !tbaa !242
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load double, ptr %i.ep, align 8, !tbaa !242
  %i.eu = tail call double @llvm.fmuladd.f64(double %5, double %i.fs, double %.pre)
  store double %i.eu, ptr %i.ep, align 8, !tbaa !242
  %i.ev = mul nsw i64 %i.eo, %2                   ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.eo
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !242
  %i.ez = fmul double %5, %i.ey                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eo
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !242
  %i.fc = fmul double %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo ; 4 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !242
  %i.ff = fadd double %i.fe, %i.fc                ; 2 uses
  store double %i.ff, ptr %i.fd, align 8, !tbaa !242
  %i.fg = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %0
  br i1 %i.fh, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.ft, %.lr.ph229 ], [ %i.eo, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi double [ %i.fs, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0227 ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !242
  %i.fk = fmul double %i.eq, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !242
  %i.fn = fadd double %i.fm, %i.fk
end_hunk_1
