Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimization_algorithm_dogleg?download=true
inline.NumInlined: 1209
inline.NumDeleted: 655
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3g2o27OptimizationAlgorithmDogleg5solveEib:bb.a
  %.182.i.i.i.i.prol = phi double [ %i.dr, %.lr.ph85.i.i.i.i.prol ], [ %i.dl, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.do = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i.prol
  %i.dp = load double, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  %i.dq = fmul double %i.dp, %i.dp
  %i.dr = fadd double %.182.i.i.i.i.prol, %i.dq   ; 3 uses
  %i.ds = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !91

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa740.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.dr, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.cn, %.lr.ph85.i.i.i.i.preheader ], [ %i.ds, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.dl, %.lr.ph85.i.i.i.i.preheader ], [ %i.dr, %.lr.ph85.i.i.i.i.prol ]
  %i.dt = sub i64 %i.cn, %i.cb
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %.loopexit512, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.eo, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.en, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !20 ; 2 uses
  %i.dx = fmul double %i.dw, %i.dw
  %i.dy = fadd double %.182.i.i.i.i, %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !20 ; 2 uses
  %i.ec = fmul double %i.eb, %i.eb
  %i.ed = fadd double %i.dy, %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !20 ; 2 uses
  %i.eh = fmul double %i.eg, %i.eg
  %i.ei = fadd double %i.ed, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = fmul double %i.el, %i.el
  %i.en = fadd double %i.ei, %i.em                ; 2 uses
  %i.eo = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.eo, %i.cb
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit512, label %.lr.ph85.i.i.i.i, !llvm.loop !93

.loopexit512:                                     ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.y
  %.0.i.i.ph.ph = phi double [ %i.dl, %bb.y ], [ %.lcssa740.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.en, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ep = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 10 uses
  %i.eq = load <2 x double>, ptr %i.ep, align 1, !tbaa !19
  %i.er = load <2 x double>, ptr %i.by, align 1, !tbaa !19
  %i.es = fmul <2 x double> %i.eq, %i.er          ; 3 uses
  %i.et = icmp sgt i64 %i.cb, 3
  br i1 %i.et, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.loopexit512
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ev = load <2 x double>, ptr %i.eu, align 1, !tbaa !19
  %i.ew = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ex = load <2 x double>, ptr %i.ew, align 1, !tbaa !19
  %i.ey = fmul <2 x double> %i.ev, %i.ex          ; 2 uses
  %i.ez = icmp samesign ugt i64 %i.cb, 7
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.z
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ey, %bb.z ], [ %i.fo, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.es, %bb.z ], [ %i.fh, %.lr.ph.i.i.i.i.i ]
  %i.fa = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.fb = icmp sgt i64 %i.cn, %i.cl
  br i1 %i.fb, label %bb.aa, label %bb.ab

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.z ] ; 4 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.z ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.fh, %.lr.ph.i.i.i.i.i ], [ %i.es, %bb.z ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.ey, %bb.z ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.05480.i.i.i.i.i
  %i.fd = load <2 x double>, ptr %i.fc, align 1, !tbaa !19
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.05480.i.i.i.i.i
  %i.ff = load <2 x double>, ptr %i.fe, align 1, !tbaa !19
  %i.fg = fmul <2 x double> %i.fd, %i.ff
  %i.fh = fadd <2 x double> %.07278.i.i.i.i.i, %i.fg ; 2 uses
  %i.fi = add nuw nsw i64 %.054.in79.i.i.i.i.i, 6 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.fi
  %i.fk = load <2 x double>, ptr %i.fj, align 1, !tbaa !19
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.fi
  %i.fm = load <2 x double>, ptr %i.fl, align 1, !tbaa !19
  %i.fn = fmul <2 x double> %i.fk, %i.fm
  %i.fo = fadd <2 x double> %.07577.i.i.i.i.i, %i.fn ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.fp = icmp slt i64 %.054.i.i.i.i.i, %i.cl
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !94

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.cl
  %i.fr = load <2 x double>, ptr %i.fq, align 1, !tbaa !19
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cl
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !19
  %i.fu = fmul <2 x double> %i.fr, %i.ft
  %i.fv = fadd <2 x double> %i.fa, %i.fu
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i, %.loopexit512
  %.274.i.i.i.i.i = phi <2 x double> [ %i.es, %.loopexit512 ], [ %i.fv, %bb.aa ], [ %i.fa, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %shift672 = shufflevector <2 x double> %.274.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop673 = fadd <2 x double> %.274.i.i.i.i.i, %shift672
  %i.fw = extractelement <2 x double> %foldExtExtBinop673, i64 0 ; 3 uses
  %i.fx = icmp slt i64 %i.cn, %i.cb
  br i1 %i.fx, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.ab
  %i.fy = sub i64 %i.cb, %i.cn
  %xtraiter743 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod744.not = icmp eq i64 %xtraiter743, 0
  br i1 %lcmp.mod744.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i.i.prol ], [ %i.cn, %.lr.ph85.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.ge, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fw, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter745 = phi i64 [ %prol.iter745.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.05283.i.i.i.i.i.prol
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i.i.prol
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !20
  %i.gc = load double, ptr %i.fz, align 8, !tbaa !20
  %i.gd = fmul double %i.gb, %i.gc
  %i.ge = fadd double %.182.i.i.i.i.i.prol, %i.gd ; 3 uses
  %i.gf = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter745.next = add i64 %prol.iter745, 1   ; 2 uses
  %prol.iter745.cmp.not = icmp eq i64 %prol.iter745.next, %xtraiter743
  br i1 %prol.iter745.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !95

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa737.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ge, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.cn, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.gf, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fw, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ge, %.lr.ph85.i.i.i.i.i.prol ]
  %i.gg = sub i64 %i.cn, %i.cb
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.hj, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i = phi double [ %i.hi, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.05283.i.i.i.i.i
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05283.i.i.i.i.i
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !20
  %i.gl = load double, ptr %i.gi, align 8, !tbaa !20
  %i.gm = fmul double %i.gk, %i.gl
  %i.gn = fadd double %.182.i.i.i.i.i, %i.gm
  %i.go = add nsw i64 %.05283.i.i.i.i.i, 1        ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.go
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.go
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !20
  %i.gs = load double, ptr %i.gp, align 8, !tbaa !20
  %i.gt = fmul double %i.gr, %i.gs
  %i.gu = fadd double %i.gn, %i.gt
  %i.gv = add nsw i64 %.05283.i.i.i.i.i, 2        ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.gv
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !20
  %i.gz = load double, ptr %i.gw, align 8, !tbaa !20
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = fadd double %i.gu, %i.ha
  %i.hc = add nsw i64 %.05283.i.i.i.i.i, 3        ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.hc
  %i.he = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.hc
  %i.hf = load double, ptr %i.he, align 8, !tbaa !20
  %i.hg = load double, ptr %i.hd, align 8, !tbaa !20
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = fadd double %i.hb, %i.hh                ; 2 uses
  %i.hj = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.hj, %i.cb
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !96

bb.ac:                                            ; preds = %bb.u
  %i.hk = load double, ptr %i.by, align 8, !tbaa !20 ; 3 uses
  %i.hl = fmul double %i.hk, %i.hk
  %i.hm = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !20
  %i.ho = fmul double %i.hk, %i.hn
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, %bb.ab, %bb.ac
  %.0.i.i333 = phi double [ 0.000000e+00, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ %.0.i.i.ph.ph, %bb.ab ], [ %i.hl, %bb.ac ], [ %.0.i.i.ph.ph, %.lr.ph85.i.i.i.i.i ], [ %.0.i.i.ph.ph, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ %i.fw, %bb.ab ], [ %i.ho, %bb.ac ], [ %.lcssa737.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.hi, %.lr.ph85.i.i.i.i.i ]
  %i.hp = fdiv double %.0.i.i333, %.0.i.i.i       ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hs, %i.cb
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 noundef %i.cb, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8, !tbaa !80
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.ht = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3dotINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ] ; 7 uses
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !62 ; 8 uses
  %i.hv = ptrtoaddr ptr %i.hu to i64
  %i.hw = sdiv i64 %i.ht, 2
  %i.hx = shl nsw i64 %i.hw, 1                    ; 6 uses
  %i.hy = icmp sgt i64 %i.ht, 1
  br i1 %i.hy, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.ad
  %i.hz = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ad
  %i.ia = icmp slt i64 %i.hx, %i.ht
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ib = sub i64 %i.ht, %i.hx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ib, 6
  %i.ic = sub i64 %i.bz, %i.hv
  %diff.check = icmp ugt i64 %i.ic, -32
  %or.cond666 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond666, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ib, -4                      ; 3 uses
  %i.id = add i64 %i.hx, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = add i64 %i.hx, %index                   ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ie ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <2 x double>, ptr %i.ig, align 8, !tbaa !20
  %wide.load598 = load <2 x double>, ptr %i.ih, align 8, !tbaa !20
  %i.ii = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ij = fmul <2 x double> %broadcast.splat, %wide.load598
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <2 x double> %i.ii, ptr %i.if, align 8, !tbaa !20
  store <2 x double> %i.ij, ptr %i.ik, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736

.lr.ph.i.i.i.i.i.i.i.i.i.preheader736:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.hx, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.id, %middle.block ] ; 4 uses
  %i.im = sub i64 %i.ht, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter746 = and i64 %i.im, 3                 ; 2 uses
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod747.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736 ] ; 3 uses
  %prol.iter748 = phi i64 [ %prol.iter748.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736 ]
  %i.in = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.io = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ip = load double, ptr %i.io, align 8, !tbaa !20
  %i.iq = fmul double %i.hp, %i.ip
  store double %i.iq, ptr %i.in, align 8, !tbaa !20
  %i.ir = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter748.next = add i64 %prol.iter748, 1   ; 2 uses
  %prol.iter748.cmp.not = icmp eq i64 %prol.iter748.next, %xtraiter746
  br i1 %prol.iter748.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !100

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader736 ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.is = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.ht
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !20
  %i.ix = fmul double %i.hp, %i.iw
  store double %i.ix, ptr %i.iu, align 8, !tbaa !20
  %i.iy = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.iy
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.iy
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !20
  %i.jc = fmul double %i.hp, %i.jb
  store double %i.jc, ptr %i.iz, align 8, !tbaa !20
  %i.jd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.jd
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.jd
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !20
  %i.jh = fmul double %i.hp, %i.jg
  store double %i.jh, ptr %i.je, align 8, !tbaa !20
  %i.ji = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ji
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ji
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !20
  %i.jm = fmul double %i.hp, %i.jl
  store double %i.jm, ptr %i.jj, align 8, !tbaa !20
  %i.jn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jn, %i.ht
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !101

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.011.i.i.i.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.011.i.i.i.i.i.i.i.i
  %i.jq = load <2 x double>, ptr %i.jp, align 1, !tbaa !19
  %i.jr = fmul <2 x double> %i.hz, %i.jq
  store <2 x double> %i.jr, ptr %i.jo, align 16, !tbaa !19
  %i.js = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jt = icmp slt i64 %i.js, %i.hx
  br i1 %i.jt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !102

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ju = load i64, ptr %i.hr, align 8, !tbaa !80 ; 10 uses
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4normEv.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEKNS_3MapISA_Li0ENS_6StrideILi0ELi0EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.jw = load ptr, ptr %i.hq, align 8, !tbaa !62 ; 11 uses
  %i.jx = sdiv i64 %i.ju, 4
  %i.jy = shl nsw i64 %i.jx, 2                    ; 3 uses
  %i.jz = sdiv i64 %i.ju, 2
  %i.ka = shl nsw i64 %i.jz, 1                    ; 6 uses
  %.off.i.i.i.i.i82 = add i64 %i.ju, 1
  %.not.i.i.i.i.i83 = icmp ult i64 %.off.i.i.i.i.i82, 3
  br i1 %.not.i.i.i.i.i83, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kb = load <2 x double>, ptr %i.jw, align 16, !tbaa !19 ; 2 uses
  %i.kc = fmul <2 x double> %i.kb, %i.kb          ; 3 uses
  %i.kd = icmp sgt i64 %i.ju, 3
  br i1 %i.kd, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kf = load <2 x double>, ptr %i.ke, align 16, !tbaa !19 ; 2 uses
  %i.kg = fmul <2 x double> %i.kf, %i.kf          ; 2 uses
  %i.kh = icmp samesign ugt i64 %i.ju, 7
  br i1 %i.kh, label %.lr.ph.i.i.i.i.i93, label %._crit_edge.i.i.i.i.i90

