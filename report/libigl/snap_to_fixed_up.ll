Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKfPf:bb.a
  %i.go = load float, ptr %i.gn, align 4, !tbaa !12
  %i.gp = fmul float %i.ez, %i.go
  store float %i.gp, ptr %i.gm, align 4, !tbaa !12
  %i.gq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gq
  %i.gs = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.gq
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !12
  %i.gu = fmul float %i.ez, %i.gt
  store float %i.gu, ptr %i.gr, align 4, !tbaa !12
  %i.gv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.gv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !12
  %i.gz = fmul float %i.ez, %i.gy
  store float %i.gz, ptr %i.gw, align 4, !tbaa !12
  %i.ha = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ha
  %i.hc = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ha
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  %i.he = fmul float %i.ez, %i.hd
  store float %i.he, ptr %i.hb, align 4, !tbaa !12
  %i.hf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hf, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !589

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hi = load <4 x float>, ptr %i.hh, align 1, !tbaa !13
  %i.hj = fmul <4 x float> %i.fq, %i.hi
  store <4 x float> %i.hj, ptr %i.hg, align 16, !tbaa !13
  %i.hk = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hl = icmp slt i64 %i.hk, %i.fh
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !590

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block84, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !600 ; 3 uses
  %i.ho = icmp sgt i64 %i.af, 0
  %i.hp = icmp sgt i64 %i.b, 1
  %or.cond = and i1 %i.hp, %i.ho
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.hq = mul i64 %i.af, 12
  %i.hr = shl i64 %i.b, 2                         ; 2 uses
  %i.hs = getelementptr i8, ptr %i.ai, i64 %i.hq
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hr
  %scevgep87 = getelementptr i8, ptr %i.ht, i64 -12 ; 2 uses
  %i.hu = getelementptr i8, ptr %4, i64 %i.hr
  %scevgep88 = getelementptr i8, ptr %i.hu, i64 -4
  %i.hv = shl i64 %i.af, 2
  %scevgep89 = getelementptr i8, ptr %i.hn, i64 %i.hv
  %i.hw = add nsw i64 %i.b, -2
  %min.iters.check97 = icmp ult i64 %i.b, 9
  %bound090 = icmp ult ptr %i.aj, %scevgep88
  %bound191 = icmp ult ptr %4, %scevgep87
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult ptr %i.aj, %scevgep89
  %bound194 = icmp ult ptr %i.hn, %scevgep87
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict92, %found.conflict95
  %n.vec99 = and i64 %i.ah, -8                    ; 3 uses
  %cmp.n110 = icmp eq i64 %i.ah, %n.vec99
  %i.hx = and i64 %i.b, 1
  %lcmp.mod121.not.not = icmp eq i64 %i.hx, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.it, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i.i, 12
  %i.hy = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.0810.i.i.i.i.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check97, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph96.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !12, !alias.scope !632
  %broadcast.splatinsert104 = insertelement <4 x float> poison, float %i.ia, i64 0
  %broadcast.splat105 = shufflevector <4 x float> %broadcast.splatinsert104, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next108, %vector.body100 ] ; 3 uses
  %i.ib = getelementptr [4 x i8], ptr %i.hy, i64 %index101 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index101 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load102 = load <4 x float>, ptr %i.ic, align 8, !tbaa !12, !alias.scope !633
  %wide.load103 = load <4 x float>, ptr %i.id, align 8, !tbaa !12, !alias.scope !633
  %i.ie = fmul <4 x float> %wide.load102, %broadcast.splat105
  %i.if = fmul <4 x float> %wide.load103, %broadcast.splat105
  %i.ig = getelementptr i8, ptr %i.ib, i64 16     ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.ib, align 4, !tbaa !12, !alias.scope !634, !noalias !635
  %wide.load107 = load <4 x float>, ptr %i.ig, align 4, !tbaa !12, !alias.scope !634, !noalias !635
  %i.ih = fsub <4 x float> %wide.load106, %i.ie
  %i.ii = fsub <4 x float> %wide.load107, %i.if
  store <4 x float> %i.ih, ptr %i.ib, align 4, !tbaa !12, !alias.scope !634, !noalias !635
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !12, !alias.scope !634, !noalias !635
  %index.next108 = add nuw i64 %index101, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next108, %n.vec99
  br i1 %i.ij, label %middle.block109, label %vector.body100, !llvm.loop !595

middle.block109:                                  ; preds = %vector.body100
  br i1 %cmp.n110, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph96.preheader

scalar.ph96.preheader:                            ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block109
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec99, %middle.block109 ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  br i1 %lcmp.mod121.not.not, label %scalar.ph96.prol, label %scalar.ph96.prol.loopexit

scalar.ph96.prol:                                 ; preds = %scalar.ph96.preheader
  %i.ik = getelementptr [4 x i8], ptr %i.hy, i64 %.09.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.im = load float, ptr %i.il, align 8, !tbaa !12
  %i.in = load float, ptr %i.hz, align 4, !tbaa !12
  %i.io = fmul float %i.im, %i.in
  %i.ip = load float, ptr %i.ik, align 4, !tbaa !12
  %i.iq = fsub float %i.ip, %i.io
  store float %i.iq, ptr %i.ik, align 4, !tbaa !12
  %i.ir = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph96.prol.loopexit

scalar.ph96.prol.loopexit:                        ; preds = %scalar.ph96.prol, %scalar.ph96.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph96.preheader ], [ %i.ir, %scalar.ph96.prol ]
  %i.is = icmp eq i64 %i.hw, %.09.i.i.i.i.i.i.i.i.ph
  br i1 %i.is, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph96

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph96.prol.loopexit, %scalar.ph96, %middle.block109
  %i.it = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.it, %i.af
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !596

