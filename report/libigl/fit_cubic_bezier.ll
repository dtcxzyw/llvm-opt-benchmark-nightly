Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_cubic_bezier?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_0clES4_iiS7_S7_RS2_":bb.a
  %conflict.rdx144 = or i1 %diff.check142, %diff.check143
  br i1 %conflict.rdx144, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck141
  %n.vec146 = and i64 %i.ba, 9223372036854775804  ; 3 uses
  %broadcast.splatinsert147 = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat148 = shufflevector <2 x double> %broadcast.splatinsert147, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph145
  %index150 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body149 ] ; 4 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.es, i64 %index150 ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %index150 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load151 = load <2 x double>, ptr %i.fc, align 8, !tbaa !24
  %wide.load152 = load <2 x double>, ptr %i.fd, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index150 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load153 = load <2 x double>, ptr %i.fe, align 8, !tbaa !24
  %wide.load154 = load <2 x double>, ptr %i.ff, align 8, !tbaa !24
  %i.fg = fmul <2 x double> %broadcast.splat148, %wide.load153
  %i.fh = fmul <2 x double> %broadcast.splat148, %wide.load154
  %i.fi = fadd <2 x double> %wide.load151, %i.fg
  %i.fj = fadd <2 x double> %wide.load152, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x double> %i.fi, ptr %i.fb, align 8, !tbaa !24
  store <2 x double> %i.fj, ptr %i.fk, align 8, !tbaa !24
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.fl, label %middle.block156, label %vector.body149, !llvm.loop !185

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.ba, %n.vec146
  br i1 %cmp.n157, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader:           ; preds = %vector.memcheck141, %vector.scevcheck132, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %middle.block156
  %.05.i.i.i.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %vector.memcheck141 ], [ 0, %vector.scevcheck132 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %n.vec146, %middle.block156 ] ; 6 uses
  %.neg192 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i23.ph, 1
  %xtraiter186 = and i64 %i.ba, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol

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
  %i.fw = icmp eq i64 %i.ba, %.neg192
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

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i22, %middle.block156
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 6 uses
  %min.iters.check165 = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.scevcheck159

vector.scevcheck159:                              ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25
  %ident.check160 = icmp ne i64 %i.bc, 1
  %ident.check161 = icmp ne i64 %.pre, 1
  %i.gs = or i1 %ident.check160, %ident.check161
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %vector.scevcheck159
  %i.gt = shl nsw i64 %i.h, 3
  %i.gu = add i64 %i.gt, %i.j
  %i.gv = sub i64 %i.ay, %i.gu
  %i.gw = add i64 %i.gv, 23
  %diff.check167 = icmp ult i64 %i.gw, 31
  br i1 %diff.check167, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck166
  %n.vec169 = and i64 %i.ba, 9223372036854775804  ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next174, %vector.body170 ] ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index171 ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %index171 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load172 = load <2 x double>, ptr %i.gy, align 8, !tbaa !24
  %wide.load173 = load <2 x double>, ptr %i.gz, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x double> %wide.load172, ptr %i.gx, align 8, !tbaa !24
  store <2 x double> %wide.load173, ptr %i.ha, align 8, !tbaa !24
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.hb, label %middle.block175, label %vector.body170, !llvm.loop !187

