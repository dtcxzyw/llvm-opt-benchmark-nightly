inline.NumInlined: 15
begin_hunk_0_@mbedtls_md_hmac_starts:bb.a
  br i1 %found.conflict, label %.lr.ph.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 4 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = or disjoint i64 %i.aq, 8
  %3 = shl i64 %n.vec, 3                          ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@mbedtls_md_hmac_starts:bb.a

.lr.ph.preheader194:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph195 = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.0.i4465.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %3, %middle.block ]
  br label %.lr.ph

.preheader63:                                     ; preds = %.lr.ph, %middle.block, %bb.n
  %.0.i44.lcssa = phi i64 [ 0, %bb.n ], [ %3, %middle.block ], [ %i.by, %.lr.ph ] ; 10 uses
  %i.az = icmp samesign ult i64 %.0.i44.lcssa, %.033
  br i1 %i.az, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader

end_hunk_1
begin_hunk_2_@mbedtls_md_hmac_starts:bb.a
  br i1 %found.conflict133, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader193, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck128
  %n.vec138 = and i64 %i.cf, 4611686018427387900  ; 4 uses
  %i.ci = shl i64 %n.vec138, 3
  %i.cj = or disjoint i64 %i.ci, 8
  %4 = shl i64 %n.vec138, 3                       ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
end_hunk_2
begin_hunk_3_@mbedtls_md_hmac_starts:bb.a

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader193:    ; preds = %vector.memcheck128, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88, %middle.block147
  %.ph = phi i64 [ 8, %vector.memcheck128 ], [ 8, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.cj, %middle.block147 ]
  %.0.i69.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %4, %middle.block147 ]
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit47

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
end_hunk_3
begin_hunk_4_@mbedtls_md_hmac_starts:bb.a
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67, !llvm.loop !45

.preheader:                                       ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47, %middle.block147, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %.0.i.lcssa = phi i64 [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader ], [ %4, %middle.block147 ], [ %i.eq, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ] ; 10 uses
  %i.dp = icmp samesign ult i64 %.0.i.lcssa, %.033
  br i1 %i.dp, label %iter.check178, label %_ZL11mbedtls_xorPhPKhS1_m.exit

end_hunk_4
