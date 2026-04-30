inline.NumInlined: 59
inline.NumDeleted: 19
begin_hunk_0_@FT_Stroker_ConicTo:bb.a
  br label %ft_conic_is_small_enough.exit

ft_conic_is_small_enough.exit:                    ; preds = %bb.l, %bb.j, %bb.k, %bb.m
  %.1173 = phi i64 [ %i.bk, %bb.m ], [ %i.bj, %bb.k ], [ %i.ak, %bb.j ], [ %i.bk, %bb.l ] ; 3 uses
  %.1171 = phi i64 [ %i.bl, %bb.m ], [ %i.bj, %bb.k ], [ %i.ak, %bb.j ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bm = call i64 @FT_Angle_Diff(i64 noundef %.1173, i64 noundef %.1171) #11
  %i.bn = add i64 %i.bm, -1966080
  %i.bo = icmp ult i64 %i.bn, -3932159
end_hunk_0
