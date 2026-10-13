Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_cubic_bezier?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1099
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_0clES4_iiS7_S7_RS2_":bb.a
  %i.fj = fadd <2 x double> %wide.load145, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x double> %i.fi, ptr %i.fb, align 8, !tbaa !24
  store <2 x double> %i.fj, ptr %i.fk, align 8, !tbaa !24
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next148, %n.vec139
  br i1 %i.fl, label %middle.block149, label %vector.body142, !llvm.loop !185

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.ba, %n.vec139
  br i1 %cmp.n150, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader:           ; preds = %vector.memcheck132, %vector.scevcheck129, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %middle.block149
  %.05.i.i.i.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %vector.memcheck132 ], [ 0, %vector.scevcheck129 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %n.vec139, %middle.block149 ] ; 6 uses
  %.neg183 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph, 1
  %xtraiter177 = and i64 %i.ba, 1
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader
  %i.fm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph, %i.bc
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fm
  %i.fo = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph, %.pre
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = fmul double %i.aw, %i.fs
  %i.fu = fadd double %i.fq, %i.ft
  store double %i.fu, ptr %i.fn, align 8, !tbaa !24
  %i.fv = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader
  %.05.i.i.i.i.i.i.i.i.i.i23.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol ]
  %i.fw = icmp eq i64 %i.ba, %.neg183
  br i1 %i.fw, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i.i.i.i22:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i22
  %.05.i.i.i.i.i.i.i.i.i.i23 = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i22 ], [ %.05.i.i.i.i.i.i.i.i.i.i23.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit ] ; 5 uses
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23, %i.bc
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fx
  %i.fz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23, %.pre
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !24
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.05.i.i.i.i.i.i.i.i.i.i23
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !24
  %i.ge = fmul double %i.aw, %i.gd
  %i.gf = fadd double %i.gb, %i.ge
  store double %i.gf, ptr %i.fy, align 8, !tbaa !24
  %i.gg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23, 1 ; 3 uses
  %i.gh = mul nsw i64 %i.gg, %i.bc
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.gh
  %i.gj = mul nsw i64 %i.gg, %.pre
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !24
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gg
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !24
  %i.go = fmul double %i.aw, %i.gn
  %i.gp = fadd double %i.gl, %i.go
  store double %i.gp, ptr %i.gi, align 8, !tbaa !24
  %i.gq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i24.1 = icmp eq i64 %i.gq, %i.ba
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i24.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22, !llvm.loop !186

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i22, %middle.block149
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 6 uses
  %min.iters.check158 = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check158, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.scevcheck152

vector.scevcheck152:                              ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25
  %ident.check153 = icmp ne i64 %i.bc, 1
  %ident.check154 = icmp ne i64 %.pre, 1
  %i.gs = or i1 %ident.check153, %ident.check154
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %vector.scevcheck152
  %i.gt = shl nsw i64 %i.h, 3
  %i.gu = add i64 %i.gt, %i.j
  %i.gv = sub i64 %i.ay, %i.gu
  %i.gw = add i64 %i.gv, 23
  %diff.check156 = icmp ult i64 %i.gw, 31
  br i1 %diff.check156, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.ba, 9223372036854775804  ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next165, %vector.body161 ] ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index162 ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %index162 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load163 = load <2 x double>, ptr %i.gy, align 8, !tbaa !24
  %wide.load164 = load <2 x double>, ptr %i.gz, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x double> %wide.load163, ptr %i.gx, align 8, !tbaa !24
  store <2 x double> %wide.load164, ptr %i.ha, align 8, !tbaa !24
  %index.next165 = add nuw i64 %index162, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.hb, label %middle.block166, label %vector.body161, !llvm.loop !187

middle.block166:                                  ; preds = %vector.body161
  %cmp.n167 = icmp eq i64 %i.ba, %n.vec160
  br i1 %cmp.n167, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader:           ; preds = %vector.memcheck155, %vector.scevcheck152, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, %middle.block166
  %.05.i.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %vector.memcheck155 ], [ 0, %vector.scevcheck152 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25 ], [ %n.vec160, %middle.block166 ] ; 3 uses
  %xtraiter180 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader ]
  %i.hc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, %i.bc
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hc
  %i.he = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, %.pre
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !24
  store double %i.hg, ptr %i.hd, align 8, !tbaa !24
  %i.hh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !188

