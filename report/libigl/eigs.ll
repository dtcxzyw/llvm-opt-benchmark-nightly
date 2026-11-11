Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE4initERNS6_3MapIKS9_Li0ENS6_6StrideILi0ELi0EEEEERl:bb.a
  %i.ry = add nsw i64 %.05283.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ry, %i.qb
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !27

bb.an:                                            ; preds = %.loopexit88
  %i.rz = load double, ptr %i.qa, align 8, !tbaa !56
  %i.sa = call noundef double @llvm.fabs.f64(double %i.rz)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.an, %bb.am
  %.3.i.i.i.i = phi double [ %i.re, %bb.am ], [ %i.sa, %bb.an ], [ %.lcssa210.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.rx, %.lr.ph85.i.i.i.i ]
  %i.sb = fcmp olt double %.3.i.i.i.i, f0x3CB0000000000000
  br i1 %i.sb, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE8maxCoeffEv.exit
  %i.sc = icmp slt i64 %i.qb, 1
  br i1 %i.sc, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.ao
  %.idx.i.i.i.i.i.i.i.i.i.i.i46 = shl nuw nsw i64 %i.qb, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qa, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i46, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.ap:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, %.noexc, %bb.ab, %bb.aq, %thread-pre-split.i.i.i.i
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.0.0) #33
  br label %common.resume

bb.aq:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE8maxCoeffEv.exit
  %i.se = load ptr, ptr %i.am, align 8, !tbaa !261, !nonnull !97, !align !138
  %i.sf = load ptr, ptr %i.ap, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.se, ptr noundef nonnull %i.qa, ptr noundef %i.sf)
          to label %.noexc64 unwind label %bb.ap

.noexc64:                                         ; preds = %bb.aq
  %i.sg = load i64, ptr %i.ar, align 8, !tbaa !135 ; 10 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.noexc64
  %i.si = load ptr, ptr %i.s, align 8, !tbaa !119 ; 11 uses
  %i.sj = load ptr, ptr %i.ap, align 8, !tbaa !119 ; 11 uses
  %i.sk = sdiv i64 %i.sg, 4
  %i.sl = shl nsw i64 %i.sk, 2                    ; 4 uses
  %i.sm = sdiv i64 %i.sg, 2
  %i.sn = shl nsw i64 %i.sm, 1                    ; 6 uses
  %.off.i.i.i.i.i.i.i47 = add i64 %i.sg, 1
  %.not.i.i.i.i.i.i.i48 = icmp ult i64 %.off.i.i.i.i.i.i.i47, 3
  br i1 %.not.i.i.i.i.i.i.i48, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.so = load <2 x double>, ptr %i.si, align 16, !tbaa !131
  %i.sp = load <2 x double>, ptr %i.sj, align 16, !tbaa !131
  %i.sq = fmul <2 x double> %i.so, %i.sp          ; 3 uses
  %i.sr = icmp sgt i64 %i.sg, 3
  br i1 %i.sr, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ss = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.st = load <2 x double>, ptr %i.ss, align 16, !tbaa !131
  %i.su = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sv = load <2 x double>, ptr %i.su, align 16, !tbaa !131
  %i.sw = fmul <2 x double> %i.st, %i.sv          ; 2 uses
  %i.sx = icmp samesign ugt i64 %i.sg, 7
  br i1 %i.sx, label %.lr.ph.i.i.i.i.i.i.i58, label %._crit_edge.i.i.i.i.i.i.i55

._crit_edge.i.i.i.i.i.i.i55:                      ; preds = %.lr.ph.i.i.i.i.i.i.i58, %bb.at
  %.075.lcssa.i.i.i.i.i.i.i56 = phi <2 x double> [ %i.sw, %bb.at ], [ %i.tm, %.lr.ph.i.i.i.i.i.i.i58 ]
  %.072.lcssa.i.i.i.i.i.i.i57 = phi <2 x double> [ %i.sq, %bb.at ], [ %i.tf, %.lr.ph.i.i.i.i.i.i.i58 ]
  %i.sy = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i56, %.072.lcssa.i.i.i.i.i.i.i57 ; 2 uses
  %i.sz = icmp sgt i64 %i.sn, %i.sl
  br i1 %i.sz, label %bb.au, label %bb.av

