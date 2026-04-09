inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_bbPSB_:bb.a
thread-pre-split328:                              ; preds = %bb.cq, %bb.cr
  %i.le = phi x86_fp80 [ %i.f, %bb.cr ], [ %2, %bb.cq ] ; 6 uses
  %i.lf = phi x86_fp80 [ %1, %bb.cr ], [ %0, %bb.cq ] ; 11 uses
  %i.lg = phi x86_fp80 [ %0, %bb.cr ], [ %1, %bb.cq ] ; 13 uses
  %.2 = phi x86_fp80 [ %2, %bb.cr ], [ %i.f, %bb.cq ] ; 19 uses
  %.4.in = phi i1 [ %i.ld, %bb.cr ], [ %4, %bb.cq ] ; 8 uses
  %i.lh = fcmp olt x86_fp80 %i.lg, 0xK4004A000000000000000
  br i1 %i.lh, label %bb.cs, label %bb.di

bb.cs:                                            ; preds = %thread-pre-split328
  %i.li = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lf)
  %i.lj = fcmp oeq x86_fp80 %i.li, %i.lf
  %i.lk = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lg)
  %i.ll = fcmp oeq x86_fp80 %i.lk, %i.lg
  %or.cond331 = and i1 %i.ll, %i.lj
  br i1 %or.cond331, label %bb.ct, label %bb.cw
end_hunk_0
begin_hunk_1_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_bbPSB_:bb.a

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %18 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lg)
  store x86_fp80 %18, ptr %i.d, align 16, !tbaa !180
  %i.mc = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  %i.md = sitofp i32 %i.mc to x86_fp80
end_hunk_1
begin_hunk_2_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_bbPSB_:bb.a

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #42
  %19 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lg)
  store x86_fp80 %19, ptr %i.e, align 16, !tbaa !180
  %i.ny = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  %i.nz = load x86_fp80, ptr %i.b, align 16, !tbaa !180
end_hunk_2
begin_hunk_3_@_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi:bb.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.d = fcmp oeq x86_fp80 %i.c, %0
  br i1 %i.d, label %bb.c, label %bb.d

end_hunk_3
begin_hunk_4_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_:bb.a
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.e = fcmp oeq x86_fp80 %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_4
begin_hunk_5_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split50, %bb.a
  %i.am = phi x86_fp80 [ %.lcssa, %thread-pre-split50 ], [ %0, %bb.a ] ; 11 uses
  %.1 = phi x86_fp80 [ %.047.lcssa, %thread-pre-split50 ], [ 0xK3FFF8000000000000000, %bb.a ] ; 3 uses
  %3 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.am)
  %i.an = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.am)
  %i.ao = fcmp oeq x86_fp80 %i.an, %i.am
  %i.ap = fcmp olt x86_fp80 %i.am, 0xK4006AA00000000000000
  %or.cond = and i1 %i.ap, %i.ao
end_hunk_5
begin_hunk_6_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_:bb.a
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i: ; preds = %bb.l, %bb.m, %bb.k
  %.0.i.i.i = phi x86_fp80 [ 0xK00000000000000000000, %bb.k ], [ %i.at, %bb.m ], [ %3, %bb.l ] ; 3 uses
  %i.au = fcmp ult x86_fp80 %.0.i.i.i, 0xK401E8000000000000000
  %i.av = fcmp uge x86_fp80 %.0.i.i.i, 0xKC01E8000000000000000
  %or.cond.not.i = and i1 %i.au, %i.av            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost4math6detail22tgamma_delta_ratio_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_:bb.a
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %1)
  %i.o = fcmp oeq x86_fp80 %i.n, %1
  br i1 %i.o, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 2 uses
  %8 = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.q = fcmp une x86_fp80 %8, %0
  %i.r = fcmp ugt x86_fp80 %0, 0xK4006AA00000000000000
  %or.cond.not41 = or i1 %i.r, %i.q
  %i.s = fcmp ugt x86_fp80 %i.e, 0xK4006AA00000000000000
end_hunk_7
begin_hunk_8_@_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_:bb.a
  br i1 %or.cond280, label %bb.z, label %.thread214

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.cu = fcmp oeq x86_fp80 %i.ct, %0
  br i1 %i.cu, label %.critedge, label %bb.aa

end_hunk_8
begin_hunk_9_@_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_:bb.a
  br i1 %i.cv, label %bb.am, label %.thread214

bb.aa:                                            ; preds = %bb.z
  %14 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0)
  %i.cw = fsub x86_fp80 %14, %0
  %i.cx = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.cw)
  %i.cy = fcmp oeq x86_fp80 %i.cx, 0xK3FFE8000000000000000
  %i.cz = fcmp ogt x86_fp80 %1, 0xK3FFCCCCCCCCCCCCCD000