._crit_edge.i.i.i.i.i90:                          ; preds = %.lr.ph.i.i.i.i.i93, %bb.ag
  %.075.lcssa.i.i.i.i.i91 = phi <2 x double> [ %i.kg, %bb.ag ], [ %i.ks, %.lr.ph.i.i.i.i.i93 ]
  %.072.lcssa.i.i.i.i.i92 = phi <2 x double> [ %i.kc, %bb.ag ], [ %i.kn, %.lr.ph.i.i.i.i.i93 ]
  %i.ki = fadd <2 x double> %.075.lcssa.i.i.i.i.i91, %.072.lcssa.i.i.i.i.i92 ; 2 uses
  %i.kj = icmp sgt i64 %i.ka, %i.jy
  br i1 %i.kj, label %bb.ah, label %bb.ai

.lr.ph.i.i.i.i.i93:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i93
  %.05480.i.i.i.i.i94 = phi i64 [ %.054.i.i.i.i.i98, %.lr.ph.i.i.i.i.i93 ], [ 4, %bb.ag ] ; 3 uses
  %.054.in79.i.i.i.i.i95 = phi i64 [ %.05480.i.i.i.i.i94, %.lr.ph.i.i.i.i.i93 ], [ 0, %bb.ag ]
  %.07278.i.i.i.i.i96 = phi <2 x double> [ %i.kn, %.lr.ph.i.i.i.i.i93 ], [ %i.kc, %bb.ag ]
  %.07577.i.i.i.i.i97 = phi <2 x double> [ %i.ks, %.lr.ph.i.i.i.i.i93 ], [ %i.kg, %bb.ag ]
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.05480.i.i.i.i.i94
  %i.kl = load <2 x double>, ptr %i.kk, align 16, !tbaa !19 ; 2 uses
  %i.km = fmul <2 x double> %i.kl, %i.kl
  %i.kn = fadd <2 x double> %.07278.i.i.i.i.i96, %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.054.in79.i.i.i.i.i95
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kq = load <2 x double>, ptr %i.kp, align 16, !tbaa !19 ; 2 uses
  %i.kr = fmul <2 x double> %i.kq, %i.kq
  %i.ks = fadd <2 x double> %.07577.i.i.i.i.i97, %i.kr ; 2 uses
  %.054.i.i.i.i.i98 = add nuw nsw i64 %.05480.i.i.i.i.i94, 4 ; 2 uses
  %i.kt = icmp slt i64 %.054.i.i.i.i.i98, %i.jy
  br i1 %i.kt, label %.lr.ph.i.i.i.i.i93, label %._crit_edge.i.i.i.i.i90, !llvm.loop !103

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i90
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jy
  %i.kv = load <2 x double>, ptr %i.ku, align 16, !tbaa !19 ; 2 uses
  %i.kw = fmul <2 x double> %i.kv, %i.kv
  %i.kx = fadd <2 x double> %i.ki, %i.kw
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i.i90, %bb.af
  %.274.i.i.i.i.i84 = phi <2 x double> [ %i.kc, %bb.af ], [ %i.kx, %bb.ah ], [ %i.ki, %._crit_edge.i.i.i.i.i90 ] ; 2 uses
  %shift675 = shufflevector <2 x double> %.274.i.i.i.i.i84, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop676 = fadd <2 x double> %.274.i.i.i.i.i84, %shift675
  %i.ky = extractelement <2 x double> %foldExtExtBinop676, i64 0 ; 3 uses
  %i.kz = icmp slt i64 %i.ka, %i.ju
  br i1 %i.kz, label %.lr.ph85.i.i.i.i.i86.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4normEv.exit

.lr.ph85.i.i.i.i.i86.preheader:                   ; preds = %bb.ai
  %i.la = sub i64 %i.ju, %i.ka
  %xtraiter749 = and i64 %i.la, 3                 ; 2 uses
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %.lr.ph85.i.i.i.i.i86.prol.loopexit, label %.lr.ph85.i.i.i.i.i86.prol

.lr.ph85.i.i.i.i.i86.prol:                        ; preds = %.lr.ph85.i.i.i.i.i86.preheader, %.lr.ph85.i.i.i.i.i86.prol
  %.05283.i.i.i.i.i87.prol = phi i64 [ %i.lf, %.lr.ph85.i.i.i.i.i86.prol ], [ %i.ka, %.lr.ph85.i.i.i.i.i86.preheader ] ; 2 uses
  %.182.i.i.i.i.i88.prol = phi double [ %i.le, %.lr.ph85.i.i.i.i.i86.prol ], [ %i.ky, %.lr.ph85.i.i.i.i.i86.preheader ]
  %prol.iter751 = phi i64 [ %prol.iter751.next, %.lr.ph85.i.i.i.i.i86.prol ], [ 0, %.lr.ph85.i.i.i.i.i86.preheader ]
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %.05283.i.i.i.i.i87.prol
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !20 ; 2 uses
  %i.ld = fmul double %i.lc, %i.lc
  %i.le = fadd double %.182.i.i.i.i.i88.prol, %i.ld ; 3 uses
  %i.lf = add nsw i64 %.05283.i.i.i.i.i87.prol, 1 ; 2 uses
  %prol.iter751.next = add i64 %prol.iter751, 1   ; 2 uses
  %prol.iter751.cmp.not = icmp eq i64 %prol.iter751.next, %xtraiter749
  br i1 %prol.iter751.cmp.not, label %.lr.ph85.i.i.i.i.i86.prol.loopexit, label %.lr.ph85.i.i.i.i.i86.prol, !llvm.loop !104

.lr.ph85.i.i.i.i.i86.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i86.prol, %.lr.ph85.i.i.i.i.i86.preheader
  %.lcssa733.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i86.preheader ], [ %i.le, %.lr.ph85.i.i.i.i.i86.prol ]
  %.05283.i.i.i.i.i87.unr = phi i64 [ %i.ka, %.lr.ph85.i.i.i.i.i86.preheader ], [ %i.lf, %.lr.ph85.i.i.i.i.i86.prol ]
  %.182.i.i.i.i.i88.unr = phi double [ %i.ky, %.lr.ph85.i.i.i.i.i86.preheader ], [ %i.le, %.lr.ph85.i.i.i.i.i86.prol ]
  %i.lg = sub i64 %i.ka, %i.ju
  %i.lh = icmp ugt i64 %i.lg, -4
  br i1 %i.lh, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i86