scalar.ph96:                                      ; preds = %scalar.ph96.prol.loopexit, %scalar.ph96
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.jj, %scalar.ph96 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph96.prol.loopexit ] ; 4 uses
  %i.iu = getelementptr [4 x i8], ptr %i.hy, i64 %.09.i.i.i.i.i.i.i.i ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !12
  %i.ix = load float, ptr %i.hz, align 4, !tbaa !12
  %i.iy = fmul float %i.iw, %i.ix
  %i.iz = load float, ptr %i.iu, align 4, !tbaa !12
  %i.ja = fsub float %i.iz, %i.iy
  store float %i.ja, ptr %i.iu, align 4, !tbaa !12
  %i.jb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.hy, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jb
  %i.je = load float, ptr %i.jd, align 4, !tbaa !12
  %i.jf = load float, ptr %i.hz, align 4, !tbaa !12
  %i.jg = fmul float %i.je, %i.jf
  %i.jh = load float, ptr %i.jc, align 4, !tbaa !12
  %i.ji = fsub float %i.jh, %i.jg
  store float %i.ji, ptr %i.jc, align 4, !tbaa !12
  %i.jj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.jj, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph96, !llvm.loop !597

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ac, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.preheader.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.epil:                      ; preds = %.preheader.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.epil = phi i64 [ %i.jn, %.preheader.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.epil, 12
  %i.jk = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !12
  %i.jm = fmul float %i.e, %i.jl
  store float %i.jm, ptr %i.jk, align 4, !tbaa !12
  %i.jn = add nuw nsw i64 %.0810.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter123
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i.epil, !llvm.loop !598

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.epil, %bb.b, %bb.c, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 10 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 28 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load float, ptr %i.d, align 4, !tbaa !12
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.c, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.b, 2
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <4 x float>, ptr %i.f, align 1, !tbaa !13 ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.k              ; 3 uses
  %i.m = icmp sgt i64 %i.b, 8
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !13 ; 2 uses
  %i.p = fmul <4 x float> %i.o, %i.o              ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 16
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <4 x float> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <4 x float> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <4 x float> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <4 x float> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <4 x float> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !13 ; 2 uses
  %i.v = fmul <4 x float> %i.u, %i.u
  %i.w = fadd <4 x float> %.07278.i.i.i.i, %i.v   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !13 ; 2 uses
  %i.aa = fmul <4 x float> %i.z, %i.z
  %i.ab = fadd <4 x float> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 8 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !636

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !tbaa !13 ; 2 uses
  %i.af = fmul <4 x float> %i.ae, %i.ae
  %i.ag = fadd <4 x float> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <4 x float> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ah = shufflevector <4 x float> %.274.i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = shufflevector <4 x float> %.274.i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aj) ; 3 uses
  %i.al = icmp slt i64 %i.j, %i.c
  br i1 %i.al, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.am = add i64 %i.b, 3
  %i.an = add i64 %i.b, -2
  %i.ao = sub i64 %i.an, %i.j
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi float [ %i.as, %.lr.ph85.i.i.i.i.prol ], [ %i.ak, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.ar = fmul float %i.aq, %i.aq
  %i.as = fadd float %.182.i.i.i.i.prol, %i.ar    ; 3 uses
  %i.at = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !637

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa66.unr = phi float [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.as, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.at, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi float [ %i.ak, %.lr.ph85.i.i.i.i.preheader ], [ %i.as, %.lr.ph85.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.ao, 3
  br i1 %i.au, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bo, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi float [ %i.bn, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.av = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fadd float %.182.i.i.i.i, %i.ax
  %i.az = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12 ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fadd float %i.ay, %i.bc
  %i.be = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = fmul float %i.bg, %i.bg
  %i.bi = fadd float %i.bd, %i.bh
  %i.bj = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl
  %i.bn = fadd float %i.bi, %i.bm                 ; 2 uses
  %i.bo = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bo, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !638

bb.g:                                             ; preds = %bb.b
  %i.bp = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp                 ; 3 uses
  %i.br = icmp sgt i64 %i.b, 2
  br i1 %i.br, label %.lr.ph90.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph90.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.bs = add nsw i64 %i.b, -2                    ; 2 uses
  %i.bt = add nsw i64 %i.b, -3
  %xtraiter69 = and i64 %i.bs, 3                  ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %.lr.ph90.i.i.i.i.epil.preheader, label %.lr.ph90.i.i.i.i.preheader.new

.lr.ph90.i.i.i.i.preheader.new:                   ; preds = %.lr.ph90.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bs, -4
  br label %.lr.ph90.i.i.i.i

.lr.ph90.i.i.i.i:                                 ; preds = %.lr.ph90.i.i.i.i, %.lr.ph90.i.i.i.i.preheader.new
  %.088.i.i.i.i = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.co, %.lr.ph90.i.i.i.i ] ; 5 uses
  %.287.i.i.i.i = phi float [ %i.bq, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.cn, %.lr.ph90.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph90.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph90.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.bx = fmul float %i.bw, %i.bw
  %i.by = fadd float %.287.i.i.i.i, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cc = fmul float %i.cb, %i.cb
  %i.cd = fadd float %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12 ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = fadd float %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !12 ; 2 uses
  %i.cm = fmul float %i.cl, %i.cl
  %i.cn = fadd float %i.ci, %i.cm                 ; 3 uses
  %i.co = add nuw nsw i64 %.088.i.i.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph90.i.i.i.i, !llvm.loop !639

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph90.i.i.i.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil.preheader

.lr.ph90.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.preheader
  %.088.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader ], [ %i.co, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.287.i.i.i.i.epil.init = phi float [ %i.bq, %.lr.ph90.i.i.i.i.preheader ], [ %i.cn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph90.i.i.i.i.epil

.lr.ph90.i.i.i.i.epil:                            ; preds = %.lr.ph90.i.i.i.i.epil, %.lr.ph90.i.i.i.i.epil.preheader
  %.088.i.i.i.i.epil = phi i64 [ %i.ct, %.lr.ph90.i.i.i.i.epil ], [ %.088.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ] ; 2 uses
  %.287.i.i.i.i.epil = phi float [ %i.cs, %.lr.ph90.i.i.i.i.epil ], [ %.287.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph90.i.i.i.i.epil ], [ 0, %.lr.ph90.i.i.i.i.epil.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i.epil
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12 ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = fadd float %.287.i.i.i.i.epil, %i.cr    ; 2 uses
  %i.ct = add nuw nsw i64 %.088.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter69
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil, !llvm.loop !640

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.epil, %bb.g, %bb.f
  %i.cu = phi float [ %i.ak, %bb.f ], [ %i.cs, %.lr.ph90.i.i.i.i.epil ], [ %i.bq, %bb.g ], [ %i.cn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %.lcssa66.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.cv = load float, ptr %i.d, align 4, !tbaa !12 ; 6 uses
  %i.cw = fcmp ugt float %i.cu, f0x00800000
  br i1 %i.cw, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.cx = phi float [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.cv, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store float 0.000000e+00, ptr %2, align 4, !tbaa !12
  store float %i.cx, ptr %3, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %1, align 8, !tbaa !132   ; 4 uses
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !100 ; 4 uses
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = and i64 %i.db, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dd = lshr exact i64 %i.db, 2
  %i.de = sub nsw i64 0, %i.dd
  %i.df = and i64 %i.de, 3
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 %i.da)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.i ], [ %i.da, %bb.h ] ; 8 uses
  %i.dh = sub i64 %i.da, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.di = sdiv i64 %i.dh, 4                       ; 2 uses
  %i.dj = shl nsw i64 %i.di, 2                    ; 2 uses
  %i.dk = add i64 %i.dj, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.dm, i1 false), !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = icmp sgt i64 %i.dh, 3
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %i.cz, i64 %i.do
  %i.dp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.dk, i64 %i.dp)
  %i.dq = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dr = add i64 %smax.i, %i.dq
  %i.ds = shl i64 %i.dr, 2
  %i.dt = and i64 %i.ds, -16
  %i.du = add i64 %i.dt, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.du, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = icmp slt i64 %i.dk, %i.da
  br i1 %i.dv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = shl i64 %i.di, 4
  %i.dx = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.dy = getelementptr i8, ptr %i.cz, i64 %i.dw
  %scevgep1.i = getelementptr i8, ptr %i.dy, i64 %i.dx
  %i.dz = sub i64 %i.dh, %i.dj
  %i.ea = shl nuw i64 %i.dz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.ea, i1 false), !tbaa !12
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.eb = fmul float %i.cv, %i.cv
  %i.ec = fadd float %i.cu, %i.eb
  %i.ed = tail call noundef float @sqrtf(float noundef %i.ec) #19 ; 2 uses
  %i.ee = fcmp ult float %i.cv, 0.000000e+00
  %i.ef = fneg float %i.ed
  %storemerge = select i1 %i.ee, float %i.ed, float %i.ef ; 2 uses
  store float %storemerge, ptr %3, align 4, !tbaa !12
  %i.eg = fsub float %i.cv, %storemerge           ; 13 uses
  %i.eh = load ptr, ptr %1, align 8, !tbaa !132   ; 14 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !100 ; 8 uses
  %i.ek = ptrtoint ptr %i.eh to i64               ; 4 uses
  %i.el = and i64 %i.ek, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.em = lshr exact i64 %i.ek, 2
  %i.en = sub nsw i64 0, %i.em
  %i.eo = and i64 %i.en, 3
  %i.ep = tail call i64 @llvm.smin.i64(i64 %i.eo, i64 %i.ej)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %bb.j ], [ %i.ej, %.critedge ] ; 11 uses
  %i.eq = sub nsw i64 %i.ej, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.er = sdiv i64 %i.eq, 4
  %i.es = shl nsw i64 %i.er, 2                    ; 2 uses
  %i.et = add nsw i64 %i.es, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.eu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ev = sub i64 %i.ek, %i.e
  %i.ew = add i64 %i.ev, -5
  %diff.check = icmp ult i64 %i.ew, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %wide.load = load <4 x float>, ptr %i.ey, align 4, !tbaa !12
  %i.ez = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.ez, ptr %i.ex, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter73 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64 ] ; 3 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64 ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  %i.fe = fdiv float %i.fd, %i.eg
  store float %i.fe, ptr %i.fb, align 4, !tbaa !12
  %i.ff = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !642

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader64 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fg = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fl = fdiv float %i.fk, %i.eg
  store float %i.fl, ptr %i.fi, align 4, !tbaa !12
  %i.fm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fm
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12
  %i.fq = fdiv float %i.fp, %i.eg
  store float %i.fq, ptr %i.fn, align 4, !tbaa !12
  %i.fr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fr
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv:.preheader.i.i.i.i
  store i64 2, ptr %i.ak, align 8, !tbaa !100, !alias.scope !1140
  store i64 0, ptr %i.al, align 8, !tbaa !100, !alias.scope !1140
  store ptr %0, ptr %i.am, align 8, !tbaa !310, !alias.scope !1140
  store i64 1, ptr %i.an, align 8, !tbaa !100, !alias.scope !1140
  store i64 2, ptr %i.ao, align 8, !tbaa !100, !alias.scope !1140
  store i64 3, ptr %i.ap, align 8, !tbaa !336, !alias.scope !1140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ct, ptr %4, align 8, !tbaa !340, !alias.scope !1141
  store i64 1, ptr %i.aq, align 8, !tbaa !100, !alias.scope !1141
  store ptr %i.cj, ptr %i.ar, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 2, ptr %i.as, align 8, !tbaa !100, !alias.scope !1141
  store i64 3, ptr %i.at, align 8, !tbaa !1134, !alias.scope !1141
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i32 0, ptr %i.cv, align 16, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.cw, align 4, !tbaa !93
  %i.cx = load i64, ptr %i.u, align 16, !tbaa !120
  %sext80 = shl i64 %i.cx, 32
  %i.cy = ashr exact i64 %sext80, 30
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !93
  store i32 %i.da, ptr %i.cv, align 16, !tbaa !93
  store i32 0, ptr %i.cz, align 4, !tbaa !93
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !120
  %sext80.1 = shl i64 %i.dc, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.de = ashr exact i64 %sext80.1, 30
  %i.df = getelementptr inbounds i8, ptr %i.cv, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !93
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !93
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !93
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !93
  %i.di = select i1 %.not81, i64 1, i64 -1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.di, ptr %i.dj, align 16, !tbaa !1142
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.dk, align 16, !tbaa !52
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dn = call noundef double @llvm.fabs.f64(double %i.dm)
  %i.do = fdiv double %i.dn, %i.bz                ; 2 uses
  %i.dp = fadd double %i.do, 1.000000e+00
  %i.dq = fsub double 1.000000e+00, %i.do
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, double 0.000000e+00, double %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !15
  %i.dw = fdiv double %i.bz, %i.dv                ; 2 uses
  %i.dx = fmul double %i.dw, %i.dw
  %i.dy = fmul double %i.dx, %i.dt
  %i.dz = fcmp ugt double %i.dy, f0x3E50000000000000
  br i1 %i.dz, label %bb.j, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %bb.i
  %gep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = load <2 x double>, ptr %gep, align 16, !tbaa !13 ; 2 uses
  %i.eb = fmul <2 x double> %i.ea, %i.ea
  %i.ec = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.eb)
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %i.ec) ; 2 uses
  store double %.scalar.i90, ptr %i.du, align 8, !tbaa !15
  br label %._crit_edge.sink.split