end_hunk_9
begin_hunk_10_@_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb:bb.a
  %i.d = fcmp ogt x86_fp80 %1, %2                 ; 3 uses
  %.0105 = select i1 %i.d, x86_fp80 %1, x86_fp80 %2 ; 2 uses
  %.0104 = select i1 %i.d, x86_fp80 %2, x86_fp80 %1 ; 18 uses
  %i.e = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0)
  %5 = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.f = fcmp oeq x86_fp80 %5, %0
  %i.g = fcmp olt x86_fp80 %0, 0xK4003A000000000000000
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %.thread111
end_hunk_10
begin_hunk_11_@_ZN5boost4math6detail28fast_students_t_quantile_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_PKSt17integral_constantIbLb1EE:bb.a
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 5 uses
  %i.c = fcmp olt x86_fp80 %0, 0xK40008000000000000000
  %i.d = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.e = fcmp une x86_fp80 %i.d, %0
  %or.cond70 = and i1 %i.c, %i.e
  br i1 %or.cond70, label %bb.b, label %bb.c
end_hunk_11
begin_hunk_12_@_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb:bb.a
  %i.d = fcmp ogt x86_fp80 %1, %2                 ; 3 uses
  %.0105 = select i1 %i.d, x86_fp80 %1, x86_fp80 %2 ; 2 uses
  %.0104 = select i1 %i.d, x86_fp80 %2, x86_fp80 %1 ; 18 uses
  %i.e = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0)
  %5 = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.f = fcmp oeq x86_fp80 %5, %0
  %i.g = fcmp olt x86_fp80 %0, 0xK4003A000000000000000
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %.thread111
end_hunk_12
begin_hunk_13_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_bbPS7_:bb.a
thread-pre-split328:                              ; preds = %bb.cq, %bb.cr
  %i.le = phi x86_fp80 [ %i.f, %bb.cr ], [ %2, %bb.cq ] ; 6 uses
  %i.lf = phi x86_fp80 [ %1, %bb.cr ], [ %0, %bb.cq ] ; 11 uses
  %i.lg = phi x86_fp80 [ %0, %bb.cr ], [ %1, %bb.cq ] ; 13 uses
  %.2 = phi x86_fp80 [ %2, %bb.cr ], [ %i.f, %bb.cq ] ; 19 uses
  %.4.in = phi i1 [ %i.ld, %bb.cr ], [ %4, %bb.cq ] ; 8 uses
  %i.lh = fcmp olt x86_fp80 %i.lg, 0xK4004A000000000000000
  br i1 %i.lh, label %bb.cs, label %bb.di

bb.cs:                                            ; preds = %thread-pre-split328
  %i.li = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lf)
  %i.lj = fcmp oeq x86_fp80 %i.li, %i.lf
  %i.lk = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.lg)
  %i.ll = fcmp oeq x86_fp80 %i.lk, %i.lg
  %or.cond331 = and i1 %i.ll, %i.lj
  br i1 %or.cond331, label %bb.ct, label %bb.cw
end_hunk_13
begin_hunk_14_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_bbPS7_:bb.a

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %18 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lg)
  store x86_fp80 %18, ptr %i.d, align 16, !tbaa !180
  %i.mc = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  %i.md = sitofp i32 %i.mc to x86_fp80
end_hunk_14
begin_hunk_15_@_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_bbPS7_:bb.a

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #42
  %19 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.lg)
  store x86_fp80 %19, ptr %i.e, align 16, !tbaa !180
  %i.ny = call noundef i32 @_ZN5boost4math6itruncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEiRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  %i.nz = load x86_fp80, ptr %i.b, align 16, !tbaa !180
end_hunk_15
begin_hunk_16_@_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_Pi:bb.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.d = fcmp oeq x86_fp80 %i.c, %0
  br i1 %i.d, label %bb.c, label %bb.d

end_hunk_16
begin_hunk_17_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_:bb.a
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %0)
  %i.e = fcmp oeq x86_fp80 %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_17
begin_hunk_18_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split50, %bb.a
  %i.am = phi x86_fp80 [ %.lcssa, %thread-pre-split50 ], [ %0, %bb.a ] ; 11 uses
  %.1 = phi x86_fp80 [ %.047.lcssa, %thread-pre-split50 ], [ 0xK3FFF8000000000000000, %bb.a ] ; 3 uses
  %3 = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %i.am)
  %i.an = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %i.am)
  %i.ao = fcmp oeq x86_fp80 %i.an, %i.am
  %i.ap = fcmp olt x86_fp80 %i.am, 0xK4006AA00000000000000
  %or.cond = and i1 %i.ap, %i.ao
end_hunk_18
begin_hunk_19_@_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EENS0_7lanczos12lanczos17m64EEET_S9_RKT0_RKT1_:bb.a
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeERKS8_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeERKS8_RKT0_.exit.i: ; preds = %bb.l, %bb.m, %bb.k
  %.0.i.i.i = phi x86_fp80 [ 0xK00000000000000000000, %bb.k ], [ %i.at, %bb.m ], [ %3, %bb.l ] ; 3 uses
  %i.au = fcmp ult x86_fp80 %.0.i.i.i, 0xK401E8000000000000000
  %i.av = fcmp uge x86_fp80 %.0.i.i.i, 0xKC01E8000000000000000
  %or.cond.not.i = and i1 %i.au, %i.av            ; 2 uses
end_hunk_19
begin_hunk_20_@llvm.log.f80
declare x86_fp80 @llvm.log.f80(x86_fp80) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.trunc.f80(x86_fp80) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.copysign.f80(x86_fp80, x86_fp80) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_20
