inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.by, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.tw = phi ptr [ %.pre541, %bb.by ], [ %i.tv, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.tx = phi ptr [ %i.te, %bb.by ], [ %i.tu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ty = load ptr, ptr %i.ew, align 8
  %i.tz = getelementptr inbounds nuw [16 x i8], ptr %i.ty, i64 %i.sk
  %i.ua = load ptr, ptr %i.fb, align 8
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  %i.ud = sitofp <2 x i64> %i.uc to <2 x double>
  %i.ue = load <2 x double>, ptr %i.ub, align 8
  %i.uf = fneg <2 x double> %i.ue
  %i.ug = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.fi, <2 x double> %i.ud) ; 2 uses
  %i.uh = fcmp olt <2 x double> %i.ug, zeroinitializer
  %3 = select <2 x i1> %i.uh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %4 = fadd <2 x double> %i.ug, %3
  %5 = fptosi <2 x double> %4 to <2 x i64>        ; 2 uses
  %.not.i319 = icmp eq ptr %i.tx, %i.tw
  br i1 %.not.i319, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  store <2 x i64> %5, ptr %i.tx, align 8
  %i.ui = load ptr, ptr %i.fa, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  store ptr %i.uj, ptr %i.fa, align 8
end_hunk_1
begin_hunk_2_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  tail call void @llvm.assume(i1 %.not.i.i.i322)
  %i.uu = shl nuw nsw i64 %i.ut, 4
  %i.uv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #33 ; 5 uses
  %.sroa.15.0..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.un
  store <2 x i64> %5, ptr %.sroa.15.0..sroa_idx412, align 8
  %.not10.i.i.i.i.i323 = icmp eq ptr %i.uk, %i.tw
  br i1 %.not10.i.i.i.i.i323, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328, label %.lr.ph.i.i.i.i.i324

end_hunk_2
begin_hunk_3_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  %i.wd = sitofp <2 x i64> %i.wc to <2 x double>
  %i.we = load <2 x double>, ptr %i.wb, align 8
  %i.wf = fneg <2 x double> %i.we
  %i.wg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wf, <2 x double> %i.fi, <2 x double> %i.wd) ; 2 uses
  %i.wh = fcmp olt <2 x double> %i.wg, zeroinitializer
  %6 = select <2 x i1> %i.wh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %7 = fadd <2 x double> %i.wg, %6
  %8 = fptosi <2 x double> %7 to <2 x i64>        ; 2 uses
  %i.wi = load ptr, ptr %i.fa, align 8            ; 5 uses
  %i.wj = load ptr, ptr %i.ff, align 8
  %.not.i339 = icmp eq ptr %i.wi, %i.wj
  br i1 %.not.i339, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store <2 x i64> %8, ptr %i.wi, align 8
  %i.wk = load ptr, ptr %i.fa, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16 ; 2 uses
  store ptr %i.wl, ptr %i.fa, align 8
end_hunk_3
begin_hunk_4_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  tail call void @llvm.assume(i1 %.not.i.i.i342)
  %i.ww = shl nuw nsw i64 %i.wv, 4
  %i.wx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ww) #33 ; 5 uses
  %.sroa.15.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wp
  store <2 x i64> %8, ptr %.sroa.15.0..sroa_idx416, align 8
  %.not10.i.i.i.i.i343 = icmp eq ptr %i.wm, %i.wi
  br i1 %.not10.i.i.i.i.i343, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348, label %.lr.ph.i.i.i.i.i344

end_hunk_4
begin_hunk_5_@_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_:bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  %4 = insertelement <2 x i64> poison, i64 %2, i64 0
  %5 = insertelement <2 x i64> %4, i64 %3, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.u = phi ptr [ %i.aa, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %.010 = phi i64 [ %i.y, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.010
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.010
  %6 = load <2 x i64>, ptr %i.v, align 8
  %7 = add nsw <2 x i64> %6, %5
  store <2 x i64> %7, ptr %i.x, align 8
  %i.y = add nuw i64 %.010, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
end_hunk_5
