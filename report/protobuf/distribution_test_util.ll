inline.NumInlined: 84
inline.NumDeleted: 56
begin_hunk_0_@_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd:bb.a
  %i.a = fcmp olt double %3, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.c

common.ret195:                                    ; preds = %bb.j, %bb.n, %.loopexit, %bb.k, %bb.l, %bb.b
  %common.ret195.op = phi double [ %i.d, %bb.b ], [ %.1145162, %bb.n ], [ 0x7FF0000000000000, %bb.j ], [ %i.cd, %bb.k ], [ %.1145162, %bb.l ], [ 0x7FF0000000000000, %.loopexit ]
  ret double %common.ret195.op

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double 1.000000e+00, %3
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd:bb.a
  %i.bw = fcmp olt double %.0144, 0x3D06849B86A12B9B
  %.sroa.speculated141 = select i1 %i.bw, double 0x3D06849B86A12B9B, double %.0144 ; 2 uses
  %i.bx = fcmp ogt double %.sroa.speculated141, 0x3FEFFFFFFFFFFFA6
  %.sroa.speculated132 = select i1 %i.bx, double 0x3FEFFFFFFFFFFFA6, double %.sroa.speculated141 ; 3 uses
  %i.by = fsub double 1.000000e+00, %0
  %i.bz = fsub double 1.000000e+00, %1
  %4 = fcmp olt double %.sroa.speculated132, 0.000000e+00
  %5 = fcmp ogt double %.sroa.speculated132, 1.000000e+00
  %or.cond3161 = or i1 %4, %5
  br i1 %or.cond3161, label %common.ret195, label %.lr.ph

.loopexit:                                        ; preds = %bb.o
  %i.ca = fcmp ogt double %i.ct, 1.000000e+00
  br i1 %i.ca, label %common.ret195, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.loopexit
  %.1145162 = phi double [ %i.ct, %.loopexit ], [ %.sroa.speculated132, %bb.j ] ; 10 uses
  %i.cb = fcmp oeq double %.1145162, 0.000000e+00
  %i.cc = fcmp oeq double %.1145162, 1.000000e+00
  %or.cond5 = or i1 %i.cb, %i.cc
end_hunk_1