.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol ]
  %i.hi = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.ph, %i.ba
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i.i26:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.hk = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, %i.bc
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hk
  %i.hm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, %.pre
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !24
  store double %i.ho, ptr %i.hl, align 8, !tbaa !24
  %i.hp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.hq = mul nsw i64 %i.hp, %i.bc
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hq
  %i.hs = mul nsw i64 %i.hp, %.pre
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !24
  store double %i.hu, ptr %i.hr, align 8, !tbaa !24
  %i.hv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %i.bc
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hw
  %i.hy = mul nsw i64 %i.hv, %.pre
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !24
  store double %i.ia, ptr %i.hx, align 8, !tbaa !24
  %i.ib = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ic = mul nsw i64 %i.ib, %i.bc
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.ic
  %i.ie = mul nsw i64 %i.ib, %.pre
  %i.if = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !24
  store double %i.ig, ptr %i.id, align 8, !tbaa !24
  %i.ih = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.ih, %i.ba
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26, !llvm.loop !189

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26, %middle.block166, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_1clES4_iiRKNS1_IdLin1ELi1ELi0ELin1ELi1EEES7_S7_RS2_"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.139", align 8   ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.3", align 8   ; 8 uses
  %9 = alloca %"class.Eigen::CwiseBinaryOp.93", align 8 ; 7 uses
  %10 = alloca %"class.Eigen::Matrix.3", align 8  ; 8 uses
  %11 = alloca %"class.Eigen::CwiseBinaryOp.93", align 8 ; 7 uses
  %12 = alloca [2 x %"class.Eigen::Matrix.3"], align 8 ; 15 uses
  %13 = alloca %"class.Eigen::Matrix.3", align 8  ; 6 uses
  %14 = alloca %"class.Eigen::CwiseBinaryOp.149", align 8 ; 42 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.g = shl nsw i64 %i.b, 2
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.g, i64 noundef 4, i64 noundef %i.b)
  %i.h = sub nsw i32 %2, %1                       ; 2 uses
  %i.i = add i32 %i.h, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp slt i32 %i.h, -1
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.l = mul nuw nsw i64 %i.j, 24                 ; 3 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 7 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.j ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.n, ptr %i.p, align 8, !tbaa !51
  store ptr %scevgep.i.i.i.i.i, ptr %i.o, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32
  %15 = add nsw i32 %2, 1
  %16 = sub i32 %15, %1
  %wide.trip.count = zext i32 %16 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ad = load ptr, ptr %3, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = fsub double 1.000000e+00, %i.af         ; 2 uses
  %i.ah = fmul double %i.af, 3.000000e+00
  %i.ai = fmul double %i.ag, %i.ag
  %i.aj = fmul double %i.ah, %i.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !28, !noalias !224
  store ptr %4, ptr %9, align 8, !tbaa !34, !alias.scope !224
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !224
  store double %i.aj, ptr %i.s, align 8, !tbaa !36, !alias.scope !224
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.al = load ptr, ptr %3, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !24 ; 3 uses
  %i.ao = fsub double 1.000000e+00, %i.an
  %i.ap = fmul double %i.an, 3.000000e+00
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = fmul double %i.ao, %i.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.as = load i64, ptr %i.t, align 8, !tbaa !28, !noalias !225
  store ptr %5, ptr %11, align 8, !tbaa !34, !alias.scope !225
  store i64 %i.as, ptr %i.u, align 8, !alias.scope !225
  store double %i.ar, ptr %i.v, align 8, !tbaa !36, !alias.scope !225
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146 unwind label %bb.k

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.at = load i64, ptr %i.w, align 8, !tbaa !28  ; 4 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i, label %bb.f

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146
  %i.av = icmp ugt i64 %i.at, 2305843009213693951
  br i1 %i.av, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.f
  %i.aw = shl nuw i64 %i.at, 3                    ; 2 uses
  %i.ax = call noalias ptr @malloc(i64 noundef %i.aw) #21 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.invoke, label %bb.g

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.f
  %i.az = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.az, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  store ptr %i.ax, ptr %12, align 8, !tbaa !27
  store i64 %i.at, ptr %i.x, align 8, !tbaa !28
  %i.ba = load ptr, ptr %8, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.ba, i64 %i.aw, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.g, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.z, align 8, !tbaa !28  ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150, label %bb.h

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.bd = icmp ugt i64 %i.bb, 2305843009213693951
  br i1 %i.bd, label %.invoke447, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149: ; preds = %bb.h
  %i.be = shl nuw i64 %i.bb, 3                    ; 2 uses
  %i.bf = call noalias ptr @malloc(i64 noundef %i.be) #21 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.invoke447, label %bb.i

.invoke447:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149, %bb.h
  %i.bh = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bh, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont448 unwind label %.loopexit327.loopexit357

.cont448:                                         ; preds = %.invoke447
  unreachable

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149
  store ptr %i.bf, ptr %i.y, align 8, !tbaa !27
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !28
  %i.bi = load ptr, ptr %10, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.bi, i64 %i.be, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153: ; preds = %bb.i, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull %12, ptr noundef nonnull %i.ab)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader unwind label %.loopexit327.loopexit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !27
  call void @free(ptr noundef %i.bk) #20
  %i.bl = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bm = load ptr, ptr %10, align 8, !tbaa !27
  call void @free(ptr noundef %i.bm) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bn = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.bn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph351, label %bb.d, !llvm.loop !197

bb.j:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.l

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit327

.loopexit327.loopexit357:                         ; preds = %.invoke447
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bq) #20
  br label %.loopexit327

.loopexit327.loopexit:                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !27
  call void @free(ptr noundef %i.bt) #20
  %i.bu = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bu) #20
  br label %.loopexit327

.loopexit327:                                     ; preds = %.loopexit327.loopexit357, %.loopexit327.loopexit, %.thread
  %.pn137 = phi { ptr, i32 } [ %i.br, %.loopexit327.loopexit ], [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %.loopexit327.loopexit357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bv = load ptr, ptr %10, align 8, !tbaa !27
  call void @free(ptr noundef %i.bv) #20
  br label %bb.l

bb.l:                                             ; preds = %.loopexit327, %bb.k
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %.loopexit327 ], [ %i.bp, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bw = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.bw) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %bb.l ], [ %i.bo, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph351:                                        ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %i.bx = sext i32 %1 to i64                      ; 4 uses
  %i.by = sext i32 %2 to i64                      ; 3 uses
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.8236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.sroa.9237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 80
end_hunk_0
