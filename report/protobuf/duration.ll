inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.thread51.i, %bb.n
  %.sink = phi i64 [ 2, %bb.l ], [ 1, %.thread51.i ], [ 1, %bb.n ], [ 2, %bb.k ], [ 2, %bb.j ], [ 1, %bb.m ]
  %.sroa.12.0.ph = phi i32 [ 4000000, %bb.l ], [ 0, %.thread51.i ], [ 0, %bb.n ], [ 4000, %bb.k ], [ 4, %bb.j ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ 0, %bb.l ], [ 60, %.thread51.i ], [ 3600, %bb.n ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.m ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.4168, i64 %.sink ; 2 uses
  %.not66 = icmp eq i64 %.1135169, 0
  br i1 %.not66, label %_ZN4absl12lts_202505128DurationpLES1_.exit, label %bb.p
end_hunk_0