.lr.ph85.i.i.i.i.i86:                             ; preds = %.lr.ph85.i.i.i.i.i86.prol.loopexit, %.lr.ph85.i.i.i.i.i86
  %.05283.i.i.i.i.i87 = phi i64 [ %i.mb, %.lr.ph85.i.i.i.i.i86 ], [ %.05283.i.i.i.i.i87.unr, %.lr.ph85.i.i.i.i.i86.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i88 = phi double [ %i.ma, %.lr.ph85.i.i.i.i.i86 ], [ %.182.i.i.i.i.i88.unr, %.lr.ph85.i.i.i.i.i86.prol.loopexit ]
  %i.li = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %.05283.i.i.i.i.i87
  %i.lj = load double, ptr %i.li, align 8, !tbaa !20 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3g2o27OptimizationAlgorithmDogleg5solveEib:bb.a
  %i.nk = and i1 %i.nc, %i.nj                     ; 2 uses
  %i.nl = zext i1 %i.nk to i8
  store i8 %i.nl, ptr %i.mf, align 4, !tbaa !59
  br i1 %i.nk, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nm = zext i1 %i.nc to i8
  store i8 %i.nm, ptr %i.mf, align 4, !tbaa !59
  br i1 %i.nc, label %bb.ap, label %.critedge552

bb.ao:                                            ; preds = %.split
  br i1 %i.nc, label %.thread504, label %.critedge552

.thread504:                                       ; preds = %bb.ao
  %i.nn = load double, ptr %i.mg, align 8, !tbaa !82
  %i.no = load ptr, ptr %i.mh, align 8, !tbaa !57
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nq = load double, ptr %i.np, align 8, !tbaa !20
  %i.nr = fmul double %i.nq, 5.000000e-01
  %i.ns = fdiv double %i.nn, %i.nr                ; 2 uses
  %i.nt = fcmp ogt double %i.ns, f0x3D719799812DEA11
  %.sroa.speculated314 = select i1 %i.nt, double %i.ns, double f0x3D719799812DEA11
  store double %.sroa.speculated314, ptr %i.mg, align 8, !tbaa !82
  br label %.loopexit511

.critedge552:                                     ; preds = %bb.an, %bb.ao
  %i.nu = load ptr, ptr %i.mh, align 8, !tbaa !57
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !20
  %i.nx = load double, ptr %i.mg, align 8, !tbaa !82
  %i.ny = fmul double %i.nw, %i.nx                ; 2 uses
  store double %i.ny, ptr %i.mg, align 8, !tbaa !82
  %i.nz = fcmp ogt double %i.ny, 1.000000e+03
  br i1 %i.nz, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %.split, %.critedge552, %bb.an
  %i.oa = phi i1 [ true, %.split ], [ true, %bb.an ], [ false, %.critedge552 ]
  br i1 %i.nc, label %.loopexit511, label %.preheader, !llvm.loop !108

.loopexit511:                                     ; preds = %bb.ap, %.thread504
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !106 ; 12 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !78 ; 11 uses
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit511
  %i.oh = sdiv i64 %i.of, 4
  %i.oi = shl nsw i64 %i.oh, 2                    ; 3 uses
  %i.oj = sdiv i64 %i.of, 2
  %i.ok = shl nsw i64 %i.oj, 1                    ; 6 uses
  %.off.i.i.i.i.i99 = add i64 %i.of, 1
  %.not.i.i.i.i.i100 = icmp ult i64 %.off.i.i.i.i.i99, 3
  br i1 %.not.i.i.i.i.i100, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ol = load <2 x double>, ptr %i.od, align 1, !tbaa !19 ; 2 uses
  %i.om = fmul <2 x double> %i.ol, %i.ol          ; 3 uses
  %i.on = icmp sgt i64 %i.of, 3
  br i1 %i.on, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.op = load <2 x double>, ptr %i.oo, align 1, !tbaa !19 ; 2 uses
  %i.oq = fmul <2 x double> %i.op, %i.op          ; 2 uses
  %i.or = icmp samesign ugt i64 %i.of, 7
  br i1 %i.or, label %.lr.ph.i.i.i.i.i111, label %._crit_edge.i.i.i.i.i108

._crit_edge.i.i.i.i.i108:                         ; preds = %.lr.ph.i.i.i.i.i111, %bb.as
  %.075.lcssa.i.i.i.i.i109 = phi <2 x double> [ %i.oq, %bb.as ], [ %i.pc, %.lr.ph.i.i.i.i.i111 ]
  %.072.lcssa.i.i.i.i.i110 = phi <2 x double> [ %i.om, %bb.as ], [ %i.ox, %.lr.ph.i.i.i.i.i111 ]
  %i.os = fadd <2 x double> %.075.lcssa.i.i.i.i.i109, %.072.lcssa.i.i.i.i.i110 ; 2 uses
  %i.ot = icmp sgt i64 %i.ok, %i.oi
  br i1 %i.ot, label %bb.at, label %bb.au

.lr.ph.i.i.i.i.i111:                              ; preds = %bb.as, %.lr.ph.i.i.i.i.i111
  %.05480.i.i.i.i.i112 = phi i64 [ %.054.i.i.i.i.i116, %.lr.ph.i.i.i.i.i111 ], [ 4, %bb.as ] ; 3 uses
  %.054.in79.i.i.i.i.i113 = phi i64 [ %.05480.i.i.i.i.i112, %.lr.ph.i.i.i.i.i111 ], [ 0, %bb.as ]
  %.07278.i.i.i.i.i114 = phi <2 x double> [ %i.ox, %.lr.ph.i.i.i.i.i111 ], [ %i.om, %bb.as ]
  %.07577.i.i.i.i.i115 = phi <2 x double> [ %i.pc, %.lr.ph.i.i.i.i.i111 ], [ %i.oq, %bb.as ]
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %.05480.i.i.i.i.i112
  %i.ov = load <2 x double>, ptr %i.ou, align 1, !tbaa !19 ; 2 uses
  %i.ow = fmul <2 x double> %i.ov, %i.ov
  %i.ox = fadd <2 x double> %.07278.i.i.i.i.i114, %i.ow ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %.054.in79.i.i.i.i.i113
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.pa = load <2 x double>, ptr %i.oz, align 1, !tbaa !19 ; 2 uses
  %i.pb = fmul <2 x double> %i.pa, %i.pa
  %i.pc = fadd <2 x double> %.07577.i.i.i.i.i115, %i.pb ; 2 uses
  %.054.i.i.i.i.i116 = add nuw nsw i64 %.05480.i.i.i.i.i112, 4 ; 2 uses
  %i.pd = icmp slt i64 %.054.i.i.i.i.i116, %i.oi
  br i1 %i.pd, label %.lr.ph.i.i.i.i.i111, label %._crit_edge.i.i.i.i.i108, !llvm.loop !90

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i108
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.oi
  %i.pf = load <2 x double>, ptr %i.pe, align 1, !tbaa !19 ; 2 uses
  %i.pg = fmul <2 x double> %i.pf, %i.pf
  %i.ph = fadd <2 x double> %i.os, %i.pg
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i.i108, %bb.ar
  %.274.i.i.i.i.i101 = phi <2 x double> [ %i.om, %bb.ar ], [ %i.ph, %bb.at ], [ %i.os, %._crit_edge.i.i.i.i.i108 ] ; 2 uses
  %shift678 = shufflevector <2 x double> %.274.i.i.i.i.i101, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop679 = fadd <2 x double> %.274.i.i.i.i.i101, %shift678
  %i.pi = extractelement <2 x double> %foldExtExtBinop679, i64 0 ; 3 uses
  %i.pj = icmp slt i64 %i.ok, %i.of
  br i1 %i.pj, label %.lr.ph85.i.i.i.i.i104.preheader, label %.thread

.lr.ph85.i.i.i.i.i104.preheader:                  ; preds = %bb.au
  %i.pk = sub i64 %i.of, %i.ok
  %xtraiter752 = and i64 %i.pk, 3                 ; 2 uses
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph85.i.i.i.i.i104.prol.loopexit, label %.lr.ph85.i.i.i.i.i104.prol

.lr.ph85.i.i.i.i.i104.prol:                       ; preds = %.lr.ph85.i.i.i.i.i104.preheader, %.lr.ph85.i.i.i.i.i104.prol
  %.05283.i.i.i.i.i105.prol = phi i64 [ %i.pp, %.lr.ph85.i.i.i.i.i104.prol ], [ %i.ok, %.lr.ph85.i.i.i.i.i104.preheader ] ; 2 uses
  %.182.i.i.i.i.i106.prol = phi double [ %i.po, %.lr.ph85.i.i.i.i.i104.prol ], [ %i.pi, %.lr.ph85.i.i.i.i.i104.preheader ]
  %prol.iter754 = phi i64 [ %prol.iter754.next, %.lr.ph85.i.i.i.i.i104.prol ], [ 0, %.lr.ph85.i.i.i.i.i104.preheader ]
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.od, i64 %.05283.i.i.i.i.i105.prol
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !20 ; 2 uses
  %i.pn = fmul double %i.pm, %i.pm
  %i.po = fadd double %.182.i.i.i.i.i106.prol, %i.pn ; 3 uses
  %i.pp = add nsw i64 %.05283.i.i.i.i.i105.prol, 1 ; 2 uses
  %prol.iter754.next = add i64 %prol.iter754, 1   ; 2 uses
  %prol.iter754.cmp.not = icmp eq i64 %prol.iter754.next, %xtraiter752
  br i1 %prol.iter754.cmp.not, label %.lr.ph85.i.i.i.i.i104.prol.loopexit, label %.lr.ph85.i.i.i.i.i104.prol, !llvm.loop !109

.lr.ph85.i.i.i.i.i104.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i104.prol, %.lr.ph85.i.i.i.i.i104.preheader
  %.lcssa710.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i104.preheader ], [ %i.po, %.lr.ph85.i.i.i.i.i104.prol ]
  %.05283.i.i.i.i.i105.unr = phi i64 [ %i.ok, %.lr.ph85.i.i.i.i.i104.preheader ], [ %i.pp, %.lr.ph85.i.i.i.i.i104.prol ]
  %.182.i.i.i.i.i106.unr = phi double [ %i.pi, %.lr.ph85.i.i.i.i.i104.preheader ], [ %i.po, %.lr.ph85.i.i.i.i.i104.prol ]
  %i.pq = sub i64 %i.ok, %i.of
  %i.pr = icmp ugt i64 %i.pq, -4
  br i1 %i.pr, label %.thread, label %.lr.ph85.i.i.i.i.i104

.lr.ph85.i.i.i.i.i104:                            ; preds = %.lr.ph85.i.i.i.i.i104.prol.loopexit, %.lr.ph85.i.i.i.i.i104
  %.05283.i.i.i.i.i105 = phi i64 [ %i.ql, %.lr.ph85.i.i.i.i.i104 ], [ %.05283.i.i.i.i.i105.unr, %.lr.ph85.i.i.i.i.i104.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i106 = phi double [ %i.qk, %.lr.ph85.i.i.i.i.i104 ], [ %.182.i.i.i.i.i106.unr, %.lr.ph85.i.i.i.i.i104.prol.loopexit ]
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.od, i64 %.05283.i.i.i.i.i105
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !20 ; 2 uses
  %i.pu = fmul double %i.pt, %i.pt
  %i.pv = fadd double %.182.i.i.i.i.i106, %i.pu
  %i.pw = getelementptr [8 x i8], ptr %i.od, i64 %.05283.i.i.i.i.i105
  %i.px = getelementptr i8, ptr %i.pw, i64 8
  %i.py = load double, ptr %i.px, align 8, !tbaa !20 ; 2 uses
  %i.pz = fmul double %i.py, %i.py
  %i.qa = fadd double %i.pv, %i.pz
  %i.qb = getelementptr [8 x i8], ptr %i.od, i64 %.05283.i.i.i.i.i105
  %i.qc = getelementptr i8, ptr %i.qb, i64 16
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !20 ; 2 uses
  %i.qe = fmul double %i.qd, %i.qd
  %i.qf = fadd double %i.qa, %i.qe
  %i.qg = getelementptr [8 x i8], ptr %i.od, i64 %.05283.i.i.i.i.i105
  %i.qh = getelementptr i8, ptr %i.qg, i64 24
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !20 ; 2 uses
  %i.qj = fmul double %i.qi, %i.qi
  %i.qk = fadd double %i.qf, %i.qj                ; 2 uses
  %i.ql = add nsw i64 %.05283.i.i.i.i.i105, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i107.3 = icmp eq i64 %i.ql, %i.of
  br i1 %exitcond.not.i.i.i.i.i107.3, label %.thread, label %.lr.ph85.i.i.i.i.i104, !llvm.loop !93

bb.av:                                            ; preds = %bb.aq
  %i.qm = load double, ptr %i.od, align 8, !tbaa !20 ; 2 uses
  %i.qn = fmul double %i.qm, %i.qm
  br label %.thread

.thread:                                          ; preds = %.lr.ph85.i.i.i.i.i104.prol.loopexit, %.lr.ph85.i.i.i.i.i104, %bb.av, %bb.au, %.loopexit511
  %.0.i.i.i102 = phi double [ 0.000000e+00, %.loopexit511 ], [ %i.pi, %bb.au ], [ %i.qn, %bb.av ], [ %.lcssa710.unr, %.lr.ph85.i.i.i.i.i104.prol.loopexit ], [ %i.qk, %.lr.ph85.i.i.i.i.i104 ]
  %.scalar.i103 = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i102)
  br label %bb.ax

bb.aw:                                            ; preds = %.critedge552
  store double 1.000000e+03, ptr %i.mg, align 8, !tbaa !82
  br label %.critedge71

bb.ax:                                            ; preds = %._crit_edge, %.thread
  %i.qo = phi i64 [ %.pre426, %._crit_edge ], [ %i.of, %.thread ] ; 3 uses
  %i.qp = phi ptr [ %.pre424, %._crit_edge ], [ %i.od, %.thread ] ; 20 uses
  %.260 = phi double [ %.058, %._crit_edge ], [ %.scalar.i103, %.thread ] ; 2 uses
  %i.qq = ptrtoaddr ptr %i.qp to i64              ; 3 uses
  %i.qr = load double, ptr %i.mi, align 8, !tbaa !81 ; 3 uses
  %i.qs = fcmp olt double %.260, %i.qr
  br i1 %i.qs, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.qt = load i64, ptr %i.mk, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i117 = icmp eq i64 %i.qt, %i.qo
  br i1 %.not.i.i.i.i.i.i.i.i117, label %bb.az, label %thread-pre-split.i.i.i.i.i.i.i118

thread-pre-split.i.i.i.i.i.i.i118:                ; preds = %bb.ay
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 noundef %i.qo, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i119 = load i64, ptr %i.mk, align 8, !tbaa !80
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i118, %bb.ay
  %i.qu = phi i64 [ %.pr.i.i.i.i.i.i.i119, %thread-pre-split.i.i.i.i.i.i.i118 ], [ %i.qo, %bb.ay ] ; 7 uses
  %i.qv = load ptr, ptr %i.mj, align 8, !tbaa !62 ; 8 uses
  %i.qw = ptrtoaddr ptr %i.qv to i64
  %i.qx = sdiv i64 %i.qu, 2
  %i.qy = shl nsw i64 %i.qx, 1                    ; 6 uses
  %i.qz = icmp sgt i64 %i.qu, 1
  br i1 %i.qz, label %.lr.ph.i.i.i.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i.i.i.i120

._crit_edge.i.i.i.i.i.i.i.i120:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i124, %bb.az
  %i.ra = icmp slt i64 %i.qy, %i.qu
  br i1 %i.ra, label %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i121.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i120
  %i.rb = sub i64 %i.qu, %i.qy                    ; 3 uses
  %min.iters.check602 = icmp ult i64 %i.rb, 4
  %i.rc = sub i64 %i.qq, %i.qw
  %diff.check600 = icmp ugt i64 %i.rc, -32
  %or.cond667 = select i1 %min.iters.check602, i1 true, i1 %diff.check600
  br i1 %or.cond667, label %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703, label %vector.ph603

