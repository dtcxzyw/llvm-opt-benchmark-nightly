Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_cubic_bezier?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1099
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_1clES4_iiRKNS1_IdLin1ELi1ELi0ELin1ELi1EEES7_S7_RS2_":bb.a
  %.182.i.i.i.i.i202.unr = phi double [ %i.mz, %.lr.ph85.i.i.i.i.i200.preheader ], [ %i.nh, %.lr.ph85.i.i.i.i.i200.prol ]
  %i.nj = sub i64 %i.ls, %i.lm
  %i.nk = icmp ugt i64 %i.nj, -4
  br i1 %i.nk, label %.loopexit, label %.lr.ph85.i.i.i.i.i200

.lr.ph85.i.i.i.i.i200:                            ; preds = %.lr.ph85.i.i.i.i.i200.prol.loopexit, %.lr.ph85.i.i.i.i.i200
  %.05283.i.i.i.i.i201 = phi i64 [ %i.om, %.lr.ph85.i.i.i.i.i200 ], [ %.05283.i.i.i.i.i201.unr, %.lr.ph85.i.i.i.i.i200.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i202 = phi double [ %i.ol, %.lr.ph85.i.i.i.i.i200 ], [ %.182.i.i.i.i.i202.unr, %.lr.ph85.i.i.i.i.i200.prol.loopexit ]
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.05283.i.i.i.i.i201
  %i.nm = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.05283.i.i.i.i.i201
  %i.nn = load double, ptr %i.nl, align 8, !tbaa !24
  %i.no = load double, ptr %i.nm, align 8, !tbaa !24
  %i.np = fmul double %i.nn, %i.no
  %i.nq = fadd double %.182.i.i.i.i.i202, %i.np
  %i.nr = add nsw i64 %.05283.i.i.i.i.i201, 1     ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.nr
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !24
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !24
  %i.nw = fmul double %i.nu, %i.nv
  %i.nx = fadd double %i.nq, %i.nw
  %i.ny = add nsw i64 %.05283.i.i.i.i.i201, 2     ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.ny
  %i.oa = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ny
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !24
  %i.oc = load double, ptr %i.oa, align 8, !tbaa !24
  %i.od = fmul double %i.ob, %i.oc
  %i.oe = fadd double %i.nx, %i.od
  %i.of = add nsw i64 %.05283.i.i.i.i.i201, 3     ; 2 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.of
  %i.oh = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.of
  %i.oi = load double, ptr %i.og, align 8, !tbaa !24
  %i.oj = load double, ptr %i.oh, align 8, !tbaa !24
  %i.ok = fmul double %i.oi, %i.oj
  %i.ol = fadd double %i.oe, %i.ok                ; 2 uses
  %i.om = add nsw i64 %.05283.i.i.i.i.i201, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i203.3 = icmp eq i64 %i.om, %i.lm
  br i1 %exitcond.not.i.i.i.i.i203.3, label %.loopexit, label %.lr.ph85.i.i.i.i.i200, !llvm.loop !200

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit213: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS3_INS4_13scalar_sum_opIddEEKNS3_ISD_KNS3_ISD_KNS3_INS4_17scalar_product_opIddEESB_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEEESN_EESN_EESN_EEEEEERKNS_9EigenBaseIT_EE.exit
  %i.on = fadd double %i.cn, 0.000000e+00
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231

.loopexit:                                        ; preds = %.lr.ph85.i.i.i.i.i200.prol.loopexit, %.lr.ph85.i.i.i.i.i200, %bb.ai
  %.0.i.i.i199.ph.ph = phi double [ %i.mz, %bb.ai ], [ %.lcssa547.unr, %.lr.ph85.i.i.i.i.i200.prol.loopexit ], [ %i.ol, %.lr.ph85.i.i.i.i.i200 ]
  %i.oo = fadd double %.0.i.i.i199.ph.ph, %i.cn   ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !27 ; 10 uses
  %i.or = load <2 x double>, ptr %i.oq, align 16, !tbaa !32
  %i.os = load <2 x double>, ptr %.pre, align 16, !tbaa !32
  %i.ot = fmul <2 x double> %i.or, %i.os          ; 3 uses
  %i.ou = icmp sgt i64 %i.lm, 3
  br i1 %i.ou, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.loopexit
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ow = load <2 x double>, ptr %i.ov, align 16, !tbaa !32
  %i.ox = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.oy = load <2 x double>, ptr %i.ox, align 16, !tbaa !32
  %i.oz = fmul <2 x double> %i.ow, %i.oy          ; 2 uses
  %i.pa = icmp samesign ugt i64 %i.lm, 7
  br i1 %i.pa, label %.lr.ph.i.i.i.i.i225, label %._crit_edge.i.i.i.i.i222

._crit_edge.i.i.i.i.i222:                         ; preds = %.lr.ph.i.i.i.i.i225, %bb.aj
  %.075.lcssa.i.i.i.i.i223 = phi <2 x double> [ %i.oz, %bb.aj ], [ %i.pp, %.lr.ph.i.i.i.i.i225 ]
  %.072.lcssa.i.i.i.i.i224 = phi <2 x double> [ %i.ot, %bb.aj ], [ %i.pi, %.lr.ph.i.i.i.i.i225 ]
  %i.pb = fadd <2 x double> %.075.lcssa.i.i.i.i.i223, %.072.lcssa.i.i.i.i.i224 ; 2 uses
  %i.pc = icmp sgt i64 %i.ls, %i.lq
  br i1 %i.pc, label %bb.ak, label %bb.al

.lr.ph.i.i.i.i.i225:                              ; preds = %bb.aj, %.lr.ph.i.i.i.i.i225
  %.05480.i.i.i.i.i226 = phi i64 [ %.054.i.i.i.i.i230, %.lr.ph.i.i.i.i.i225 ], [ 4, %bb.aj ] ; 4 uses
  %.054.in79.i.i.i.i.i227 = phi i64 [ %.05480.i.i.i.i.i226, %.lr.ph.i.i.i.i.i225 ], [ 0, %bb.aj ]
  %.07278.i.i.i.i.i228 = phi <2 x double> [ %i.pi, %.lr.ph.i.i.i.i.i225 ], [ %i.ot, %bb.aj ]
  %.07577.i.i.i.i.i229 = phi <2 x double> [ %i.pp, %.lr.ph.i.i.i.i.i225 ], [ %i.oz, %bb.aj ]
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %.05480.i.i.i.i.i226
  %i.pe = load <2 x double>, ptr %i.pd, align 16, !tbaa !32
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.05480.i.i.i.i.i226
  %i.pg = load <2 x double>, ptr %i.pf, align 16, !tbaa !32
  %i.ph = fmul <2 x double> %i.pe, %i.pg
  %i.pi = fadd <2 x double> %.07278.i.i.i.i.i228, %i.ph ; 2 uses
  %i.pj = add nuw nsw i64 %.054.in79.i.i.i.i.i227, 6 ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.pj
  %i.pl = load <2 x double>, ptr %i.pk, align 16, !tbaa !32
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.pj
  %i.pn = load <2 x double>, ptr %i.pm, align 16, !tbaa !32
  %i.po = fmul <2 x double> %i.pl, %i.pn
  %i.pp = fadd <2 x double> %.07577.i.i.i.i.i229, %i.po ; 2 uses
  %.054.i.i.i.i.i230 = add nuw nsw i64 %.05480.i.i.i.i.i226, 4 ; 2 uses
  %i.pq = icmp slt i64 %.054.i.i.i.i.i230, %i.lq
  br i1 %i.pq, label %.lr.ph.i.i.i.i.i225, label %._crit_edge.i.i.i.i.i222, !llvm.loop !198

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i222
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.lq
  %i.ps = load <2 x double>, ptr %i.pr, align 16, !tbaa !32
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.lq
  %i.pu = load <2 x double>, ptr %i.pt, align 16, !tbaa !32
  %i.pv = fmul <2 x double> %i.ps, %i.pu
  %i.pw = fadd <2 x double> %i.pb, %i.pv
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i.i.i.i.i222, %.loopexit
  %.274.i.i.i.i.i216 = phi <2 x double> [ %i.ot, %.loopexit ], [ %i.pw, %bb.ak ], [ %i.pb, %._crit_edge.i.i.i.i.i222 ]
  %i.px = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i216) ; 3 uses
  %i.py = icmp slt i64 %i.ls, %i.lm
  br i1 %i.py, label %.lr.ph85.i.i.i.i.i218.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231

