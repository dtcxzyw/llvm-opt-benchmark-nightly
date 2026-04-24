inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math6detail13ibeta_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_PSB_:bb.a
  br label %bb.ck

bb.g:                                             ; preds = %bb.d
  %7 = fcmp oeq x86_fp80 %0, 0xK3FFF8000000000000000
  br i1 %7, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.e = fcmp oeq x86_fp80 %1, 0xK3FFF8000000000000000
end_hunk_0
begin_hunk_1_@_ZN5boost4math6detail13ibeta_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_PSB_:bb.a

thread-pre-split.thread:                          ; preds = %bb.h
  %i.h = fcmp oeq x86_fp80 %1, 0xK3FFE8000000000000000
  br i1 %i.h, label %thread-pre-split417, label %.thread638

bb.k:                                             ; preds = %thread-pre-split
  %i.i = fcmp oeq x86_fp80 %1, 0xK3FFE8000000000000000
end_hunk_1
begin_hunk_2_@_ZN5boost4math6detail13ibeta_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_PSB_:bb.a
  %i.p = fcmp ogt x86_fp80 %1, 0xK3FFE8000000000000000
  br i1 %i.p, label %.thread616, label %thread-pre-split417

.thread616:                                       ; preds = %bb.n
  br label %thread-pre-split417

thread-pre-split417:                              ; preds = %thread-pre-split.thread, %bb.n, %thread-pre-split, %.thread616
  %.sroa.0297.sroa.0.1 = phi x86_fp80 [ %1, %thread-pre-split ], [ %1, %bb.n ], [ 0xK3FFE8000000000000000, %thread-pre-split.thread ], [ 0xK3FFE8000000000000000, %.thread616 ] ; 21 uses
  %.sroa.0333.sroa.0.1 = phi x86_fp80 [ %0, %thread-pre-split ], [ %0, %bb.n ], [ 0xK3FFF8000000000000000, %thread-pre-split.thread ], [ %1, %.thread616 ] ; 23 uses
  %.1387 = phi x86_fp80 [ %3, %thread-pre-split ], [ %3, %bb.n ], [ %3, %thread-pre-split.thread ], [ %2, %.thread616 ] ; 10 uses
  %.1379 = phi x86_fp80 [ %2, %thread-pre-split ], [ %2, %bb.n ], [ %2, %thread-pre-split.thread ], [ %3, %.thread616 ] ; 16 uses
  %.1166 = phi i8 [ 0, %thread-pre-split ], [ 0, %bb.n ], [ 0, %thread-pre-split.thread ], [ 1, %.thread616 ] ; 11 uses
  %i.q = fcmp oeq x86_fp80 %.sroa.0297.sroa.0.1, 0xK3FFE8000000000000000
  %i.r = fcmp oge x86_fp80 %.sroa.0333.sroa.0.1, 0xK3FFE8000000000000000
  %or.cond = and i1 %i.q, %i.r
end_hunk_2
