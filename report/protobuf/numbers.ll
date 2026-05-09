inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc:bb.a
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0135, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0135, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.t, double %.0135, double %i.u ; 3 uses
  %.0.i = select i1 %i.t, i32 5, i32 261          ; 2 uses
  %i.v = fcmp ult double %.085.i, 1.000000e+133   ; 2 uses
  %2 = or disjoint i32 %.0.i, 128
  %i.w = fmul nnan double %.085.i, 1.000000e-128
  %.186.i = select i1 %i.v, double %.085.i, double %i.w ; 3 uses
  %.1.i = select i1 %i.v, i32 %.0.i, i32 %2       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc:bb.a
  %.388.i = select i1 %i.aa, double %.287.i, double %i.ac ; 3 uses
  %.3.i = select i1 %i.aa, i32 %.2.i, i32 %i.ab   ; 2 uses
  %i.ad = fcmp ult double %.388.i, 1.000000e+21   ; 2 uses
  %3 = add nuw nsw i32 %.3.i, 16
  %i.ae = fmul nnan double %.388.i, f0x3C9CD2B297D889BC
  %.489.i = select i1 %i.ad, double %.388.i, double %i.ae ; 3 uses
  %.4.i = select i1 %i.ad, i32 %.3.i, i32 %3      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc:bb.a
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ar = fcmp olt double %.0135, 1.000000e-250   ; 2 uses
  %i.as = fmul nnan double %.0135, 1.000000e+256
  %.893.i = select i1 %i.ar, double %i.as, double %.0135 ; 3 uses
  %.8.i = select i1 %i.ar, i32 -251, i32 5        ; 2 uses
  %i.at = fcmp olt double %.893.i, 1.000000e-122  ; 2 uses
  %4 = add nsw i32 %.8.i, -128
  %i.au = fmul nnan double %.893.i, 1.000000e+128
  %.994.i = select i1 %i.at, double %i.au, double %.893.i ; 3 uses
  %.9.i = select i1 %i.at, i32 %4, i32 %.8.i      ; 2 uses
end_hunk_2