.lr.ph85.i.i.i.i.i218.preheader:                  ; preds = %bb.al
  %i.pz = sub i64 %i.lm, %i.ls
  %xtraiter568 = and i64 %i.pz, 3                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph85.i.i.i.i.i218.prol.loopexit, label %.lr.ph85.i.i.i.i.i218.prol

.lr.ph85.i.i.i.i.i218.prol:                       ; preds = %.lr.ph85.i.i.i.i.i218.preheader, %.lr.ph85.i.i.i.i.i218.prol
  %.05283.i.i.i.i.i219.prol = phi i64 [ %i.qg, %.lr.ph85.i.i.i.i.i218.prol ], [ %i.ls, %.lr.ph85.i.i.i.i.i218.preheader ] ; 3 uses
  %.182.i.i.i.i.i220.prol = phi double [ %i.qf, %.lr.ph85.i.i.i.i.i218.prol ], [ %i.px, %.lr.ph85.i.i.i.i.i218.preheader ]
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph85.i.i.i.i.i218.prol ], [ 0, %.lr.ph85.i.i.i.i.i218.preheader ]
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %.05283.i.i.i.i.i219.prol
  %i.qb = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.05283.i.i.i.i.i219.prol
  %i.qc = load double, ptr %i.qa, align 8, !tbaa !24
  %i.qd = load double, ptr %i.qb, align 8, !tbaa !24
  %i.qe = fmul double %i.qc, %i.qd
  %i.qf = fadd double %.182.i.i.i.i.i220.prol, %i.qe ; 3 uses
  %i.qg = add nsw i64 %.05283.i.i.i.i.i219.prol, 1 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph85.i.i.i.i.i218.prol.loopexit, label %.lr.ph85.i.i.i.i.i218.prol, !llvm.loop !208

