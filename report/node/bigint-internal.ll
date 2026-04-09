inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl6ModuloENS0_8RWDigitsENS0_6DigitsES3_:bb.a
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit, !llvm.loop !6

_ZN2v86bigint6Digits9NormalizeEv.exit:            ; preds = %bb.b, %.lr.ph.i, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge, %bb.a
  %.sroa.869.1 = phi i32 [ 0, %bb.a ], [ %4, %.lr.ph.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge ], [ %indvars.i133, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted.i43 = load i32, ptr %i.i, align 8    ; 3 uses
  %.not1.i44 = icmp eq i32 %.promoted.i43, 0
end_hunk_0
begin_hunk_1_@_ZN2v86bigint13ProcessorImpl6ModuloENS0_8RWDigitsENS0_6DigitsES3_:bb.a
  unreachable

.loopexit125:                                     ; preds = %bb.c, %.lr.ph.i45
  %indvars.i49101.lcssa = phi i32 [ %.promoted.i43, %.lr.ph.i45 ], [ %indvars.i49138, %bb.c ] ; 12 uses
  store i32 %indvars.i49101.lcssa, ptr %i.i, align 8
  %9 = sub i32 %.sroa.869.1, %indvars.i49101.lcssa ; 2 uses
  %.not.i52 = icmp eq i32 %.sroa.869.1, %indvars.i49101.lcssa
  br i1 %.not.i52, label %.preheader.preheader.i, label %_ZN2v86bigint18CompareNoNormalizeENS0_6DigitsES1_.exit

end_hunk_1
begin_hunk_2_@_ZN2v86bigint13ProcessorImpl6ModuloENS0_8RWDigitsENS0_6DigitsES3_:bb.a
  br i1 %i.ad, label %.thread, label %.preheader95.preheader

_ZN2v86bigint18CompareNoNormalizeENS0_6DigitsES1_.exit: ; preds = %.loopexit125
  %i.ae = icmp slt i32 %9, 0
  br i1 %i.ae, label %.preheader95.preheader, label %.thread

end_hunk_2
begin_hunk_3_@_ZN2v86bigint13ProcessorImpl6ModuloENS0_8RWDigitsENS0_6DigitsES3_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.bt = icmp ugt i32 %indvars.i49101.lcssa, 13309
  %i.bu = zext i1 %i.bt to i32
  %i.bv = add i32 %9, %i.bu
  %i.bw = add i32 %i.bv, 1                        ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #11 ; 3 uses
end_hunk_3
