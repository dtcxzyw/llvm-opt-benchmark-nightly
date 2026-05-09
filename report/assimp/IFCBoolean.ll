inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
  %i.af = fneg double %i.r
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ab, double %i.ag)
  %.fr243.peel = freeze double %i.ah
  %6 = fadd double %i.i, %.fr243.peel
  %7 = fcmp ogt double %6, 0.000000e+00
  br i1 %7, label %8, label %._crit_edge

8:                                                ; preds = %.lr.ph.peel
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.peel, %8
  %.0.lcssa240 = phi double [ 0.000000e+00, %8 ], [ -0.000000e+00, %.lr.ph.peel ], [ -0.000000e+00, %bb.a ]
  %9 = phi double [ 1.000000e+00, %8 ], [ -1.000000e+00, %.lr.ph.peel ], [ -1.000000e+00, %bb.a ] ; 2 uses
  %i.ai = load double, ptr %1, align 8, !noalias !75
  %i.aj = load double, ptr %0, align 8, !noalias !75
  %i.ak = fsub double %i.ai, %i.aj                ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
.lr.ph220:                                        ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.as = extractelement <2 x double> %i.ap, i64 0 ; 3 uses
  %i.at = extractelement <2 x double> %i.ap, i64 1
  br label %bb.b
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
  %i.bp = fneg double %i.bb
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bl, double %i.bq)
  %.fr243 = freeze double %i.br
  %i.bs = fadd double %.0217, %.fr243             ; 2 uses
  %exitcond.not = icmp eq i64 %.086216, %i.h
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !78

end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
  br i1 %i.fe, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ff = fmul double %9, %i.ck
  %i.fg = fmul double %9, %i.cl
  %i.fh = fmul double %i.as, %i.fg
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.ak, double %i.fh)
  %i.fj = tail call noundef double @llvm.fmuladd.f64(double %.0.lcssa240, double %i.at, double %i.fi)
  %i.fk = fcmp ule double %i.fj, 0.000000e+00
  %i.fl = xor i1 %3, %i.fk
  br i1 %i.fl, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f
end_hunk_3
begin_hunk_4_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_4