.lr.ph85.i.i.i.i.i218.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i218.prol, %.lr.ph85.i.i.i.i.i218.preheader
  %.lcssa550.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i218.preheader ], [ %i.qf, %.lr.ph85.i.i.i.i.i218.prol ]
  %.05283.i.i.i.i.i219.unr = phi i64 [ %i.ls, %.lr.ph85.i.i.i.i.i218.preheader ], [ %i.qg, %.lr.ph85.i.i.i.i.i218.prol ]
  %.182.i.i.i.i.i220.unr = phi double [ %i.px, %.lr.ph85.i.i.i.i.i218.preheader ], [ %i.qf, %.lr.ph85.i.i.i.i.i218.prol ]
  %i.qh = sub i64 %i.ls, %i.lm
  %i.qi = icmp ugt i64 %i.qh, -4
  br i1 %i.qi, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231, label %.lr.ph85.i.i.i.i.i218

.lr.ph85.i.i.i.i.i218:                            ; preds = %.lr.ph85.i.i.i.i.i218.prol.loopexit, %.lr.ph85.i.i.i.i.i218
  %.05283.i.i.i.i.i219 = phi i64 [ %i.rk, %.lr.ph85.i.i.i.i.i218 ], [ %.05283.i.i.i.i.i219.unr, %.lr.ph85.i.i.i.i.i218.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i220 = phi double [ %i.rj, %.lr.ph85.i.i.i.i.i218 ], [ %.182.i.i.i.i.i220.unr, %.lr.ph85.i.i.i.i.i218.prol.loopexit ]
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %.05283.i.i.i.i.i219
  %i.qk = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.05283.i.i.i.i.i219
  %i.ql = load double, ptr %i.qj, align 8, !tbaa !24
  %i.qm = load double, ptr %i.qk, align 8, !tbaa !24
  %i.qn = fmul double %i.ql, %i.qm
  %i.qo = fadd double %.182.i.i.i.i.i220, %i.qn
  %i.qp = add nsw i64 %.05283.i.i.i.i.i219, 1     ; 2 uses
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.qp
  %i.qr = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.qp
  %i.qs = load double, ptr %i.qq, align 8, !tbaa !24
  %i.qt = load double, ptr %i.qr, align 8, !tbaa !24
  %i.qu = fmul double %i.qs, %i.qt
  %i.qv = fadd double %i.qo, %i.qu
  %i.qw = add nsw i64 %.05283.i.i.i.i.i219, 2     ; 2 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.qw
  %i.qy = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.qw
  %i.qz = load double, ptr %i.qx, align 8, !tbaa !24
  %i.ra = load double, ptr %i.qy, align 8, !tbaa !24
  %i.rb = fmul double %i.qz, %i.ra
  %i.rc = fadd double %i.qv, %i.rb
  %i.rd = add nsw i64 %.05283.i.i.i.i.i219, 3     ; 2 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.rd
  %i.rf = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.rd
  %i.rg = load double, ptr %i.re, align 8, !tbaa !24
  %i.rh = load double, ptr %i.rf, align 8, !tbaa !24
  %i.ri = fmul double %i.rg, %i.rh
  %i.rj = fadd double %i.rc, %i.ri                ; 2 uses
  %i.rk = add nsw i64 %.05283.i.i.i.i.i219, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i221.3 = icmp eq i64 %i.rk, %i.lm
  br i1 %exitcond.not.i.i.i.i.i221.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231, label %.lr.ph85.i.i.i.i.i218, !llvm.loop !200

bb.am:                                            ; preds = %bb.ae
  %i.rl = load double, ptr %i.lo, align 8, !tbaa !24
  %i.rm = load double, ptr %.pre, align 8, !tbaa !24 ; 2 uses
  %i.rn = fmul double %i.rl, %i.rm
  %i.ro = fadd double %i.rn, %i.cn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !27
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !24
  %i.rs = fmul double %i.rr, %i.rm
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231: ; preds = %.lr.ph85.i.i.i.i.i218.prol.loopexit, %.lr.ph85.i.i.i.i.i218, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit213, %bb.al, %bb.am
  %i.rt = phi double [ %i.on, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit213 ], [ %i.oo, %bb.al ], [ %i.ro, %bb.am ], [ %i.oo, %.lr.ph85.i.i.i.i.i218 ], [ %i.oo, %.lr.ph85.i.i.i.i.i218.prol.loopexit ] ; 3 uses
  %.0.i.i.i217 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit213 ], [ %i.px, %bb.al ], [ %i.rs, %bb.am ], [ %.lcssa550.unr, %.lr.ph85.i.i.i.i.i218.prol.loopexit ], [ %i.rj, %.lr.ph85.i.i.i.i.i218 ]
  %i.ru = fadd double %.0.i.i.i217, %i.cm         ; 3 uses
  call void @free(ptr noundef %.pre) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next378, %wide.trip.count380
  br i1 %exitcond381.not, label %._crit_edge.loopexit, label %bb.n, !llvm.loop !209