middle.block175:                                  ; preds = %vector.body170
  %cmp.n176 = icmp eq i64 %i.ba, %n.vec169
  br i1 %cmp.n176, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader:           ; preds = %vector.memcheck166, %vector.scevcheck159, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25, %middle.block175
  %.05.i.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %vector.scevcheck159 ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEEKNS5_INS6_17scalar_product_opIddEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESF_EEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit25 ], [ %n.vec169, %middle.block175 ] ; 3 uses
  %xtraiter189 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader ]
  %i.hc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, %i.bc
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hc
  %i.he = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, %.pre
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !24
  store double %i.hg, ptr %i.hd, align 8, !tbaa !24
  %i.hh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !188

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

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26, %middle.block175, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE4normEv.exit
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
  %i.ac = add nsw i32 %2, 1
  %i.ad = sub i32 %i.ac, %1
  %wide.trip.count = zext i32 %i.ad to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.af = load ptr, ptr %3, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %i.ai = fsub double 1.000000e+00, %i.ah         ; 2 uses
  %i.aj = fmul double %i.ah, 3.000000e+00
  %i.ak = fmul double %i.ai, %i.ai
  %i.al = fmul double %i.aj, %i.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.am = load i64, ptr %i.q, align 8, !tbaa !28, !noalias !224
  store ptr %4, ptr %9, align 8, !tbaa !34, !alias.scope !224
  store i64 %i.am, ptr %i.r, align 8, !alias.scope !224
  store double %i.al, ptr %i.s, align 8, !tbaa !36, !alias.scope !224
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.an = load ptr, ptr %3, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24 ; 3 uses
  %i.aq = fsub double 1.000000e+00, %i.ap
  %i.ar = fmul double %i.ap, 3.000000e+00
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fmul double %i.aq, %i.as
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.au = load i64, ptr %i.t, align 8, !tbaa !28, !noalias !225
  store ptr %5, ptr %11, align 8, !tbaa !34, !alias.scope !225
  store i64 %i.au, ptr %i.u, align 8, !alias.scope !225
  store double %i.at, ptr %i.v, align 8, !tbaa !36, !alias.scope !225
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146 unwind label %bb.k

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.av = load i64, ptr %i.w, align 8, !tbaa !28  ; 4 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i, label %bb.f

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERKNS_9EigenBaseIT_EE.exit146
  %i.ax = icmp ugt i64 %i.av, 2305843009213693951
  br i1 %i.ax, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.f
  %i.ay = shl nuw i64 %i.av, 3                    ; 2 uses
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #21 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.invoke, label %bb.g

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.f
  %i.bb = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bb, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %.thread.a

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  store ptr %i.az, ptr %12, align 8, !tbaa !27
  store i64 %i.av, ptr %i.x, align 8, !tbaa !28
  %i.bc = load ptr, ptr %8, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.bc, i64 %i.ay, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.g, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !28  ; 4 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150, label %bb.h

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.bf = icmp ugt i64 %i.bd, 2305843009213693951
  br i1 %i.bf, label %.invoke447, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149: ; preds = %bb.h
  %i.bg = shl nuw i64 %i.bd, 3                    ; 2 uses
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #21 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.invoke447, label %bb.i

.invoke447:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149, %bb.h
  %i.bj = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bj, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont448 unwind label %.loopexit327.loopexit357

.cont448:                                         ; preds = %.invoke447
  unreachable

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i149
  store ptr %i.bh, ptr %i.y, align 8, !tbaa !27
  store i64 %i.bd, ptr %i.aa, align 8, !tbaa !28
  %i.bk = load ptr, ptr %10, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.bk, i64 %i.bg, i1 false)
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153: ; preds = %bb.i, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.thread.i.i.i150
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %12, ptr noundef nonnull %i.ab)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader unwind label %.loopexit327.loopexit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !27
  call void @free(ptr noundef %i.bm) #20
  %i.bn = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bo = load ptr, ptr %10, align 8, !tbaa !27
  call void @free(ptr noundef %i.bo) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bp = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.bp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph351, label %bb.d, !llvm.loop !197

bb.j:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.l

.thread.a:                                        ; preds = %.invoke
  %lpad.thr_comm.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit327

.loopexit327.loopexit357:                         ; preds = %.invoke447
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bs) #20
  br label %.loopexit327

.loopexit327.loopexit:                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit153
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  call void @free(ptr noundef %17) #20
  %i.bt = load ptr, ptr %12, align 8, !tbaa !27
  call void @free(ptr noundef %i.bt) #20
  br label %.loopexit327

