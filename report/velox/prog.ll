inline.NumInlined: 1564
inline.NumDeleted: 717
begin_hunk_0_@_ZN3re24Prog7FlattenEv:bb.a
  br label %bb.ah

._crit_edge154:                                   ; preds = %bb.aj
  %.lcssa267 = phi ptr [ %i.fw, %bb.aj ]          ; 2 uses
  %.lcssa266 = phi i64 [ %i.fy, %bb.aj ]          ; 2 uses
  %.lcssa265 = phi i64 [ %i.fz, %bb.aj ]
end_hunk_0
begin_hunk_1_@_ZN3re24Prog7FlattenEv:bb.a
bb.ak:                                            ; preds = %.lr.ph157, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %i.gn = shl i64 %indvars.iv, 3
  %scevgep291 = getelementptr i8, ptr %i.fw, i64 %i.gn ; 2 uses
  %i.go = load i32, ptr %scevgep291, align 4, !tbaa !7 ; 4 uses
  %i.gp = and i32 %i.go, 7
  %.not40 = icmp eq i32 %i.gp, 1
end_hunk_1
begin_hunk_2_@_ZN3re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %i.cz, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !276

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i: ; preds = %bb.d
  %indvar.lcssa = phi i64 [ %indvar, %bb.d ]      ; 2 uses
  %.sroa.09.0.i.i.i.i40.lcssa = phi ptr [ %scevgep102, %bb.d ] ; 4 uses
  %.lcssa80 = phi i8 [ %i.cx, %bb.d ]             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.dg = trunc i64 %i.dc to i2
  %i.dh = add i2 %i.dg, %lsr.iv
  %i.di = zext i2 %i.dh to i64
  br label %.lr.ph.i.i.i.prol

end_hunk_3
