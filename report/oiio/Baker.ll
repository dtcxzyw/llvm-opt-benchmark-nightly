inline.NumInlined: 423
inline.NumDeleted: 148
begin_hunk_0_@_ZNK16OpenColorIO_v2_55Baker4bakeERSo:bb.a
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %32 = trunc nuw i8 %.0140 to i1
  %i.ka = or i1 %i.jx, %32
  %33 = or i1 %i.ka, %i.jz
  %34 = zext i1 %33 to i8
  br label %bb.du

.loopexit:                                        ; preds = %.noexc.i
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_55Baker4bakeERSo:bb.a

bb.du:                                            ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.1144 = phi i8 [ 1, %bb.dr ], [ %.0143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %.1141 = phi i8 [ %34, %bb.dr ], [ %.0140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %i.kc = trunc nuw i8 %.1144 to i1
  %i.kd = trunc nuw i8 %.1141 to i1
  %or.cond5 = select i1 %i.kc, i1 %i.kd, i1 false
end_hunk_1