bb.an:                                            ; preds = %.loopexit325
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body

._crit_edge.loopexit:                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3dotIS2_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS6_17scalar_product_opIdSA_EEE10ReturnTypeERKNS0_IS8_EE.exit231
  %i.rw = ptrtoint ptr %i.n to i64
  %i.rx = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.ry = insertelement <2 x double> %i.rx, double %i.fe, i64 1
  %i.rz = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.ru, i64 1
  %i.sb = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.kr, i64 1
  %i.sd = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %i.rt, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %.pr.i416421 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.m, %._crit_edge.loopexit ] ; 5 uses
  %i.sf = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.rw, %._crit_edge.loopexit ]
  %i.sg = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.sh = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.kr, %._crit_edge.loopexit ]
  %i.si = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.ks, %._crit_edge.loopexit ] ; 2 uses
  %i.sj = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.fe, %._crit_edge.loopexit ] ; 2 uses
  %i.sk = phi <2 x double> [ zeroinitializer, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.ry, %._crit_edge.loopexit ]
  %i.sl = phi <2 x double> [ zeroinitializer, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.sa, %._crit_edge.loopexit ]
  %i.sm = phi <2 x double> [ zeroinitializer, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.sc, %._crit_edge.loopexit ]
  %i.sn = phi <2 x double> [ zeroinitializer, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit ], [ %i.se, %._crit_edge.loopexit ]
  %i.so = fneg <2 x double> %i.sn                 ; 2 uses
  %15 = extractelement <2 x double> %i.so, i64 0
  %i.sp = fmul double %i.sh, %15
  %i.sq = call double @llvm.fmuladd.f64(double %i.sj, double %i.si, double %i.sp) ; 2 uses
  %i.sr = fcmp oeq double %i.sq, 0.000000e+00
  %i.ss = fmul double %i.sj, %i.si
  %i.st = fmul double %i.ss, f0x3DA5FD7FE1796495
  %.0 = select i1 %i.sr, double %i.st, double %i.sq
  %i.su = fmul <2 x double> %i.sm, %i.so
  %i.sv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sl, <2 x double> %i.su)
  %i.sw = insertelement <2 x double> poison, double %.0, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fdiv <2 x double> %i.sv, %i.sx          ; 9 uses
  %i.sz = fcmp olt <2 x double> %i.sy, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %16 = extractelement <2 x i1> %i.sz, i64 0
  %17 = extractelement <2 x i1> %i.sz, i64 1
  %or.cond = select i1 %16, i1 true, i1 %17
  br i1 %or.cond, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %._crit_edge
  invoke fastcc void @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_0clES4_iiS7_S7_RS2_"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %._crit_edge
  %i.tb = sext i32 %1 to i64                      ; 3 uses
  %i.tc = load ptr, ptr %0, align 8, !tbaa !21, !noalias !228 ; 3 uses
  %i.td = ptrtoaddr ptr %i.tc to i64              ; 4 uses
  %i.te = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.tb ; 10 uses
  %i.tf = load ptr, ptr %6, align 8, !tbaa !21, !noalias !229 ; 10 uses
  %i.tg = ptrtoaddr ptr %i.tf to i64              ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !22, !noalias !229 ; 25 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !20 ; 20 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !20 ; 20 uses
  %i.tn = icmp sgt i64 %i.ti, 0
  br i1 %i.tn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.aq
  %min.iters.check = icmp ult i64 %i.ti, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %ident.check = icmp ne i64 %i.tm, 1
  %ident.check471 = icmp ne i64 %i.tk, 1
  %i.to = or i1 %ident.check, %ident.check471
  br i1 %i.to, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.tp = shl nsw i64 %i.tb, 3
  %i.tq = add i64 %i.tp, %i.td
  %i.tr = sub i64 %i.tq, %i.tg
  %diff.check = icmp ugt i64 %i.tr, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ti, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %index ; 2 uses
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.te, i64 %index ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %wide.load = load <2 x double>, ptr %i.tt, align 8, !tbaa !24
  %wide.load472 = load <2 x double>, ptr %i.tu, align 8, !tbaa !24
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store <2 x double> %wide.load, ptr %i.ts, align 8, !tbaa !24
  store <2 x double> %wide.load472, ptr %i.tv, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tw = icmp eq i64 %index.next, %n.vec
  br i1 %i.tw, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ti, %n.vec
  br i1 %cmp.n, label %.loopexit535, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536:          ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter571 = and i64 %i.ti, 3                 ; 2 uses
  %lcmp.mod572.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod572.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.uc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ] ; 3 uses
  %prol.iter573 = phi i64 [ %prol.iter573.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ]
  %i.tx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.tm
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.tx
  %i.tz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.tk
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.tz
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !24
  store double %i.ub, ptr %i.ty, align 8, !tbaa !24
  %i.uc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter573.next = add i64 %prol.iter573, 1   ; 2 uses
  %prol.iter573.cmp.not = icmp eq i64 %prol.iter573.next, %xtraiter571
  br i1 %prol.iter573.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !215

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader536 ], [ %i.uc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ud = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ti
  %i.ue = icmp ugt i64 %i.ud, -4
  br i1 %i.ue, label %.loopexit535, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.uf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.tm
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.uf
  %i.uh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.tk
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.uh
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !24
  store double %i.uj, ptr %i.ug, align 8, !tbaa !24
  %i.uk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ul = mul nsw i64 %i.uk, %i.tm
  %i.um = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.ul
  %i.un = mul nsw i64 %i.uk, %i.tk
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.un
  %i.up = load double, ptr %i.uo, align 8, !tbaa !24
  store double %i.up, ptr %i.um, align 8, !tbaa !24
  %i.uq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ur = mul nsw i64 %i.uq, %i.tm
  %i.us = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.ur
  %i.ut = mul nsw i64 %i.uq, %i.tk
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.ut
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !24
  store double %i.uv, ptr %i.us, align 8, !tbaa !24
  %i.uw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ux = mul nsw i64 %i.uw, %i.tm
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.ux
  %i.uz = mul nsw i64 %i.uw, %i.tk
  %i.va = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.uz
  %i.vb = load double, ptr %i.va, align 8, !tbaa !24
  store double %i.vb, ptr %i.uy, align 8, !tbaa !24
  %i.vc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.vc, %i.ti
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit535, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !216

.loopexit535:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 4 uses
  %i.ve = load ptr, ptr %4, align 8, !tbaa !27    ; 5 uses
  %i.vf = ptrtoaddr ptr %i.ve to i64
  %min.iters.check480 = icmp ult i64 %i.ti, 16
  br i1 %min.iters.check480, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader, label %vector.scevcheck473

vector.scevcheck473:                              ; preds = %.loopexit535
  %ident.check474 = icmp ne i64 %i.tm, 1
  %ident.check475 = icmp ne i64 %i.tk, 1
  %i.vg = or i1 %ident.check474, %ident.check475
  br i1 %i.vg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader, label %vector.memcheck476

vector.memcheck476:                               ; preds = %vector.scevcheck473
  %i.vh = add i64 %i.tg, 8                        ; 2 uses
  %i.vi = shl nsw i64 %i.tb, 3
  %i.vj = add i64 %i.vi, %i.td
  %i.vk = sub i64 %i.vj, %i.vh
  %diff.check477 = icmp ugt i64 %i.vk, -32
  %i.vl = sub i64 %i.vf, %i.vh
  %diff.check478 = icmp ugt i64 %i.vl, -32
  %conflict.rdx = or i1 %diff.check477, %diff.check478
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck476
  %n.vec482 = and i64 %i.ti, 9223372036854775804  ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next489, %vector.body483 ] ; 4 uses
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %index484 ; 2 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.te, i64 %index484 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %wide.load485 = load <2 x double>, ptr %i.vn, align 8, !tbaa !24
  %wide.load486 = load <2 x double>, ptr %i.vo, align 8, !tbaa !24
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %index484 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load487 = load <2 x double>, ptr %i.vp, align 8, !tbaa !24
  %wide.load488 = load <2 x double>, ptr %i.vq, align 8, !tbaa !24
  %i.vr = fmul <2 x double> %broadcast.splat, %wide.load487
  %i.vs = fmul <2 x double> %broadcast.splat, %wide.load488
  %i.vt = fadd <2 x double> %wide.load485, %i.vr
  %i.vu = fadd <2 x double> %wide.load486, %i.vs
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <2 x double> %i.vt, ptr %i.vm, align 8, !tbaa !24
  store <2 x double> %i.vu, ptr %i.vv, align 8, !tbaa !24
  %index.next489 = add nuw i64 %index484, 4       ; 2 uses
  %i.vw = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.vw, label %middle.block490, label %vector.body483, !llvm.loop !217