bb.j:                                             ; preds = %bb.i
  %.scalar = call double @llvm.sqrt.f64(double %i.dt)
  %i.ed = fmul double %i.bz, %.scalar
  br label %._crit_edge.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.3210", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.3102", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3227", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op.3189", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.3001", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !15  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !333    ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !100  ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter156 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter159 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter160 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter160.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !15
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !15
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !15
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !15
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !15
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !15
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter160.next.3 = add nuw nsw i64 %niter160, 4 ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1143

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter161 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter165 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter166 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter166.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !15
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !15
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !15
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !15
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !15
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !15
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !15
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !15
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter166.next.3 = add nuw nsw i64 %niter166, 4 ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1144

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !100 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bc = add nsw i64 %i.b, -1                    ; 6 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !333   ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !344
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !1176
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bm = sdiv i64 %i.bc, 4
  %i.bn = shl nsw i64 %i.bm, 2                    ; 4 uses
  %i.bo = sdiv i64 %i.bc, 2
  %i.bp = shl nsw i64 %i.bo, 1                    ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.br = icmp sgt i64 %i.b, 8
  %i.bs = icmp sgt i64 %i.bp, %i.bn
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bn
  %i.bu = icmp slt i64 %i.bp, %i.bc               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bv = shl i64 %i.bb, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bv  ; 2 uses
  %scevgep91 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bw = mul i64 %i.bb, 24
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bw
  %scevgep92 = getelementptr i8, ptr %i.bx, i64 -8
  %bound0 = icmp ult ptr %3, %scevgep91
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %3, %scevgep92
  %bound194 = icmp ult ptr %i.be, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = and i64 %i.bb, 3                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %i.by
  %n.vec = sub nsw i64 %i.bb, %i.ca               ; 2 uses
  %i.cb = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15, !alias.scope !1177
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cc = mul nuw nsw i64 %index, 24
  %i.cd = mul nuw i64 %index, 24
  %i.ce = mul nuw i64 %index, 24
  %i.cf = mul nuw i64 %index, 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load double, ptr %i.cg, align 8, !tbaa !15, !alias.scope !1178
  %i.co = load double, ptr %i.ci, align 8, !tbaa !15, !alias.scope !1178
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !15, !alias.scope !1178
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !15, !alias.scope !1178
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = fmul <2 x double> %broadcast.splat, %i.cq
  %i.cw = fmul <2 x double> %broadcast.splat, %i.cu
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %i.cv, ptr %i.cx, align 8, !tbaa !15, !alias.scope !1179, !noalias !1180
  store <2 x double> %i.cw, ptr %i.cy, align 8, !tbaa !15, !alias.scope !1179, !noalias !1180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.body, !llvm.loop !1149

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %.07.us8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.da = sub i64 %i.bb, %.07.us8.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter142 = and i64 %i.da, 1
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol
  %i.dc = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dd = load double, ptr %i.db, align 8, !tbaa !15
  %i.de = fmul double %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i.ph
  store double %i.de, ptr %i.df, align 8, !tbaa !15
  %i.dg = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.07.us8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129 ], [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol ]
  %i.dh = icmp eq i64 %i.bb, %.neg
  br i1 %i.dh, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i
  %i.dj = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dk = load double, ptr %i.di, align 8, !tbaa !15
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !15
  %i.dn = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.dn, 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1
  %i.dp = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dq = load double, ptr %i.do, align 8, !tbaa !15
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dn
  store double %i.dr, ptr %i.ds, align 8, !tbaa !15
  %i.dt = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dt, %i.bb
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, !llvm.loop !1150