.loopexit327:                                     ; preds = %.loopexit327.loopexit357, %.loopexit327.loopexit, %.thread.a
  %.pn137 = phi { ptr, i32 } [ %15, %.loopexit327.loopexit ], [ %lpad.thr_comm.a, %.thread.a ], [ %lpad.thr_comm.split-lp, %.loopexit327.loopexit357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bu = load ptr, ptr %10, align 8, !tbaa !27
  call void @free(ptr noundef %i.bu) #20
  br label %bb.l

bb.l:                                             ; preds = %.loopexit327, %bb.k
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %.loopexit327 ], [ %i.br, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bv = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.bv) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %bb.l ], [ %i.bq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph351:                                        ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %i.bw = sext i32 %1 to i64                      ; 4 uses
  %i.bx = sext i32 %2 to i64                      ; 3 uses
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.8236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.sroa.9237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 80
  %.sroa.6197.24..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 96
  %.sroa.7198.24..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 104
  %.sroa.8199.24..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 112
  %.sroa.9200.24..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 120
  %.sroa.10201.24..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 168
  %.sroa.18208.112..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 184
  %.sroa.19209.112..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 192
  %.sroa.20210.112..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 200
  %.sroa.21211.112..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 208
  %.sroa.22212.112..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 216
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 232
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 264
  %.sroa.30219.208..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 280
  %.sroa.31220.208..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 288
  %.sroa.32221.208..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 296
  %.sroa.33222.208..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 304
  %.sroa.34223.208..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 312
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 328
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 336
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 360
  %.sroa.42.304..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 376
  %.sroa.43.304..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 384
  %.sroa.44.304..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 392
  %.sroa.45.304..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 400
  %.sroa.46.304..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 408
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  %wide.trip.count380 = zext i32 %i.i to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph351, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231
  %i.cl = phi double [ 0.000000e+00, %.lr.ph351 ], [ %i.rt, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ]
  %i.cm = phi double [ 0.000000e+00, %.lr.ph351 ], [ %i.rs, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ] ; 3 uses
  %i.cn = phi double [ 0.000000e+00, %.lr.ph351 ], [ %i.kq, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ] ; 3 uses
  %indvars.iv377 = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next378, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ] ; 4 uses
  %i.co = phi double [ 0.000000e+00, %.lr.ph351 ], [ %i.kr, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ]
  %i.cp = phi double [ 0.000000e+00, %.lr.ph351 ], [ %i.fd, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231 ]
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv377 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !54 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !28 ; 10 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !27 ; 11 uses
  %i.cw = sdiv i64 %i.ct, 4
  %i.cx = shl nsw i64 %i.cw, 2                    ; 3 uses
  %i.cy = sdiv i64 %i.ct, 2
  %i.cz = shl nsw i64 %i.cy, 1                    ; 6 uses
  %.off.i.i.i.i.i = add i64 %i.ct, 1
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = load <2 x double>, ptr %i.cv, align 16, !tbaa !32 ; 2 uses
  %i.db = fmul <2 x double> %i.da, %i.da          ; 3 uses
  %i.dc = icmp sgt i64 %i.ct, 3
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.de = load <2 x double>, ptr %i.dd, align 16, !tbaa !32 ; 2 uses
  %i.df = fmul <2 x double> %i.de, %i.de          ; 2 uses
  %i.dg = icmp samesign ugt i64 %i.ct, 7
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.q
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.df, %bb.q ], [ %i.dr, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.db, %bb.q ], [ %i.dm, %.lr.ph.i.i.i.i.i ]
  %i.dh = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.di = icmp sgt i64 %i.cz, %i.cx
  br i1 %i.di, label %bb.r, label %bb.s

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.q ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.q ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %i.db, %bb.q ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.df, %bb.q ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.05480.i.i.i.i.i
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !32 ; 2 uses
  %i.dl = fmul <2 x double> %i.dk, %i.dk
  %i.dm = fadd <2 x double> %.07278.i.i.i.i.i, %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.054.in79.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !32 ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp
  %i.dr = fadd <2 x double> %.07577.i.i.i.i.i, %i.dq ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.ds = icmp slt i64 %.054.i.i.i.i.i, %i.cx
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !198

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.du = load <2 x double>, ptr %i.dt, align 16, !tbaa !32 ; 2 uses
  %i.dv = fmul <2 x double> %i.du, %i.du
  %i.dw = fadd <2 x double> %i.dh, %i.dv
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i, %bb.p
  %.274.i.i.i.i.i = phi <2 x double> [ %i.db, %bb.p ], [ %i.dw, %bb.r ], [ %i.dh, %._crit_edge.i.i.i.i.i ]
  %i.dx = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 3 uses
  %i.dy = icmp slt i64 %i.cz, %i.ct
  br i1 %i.dy, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %i.dz = sub i64 %i.ct, %i.cz
  %xtraiter = and i64 %i.dz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.ee, %.lr.ph85.i.i.i.i.i.prol ], [ %i.cz, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.ed, %.lr.ph85.i.i.i.i.i.prol ], [ %i.dx, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.prol
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24 ; 2 uses
  %i.ec = fmul double %i.eb, %i.eb
  %i.ed = fadd double %.182.i.i.i.i.i.prol, %i.ec ; 3 uses
  %i.ee = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !199

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa547.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ed, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ee, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.dx, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ed, %.lr.ph85.i.i.i.i.i.prol ]
  %i.ef = sub i64 %i.cz, %i.ct
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.fa, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.ez, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !24 ; 2 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fadd double %.182.i.i.i.i.i, %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !24 ; 2 uses
  %i.eo = fmul double %i.en, %i.en
  %i.ep = fadd double %i.ek, %i.eo
  %i.eq = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !24 ; 2 uses
  %i.et = fmul double %i.es, %i.es
  %i.eu = fadd double %i.ep, %i.et
  %i.ev = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !24 ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = fadd double %i.eu, %i.ey                ; 2 uses
  %i.fa = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fa, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !200

bb.t:                                             ; preds = %bb.o
  %i.fb = load double, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.n, %bb.s, %bb.t
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.dx, %bb.s ], [ %i.fc, %bb.t ], [ %.lcssa547.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.ez, %.lr.ph85.i.i.i.i.i ]
end_hunk_0