vector.ph603:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader
  %n.vec604 = and i64 %i.rb, -4                   ; 3 uses
  %i.rd = add i64 %i.qy, %n.vec604
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph603
  %index606 = phi i64 [ 0, %vector.ph603 ], [ %index.next609, %vector.body605 ] ; 2 uses
  %i.re = add i64 %i.qy, %index606                ; 2 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.re ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %wide.load607 = load <2 x double>, ptr %i.rg, align 8, !tbaa !20
  %wide.load608 = load <2 x double>, ptr %i.rh, align 8, !tbaa !20
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store <2 x double> %wide.load607, ptr %i.rf, align 8, !tbaa !20
  store <2 x double> %wide.load608, ptr %i.ri, align 8, !tbaa !20
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.rj = icmp eq i64 %index.next609, %n.vec604
  br i1 %i.rj, label %middle.block610, label %vector.body605, !llvm.loop !110

middle.block610:                                  ; preds = %vector.body605
  %cmp.n611 = icmp eq i64 %i.rb, %n.vec604
  br i1 %cmp.n611, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703

.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader, %middle.block610
  %.05.i.i.i.i.i.i.i.i.i122.ph = phi i64 [ %i.qy, %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader ], [ %i.rd, %middle.block610 ] ; 4 uses
  %i.rk = sub i64 %i.qu, %.05.i.i.i.i.i.i.i.i.i122.ph
  %xtraiter776 = and i64 %i.rk, 3                 ; 2 uses
  %lcmp.mod777.not = icmp eq i64 %xtraiter776, 0
  br i1 %lcmp.mod777.not, label %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i121.prol

.lr.ph.i.i.i.i.i.i.i.i.i121.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol
  %.05.i.i.i.i.i.i.i.i.i122.prol = phi i64 [ %i.ro, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol ], [ %.05.i.i.i.i.i.i.i.i.i122.ph, %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703 ] ; 3 uses
  %prol.iter778 = phi i64 [ %prol.iter778.next, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703 ]
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %.05.i.i.i.i.i.i.i.i.i122.prol
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i122.prol
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !20
  store double %i.rn, ptr %i.rl, align 8, !tbaa !20
  %i.ro = add nsw i64 %.05.i.i.i.i.i.i.i.i.i122.prol, 1 ; 2 uses
  %prol.iter778.next = add i64 %prol.iter778, 1   ; 2 uses
  %prol.iter778.cmp.not = icmp eq i64 %prol.iter778.next, %xtraiter776
  br i1 %prol.iter778.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i121.prol, !llvm.loop !111

.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i121.prol, %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703
  %.05.i.i.i.i.i.i.i.i.i122.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i122.ph, %.lr.ph.i.i.i.i.i.i.i.i.i121.preheader703 ], [ %i.ro, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol ]
  %i.rp = sub i64 %.05.i.i.i.i.i.i.i.i.i122.ph, %i.qu
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i121

.lr.ph.i.i.i.i.i.i.i.i.i121:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i121
  %.05.i.i.i.i.i.i.i.i.i122 = phi i64 [ %i.sg, %.lr.ph.i.i.i.i.i.i.i.i.i121 ], [ %.05.i.i.i.i.i.i.i.i.i122.unr, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit ] ; 6 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %.05.i.i.i.i.i.i.i.i.i122
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i122
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !20
  store double %i.rt, ptr %i.rr, align 8, !tbaa !20
  %i.ru = add nsw i64 %.05.i.i.i.i.i.i.i.i.i122, 1 ; 2 uses
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.ru
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ru
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !20
  store double %i.rx, ptr %i.rv, align 8, !tbaa !20
  %i.ry = add nsw i64 %.05.i.i.i.i.i.i.i.i.i122, 2 ; 2 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.ry
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ry
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !20
  store double %i.sb, ptr %i.rz, align 8, !tbaa !20
  %i.sc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i122, 3 ; 2 uses
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.sc
  %i.se = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.sc
  %i.sf = load double, ptr %i.se, align 8, !tbaa !20
  store double %i.sf, ptr %i.sd, align 8, !tbaa !20
  %i.sg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i122, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i123.3 = icmp eq i64 %i.sg, %i.qu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i123.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i121, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i.i124:                        ; preds = %bb.az, %.lr.ph.i.i.i.i.i.i.i.i124
  %.011.i.i.i.i.i.i.i.i125 = phi i64 [ %i.sk, %.lr.ph.i.i.i.i.i.i.i.i124 ], [ 0, %bb.az ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %.011.i.i.i.i.i.i.i.i125
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %.011.i.i.i.i.i.i.i.i125
  %i.sj = load <2 x double>, ptr %i.si, align 1, !tbaa !19
  store <2 x double> %i.sj, ptr %i.sh, align 16, !tbaa !19
  %i.sk = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i125, 2 ; 2 uses
  %i.sl = icmp slt i64 %i.sk, %i.qy
  br i1 %i.sl, label %.lr.ph.i.i.i.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i.i.i.i120, !llvm.loop !113

bb.ba:                                            ; preds = %bb.ax
  %i.sm = fcmp ogt double %.scalar.i, %i.qr
  br i1 %i.sm, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.sn = fdiv double %i.qr, %.scalar.i           ; 7 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i126 = insertelement <2 x double> poison, double %i.sn, i64 0
  %i.so = load ptr, ptr %i.hq, align 8, !tbaa !62 ; 8 uses
  %i.sp = ptrtoaddr ptr %i.so to i64
  %i.sq = load i64, ptr %i.hr, align 8, !tbaa !80 ; 3 uses
  %i.sr = load i64, ptr %i.mk, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i127 = icmp eq i64 %i.sr, %i.sq
  br i1 %.not.i.i.i.i.i.i.i.i127, label %bb.bc, label %thread-pre-split.i.i.i.i.i.i.i128

thread-pre-split.i.i.i.i.i.i.i128:                ; preds = %bb.bb
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 noundef %i.sq, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i129 = load i64, ptr %i.mk, align 8, !tbaa !80
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i128, %bb.bb
  %i.ss = phi i64 [ %.pr.i.i.i.i.i.i.i129, %thread-pre-split.i.i.i.i.i.i.i128 ], [ %i.sq, %bb.bb ] ; 7 uses
  %i.st = load ptr, ptr %i.mj, align 8, !tbaa !62 ; 8 uses
  %i.su = ptrtoaddr ptr %i.st to i64
  %i.sv = sdiv i64 %i.ss, 2
  %i.sw = shl nsw i64 %i.sv, 1                    ; 6 uses
  %i.sx = icmp sgt i64 %i.ss, 1
  br i1 %i.sx, label %.lr.ph.i.preheader.i.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i.i.i130

.lr.ph.i.preheader.i.i.i.i.i.i.i134:              ; preds = %bb.bc
  %i.sy = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i126, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i135

._crit_edge.i.i.i.i.i.i.i.i130:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i135, %bb.bc
  %i.sz = icmp slt i64 %i.sw, %i.ss
  br i1 %i.sz, label %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i131.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i130
  %i.ta = sub i64 %i.ss, %i.sw                    ; 3 uses
  %min.iters.check616 = icmp ult i64 %i.ta, 4
  %i.tb = sub i64 %i.sp, %i.su
  %diff.check614 = icmp ugt i64 %i.tb, -32
  %or.cond668 = select i1 %min.iters.check616, i1 true, i1 %diff.check614
  br i1 %or.cond668, label %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader
  %n.vec618 = and i64 %i.ta, -4                   ; 3 uses
  %i.tc = add i64 %i.sw, %n.vec618
  %broadcast.splatinsert619 = insertelement <2 x double> poison, double %i.sn, i64 0
  %broadcast.splat620 = shufflevector <2 x double> %broadcast.splatinsert619, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph617
  %index622 = phi i64 [ 0, %vector.ph617 ], [ %index.next625, %vector.body621 ] ; 2 uses
  %i.td = add i64 %i.sw, %index622                ; 2 uses
  %i.te = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.td ; 2 uses
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.td ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load623 = load <2 x double>, ptr %i.tf, align 8, !tbaa !20
  %wide.load624 = load <2 x double>, ptr %i.tg, align 8, !tbaa !20
  %i.th = fmul <2 x double> %broadcast.splat620, %wide.load623
  %i.ti = fmul <2 x double> %broadcast.splat620, %wide.load624
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store <2 x double> %i.th, ptr %i.te, align 8, !tbaa !20
  store <2 x double> %i.ti, ptr %i.tj, align 8, !tbaa !20
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next625, %n.vec618
  br i1 %i.tk, label %middle.block626, label %vector.body621, !llvm.loop !114

middle.block626:                                  ; preds = %vector.body621
  %cmp.n627 = icmp eq i64 %i.ta, %n.vec618
  br i1 %cmp.n627, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704

.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader, %middle.block626
  %.05.i.i.i.i.i.i.i.i.i132.ph = phi i64 [ %i.sw, %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader ], [ %i.tc, %middle.block626 ] ; 4 uses
  %i.tl = sub i64 %i.ss, %.05.i.i.i.i.i.i.i.i.i132.ph
  %xtraiter773 = and i64 %i.tl, 3                 ; 2 uses
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  br i1 %lcmp.mod774.not, label %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i131.prol

.lr.ph.i.i.i.i.i.i.i.i.i131.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol
  %.05.i.i.i.i.i.i.i.i.i132.prol = phi i64 [ %i.tq, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol ], [ %.05.i.i.i.i.i.i.i.i.i132.ph, %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704 ] ; 3 uses
  %prol.iter775 = phi i64 [ %prol.iter775.next, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704 ]
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.st, i64 %.05.i.i.i.i.i.i.i.i.i132.prol
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.so, i64 %.05.i.i.i.i.i.i.i.i.i132.prol
  %i.to = load double, ptr %i.tn, align 8, !tbaa !20
  %i.tp = fmul double %i.sn, %i.to
  store double %i.tp, ptr %i.tm, align 8, !tbaa !20
  %i.tq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i132.prol, 1 ; 2 uses
  %prol.iter775.next = add i64 %prol.iter775, 1   ; 2 uses
  %prol.iter775.cmp.not = icmp eq i64 %prol.iter775.next, %xtraiter773
  br i1 %prol.iter775.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i131.prol, !llvm.loop !115

.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131.prol, %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704
  %.05.i.i.i.i.i.i.i.i.i132.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i132.ph, %.lr.ph.i.i.i.i.i.i.i.i.i131.preheader704 ], [ %i.tq, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol ]
  %i.tr = sub i64 %.05.i.i.i.i.i.i.i.i.i132.ph, %i.ss
  %i.ts = icmp ugt i64 %i.tr, -4
  br i1 %i.ts, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i.i.i131:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i131
  %.05.i.i.i.i.i.i.i.i.i132 = phi i64 [ %i.um, %.lr.ph.i.i.i.i.i.i.i.i.i131 ], [ %.05.i.i.i.i.i.i.i.i.i132.unr, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit ] ; 6 uses
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.st, i64 %.05.i.i.i.i.i.i.i.i.i132
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.so, i64 %.05.i.i.i.i.i.i.i.i.i132
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !20
  %i.tw = fmul double %i.sn, %i.tv
  store double %i.tw, ptr %i.tt, align 8, !tbaa !20
  %i.tx = add nsw i64 %.05.i.i.i.i.i.i.i.i.i132, 1 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.tx
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.tx
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !20
  %i.ub = fmul double %i.sn, %i.ua
  store double %i.ub, ptr %i.ty, align 8, !tbaa !20
  %i.uc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i132, 2 ; 2 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.uc
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.uc
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !20
  %i.ug = fmul double %i.sn, %i.uf
  store double %i.ug, ptr %i.ud, align 8, !tbaa !20
  %i.uh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i132, 3 ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.uh
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.uh
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !20
  %i.ul = fmul double %i.sn, %i.uk
  store double %i.ul, ptr %i.ui, align 8, !tbaa !20
  %i.um = add nsw i64 %.05.i.i.i.i.i.i.i.i.i132, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i133.3 = icmp eq i64 %i.um, %i.ss
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i133.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i131, !llvm.loop !116