.lr.ph.i.i.i.i.i.i.i58:                           ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i58
  %.05480.i.i.i.i.i.i.i59 = phi i64 [ %.054.i.i.i.i.i.i.i63, %.lr.ph.i.i.i.i.i.i.i58 ], [ 4, %bb.at ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i60 = phi i64 [ %.05480.i.i.i.i.i.i.i59, %.lr.ph.i.i.i.i.i.i.i58 ], [ 0, %bb.at ]
  %.07278.i.i.i.i.i.i.i61 = phi <2 x double> [ %i.tf, %.lr.ph.i.i.i.i.i.i.i58 ], [ %i.sq, %bb.at ]
  %.07577.i.i.i.i.i.i.i62 = phi <2 x double> [ %i.tm, %.lr.ph.i.i.i.i.i.i.i58 ], [ %i.sw, %bb.at ]
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %.05480.i.i.i.i.i.i.i59
  %i.tb = load <2 x double>, ptr %i.ta, align 16, !tbaa !131
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %.05480.i.i.i.i.i.i.i59
  %i.td = load <2 x double>, ptr %i.tc, align 16, !tbaa !131
  %i.te = fmul <2 x double> %i.tb, %i.td
  %i.tf = fadd <2 x double> %.07278.i.i.i.i.i.i.i61, %i.te ; 2 uses
  %i.tg = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i60, 6 ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.tg
  %i.ti = load <2 x double>, ptr %i.th, align 16, !tbaa !131
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.tg
  %i.tk = load <2 x double>, ptr %i.tj, align 16, !tbaa !131
  %i.tl = fmul <2 x double> %i.ti, %i.tk
  %i.tm = fadd <2 x double> %.07577.i.i.i.i.i.i.i62, %i.tl ; 2 uses
  %.054.i.i.i.i.i.i.i63 = add nuw nsw i64 %.05480.i.i.i.i.i.i.i59, 4 ; 2 uses
  %i.tn = icmp slt i64 %.054.i.i.i.i.i.i.i63, %i.sl
  br i1 %i.tn, label %.lr.ph.i.i.i.i.i.i.i58, label %._crit_edge.i.i.i.i.i.i.i55, !llvm.loop !13

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i55
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sl
  %i.tp = load <2 x double>, ptr %i.to, align 16, !tbaa !131
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sl
  %i.tr = load <2 x double>, ptr %i.tq, align 16, !tbaa !131
  %i.ts = fmul <2 x double> %i.tp, %i.tr
  %i.tt = fadd <2 x double> %i.sy, %i.ts
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i.i.i.i.i.i.i55, %bb.as
  %.274.i.i.i.i.i.i.i49 = phi <2 x double> [ %i.sq, %bb.as ], [ %i.tt, %bb.au ], [ %i.sy, %._crit_edge.i.i.i.i.i.i.i55 ]
  %i.tu = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i49) ; 3 uses
  %i.tv = icmp slt i64 %i.sn, %i.sg
  br i1 %i.tv, label %.lr.ph85.i.i.i.i.i.i.i51.preheader, label %.loopexit

.lr.ph85.i.i.i.i.i.i.i51.preheader:               ; preds = %bb.av
  %i.tw = sub i64 %i.sg, %i.sn
  %xtraiter237 = and i64 %i.tw, 3                 ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i51.prol

.lr.ph85.i.i.i.i.i.i.i51.prol:                    ; preds = %.lr.ph85.i.i.i.i.i.i.i51.preheader, %.lr.ph85.i.i.i.i.i.i.i51.prol
  %.05283.i.i.i.i.i.i.i52.prol = phi i64 [ %i.ud, %.lr.ph85.i.i.i.i.i.i.i51.prol ], [ %i.sn, %.lr.ph85.i.i.i.i.i.i.i51.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i53.prol = phi double [ %i.uc, %.lr.ph85.i.i.i.i.i.i.i51.prol ], [ %i.tu, %.lr.ph85.i.i.i.i.i.i.i51.preheader ]
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.lr.ph85.i.i.i.i.i.i.i51.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i51.preheader ]
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.si, i64 %.05283.i.i.i.i.i.i.i52.prol
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %.05283.i.i.i.i.i.i.i52.prol
  %i.tz = load double, ptr %i.tx, align 8, !tbaa !56
  %i.ua = load double, ptr %i.ty, align 8, !tbaa !56
  %i.ub = fmul double %i.tz, %i.ua
  %i.uc = fadd double %.182.i.i.i.i.i.i.i53.prol, %i.ub ; 3 uses
  %i.ud = add nsw i64 %.05283.i.i.i.i.i.i.i52.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i51.prol, !llvm.loop !1370