middle.block490:                                  ; preds = %vector.body483
  %cmp.n491 = icmp eq i64 %i.ti, %n.vec482
  br i1 %cmp.n491, label %.loopexit534, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader:          ; preds = %vector.memcheck476, %vector.scevcheck473, %.loopexit535, %middle.block490
  %.05.i.i.i.i.i.i.i.i.i.i233.ph = phi i64 [ 0, %vector.memcheck476 ], [ 0, %vector.scevcheck473 ], [ 0, %.loopexit535 ], [ %n.vec482, %middle.block490 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i233.ph, 1
  %xtraiter574 = and i64 %i.ti, 1
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader
  %i.vx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233.ph, %i.tm
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.vx
  %i.vz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233.ph, %i.tk
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.vz
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !24
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %.05.i.i.i.i.i.i.i.i.i.i233.ph
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !24
  %i.we = extractelement <2 x double> %i.sy, i64 0
  %i.wf = fmul double %i.we, %i.wd
  %i.wg = fadd double %i.wb, %i.wf
  store double %i.wg, ptr %i.vy, align 8, !tbaa !24
  %i.wh = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i233.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader
  %.05.i.i.i.i.i.i.i.i.i.i233.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i233.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader ], [ %i.wh, %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol ]
  %i.wi = icmp eq i64 %i.ti, %.neg
  br i1 %i.wi, label %.loopexit534, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader.new:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol.loopexit
  %i.wj = extractelement <2 x double> %i.sy, i64 0
  %i.wk = extractelement <2 x double> %i.sy, i64 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i232