.lr.ph.i.i.i.i.i.i.i.i135:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i135, %.lr.ph.i.preheader.i.i.i.i.i.i.i134
  %.011.i.i.i.i.i.i.i.i136 = phi i64 [ %i.ur, %.lr.ph.i.i.i.i.i.i.i.i135 ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i134 ] ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.011.i.i.i.i.i.i.i.i136
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %.011.i.i.i.i.i.i.i.i136
  %i.up = load <2 x double>, ptr %i.uo, align 16, !tbaa !19
  %i.uq = fmul <2 x double> %i.sy, %i.up
  store <2 x double> %i.uq, ptr %i.un, align 16, !tbaa !19
  %i.ur = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i136, 2 ; 2 uses
  %i.us = icmp slt i64 %i.ur, %i.sw
  br i1 %i.us, label %.lr.ph.i.i.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i.i.i130, !llvm.loop !117

bb.bd:                                            ; preds = %bb.ba
  %i.ut = load ptr, ptr %i.hq, align 8, !tbaa !62 ; 8 uses
  %i.uu = ptrtoaddr ptr %i.ut to i64
  %i.uv = load i64, ptr %i.hr, align 8, !tbaa !80 ; 3 uses
  %i.uw = load i64, ptr %i.cd, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i137 = icmp eq i64 %i.uw, %i.uv
  br i1 %.not.i.i.i.i.i.i.i.i137, label %bb.be, label %thread-pre-split.i.i.i.i.i.i.i138

thread-pre-split.i.i.i.i.i.i.i138:                ; preds = %bb.bd
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 noundef %i.uv, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i139 = load i64, ptr %i.cd, align 8, !tbaa !80
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i138, %bb.bd
  %i.ux = phi i64 [ %.pr.i.i.i.i.i.i.i139, %thread-pre-split.i.i.i.i.i.i.i138 ], [ %i.uv, %bb.bd ] ; 7 uses
  %i.uy = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 8 uses
  %i.uz = ptrtoaddr ptr %i.uy to i64              ; 2 uses
  %i.va = sdiv i64 %i.ux, 2
  %i.vb = shl nsw i64 %i.va, 1                    ; 7 uses
  %i.vc = icmp sgt i64 %i.ux, 1
  br i1 %i.vc, label %.lr.ph.i.i.i.i.i.i.i.i144, label %._crit_edge.i.i.i.i.i.i.i.i140

._crit_edge.i.i.i.i.i.i.i.i140:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i144, %bb.be
  %i.vd = icmp slt i64 %i.vb, %i.ux
  br i1 %i.vd, label %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i141.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i140
  %i.ve = sub i64 %i.ux, %i.vb                    ; 3 uses
  %min.iters.check653 = icmp ult i64 %i.ve, 6
  br i1 %min.iters.check653, label %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708, label %vector.memcheck648

vector.memcheck648:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader
  %i.vf = sub i64 %i.qq, %i.uz
  %diff.check649 = icmp ugt i64 %i.vf, -32
  %i.vg = sub i64 %i.uu, %i.uz
  %diff.check650 = icmp ugt i64 %i.vg, -32
  %conflict.rdx651 = or i1 %diff.check649, %diff.check650
  br i1 %conflict.rdx651, label %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708, label %vector.ph654

vector.ph654:                                     ; preds = %vector.memcheck648
  %n.vec655 = and i64 %i.ve, -4                   ; 3 uses
  %i.vh = add i64 %i.vb, %n.vec655
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph654
  %index657 = phi i64 [ 0, %vector.ph654 ], [ %index.next662, %vector.body656 ] ; 2 uses
  %i.vi = add i64 %i.vb, %index657                ; 3 uses
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.vi ; 2 uses
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.vi ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %wide.load658 = load <2 x double>, ptr %i.vk, align 8, !tbaa !20
  %wide.load659 = load <2 x double>, ptr %i.vl, align 8, !tbaa !20
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.vi ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %wide.load660 = load <2 x double>, ptr %i.vm, align 8, !tbaa !20
  %wide.load661 = load <2 x double>, ptr %i.vn, align 8, !tbaa !20
  %i.vo = fsub <2 x double> %wide.load658, %wide.load660
  %i.vp = fsub <2 x double> %wide.load659, %wide.load661
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store <2 x double> %i.vo, ptr %i.vj, align 8, !tbaa !20
  store <2 x double> %i.vp, ptr %i.vq, align 8, !tbaa !20
  %index.next662 = add nuw i64 %index657, 4       ; 2 uses
  %i.vr = icmp eq i64 %index.next662, %n.vec655
  br i1 %i.vr, label %middle.block663, label %vector.body656, !llvm.loop !118

middle.block663:                                  ; preds = %vector.body656
  %cmp.n664 = icmp eq i64 %i.ve, %n.vec655
  br i1 %cmp.n664, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708

.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708:         ; preds = %vector.memcheck648, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader, %middle.block663
  %.05.i.i.i.i.i.i.i.i.i142.ph = phi i64 [ %i.vb, %vector.memcheck648 ], [ %i.vb, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader ], [ %i.vh, %middle.block663 ] ; 4 uses
  %i.vs = sub i64 %i.ux, %.05.i.i.i.i.i.i.i.i.i142.ph
  %xtraiter755 = and i64 %i.vs, 3                 ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i141.prol

.lr.ph.i.i.i.i.i.i.i.i.i141.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708, %.lr.ph.i.i.i.i.i.i.i.i.i141.prol
  %.05.i.i.i.i.i.i.i.i.i142.prol = phi i64 [ %i.vz, %.lr.ph.i.i.i.i.i.i.i.i.i141.prol ], [ %.05.i.i.i.i.i.i.i.i.i142.ph, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708 ] ; 4 uses
  %prol.iter757 = phi i64 [ %prol.iter757.next, %.lr.ph.i.i.i.i.i.i.i.i.i141.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708 ]
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.05.i.i.i.i.i.i.i.i.i142.prol
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i142.prol
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !20
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %.05.i.i.i.i.i.i.i.i.i142.prol
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !20
  %i.vy = fsub double %i.vv, %i.vx
  store double %i.vy, ptr %i.vt, align 8, !tbaa !20
  %i.vz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i142.prol, 1 ; 2 uses
  %prol.iter757.next = add i64 %prol.iter757, 1   ; 2 uses
  %prol.iter757.cmp.not = icmp eq i64 %prol.iter757.next, %xtraiter755
  br i1 %prol.iter757.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i141.prol, !llvm.loop !119

.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i141.prol, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708
  %.05.i.i.i.i.i.i.i.i.i142.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i142.ph, %.lr.ph.i.i.i.i.i.i.i.i.i141.preheader708 ], [ %i.vz, %.lr.ph.i.i.i.i.i.i.i.i.i141.prol ]
  %i.wa = sub i64 %.05.i.i.i.i.i.i.i.i.i142.ph, %i.ux
  %i.wb = icmp ugt i64 %i.wa, -4
  br i1 %i.wb, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i141

.lr.ph.i.i.i.i.i.i.i.i.i141:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i141
  %.05.i.i.i.i.i.i.i.i.i142 = phi i64 [ %i.xd, %.lr.ph.i.i.i.i.i.i.i.i.i141 ], [ %.05.i.i.i.i.i.i.i.i.i142.unr, %.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit ] ; 7 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.05.i.i.i.i.i.i.i.i.i142
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i142
  %i.we = load double, ptr %i.wd, align 8, !tbaa !20
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %.05.i.i.i.i.i.i.i.i.i142
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !20
  %i.wh = fsub double %i.we, %i.wg
  store double %i.wh, ptr %i.wc, align 8, !tbaa !20
  %i.wi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i142, 1 ; 3 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.wi
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.wi
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !20
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.wi
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !20
  %i.wo = fsub double %i.wl, %i.wn
  store double %i.wo, ptr %i.wj, align 8, !tbaa !20
  %i.wp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i142, 2 ; 3 uses
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.wp
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.wp
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !20
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.wp
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !20
  %i.wv = fsub double %i.ws, %i.wu
  store double %i.wv, ptr %i.wq, align 8, !tbaa !20
  %i.ww = add nsw i64 %.05.i.i.i.i.i.i.i.i.i142, 3 ; 3 uses
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.ww
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ww
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !20
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.ww
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !20
  %i.xc = fsub double %i.wz, %i.xb
  store double %i.xc, ptr %i.wx, align 8, !tbaa !20
  %i.xd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i142, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i143.3 = icmp eq i64 %i.xd, %i.ux
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i143.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i141, !llvm.loop !120

.lr.ph.i.i.i.i.i.i.i.i144:                        ; preds = %bb.be, %.lr.ph.i.i.i.i.i.i.i.i144
  %.011.i.i.i.i.i.i.i.i145 = phi i64 [ %i.xk, %.lr.ph.i.i.i.i.i.i.i.i144 ], [ 0, %bb.be ] ; 4 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %.011.i.i.i.i.i.i.i.i145
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %.011.i.i.i.i.i.i.i.i145
  %i.xg = load <2 x double>, ptr %i.xf, align 1, !tbaa !19
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %.011.i.i.i.i.i.i.i.i145
  %i.xi = load <2 x double>, ptr %i.xh, align 1, !tbaa !19
  %i.xj = fsub <2 x double> %i.xg, %i.xi
  store <2 x double> %i.xj, ptr %i.xe, align 16, !tbaa !19
  %i.xk = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i145, 2 ; 2 uses
  %i.xl = icmp slt i64 %i.xk, %i.vb
  br i1 %i.xl, label %.lr.ph.i.i.i.i.i.i.i.i144, label %._crit_edge.i.i.i.i.i.i.i.i140, !llvm.loop !121

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i141.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i141, %middle.block663, %._crit_edge.i.i.i.i.i.i.i.i140
  %i.xm = load i64, ptr %i.cd, align 8, !tbaa !80 ; 16 uses
  %i.xn = icmp eq i64 %i.xm, 0
  br i1 %i.xn, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit._ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit.thread_crit_edge, label %bb.bf

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit._ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit.thread_crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre427 = load i64, ptr %i.hr, align 8, !tbaa !80
  %.pre429.pre.pre = load ptr, ptr %i.hq, align 8, !tbaa !62
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit.thread

bb.bf:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEES8_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.xo = load ptr, ptr %i.hq, align 8, !tbaa !62 ; 23 uses
  %i.xp = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 21 uses
  %i.xq = sdiv i64 %i.xm, 4
  %i.xr = shl nsw i64 %i.xq, 2                    ; 7 uses
  %i.xs = sdiv i64 %i.xm, 2
  %i.xt = shl nsw i64 %i.xs, 1                    ; 12 uses
  %.off.i.i.i.i.i146 = add i64 %i.xm, 1
  %.not.i.i.i.i.i147 = icmp ult i64 %.off.i.i.i.i.i146, 3
  br i1 %.not.i.i.i.i.i147, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.xu = load <2 x double>, ptr %i.xo, align 16  ; 2 uses
  %i.xv = load <2 x double>, ptr %i.xp, align 16
  %i.xw = fmul <2 x double> %i.xu, %i.xv          ; 3 uses
  %i.xx = icmp sgt i64 %i.xm, 3
  %i.xy = extractelement <2 x double> %i.xu, i64 0 ; 3 uses
  br i1 %i.xx, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.ya = load <2 x double>, ptr %i.xz, align 16, !tbaa !19
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.yc = load <2 x double>, ptr %i.yb, align 16, !tbaa !19
  %i.yd = fmul <2 x double> %i.ya, %i.yc          ; 2 uses
  %i.ye = icmp samesign ugt i64 %i.xm, 7
  br i1 %i.ye, label %.lr.ph.i.i.i.i.i157, label %._crit_edge.i.i.i.i.i154

