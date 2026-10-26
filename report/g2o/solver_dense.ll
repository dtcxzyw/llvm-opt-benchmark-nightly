Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a
  %i.kk = getelementptr [8 x i8], ptr %i.hs, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !370
  %i.km = getelementptr [8 x i8], ptr %i.ht, i64 %.01724.i.i.i.i.i.i.i.i
  %i.kn = load double, ptr %i.km, align 8, !tbaa !370
  %i.ko = fmul double %i.kl, %i.kn
  %i.kp = fadd double %.02223.i.i.i.i.i.i.i.i, %i.ko
  %i.kq = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.kr = mul nsw i64 %i.kq, %i.hn
  %i.ks = getelementptr [8 x i8], ptr %i.hs, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !370
  %i.ku = getelementptr [8 x i8], ptr %i.ht, i64 %i.kq
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !370
  %i.kw = fmul double %i.kt, %i.kv
  %i.kx = fadd double %i.kp, %i.kw
  %i.ky = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kz = mul nsw i64 %i.ky, %i.hn
  %i.la = getelementptr [8 x i8], ptr %i.hs, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !370
  %i.lc = getelementptr [8 x i8], ptr %i.ht, i64 %i.ky
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !370
  %i.le = fmul double %i.lb, %i.ld
  %i.lf = fadd double %i.kx, %i.le
  %i.lg = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.lh = mul nsw i64 %i.lg, %i.hn
  %i.li = getelementptr [8 x i8], ptr %i.hs, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !370
  %i.lk = getelementptr [8 x i8], ptr %i.ht, i64 %i.lg
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !370
  %i.lm = fmul double %i.lj, %i.ll
  %i.ln = fadd double %i.lf, %i.lm                ; 3 uses
  %i.lo = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter683.next.3 = add i64 %niter683, 4         ; 2 uses
  %niter683.ncmp.3 = icmp eq i64 %niter683.next.3, %unroll_iter682
  br i1 %niter683.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1812

