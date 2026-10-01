Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.cj, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  %wide.load216 = load <2 x double>, ptr %i.cl, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load217 = load <2 x double>, ptr %i.ck, align 16, !tbaa !11, !alias.scope !381
  %wide.load218 = load <2 x double>, ptr %i.cm, align 16, !tbaa !11, !alias.scope !381
  store <2 x double> %wide.load217, ptr %i.cj, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  store <2 x double> %wide.load218, ptr %i.cl, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  store <2 x double> %wide.load215, ptr %i.ck, align 16, !tbaa !11, !alias.scope !381
  store <2 x double> %wide.load216, ptr %i.cm, align 16, !tbaa !11, !alias.scope !381
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.cn, label %middle.block220, label %vector.body213, !llvm.loop !368

middle.block220:                                  ; preds = %vector.body213
  %cmp.n221 = icmp eq i64 %i.cg, %n.vec212
  br i1 %cmp.n221, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader224

.lr.ph.i17.i.i.i.i.i.i.preheader224:              ; preds = %vector.memcheck199, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block220
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cf, %vector.memcheck199 ], [ %i.cf, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block220 ] ; 5 uses
  %i.co = and i64 %.0165, 1
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i17.i.i.i.i.i.i.prol, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader224
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cr = load double, ptr %i.cp, align 16, !tbaa !11
  %i.cs = load double, ptr %i.cq, align 16, !tbaa !11
  store double %i.cs, ptr %i.cp, align 16, !tbaa !11
  store double %i.cr, ptr %i.cq, align 16, !tbaa !11
  %i.ct = or disjoint i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader224
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader224 ], [ %i.ct, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.cu = icmp eq i64 %.0165, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.cu, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !11
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !11
  store double %i.cy, ptr %i.cv, align 8, !tbaa !11
  store double %i.cx, ptr %i.cw, align 8, !tbaa !11
  %i.cz = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cz ; 2 uses
  %i.dc = load double, ptr %i.da, align 8, !tbaa !11
  %i.dd = load double, ptr %i.db, align 8, !tbaa !11
  store double %i.dd, ptr %i.da, align 8, !tbaa !11
  store double %i.dc, ptr %i.db, align 8, !tbaa !11
  %i.de = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.cz, %.0165
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !369

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !9
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.di = load <2 x double>, ptr %i.dh, align 16, !tbaa !9
  store <2 x double> %i.di, ptr %i.df, align 16, !tbaa !9
  store <2 x double> %i.dg, ptr %i.dh, align 16, !tbaa !9
  %i.dj = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, %i.cf
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !370

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block220, %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.dl = getelementptr [8 x i8], ptr %0, i64 %.0165 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.idx.i.i.i.i30 ; 7 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0165 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 5 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = fmul double %i.dp, %i.dp                ; 2 uses
  br i1 %.not161, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph.i.i.i.i.i.i31
  %.01725.i.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i31 ], [ 1, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %.02324.i.i.i.i.i.i = phi double [ %i.du, %.lr.ph.i.i.i.i.i.i31 ], [ %i.dq, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i.i.i, 5
  %i.dr = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fadd double %.02324.i.i.i.i.i.i, %i.dt  ; 2 uses
  %i.dv = add nuw nsw i64 %.01725.i.i.i.i.i.i, 1
  %i.dw = xor i64 %.01725.i.i.i.i.i.i, %.lcssa180
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dw, 3
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !371

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dx = phi double [ %i.dq, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.du, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.dy = load double, ptr %i.dm, align 8, !tbaa !11 ; 8 uses
  %i.dz = fcmp ugt double %i.dx, f0x0010000000000000
  br i1 %i.dz, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store double 0.000000e+00, ptr %i.dn, align 8, !tbaa !11
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  store double 0.000000e+00, ptr %i.ea, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.ec = fmul double %i.dy, %i.dy
  %i.ed = fadd double %i.dx, %i.ec
  %i.ee = call double @sqrt(double noundef %i.ed) #14 ; 2 uses
  %i.ef = fcmp ult double %i.dy, 0.000000e+00
  %i.eg = fneg double %i.ee
  %storemerge.i.i = select i1 %i.ef, double %i.ee, double %i.eg ; 4 uses
  %i.eh = fsub double %i.dy, %storemerge.i.i      ; 3 uses
  %i.ei = load double, ptr %i.do, align 8, !tbaa !11
  %i.ej = fdiv double %i.ei, %i.eh
  store double %i.ej, ptr %i.do, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.critedge.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 64 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !11
  %i.em = fdiv double %i.el, %i.eh
  store double %i.em, ptr %i.ek, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 96 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !11
  %i.ep = fdiv double %i.eo, %i.eh
  store double %i.ep, ptr %i.en, align 8, !tbaa !11
  br label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.critedge.i.i
  %i.eq = fsub double %storemerge.i.i, %i.dy
  %i.er = fdiv double %i.eq, %storemerge.i.i
  store double %i.er, ptr %i.dn, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi double [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store double %.0156, ptr %i.dm, align 8, !tbaa !11
  %.not29 = icmp eq i64 %.0165, 0
  br i1 %.not29, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  br i1 %.not, label %.loopexit, label %._crit_edge.i.i.i.i.i.i40

.thread:                                          ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.bg, ptr %1, align 8, !tbaa !106, !alias.scope !382
  store i64 %.0165, ptr %i.bj, align 8, !tbaa !107, !alias.scope !382
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !107, !alias.scope !382
  store ptr %0, ptr %i.bl, align 8, !tbaa !109, !alias.scope !382
  store i64 0, ptr %i.bm, align 8, !tbaa !107, !alias.scope !382
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !107, !alias.scope !382
  store i64 4, ptr %i.bo, align 8, !tbaa !112, !alias.scope !382
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i.i.i33
  store ptr %i.es, ptr %2, align 8
  store i64 %i.bh, ptr %.sroa.483.0..sroa_idx, align 8
  store ptr %i.dl, ptr %.sroa.584.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.786.0..sroa_idx, align 8
  store i64 %.0165, ptr %.sroa.887.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.988.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1089.0..sroa_idx, align 8
  store i64 %.lcssa180, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1292.0..sroa_idx, align 8
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i.i.i.i.i.i44.preheader

.lr.ph.i.i.i.i.i.i44.preheader:                   ; preds = %.thread
  %.idx.i.i.i.i34178 = shl nuw nsw i64 %.0165, 5
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i34178 ; 2 uses
  %i.eu = add nuw nsw i64 %.0165, 1
  %i.ev = and i64 %i.eu, 9223372036854775806      ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i44

._crit_edge.i.i.i.i.i.i40:                        ; preds = %.lr.ph.i.i.i.i.i.i44, %bb.c
  %i.ew = phi i64 [ 0, %bb.c ], [ %i.ev, %.lr.ph.i.i.i.i.i.i44 ] ; 7 uses
  %i.ex = phi ptr [ %0, %bb.c ], [ %i.et, %.lr.ph.i.i.i.i.i.i44 ] ; 6 uses
  %.not163 = icmp sgt i64 %i.ew, %.0165
  br i1 %.not163, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41.preheader

.lr.ph.i17.i.i.i.i.i.i41.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i40
  %i.ey = add i64 %indvar, %i.ew
  %i.ez = sub i64 %.lcssa180, %i.ey               ; 3 uses
  %min.iters.check187 = icmp ult i64 %i.ez, 4
  br i1 %min.iters.check187, label %.lr.ph.i17.i.i.i.i.i.i41.preheader223, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i41.preheader
  %i.fa = shl nuw i64 %i.ew, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ex, i64 %i.fa
  %i.fb = getelementptr i8, ptr %i.ex, i64 %i.bp
  %scevgep182 = getelementptr i8, ptr %i.fb, i64 %i.cc
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.fa
  %bound0 = icmp ult ptr %scevgep, %scevgep185
  %bound1 = icmp ult ptr %scevgep184, %scevgep182
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i41.preheader223, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck
  %n.vec189 = and i64 %i.ez, -4                   ; 3 uses
  %i.fc = add i64 %i.ew, %n.vec189
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next195, %vector.body190 ] ; 2 uses
  %i.fd = add nuw i64 %i.ew, %index191            ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fd ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.fd ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fe, align 8, !tbaa !11, !alias.scope !383, !noalias !384
  %wide.load192 = load <2 x double>, ptr %i.fg, align 8, !tbaa !11, !alias.scope !383, !noalias !384
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.ff, align 16, !tbaa !11, !alias.scope !384
  %wide.load194 = load <2 x double>, ptr %i.fh, align 16, !tbaa !11, !alias.scope !384
  store <2 x double> %wide.load193, ptr %i.fe, align 8, !tbaa !11, !alias.scope !383, !noalias !384
  store <2 x double> %wide.load194, ptr %i.fg, align 8, !tbaa !11, !alias.scope !383, !noalias !384
  store <2 x double> %wide.load, ptr %i.ff, align 16, !tbaa !11, !alias.scope !384
  store <2 x double> %wide.load192, ptr %i.fh, align 16, !tbaa !11, !alias.scope !384
  %index.next195 = add nuw i64 %index191, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.fi, label %middle.block196, label %vector.body190, !llvm.loop !377

middle.block196:                                  ; preds = %vector.body190
  %cmp.n197 = icmp eq i64 %i.ez, %n.vec189
  br i1 %cmp.n197, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41.preheader223

.lr.ph.i17.i.i.i.i.i.i41.preheader223:            ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i41.preheader, %middle.block196
  %.05.i18.i.i.i.i.i.i42.ph = phi i64 [ %i.ew, %vector.memcheck ], [ %i.ew, %.lr.ph.i17.i.i.i.i.i.i41.preheader ], [ %i.fc, %middle.block196 ] ; 6 uses
  %i.fj = add i64 %indvar, %.05.i18.i.i.i.i.i.i42.ph
  %i.fk = sub i64 %.lcssa180, %i.fj
  %xtraiter229 = and i64 %i.fk, 1
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i41.prol

.lr.ph.i17.i.i.i.i.i.i41.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i41.preheader223
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.05.i18.i.i.i.i.i.i42.ph ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i42.ph ; 2 uses
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !11
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !11
  store double %i.fo, ptr %i.fl, align 8, !tbaa !11
  store double %i.fn, ptr %i.fm, align 8, !tbaa !11
  %i.fp = add nuw nsw i64 %.05.i18.i.i.i.i.i.i42.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol, %.lr.ph.i17.i.i.i.i.i.i41.preheader223
  %.05.i18.i.i.i.i.i.i42.unr = phi i64 [ %.05.i18.i.i.i.i.i.i42.ph, %.lr.ph.i17.i.i.i.i.i.i41.preheader223 ], [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i41.prol ]
  %i.fq = icmp eq i64 %.0165, %.05.i18.i.i.i.i.i.i42.ph
  br i1 %i.fq, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41

.lr.ph.i17.i.i.i.i.i.i41:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i41
  %.05.i18.i.i.i.i.i.i42 = phi i64 [ %i.ga, %.lr.ph.i17.i.i.i.i.i.i41 ], [ %.05.i18.i.i.i.i.i.i42.unr, %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.05.i18.i.i.i.i.i.i42 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i42 ; 2 uses
  %i.ft = load double, ptr %i.fr, align 8, !tbaa !11
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !11
  store double %i.fu, ptr %i.fr, align 8, !tbaa !11
  store double %i.ft, ptr %i.fs, align 8, !tbaa !11
  %i.fv = add nuw nsw i64 %.05.i18.i.i.i.i.i.i42, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.fv ; 2 uses
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !11
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !11
  store double %i.fz, ptr %i.fw, align 8, !tbaa !11
  store double %i.fy, ptr %i.fx, align 8, !tbaa !11
  %i.ga = add nuw nsw i64 %.05.i18.i.i.i.i.i.i42, 2
  %exitcond.not.i19.i.i.i.i.i.i43.1 = icmp eq i64 %i.fv, %.0165
  br i1 %exitcond.not.i19.i.i.i.i.i.i43.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41, !llvm.loop !378

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44.preheader, %.lr.ph.i.i.i.i.i.i44
  %.021.i.i.i.i.i.i45 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i44 ], [ 0, %.lr.ph.i.i.i.i.i.i44.preheader ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i45 ; 2 uses
  %i.gc = load <2 x double>, ptr %i.gb, align 16, !tbaa !9
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.021.i.i.i.i.i.i45 ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !9
  store <2 x double> %i.ge, ptr %i.gb, align 16, !tbaa !9
  store <2 x double> %i.gc, ptr %i.gd, align 16, !tbaa !9
  %i.gf = add nuw nsw i64 %.021.i.i.i.i.i.i45, 2  ; 2 uses
  %i.gg = icmp samesign ult i64 %i.gf, %i.ev
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i40, !llvm.loop !370

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49: ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i41, %middle.block196, %.thread, %._crit_edge.i.i.i.i.i.i40
  %i.gh = add nsw i64 %.0165, -1
  %i.gi = icmp sgt i64 %.0165, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gi, label %bb.b, label %.loopexit, !llvm.loop !379

.loopexit:                                        ; preds = %bb.c, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, %bb.a, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(344) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.386", align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.333", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.89", align 8   ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.333", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 16, !tbaa !9 ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !9 ; 2 uses
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = fadd <2 x double> %i.e, %i.h             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !9 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !9 ; 2 uses
  %i.o = fmul <2 x double> %i.n, %i.n
  %i.p = fadd <2 x double> %i.l, %i.o             ; 2 uses
  %i.q = shufflevector <2 x double> %i.i, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.i, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.s = fadd <2 x double> %i.q, %i.r
  %i.t = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.s) ; 2 uses
  store <2 x double> %i.t, ptr %i.c, align 16, !tbaa !11
  store <2 x double> %i.t, ptr %i.b, align 16, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !9 ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !9 ; 2 uses
  %i.z = fmul <2 x double> %i.y, %i.y
  %i.aa = fadd <2 x double> %i.w, %i.z            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !9 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !9 ; 2 uses
  %i.ai = fmul <2 x double> %i.ah, %i.ah
  %i.aj = fadd <2 x double> %i.af, %i.ai          ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aa, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x double> %i.aa, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.am = fadd <2 x double> %i.ak, %i.al
  %i.an = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.am) ; 3 uses
  store <2 x double> %i.an, ptr %i.ab, align 16, !tbaa !11
  store <2 x double> %i.an, ptr %i.ac, align 16, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ar = load <2 x double>, ptr %i.b, align 16, !tbaa !9
  %i.as = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar, <2 x double> %i.an) #15, !srcloc !396 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.at = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.au = select i1 %i.at, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i
  %i.av = fmul double %i.au, f0x3CB0000000000000  ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fmul double %i.aw, 2.500000e-01
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store i64 4, ptr %i.ay, align 8, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store double 0.000000e+00, ptr %i.az, align 16, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.bs, align 16, !tbaa !113
  %i.bt = load i64, ptr %i.aq, align 16, !tbaa !114
end_hunk_0
