Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10252
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.gp = load ptr, ptr %0, align 8, !tbaa !192, !noalias !633
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.gr = add nuw nsw i64 %i.ca, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.gs = load ptr, ptr %36, align 8, !tbaa !192, !noalias !634
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gr ; 2 uses
  store ptr %i.gt, ptr %40, align 8, !tbaa !199, !alias.scope !634
  %i.gu = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %36, ptr %i.gu, align 8, !tbaa !201, !alias.scope !634
  %i.gv = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i64 %i.gr, ptr %i.gv, align 8, !tbaa !106, !alias.scope !634
  %i.gw = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 0, ptr %i.gw, align 8, !tbaa !106, !alias.scope !634
  %i.gx = getelementptr inbounds nuw i8, ptr %40, i64 40
  store i64 1, ptr %i.gx, align 8, !tbaa !204, !alias.scope !634
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.gq, ptr %7, align 8, !tbaa !206
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !193
  store i64 %i.gz, ptr %i.gy, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.gt, ptr %8, align 8, !tbaa !208
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hb = load i64, ptr %i.ev, align 8, !tbaa !193
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !210
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.hc, align 8, !tbaa !212
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.hd, align 8, !tbaa !121
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %40, ptr %i.he, align 8, !tbaa !214
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.cb, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.bd

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %bb.bc
  %.pre259 = trunc i64 %i.gr to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph227

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !196 ; 2 uses
  %.pre258 = trunc i64 %i.cb to i32
  %.pre261 = shl i64 %.pre, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph227:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.hf = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %i.hg = load ptr, ptr %41, align 8              ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.hi = load i64, ptr %i.hh, align 8            ; 6 uses
  %i.hj = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx221 = shl i64 %i.hi, 3                     ; 5 uses
  %i.hk = icmp eq i64 %i.bz, 4
  br i1 %i.hk, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph227.new

.lr.ph227.new:                                    ; preds = %.lr.ph227
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.be:                                            ; preds = %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.cm

bb.bf:                                            ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.cm