.lr.ph.i.i.i.i.i.i.i.i.i.i232:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i232, %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i233 = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i233.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i232.preheader.new ], [ %i.xe, %.lr.ph.i.i.i.i.i.i.i.i.i.i232 ] ; 5 uses
  %i.wl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233, %i.tm
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.wl
  %i.wn = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233, %i.tk
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.wn
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !24
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %.05.i.i.i.i.i.i.i.i.i.i233
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !24
  %i.ws = fmul double %i.wj, %i.wr
  %i.wt = fadd double %i.wp, %i.ws
  store double %i.wt, ptr %i.wm, align 8, !tbaa !24
  %i.wu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233, 1 ; 3 uses
  %i.wv = mul nsw i64 %i.wu, %i.tm
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.wv
  %i.wx = mul nsw i64 %i.wu, %i.tk
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.wx
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !24
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.wu
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !24
  %i.xc = fmul double %i.wk, %i.xb
  %i.xd = fadd double %i.wz, %i.xc
  store double %i.xd, ptr %i.ww, align 8, !tbaa !24
  %i.xe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i233, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i234.1 = icmp eq i64 %i.xe, %i.ti
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i234.1, label %.loopexit534, label %.lr.ph.i.i.i.i.i.i.i.i.i.i232, !llvm.loop !218

.loopexit534:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i232.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i232, %middle.block490
  %i.xf = sext i32 %2 to i64                      ; 3 uses
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.xf ; 10 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 4 uses
  %i.xi = load ptr, ptr %5, align 8, !tbaa !27    ; 5 uses
  %i.xj = ptrtoaddr ptr %i.xi to i64
  %min.iters.check501 = icmp ult i64 %i.ti, 16
  br i1 %min.iters.check501, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader, label %vector.scevcheck493

vector.scevcheck493:                              ; preds = %.loopexit534
  %ident.check494 = icmp ne i64 %i.tm, 1
  %ident.check495 = icmp ne i64 %i.tk, 1
  %i.xk = or i1 %ident.check494, %ident.check495
  br i1 %i.xk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %vector.scevcheck493
  %i.xl = add i64 %i.tg, 16                       ; 2 uses
  %i.xm = shl nsw i64 %i.xf, 3
  %i.xn = add i64 %i.xm, %i.td
  %i.xo = sub i64 %i.xn, %i.xl
  %diff.check497 = icmp ugt i64 %i.xo, -32
  %i.xp = sub i64 %i.xj, %i.xl
  %diff.check498 = icmp ugt i64 %i.xp, -32
  %conflict.rdx499 = or i1 %diff.check497, %diff.check498
  br i1 %conflict.rdx499, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader, label %vector.ph502

