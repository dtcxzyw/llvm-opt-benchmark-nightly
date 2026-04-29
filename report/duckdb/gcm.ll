inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_gcm_finish:bb.a
  br i1 %found.conflict, label %.lr.ph85.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, 4611686018427387900     ; 4 uses
  %i.gn = shl i64 %n.vec, 3
  %i.go = or disjoint i64 %i.gn, 8
  %6 = shl i64 %n.vec, 3                          ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@mbedtls_gcm_finish:bb.a

.lr.ph85.preheader145:                            ; preds = %vector.memcheck, %.lr.ph85.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph85.preheader ], [ %i.go, %middle.block ]
  %.0.i84.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph85.preheader ], [ %6, %middle.block ]
  br label %.lr.ph85

.preheader:                                       ; preds = %.lr.ph85, %middle.block, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %.0.i.lcssa = phi i64 [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74 ], [ %6, %middle.block ], [ %i.hv, %.lr.ph85 ] ; 9 uses
  %i.gw = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.gw, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit

end_hunk_1