bb.bg:                                            ; preds = %bb.bb
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.cm

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph227.new
  %.089226 = phi i64 [ 0, %.lr.ph227.new ], [ %i.ii, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph227.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %.089226
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !93
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !98
  %i.ht = icmp slt i32 %i.hs, 0                   ; 2 uses
  %i.hu = getelementptr [4 x i8], ptr %i.hg, i64 %.089226 ; 3 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %i.hi
  %i.hw = getelementptr i8, ptr %i.hu, i64 %.idx221
  %i.hx = trunc i64 %.089226 to i32
  %..pre259 = select i1 %i.ht, i32 %i.hj, i32 %.pre259
  %.pre259. = select i1 %i.ht, i32 %.pre259, i32 %i.hj
  store i32 %..pre259, ptr %i.hu, align 4, !tbaa !98
  store i32 %.pre259., ptr %i.hv, align 4, !tbaa !98
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !98
  %i.hy = or disjoint i64 %.089226, 1             ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !93
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !98
  %i.id = icmp slt i32 %i.ic, 0                   ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.hg, i64 %i.hy ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.hi
  %i.ig = getelementptr i8, ptr %i.ie, i64 %.idx221
  %i.ih = trunc i64 %i.hy to i32
  %..pre259.1 = select i1 %i.id, i32 %i.hj, i32 %.pre259
  %.pre259..1 = select i1 %i.id, i32 %.pre259, i32 %i.hj
  store i32 %..pre259.1, ptr %i.ie, align 4, !tbaa !98
  store i32 %.pre259..1, ptr %i.if, align 4, !tbaa !98
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !98
  %i.ii = add nuw nsw i64 %.089226, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !622

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.ij = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.ij, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph227
  %.089226.epil.init = phi i64 [ 0, %.lr.ph227 ], [ %i.ii, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod324 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod324)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %.089226.epil.init
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !93
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !98
  %i.io = icmp slt i32 %i.in, 0                   ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %i.hg, i64 %.089226.epil.init ; 3 uses
  %i.iq = getelementptr [4 x i8], ptr %i.ip, i64 %i.hi
  %i.ir = getelementptr i8, ptr %i.ip, i64 %.idx221
  %i.is = trunc i64 %.089226.epil.init to i32
  %..pre259.epil = select i1 %i.io, i32 %i.hj, i32 %.pre259
  %.pre259..epil = select i1 %i.io, i32 %.pre259, i32 %i.hj
  store i32 %..pre259.epil, ptr %i.ip, align 4, !tbaa !98
  store i32 %.pre259..epil, ptr %i.iq, align 4, !tbaa !98
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !98
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx220.pre-phi = phi i64 [ %.pre261, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx221, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx221, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre258, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hj, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hj, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.it = phi i64 [ %.pre, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.iu = load ptr, ptr %41, align 8, !tbaa !195
  %i.iv = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.iw = getelementptr i8, ptr %i.iu, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.iw, align 4, !tbaa !98
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.it
  store i32 %.pre259, ptr %i.ix, align 4, !tbaa !98
  %i.iy = getelementptr i8, ptr %i.iw, i64 %.idx220.pre-phi
  %i.iz = trunc i64 %i.ca to i32
  store i32 %i.iz, ptr %i.iy, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.ja = shl nuw nsw i64 %i.cb, 2
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #37
          to label %.noexc159 unwind label %bb.bh ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.jb, ptr %42, align 8, !tbaa !92
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.cb
  %i.jd = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !125
  store i32 0, ptr %i.jb, align 4, !tbaa !98
  %i.je = getelementptr i8, ptr %i.jb, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph230, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.je, i8 0, i64 %i.bz, i1 false), !tbaa !98
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.bz
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.jf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.je, %.noexc159 ]
  %i.jg = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.jg, align 8, !tbaa !91
  %i.jh = load ptr, ptr %41, align 8, !tbaa !195  ; 3 uses
  %i.ji = load i64, ptr %i.iv, align 8            ; 3 uses
  %i.jj = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jj, label %.epil.preheader, label %.lr.ph230.new

.lr.ph230.new:                                    ; preds = %.lr.ph230
  %unroll_iter328 = and i64 %i.cb, 2305843009213693950
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.bi:                                            ; preds = %bb.bq, %.lr.ph230.new
  %.088228 = phi i64 [ 0, %.lr.ph230.new ], [ %i.km, %bb.bq ] ; 6 uses
  %niter329 = phi i64 [ 0, %.lr.ph230.new ], [ %niter329.next.1, %bb.bq ]
  %i.jl = getelementptr [4 x i8], ptr %i.jh, i64 %.088228 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp eq i64 %i.cb, %i.jn
  br i1 %i.jo, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jp = getelementptr [4 x i8], ptr %i.jl, i64 %i.ji
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !98
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp eq i64 %i.gr, %i.jr
  br i1 %i.js, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jt = trunc i64 %.088228 to i32
  %i.ju = xor i32 %i.jt, -1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.jv = trunc i64 %.088228 to i32
  %i.jw = or disjoint i32 %i.jv, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink320 = phi i32 [ %i.ju, %bb.bk ], [ %i.jw, %bb.bl ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.088228
  store i32 %.sink320, ptr %i.jx, align 4, !tbaa !98
  %i.jy = or disjoint i64 %.088228, 1             ; 4 uses
  %i.jz = getelementptr [4 x i8], ptr %i.jh, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !98
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp eq i64 %i.cb, %i.kb
  br i1 %i.kc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kd = getelementptr [4 x i8], ptr %i.jz, i64 %i.ji
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !98
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp eq i64 %i.gr, %i.kf
  br i1 %i.kg, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.kh = trunc i64 %i.jy to i32
  %i.ki = add i32 %i.kh, 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kj = trunc i64 %i.jy to i32
  %i.kk = xor i32 %i.kj, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink320.1 = phi i32 [ %i.kk, %bb.bp ], [ %i.ki, %bb.bo ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jy
  store i32 %.sink320.1, ptr %i.kl, align 4, !tbaa !98
  %i.km = add nuw nsw i64 %.088228, 2             ; 2 uses
  %niter329.next.1 = add i64 %niter329, 2         ; 2 uses
  %niter329.ncmp.1 = icmp eq i64 %niter329.next.1, %unroll_iter328
  br i1 %niter329.ncmp.1, label %._crit_edge231.unr-lcssa, label %bb.bi, !llvm.loop !623

._crit_edge231.unr-lcssa:                         ; preds = %bb.bq
  %i.kn = and i64 %i.bz, 4
  %lcmp.mod326.not.not = icmp eq i64 %i.kn, 0
  br i1 %lcmp.mod326.not.not, label %.epil.preheader, label %._crit_edge231

.epil.preheader:                                  ; preds = %._crit_edge231.unr-lcssa, %.lr.ph230
  %.088228.epil.init = phi i64 [ 0, %.lr.ph230 ], [ %i.km, %._crit_edge231.unr-lcssa ] ; 4 uses
  %lcmp.mod327 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ko = getelementptr [4 x i8], ptr %i.jh, i64 %.088228.epil.init ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !98
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp eq i64 %i.cb, %i.kq
  br i1 %i.kr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.epil.preheader
  %i.ks = getelementptr [4 x i8], ptr %i.ko, i64 %i.ji
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !98
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp eq i64 %i.gr, %i.ku
  br i1 %i.kv, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.epil.preheader
  %i.kw = trunc i64 %.088228.epil.init to i32
  %i.kx = add i32 %i.kw, 1
  br label %._crit_edge231.epilog-lcssa

bb.bt:                                            ; preds = %bb.br
  %i.ky = trunc i64 %.088228.epil.init to i32
  %i.kz = xor i32 %i.ky, -1
  br label %._crit_edge231.epilog-lcssa

._crit_edge231.epilog-lcssa:                      ; preds = %bb.bt, %bb.bs
  %.sink320.epil = phi i32 [ %i.kz, %bb.bt ], [ %i.kx, %bb.bs ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.088228.epil.init
  store i32 %.sink320.epil, ptr %i.la, align 4, !tbaa !98
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.unr-lcssa, %._crit_edge231.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %41, i64 noundef %i.cb, i64 noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %._crit_edge231
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !127
  %.not.i.i160 = icmp eq i64 %i.ca, %i.lc
  br i1 %.not.i.i160, label %.lr.ph234, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ld = load ptr, ptr %6, align 8, !tbaa !128
  call void @free(ptr noundef %i.ld) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bv
  %i.le = call noalias ptr @malloc(i64 noundef %i.bz) #38 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.bw, label %.sink.split.i.i

bb.bw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.lg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lg, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc162 unwind label %bb.bx

.noexc162:                                        ; preds = %bb.bw
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bv
  %.sink.i.i = phi ptr [ %i.le, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bv ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !128
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.bu, %.sink.split.i.i
  store i64 %i.ca, ptr %i.lb, align 8, !tbaa !127
  %i.lh = load ptr, ptr %43, align 8, !tbaa !128  ; 5 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw, %._crit_edge231
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = load ptr, ptr %43, align 8, !tbaa !128
  call void @free(ptr noundef %i.lj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.lk = load ptr, ptr %42, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.cl

bb.by:                                            ; preds = %.lr.ph234, %bb.bz
  %.086232 = phi i64 [ 0, %.lr.ph234 ], [ %i.lp, %bb.bz ] ; 4 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.086232
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !98
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp eq i64 %i.ca, %i.ln
  br i1 %i.lo, label %._crit_edge235, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lp = add nuw i64 %.086232, 1
  %exitcond253.not = icmp eq i64 %.086232, %i.ca
  br i1 %exitcond253.not, label %._crit_edge235, label %bb.by, !llvm.loop !624

._crit_edge235:                                   ; preds = %bb.bz, %bb.by
  %.087.ph = phi i64 [ %i.gr, %bb.bz ], [ %.086232, %bb.by ]
  br i1 %.not.i.i.i.i, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge235
  %i.lq = add i64 %.087.ph, 1                     ; 3 uses
  %i.lr = load ptr, ptr %6, align 8, !tbaa !128   ; 3 uses
  %i.ls = icmp eq i64 %i.bz, 4
  br i1 %i.ls, label %.epil.preheader330, label %.lr.ph240.new

.lr.ph240.new:                                    ; preds = %.lr.ph240
  %unroll_iter334 = and i64 %i.ca, 1152921504606846974
  br label %bb.ck

._crit_edge241.loopexit.unr-lcssa:                ; preds = %bb.ck
  %i.lt = and i64 %i.bz, 4
  %lcmp.mod332.not = icmp eq i64 %i.lt, 0
  br i1 %lcmp.mod332.not, label %._crit_edge241, label %.epil.preheader330

.epil.preheader330:                               ; preds = %._crit_edge241.loopexit.unr-lcssa, %.lr.ph240
  %.0238.epil.init = phi i64 [ 0, %.lr.ph240 ], [ %i.oc, %._crit_edge241.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod333 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod333)
  %i.lu = add i64 %i.lq, %.0238.epil.init
  %i.lv = urem i64 %i.lu, %i.cb
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !98
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.ly
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !93
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0238.epil.init
  %i.mc = trunc i64 %i.ma to i32
  store i32 %i.mc, ptr %i.mb, align 4, !tbaa !98
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %.epil.preheader330, %._crit_edge241.loopexit.unr-lcssa, %._crit_edge235
  call void @free(ptr noundef nonnull %i.lh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.md = load ptr, ptr %42, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge241
  %i.me = load ptr, ptr %i.jd, align 8, !tbaa !125
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge241, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.mi = load ptr, ptr %41, align 8, !tbaa !195
  call void @free(ptr noundef %i.mi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.mj = load ptr, ptr %36, align 8, !tbaa !192  ; 3 uses
  %i.mk = load i64, ptr %i.ev, align 8, !tbaa !193 ; 2 uses
  %i.ml = icmp ne ptr %i.mj, null
  %i.mm = icmp ne i64 %i.mk, 0
  %or.cond.i.i.i.i = and i1 %i.ml, %i.mm
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mn = mul nsw i64 %i.mk, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.mo, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mn, %.preheader.i.i.preheader.i.i ]
  %i.mo = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mo ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i.i.i
  %i.mr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mr, 0
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 3 uses
  %i.mt = load atomic i32, ptr %i.ms monotonic, align 4 ; 2 uses
  %i.mu = icmp eq i32 %i.mt, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.mu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mv = load ptr, ptr %i.mq, align 8, !tbaa !88
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(12) %i.mq) #22, !inline_history !9
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.my = add nsw i32 %i.mt, -1
  store atomic i32 %i.my, ptr %i.ms monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  br i1 %i.mu, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mz = atomicrmw sub ptr %i.ms, i32 1 release, align 4
  %i.na = icmp eq i32 %i.mz, 1
  br i1 %i.na, label %bb.ch, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.nb = load ptr, ptr %i.mp, align 8, !tbaa !85 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nd = load ptr, ptr %i.nb, align 8, !tbaa !88
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(12) %i.nb) #22, !inline_history !9
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mo, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.mj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0186.0299310, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.ng = ptrtoint ptr %.sroa.15.0296312 to i64
  %i.nh = ptrtoint ptr %.sroa.0186.0299310 to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0299310, i64 noundef %i.ni) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  ret void

bb.ck:                                            ; preds = %bb.ck, %.lr.ph240.new
  %.0238 = phi i64 [ 0, %.lr.ph240.new ], [ %i.oc, %bb.ck ] ; 4 uses
  %niter335 = phi i64 [ 0, %.lr.ph240.new ], [ %niter335.next.1, %bb.ck ]
  %i.nj = add i64 %i.lq, %.0238
  %i.nk = urem i64 %i.nj, %i.cb
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !98
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !93
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0238
  %i.nr = trunc i64 %i.np to i32
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !98
  %i.ns = or disjoint i64 %.0238, 1               ; 2 uses
  %i.nt = add i64 %i.lq, %i.ns
  %i.nu = urem i64 %i.nt, %i.cb
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !98
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.nx
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !93
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ns
  %i.ob = trunc i64 %i.nz to i32
  store i32 %i.ob, ptr %i.oa, align 4, !tbaa !98
  %i.oc = add nuw nsw i64 %.0238, 2               ; 2 uses
  %niter335.next.1 = add i64 %niter335, 2         ; 2 uses
  %niter335.ncmp.1 = icmp eq i64 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %._crit_edge241.loopexit.unr-lcssa, label %bb.ck, !llvm.loop !625

bb.cl:                                            ; preds = %bb.bx
  %i.od = load ptr, ptr %i.jd, align 8, !tbaa !125
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.lk to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.og) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.cl, %bb.bx, %bb.bh
  %.pn119.pn = phi { ptr, i32 } [ %i.jk, %bb.bh ], [ %i.li, %bb.bx ], [ %i.li, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body153

.body153:                                         ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.hl, %bb.bd ]
  %i.oh = load ptr, ptr %41, align 8, !tbaa !195
  call void @free(ptr noundef %i.oh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.be, %.body153, %bb.at, %bb.bf, %bb.bg, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.an ], [ %i.hm, %bb.be ], [ %.pn122.pn, %.body153 ], [ %i.ho, %bb.bg ], [ %i.hn, %bb.bf ], [ %i.ek, %bb.at ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0186.0299310, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.cn

bb.cn:                                            ; preds = %.thread, %bb.cm
  %.pn125.pn.pn.pn319 = phi { ptr, i32 } [ %i.dl, %.thread ], [ %.pn125.pn.pn, %bb.cm ]
  %.sroa.0186.0300318 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0186.0299310, %bb.cm ] ; 2 uses
  %.sroa.15.0296311317 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0296312, %bb.cm ]
  %i.oi = ptrtoint ptr %.sroa.15.0296311317 to i64
  %i.oj = ptrtoint ptr %.sroa.0186.0300318 to i64
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.gj = load ptr, ptr %0, align 8, !tbaa !192, !noalias !699
  %i.gk = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.gl = add nuw nsw i64 %i.bx, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.gm = load ptr, ptr %36, align 8, !tbaa !192, !noalias !700
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %i.gl ; 2 uses
  store ptr %i.gn, ptr %40, align 8, !tbaa !199, !alias.scope !700
  %i.go = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %36, ptr %i.go, align 8, !tbaa !201, !alias.scope !700
  %i.gp = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i64 %i.gl, ptr %i.gp, align 8, !tbaa !106, !alias.scope !700
  %i.gq = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 0, ptr %i.gq, align 8, !tbaa !106, !alias.scope !700
  %i.gr = getelementptr inbounds nuw i8, ptr %40, i64 40
  store i64 1, ptr %i.gr, align 8, !tbaa !204, !alias.scope !700
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.gk, ptr %7, align 8, !tbaa !206
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !193
  store i64 %i.gt, ptr %i.gs, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.gn, ptr %8, align 8, !tbaa !208
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = load i64, ptr %i.ep, align 8, !tbaa !193
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !210
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.gw, align 8, !tbaa !212
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.gx, align 8, !tbaa !121
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %40, ptr %i.gy, align 8, !tbaa !214
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef %i.by, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.bd

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %bb.bc
  %.pre258 = trunc i64 %i.gl to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph226

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !196 ; 2 uses
  %.pre257 = trunc i64 %i.by to i32
  %.pre260 = shl i64 %.pre, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph226:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.gz = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %i.ha = load ptr, ptr %41, align 8              ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.hc = load i64, ptr %i.hb, align 8            ; 6 uses
  %i.hd = trunc i64 %i.by to i32                  ; 8 uses
  %.idx220 = shl i64 %i.hc, 3                     ; 5 uses
  %i.he = icmp eq i64 %i.bw, 4
  br i1 %i.he, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph226.new

.lr.ph226.new:                                    ; preds = %.lr.ph226
  %unroll_iter = and i64 %i.bx, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.be:                                            ; preds = %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.cm

bb.bf:                                            ; preds = %bb.ba
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.cm

bb.bg:                                            ; preds = %bb.bb
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.cm

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph226.new
  %.089225 = phi i64 [ 0, %.lr.ph226.new ], [ %i.ic, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph226.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %.089225
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !93
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !98
  %i.hn = icmp slt i32 %i.hm, 0                   ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.ha, i64 %.089225 ; 3 uses
  %i.hp = getelementptr [4 x i8], ptr %i.ho, i64 %i.hc
  %i.hq = getelementptr i8, ptr %i.ho, i64 %.idx220
  %i.hr = trunc i64 %.089225 to i32
  %..pre258 = select i1 %i.hn, i32 %i.hd, i32 %.pre258
  %.pre258. = select i1 %i.hn, i32 %.pre258, i32 %i.hd
  store i32 %..pre258, ptr %i.ho, align 4, !tbaa !98
  store i32 %.pre258., ptr %i.hp, align 4, !tbaa !98
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !98
  %i.hs = or disjoint i64 %.089225, 1             ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !93
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !98
  %i.hx = icmp slt i32 %i.hw, 0                   ; 2 uses
  %i.hy = getelementptr [4 x i8], ptr %i.ha, i64 %i.hs ; 3 uses
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %i.hc
  %i.ia = getelementptr i8, ptr %i.hy, i64 %.idx220
  %i.ib = trunc i64 %i.hs to i32
  %..pre258.1 = select i1 %i.hx, i32 %i.hd, i32 %.pre258
  %.pre258..1 = select i1 %i.hx, i32 %.pre258, i32 %i.hd
  store i32 %..pre258.1, ptr %i.hy, align 4, !tbaa !98
  store i32 %.pre258..1, ptr %i.hz, align 4, !tbaa !98
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !98
  %i.ic = add nuw nsw i64 %.089225, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !688

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.id = and i64 %i.bw, 4
  %lcmp.mod.not = icmp eq i64 %i.id, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph226
  %.089225.epil.init = phi i64 [ 0, %.lr.ph226 ], [ %i.ic, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod323 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod323)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %.089225.epil.init
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !93
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !98
  %i.ii = icmp slt i32 %i.ih, 0                   ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %i.ha, i64 %.089225.epil.init ; 3 uses
  %i.ik = getelementptr [4 x i8], ptr %i.ij, i64 %i.hc
  %i.il = getelementptr i8, ptr %i.ij, i64 %.idx220
  %i.im = trunc i64 %.089225.epil.init to i32
  %..pre258.epil = select i1 %i.ii, i32 %i.hd, i32 %.pre258
  %.pre258..epil = select i1 %i.ii, i32 %.pre258, i32 %i.hd
  store i32 %..pre258.epil, ptr %i.ij, align 4, !tbaa !98
  store i32 %.pre258..epil, ptr %i.ik, align 4, !tbaa !98
  store i32 %i.im, ptr %i.il, align 4, !tbaa !98
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx219.pre-phi = phi i64 [ %.pre260, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx220, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx220, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre257, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hd, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hd, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.in = phi i64 [ %.pre, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hc, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hc, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.io = load ptr, ptr %41, align 8, !tbaa !195
  %i.ip = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.iq = getelementptr i8, ptr %i.io, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.iq, align 4, !tbaa !98
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %i.in
  store i32 %.pre258, ptr %i.ir, align 4, !tbaa !98
  %i.is = getelementptr i8, ptr %i.iq, i64 %.idx219.pre-phi
  %i.it = trunc i64 %i.bx to i32
  store i32 %i.it, ptr %i.is, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.iu = shl nuw nsw i64 %i.by, 2
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #37
          to label %.noexc159 unwind label %bb.bh ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.iv, ptr %42, align 8, !tbaa !92
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.by
  %i.ix = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !125
  store i32 0, ptr %i.iv, align 4, !tbaa !98
  %i.iy = getelementptr i8, ptr %i.iv, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph229, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.iy, i8 0, i64 %i.bw, i1 false), !tbaa !98
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.bw
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.iz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.iy, %.noexc159 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.ja, align 8, !tbaa !91
  %i.jb = load ptr, ptr %41, align 8, !tbaa !195  ; 3 uses
  %i.jc = load i64, ptr %i.ip, align 8            ; 3 uses
  %i.jd = icmp eq ptr %i.bs, %i.bt
  br i1 %i.jd, label %.epil.preheader, label %.lr.ph229.new

.lr.ph229.new:                                    ; preds = %.lr.ph229
  %unroll_iter327 = and i64 %i.by, 2305843009213693950
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.bi:                                            ; preds = %bb.bq, %.lr.ph229.new
  %.088227 = phi i64 [ 0, %.lr.ph229.new ], [ %i.kg, %bb.bq ] ; 6 uses
  %niter328 = phi i64 [ 0, %.lr.ph229.new ], [ %niter328.next.1, %bb.bq ]
  %i.jf = getelementptr [4 x i8], ptr %i.jb, i64 %.088227 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !98
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp eq i64 %i.by, %i.jh
  br i1 %i.ji, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr [4 x i8], ptr %i.jf, i64 %i.jc
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !98
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp eq i64 %i.gl, %i.jl
  br i1 %i.jm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jn = trunc i64 %.088227 to i32
  %i.jo = xor i32 %i.jn, -1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.jp = trunc i64 %.088227 to i32
  %i.jq = or disjoint i32 %i.jp, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink319 = phi i32 [ %i.jo, %bb.bk ], [ %i.jq, %bb.bl ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.088227
  store i32 %.sink319, ptr %i.jr, align 4, !tbaa !98
  %i.js = or disjoint i64 %.088227, 1             ; 4 uses
  %i.jt = getelementptr [4 x i8], ptr %i.jb, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !98
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp eq i64 %i.by, %i.jv
  br i1 %i.jw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jx = getelementptr [4 x i8], ptr %i.jt, i64 %i.jc
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !98
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp eq i64 %i.gl, %i.jz
  br i1 %i.ka, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.kb = trunc i64 %i.js to i32
  %i.kc = add i32 %i.kb, 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kd = trunc i64 %i.js to i32
  %i.ke = xor i32 %i.kd, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink319.1 = phi i32 [ %i.ke, %bb.bp ], [ %i.kc, %bb.bo ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.js
  store i32 %.sink319.1, ptr %i.kf, align 4, !tbaa !98
  %i.kg = add nuw nsw i64 %.088227, 2             ; 2 uses
  %niter328.next.1 = add i64 %niter328, 2         ; 2 uses
  %niter328.ncmp.1 = icmp eq i64 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %._crit_edge230.unr-lcssa, label %bb.bi, !llvm.loop !689

._crit_edge230.unr-lcssa:                         ; preds = %bb.bq
  %i.kh = and i64 %i.bw, 4
  %lcmp.mod325.not.not = icmp eq i64 %i.kh, 0
  br i1 %lcmp.mod325.not.not, label %.epil.preheader, label %._crit_edge230

.epil.preheader:                                  ; preds = %._crit_edge230.unr-lcssa, %.lr.ph229
  %.088227.epil.init = phi i64 [ 0, %.lr.ph229 ], [ %i.kg, %._crit_edge230.unr-lcssa ] ; 4 uses
  %lcmp.mod326 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.ki = getelementptr [4 x i8], ptr %i.jb, i64 %.088227.epil.init ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !98
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp eq i64 %i.by, %i.kk
  br i1 %i.kl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.epil.preheader
  %i.km = getelementptr [4 x i8], ptr %i.ki, i64 %i.jc
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !98
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp eq i64 %i.gl, %i.ko
  br i1 %i.kp, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.epil.preheader
  %i.kq = trunc i64 %.088227.epil.init to i32
  %i.kr = add i32 %i.kq, 1
  br label %._crit_edge230.epilog-lcssa

bb.bt:                                            ; preds = %bb.br
  %i.ks = trunc i64 %.088227.epil.init to i32
  %i.kt = xor i32 %i.ks, -1
  br label %._crit_edge230.epilog-lcssa

._crit_edge230.epilog-lcssa:                      ; preds = %bb.bt, %bb.bs
  %.sink319.epil = phi i32 [ %i.kt, %bb.bt ], [ %i.kr, %bb.bs ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.088227.epil.init
  store i32 %.sink319.epil, ptr %i.ku, align 4, !tbaa !98
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.unr-lcssa, %._crit_edge230.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %41, i64 noundef %i.by, i64 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %._crit_edge230
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !127
  %.not.i.i160 = icmp eq i64 %i.bx, %i.kw
  br i1 %.not.i.i160, label %.lr.ph233, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kx = load ptr, ptr %6, align 8, !tbaa !128
  call void @free(ptr noundef %i.kx) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bv
  %i.ky = call noalias ptr @malloc(i64 noundef %i.bw) #38 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bw, label %.sink.split.i.i

bb.bw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.la = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.la, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc162 unwind label %bb.bx

.noexc162:                                        ; preds = %bb.bw
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bv
  %.sink.i.i = phi ptr [ %i.ky, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bv ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !128
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.bu, %.sink.split.i.i
  store i64 %i.bx, ptr %i.kv, align 8, !tbaa !127
  %i.lb = load ptr, ptr %43, align 8, !tbaa !128  ; 5 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw, %._crit_edge230
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = load ptr, ptr %43, align 8, !tbaa !128
  call void @free(ptr noundef %i.ld) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.le = load ptr, ptr %42, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.cl

bb.by:                                            ; preds = %.lr.ph233, %bb.bz
  %.086231 = phi i64 [ 0, %.lr.ph233 ], [ %i.lj, %bb.bz ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.086231
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !98
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp eq i64 %i.bx, %i.lh
  br i1 %i.li, label %._crit_edge234, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lj = add nuw i64 %.086231, 1
  %exitcond252.not = icmp eq i64 %.086231, %i.bx
  br i1 %exitcond252.not, label %._crit_edge234, label %bb.by, !llvm.loop !690

._crit_edge234:                                   ; preds = %bb.bz, %bb.by
  %.087.ph = phi i64 [ %i.gl, %bb.bz ], [ %.086231, %bb.by ]
  br i1 %.not.i.i.i.i, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge234
  %i.lk = add i64 %.087.ph, 1                     ; 3 uses
  %i.ll = load ptr, ptr %6, align 8, !tbaa !128   ; 3 uses
  %i.lm = icmp eq i64 %i.bw, 4
  br i1 %i.lm, label %.epil.preheader329, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter333 = and i64 %i.bx, 1152921504606846974
  br label %bb.ck

._crit_edge240.loopexit.unr-lcssa:                ; preds = %bb.ck
  %i.ln = and i64 %i.bw, 4
  %lcmp.mod331.not = icmp eq i64 %i.ln, 0
  br i1 %lcmp.mod331.not, label %._crit_edge240, label %.epil.preheader329

.epil.preheader329:                               ; preds = %._crit_edge240.loopexit.unr-lcssa, %.lr.ph239
  %.0237.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.nw, %._crit_edge240.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod332 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod332)
  %i.lo = add i64 %i.lk, %.0237.epil.init
  %i.lp = urem i64 %i.lo, %i.by
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !98
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !93
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.0237.epil.init
  %i.lw = trunc i64 %i.lu to i32
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !98
  br label %._crit_edge240

._crit_edge240:                                   ; preds = %.epil.preheader329, %._crit_edge240.loopexit.unr-lcssa, %._crit_edge234
  call void @free(ptr noundef nonnull %i.lb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.lx = load ptr, ptr %42, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge240
  %i.ly = load ptr, ptr %i.ix, align 8, !tbaa !125
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mb) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge240, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.mc = load ptr, ptr %41, align 8, !tbaa !195
  call void @free(ptr noundef %i.mc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.md = load ptr, ptr %36, align 8, !tbaa !192  ; 3 uses
  %i.me = load i64, ptr %i.ep, align 8, !tbaa !193 ; 2 uses
  %i.mf = icmp ne ptr %i.md, null
  %i.mg = icmp ne i64 %i.me, 0
  %or.cond.i.i.i.i = and i1 %i.mf, %i.mg
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mh = mul nsw i64 %i.me, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.mi, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mh, %.preheader.i.i.preheader.i.i ]
  %i.mi = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.md, i64 %i.mi ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i.i.i
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ml, 0
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 3 uses
  %i.mn = load atomic i32, ptr %i.mm monotonic, align 4 ; 2 uses
  %i.mo = icmp eq i32 %i.mn, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.mo, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !88
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(12) %i.mk) #22, !inline_history !9
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ms = add nsw i32 %i.mn, -1
  store atomic i32 %i.ms, ptr %i.mm monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  br i1 %i.mo, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mt = atomicrmw sub ptr %i.mm, i32 1 release, align 4
  %i.mu = icmp eq i32 %i.mt, 1
  br i1 %i.mu, label %bb.ch, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.mv = load ptr, ptr %i.mj, align 8, !tbaa !85 ; 3 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mx = load ptr, ptr %i.mv, align 8, !tbaa !88
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(12) %i.mv) #22, !inline_history !9
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.md) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0186.0298309, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.na = ptrtoint ptr %.sroa.15.0295311 to i64
  %i.nb = ptrtoint ptr %.sroa.0186.0298309 to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0298309, i64 noundef %i.nc) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  ret void

bb.ck:                                            ; preds = %bb.ck, %.lr.ph239.new
  %.0237 = phi i64 [ 0, %.lr.ph239.new ], [ %i.nw, %bb.ck ] ; 4 uses
  %niter334 = phi i64 [ 0, %.lr.ph239.new ], [ %niter334.next.1, %bb.ck ]
  %i.nd = add i64 %i.lk, %.0237
  %i.ne = urem i64 %i.nd, %i.by
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !98
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !93
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.0237
  %i.nl = trunc i64 %i.nj to i32
  store i32 %i.nl, ptr %i.nk, align 4, !tbaa !98
  %i.nm = or disjoint i64 %.0237, 1               ; 2 uses
  %i.nn = add i64 %i.lk, %i.nm
  %i.no = urem i64 %i.nn, %i.by
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !98
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !93
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.nm
  %i.nv = trunc i64 %i.nt to i32
  store i32 %i.nv, ptr %i.nu, align 4, !tbaa !98
  %i.nw = add nuw nsw i64 %.0237, 2               ; 2 uses
  %niter334.next.1 = add i64 %niter334, 2         ; 2 uses
  %niter334.ncmp.1 = icmp eq i64 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %._crit_edge240.loopexit.unr-lcssa, label %bb.ck, !llvm.loop !691

bb.cl:                                            ; preds = %bb.bx
  %i.nx = load ptr, ptr %i.ix, align 8, !tbaa !125
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.le to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.oa) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.cl, %bb.bx, %bb.bh
  %.pn119.pn = phi { ptr, i32 } [ %i.je, %bb.bh ], [ %i.lc, %bb.bx ], [ %i.lc, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body153

.body153:                                         ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.hf, %bb.bd ]
  %i.ob = load ptr, ptr %41, align 8, !tbaa !195
  call void @free(ptr noundef %i.ob) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.be, %.body153, %bb.at, %bb.bf, %bb.bg, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %i.hg, %bb.be ], [ %.pn122.pn, %.body153 ], [ %i.hi, %bb.bg ], [ %i.hh, %bb.bf ], [ %i.eh, %bb.at ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0186.0298309, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.cn

bb.cn:                                            ; preds = %.thread, %bb.cm
  %.pn125.pn.pn.pn318 = phi { ptr, i32 } [ %i.di, %.thread ], [ %.pn125.pn.pn, %bb.cm ]
  %.sroa.0186.0299317 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0186.0298309, %bb.cm ] ; 2 uses
  %.sroa.15.0295310316 = phi ptr [ %i.cc, %.thread ], [ %.sroa.15.0295311, %bb.cm ]
  %i.oc = ptrtoint ptr %.sroa.15.0295310316 to i64
  %i.od = ptrtoint ptr %.sroa.0186.0299317 to i64
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.dw, %i.da
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dw
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.ar
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.dr, %bb.ao ], [ %i.du, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.dx = sext i32 %.0.i to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.090248 ; 3 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !226
  store double %i.ea, ptr %i.dz, align 8, !tbaa !226
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.dg
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.de
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !226
  store double %i.ed, ptr %i.eb, align 8, !tbaa !226
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.dy, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !226
  store double %i.eg, ptr %i.ee, align 8, !tbaa !226
  %i.eh = add nuw nsw i64 %.090248, 1             ; 2 uses
  %exitcond271.not = icmp eq i64 %i.eh, %i.ca
  br i1 %exitcond271.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !757

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi = phi i64 [ %.pre286, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi = phi i64 [ %.pre285, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ei = phi i64 [ %.pre280, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.de, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %i.ej = phi i64 [ %.pre, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.dg, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ek = load ptr, ptr %20, align 8, !tbaa !228, !noalias !768 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ca ; 3 uses
  %i.em = load ptr, ptr %5, align 8, !tbaa !228   ; 3 uses
  %i.en = load i64, ptr %i.n, align 8, !tbaa !229 ; 2 uses
  %i.eo = load double, ptr %i.em, align 8, !tbaa !226
  store double %i.eo, ptr %i.el, align 8, !tbaa !226
  %i.ep = getelementptr [8 x i8], ptr %i.el, i64 %i.ej
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.en
  %i.er = load double, ptr %i.eq, align 8, !tbaa !226
  store double %i.er, ptr %i.ep, align 8, !tbaa !226
  %i.es = getelementptr i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i148 = shl i64 %i.en, 4
  %i.et = getelementptr i8, ptr %i.em, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i148
  %i.eu = load double, ptr %i.et, align 8, !tbaa !226
  store double %i.eu, ptr %i.es, align 8, !tbaa !226
  %i.ev = load ptr, ptr %0, align 8, !tbaa !228, !noalias !769 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %2 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.cb ; 3 uses
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !226
  store double %i.ey, ptr %i.ex, align 8, !tbaa !226
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ej
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ei
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !226
  store double %i.fb, ptr %i.ez, align 8, !tbaa !226
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fd = getelementptr inbounds i8, ptr %i.ew, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !226
  store double %i.fe, ptr %i.fc, align 8, !tbaa !226
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %3 ; 3 uses
  %i.fg = add nuw nsw i64 %i.ca, 2                ; 7 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fg ; 3 uses
  %i.fi = load double, ptr %i.ff, align 8, !tbaa !226
  store double %i.fi, ptr %i.fh, align 8, !tbaa !226
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.ej
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.ei
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !226
  store double %i.fl, ptr %i.fj, align 8, !tbaa !226
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fn = getelementptr inbounds i8, ptr %i.ff, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !226
  store double %i.fo, ptr %i.fm, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef %i.cb, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.as

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %.pre288 = trunc i64 %i.fg to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph251

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre282 = load i64, ptr %.phi.trans.insert281, align 8, !tbaa !196 ; 2 uses
  %.pre287 = trunc i64 %i.cb to i32
  %.pre290 = shl i64 %.pre282, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph251:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.fp = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %i.fq = load ptr, ptr %21, align 8              ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fs = load i64, ptr %i.fr, align 8            ; 6 uses
  %i.ft = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx245 = shl i64 %i.fs, 3                     ; 5 uses
  %i.fu = icmp eq i64 %i.bz, 4
  br i1 %i.fu, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body153

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph251.new
  %.089250 = phi i64 [ 0, %.lr.ph251.new ], [ %i.gp, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph251.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %.089250
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !93
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !98
  %i.ga = icmp slt i32 %i.fz, 0                   ; 2 uses
  %i.gb = getelementptr [4 x i8], ptr %i.fq, i64 %.089250 ; 3 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.fs
  %i.gd = getelementptr i8, ptr %i.gb, i64 %.idx245
  %i.ge = trunc i64 %.089250 to i32
  %..pre288 = select i1 %i.ga, i32 %i.ft, i32 %.pre288
  %.pre288. = select i1 %i.ga, i32 %.pre288, i32 %i.ft
  store i32 %..pre288, ptr %i.gb, align 4, !tbaa !98
  store i32 %.pre288., ptr %i.gc, align 4, !tbaa !98
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !98
  %i.gf = or disjoint i64 %.089250, 1             ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !93
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !98
  %i.gk = icmp slt i32 %i.gj, 0                   ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.fq, i64 %i.gf ; 3 uses
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.fs
  %i.gn = getelementptr i8, ptr %i.gl, i64 %.idx245
  %i.go = trunc i64 %i.gf to i32
  %..pre288.1 = select i1 %i.gk, i32 %i.ft, i32 %.pre288
  %.pre288..1 = select i1 %i.gk, i32 %.pre288, i32 %i.ft
  store i32 %..pre288.1, ptr %i.gl, align 4, !tbaa !98
  store i32 %.pre288..1, ptr %i.gm, align 4, !tbaa !98
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !98
  %i.gp = add nuw nsw i64 %.089250, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !762

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.gq = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph251
  %.089250.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %i.gp, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod344 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %.089250.epil.init
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !93
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !98
  %i.gv = icmp slt i32 %i.gu, 0                   ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.fq, i64 %.089250.epil.init ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.fs
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.idx245
  %i.gz = trunc i64 %.089250.epil.init to i32
  %..pre288.epil = select i1 %i.gv, i32 %i.ft, i32 %.pre288
  %.pre288..epil = select i1 %i.gv, i32 %.pre288, i32 %i.ft
  store i32 %..pre288.epil, ptr %i.gw, align 4, !tbaa !98
  store i32 %.pre288..epil, ptr %i.gx, align 4, !tbaa !98
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !98
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx244.pre-phi = phi i64 [ %.pre290, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx245, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx245, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre287, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.ft, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.ft, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.ha = phi i64 [ %.pre282, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fs, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fs, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.hb = load ptr, ptr %21, align 8, !tbaa !195
  %i.hc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hd = getelementptr i8, ptr %i.hb, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.hd, align 4, !tbaa !98
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.ha
  store i32 %.pre288, ptr %i.he, align 4, !tbaa !98
  %i.hf = getelementptr i8, ptr %i.hd, i64 %.idx244.pre-phi
  %i.hg = trunc i64 %i.ca to i32
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hh = shl nuw nsw i64 %i.cb, 2
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #37
          to label %.noexc159 unwind label %bb.at ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.hi, ptr %22, align 8, !tbaa !92
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.cb
  %i.hk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !125
  store i32 0, ptr %i.hi, align 4, !tbaa !98
  %i.hl = getelementptr i8, ptr %i.hi, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph254, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.hl, i8 0, i64 %i.bz, i1 false), !tbaa !98
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.bz
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.hm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hl, %.noexc159 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.hn, align 8, !tbaa !91
  %i.ho = load ptr, ptr %21, align 8, !tbaa !195  ; 3 uses
  %i.hp = load i64, ptr %i.hc, align 8            ; 3 uses
  %i.hq = icmp eq ptr %i.bv, %i.bw
  br i1 %i.hq, label %.epil.preheader, label %.lr.ph254.new

.lr.ph254.new:                                    ; preds = %.lr.ph254
  %unroll_iter348 = and i64 %i.cb, 2305843009213693950
  br label %bb.au

bb.at:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.au:                                            ; preds = %bb.bc, %.lr.ph254.new
  %.088252 = phi i64 [ 0, %.lr.ph254.new ], [ %i.it, %bb.bc ] ; 6 uses
  %niter349 = phi i64 [ 0, %.lr.ph254.new ], [ %niter349.next.1, %bb.bc ]
  %i.hs = getelementptr [4 x i8], ptr %i.ho, i64 %.088252 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !98
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp eq i64 %i.cb, %i.hu
  br i1 %i.hv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hw = getelementptr [4 x i8], ptr %i.hs, i64 %i.hp
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !98
  %i.hy = sext i32 %i.hx to i64
  %i.hz = icmp eq i64 %i.fg, %i.hy
  br i1 %i.hz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ia = trunc i64 %.088252 to i32
  %i.ib = xor i32 %i.ia, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.ic = trunc i64 %.088252 to i32
  %i.id = or disjoint i32 %i.ic, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sink339 = phi i32 [ %i.ib, %bb.aw ], [ %i.id, %bb.ax ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.088252
  store i32 %.sink339, ptr %i.ie, align 4, !tbaa !98
  %i.if = or disjoint i64 %.088252, 1             ; 4 uses
  %i.ig = getelementptr [4 x i8], ptr %i.ho, i64 %i.if ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !98
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp eq i64 %i.cb, %i.ii
  br i1 %i.ij, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ik = getelementptr [4 x i8], ptr %i.ig, i64 %i.hp
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !98
  %i.im = sext i32 %i.il to i64
  %i.in = icmp eq i64 %i.fg, %i.im
  br i1 %i.in, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.io = trunc i64 %i.if to i32
  %i.ip = add i32 %i.io, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.iq = trunc i64 %i.if to i32
  %i.ir = xor i32 %i.iq, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink339.1 = phi i32 [ %i.ir, %bb.bb ], [ %i.ip, %bb.ba ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.if
  store i32 %.sink339.1, ptr %i.is, align 4, !tbaa !98
  %i.it = add nuw nsw i64 %.088252, 2             ; 2 uses
  %niter349.next.1 = add i64 %niter349, 2         ; 2 uses
  %niter349.ncmp.1 = icmp eq i64 %niter349.next.1, %unroll_iter348
  br i1 %niter349.ncmp.1, label %._crit_edge255.unr-lcssa, label %bb.au, !llvm.loop !763

._crit_edge255.unr-lcssa:                         ; preds = %bb.bc
  %i.iu = and i64 %i.bz, 4
  %lcmp.mod346.not.not = icmp eq i64 %i.iu, 0
  br i1 %lcmp.mod346.not.not, label %.epil.preheader, label %._crit_edge255

.epil.preheader:                                  ; preds = %._crit_edge255.unr-lcssa, %.lr.ph254
  %.088252.epil.init = phi i64 [ 0, %.lr.ph254 ], [ %i.it, %._crit_edge255.unr-lcssa ] ; 4 uses
  %lcmp.mod347 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod347)
  %i.iv = getelementptr [4 x i8], ptr %i.ho, i64 %.088252.epil.init ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !98
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp eq i64 %i.cb, %i.ix
  br i1 %i.iy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epil.preheader
  %i.iz = getelementptr [4 x i8], ptr %i.iv, i64 %i.hp
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !98
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp eq i64 %i.fg, %i.jb
  br i1 %i.jc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader
  %i.jd = trunc i64 %.088252.epil.init to i32
  %i.je = add i32 %i.jd, 1
  br label %._crit_edge255.epilog-lcssa

bb.bf:                                            ; preds = %bb.bd
  %i.jf = trunc i64 %.088252.epil.init to i32
  %i.jg = xor i32 %i.jf, -1
  br label %._crit_edge255.epilog-lcssa

._crit_edge255.epilog-lcssa:                      ; preds = %bb.bf, %bb.be
  %.sink339.epil = phi i32 [ %i.jg, %bb.bf ], [ %i.je, %bb.be ]
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.088252.epil.init
  store i32 %.sink339.epil, ptr %i.jh, align 4, !tbaa !98
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %._crit_edge255.unr-lcssa, %._crit_edge255.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.cb, i64 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %._crit_edge255
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !127
  %.not.i.i160 = icmp eq i64 %i.ca, %i.jj
  br i1 %.not.i.i160, label %.lr.ph258, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jk = load ptr, ptr %6, align 8, !tbaa !128
  call void @free(ptr noundef %i.jk) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bh
  %i.jl = call noalias ptr @malloc(i64 noundef %i.bz) #38 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.bi, label %.sink.split.i.i

bb.bi:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jn = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jn, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.jn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc162 unwind label %bb.bj

.noexc162:                                        ; preds = %bb.bi
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bh
  %.sink.i.i = phi ptr [ %i.jl, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bh ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !128
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.bg, %.sink.split.i.i
  store i64 %i.ca, ptr %i.ji, align 8, !tbaa !127
  %i.jo = load ptr, ptr %23, align 8, !tbaa !128  ; 5 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %._crit_edge255
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %23, align 8, !tbaa !128
  call void @free(ptr noundef %i.jq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.jr = load ptr, ptr %22, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.bp

bb.bk:                                            ; preds = %.lr.ph258, %bb.bl
  %.086256 = phi i64 [ 0, %.lr.ph258 ], [ %i.jw, %bb.bl ] ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.086256
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !98
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp eq i64 %i.ca, %i.ju
  br i1 %i.jv, label %._crit_edge259, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jw = add nuw i64 %.086256, 1
  %exitcond277.not = icmp eq i64 %.086256, %i.ca
  br i1 %exitcond277.not, label %._crit_edge259, label %bb.bk, !llvm.loop !764

._crit_edge259:                                   ; preds = %bb.bl, %bb.bk
  %.087.ph = phi i64 [ %i.fg, %bb.bl ], [ %.086256, %bb.bk ]
  br i1 %.not.i.i.i.i, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %._crit_edge259
  %i.jx = add i64 %.087.ph, 1                     ; 3 uses
  %i.jy = load ptr, ptr %6, align 8, !tbaa !128   ; 3 uses
  %i.jz = icmp eq i64 %i.bz, 4
  br i1 %i.jz, label %.epil.preheader350, label %.lr.ph264.new

.lr.ph264.new:                                    ; preds = %.lr.ph264
  %unroll_iter354 = and i64 %i.ca, 1152921504606846974
  br label %bb.bo

._crit_edge265.loopexit.unr-lcssa:                ; preds = %bb.bo
  %i.ka = and i64 %i.bz, 4
  %lcmp.mod352.not = icmp eq i64 %i.ka, 0
  br i1 %lcmp.mod352.not, label %._crit_edge265, label %.epil.preheader350

.epil.preheader350:                               ; preds = %._crit_edge265.loopexit.unr-lcssa, %.lr.ph264
  %.0262.epil.init = phi i64 [ 0, %.lr.ph264 ], [ %i.ln, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod353 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod353)
  %i.kb = add i64 %i.jx, %.0262.epil.init
  %i.kc = urem i64 %i.kb, %i.cb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !98
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !93
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.0262.epil.init
  %i.kj = trunc i64 %i.kh to i32
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !98
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.epil.preheader350, %._crit_edge265.loopexit.unr-lcssa, %._crit_edge259
  call void @free(ptr noundef nonnull %i.jo) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kk = load ptr, ptr %22, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge265
  %i.kl = load ptr, ptr %i.hk, align 8, !tbaa !125
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge265, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.kp = load ptr, ptr %21, align 8, !tbaa !195
  call void @free(ptr noundef %i.kp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kq = load ptr, ptr %20, align 8, !tbaa !228
  call void @free(ptr noundef %i.kq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0210.0318329, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kr = ptrtoint ptr %.sroa.15.0315331 to i64
  %i.ks = ptrtoint ptr %.sroa.0210.0318329 to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0318329, i64 noundef %i.kt) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bo:                                            ; preds = %bb.bo, %.lr.ph264.new
  %.0262 = phi i64 [ 0, %.lr.ph264.new ], [ %i.ln, %bb.bo ] ; 4 uses
  %niter355 = phi i64 [ 0, %.lr.ph264.new ], [ %niter355.next.1, %bb.bo ]
  %i.ku = add i64 %i.jx, %.0262
  %i.kv = urem i64 %i.ku, %i.cb
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !98
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !93
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.0262
  %i.lc = trunc i64 %i.la to i32
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !98
  %i.ld = or disjoint i64 %.0262, 1               ; 2 uses
  %i.le = add i64 %i.jx, %i.ld
  %i.lf = urem i64 %i.le, %i.cb
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !98
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !93
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.ld
  %i.lm = trunc i64 %i.lk to i32
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !98
  %i.ln = add nuw nsw i64 %.0262, 2               ; 2 uses
  %niter355.next.1 = add i64 %niter355, 2         ; 2 uses
  %niter355.ncmp.1 = icmp eq i64 %niter355.next.1, %unroll_iter354
  br i1 %niter355.ncmp.1, label %._crit_edge265.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !765

bb.bp:                                            ; preds = %bb.bj
  %i.lo = load ptr, ptr %i.hk, align 8, !tbaa !125
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.jr to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.lr) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.bp, %bb.bj, %bb.at
  %.pn119.pn = phi { ptr, i32 } [ %i.hr, %bb.at ], [ %i.jp, %bb.bj ], [ %i.jp, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.body153

.body153:                                         ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.fv, %bb.as ]
  %i.ls = load ptr, ptr %21, align 8, !tbaa !195
  call void @free(ptr noundef %i.ls) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bq

bb.bq:                                            ; preds = %.body153, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body153 ], [ %i.dh, %bb.an ] ; 2 uses
  %i.lt = load ptr, ptr %20, align 8, !tbaa !228
  call void @free(ptr noundef %i.lt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0210.0318329, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.br

bb.br:                                            ; preds = %.thread, %bb.bq
  %.pn125.pn.pn.pn338 = phi { ptr, i32 } [ %i.di, %.thread ], [ %.pn125.pn.pn, %bb.bq ]
  %.sroa.0210.0319337 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0210.0318329, %bb.bq ] ; 2 uses
  %.sroa.15.0315330336 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0315331, %bb.bq ]
  %i.lu = ptrtoint ptr %.sroa.15.0315330336 to i64
  %i.lv = ptrtoint ptr %.sroa.0210.0319337 to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0319337, i64 noundef %i.lw) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

_ZNSt6vectorImSaImEED2Ev.exit168:                 ; preds = %bb.bq, %bb.br, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn338, %bb.br ], [ %.pn125.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bs:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 3 uses
  %8 = alloca %"class.CGAL::Plane_3", align 8     ; 4 uses
  %9 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %11 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %12 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %13 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %14 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %15 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %16 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %17 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %18 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %19 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %20 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %21 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %22 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %23 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %24 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %25 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %26 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %27 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %28 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %29 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %30 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %31 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %32 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %33 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %34 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %35 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %36 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %38 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %39 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %40 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %41 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %42 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %43 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %44 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %45 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %46 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %47 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %48 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %49 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %50 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %56 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IdLi1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EEmmRKSt6vectorIiSaIiEERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %.idx.i = shl i64 %i.dp, 3
  %i.ds = getelementptr i8, ptr %i.dn, i64 %.idx.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !98 ; 3 uses
  %.not13.i = icmp eq i32 %i.dt, %i.cw
  br i1 %.not13.i, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.dt, %i.cx
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dt
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.ar
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.do, %bb.ao ], [ %i.dr, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.du = sext i32 %.0.i to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.090246 ; 3 uses
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !226
  store double %i.dx, ptr %i.dw, align 8, !tbaa !226
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dd
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.db
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !226
  store double %i.ea, ptr %i.dy, align 8, !tbaa !226
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.dv, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !226
  store double %i.ed, ptr %i.eb, align 8, !tbaa !226
  %i.ee = add nuw nsw i64 %.090246, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.ee, %i.bx
  br i1 %exitcond269.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !810

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi = phi i64 [ %.pre284, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi = phi i64 [ %.pre283, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ef = phi i64 [ %.pre278, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.db, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %i.eg = phi i64 [ %.pre, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.dd, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.eh = load ptr, ptr %20, align 8, !tbaa !228, !noalias !821 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.bx ; 3 uses
  %i.ej = load double, ptr %5, align 8, !tbaa !226
  store double %i.ej, ptr %i.ei, align 8, !tbaa !226
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.eg
  %i.el = load double, ptr %i.m, align 8, !tbaa !226
  store double %i.el, ptr %i.ek, align 8, !tbaa !226
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.en = load double, ptr %i.n, align 8, !tbaa !226
  store double %i.en, ptr %i.em, align 8, !tbaa !226
  %i.eo = load ptr, ptr %0, align 8, !tbaa !228, !noalias !822 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %2 ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.by ; 3 uses
  %i.er = load double, ptr %i.ep, align 8, !tbaa !226
  store double %i.er, ptr %i.eq, align 8, !tbaa !226
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.eg
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ef
  %i.eu = load double, ptr %i.et, align 8, !tbaa !226
  store double %i.eu, ptr %i.es, align 8, !tbaa !226
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !226
  store double %i.ex, ptr %i.ev, align 8, !tbaa !226
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %3 ; 3 uses
  %i.ez = add nuw nsw i64 %i.bx, 2                ; 7 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ez ; 3 uses
  %i.fb = load double, ptr %i.ey, align 8, !tbaa !226
  store double %i.fb, ptr %i.fa, align 8, !tbaa !226
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.eg
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ef
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !226
  store double %i.fe, ptr %i.fc, align 8, !tbaa !226
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fg = getelementptr inbounds i8, ptr %i.ey, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !226
  store double %i.fh, ptr %i.ff, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef %i.by, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.as

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %.pre286 = trunc i64 %i.ez to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph249

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre280 = load i64, ptr %.phi.trans.insert279, align 8, !tbaa !196 ; 2 uses
  %.pre285 = trunc i64 %i.by to i32
  %.pre288 = shl i64 %.pre280, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph249:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.fi = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %i.fj = load ptr, ptr %21, align 8              ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fl = load i64, ptr %i.fk, align 8            ; 6 uses
  %i.fm = trunc i64 %i.by to i32                  ; 8 uses
  %.idx243 = shl i64 %i.fl, 3                     ; 5 uses
  %i.fn = icmp eq i64 %i.bw, 4
  br i1 %i.fn, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph249.new

.lr.ph249.new:                                    ; preds = %.lr.ph249
  %unroll_iter = and i64 %i.bx, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body152

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph249.new
  %.089248 = phi i64 [ 0, %.lr.ph249.new ], [ %i.gi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph249.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %.089248
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !93
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !98
  %i.ft = icmp slt i32 %i.fs, 0                   ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %i.fj, i64 %.089248 ; 3 uses
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %i.fl
  %i.fw = getelementptr i8, ptr %i.fu, i64 %.idx243
  %i.fx = trunc i64 %.089248 to i32
  %..pre286 = select i1 %i.ft, i32 %i.fm, i32 %.pre286
  %.pre286. = select i1 %i.ft, i32 %.pre286, i32 %i.fm
  store i32 %..pre286, ptr %i.fu, align 4, !tbaa !98
  store i32 %.pre286., ptr %i.fv, align 4, !tbaa !98
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !98
  %i.fy = or disjoint i64 %.089248, 1             ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !93
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !98
  %i.gd = icmp slt i32 %i.gc, 0                   ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.fj, i64 %i.fy ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ge, i64 %i.fl
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx243
  %i.gh = trunc i64 %i.fy to i32
  %..pre286.1 = select i1 %i.gd, i32 %i.fm, i32 %.pre286
  %.pre286..1 = select i1 %i.gd, i32 %.pre286, i32 %i.fm
  store i32 %..pre286.1, ptr %i.ge, align 4, !tbaa !98
  store i32 %.pre286..1, ptr %i.gf, align 4, !tbaa !98
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !98
  %i.gi = add nuw nsw i64 %.089248, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !815

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.gj = and i64 %i.bw, 4
  %lcmp.mod.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph249
  %.089248.epil.init = phi i64 [ 0, %.lr.ph249 ], [ %i.gi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod342 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod342)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %.089248.epil.init
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !93
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !98
  %i.go = icmp slt i32 %i.gn, 0                   ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.fj, i64 %.089248.epil.init ; 3 uses
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.fl
  %i.gr = getelementptr i8, ptr %i.gp, i64 %.idx243
  %i.gs = trunc i64 %.089248.epil.init to i32
  %..pre286.epil = select i1 %i.go, i32 %i.fm, i32 %.pre286
  %.pre286..epil = select i1 %i.go, i32 %.pre286, i32 %i.fm
  store i32 %..pre286.epil, ptr %i.gp, align 4, !tbaa !98
  store i32 %.pre286..epil, ptr %i.gq, align 4, !tbaa !98
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !98
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx242.pre-phi = phi i64 [ %.pre288, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx243, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx243, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre285, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fm, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fm, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.gt = phi i64 [ %.pre280, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fl, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fl, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.gu = load ptr, ptr %21, align 8, !tbaa !195
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.gw, align 4, !tbaa !98
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gt
  store i32 %.pre286, ptr %i.gx, align 4, !tbaa !98
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.idx242.pre-phi
  %i.gz = trunc i64 %i.bx to i32
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.ha = shl nuw nsw i64 %i.by, 2
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #37
          to label %.noexc158 unwind label %bb.at ; 7 uses

.noexc158:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.hb, ptr %22, align 8, !tbaa !92
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.by
  %i.hd = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !125
  store i32 0, ptr %i.hb, align 4, !tbaa !98
  %i.he = getelementptr i8, ptr %i.hb, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph252, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc158
  call void @llvm.memset.p0.i64(ptr align 4 %i.he, i8 0, i64 %i.bw, i1 false), !tbaa !98
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.bw
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.noexc158, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i156 = phi ptr [ %i.hf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.he, %.noexc158 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i156, ptr %i.hg, align 8, !tbaa !91
  %i.hh = load ptr, ptr %21, align 8, !tbaa !195  ; 3 uses
  %i.hi = load i64, ptr %i.gv, align 8            ; 3 uses
  %i.hj = icmp eq ptr %i.bs, %i.bt
  br i1 %i.hj, label %.epil.preheader, label %.lr.ph252.new

.lr.ph252.new:                                    ; preds = %.lr.ph252
  %unroll_iter346 = and i64 %i.by, 2305843009213693950
  br label %bb.au

bb.at:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

bb.au:                                            ; preds = %bb.bc, %.lr.ph252.new
  %.088250 = phi i64 [ 0, %.lr.ph252.new ], [ %i.im, %bb.bc ] ; 6 uses
  %niter347 = phi i64 [ 0, %.lr.ph252.new ], [ %niter347.next.1, %bb.bc ]
  %i.hl = getelementptr [4 x i8], ptr %i.hh, i64 %.088250 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !98
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp eq i64 %i.by, %i.hn
  br i1 %i.ho, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr [4 x i8], ptr %i.hl, i64 %i.hi
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !98
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp eq i64 %i.ez, %i.hr
  br i1 %i.hs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ht = trunc i64 %.088250 to i32
  %i.hu = xor i32 %i.ht, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hv = trunc i64 %.088250 to i32
  %i.hw = or disjoint i32 %i.hv, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sink337 = phi i32 [ %i.hu, %bb.aw ], [ %i.hw, %bb.ax ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.088250
  store i32 %.sink337, ptr %i.hx, align 4, !tbaa !98
  %i.hy = or disjoint i64 %.088250, 1             ; 4 uses
  %i.hz = getelementptr [4 x i8], ptr %i.hh, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !98
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp eq i64 %i.by, %i.ib
  br i1 %i.ic, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.id = getelementptr [4 x i8], ptr %i.hz, i64 %i.hi
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !98
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp eq i64 %i.ez, %i.if
  br i1 %i.ig, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ih = trunc i64 %i.hy to i32
  %i.ii = add i32 %i.ih, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ij = trunc i64 %i.hy to i32
  %i.ik = xor i32 %i.ij, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink337.1 = phi i32 [ %i.ik, %bb.bb ], [ %i.ii, %bb.ba ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hy
  store i32 %.sink337.1, ptr %i.il, align 4, !tbaa !98
  %i.im = add nuw nsw i64 %.088250, 2             ; 2 uses
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %._crit_edge253.unr-lcssa, label %bb.au, !llvm.loop !816

._crit_edge253.unr-lcssa:                         ; preds = %bb.bc
  %i.in = and i64 %i.bw, 4
  %lcmp.mod344.not.not = icmp eq i64 %i.in, 0
  br i1 %lcmp.mod344.not.not, label %.epil.preheader, label %._crit_edge253

.epil.preheader:                                  ; preds = %._crit_edge253.unr-lcssa, %.lr.ph252
  %.088250.epil.init = phi i64 [ 0, %.lr.ph252 ], [ %i.im, %._crit_edge253.unr-lcssa ] ; 4 uses
  %lcmp.mod345 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod345)
  %i.io = getelementptr [4 x i8], ptr %i.hh, i64 %.088250.epil.init ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !98
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp eq i64 %i.by, %i.iq
  br i1 %i.ir, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epil.preheader
  %i.is = getelementptr [4 x i8], ptr %i.io, i64 %i.hi
  %i.it = load i32, ptr %i.is, align 4, !tbaa !98
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp eq i64 %i.ez, %i.iu
  br i1 %i.iv, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader
  %i.iw = trunc i64 %.088250.epil.init to i32
  %i.ix = add i32 %i.iw, 1
  br label %._crit_edge253.epilog-lcssa

bb.bf:                                            ; preds = %bb.bd
  %i.iy = trunc i64 %.088250.epil.init to i32
  %i.iz = xor i32 %i.iy, -1
  br label %._crit_edge253.epilog-lcssa

._crit_edge253.epilog-lcssa:                      ; preds = %bb.bf, %bb.be
  %.sink337.epil = phi i32 [ %i.iz, %bb.bf ], [ %i.ix, %bb.be ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.088250.epil.init
  store i32 %.sink337.epil, ptr %i.ja, align 4, !tbaa !98
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.unr-lcssa, %._crit_edge253.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.by, i64 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %._crit_edge253
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !127
  %.not.i.i159 = icmp eq i64 %i.bx, %i.jc
  br i1 %.not.i.i159, label %.lr.ph256, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = load ptr, ptr %6, align 8, !tbaa !128
  call void @free(ptr noundef %i.jd) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bh
  %i.je = call noalias ptr @malloc(i64 noundef %i.bw) #38 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bi, label %.sink.split.i.i

bb.bi:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jg, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.jg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc161 unwind label %bb.bj

.noexc161:                                        ; preds = %bb.bi
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bh
  %.sink.i.i = phi ptr [ %i.je, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bh ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !128
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.bg, %.sink.split.i.i
  store i64 %i.bx, ptr %i.jb, align 8, !tbaa !127
  %i.jh = load ptr, ptr %23, align 8, !tbaa !128  ; 5 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %._crit_edge253
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = load ptr, ptr %23, align 8, !tbaa !128
  call void @free(ptr noundef %i.jj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.jk = load ptr, ptr %22, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit165, label %bb.bp

bb.bk:                                            ; preds = %.lr.ph256, %bb.bl
  %.086254 = phi i64 [ 0, %.lr.ph256 ], [ %i.jp, %bb.bl ] ; 4 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.086254
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp eq i64 %i.bx, %i.jn
  br i1 %i.jo, label %._crit_edge257, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jp = add nuw i64 %.086254, 1
  %exitcond275.not = icmp eq i64 %.086254, %i.bx
  br i1 %exitcond275.not, label %._crit_edge257, label %bb.bk, !llvm.loop !817

._crit_edge257:                                   ; preds = %bb.bl, %bb.bk
  %.087.ph = phi i64 [ %i.ez, %bb.bl ], [ %.086254, %bb.bk ]
  br i1 %.not.i.i.i.i, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %._crit_edge257
  %i.jq = add i64 %.087.ph, 1                     ; 3 uses
  %i.jr = load ptr, ptr %6, align 8, !tbaa !128   ; 3 uses
  %i.js = icmp eq i64 %i.bw, 4
  br i1 %i.js, label %.epil.preheader348, label %.lr.ph262.new

.lr.ph262.new:                                    ; preds = %.lr.ph262
  %unroll_iter352 = and i64 %i.bx, 1152921504606846974
  br label %bb.bo

._crit_edge263.loopexit.unr-lcssa:                ; preds = %bb.bo
  %i.jt = and i64 %i.bw, 4
  %lcmp.mod350.not = icmp eq i64 %i.jt, 0
  br i1 %lcmp.mod350.not, label %._crit_edge263, label %.epil.preheader348

.epil.preheader348:                               ; preds = %._crit_edge263.loopexit.unr-lcssa, %.lr.ph262
  %.0260.epil.init = phi i64 [ 0, %.lr.ph262 ], [ %i.lg, %._crit_edge263.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod351 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.ju = add i64 %i.jq, %.0260.epil.init
  %i.jv = urem i64 %i.ju, %i.by
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !98
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !93
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.0260.epil.init
  %i.kc = trunc i64 %i.ka to i32
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !98
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %.epil.preheader348, %._crit_edge263.loopexit.unr-lcssa, %._crit_edge257
  call void @free(ptr noundef nonnull %i.jh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kd = load ptr, ptr %22, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge263
  %i.ke = load ptr, ptr %i.hd, align 8, !tbaa !125
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kd to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.kh) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge263, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ki = load ptr, ptr %21, align 8, !tbaa !195
  call void @free(ptr noundef %i.ki) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kj = load ptr, ptr %20, align 8, !tbaa !228
  call void @free(ptr noundef %i.kj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i163 = icmp eq ptr %.sroa.0209.0316327, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kk = ptrtoint ptr %.sroa.15.0313329 to i64
  %i.kl = ptrtoint ptr %.sroa.0209.0316327 to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0316327, i64 noundef %i.km) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bo:                                            ; preds = %bb.bo, %.lr.ph262.new
  %.0260 = phi i64 [ 0, %.lr.ph262.new ], [ %i.lg, %bb.bo ] ; 4 uses
  %niter353 = phi i64 [ 0, %.lr.ph262.new ], [ %niter353.next.1, %bb.bo ]
  %i.kn = add i64 %i.jq, %.0260
  %i.ko = urem i64 %i.kn, %i.by
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !98
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !93
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.0260
  %i.kv = trunc i64 %i.kt to i32
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !98
  %i.kw = or disjoint i64 %.0260, 1               ; 2 uses
  %i.kx = add i64 %i.jq, %i.kw
  %i.ky = urem i64 %i.kx, %i.by
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !98
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !93
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kw
  %i.lf = trunc i64 %i.ld to i32
  store i32 %i.lf, ptr %i.le, align 4, !tbaa !98
  %i.lg = add nuw nsw i64 %.0260, 2               ; 2 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %._crit_edge263.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !818

bb.bp:                                            ; preds = %bb.bj
  %i.lh = load ptr, ptr %i.hd, align 8, !tbaa !125
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.jk to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.lk) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

_ZNSt6vectorIiSaIiEED2Ev.exit165:                 ; preds = %bb.bp, %bb.bj, %bb.at
  %.pn119.pn = phi { ptr, i32 } [ %i.hk, %bb.at ], [ %i.ji, %bb.bj ], [ %i.ji, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.body152

.body152:                                         ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit165
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit165 ], [ %i.fo, %bb.as ]
  %i.ll = load ptr, ptr %21, align 8, !tbaa !195
  call void @free(ptr noundef %i.ll) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bq

bb.bq:                                            ; preds = %.body152, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body152 ], [ %i.de, %bb.an ] ; 2 uses
  %i.lm = load ptr, ptr %20, align 8, !tbaa !228
  call void @free(ptr noundef %i.lm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i166 = icmp eq ptr %.sroa.0209.0316327, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit167, label %bb.br

bb.br:                                            ; preds = %.thread, %bb.bq
  %.pn125.pn.pn.pn336 = phi { ptr, i32 } [ %i.df, %.thread ], [ %.pn125.pn.pn, %bb.bq ]
  %.sroa.0209.0317335 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0209.0316327, %bb.bq ] ; 2 uses
  %.sroa.15.0313328334 = phi ptr [ %i.cc, %.thread ], [ %.sroa.15.0313329, %bb.bq ]
  %i.ln = ptrtoint ptr %.sroa.15.0313328334 to i64
  %i.lo = ptrtoint ptr %.sroa.0209.0317335 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0317335, i64 noundef %i.lp) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit167

_ZNSt6vectorImSaImEED2Ev.exit167:                 ; preds = %bb.bq, %bb.br, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn336, %bb.br ], [ %.pn125.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bs:                                            ; preds = %bb.f
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.32() #10 section ".text.startup" comdat($_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, !prof !230

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #22
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef double @ldexp(double noundef f0x0010000000000000, i32 noundef 54) #22
  store double %i.f, ptr @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val, align 8, !tbaa !226
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #22
  br label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit

_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %3 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !231 ; 3 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit

end_hunk_3