.lr.ph.split.split.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %9 = icmp sgt i64 %i.b, 4
  br i1 %9, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  %i.du = xor i64 %i.bp, -1
  %i.dv = add i64 %i.b, %i.du
  %i.dw = add nsw i64 %i.b, -2
  %i.dx = sub i64 %i.dw, %i.bp
  %xtraiter139 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %i.dy = icmp ult i64 %i.dx, 3
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i
  %.07.us12.i.i.i.i.i.i.i.i = phi i64 [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i ; 10 uses
  %i.ea = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.eb = load <2 x double>, ptr %i.dz, align 1, !tbaa !13
  %i.ec = fmul <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ed = load <2 x double>, ptr %i.bq, align 1, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !13
  %i.eg = fmul <2 x double> %i.ed, %i.ef          ; 2 uses
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !13
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !13
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = fadd <2 x double> %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.el ; 2 uses
  %i.en = add nuw nsw i64 %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.en
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !13
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.en
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !13
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.es ; 2 uses
  %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.bn
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !1151

._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.ev = fadd <2 x double> %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ew = load <2 x double>, ptr %i.bt, align 1, !tbaa !13
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.bn
  %i.ey = load <2 x double>, ptr %i.ex, align 1, !tbaa !13
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = fadd <2 x double> %i.ev, %i.ez
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ev, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.fa, %bb.f ]
  %i.fb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader:  ; preds = %bb.g
  br i1 %lcmp.mod140.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol:       ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !15
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %i.fg ; 3 uses
  %i.fi = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, !llvm.loop !1152

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader
  %.lcssa132.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi double [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.dy, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi double [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !15
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.fn
  %i.fp = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fp
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !15
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.gd
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !15
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 2 uses
  %i.gk = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !1153

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.us15.i.i.i.i.i.i.i.i = phi double [ %i.fb, %bb.g ], [ %.lcssa132.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us12.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.us15.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !15
  %i.gm = add nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.bb
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, !llvm.loop !1154

.lr.ph.split.split.split.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.bb, 1
  %i.gn = icmp eq i64 %i.bb, 1
  br i1 %i.gn, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %i.go = xor i64 %i.bp, -1
  %i.gp = add i64 %i.b, %i.go
  %i.gq = add i64 %i.b, -2
  %i.gr = sub i64 %i.gq, %i.bp
  %xtraiter137 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  %i.gs = icmp ult i64 %i.gr, 3
  br label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i
  %.07.us16.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i ; 6 uses
  %i.gu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.gv = load <2 x double>, ptr %i.gt, align 1, !tbaa !13
  %i.gw = fmul <2 x double> %i.gu, %i.gv
  %i.gx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gw) ; 2 uses
  br i1 %lcmp.mod138.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol = phi double [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !15
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !15
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol, %i.hc ; 3 uses
  %i.he = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter137
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, !llvm.loop !1155

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i
  %.lcssa134.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr = phi double [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.gs, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i = phi double [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !15
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !15
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !15
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hl
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !15
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = fadd double %i.hk, %i.hq
  %i.hs = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !15
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hs
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !15
  %i.hx = fmul double %i.hu, %i.hw
  %i.hy = fadd double %i.hr, %i.hx
  %i.hz = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !15
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hz
  %i.id = load double, ptr %i.ic, align 8, !tbaa !15
  %i.ie = fmul double %i.ib, %i.id
  %i.if = fadd double %i.hy, %i.ie                ; 2 uses
  %i.ig = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ig, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !1153

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa134 = phi double [ %.lcssa134.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa134, ptr %i.ih, align 8, !tbaa !15
  %i.ii = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ii, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !1154

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.il = load <2 x double>, ptr %i.ij, align 1, !tbaa !13
  %i.im = fmul <2 x double> %i.ik, %i.il
  %i.in = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.im)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.in, ptr %i.io, align 8, !tbaa !15
  %i.ip = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ip, 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ir = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.is = load <2 x double>, ptr %i.iq, align 1, !tbaa !13
  %i.it = fmul <2 x double> %i.ir, %i.is
  %i.iu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.it)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ip
  store double %i.iu, ptr %i.iv, align 8, !tbaa !15
  %i.iw = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !1154

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iy = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.iz = load <2 x double>, ptr %i.ix, align 1, !tbaa !13
  %i.ja = fmul <2 x double> %i.iy, %i.iz
  %i.jb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ja)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.jb, ptr %i.jc, align 8, !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jd = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jd
  %i.je = mul i64 %i.bb, 24
  %i.jf = getelementptr i8, ptr %i.bd, i64 %i.je
  %scevgep98 = getelementptr i8, ptr %i.jf, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jg = and i64 %i.bb, 3                        ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  %i.ji = select i1 %i.jh, i64 4, i64 %i.jg
  %n.vec105 = sub nsw i64 %i.bb, %i.ji            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jk = mul nuw nsw i64 %index107, 24
  %i.jl = mul nuw i64 %index107, 24
  %i.jm = mul nuw i64 %index107, 24
  %i.jn = mul nuw i64 %index107, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jm
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  %i.jv = load double, ptr %i.jo, align 8, !tbaa !15, !alias.scope !1181
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !15, !alias.scope !1181
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = load double, ptr %i.js, align 8, !tbaa !15, !alias.scope !1181
  %i.ka = load double, ptr %i.ju, align 8, !tbaa !15, !alias.scope !1181
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !15, !alias.scope !1182, !noalias !1181
  %wide.load108 = load <2 x double>, ptr %i.kd, align 8, !tbaa !15, !alias.scope !1182, !noalias !1181
  %i.ke = fadd <2 x double> %i.jy, %wide.load
  %i.kf = fadd <2 x double> %i.kc, %wide.load108
  store <2 x double> %i.ke, ptr %i.jj, align 8, !tbaa !15, !alias.scope !1182, !noalias !1181
  store <2 x double> %i.kf, ptr %i.kd, align 8, !tbaa !15, !alias.scope !1182, !noalias !1181
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !1159

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kh = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.ki = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter145 = and i64 %i.kh, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !15
  %i.km = load double, ptr %i.kj, align 8, !tbaa !15
  %i.kn = fadd double %i.kl, %i.km
  store double %i.kn, ptr %i.kj, align 8, !tbaa !15
  %i.ko = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kp = icmp eq i64 %i.ki, %.05.i.i.i.i.i.i.ph
  br i1 %i.kp, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !15
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !15
  %i.ku = fadd double %i.ks, %i.kt
  store double %i.ku, ptr %i.kq, align 8, !tbaa !15
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kv ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.kv, 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !15
  %i.kz = load double, ptr %i.kw, align 8, !tbaa !15
  %i.la = fadd double %i.ky, %i.kz
  store double %i.la, ptr %i.kw, align 8, !tbaa !15
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.lb, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1160

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lc = load double, ptr %2, align 8, !tbaa !15, !noalias !1183 ; 3 uses
  %xtraiter148 = and i64 %i.bb, 1
  %i.ld = icmp eq i64 %i.ki, 0
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter151 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lr, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter152 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter152.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !15
  %i.lh = fmul double %i.lc, %i.lg
  %i.li = load double, ptr %i.le, align 8, !tbaa !15
  %i.lj = fsub double %i.li, %i.lh
  store double %i.lj, ptr %i.le, align 8, !tbaa !15
  %i.lk = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.lk, 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lk
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !15
  %i.lo = fmul double %i.lc, %i.ln
  %i.lp = load double, ptr %i.ll, align 8, !tbaa !15
  %i.lq = fsub double %i.lp, %i.lo
  store double %i.lq, ptr %i.ll, align 8, !tbaa !15
  %i.lr = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !1163

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !15
  %i.lv = fmul double %i.lc, %i.lu
  %i.lw = load double, ptr %i.ls, align 8, !tbaa !15
  %i.lx = fsub double %i.lw, %i.lv
  store double %i.lx, ptr %i.ls, align 8, !tbaa !15
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !15, !noalias !1184
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.ly = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ly, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lz, align 8
  %i.ma = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mb = lshr exact i64 %i.ma, 3
  %i.mc = and i64 %i.mb, 1
  %i.md = call i64 @llvm.smin.i64(i64 %i.mc, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.me = sub i64 %.sroa.6.sroa.4.0.copyload, %i.md
  %i.mf = and i64 %i.me, -2                       ; 3 uses
  %i.mg = add nsw i64 %i.mf, %i.md                ; 5 uses
  %i.mh = icmp sgt i64 %i.md, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mi = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !15
  %i.mj = fmul double %i.ly, %i.mi
  store double %i.mj, ptr %4, align 8, !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = icmp slt i64 %i.mg, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ml, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = add i64 %i.md, %i.mf
  %i.mn = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mm ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mn, 6
  %i.mo = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.ma
  %diff.check = icmp ugt i64 %i.mo, -32
  %or.cond = select i1 %min.iters.check115, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec117 = and i64 %i.mn, -4                   ; 3 uses
  %i.mp = add i64 %i.mg, %n.vec117
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.ly, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.mq = add i64 %i.mg, %index121                ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.mq ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load122 = load <2 x double>, ptr %i.ms, align 8, !tbaa !15
  %wide.load123 = load <2 x double>, ptr %i.mt, align 8, !tbaa !15
  %i.mu = fmul <2 x double> %broadcast.splat119, %wide.load122
  %i.mv = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <2 x double> %i.mu, ptr %i.mr, align 8, !tbaa !15
  store <2 x double> %i.mv, ptr %i.mw, align 8, !tbaa !15
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.mx, label %middle.block125, label %vector.body120, !llvm.loop !1166

middle.block125:                                  ; preds = %vector.body120
  %cmp.n = icmp eq i64 %i.mn, %n.vec117
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block125
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mp, %middle.block125 ] ; 4 uses
  %i.my = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter153 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ] ; 3 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ]
  %i.mz = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.na = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nb = load double, ptr %i.na, align 8, !tbaa !15
  %i.nc = fmul double %i.ly, %i.nb
  store double %i.nc, ptr %i.mz, align 8, !tbaa !15
  %i.nd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1167

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ], [ %i.nd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ne = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nf = icmp ugt i64 %i.ne, -4
  br i1 %i.nf, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nh = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !15
  %i.nj = fmul double %i.ly, %i.ni
  store double %i.nj, ptr %i.ng, align 8, !tbaa !15
  %i.nk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nk
  %i.nm = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nk
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !15
  %i.no = fmul double %i.ly, %i.nn
  store double %i.no, ptr %i.nl, align 8, !tbaa !15
  %i.np = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.np
  %i.nr = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.np
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !15
  %i.nt = fmul double %i.ly, %i.ns
  store double %i.nt, ptr %i.nq, align 8, !tbaa !15
  %i.nu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nu
  %i.nw = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nu
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !15
  %i.ny = fmul double %i.ly, %i.nx
  store double %i.ny, ptr %i.nv, align 8, !tbaa !15
  %i.nz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.nz, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1168

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.md, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oa = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ob = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oc = load <2 x double>, ptr %i.ob, align 1, !tbaa !13
  %i.od = fmul <2 x double> %i.mk, %i.oc
  store <2 x double> %i.od, ptr %i.oa, align 16, !tbaa !13
  %i.oe = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.of = icmp slt i64 %i.oe, %i.mg
  br i1 %i.of, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1169

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.og, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.oh, align 8, !tbaa !346
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.oi, align 8, !tbaa !348
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.oj, align 8, !tbaa !100
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.ok, align 8, !tbaa !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.be, ptr %5, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %5, ptr %6, align 8, !tbaa !1190
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ol, align 8, !tbaa !1191
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.om, align 8, !tbaa !362
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.on, align 8, !tbaa !1192
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil.preheader

._crit_edge.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.preheader
  %.03453.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader ], [ %i.ay, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter161, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %._crit_edge.i.i.i.i.i.i.epil

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.or, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i64 [ %epil.iter162.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = mul i64 %.03453.i.i.i.i.i.i.epil, 24
  %i.oo = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !15
  %i.oq = fmul double %i.e, %i.op
  store double %i.oq, ptr %i.oo, align 8, !tbaa !15
  %i.or = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !1170

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ae, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.ov, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.i.epil, 24
  %i.os = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !15
  %i.ou = fmul double %i.e, %i.ot
  store double %i.ou, ptr %i.os, align 8, !tbaa !15
  %i.ov = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter156
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1171

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !340    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !15
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !13 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !13 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !13 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !13 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1193

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !13 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.ah = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !1194

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !15 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !1195

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !15 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !15
  store double %i.bs, ptr %3, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !342   ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !100 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !15
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #19 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %storemerge = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !15
  %i.da = fsub double %i.bq, %storemerge          ; 13 uses
  %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !342   ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !100 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.do = sub i64 %i.de, %i.e
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !15
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter59 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !15
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !15
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1197

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !15
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !15
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !15
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !15
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !15
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !15
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !15
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !15
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1198

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

end_hunk_1
begin_hunk_2_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1278

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader184
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader184 ], [ %i.la, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.lb = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.lc = icmp ugt i64 %i.lb, -4
  br i1 %i.lc, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.le = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lf = load double, ptr %i.le, align 8, !tbaa !15
  %i.lg = fmul double %i.jv, %i.lf
  store double %i.lg, ptr %i.ld, align 8, !tbaa !15
  %i.lh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lh
  %i.lj = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.lh
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !15
  %i.ll = fmul double %i.jv, %i.lk
  store double %i.ll, ptr %i.li, align 8, !tbaa !15
  %i.lm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lm
  %i.lo = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.lm
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !15
  %i.lq = fmul double %i.jv, %i.lp
  store double %i.lq, ptr %i.ln, align 8, !tbaa !15
  %i.lr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lr
  %i.lt = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.lr
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !15
  %i.lv = fmul double %i.jv, %i.lu
  store double %i.lv, ptr %i.ls, align 8, !tbaa !15
  %i.lw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.lw, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1279

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = load <2 x double>, ptr %i.ly, align 1, !tbaa !13
  %i.ma = fmul <2 x double> %i.kh, %i.lz
  store <2 x double> %i.ma, ptr %i.lx, align 16, !tbaa !13
  %i.mb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mc = icmp slt i64 %i.mb, %i.kd
  br i1 %i.mc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1280

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block150, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.md, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %4, ptr %i.me, align 8, !tbaa !346
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !328
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !377
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 1, ptr %i.mh, align 8, !tbaa !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.bg, ptr %5, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %5, ptr %6, align 8, !tbaa !395
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.mi, align 8, !tbaa !1303
  %i.mj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.mj, align 8, !tbaa !362
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %13, ptr %i.mk, align 8, !tbaa !398
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKNS5_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph51.i.i.i.i.i.i, %middle.block164, %middle.block178, %.preheader.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i, %bb.c, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.3795", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.3483", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3799", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op.3189", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.3400", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !15  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !321    ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !100  ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter156 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter159 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter160 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter160.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !15
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !15
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !15
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !15
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !15
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !15
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter160.next.3 = add nuw nsw i64 %niter160, 4 ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1304

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter161 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter165 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter166 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter166.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !15
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !15
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !15
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !15
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !15
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !15
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !15
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !15
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter166.next.3 = add nuw nsw i64 %niter166, 4 ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1305

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !100 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bc = add nsw i64 %i.b, -1                    ; 6 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !321   ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !368
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !373
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bm = sdiv i64 %i.bc, 4
  %i.bn = shl nsw i64 %i.bm, 2                    ; 4 uses
  %i.bo = sdiv i64 %i.bc, 2
  %i.bp = shl nsw i64 %i.bo, 1                    ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.br = icmp sgt i64 %i.b, 8
  %i.bs = icmp sgt i64 %i.bp, %i.bn
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bn
  %i.bu = icmp slt i64 %i.bp, %i.bc               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bv = shl i64 %i.bb, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bv  ; 2 uses
  %scevgep91 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bw = mul i64 %i.bb, 24
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bw
  %scevgep92 = getelementptr i8, ptr %i.bx, i64 -8
  %bound0 = icmp ult ptr %3, %scevgep91
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %3, %scevgep92
  %bound194 = icmp ult ptr %i.be, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = and i64 %i.bb, 3                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %i.by
  %n.vec = sub nsw i64 %i.bb, %i.ca               ; 2 uses
  %i.cb = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15, !alias.scope !1333
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cc = mul nuw nsw i64 %index, 24
  %i.cd = mul nuw i64 %index, 24
  %i.ce = mul nuw i64 %index, 24
  %i.cf = mul nuw i64 %index, 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load double, ptr %i.cg, align 8, !tbaa !15, !alias.scope !1334
  %i.co = load double, ptr %i.ci, align 8, !tbaa !15, !alias.scope !1334
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !15, !alias.scope !1334
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !15, !alias.scope !1334
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = fmul <2 x double> %broadcast.splat, %i.cq
  %i.cw = fmul <2 x double> %broadcast.splat, %i.cu
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %i.cv, ptr %i.cx, align 8, !tbaa !15, !alias.scope !1335, !noalias !1336
  store <2 x double> %i.cw, ptr %i.cy, align 8, !tbaa !15, !alias.scope !1335, !noalias !1336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.body, !llvm.loop !1310

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %.07.us8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.da = sub i64 %i.bb, %.07.us8.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter142 = and i64 %i.da, 1
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol
  %i.dc = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dd = load double, ptr %i.db, align 8, !tbaa !15
  %i.de = fmul double %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i.ph
  store double %i.de, ptr %i.df, align 8, !tbaa !15
  %i.dg = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.07.us8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129 ], [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol ]
  %i.dh = icmp eq i64 %i.bb, %.neg
  br i1 %i.dh, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i
  %i.dj = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dk = load double, ptr %i.di, align 8, !tbaa !15
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !15
  %i.dn = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.dn, 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1
  %i.dp = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !15
  %i.dq = load double, ptr %i.do, align 8, !tbaa !15
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dn
  store double %i.dr, ptr %i.ds, align 8, !tbaa !15
  %i.dt = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dt, %i.bb
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, !llvm.loop !1311

.lr.ph.split.split.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %9 = icmp sgt i64 %i.b, 4
  br i1 %9, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  %i.du = xor i64 %i.bp, -1
  %i.dv = add i64 %i.b, %i.du
  %i.dw = add nsw i64 %i.b, -2
  %i.dx = sub i64 %i.dw, %i.bp
  %xtraiter139 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %i.dy = icmp ult i64 %i.dx, 3
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i
  %.07.us12.i.i.i.i.i.i.i.i = phi i64 [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i ; 10 uses
  %i.ea = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.eb = load <2 x double>, ptr %i.dz, align 1, !tbaa !13
  %i.ec = fmul <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ed = load <2 x double>, ptr %i.bq, align 1, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !13
  %i.eg = fmul <2 x double> %i.ed, %i.ef          ; 2 uses
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !13
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !13
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = fadd <2 x double> %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.el ; 2 uses
  %i.en = add nuw nsw i64 %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.en
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !13
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.en
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !13
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.es ; 2 uses
  %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.bn
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !1312

._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.ev = fadd <2 x double> %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ew = load <2 x double>, ptr %i.bt, align 1, !tbaa !13
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.bn
  %i.ey = load <2 x double>, ptr %i.ex, align 1, !tbaa !13
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = fadd <2 x double> %i.ev, %i.ez
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ev, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.fa, %bb.f ]
  %i.fb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader:  ; preds = %bb.g
  br i1 %lcmp.mod140.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol:       ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !15
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %i.fg ; 3 uses
  %i.fi = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, !llvm.loop !1313

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader
  %.lcssa132.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi double [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.dy, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi double [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !15
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.fn
  %i.fp = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fp
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !15
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.gd
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !15
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 2 uses
  %i.gk = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !1314

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.us15.i.i.i.i.i.i.i.i = phi double [ %i.fb, %bb.g ], [ %.lcssa132.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us12.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.us15.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !15
  %i.gm = add nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.bb
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, !llvm.loop !1315

.lr.ph.split.split.split.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.bb, 1
  %i.gn = icmp eq i64 %i.bb, 1
  br i1 %i.gn, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %i.go = xor i64 %i.bp, -1
  %i.gp = add i64 %i.b, %i.go
  %i.gq = add i64 %i.b, -2
  %i.gr = sub i64 %i.gq, %i.bp
  %xtraiter137 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  %i.gs = icmp ult i64 %i.gr, 3
  br label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i
  %.07.us16.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i ; 6 uses
  %i.gu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.gv = load <2 x double>, ptr %i.gt, align 1, !tbaa !13
  %i.gw = fmul <2 x double> %i.gu, %i.gv
  %i.gx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gw) ; 2 uses
  br i1 %lcmp.mod138.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol = phi double [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !15
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !15
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol, %i.hc ; 3 uses
  %i.he = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter137
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, !llvm.loop !1316

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i
  %.lcssa134.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr = phi double [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.gs, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i = phi double [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !15
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !15
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !15
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hl
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !15
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = fadd double %i.hk, %i.hq
  %i.hs = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !15
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hs
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !15
  %i.hx = fmul double %i.hu, %i.hw
  %i.hy = fadd double %i.hr, %i.hx
  %i.hz = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !15
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hz
  %i.id = load double, ptr %i.ic, align 8, !tbaa !15
  %i.ie = fmul double %i.ib, %i.id
  %i.if = fadd double %i.hy, %i.ie                ; 2 uses
  %i.ig = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ig, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !1314

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa134 = phi double [ %.lcssa134.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa134, ptr %i.ih, align 8, !tbaa !15
  %i.ii = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ii, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !1315

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.il = load <2 x double>, ptr %i.ij, align 1, !tbaa !13
  %i.im = fmul <2 x double> %i.ik, %i.il
  %i.in = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.im)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.in, ptr %i.io, align 8, !tbaa !15
  %i.ip = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ip, 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ir = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.is = load <2 x double>, ptr %i.iq, align 1, !tbaa !13
  %i.it = fmul <2 x double> %i.ir, %i.is
  %i.iu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.it)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ip
  store double %i.iu, ptr %i.iv, align 8, !tbaa !15
  %i.iw = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !1315

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iy = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !13
  %i.iz = load <2 x double>, ptr %i.ix, align 1, !tbaa !13
  %i.ja = fmul <2 x double> %i.iy, %i.iz
  %i.jb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ja)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.jb, ptr %i.jc, align 8, !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jd = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jd
  %i.je = mul i64 %i.bb, 24
  %i.jf = getelementptr i8, ptr %i.bd, i64 %i.je
  %scevgep98 = getelementptr i8, ptr %i.jf, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jg = and i64 %i.bb, 3                        ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  %i.ji = select i1 %i.jh, i64 4, i64 %i.jg
  %n.vec105 = sub nsw i64 %i.bb, %i.ji            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jk = mul nuw nsw i64 %index107, 24
  %i.jl = mul nuw i64 %index107, 24
  %i.jm = mul nuw i64 %index107, 24
  %i.jn = mul nuw i64 %index107, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jm
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  %i.jv = load double, ptr %i.jo, align 8, !tbaa !15, !alias.scope !1337
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !15, !alias.scope !1337
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = load double, ptr %i.js, align 8, !tbaa !15, !alias.scope !1337
  %i.ka = load double, ptr %i.ju, align 8, !tbaa !15, !alias.scope !1337
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !15, !alias.scope !1338, !noalias !1337
  %wide.load108 = load <2 x double>, ptr %i.kd, align 8, !tbaa !15, !alias.scope !1338, !noalias !1337
  %i.ke = fadd <2 x double> %i.jy, %wide.load
  %i.kf = fadd <2 x double> %i.kc, %wide.load108
  store <2 x double> %i.ke, ptr %i.jj, align 8, !tbaa !15, !alias.scope !1338, !noalias !1337
  store <2 x double> %i.kf, ptr %i.kd, align 8, !tbaa !15, !alias.scope !1338, !noalias !1337
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !1320

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kh = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.ki = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter145 = and i64 %i.kh, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !15
  %i.km = load double, ptr %i.kj, align 8, !tbaa !15
  %i.kn = fadd double %i.kl, %i.km
  store double %i.kn, ptr %i.kj, align 8, !tbaa !15
  %i.ko = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kp = icmp eq i64 %i.ki, %.05.i.i.i.i.i.i.ph
  br i1 %i.kp, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !15
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !15
  %i.ku = fadd double %i.ks, %i.kt
  store double %i.ku, ptr %i.kq, align 8, !tbaa !15
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kv ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.kv, 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !15
  %i.kz = load double, ptr %i.kw, align 8, !tbaa !15
  %i.la = fadd double %i.ky, %i.kz
  store double %i.la, ptr %i.kw, align 8, !tbaa !15
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.lb, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1321

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lc = load double, ptr %2, align 8, !tbaa !15, !noalias !1339 ; 3 uses
  %xtraiter148 = and i64 %i.bb, 1
  %i.ld = icmp eq i64 %i.ki, 0
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter151 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lr, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter152 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter152.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !15
  %i.lh = fmul double %i.lc, %i.lg
  %i.li = load double, ptr %i.le, align 8, !tbaa !15
  %i.lj = fsub double %i.li, %i.lh
  store double %i.lj, ptr %i.le, align 8, !tbaa !15
  %i.lk = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.lk, 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lk
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !15
  %i.lo = fmul double %i.lc, %i.ln
  %i.lp = load double, ptr %i.ll, align 8, !tbaa !15
  %i.lq = fsub double %i.lp, %i.lo
  store double %i.lq, ptr %i.ll, align 8, !tbaa !15
  %i.lr = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !1324

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !15
  %i.lv = fmul double %i.lc, %i.lu
  %i.lw = load double, ptr %i.ls, align 8, !tbaa !15
  %i.lx = fsub double %i.lw, %i.lv
  store double %i.lx, ptr %i.ls, align 8, !tbaa !15
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !15, !noalias !1340
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.ly = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ly, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lz, align 8
  %i.ma = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mb = lshr exact i64 %i.ma, 3
  %i.mc = and i64 %i.mb, 1
  %i.md = call i64 @llvm.smin.i64(i64 %i.mc, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.me = sub i64 %.sroa.6.sroa.4.0.copyload, %i.md
  %i.mf = and i64 %i.me, -2                       ; 3 uses
  %i.mg = add nsw i64 %i.mf, %i.md                ; 5 uses
  %i.mh = icmp sgt i64 %i.md, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNS6_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mi = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !15
  %i.mj = fmul double %i.ly, %i.mi
  store double %i.mj, ptr %4, align 8, !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNS6_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNS6_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNS6_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNS6_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = icmp slt i64 %i.mg, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ml, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = add i64 %i.md, %i.mf
  %i.mn = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mm ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mn, 6
  %i.mo = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.ma
end_hunk_2