._crit_edge.i.i.i.i.i154:                         ; preds = %.lr.ph.i.i.i.i.i157, %bb.bh
  %.075.lcssa.i.i.i.i.i155 = phi <2 x double> [ %i.yd, %bb.bh ], [ %i.yt, %.lr.ph.i.i.i.i.i157 ]
  %.072.lcssa.i.i.i.i.i156 = phi <2 x double> [ %i.xw, %bb.bh ], [ %i.ym, %.lr.ph.i.i.i.i.i157 ]
  %i.yf = fadd <2 x double> %.075.lcssa.i.i.i.i.i155, %.072.lcssa.i.i.i.i.i156 ; 2 uses
  %i.yg = icmp sgt i64 %i.xt, %i.xr
  br i1 %i.yg, label %bb.bi, label %bb.bj

.lr.ph.i.i.i.i.i157:                              ; preds = %bb.bh, %.lr.ph.i.i.i.i.i157
  %.05480.i.i.i.i.i158 = phi i64 [ %.054.i.i.i.i.i162, %.lr.ph.i.i.i.i.i157 ], [ 4, %bb.bh ] ; 4 uses
  %.054.in79.i.i.i.i.i159 = phi i64 [ %.05480.i.i.i.i.i158, %.lr.ph.i.i.i.i.i157 ], [ 0, %bb.bh ]
  %.07278.i.i.i.i.i160 = phi <2 x double> [ %i.ym, %.lr.ph.i.i.i.i.i157 ], [ %i.xw, %bb.bh ]
  %.07577.i.i.i.i.i161 = phi <2 x double> [ %i.yt, %.lr.ph.i.i.i.i.i157 ], [ %i.yd, %bb.bh ]
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.05480.i.i.i.i.i158
  %i.yi = load <2 x double>, ptr %i.yh, align 16, !tbaa !19
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %.05480.i.i.i.i.i158
  %i.yk = load <2 x double>, ptr %i.yj, align 16, !tbaa !19
  %i.yl = fmul <2 x double> %i.yi, %i.yk
  %i.ym = fadd <2 x double> %.07278.i.i.i.i.i160, %i.yl ; 2 uses
  %i.yn = add nuw nsw i64 %.054.in79.i.i.i.i.i159, 6 ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.yn
  %i.yp = load <2 x double>, ptr %i.yo, align 16, !tbaa !19
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.yn
  %i.yr = load <2 x double>, ptr %i.yq, align 16, !tbaa !19
  %i.ys = fmul <2 x double> %i.yp, %i.yr
  %i.yt = fadd <2 x double> %.07577.i.i.i.i.i161, %i.ys ; 2 uses
  %.054.i.i.i.i.i162 = add nuw nsw i64 %.05480.i.i.i.i.i158, 4 ; 2 uses
  %i.yu = icmp slt i64 %.054.i.i.i.i.i162, %i.xr
  br i1 %i.yu, label %.lr.ph.i.i.i.i.i157, label %._crit_edge.i.i.i.i.i154, !llvm.loop !122

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i.i154
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.xr
  %i.yw = load <2 x double>, ptr %i.yv, align 16, !tbaa !19
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xr
  %i.yy = load <2 x double>, ptr %i.yx, align 16, !tbaa !19
  %i.yz = fmul <2 x double> %i.yw, %i.yy
  %i.za = fadd <2 x double> %i.yf, %i.yz
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i.i.i.i.i154, %bb.bg
  %.274.i.i.i.i.i148 = phi <2 x double> [ %i.xw, %bb.bg ], [ %i.za, %bb.bi ], [ %i.yf, %._crit_edge.i.i.i.i.i154 ] ; 2 uses
  %shift681 = shufflevector <2 x double> %.274.i.i.i.i.i148, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop682 = fadd <2 x double> %.274.i.i.i.i.i148, %shift681
  %i.zb = extractelement <2 x double> %foldExtExtBinop682, i64 0 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3g2o27OptimizationAlgorithmDogleg5solveEib:bb.a
  %i.aei = sub i64 %i.adc, %i.acw
  %i.aej = icmp ugt i64 %i.aei, -4
  br i1 %i.aej, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197, label %.lr.ph85.i.i.i.i184

.lr.ph85.i.i.i.i184:                              ; preds = %.lr.ph85.i.i.i.i184.prol.loopexit, %.lr.ph85.i.i.i.i184
  %.05283.i.i.i.i185 = phi i64 [ %i.afd, %.lr.ph85.i.i.i.i184 ], [ %.05283.i.i.i.i185.unr, %.lr.ph85.i.i.i.i184.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i186 = phi double [ %i.afc, %.lr.ph85.i.i.i.i184 ], [ %.182.i.i.i.i186.unr, %.lr.ph85.i.i.i.i184.prol.loopexit ]
  %i.aek = getelementptr inbounds [8 x i8], ptr %.pre429.pre, i64 %.05283.i.i.i.i185
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !20 ; 2 uses
  %i.aem = fmul double %i.ael, %i.ael
  %i.aen = fadd double %.182.i.i.i.i186, %i.aem
  %i.aeo = getelementptr [8 x i8], ptr %.pre429.pre, i64 %.05283.i.i.i.i185
  %i.aep = getelementptr i8, ptr %i.aeo, i64 8
  %i.aeq = load double, ptr %i.aep, align 8, !tbaa !20 ; 2 uses
  %i.aer = fmul double %i.aeq, %i.aeq
  %i.aes = fadd double %i.aen, %i.aer
  %i.aet = getelementptr [8 x i8], ptr %.pre429.pre, i64 %.05283.i.i.i.i185
  %i.aeu = getelementptr i8, ptr %i.aet, i64 16
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !20 ; 2 uses
  %i.aew = fmul double %i.aev, %i.aev
  %i.aex = fadd double %i.aes, %i.aew
  %i.aey = getelementptr [8 x i8], ptr %.pre429.pre, i64 %.05283.i.i.i.i185
  %i.aez = getelementptr i8, ptr %i.aey, i64 24
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !20 ; 2 uses
  %i.afb = fmul double %i.afa, %i.afa
  %i.afc = fadd double %i.aex, %i.afb             ; 2 uses
  %i.afd = add nsw i64 %.05283.i.i.i.i185, 4      ; 2 uses
  %exitcond.not.i.i.i.i187.3 = icmp eq i64 %i.afd, %i.acw
  br i1 %exitcond.not.i.i.i.i187.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197, label %.lr.ph85.i.i.i.i184, !llvm.loop !105

bb.bt:                                            ; preds = %bb.bo
  %i.afe = load double, ptr %.pre429.pre, align 8, !tbaa !20 ; 2 uses
  %i.aff = fmul double %i.afe, %i.afe
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197: ; preds = %.lr.ph85.i.i.i.i184.prol.loopexit, %.lr.ph85.i.i.i.i184, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit.thread, %bb.bs, %bb.bt
  %.0.i.i183 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit.thread ], [ %i.aea, %bb.bs ], [ %i.aff, %bb.bt ], [ %.lcssa722.unr, %.lr.ph85.i.i.i.i184.prol.loopexit ], [ %i.afc, %.lr.ph85.i.i.i.i184 ]
  %i.afg = fneg double %.0.i.i183
  %i.afh = tail call double @llvm.fmuladd.f64(double %i.acx, double %i.acx, double %i.afg)
  %i.afi = fmul double %.0.i.i166341, %i.afh
  %i.afj = tail call double @llvm.fmuladd.f64(double %.0.i.i.i149337340, double %.0.i.i.i149337340, double %i.afi)
  %i.afk = tail call double @sqrt(double noundef %i.afj) #20
  %i.afl = fsub double %i.afk, %.0.i.i.i149337340
  %i.afm = fdiv double %i.afl, %.0.i.i166341
  br label %bb.cb

bb.bu:                                            ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit
  %i.afn = icmp eq i64 %.pre428, 0
  br i1 %i.afn, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.afo = sdiv i64 %.pre428, 4
  %i.afp = shl nsw i64 %i.afo, 2                  ; 3 uses
  %i.afq = sdiv i64 %.pre428, 2
  %i.afr = shl nsw i64 %i.afq, 1                  ; 6 uses
  %.off.i.i.i.i198 = add i64 %.pre428, 1
  %.not.i.i.i.i199 = icmp ult i64 %.off.i.i.i.i198, 3
  br i1 %.not.i.i.i.i199, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afs = load <2 x double>, ptr %i.xo, align 16, !tbaa !19 ; 2 uses
  %i.aft = fmul <2 x double> %i.afs, %i.afs       ; 3 uses
  %i.afu = icmp sgt i64 %.pre428, 3
  br i1 %i.afu, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.afv = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.afw = load <2 x double>, ptr %i.afv, align 16, !tbaa !19 ; 2 uses
  %i.afx = fmul <2 x double> %i.afw, %i.afw       ; 2 uses
  %i.afy = icmp samesign ugt i64 %.pre428, 7
  br i1 %i.afy, label %.lr.ph.i.i.i.i209, label %._crit_edge.i.i.i.i206

._crit_edge.i.i.i.i206:                           ; preds = %.lr.ph.i.i.i.i209, %bb.bx
  %.075.lcssa.i.i.i.i207 = phi <2 x double> [ %i.afx, %bb.bx ], [ %i.agj, %.lr.ph.i.i.i.i209 ]
  %.072.lcssa.i.i.i.i208 = phi <2 x double> [ %i.aft, %bb.bx ], [ %i.age, %.lr.ph.i.i.i.i209 ]
  %i.afz = fadd <2 x double> %.075.lcssa.i.i.i.i207, %.072.lcssa.i.i.i.i208 ; 2 uses
  %i.aga = icmp sgt i64 %i.afr, %i.afp
  br i1 %i.aga, label %bb.by, label %bb.bz

.lr.ph.i.i.i.i209:                                ; preds = %bb.bx, %.lr.ph.i.i.i.i209
  %.05480.i.i.i.i210 = phi i64 [ %.054.i.i.i.i214, %.lr.ph.i.i.i.i209 ], [ 4, %bb.bx ] ; 3 uses
  %.054.in79.i.i.i.i211 = phi i64 [ %.05480.i.i.i.i210, %.lr.ph.i.i.i.i209 ], [ 0, %bb.bx ]
  %.07278.i.i.i.i212 = phi <2 x double> [ %i.age, %.lr.ph.i.i.i.i209 ], [ %i.aft, %bb.bx ]
  %.07577.i.i.i.i213 = phi <2 x double> [ %i.agj, %.lr.ph.i.i.i.i209 ], [ %i.afx, %bb.bx ]
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.05480.i.i.i.i210
  %i.agc = load <2 x double>, ptr %i.agb, align 16, !tbaa !19 ; 2 uses
  %i.agd = fmul <2 x double> %i.agc, %i.agc
  %i.age = fadd <2 x double> %.07278.i.i.i.i212, %i.agd ; 2 uses
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.054.in79.i.i.i.i211
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  %i.agh = load <2 x double>, ptr %i.agg, align 16, !tbaa !19 ; 2 uses
  %i.agi = fmul <2 x double> %i.agh, %i.agh
  %i.agj = fadd <2 x double> %.07577.i.i.i.i213, %i.agi ; 2 uses
  %.054.i.i.i.i214 = add nuw nsw i64 %.05480.i.i.i.i210, 4 ; 2 uses
  %i.agk = icmp slt i64 %.054.i.i.i.i214, %i.afp
  br i1 %i.agk, label %.lr.ph.i.i.i.i209, label %._crit_edge.i.i.i.i206, !llvm.loop !103

