inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_gcm_finish:bb.a

mbedtls_xor.exit41:                               ; preds = %bb.f
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 14 uses
  %.0.copyload.i42 = load i64, ptr %i.q, align 1
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.r = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
end_hunk_0
begin_hunk_1_@mbedtls_gcm_finish:bb.a
  br label %.lr.ph50

.preheader:                                       ; preds = %.lr.ph50, %middle.block, %mbedtls_xor.exit41
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_xor.exit41 ], [ %i.ab, %middle.block ], [ %i.bi, %.lr.ph50 ] ; 9 uses
  %i.aj = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.aj, label %iter.check, label %mbedtls_xor.exit

end_hunk_1
begin_hunk_2_@mbedtls_gcm_finish:bb.a
  br label %vector.body73, !llvm.loop !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec85 = and i64 %i.ak, 28                    ; 3 uses
  %i.at = add i64 %.0.i.lcssa, %n.vec85
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.au = add i64 %.0.i.lcssa, %index86           ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %i.au ; 2 uses
  %wide.load87.a = load <4 x i8>, ptr %i.av, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.au
  %wide.load88.a = load <4 x i8>, ptr %i.aw, align 1, !tbaa !16, !alias.scope !86
  %i.ax = xor <4 x i8> %wide.load88.a, %wide.load87.a
  store <4 x i8> %i.ax, ptr %i.av, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.ak, %n.vec85
  br i1 %cmp.n90, label %mbedtls_xor.exit, label %.lr.ph52.preheader

end_hunk_2
begin_hunk_3_@mbedtls_gcm_finish:bb.a
  %i.bf = add nuw i64 %.1.i51.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !90

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol, %.lr.ph52.preheader
  %.1.i51.unr = phi i64 [ %.1.i51.ph, %.lr.ph52.preheader ], [ %i.bf, %.lr.ph52.prol ]
end_hunk_3
begin_hunk_4_@mbedtls_gcm_finish:bb.a
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.bm, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph50, !llvm.loop !91

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %.1.i51 = phi i64 [ %i.ck, %.lr.ph52 ], [ %.1.i51.unr, %.lr.ph52.prol.loopexit ] ; 6 uses
end_hunk_4
begin_hunk_5_@mbedtls_gcm_finish:bb.a
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !16
  %i.ck = add nuw i64 %.1.i51, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ck, %5
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph52, !llvm.loop !92

mbedtls_xor.exit:                                 ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52, %vec.epilog.middle.block, %.preheader, %bb.f, %bb.c
  %.0 = phi i32 [ -20, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph52 ], [ 0, %.lr.ph52.prol.loopexit ]
end_hunk_5
begin_hunk_6_@mbedtls_gcm_self_test:bb.a
bb.ba:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.thread239, label %bb.d, !llvm.loop !93

.thread239:                                       ; preds = %bb.ba, %bb.f
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 3
  br i1 %exitcond265.not, label %bb.bb, label %bb.c, !llvm.loop !94

bb.bb:                                            ; preds = %.thread239
  br i1 %.not, label %.thread244, label %bb.bc
end_hunk_6
begin_hunk_7_@llvm.fshl.i64
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !24, !25, !26}
!89 = distinct !{!89, !24, !25, !26}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !24, !25}
!92 = distinct !{!92, !24, !25}
!93 = distinct !{!93, !24}
!94 = distinct !{!94, !24}
end_hunk_7
