inline.NumInlined: 27144
inline.NumDeleted: 6113
begin_hunk_0_@_ZN8facebook5velox9aggregate10MinMaxHookIfLb1EE8addValueEid:bb.a
  br i1 %.not7.not.i.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = fptrunc double %2 to float               ; 3 uses
  %i.v = load float, ptr %i.i, align 4, !tbaa !752 ; 2 uses
  %i.w = fcmp uno float %i.v, 0.000000e+00
  %i.x = fcmp ord float %i.u, 0.000000e+00
  %or.cond.not.i.i = and i1 %i.x, %i.w
  %i.y = fcmp ogt float %i.v, %i.u
  %.0.i.i = or i1 %i.y, %or.cond.not.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9aggregate10MinMaxHookIfLb0EE8addValueEid:bb.a
  br i1 %.not7.not.i.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = fptrunc double %2 to float               ; 3 uses
  %i.v = load float, ptr %i.i, align 4, !tbaa !752 ; 2 uses
  %i.w = fcmp uno float %i.v, 0.000000e+00
  %i.x = fcmp ord float %i.u, 0.000000e+00
  %or.cond.not.i.i = and i1 %i.x, %i.w
  %i.y = fcmp ogt float %i.v, %i.u
  %.0.i.i = or i1 %i.y, %or.cond.not.i.i
end_hunk_1