vector.ph502:                                     ; preds = %vector.memcheck496
  %n.vec503 = and i64 %i.ti, 9223372036854775804  ; 3 uses
  %broadcast.splat505 = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph502
  %index507 = phi i64 [ 0, %vector.ph502 ], [ %index.next512, %vector.body506 ] ; 4 uses
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %index507 ; 2 uses
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %index507 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %wide.load508 = load <2 x double>, ptr %i.xr, align 8, !tbaa !24
  %wide.load509 = load <2 x double>, ptr %i.xs, align 8, !tbaa !24
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %index507 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %wide.load510 = load <2 x double>, ptr %i.xt, align 8, !tbaa !24
  %wide.load511 = load <2 x double>, ptr %i.xu, align 8, !tbaa !24
  %i.xv = fmul <2 x double> %broadcast.splat505, %wide.load510
  %i.xw = fmul <2 x double> %broadcast.splat505, %wide.load511
  %i.xx = fadd <2 x double> %wide.load508, %i.xv
  %i.xy = fadd <2 x double> %wide.load509, %i.xw
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  store <2 x double> %i.xx, ptr %i.xq, align 8, !tbaa !24
  store <2 x double> %i.xy, ptr %i.xz, align 8, !tbaa !24
  %index.next512 = add nuw i64 %index507, 4       ; 2 uses
  %i.ya = icmp eq i64 %index.next512, %n.vec503
  br i1 %i.ya, label %middle.block513, label %vector.body506, !llvm.loop !219

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %i.ti, %n.vec503
  br i1 %cmp.n514, label %.loopexit533, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader:          ; preds = %vector.memcheck496, %vector.scevcheck493, %.loopexit534, %middle.block513
  %.05.i.i.i.i.i.i.i.i.i.i236.ph = phi i64 [ 0, %vector.memcheck496 ], [ 0, %vector.scevcheck493 ], [ 0, %.loopexit534 ], [ %n.vec503, %middle.block513 ] ; 6 uses
  %.neg583 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i236.ph, 1
  %xtraiter577 = and i64 %i.ti, 1
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader
  %i.yb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236.ph, %i.tm
  %i.yc = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.yb
  %i.yd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236.ph, %i.tk
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.yd
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !24
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %.05.i.i.i.i.i.i.i.i.i.i236.ph
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !24
  %i.yi = extractelement <2 x double> %i.sy, i64 1
  %i.yj = fmul double %i.yi, %i.yh
  %i.yk = fadd double %i.yf, %i.yj
  store double %i.yk, ptr %i.yc, align 8, !tbaa !24
  %i.yl = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i236.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader
  %.05.i.i.i.i.i.i.i.i.i.i236.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i236.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader ], [ %i.yl, %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol ]
  %i.ym = icmp eq i64 %i.ti, %.neg583
  br i1 %i.ym, label %.loopexit533, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader.new:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol.loopexit
  %i.yn = extractelement <2 x double> %i.sy, i64 1
  %i.yo = extractelement <2 x double> %i.sy, i64 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i235

.lr.ph.i.i.i.i.i.i.i.i.i.i235:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i235, %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i236 = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i236.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i235.preheader.new ], [ %i.zi, %.lr.ph.i.i.i.i.i.i.i.i.i.i235 ] ; 5 uses
  %i.yp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236, %i.tm
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.yp
  %i.yr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236, %i.tk
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.yr
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !24
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %.05.i.i.i.i.i.i.i.i.i.i236
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !24
  %i.yw = fmul double %i.yn, %i.yv
  %i.yx = fadd double %i.yt, %i.yw
  store double %i.yx, ptr %i.yq, align 8, !tbaa !24
  %i.yy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236, 1 ; 3 uses
  %i.yz = mul nsw i64 %i.yy, %i.tm
  %i.za = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.yz
  %i.zb = mul nsw i64 %i.yy, %i.tk
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.zb
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !24
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %i.yy
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !24
  %i.zg = fmul double %i.yo, %i.zf
  %i.zh = fadd double %i.zd, %i.zg
  store double %i.zh, ptr %i.za, align 8, !tbaa !24
  %i.zi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i236, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i237.1 = icmp eq i64 %i.zi, %i.ti
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i237.1, label %.loopexit533, label %.lr.ph.i.i.i.i.i.i.i.i.i.i235, !llvm.loop !220

.loopexit533:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i235.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i235, %middle.block513
  %i.zj = getelementptr inbounds nuw i8, ptr %i.tf, i64 24 ; 6 uses
  %min.iters.check522 = icmp ult i64 %i.ti, 24
  br i1 %min.iters.check522, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader, label %vector.scevcheck516

vector.scevcheck516:                              ; preds = %.loopexit533
  %ident.check517 = icmp ne i64 %i.tm, 1
  %ident.check518 = icmp ne i64 %i.tk, 1
  %i.zk = or i1 %ident.check517, %ident.check518
  br i1 %i.zk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader, label %vector.memcheck519

vector.memcheck519:                               ; preds = %vector.scevcheck516
  %i.zl = shl nsw i64 %i.xf, 3
  %i.zm = add i64 %i.zl, %i.td
  %i.zn = sub i64 %i.tg, %i.zm
  %i.zo = add i64 %i.zn, 23
  %diff.check520 = icmp ult i64 %i.zo, 31
  br i1 %diff.check520, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %vector.memcheck519
  %n.vec524 = and i64 %i.ti, 9223372036854775804  ; 3 uses
  br label %vector.body525

vector.body525:                                   ; preds = %vector.body525, %vector.ph523
  %index526 = phi i64 [ 0, %vector.ph523 ], [ %index.next529, %vector.body525 ] ; 3 uses
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %index526 ; 2 uses
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %index526 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %wide.load527 = load <2 x double>, ptr %i.zq, align 8, !tbaa !24
  %wide.load528 = load <2 x double>, ptr %i.zr, align 8, !tbaa !24
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store <2 x double> %wide.load527, ptr %i.zp, align 8, !tbaa !24
  store <2 x double> %wide.load528, ptr %i.zs, align 8, !tbaa !24
  %index.next529 = add nuw i64 %index526, 4       ; 2 uses
  %i.zt = icmp eq i64 %index.next529, %n.vec524
  br i1 %i.zt, label %middle.block530, label %vector.body525, !llvm.loop !221