.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit:           ; preds = %.lr.ph85.i.i.i.i.i.i.i51.prol, %.lr.ph85.i.i.i.i.i.i.i51.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i51.preheader ], [ %i.uc, %.lr.ph85.i.i.i.i.i.i.i51.prol ]
  %.05283.i.i.i.i.i.i.i52.unr = phi i64 [ %i.sn, %.lr.ph85.i.i.i.i.i.i.i51.preheader ], [ %i.ud, %.lr.ph85.i.i.i.i.i.i.i51.prol ]
  %.182.i.i.i.i.i.i.i53.unr = phi double [ %i.tu, %.lr.ph85.i.i.i.i.i.i.i51.preheader ], [ %i.uc, %.lr.ph85.i.i.i.i.i.i.i51.prol ]
  %i.ue = sub i64 %i.sn, %i.sg
  %i.uf = icmp ugt i64 %i.ue, -4
  br i1 %i.uf, label %.loopexit, label %.lr.ph85.i.i.i.i.i.i.i51

.lr.ph85.i.i.i.i.i.i.i51:                         ; preds = %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i51
  %.05283.i.i.i.i.i.i.i52 = phi i64 [ %i.vh, %.lr.ph85.i.i.i.i.i.i.i51 ], [ %.05283.i.i.i.i.i.i.i52.unr, %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i53 = phi double [ %i.vg, %.lr.ph85.i.i.i.i.i.i.i51 ], [ %.182.i.i.i.i.i.i.i53.unr, %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit ]
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.si, i64 %.05283.i.i.i.i.i.i.i52
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %.05283.i.i.i.i.i.i.i52
  %i.ui = load double, ptr %i.ug, align 8, !tbaa !56
  %i.uj = load double, ptr %i.uh, align 8, !tbaa !56
  %i.uk = fmul double %i.ui, %i.uj
  %i.ul = fadd double %.182.i.i.i.i.i.i.i53, %i.uk
  %i.um = add nsw i64 %.05283.i.i.i.i.i.i.i52, 1  ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.um
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %i.um
  %i.up = load double, ptr %i.un, align 8, !tbaa !56
  %i.uq = load double, ptr %i.uo, align 8, !tbaa !56
  %i.ur = fmul double %i.up, %i.uq
  %i.us = fadd double %i.ul, %i.ur
  %i.ut = add nsw i64 %.05283.i.i.i.i.i.i.i52, 2  ; 2 uses
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.ut
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %i.ut
  %i.uw = load double, ptr %i.uu, align 8, !tbaa !56
  %i.ux = load double, ptr %i.uv, align 8, !tbaa !56
  %i.uy = fmul double %i.uw, %i.ux
  %i.uz = fadd double %i.us, %i.uy
  %i.va = add nsw i64 %.05283.i.i.i.i.i.i.i52, 3  ; 2 uses
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.va
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %i.va
  %i.vd = load double, ptr %i.vb, align 8, !tbaa !56
  %i.ve = load double, ptr %i.vc, align 8, !tbaa !56
  %i.vf = fmul double %i.vd, %i.ve
  %i.vg = fadd double %i.uz, %i.vf                ; 2 uses
  %i.vh = add nsw i64 %.05283.i.i.i.i.i.i.i52, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i54.3 = icmp eq i64 %i.vh, %i.sg
  br i1 %exitcond.not.i.i.i.i.i.i.i54.3, label %.loopexit, label %.lr.ph85.i.i.i.i.i.i.i51, !llvm.loop !14

bb.aw:                                            ; preds = %bb.ar
  %i.vi = load double, ptr %i.si, align 8, !tbaa !56
  %i.vj = load double, ptr %i.sj, align 8, !tbaa !56
  %i.vk = fmul double %i.vi, %i.vj
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i51, %bb.aw, %bb.av, %.noexc64
  %.0.i.i.i.i.i50 = phi double [ 0.000000e+00, %.noexc64 ], [ %i.tu, %bb.av ], [ %i.vk, %bb.aw ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.i51.prol.loopexit ], [ %i.vg, %.lr.ph85.i.i.i.i.i.i.i51 ]
  %i.vl = call noundef double @sqrt(double noundef %.0.i.i.i.i.i50) #33
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.ao, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %.loopexit
  %.sink = phi double [ %i.vl, %.loopexit ], [ 0.000000e+00, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i ], [ 0.000000e+00, %bb.ao ]
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %.sink, ptr %i.vm, align 8, !tbaa !254
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.vn, align 8, !tbaa !253
  call void @free(ptr noundef %.sroa.0.0) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra11SymEigsBaseINS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E17retrieve_ritzpairENS_8SortRuleE(ptr noundef nonnull align 8 dereferenceable(292) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Spectra::TridiagEigen", align 8 ; 14 uses
  %3 = alloca %"class.Eigen::Ref.1909", align 8   ; 8 uses
  %4 = alloca %"class.std::vector.1592", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !124
  store ptr %i.d, ptr %3, align 8, !tbaa !296
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !161
  %i.g = load i64, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %i.h, align 8, !tbaa !139
  store i64 %i.g, ptr %2, align 8, !tbaa !298
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.i, i8 0, i64 57, i1 false)
  invoke void @_ZN7Spectra12TridiagEigenIdE7computeERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE(ptr noundef nonnull align 8 dereferenceable(65) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZN7Spectra12TridiagEigenIdEC2ERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !124
  call void @free(ptr noundef %i.m) #33
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !119
  call void @free(ptr noundef %i.n) #33
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !119
  call void @free(ptr noundef %i.o) #33
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !124
  call void @free(ptr noundef %i.p) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.k

_ZN7Spectra12TridiagEigenIdEC2ERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !124
  call void @free(ptr noundef %i.q) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load i8, ptr %i.r, align 8, !tbaa !299, !range !96, !noundef !97
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN7Spectra12TridiagEigenIdEC2ERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.29)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #34
          to label %.noexc unwind label %.body35

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #33
  br label %.body32

bb.e:                                             ; preds = %_ZN7Spectra12TridiagEigenIdEC2ERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !162
  invoke void @_ZN7Spectra7argsortIdEESt6vectorIlSaIlEENS_8SortRuleERKN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEEl(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1592") align 8 %4, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.y)
          to label %.preheader43 unwind label %bb.f

.preheader43:                                     ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !162  ; 6 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader43
  %5 = load ptr, ptr %4, align 8, !tbaa !251      ; 3 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !119 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 3 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !125 ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.z
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8     ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !119 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %i.al = icmp eq i64 %i.z, 1
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.z, 9223372036854775806
  br label %bb.g

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %.01744.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bw, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod72 = trunc i64 %i.z to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.01744.epil.init
  %i.an = load i64, ptr %i.am, align 8, !tbaa !161 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.01744.epil.init
  store double %i.ap, ptr %i.aq, align 8, !tbaa !56
  %i.ar = mul nsw i64 %i.ag, %i.an
  %i.as = getelementptr [8 x i8], ptr %i.ai, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01744.epil.init
  store double %i.at, ptr %i.au, align 8, !tbaa !56
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader43
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.i

.body35:                                          ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.f:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.body32

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.01744 = phi i64 [ 0, %.lr.ph.new ], [ %i.bw, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.01744
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !161 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.01744
  store double %i.bg, ptr %i.bh, align 8, !tbaa !56
  %i.bi = mul nsw i64 %i.ag, %i.be
  %i.bj = getelementptr [8 x i8], ptr %i.ai, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01744
  store double %i.bk, ptr %i.bl, align 8, !tbaa !56
  %i.bm = or disjoint i64 %.01744, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !161 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bm
  store double %i.bq, ptr %i.br, align 8, !tbaa !56
  %i.bs = mul nsw i64 %i.ag, %i.bo
  %i.bt = getelementptr [8 x i8], ptr %i.ai, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bm
  store double %i.bu, ptr %i.bv, align 8, !tbaa !56
  %i.bw = add nuw nsw i64 %.01744, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.g, !llvm.loop !1371

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit, %.preheader
  %6 = load ptr, ptr %4, align 8, !tbaa !251      ; 3 uses
  %.not.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !252
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %6 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.cb) #36
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !124
  call void @free(ptr noundef %i.cc) #33
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !119
  call void @free(ptr noundef %i.ce) #33
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !119
  call void @free(ptr noundef %i.cf) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.i:                                             ; preds = %.lr.ph46, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit
  %.045 = phi i64 [ 0, %.lr.ph46 ], [ %i.ge, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit ] ; 5 uses
  %7 = load ptr, ptr %4, align 8, !tbaa !251
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.045
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !161 ; 3 uses
  %i.ci = load ptr, ptr %i.w, align 8, !tbaa !124, !noalias !1383 ; 2 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64              ; 2 uses
  %i.ck = load i64, ptr %i.ay, align 8, !tbaa !125, !noalias !1383 ; 3 uses
  %i.cl = mul nsw i64 %i.ck, %i.ch
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cl ; 13 uses
  %i.cn = load ptr, ptr %i.az, align 8, !tbaa !124, !noalias !1384 ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 2 uses
  %i.cp = load i64, ptr %i.ba, align 8, !tbaa !125, !noalias !1384 ; 11 uses
  %i.cq = mul nsw i64 %i.cp, %.045
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cq ; 14 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cu = lshr exact i64 %i.cs, 3
  %i.cv = and i64 %i.cu, 1
  %i.cw = call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.cp)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.j ], [ %i.cp, %bb.i ] ; 11 uses
  %i.cx = sub nsw i64 %i.cp, %.0.i.i.i.i.i.i      ; 2 uses
  %i.cy = sdiv i64 %i.cx, 2
  %i.cz = shl nsw i64 %i.cy, 1                    ; 2 uses
  %i.da = add nsw i64 %i.cz, %.0.i.i.i.i.i.i      ; 6 uses
  %i.db = icmp sgt i64 %.0.i.i.i.i.i.i, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %min.iters.check57 = icmp ult i64 %.0.i.i.i.i.i.i, 14
  br i1 %min.iters.check57, label %.lr.ph.i.i.i.i.i.i.preheader71, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.dc = shl i64 %.045, 3
  %i.dd = mul i64 %i.cp, %i.dc
  %i.de = mul i64 %i.ch, %i.ck
  %i.df = shl i64 %i.de, 3
  %i.dg = add i64 %i.dd, %i.co
  %i.dh = add i64 %i.df, %i.cj
  %i.di = sub i64 %i.dh, %i.dg
  %diff.check59 = icmp ugt i64 %i.di, -32
  br i1 %diff.check59, label %.lr.ph.i.i.i.i.i.i.preheader71, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck58
  %n.vec61 = and i64 %.0.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index63 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index63 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load64 = load <2 x double>, ptr %i.dk, align 8, !tbaa !56
  %wide.load65 = load <2 x double>, ptr %i.dl, align 8, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %wide.load64, ptr %i.dj, align 8, !tbaa !56
  store <2 x double> %wide.load65, ptr %i.dm, align 8, !tbaa !56
  %index.next66 = add nuw i64 %index63, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.dn, label %middle.block67, label %vector.body62, !llvm.loop !1376

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec61
  br i1 %cmp.n68, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.i.preheader71:                   ; preds = %vector.memcheck58, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block67
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck58 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec61, %middle.block67 ] ; 3 uses
  %xtraiter73 = and i64 %.0.i.i.i.i.i.i, 3        ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader71 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader71 ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.prol
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.prol
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !56
  store double %i.dq, ptr %i.do, align 8, !tbaa !56
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter73
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1377

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader71
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader71 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ds = sub nsw i64 %.05.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !56
  store double %i.dw, ptr %i.du, align 8, !tbaa !56
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !56
  store double %i.ea, ptr %i.dy, align 8, !tbaa !56
  %i.eb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !56
  store double %i.ee, ptr %i.ec, align 8, !tbaa !56
  %i.ef = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !56
  store double %i.ei, ptr %i.eg, align 8, !tbaa !56
  %i.ej = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ej, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1378

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %i.ek = icmp sgt i64 %i.cx, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.el = icmp slt i64 %i.da, %i.cp
  br i1 %i.el, label %.lr.ph.i17.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i
  %i.em = add i64 %.0.i.i.i.i.i.i, %i.cz
  %i.en = sub i64 %i.cp, %i.em                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.en, 14
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.eo = shl i64 %.045, 3
  %i.ep = mul i64 %i.cp, %i.eo
  %i.eq = mul i64 %i.ch, %i.ck
  %i.er = shl i64 %i.eq, 3
  %i.es = add i64 %i.ep, %i.co
  %i.et = add i64 %i.er, %i.cj
  %i.eu = sub i64 %i.et, %i.es
  %diff.check = icmp ugt i64 %i.eu, -32
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.en, -4                      ; 3 uses
  %i.ev = add i64 %i.da, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = add i64 %i.da, %index                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load = load <2 x double>, ptr %i.ey, align 8, !tbaa !56
  %wide.load53 = load <2 x double>, ptr %i.ez, align 8, !tbaa !56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x double> %wide.load, ptr %i.ex, align 8, !tbaa !56
  store <2 x double> %wide.load53, ptr %i.fa, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.preheader70

