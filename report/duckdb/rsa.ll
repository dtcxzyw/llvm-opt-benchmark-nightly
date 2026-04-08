inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@mbedtls_rsa_pkcs1_encrypt:bb.a

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %.0.i = phi i32 [ %i.p, %bb.f ], [ 100, %.preheader.i ] ; 2 uses
  %i.m = tail call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %.03553.i, i64 noundef 1), !inline_history !25 ; 3 uses
  %i.n = load i8, ptr %.03553.i, align 1, !tbaa !22
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %.critedge.i
end_hunk_0
begin_hunk_1_@mbedtls_rsa_rsaes_pkcs1_v15_decrypt:bb.a
  %i.af = add i64 %i.ae, %.05055.i                ; 3 uses
  %i.ag = add nuw nsw i64 %.057.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.c
  br i1 %exitcond.not.i, label %bb.e, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.c, -11                   ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.smax.i32
!22 = !{!5, !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{ptr @mbedtls_rsa_rsaes_pkcs1_v15_encrypt}
!26 = distinct !{!26, !24}
end_hunk_2