middle.block530:                                  ; preds = %vector.body525
  %cmp.n531 = icmp eq i64 %i.ti, %n.vec524
  br i1 %cmp.n531, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader:          ; preds = %vector.memcheck519, %vector.scevcheck516, %.loopexit533, %middle.block530
  %.05.i.i.i.i.i.i.i.i.i.i240.ph = phi i64 [ 0, %vector.memcheck519 ], [ 0, %vector.scevcheck516 ], [ 0, %.loopexit533 ], [ %n.vec524, %middle.block530 ] ; 3 uses
  %xtraiter580 = and i64 %i.ti, 3                 ; 2 uses
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol
  %.05.i.i.i.i.i.i.i.i.i.i240.prol = phi i64 [ %i.zz, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i240.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader ] ; 3 uses
  %prol.iter582 = phi i64 [ %prol.iter582.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader ]
  %i.zu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240.prol, %i.tm
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.zu
  %i.zw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240.prol, %i.tk
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.zw
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !24
  store double %i.zy, ptr %i.zv, align 8, !tbaa !24
  %i.zz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240.prol, 1 ; 2 uses
  %prol.iter582.next = add i64 %prol.iter582, 1   ; 2 uses
  %prol.iter582.cmp.not = icmp eq i64 %prol.iter582.next, %xtraiter580
  br i1 %prol.iter582.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol, !llvm.loop !222

.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader
  %.05.i.i.i.i.i.i.i.i.i.i240.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i240.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.preheader ], [ %i.zz, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol ]
  %i.aaa = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240.ph, %i.ti
  %i.aab = icmp ugt i64 %i.aaa, -4
  br i1 %i.aab, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239

.lr.ph.i.i.i.i.i.i.i.i.i.i239:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i239
  %.05.i.i.i.i.i.i.i.i.i.i240 = phi i64 [ %i.aaz, %.lr.ph.i.i.i.i.i.i.i.i.i.i239 ], [ %.05.i.i.i.i.i.i.i.i.i.i240.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit ] ; 6 uses
  %i.aac = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, %i.tm
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.aac
  %i.aae = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, %i.tk
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.aae
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !24
  store double %i.aag, ptr %i.aad, align 8, !tbaa !24
  %i.aah = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, 1 ; 2 uses
  %i.aai = mul nsw i64 %i.aah, %i.tm
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.aai
  %i.aak = mul nsw i64 %i.aah, %i.tk
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.aak
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !24
  store double %i.aam, ptr %i.aaj, align 8, !tbaa !24
  %i.aan = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, 2 ; 2 uses
  %i.aao = mul nsw i64 %i.aan, %i.tm
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.aao
  %i.aaq = mul nsw i64 %i.aan, %i.tk
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.aaq
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !24
  store double %i.aas, ptr %i.aap, align 8, !tbaa !24
  %i.aat = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, 3 ; 2 uses
  %i.aau = mul nsw i64 %i.aat, %i.tm
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.aau
  %i.aaw = mul nsw i64 %i.aat, %i.tk
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.aaw
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !24
  store double %i.aay, ptr %i.aav, align 8, !tbaa !24
  %i.aaz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i240, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i241.3 = icmp eq i64 %i.aaz, %i.ti
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i241.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242, label %.lr.ph.i.i.i.i.i.i.i.i.i.i239, !llvm.loop !223

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i239.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i239, %middle.block530, %bb.aq, %bb.ao
  %.not4.i.i.i = icmp eq ptr %.pr.i416421, %i.sg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242, %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.abl, %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i ], [ %.pr.i416421, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242 ] ; 5 uses
  %i.aba = load ptr, ptr %.05.i.i.i, align 8, !tbaa !54 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.aba, %i.abc
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aba, %.lr.ph.i.i.i ] ; 2 uses
  %i.abd = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !27
  call void @free(ptr noundef %i.abd) #20
  %i.abe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.abe, %i.abc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.abf = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.aba, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.abf, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !56
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abf to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %i.abk) #24
  br label %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ar, %_ZSt8_DestroyIPN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.abl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.abl, %i.sg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EEEvPT_.exit.i.i.i, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit242
  %.not.i.i1.i = icmp eq ptr %.pr.i416421, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.abm = ptrtoint ptr %.pr.i416421 to i64
  %i.abn = sub i64 %i.sf, %i.abm
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i416421, i64 noundef %i.abn) #24
  br label %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

.body:                                            ; preds = %bb.ap, %bb.an, %bb.m
  %.pn137.pn.pn.pn = phi { ptr, i32 } [ %.pn137.pn.pn, %bb.m ], [ %i.ta, %bb.ap ], [ %i.rv, %bb.an ]
  call void @_ZNSt6vectorIS_IN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn137.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef double @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_2clES4_iiS4_RKNS1_IdLin1ELi1ELi0ELin1ELi1EEERi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.3", align 8   ; 8 uses
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sub nsw i32 %2, %i.a                     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
end_hunk_0