_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.lo, %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.kh, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ln, %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod681 = icmp ne i64 %xtraiter678, 0
  call void @llvm.assume(i1 %lcmp.mod681)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.lw, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.epil = phi double [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.lp = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, %i.hn
  %i.lq = getelementptr [8 x i8], ptr %i.hs, i64 %i.lp
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !370
  %i.ls = getelementptr [8 x i8], ptr %i.ht, i64 %.01724.i.i.i.i.i.i.i.i.epil
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !370
  %i.lu = fmul double %i.lr, %i.lt
  %i.lv = fadd double %.02223.i.i.i.i.i.i.i.i.epil, %i.lu ; 2 uses
  %i.lw = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter678
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1813

_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %.0.i.i.i.i.i.i = phi double [ %i.kh, %.unr-lcssa ], [ %i.ln, %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit.loopexit.unr-lcssa ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  %i.lx = getelementptr [8 x i8], ptr %i.hs, i64 %i.hq ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !370
  %i.lz = fsub double %i.ly, %.0.i.i.i.i.i.i
  store double %i.lz, ptr %i.lx, align 8, !tbaa !370
  br i1 %i.ad, label %bb.m, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread

bb.m:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit
  %i.ma = icmp eq i64 %i.ho, 1
  br i1 %i.ma, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mb = load double, ptr %i.hp, align 8, !tbaa !370
  %i.mc = load double, ptr %i.ht, align 8, !tbaa !370
  %i.md = fmul double %i.mb, %i.mc                ; 3 uses
  br i1 %.not415, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.n
  %xtraiter684 = and i64 %i.rc, 3                 ; 3 uses
  %i.me = icmp ult i64 %i.rb, 3
  br i1 %i.me, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter689 = and i64 %i.rc, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.nk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.md, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.nj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %niter690 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter690.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.mf = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, %i.hn
  %i.mg = getelementptr [8 x i8], ptr %i.hp, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !370
  %i.mi = getelementptr [8 x i8], ptr %i.ht, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !370
  %i.mk = fmul double %i.mh, %i.mj
  %i.ml = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.mk
  %i.mm = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mn = mul nsw i64 %i.mm, %i.hn
  %i.mo = getelementptr [8 x i8], ptr %i.hp, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !370
  %i.mq = getelementptr [8 x i8], ptr %i.ht, i64 %i.mm
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !370
  %i.ms = fmul double %i.mp, %i.mr
  %i.mt = fadd double %i.ml, %i.ms
  %i.mu = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mv = mul nsw i64 %i.mu, %i.hn
  %i.mw = getelementptr [8 x i8], ptr %i.hp, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !370
  %i.my = getelementptr [8 x i8], ptr %i.ht, i64 %i.mu
  %i.mz = load double, ptr %i.my, align 8, !tbaa !370
  %i.na = fmul double %i.mx, %i.mz
  %i.nb = fadd double %i.mt, %i.na
  %i.nc = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nd = mul nsw i64 %i.nc, %i.hn
  %i.ne = getelementptr [8 x i8], ptr %i.hp, i64 %i.nd
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !370
  %i.ng = getelementptr [8 x i8], ptr %i.ht, i64 %i.nc
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !370
  %i.ni = fmul double %i.nf, %i.nh
  %i.nj = fadd double %i.nb, %i.ni                ; 3 uses
  %i.nk = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter690.next.3 = add i64 %niter690, 4         ; 2 uses
  %niter690.ncmp.3 = icmp eq i64 %niter690.next.3, %unroll_iter689
  br i1 %niter690.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1814

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod686.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod686.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nk, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.md, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nj, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod688 = icmp ne i64 %xtraiter684, 0
  call void @llvm.assume(i1 %lcmp.mod688)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ns, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.nr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter685 = phi i64 [ %epil.iter685.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.nl = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, %i.hn
  %i.nm = getelementptr [8 x i8], ptr %i.hp, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !370
  %i.no = getelementptr [8 x i8], ptr %i.ht, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.np = load double, ptr %i.no, align 8, !tbaa !370
  %i.nq = fmul double %i.nn, %i.np
  %i.nr = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.nq ; 2 uses
  %i.ns = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter685.next = add i64 %epil.iter685, 1   ; 2 uses
  %epil.iter685.cmp.not = icmp eq i64 %epil.iter685.next, %xtraiter684
  br i1 %epil.iter685.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1815

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi double [ %i.md, %bb.n ], [ %i.nj, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.nr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.nt = load double, ptr %i.hr, align 8, !tbaa !370
  %i.nu = fsub double %i.nt, %.0.i.i.i.i.i.i.i.i.i
  store double %i.nu, ptr %i.hr, align 8, !tbaa !370
  br label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.hp, ptr %4, align 8, !tbaa !471
  store i64 %i.hn, ptr %i.e, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.ht, ptr %5, align 8, !tbaa !474
  store i64 1, ptr %i.f, align 8, !tbaa !475
  call void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.ho, i64 noundef %.0116.ph, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.hr, i64 noundef 1, double noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread: ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSE_17scalar_product_opIdSI_EEE10ReturnTypeERKNS0_ISG_EE.exit.i.i.i.i.i.i, %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit
  %i.nv = load ptr, ptr %0, align 8, !tbaa !358
  %i.nw = load i64, ptr %i.a, align 8, !tbaa !368
  %i.nx = mul nsw i64 %i.nw, %.0116.ph
  %i.ny = getelementptr [8 x i8], ptr %i.nv, i64 %.0116.ph
  %i.nz = getelementptr [8 x i8], ptr %i.ny, i64 %i.nx
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !370 ; 2 uses
  %i.ob = fcmp one double %i.oa, 0.000000e+00
  br label %bb.s

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit: ; preds = %.loopexit
  %i.oc = load ptr, ptr %0, align 8, !tbaa !358   ; 2 uses
  %i.od = load i64, ptr %i.a, align 8, !tbaa !368 ; 3 uses
  %i.oe = mul nuw nsw i64 %i.od, %.0116.ph
  %i.of = getelementptr [8 x i8], ptr %i.oc, i64 %.0116.ph
  %i.og = getelementptr [8 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load double, ptr %i.og, align 8, !tbaa !370 ; 2 uses
  %i.oi = fcmp ueq double %i.oh, 0.000000e+00
  br i1 %i.oi, label %.lr.ph428, label %.loopexit453

.lr.ph428:                                        ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit
  store i32 2, ptr %3, align 4, !tbaa !1824
  %i.oj = load ptr, ptr %1, align 8, !tbaa !501
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit
  %6 = trunc nuw i8 %i.ox to i1
  br label %.loopexit420

bb.p:                                             ; preds = %.lr.ph428, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit
  %.0427 = phi i64 [ 0, %.lr.ph428 ], [ %i.oy, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit ] ; 5 uses
  %.1119426 = phi i8 [ %.0118.ph, %.lr.ph428 ], [ %i.ox, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit ]
  %i.ok = trunc i64 %.0427 to i32
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %.0427
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !81
  %i.om = trunc nuw i8 %.1119426 to i1
  br i1 %i.om, label %bb.q, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit

bb.q:                                             ; preds = %bb.p
  %i.on = mul nsw i64 %.0427, %i.od
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.on
  %i.op = xor i64 %.0427, -1
  %i.oq = add nsw i64 %i.b, %i.op                 ; 3 uses
  %i.or = sub nsw i64 %i.od, %i.oq
  %i.os = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.or
  %.not23.i = icmp sgt i64 %i.oq, 0
  br i1 %.not23.i, label %.preheader.us.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit

bb.r:                                             ; preds = %.preheader.us.i
  %i.ot = add nuw nsw i64 %.01324.us.i, 1         ; 2 uses
  %exitcond.not.i135 = icmp eq i64 %i.ot, %i.oq
  br i1 %exitcond.not.i135, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, label %.preheader.us.i, !llvm.loop !1816

.preheader.us.i:                                  ; preds = %bb.q, %bb.r
  %.01324.us.i = phi i64 [ %i.ot, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ou = getelementptr [8 x i8], ptr %i.os, i64 %.01324.us.i
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !370
  %i.ow = fcmp oeq double %i.ov, 0.000000e+00
  br i1 %i.ow, label %bb.r, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit: ; preds = %.preheader.us.i, %bb.r, %bb.q, %bb.p
  %i.ox = phi i8 [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.preheader.us.i ], [ 1, %bb.r ] ; 2 uses
  %i.oy = add nuw nsw i64 %.0427, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.oy, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !1817

.loopexit453:                                     ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit
  %i.oz = add nsw i64 %i.v, -1
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.pre-phi
  %i.pb = mul nuw nsw i64 %i.hn, %.0116.ph
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.pb
  br label %bb.s

bb.s:                                             ; preds = %.loopexit453, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread
  %i.pd = phi i64 [ %i.ho, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.oz, %.loopexit453 ] ; 6 uses
  %i.pe = phi ptr [ %i.hr, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.pc, %.loopexit453 ] ; 7 uses
  %i.pf = phi i1 [ %i.ob, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ true, %.loopexit453 ] ; 3 uses
  %i.pg = phi double [ %i.oa, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.oh, %.loopexit453 ] ; 9 uses
  %or.cond4 = and i1 %i.ad, %i.pf
  br i1 %or.cond4, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137, label %bb.t

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137: ; preds = %bb.s
  %i.ph = ptrtoint ptr %i.pe to i64               ; 2 uses
  %i.pi = and i64 %i.ph, 7
  %.not.i.i.i.i.i.i.i136 = icmp eq i64 %i.pi, 0
  %i.pj = lshr exact i64 %i.ph, 3
  %i.pk = and i64 %i.pj, 1
  %.0.i.i.i.i.i.i.i138 = select i1 %.not.i.i.i.i.i.i.i136, i64 %i.pk, i64 %i.pd ; 8 uses
  %i.pl = sub nsw i64 %i.pd, %.0.i.i.i.i.i.i.i138 ; 2 uses
  %i.pm = sdiv i64 %i.pl, 2
  %i.pn = shl nsw i64 %i.pm, 1                    ; 2 uses
  %i.po = add nsw i64 %i.pn, %.0.i.i.i.i.i.i.i138 ; 5 uses
  switch i64 %.0.i.i.i.i.i.i.i138, label %vector.ph520 [
    i64 0, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
    i64 1, label %.lr.ph.i.i.i.i.i.i.i145.preheader
  ]

vector.ph520:                                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %n.vec521 = and i64 %.0.i.i.i.i.i.i.i138, -2    ; 3 uses
  %broadcast.splatinsert522 = insertelement <2 x double> poison, double %i.pg, i64 0
  %broadcast.splat523 = shufflevector <2 x double> %broadcast.splatinsert522, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph520
  %index525 = phi i64 [ 0, %vector.ph520 ], [ %index.next527, %vector.body524 ] ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %index525 ; 2 uses
  %wide.load526 = load <2 x double>, ptr %i.pp, align 8, !tbaa !370
  %i.pq = fdiv <2 x double> %wide.load526, %broadcast.splat523
  store <2 x double> %i.pq, ptr %i.pp, align 8, !tbaa !370
  %index.next527 = add nuw i64 %index525, 2       ; 2 uses
  %i.pr = icmp eq i64 %index.next527, %n.vec521
  br i1 %i.pr, label %middle.block528, label %vector.body524, !llvm.loop !1818

middle.block528:                                  ; preds = %vector.body524
  %cmp.n529 = icmp eq i64 %.0.i.i.i.i.i.i.i138, %n.vec521
  br i1 %cmp.n529, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145.preheader

.lr.ph.i.i.i.i.i.i.i145.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137, %middle.block528
  %.05.i.i.i.i.i.i.i146.ph = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137 ], [ %n.vec521, %middle.block528 ]
  br label %.lr.ph.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i145:                          ; preds = %.lr.ph.i.i.i.i.i.i.i145.preheader, %.lr.ph.i.i.i.i.i.i.i145
  %.05.i.i.i.i.i.i.i146 = phi i64 [ %i.pv, %.lr.ph.i.i.i.i.i.i.i145 ], [ %.05.i.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i.i145.preheader ] ; 2 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %.05.i.i.i.i.i.i.i146 ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !370
  %i.pu = fdiv double %i.pt, %i.pg
  store double %i.pu, ptr %i.ps, align 8, !tbaa !370
  %i.pv = add nuw nsw i64 %.05.i.i.i.i.i.i.i146, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i147 = icmp eq i64 %i.pv, %.0.i.i.i.i.i.i.i138
  br i1 %exitcond.not.i.i.i.i.i.i.i147, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145, !llvm.loop !1819

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i145, %middle.block528, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %i.pw = icmp sgt i64 %i.pl, 1
  br i1 %i.pw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i139

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.px = insertelement <2 x double> poison, double %i.pg, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i143

._crit_edge.i.i.i.i.i.i139:                       ; preds = %.lr.ph.i.i.i.i.i.i143, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.pz = icmp slt i64 %i.po, %i.pd
  br i1 %i.pz, label %.lr.ph.i17.i.i.i.i.i.i140.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i140.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i139
  %i.qa = add i64 %.0.i.i.i.i.i.i.i138, %i.pn
  %i.qb = sub i64 %i.pd, %i.qa                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.qb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader
  %n.vec = and i64 %i.qb, -2                      ; 3 uses
  %i.qc = add i64 %i.po, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.pg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qd = getelementptr [8 x i8], ptr %i.pe, i64 %i.po
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qe = getelementptr [8 x i8], ptr %i.qd, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.qe, align 8, !tbaa !370
  %i.qf = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.qf, ptr %i.qe, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qg = icmp eq i64 %index.next, %n.vec
  br i1 %i.qg, label %middle.block, label %vector.body, !llvm.loop !1820

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qb, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657

.lr.ph.i17.i.i.i.i.i.i140.preheader657:           ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i141.ph = phi i64 [ %i.po, %.lr.ph.i17.i.i.i.i.i.i140.preheader ], [ %i.qc, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i140

.lr.ph.i17.i.i.i.i.i.i140:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader657, %.lr.ph.i17.i.i.i.i.i.i140
  %.05.i18.i.i.i.i.i.i141 = phi i64 [ %i.qk, %.lr.ph.i17.i.i.i.i.i.i140 ], [ %.05.i18.i.i.i.i.i.i141.ph, %.lr.ph.i17.i.i.i.i.i.i140.preheader657 ] ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %.05.i18.i.i.i.i.i.i141 ; 2 uses
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !370
  %i.qj = fdiv double %i.qi, %i.pg
  store double %i.qj, ptr %i.qh, align 8, !tbaa !370
  %i.qk = add nsw i64 %.05.i18.i.i.i.i.i.i141, 1  ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i142 = icmp eq i64 %i.qk, %i.pd
  br i1 %exitcond.not.i19.i.i.i.i.i.i142, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140, !llvm.loop !1821

.lr.ph.i.i.i.i.i.i143:                            ; preds = %.lr.ph.i.i.i.i.i.i143, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i144 = phi i64 [ %i.qo, %.lr.ph.i.i.i.i.i.i143 ], [ %.0.i.i.i.i.i.i.i138, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %.021.i.i.i.i.i.i144 ; 2 uses
  %i.qm = load <2 x double>, ptr %i.ql, align 16, !tbaa !71
  %i.qn = fdiv <2 x double> %i.qm, %i.py
  store <2 x double> %i.qn, ptr %i.ql, align 16, !tbaa !71
  %i.qo = add nsw i64 %.021.i.i.i.i.i.i144, 2     ; 2 uses
  %i.qp = icmp slt i64 %i.qo, %i.po
  br i1 %i.qp, label %.lr.ph.i.i.i.i.i.i143, label %._crit_edge.i.i.i.i.i.i139, !llvm.loop !1822

bb.t:                                             ; preds = %bb.s
  br i1 %i.ad, label %bb.u, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

bb.u:                                             ; preds = %bb.t
  %i.qq = trunc nuw i8 %.0118.ph to i1
  br i1 %i.qq, label %.preheader.us.i150, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.preheader.us.i150:                               ; preds = %bb.u, %.preheader.us.i150
  %.01324.us.i151 = phi i64 [ %i.qu, %.preheader.us.i150 ], [ 0, %bb.u ] ; 2 uses
  %i.qr = getelementptr [8 x i8], ptr %i.pe, i64 %.01324.us.i151
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !370
  %i.qt = fcmp oeq double %i.qs, 0.000000e+00     ; 2 uses
  %i.qu = add nuw nsw i64 %.01324.us.i151, 1      ; 2 uses
  %exitcond.not.i152 = icmp ne i64 %i.qu, %i.pd
  %or.cond419.not = select i1 %i.qt, i1 %exitcond.not.i152, i1 false
  br i1 %or.cond419.not, label %.preheader.us.i150, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, !llvm.loop !1823

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit: ; preds = %.preheader.us.i150
  %i.qv = zext i1 %i.qt to i8
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i140, %middle.block, %bb.u, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, %._crit_edge.i.i.i.i.i.i139, %bb.t
  %.2 = phi i8 [ %.0118.ph, %bb.t ], [ %i.qv, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit ], [ %.0118.ph, %._crit_edge.i.i.i.i.i.i139 ], [ 0, %bb.u ], [ %.0118.ph, %middle.block ], [ %.0118.ph, %.lr.ph.i17.i.i.i.i.i.i140 ]
  %or.cond6 = and i1 %.0120.ph, %i.pf
  %not. = xor i1 %i.pf, true
  %.1121 = select i1 %not., i1 true, i1 %.0120.ph
  %.3 = select i1 %or.cond6, i8 0, i8 %.2
  %i.qw = load i32, ptr %3, align 4, !tbaa !1824
  switch i32 %i.qw, label %bb.z [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qx = fcmp olt double %i.pg, 0.000000e+00
  br i1 %i.qx, label %.sink.split, label %bb.z

bb.w:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qy = fcmp ogt double %i.pg, 0.000000e+00
  br i1 %i.qy, label %.sink.split, label %bb.z

bb.x:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qz = fcmp ogt double %i.pg, 0.000000e+00
  br i1 %i.qz, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ra = fcmp olt double %i.pg, 0.000000e+00
  br i1 %i.ra, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sink = phi i32 [ 3, %bb.v ], [ 0, %bb.x ], [ 3, %bb.w ], [ 1, %bb.y ]
  store i32 %.sink, ptr %3, align 4, !tbaa !1824
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v, %bb.y, %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %indvar.next = add i64 %indvar, 1
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.z
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.z ] ; 13 uses
  %.0120.ph = phi i1 [ false, %.preheader ], [ %.1121, %bb.z ] ; 2 uses
  %.0118.ph = phi i8 [ 1, %.preheader ], [ %.3, %bb.z ] ; 7 uses
  %.0116.ph = phi i64 [ 0, %.preheader ], [ %.pre-phi, %bb.z ] ; 42 uses
  %i.rb = add i64 %.0116.ph, -2                   ; 2 uses
  %i.rc = add i64 %.0116.ph, -1                   ; 5 uses
  %i.rd = xor i64 %indvar, -1
  %i.re = add i64 %i.b, %i.rd                     ; 3 uses
  %i.rf = shl i64 %indvar, 4
  %i.rg = shl i64 %indvar, 3
  %i.rh = shl i64 %indvar, 3
  %i.ri = shl i64 %indvar, 3                      ; 2 uses
  %i.rj = add i64 %i.ri, 8
  %i.rk = add i64 %.0116.ph, 1
  %i.rl = shl i64 %indvar, 4                      ; 2 uses
  %i.rm = add i64 %.0116.ph, 2
  %i.rn = shl i64 %indvar, 3                      ; 2 uses
  %i.ro = shl i64 %indvar, 3
  %i.rp = shl i64 %indvar, 4
  %exitcond433.not = icmp eq i64 %.0116.ph, %i.b
  br i1 %exitcond433.not, label %.thread410, label %bb.i

.thread410:                                       ; preds = %.outer
  %i.rq = trunc nuw i8 %.0118.ph to i1
  br label %.loopexit420

.loopexit420:                                     ; preds = %._crit_edge, %bb.c, %bb.g, %bb.h, %bb.e, %.thread410
  %.3126 = phi i1 [ true, %bb.c ], [ %i.rq, %.thread410 ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ %6, %._crit_edge ]
  ret i1 %.3126
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(19) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::TriangularView.1684", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.446.8.copyload = load ptr, ptr %1, align 8 ; 15 uses
  %.sroa.446.8.copyload60 = ptrtoaddr ptr %.sroa.446.8.copyload to i64 ; 2 uses
  %.sroa.647.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.647.8.copyload = load i64, ptr %.sroa.647.8..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !502  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !500  ; 9 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !577    ; 15 uses
  %i.g = icmp eq ptr %i.f, %.sroa.446.8.copyload
  %i.h = icmp eq i64 %i.e, %.sroa.647.8.copyload
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.k = and i64 %i.j, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = lshr exact i64 %i.j, 3
  %i.m = and i64 %i.l, 1
  %i.n = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.e)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 11 uses
  %i.o = sub nsw i64 %i.e, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1                      ; 2 uses
  %i.r = add nsw i64 %i.q, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.s = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.t = sub i64 %.sroa.446.8.copyload60, %i.j
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !370
  %wide.load61 = load <2 x double>, ptr %i.w, align 8, !tbaa !370
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !370
  store <2 x double> %wide.load61, ptr %i.x, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !370
  store double %i.ab, ptr %i.z, align 8, !tbaa !370
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1840

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader80 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !370
  store double %i.ah, ptr %i.af, align 8, !tbaa !370
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.ai
  %i.al = load double, ptr %i.ak, align 8, !tbaa !370
  store double %i.al, ptr %i.aj, align 8, !tbaa !370
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.am
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !370
  store double %i.ap, ptr %i.an, align 8, !tbaa !370
  %i.aq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !370
  store double %i.at, ptr %i.ar, align 8, !tbaa !370
  %i.au = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.au, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1841

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = icmp sgt i64 %i.o, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp slt i64 %i.r, %i.e
  br i1 %i.aw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  %i.ay = sub i64 %i.e, %i.ax                     ; 3 uses
  %min.iters.check65 = icmp ult i64 %i.ay, 8
  %i.az = sub i64 %.sroa.446.8.copyload60, %i.j
  %diff.check67 = icmp ugt i64 %i.az, -32
  %or.cond78 = or i1 %min.iters.check65, %diff.check67
  br i1 %or.cond78, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec69 = and i64 %i.ay, -4                    ; 3 uses
  %i.ba = add i64 %i.r, %n.vec69
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 2 uses
  %i.bb = add i64 %i.r, %index71                  ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load72 = load <2 x double>, ptr %i.bd, align 8, !tbaa !370
  %wide.load73 = load <2 x double>, ptr %i.be, align 8, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %wide.load72, ptr %i.bc, align 8, !tbaa !370
  store <2 x double> %wide.load73, ptr %i.bf, align 8, !tbaa !370
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.bg, label %middle.block75, label %vector.body70, !llvm.loop !1842

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %i.ay, %n.vec69
  br i1 %cmp.n76, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block75
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block75 ] ; 4 uses
  %i.bh = sub i64 %i.e, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter81 = and i64 %i.bh, 3                  ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79 ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79 ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !370
  store double %i.bk, ptr %i.bi, align 8, !tbaa !370
  %i.bl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1843

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader79 ], [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.e
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !370
  store double %i.bq, ptr %i.bo, align 8, !tbaa !370
  %i.br = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !370
  store double %i.bu, ptr %i.bs, align 8, !tbaa !370
  %i.bv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bv
end_hunk_0
