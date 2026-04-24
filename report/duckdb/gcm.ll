inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_gcm_finish:bb.a

_ZL11mbedtls_xorPhPKhS1_m.exit41:                 ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 14 uses
  %.0.copyload.i42 = load i64, ptr %i.eb, align 1
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.ec = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
end_hunk_0
begin_hunk_1_@mbedtls_gcm_finish:bb.a
  br label %.lr.ph85

.preheader:                                       ; preds = %.lr.ph85, %middle.block, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %.0.i.lcssa = phi i64 [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74 ], [ %i.gp, %middle.block ], [ %i.hw, %.lr.ph85 ] ; 9 uses
  %i.gx = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.gx, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit

end_hunk_1
begin_hunk_2_@mbedtls_gcm_finish:bb.a
  br label %vector.body126, !llvm.loop !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec138 = and i64 %i.gy, 28                   ; 3 uses
  %i.hh = add i64 %.0.i.lcssa, %n.vec138
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.hi = add i64 %.0.i.lcssa, %index139          ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 %i.hi ; 2 uses
  %wide.load140.a = load <4 x i8>, ptr %i.hj, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.hi
  %wide.load141.a = load <4 x i8>, ptr %i.hk, align 1, !tbaa !15, !alias.scope !85
  %i.hl = xor <4 x i8> %wide.load141.a, %wide.load140.a
  store <4 x i8> %i.hl, ptr %i.hj, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next142, %n.vec138
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.gy, %n.vec138
  br i1 %cmp.n143, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87.preheader

end_hunk_2
begin_hunk_3_@mbedtls_gcm_finish:bb.a
  %i.ht = add nuw i64 %.1.i86.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !89

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.1.i86.unr = phi i64 [ %.1.i86.ph, %.lr.ph87.preheader ], [ %i.ht, %.lr.ph87.prol ]
end_hunk_3
begin_hunk_4_@mbedtls_gcm_finish:bb.a
  store i64 %i.hz, ptr %i.hx, align 1
  %i.ia = add nuw nsw i64 %i.hw, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ia, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph85, !llvm.loop !90

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.1.i86 = phi i64 [ %i.iy, %.lr.ph87 ], [ %.1.i86.unr, %.lr.ph87.prol.loopexit ] ; 6 uses
end_hunk_4
begin_hunk_5_@mbedtls_gcm_finish:bb.a
  store i8 %i.ix, ptr %i.it, align 1, !tbaa !15
  %i.iy = add nuw i64 %.1.i86, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.iy, %5
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87, !llvm.loop !91

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %vec.epilog.middle.block, %.preheader, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.0 = phi i32 [ -20, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59 ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph87 ], [ 0, %.lr.ph87.prol.loopexit ]
end_hunk_5
begin_hunk_6_@llvm.fshl.i64
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !23, !24, !25}
!88 = distinct !{!88, !23, !24, !25}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !23, !24}
!91 = distinct !{!91, !23, !24}
end_hunk_6