.lr.ph.i17.i.i.i.i.i.preheader70:                 ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.ph = phi i64 [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.ev, %middle.block ] ; 4 uses
  %i.fc = sub i64 %i.cp, %.05.i18.i.i.i.i.i.ph
  %xtraiter75 = and i64 %i.fc, 3                  ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader70, %.lr.ph.i17.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.prol = phi i64 [ %i.fg, %.lr.ph.i17.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader70 ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i17.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.preheader70 ]
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i.prol
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !56
  store double %i.ff, ptr %i.fd, align 8, !tbaa !56
  %i.fg = add nsw i64 %.05.i18.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol, !llvm.loop !1380

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader70
  %.05.i18.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader70 ], [ %i.fg, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.fh = sub i64 %.05.i18.i.i.i.i.i.ph, %i.cp
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.05.i18.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i17.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !56
  store double %i.fl, ptr %i.fj, align 8, !tbaa !56
  %i.fm = add nsw i64 %.05.i18.i.i.i.i.i, 1       ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.fm
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !56
  store double %i.fp, ptr %i.fn, align 8, !tbaa !56
  %i.fq = add nsw i64 %.05.i18.i.i.i.i.i, 2       ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fq
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.fq
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !56
  store double %i.ft, ptr %i.fr, align 8, !tbaa !56
  %i.fu = add nsw i64 %.05.i18.i.i.i.i.i, 3       ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.fu
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !56
  store double %i.fx, ptr %i.fv, align 8, !tbaa !56
  %i.fy = add nsw i64 %.05.i18.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.3 = icmp eq i64 %i.fy, %i.cp
  br i1 %exitcond.not.i19.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1381

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.021.i.i.i.i.i
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.021.i.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !131
  store <2 x double> %i.gb, ptr %i.fz, align 16, !tbaa !131
  %i.gc = add nsw i64 %.021.i.i.i.i.i, 2          ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.da
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !8

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS1_IKS3_Lin1ELi1ELb1EEEEERS4_RKNS5_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i
  %i.ge = add nuw nsw i64 %.045, 1                ; 2 uses
  %i.gf = load i64, ptr %i.av, align 8, !tbaa !121
  %i.gg = icmp slt i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.i, label %._crit_edge, !llvm.loop !1382

.body32:                                          ; preds = %.body35, %bb.d, %bb.f
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.bb, %.body35 ], [ %i.v, %bb.d ]
  call void @_ZN7Spectra12TridiagEigenIdED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %2) #33
  br label %bb.k

