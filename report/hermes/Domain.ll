inline.NumInlined: 605
inline.NumDeleted: 359
begin_hunk_0_@_ZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleE:bb.a
  store ptr null, ptr %i.de, align 8, !tbaa !17
  %i.df = add i64 %i.dc, 1
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !13
  %i.dg = add i64 %.0101285, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !86

bb.q:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %.sroa.0.0.copyload.i.i138 = load i64, ptr %0, align 8, !tbaa !44
end_hunk_0