bb.by:                                            ; preds = %._crit_edge.i.i.i.i206
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.afp
  %i.agm = load <2 x double>, ptr %i.agl, align 16, !tbaa !19 ; 2 uses
  %i.agn = fmul <2 x double> %i.agm, %i.agm
  %i.ago = fadd <2 x double> %i.afz, %i.agn
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i.i.i.i206, %bb.bw
  %.274.i.i.i.i200 = phi <2 x double> [ %i.aft, %bb.bw ], [ %i.ago, %bb.by ], [ %i.afz, %._crit_edge.i.i.i.i206 ] ; 2 uses
  %shift690 = shufflevector <2 x double> %.274.i.i.i.i200, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop691 = fadd <2 x double> %.274.i.i.i.i200, %shift690
  %i.agp = extractelement <2 x double> %foldExtExtBinop691, i64 0 ; 3 uses
  %i.agq = icmp slt i64 %i.afr, %.pre428
  br i1 %i.agq, label %.lr.ph85.i.i.i.i202.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215

.lr.ph85.i.i.i.i202.preheader:                    ; preds = %bb.bz
  %i.agr = sub i64 %.pre428, %i.afr
  %xtraiter764 = and i64 %i.agr, 3                ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph85.i.i.i.i202.prol.loopexit, label %.lr.ph85.i.i.i.i202.prol

.lr.ph85.i.i.i.i202.prol:                         ; preds = %.lr.ph85.i.i.i.i202.preheader, %.lr.ph85.i.i.i.i202.prol
  %.05283.i.i.i.i203.prol = phi i64 [ %i.agw, %.lr.ph85.i.i.i.i202.prol ], [ %i.afr, %.lr.ph85.i.i.i.i202.preheader ] ; 2 uses
  %.182.i.i.i.i204.prol = phi double [ %i.agv, %.lr.ph85.i.i.i.i202.prol ], [ %i.agp, %.lr.ph85.i.i.i.i202.preheader ]
  %prol.iter766 = phi i64 [ %prol.iter766.next, %.lr.ph85.i.i.i.i202.prol ], [ 0, %.lr.ph85.i.i.i.i202.preheader ]
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %.05283.i.i.i.i203.prol
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !20 ; 2 uses
  %i.agu = fmul double %i.agt, %i.agt
  %i.agv = fadd double %.182.i.i.i.i204.prol, %i.agu ; 3 uses
  %i.agw = add nsw i64 %.05283.i.i.i.i203.prol, 1 ; 2 uses
  %prol.iter766.next = add i64 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i64 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %.lr.ph85.i.i.i.i202.prol.loopexit, label %.lr.ph85.i.i.i.i202.prol, !llvm.loop !127

.lr.ph85.i.i.i.i202.prol.loopexit:                ; preds = %.lr.ph85.i.i.i.i202.prol, %.lr.ph85.i.i.i.i202.preheader
  %.lcssa719.unr = phi double [ poison, %.lr.ph85.i.i.i.i202.preheader ], [ %i.agv, %.lr.ph85.i.i.i.i202.prol ]
  %.05283.i.i.i.i203.unr = phi i64 [ %i.afr, %.lr.ph85.i.i.i.i202.preheader ], [ %i.agw, %.lr.ph85.i.i.i.i202.prol ]
  %.182.i.i.i.i204.unr = phi double [ %i.agp, %.lr.ph85.i.i.i.i202.preheader ], [ %i.agv, %.lr.ph85.i.i.i.i202.prol ]
  %i.agx = sub i64 %i.afr, %.pre428
  %i.agy = icmp ugt i64 %i.agx, -4
  br i1 %i.agy, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215, label %.lr.ph85.i.i.i.i202

.lr.ph85.i.i.i.i202:                              ; preds = %.lr.ph85.i.i.i.i202.prol.loopexit, %.lr.ph85.i.i.i.i202
  %.05283.i.i.i.i203 = phi i64 [ %i.ahs, %.lr.ph85.i.i.i.i202 ], [ %.05283.i.i.i.i203.unr, %.lr.ph85.i.i.i.i202.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i204 = phi double [ %i.ahr, %.lr.ph85.i.i.i.i202 ], [ %.182.i.i.i.i204.unr, %.lr.ph85.i.i.i.i202.prol.loopexit ]
  %i.agz = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %.05283.i.i.i.i203
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !20 ; 2 uses
  %i.ahb = fmul double %i.aha, %i.aha
  %i.ahc = fadd double %.182.i.i.i.i204, %i.ahb
  %i.ahd = getelementptr [8 x i8], ptr %i.xo, i64 %.05283.i.i.i.i203
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 8
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !20 ; 2 uses
  %i.ahg = fmul double %i.ahf, %i.ahf
  %i.ahh = fadd double %i.ahc, %i.ahg
  %i.ahi = getelementptr [8 x i8], ptr %i.xo, i64 %.05283.i.i.i.i203
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 16
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !20 ; 2 uses
  %i.ahl = fmul double %i.ahk, %i.ahk
  %i.ahm = fadd double %i.ahh, %i.ahl
  %i.ahn = getelementptr [8 x i8], ptr %i.xo, i64 %.05283.i.i.i.i203
  %i.aho = getelementptr i8, ptr %i.ahn, i64 24
  %i.ahp = load double, ptr %i.aho, align 8, !tbaa !20 ; 2 uses
  %i.ahq = fmul double %i.ahp, %i.ahp
  %i.ahr = fadd double %i.ahm, %i.ahq             ; 2 uses
  %i.ahs = add nsw i64 %.05283.i.i.i.i203, 4      ; 2 uses
  %exitcond.not.i.i.i.i205.3 = icmp eq i64 %i.ahs, %.pre428
  br i1 %exitcond.not.i.i.i.i205.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215, label %.lr.ph85.i.i.i.i202, !llvm.loop !105

bb.ca:                                            ; preds = %bb.bv
  %i.aht = fmul double %i.acu, %i.acu
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215: ; preds = %.lr.ph85.i.i.i.i202.prol.loopexit, %.lr.ph85.i.i.i.i202, %bb.bu, %bb.bz, %bb.ca
  %.0.i.i201 = phi double [ 0.000000e+00, %bb.bu ], [ %i.agp, %bb.bz ], [ %i.aht, %bb.ca ], [ %.lcssa719.unr, %.lr.ph85.i.i.i.i202.prol.loopexit ], [ %i.ahr, %.lr.ph85.i.i.i.i202 ]
  %i.ahu = load double, ptr %i.mi, align 8, !tbaa !81 ; 2 uses
  %i.ahv = fneg double %.0.i.i201
  %i.ahw = tail call double @llvm.fmuladd.f64(double %i.ahu, double %i.ahu, double %i.ahv) ; 2 uses
  %i.ahx = fmul double %.0.i.i166, %i.ahw
  %i.ahy = tail call double @llvm.fmuladd.f64(double %.0.i.i.i149.ph506, double %.0.i.i.i149.ph506, double %i.ahx)
  %i.ahz = tail call double @sqrt(double noundef %i.ahy) #20
  %i.aia = fadd double %.0.i.i.i149.ph506, %i.ahz
  %i.aib = fdiv double %i.ahw, %i.aia
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197
  %i.aic = phi i64 [ %.pre428, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215 ], [ %i.acw, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197 ] ; 3 uses
  %i.aid = phi ptr [ %i.xo, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215 ], [ %.pre429.pre, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197 ] ; 6 uses
  %storemerge = phi double [ %i.aib, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit215 ], [ %i.afm, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11squaredNormEv.exit197 ] ; 5 uses
  %i.aie = ptrtoaddr ptr %i.aid to i64
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %storemerge, i64 0
  %i.aif = load i64, ptr %i.mk, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i216 = icmp eq i64 %i.aif, %i.aic
  br i1 %.not.i.i.i.i.i.i.i.i216, label %bb.cc, label %thread-pre-split.i.i.i.i.i.i.i217

thread-pre-split.i.i.i.i.i.i.i217:                ; preds = %bb.cb
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 noundef %i.aic, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i218 = load i64, ptr %i.mk, align 8, !tbaa !80
  br label %bb.cc

bb.cc:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i217, %bb.cb
  %i.aig = phi i64 [ %.pr.i.i.i.i.i.i.i218, %thread-pre-split.i.i.i.i.i.i.i217 ], [ %i.aic, %bb.cb ] ; 7 uses
  %i.aih = load ptr, ptr %i.mj, align 8, !tbaa !62 ; 6 uses
  %i.aii = ptrtoaddr ptr %i.aih to i64            ; 2 uses
  %i.aij = sdiv i64 %i.aig, 2
  %i.aik = shl nsw i64 %i.aij, 1                  ; 7 uses
  %i.ail = icmp sgt i64 %i.aig, 1
  br i1 %i.ail, label %.lr.ph.i.preheader.i.i.i.i.i.i.i223, label %._crit_edge.i.i.i.i.i.i.i.i219

.lr.ph.i.preheader.i.i.i.i.i.i.i223:              ; preds = %bb.cc
  %i.aim = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i224

._crit_edge.i.i.i.i.i.i.i.i219:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i224, %bb.cc
  %i.ain = icmp slt i64 %i.aik, %i.aig
  br i1 %i.ain, label %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i220.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i219
  %i.aio = sub i64 %i.aig, %i.aik                 ; 3 uses
  %min.iters.check633 = icmp ult i64 %i.aio, 4
  br i1 %min.iters.check633, label %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706, label %vector.memcheck629

vector.memcheck629:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader
  %i.aip = sub i64 %i.qq, %i.aii
  %diff.check630 = icmp ugt i64 %i.aip, -32
  %i.aiq = sub i64 %i.aie, %i.aii
  %diff.check631 = icmp ugt i64 %i.aiq, -32
  %conflict.rdx = or i1 %diff.check630, %diff.check631
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck629
  %n.vec635 = and i64 %i.aio, -4                  ; 3 uses
  %i.air = add i64 %i.aik, %n.vec635
  %broadcast.splatinsert636 = insertelement <2 x double> poison, double %storemerge, i64 0
  %broadcast.splat637 = shufflevector <2 x double> %broadcast.splatinsert636, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph634
  %index639 = phi i64 [ 0, %vector.ph634 ], [ %index.next644, %vector.body638 ] ; 2 uses
  %i.ais = add i64 %i.aik, %index639              ; 3 uses
  %i.ait = getelementptr inbounds [8 x i8], ptr %i.aih, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.aid, i64 %i.ais ; 2 uses
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ais ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %wide.load640 = load <2 x double>, ptr %i.aiv, align 8, !tbaa !20
  %wide.load641 = load <2 x double>, ptr %i.aiw, align 8, !tbaa !20
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %wide.load642 = load <2 x double>, ptr %i.aiu, align 8, !tbaa !20 ; 2 uses
  %wide.load643 = load <2 x double>, ptr %i.aix, align 8, !tbaa !20 ; 2 uses
  %i.aiy = fsub <2 x double> %wide.load640, %wide.load642
  %i.aiz = fsub <2 x double> %wide.load641, %wide.load643
  %i.aja = fmul <2 x double> %broadcast.splat637, %i.aiy
  %i.ajb = fmul <2 x double> %broadcast.splat637, %i.aiz
  %i.ajc = fadd <2 x double> %wide.load642, %i.aja
  %i.ajd = fadd <2 x double> %wide.load643, %i.ajb
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  store <2 x double> %i.ajc, ptr %i.ait, align 8, !tbaa !20
  store <2 x double> %i.ajd, ptr %i.aje, align 8, !tbaa !20
  %index.next644 = add nuw i64 %index639, 4       ; 2 uses
  %i.ajf = icmp eq i64 %index.next644, %n.vec635
  br i1 %i.ajf, label %middle.block645, label %vector.body638, !llvm.loop !128

middle.block645:                                  ; preds = %vector.body638
  %cmp.n646 = icmp eq i64 %i.aio, %n.vec635
  br i1 %cmp.n646, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706

.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706:         ; preds = %vector.memcheck629, %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader, %middle.block645
  %.05.i.i.i.i.i.i.i.i.i221.ph = phi i64 [ %i.aik, %vector.memcheck629 ], [ %i.aik, %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader ], [ %i.air, %middle.block645 ] ; 7 uses
  %i.ajg = sub i64 %i.aig, %.05.i.i.i.i.i.i.i.i.i221.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i221.ph, 1
  %xtraiter770 = and i64 %i.ajg, 1
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  br i1 %lcmp.mod771.not, label %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i220.prol

.lr.ph.i.i.i.i.i.i.i.i.i220.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706
  %i.ajh = getelementptr inbounds [8 x i8], ptr %i.aih, i64 %.05.i.i.i.i.i.i.i.i.i221.ph
  %i.aji = getelementptr inbounds [8 x i8], ptr %i.aid, i64 %.05.i.i.i.i.i.i.i.i.i221.ph
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i221.ph
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !20
  %i.ajl = load double, ptr %i.aji, align 8, !tbaa !20 ; 2 uses
  %i.ajm = fsub double %i.ajk, %i.ajl
  %i.ajn = fmul double %storemerge, %i.ajm
  %i.ajo = fadd double %i.ajl, %i.ajn
  store double %i.ajo, ptr %i.ajh, align 8, !tbaa !20
  %i.ajp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i221.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i220.prol, %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706
  %.05.i.i.i.i.i.i.i.i.i221.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i221.ph, %.lr.ph.i.i.i.i.i.i.i.i.i220.preheader706 ], [ %i.ajp, %.lr.ph.i.i.i.i.i.i.i.i.i220.prol ]
  %i.ajq = icmp eq i64 %i.aig, %.neg
  br i1 %i.ajq, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i220