bb.k:                                             ; preds = %.body32, %.body
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %.body32 ], [ %i.j, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN7Spectra11SymEigsBaseINS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13num_convergedERKd(ptr noundef nonnull align 8 dereferenceable(292) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Array.2018", align 8 ; 12 uses
  %3 = alloca %"class.Eigen::Array.2018", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !119, !noalias !1400 ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load double, ptr %1, align 8, !tbaa !56, !noalias !1401 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.c, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_max_opIddLi0EEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS9_ISB_S2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_max_opIddLi0EEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS9_ISB_S2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  %.sroa.3.8.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_max_opIddLi0EEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS9_ISB_S2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.c, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !135
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_max_opIddLi0EEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS9_ISB_S2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.i = phi i64 [ %.pr.i.i.i.i.i.i, %.noexc.i.i ], [ %i.c, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS5_INS6_13scalar_max_opIddLi0EEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS9_ISB_S2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 7 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !119    ; 6 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = sdiv i64 %i.i, 2
  %i.m = shl nsw i64 %i.l, 1                      ; 6 uses
  %i.n = icmp sgt i64 %i.i, 1
  br i1 %i.n, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.o = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.m, %i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit101

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.q = sub i64 %i.i, %i.m                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  %i.r = sub i64 %i.e, %i.k
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.s = add i64 %i.m, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add i64 %i.m, %index                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !56
  %wide.load111 = load <2 x double>, ptr %i.w, align 8, !tbaa !56
  %i.x = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load) ; 2 uses
  %i.y = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load111) ; 2 uses
  %i.z = fcmp olt <2 x double> %i.x, splat (double f0x3DC428A2F98D7292)
  %i.aa = fcmp olt <2 x double> %i.y, splat (double f0x3DC428A2F98D7292)
  %i.ab = select <2 x i1> %i.z, <2 x double> splat (double f0x3DC428A2F98D7292), <2 x double> %i.x
  %i.ac = select <2 x i1> %i.aa, <2 x double> splat (double f0x3DC428A2F98D7292), <2 x double> %i.y
  %i.ad = fmul <2 x double> %broadcast.splat, %i.ab
  %i.ae = fmul <2 x double> %broadcast.splat, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %i.ad, ptr %i.u, align 8, !tbaa !56
  store <2 x double> %i.ae, ptr %i.af, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit101, label %.lr.ph.i.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.i.preheader148:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block ] ; 6 uses
  %i.ah = sub i64 %i.i, %.05.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader148
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !56
  %i.al = call noundef double @llvm.fabs.f64(double %i.ak) ; 2 uses
  %i.am = fcmp olt double %i.al, f0x3DC428A2F98D7292
  %i.an = select i1 %i.am, double f0x3DC428A2F98D7292, double %i.al
  %i.ao = fmul double %i.f, %i.an
  store double %i.ao, ptr %i.ai, align 8, !tbaa !56
  %i.ap = add nsw i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader148
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader148 ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.i, %.neg
  br i1 %i.aq, label %.loopexit101, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.05.i.i.i.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !56
  %i.au = call noundef double @llvm.fabs.f64(double %i.at) ; 2 uses
  %i.av = fcmp olt double %i.au, f0x3DC428A2F98D7292
  %i.aw = select i1 %i.av, double f0x3DC428A2F98D7292, double %i.au
  %i.ax = fmul double %i.f, %i.aw
  store double %i.ax, ptr %i.ar, align 8, !tbaa !56
  %i.ay = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !56
  %i.bc = call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = fcmp olt double %i.bc, f0x3DC428A2F98D7292
  %i.be = select i1 %i.bd, double f0x3DC428A2F98D7292, double %i.bc
  %i.bf = fmul double %i.f, %i.be
  store double %i.bf, ptr %i.az, align 8, !tbaa !56
  %i.bg = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bg, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %.loopexit101, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1390

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.011.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.011.i.i.i.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !131
  %i.bk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bj)
  %i.bl = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk, <2 x double> splat (double f0x3DC428A2F98D7292)) #20, !srcloc !262
  %i.bm = fmul <2 x double> %i.o, %i.bl
  store <2 x double> %i.bm, ptr %i.bh, align 16, !tbaa !131
  %i.bn = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.m
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !1391

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.c ], [ %i.hd, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !119
  call void @free(ptr noundef %i.bq) #33
  br label %common.resume

.loopexit101:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !121 ; 4 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !119, !noalias !1402 ; 6 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !254 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.bs, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %.body

_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.loopexit101
  %.sroa.7.40.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i10 = icmp eq i64 %i.by, %i.bs
  br i1 %.not.i.i.i.i.i.i.i10, label %bb.d, label %thread-pre-split.i.i.i.i.i.i11

thread-pre-split.i.i.i.i.i.i11:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12CwiseUnaryOpINS6_13scalar_abs_opIdEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
end_hunk_0
