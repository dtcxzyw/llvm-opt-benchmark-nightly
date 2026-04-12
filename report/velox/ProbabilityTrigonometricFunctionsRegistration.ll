inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split50, %bb.a
  %i.am = phi x86_fp80 [ %.lcssa, %thread-pre-split50 ], [ %0, %bb.a ] ; 10 uses
  %.1 = phi x86_fp80 [ %.047.lcssa, %thread-pre-split50 ], [ 0xK3FFF8000000000000000, %bb.a ] ; 3 uses
  %i.an = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.am) ; 2 uses
  %i.ao = fcmp oeq x86_fp80 %i.an, %i.am
  %i.ap = fcmp olt x86_fp80 %i.am, 0xK4006AA00000000000000
  %or.cond = and i1 %i.ap, %i.ao
end_hunk_0
begin_hunk_1_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_:bb.a
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i: ; preds = %bb.l, %bb.m, %bb.k
  %.0.i.i.i = phi x86_fp80 [ 0xK00000000000000000000, %bb.k ], [ %i.at, %bb.m ], [ %i.an, %bb.l ] ; 3 uses
  %i.au = fcmp ult x86_fp80 %.0.i.i.i, 0xK401E8000000000000000
  %i.av = fcmp uge x86_fp80 %.0.i.i.i, 0xKC01E8000000000000000
  %or.cond.not.i = and i1 %i.au, %i.av            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost4math6detail22tgamma_delta_ratio_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_:bb.a
  br i1 %i.o, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 3 uses
  %i.q = fcmp une x86_fp80 %i.p, %0
  %i.r = fcmp ugt x86_fp80 %0, 0xK4006AA00000000000000
  %or.cond.not41 = or i1 %i.r, %i.q
  %i.s = fcmp ugt x86_fp80 %i.e, 0xK4006AA00000000000000
end_hunk_2
begin_hunk_3_@_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_:bb.a
  br i1 %or.cond280, label %bb.z, label %.thread214

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 2 uses
  %i.cu = fcmp oeq x86_fp80 %i.ct, %0
  br i1 %i.cu, label %.critedge, label %bb.aa

end_hunk_3
begin_hunk_4_@_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_:bb.a
  br i1 %i.cv, label %bb.am, label %.thread214

bb.aa:                                            ; preds = %bb.z
  %i.cw = fsub x86_fp80 %i.ct, %0
  %i.cx = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.cw)
  %i.cy = fcmp oeq x86_fp80 %i.cx, 0xK3FFE8000000000000000
  %i.cz = fcmp ogt x86_fp80 %1, 0xK3FFCCCCCCCCCCCCCD000
end_hunk_4
begin_hunk_5_@_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb:bb.a
  %i.d = fcmp ogt x86_fp80 %1, %2                 ; 3 uses
  %.0105 = select i1 %i.d, x86_fp80 %1, x86_fp80 %2 ; 2 uses
  %.0104 = select i1 %i.d, x86_fp80 %2, x86_fp80 %1 ; 18 uses
  %i.e = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 2 uses
  %i.f = fcmp oeq x86_fp80 %i.e, %0
  %i.g = fcmp olt x86_fp80 %0, 0xK4003A000000000000000
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %.thread111
end_hunk_5
begin_hunk_6_@_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb:bb.a
  %i.d = fcmp ogt x86_fp80 %1, %2                 ; 3 uses
  %.0105 = select i1 %i.d, x86_fp80 %1, x86_fp80 %2 ; 2 uses
  %.0104 = select i1 %i.d, x86_fp80 %2, x86_fp80 %1 ; 18 uses
  %i.e = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 2 uses
  %i.f = fcmp oeq x86_fp80 %i.e, %0
  %i.g = fcmp olt x86_fp80 %0, 0xK4003A000000000000000
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %.thread111
end_hunk_6
begin_hunk_7_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split50, %bb.a
  %i.am = phi x86_fp80 [ %.lcssa, %thread-pre-split50 ], [ %0, %bb.a ] ; 10 uses
  %.1 = phi x86_fp80 [ %.047.lcssa, %thread-pre-split50 ], [ 0xK3FFF8000000000000000, %bb.a ] ; 3 uses
  %i.an = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.am) ; 2 uses
  %i.ao = fcmp oeq x86_fp80 %i.an, %i.am
  %i.ap = fcmp olt x86_fp80 %i.am, 0xK4006AA00000000000000
  %or.cond = and i1 %i.ap, %i.ao
end_hunk_7
begin_hunk_8_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_:bb.a
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeERKS8_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeERKS8_RKT0_.exit.i: ; preds = %bb.l, %bb.m, %bb.k
  %.0.i.i.i = phi x86_fp80 [ 0xK00000000000000000000, %bb.k ], [ %i.at, %bb.m ], [ %i.an, %bb.l ] ; 3 uses
  %i.au = fcmp ult x86_fp80 %.0.i.i.i, 0xK401E8000000000000000
  %i.av = fcmp uge x86_fp80 %.0.i.i.i, 0xKC01E8000000000000000
  %or.cond.not.i = and i1 %i.au, %i.av            ; 2 uses
end_hunk_8