.lr.ph.i.i.i.i.i.i.i.i.i220:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i220
  %.05.i.i.i.i.i.i.i.i.i221 = phi i64 [ %i.aki, %.lr.ph.i.i.i.i.i.i.i.i.i220 ], [ %.05.i.i.i.i.i.i.i.i.i221.unr, %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit ] ; 5 uses
  %i.ajr = getelementptr inbounds [8 x i8], ptr %i.aih, i64 %.05.i.i.i.i.i.i.i.i.i221
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.aid, i64 %.05.i.i.i.i.i.i.i.i.i221
  %i.ajt = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %.05.i.i.i.i.i.i.i.i.i221
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !20
  %i.ajv = load double, ptr %i.ajs, align 8, !tbaa !20 ; 2 uses
  %i.ajw = fsub double %i.aju, %i.ajv
  %i.ajx = fmul double %storemerge, %i.ajw
  %i.ajy = fadd double %i.ajv, %i.ajx
  store double %i.ajy, ptr %i.ajr, align 8, !tbaa !20
  %i.ajz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i221, 1 ; 3 uses
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.aih, i64 %i.ajz
  %i.akb = getelementptr inbounds [8 x i8], ptr %i.aid, i64 %i.ajz
  %i.akc = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ajz
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !20
  %i.ake = load double, ptr %i.akb, align 8, !tbaa !20 ; 2 uses
  %i.akf = fsub double %i.akd, %i.ake
  %i.akg = fmul double %storemerge, %i.akf
  %i.akh = fadd double %i.ake, %i.akg
  store double %i.akh, ptr %i.aka, align 8, !tbaa !20
  %i.aki = add nsw i64 %.05.i.i.i.i.i.i.i.i.i221, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i222.1 = icmp eq i64 %i.aki, %i.aig
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i222.1, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i220, !llvm.loop !129

.lr.ph.i.i.i.i.i.i.i.i224:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i224, %.lr.ph.i.preheader.i.i.i.i.i.i.i223
  %.011.i.i.i.i.i.i.i.i225 = phi i64 [ %i.akr, %.lr.ph.i.i.i.i.i.i.i.i224 ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i223 ] ; 4 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %.011.i.i.i.i.i.i.i.i225
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aid, i64 %.011.i.i.i.i.i.i.i.i225
  %i.akl = load <2 x double>, ptr %i.akk, align 1, !tbaa !19 ; 2 uses
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %.011.i.i.i.i.i.i.i.i225
  %i.akn = load <2 x double>, ptr %i.akm, align 1, !tbaa !19
  %i.ako = fsub <2 x double> %i.akn, %i.akl
  %i.akp = fmul <2 x double> %i.aim, %i.ako
  %i.akq = fadd <2 x double> %i.akl, %i.akp
  store <2 x double> %i.akq, ptr %i.akj, align 16, !tbaa !19
  %i.akr = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i225, 2 ; 2 uses
  %i.aks = icmp slt i64 %i.akr, %i.aik
  br i1 %i.aks, label %.lr.ph.i.i.i.i.i.i.i.i224, label %._crit_edge.i.i.i.i.i.i.i.i219, !llvm.loop !130

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i220, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i131, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i121, %middle.block645, %middle.block626, %middle.block610, %._crit_edge.i.i.i.i.i.i.i.i219, %._crit_edge.i.i.i.i.i.i.i.i130, %._crit_edge.i.i.i.i.i.i.i.i120
  %.sink = phi i32 [ 2, %._crit_edge.i.i.i.i.i.i.i.i120 ], [ 1, %._crit_edge.i.i.i.i.i.i.i.i130 ], [ 3, %._crit_edge.i.i.i.i.i.i.i.i219 ], [ 1, %middle.block626 ], [ 2, %middle.block610 ], [ 3, %middle.block645 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i131.prol.loopexit ], [ 2, %.lr.ph.i.i.i.i.i.i.i.i.i121.prol.loopexit ], [ 2, %.lr.ph.i.i.i.i.i.i.i.i.i121 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i131 ], [ 3, %.lr.ph.i.i.i.i.i.i.i.i.i220 ], [ 3, %.lr.ph.i.i.i.i.i.i.i.i.i220.prol.loopexit ]
  store i32 %.sink, ptr %i.ml, align 8, !tbaa !58
  %i.akt = load i64, ptr %i.cd, align 8, !tbaa !80 ; 2 uses
  %i.aku = icmp slt i64 %i.akt, 1
  %.pre430 = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  br i1 %i.aku, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit228, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i226

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i226: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.idx.i.i.i.i.i.i.i.i.i.i.i227 = shl nuw nsw i64 %i.akt, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre430, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i227, i1 false), !tbaa !20
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit228

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit228: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i226
  %i.akv = load ptr, ptr %i.mj, align 8, !tbaa !62
  %i.akw = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 128
  %i.aky = load ptr, ptr %i.akx, align 8
  tail call void %i.aky(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef %.pre430, ptr noundef %i.akv)
  %i.akz = load i64, ptr %i.mk, align 8, !tbaa !80 ; 16 uses
  %i.ala = icmp eq i64 %i.akz, 0
  br i1 %i.ala, label %_ZNK5Eigen10MatrixBaseINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3dotIS3_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit228
  %i.alb = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 11 uses
  %i.alc = load ptr, ptr %i.mj, align 8, !tbaa !62 ; 21 uses
  %i.ald = sdiv i64 %i.akz, 4
  %i.ale = shl nsw i64 %i.ald, 2                  ; 8 uses
  %i.alf = sdiv i64 %i.akz, 2
  %i.alg = shl nsw i64 %i.alf, 1                  ; 12 uses
  %.off.i.i.i.i.i229 = add i64 %i.akz, 1
  %.not.i.i.i.i.i230 = icmp ult i64 %.off.i.i.i.i.i229, 3
  br i1 %.not.i.i.i.i.i230, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.alh = load <2 x double>, ptr %i.alb, align 16, !tbaa !19
  %i.ali = load <2 x double>, ptr %i.alc, align 16
  %i.alj = fmul <2 x double> %i.alh, %i.ali       ; 3 uses
  %i.alk = icmp sgt i64 %i.akz, 3
  br i1 %i.alk, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.all = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.alm = load <2 x double>, ptr %i.all, align 16, !tbaa !19
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  %i.alo = load <2 x double>, ptr %i.aln, align 16, !tbaa !19
  %i.alp = fmul <2 x double> %i.alm, %i.alo       ; 2 uses
  %i.alq = icmp samesign ugt i64 %i.akz, 7
  br i1 %i.alq, label %.lr.ph.i.i.i.i.i240, label %._crit_edge.i.i.i.i.i237

._crit_edge.i.i.i.i.i237:                         ; preds = %.lr.ph.i.i.i.i.i240, %bb.cf
  %.075.lcssa.i.i.i.i.i238 = phi <2 x double> [ %i.alp, %bb.cf ], [ %i.amf, %.lr.ph.i.i.i.i.i240 ]
  %.072.lcssa.i.i.i.i.i239 = phi <2 x double> [ %i.alj, %bb.cf ], [ %i.aly, %.lr.ph.i.i.i.i.i240 ]
  %i.alr = fadd <2 x double> %.075.lcssa.i.i.i.i.i238, %.072.lcssa.i.i.i.i.i239 ; 2 uses
  %i.als = icmp sgt i64 %i.alg, %i.ale
  br i1 %i.als, label %bb.cg, label %bb.ch

.lr.ph.i.i.i.i.i240:                              ; preds = %bb.cf, %.lr.ph.i.i.i.i.i240
  %.05480.i.i.i.i.i241 = phi i64 [ %.054.i.i.i.i.i245, %.lr.ph.i.i.i.i.i240 ], [ 4, %bb.cf ] ; 4 uses
  %.054.in79.i.i.i.i.i242 = phi i64 [ %.05480.i.i.i.i.i241, %.lr.ph.i.i.i.i.i240 ], [ 0, %bb.cf ]
  %.07278.i.i.i.i.i243 = phi <2 x double> [ %i.aly, %.lr.ph.i.i.i.i.i240 ], [ %i.alj, %bb.cf ]
  %.07577.i.i.i.i.i244 = phi <2 x double> [ %i.amf, %.lr.ph.i.i.i.i.i240 ], [ %i.alp, %bb.cf ]
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.alb, i64 %.05480.i.i.i.i.i241
  %i.alu = load <2 x double>, ptr %i.alt, align 16, !tbaa !19
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %.05480.i.i.i.i.i241
  %i.alw = load <2 x double>, ptr %i.alv, align 16, !tbaa !19
  %i.alx = fmul <2 x double> %i.alu, %i.alw
  %i.aly = fadd <2 x double> %.07278.i.i.i.i.i243, %i.alx ; 2 uses
  %i.alz = add nuw nsw i64 %.054.in79.i.i.i.i.i242, 6 ; 2 uses
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alb, i64 %i.alz
  %i.amb = load <2 x double>, ptr %i.ama, align 16, !tbaa !19
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.alz
  %i.amd = load <2 x double>, ptr %i.amc, align 16, !tbaa !19
  %i.ame = fmul <2 x double> %i.amb, %i.amd
  %i.amf = fadd <2 x double> %.07577.i.i.i.i.i244, %i.ame ; 2 uses
  %.054.i.i.i.i.i245 = add nuw nsw i64 %.05480.i.i.i.i.i241, 4 ; 2 uses
  %i.amg = icmp slt i64 %.054.i.i.i.i.i245, %i.ale
  br i1 %i.amg, label %.lr.ph.i.i.i.i.i240, label %._crit_edge.i.i.i.i.i237, !llvm.loop !122

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i.i237
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.alb, i64 %i.ale
  %i.ami = load <2 x double>, ptr %i.amh, align 16, !tbaa !19
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.ale
  %i.amk = load <2 x double>, ptr %i.amj, align 16, !tbaa !19
  %i.aml = fmul <2 x double> %i.ami, %i.amk
  %i.amm = fadd <2 x double> %i.alr, %i.aml
  br label %bb.ch
end_hunk_2
