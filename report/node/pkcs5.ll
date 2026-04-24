inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@mbedtls_pkcs5_pbkdf2_hmac:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 14 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
end_hunk_0
begin_hunk_1_@pkcs5_pbkdf2_hmac:bb.a
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.m, 24
  %n.vec138 = and i64 %i.o, 4611686018427387900   ; 4 uses
  %i.p = shl i64 %n.vec138, 3
  %i.q = or disjoint i64 %i.p, 8
  %i.r = shl i64 %n.vec138, 3                     ; 2 uses
  %cmp.n148 = icmp eq i64 %i.o, %n.vec138
  br label %.lr.ph76.split.us

end_hunk_1
begin_hunk_2_@pkcs5_pbkdf2_hmac:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #7 ; 2 uses
  %.not61.us = icmp eq i32 %i.ae, 0
  br i1 %.not61.us, label %.preheader63.us.a, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader150, %.lr.ph.us
  %i.af = phi i64 [ %i.aj, %.lr.ph.us ], [ %.ph, %.lr.ph.us.preheader150 ] ; 3 uses
end_hunk_2
begin_hunk_3_@pkcs5_pbkdf2_hmac:bb.a
  %exitcond.not = icmp eq i64 %i.aq, %i.h
  br i1 %exitcond.not, label %mbedtls_xor.exit.us, label %.lr.ph70.us, !llvm.loop !27

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block147, %.preheader63.us.a
  %.0.i.lcssa.us = phi i64 [ 0, %.preheader63.us.a ], [ %i.r, %middle.block147 ], [ %i.af, %.lr.ph.us ] ; 7 uses
  %i.ar = icmp samesign ult i64 %.0.i.lcssa.us, %i.h
  br i1 %i.ar, label %iter.check, label %mbedtls_xor.exit.us

end_hunk_3
begin_hunk_4_@pkcs5_pbkdf2_hmac:bb.a
  %.1.i69.us.ph = phi i64 [ %.0.i.lcssa.us, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph70.us

.preheader63.us.a:                                ; preds = %bb.k
  br i1 %.not.i67, label %.preheader.us, label %.lr.ph.us.preheader.a

.lr.ph.us.preheader.a:                            ; preds = %.preheader63.us.a
  br i1 %min.iters.check135, label %.lr.ph.us.preheader150, label %vector.body139.a

vector.body139.a:                                 ; preds = %.lr.ph.us.preheader.a, %vector.body139.a
  %index140 = phi i64 [ %index.next146, %vector.body139.a ], [ 0, %.lr.ph.us.preheader.a ] ; 2 uses
  %offset.idx141 = shl i64 %index140, 3           ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 %offset.idx141 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %wide.load142.a = load <2 x i64>, ptr %8, align 16
  %wide.load143.a = load <2 x i64>, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 %offset.idx141 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load144.a = load <2 x i64>, ptr %10, align 16
  %wide.load145.a = load <2 x i64>, ptr %11, align 16
  %i.bh = xor <2 x i64> %wide.load144.a, %wide.load142.a
  %i.bi = xor <2 x i64> %wide.load145.a, %wide.load143.a
  store <2 x i64> %i.bh, ptr %8, align 16
  store <2 x i64> %i.bi, ptr %9, align 16
  %index.next146 = add nuw i64 %index140, 4       ; 2 uses
  %12 = icmp eq i64 %index.next146, %n.vec138
  br i1 %12, label %middle.block147, label %vector.body139.a, !llvm.loop !31

middle.block147:                                  ; preds = %vector.body139.a
  br i1 %cmp.n148, label %.preheader.us, label %.lr.ph.us.preheader150

.lr.ph.us.preheader150:                           ; preds = %.lr.ph.us.preheader.a, %middle.block147
  %.ph = phi i64 [ 8, %.lr.ph.us.preheader.a ], [ %i.q, %middle.block147 ]
  %.0.i68.us.ph = phi i64 [ 0, %.lr.ph.us.preheader.a ], [ %i.r, %middle.block147 ]
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %mbedtls_xor.exit.us
end_hunk_4
begin_hunk_5_@puts
!28 = distinct !{!28, !22, !25, !24}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = distinct !{!30, !22, !25, !24}
!31 = distinct !{!31, !22, !25, !24}
end_hunk_5
