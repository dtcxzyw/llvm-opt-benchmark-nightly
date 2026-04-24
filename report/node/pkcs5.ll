inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@mbedtls_pkcs5_pbkdf2_hmac:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc i32 @pkcs5_pbkdf2_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 25 uses
  %i.b = alloca [64 x i8], align 16               ; 28 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
end_hunk_0
begin_hunk_1_@pkcs5_pbkdf2_hmac:bb.a
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.m, 24
  %n.vec138 = and i64 %i.o, 4611686018427387900   ; 9 uses
  %i.p = shl i64 %n.vec138, 3
  %i.q = or disjoint i64 %i.p, 8
  %i.r = shl i64 %n.vec138, 3                     ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %10 = icmp eq i64 %n.vec138, 4
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %15 = icmp eq i64 %n.vec138, 8
  %16 = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %20 = icmp eq i64 %n.vec138, 12
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %24 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %25 = icmp eq i64 %n.vec138, 16
  %26 = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %29 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %30 = icmp eq i64 %n.vec138, 20
  %31 = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %34 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %35 = icmp eq i64 %n.vec138, 24
  %36 = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %39 = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %cmp.n148 = icmp eq i64 %i.o, %n.vec138
  br label %.lr.ph76.split.us

end_hunk_1
begin_hunk_2_@pkcs5_pbkdf2_hmac:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %0) #7 ; 2 uses
  %.not61.us = icmp eq i32 %i.ae, 0
  br i1 %.not61.us, label %.preheader63.us, label %.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader150, %.lr.ph.us
  %i.af = phi i64 [ %i.aj, %.lr.ph.us ], [ %.ph, %.lr.ph.us.preheader150 ] ; 3 uses
end_hunk_2
begin_hunk_3_@pkcs5_pbkdf2_hmac:bb.a
  %exitcond.not = icmp eq i64 %i.aq, %i.h
  br i1 %exitcond.not, label %mbedtls_xor.exit.us, label %.lr.ph70.us, !llvm.loop !27

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block147, %.preheader63.us
  %.0.i.lcssa.us = phi i64 [ 0, %.preheader63.us ], [ %i.r, %middle.block147 ], [ %i.af, %.lr.ph.us ] ; 7 uses
  %i.ar = icmp samesign ult i64 %.0.i.lcssa.us, %i.h
  br i1 %i.ar, label %iter.check, label %mbedtls_xor.exit.us

end_hunk_3
begin_hunk_4_@pkcs5_pbkdf2_hmac:bb.a
  %.1.i69.us.ph = phi i64 [ %.0.i.lcssa.us, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph70.us

.preheader63.us:                                  ; preds = %bb.k
  br i1 %.not.i67, label %.preheader.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader63.us
  br i1 %min.iters.check135, label %.lr.ph.us.preheader150, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph.us.preheader
  %wide.load142 = load <2 x i64>, ptr %i.b, align 16
  %wide.load143 = load <2 x i64>, ptr %8, align 16
  %wide.load144 = load <2 x i64>, ptr %i.a, align 16
  %wide.load145 = load <2 x i64>, ptr %9, align 16
  %40 = xor <2 x i64> %wide.load144, %wide.load142
  %41 = xor <2 x i64> %wide.load145, %wide.load143
  store <2 x i64> %40, ptr %i.b, align 16
  store <2 x i64> %41, ptr %8, align 16
  br i1 %10, label %middle.block147, label %vector.body139.1

vector.body139.1:                                 ; preds = %vector.body139
  %wide.load142.1 = load <2 x i64>, ptr %11, align 16
  %wide.load143.1 = load <2 x i64>, ptr %12, align 16
  %wide.load144.1 = load <2 x i64>, ptr %13, align 16
  %wide.load145.1 = load <2 x i64>, ptr %14, align 16
  %42 = xor <2 x i64> %wide.load144.1, %wide.load142.1
  %43 = xor <2 x i64> %wide.load145.1, %wide.load143.1
  store <2 x i64> %42, ptr %11, align 16
  store <2 x i64> %43, ptr %12, align 16
  br i1 %15, label %middle.block147, label %vector.body139.2

vector.body139.2:                                 ; preds = %vector.body139.1
  %wide.load142.2 = load <2 x i64>, ptr %16, align 16
  %wide.load143.2 = load <2 x i64>, ptr %17, align 16
  %wide.load144.2 = load <2 x i64>, ptr %18, align 16
  %wide.load145.2 = load <2 x i64>, ptr %19, align 16
  %44 = xor <2 x i64> %wide.load144.2, %wide.load142.2
  %45 = xor <2 x i64> %wide.load145.2, %wide.load143.2
  store <2 x i64> %44, ptr %16, align 16
  store <2 x i64> %45, ptr %17, align 16
  br i1 %20, label %middle.block147, label %.preheader63.us.a

.preheader63.us.a:                                ; preds = %vector.body139.2
  %wide.load142.3 = load <2 x i64>, ptr %21, align 16
  %wide.load143.3 = load <2 x i64>, ptr %22, align 16
  %wide.load144.3 = load <2 x i64>, ptr %23, align 16
  %wide.load145.3 = load <2 x i64>, ptr %24, align 16
  %46 = xor <2 x i64> %wide.load144.3, %wide.load142.3
  %47 = xor <2 x i64> %wide.load145.3, %wide.load143.3
  store <2 x i64> %46, ptr %21, align 16
  store <2 x i64> %47, ptr %22, align 16
  br i1 %25, label %middle.block147, label %.lr.ph.us.preheader.a

.lr.ph.us.preheader.a:                            ; preds = %.preheader63.us.a
  %wide.load142.4 = load <2 x i64>, ptr %26, align 16
  %wide.load143.4 = load <2 x i64>, ptr %27, align 16
  %wide.load144.4 = load <2 x i64>, ptr %28, align 16
  %wide.load145.4 = load <2 x i64>, ptr %29, align 16
  %48 = xor <2 x i64> %wide.load144.4, %wide.load142.4
  %49 = xor <2 x i64> %wide.load145.4, %wide.load143.4
  store <2 x i64> %48, ptr %26, align 16
  store <2 x i64> %49, ptr %27, align 16
  br i1 %30, label %middle.block147, label %vector.body139.a

vector.body139.a:                                 ; preds = %.lr.ph.us.preheader.a
  %wide.load142.a = load <2 x i64>, ptr %31, align 16
  %wide.load143.a = load <2 x i64>, ptr %32, align 16
  %wide.load144.a = load <2 x i64>, ptr %33, align 16
  %wide.load145.a = load <2 x i64>, ptr %34, align 16
  %i.bh = xor <2 x i64> %wide.load144.a, %wide.load142.a
  %i.bi = xor <2 x i64> %wide.load145.a, %wide.load143.a
  store <2 x i64> %i.bh, ptr %31, align 16
  store <2 x i64> %i.bi, ptr %32, align 16
  br i1 %35, label %middle.block147, label %vector.body139.6

vector.body139.6:                                 ; preds = %vector.body139.a
  %wide.load142.6 = load <2 x i64>, ptr %36, align 16
  %wide.load143.6 = load <2 x i64>, ptr %37, align 16
  %wide.load144.6 = load <2 x i64>, ptr %38, align 16
  %wide.load145.6 = load <2 x i64>, ptr %39, align 16
  %50 = xor <2 x i64> %wide.load144.6, %wide.load142.6
  %51 = xor <2 x i64> %wide.load145.6, %wide.load143.6
  store <2 x i64> %50, ptr %36, align 16
  store <2 x i64> %51, ptr %37, align 16
  br label %middle.block147

middle.block147:                                  ; preds = %vector.body139.6, %vector.body139.a, %.lr.ph.us.preheader.a, %.preheader63.us.a, %vector.body139.2, %vector.body139.1, %vector.body139
  br i1 %cmp.n148, label %.preheader.us, label %.lr.ph.us.preheader150

.lr.ph.us.preheader150:                           ; preds = %.lr.ph.us.preheader, %middle.block147
  %.ph = phi i64 [ 8, %.lr.ph.us.preheader ], [ %i.q, %middle.block147 ]
  %.0.i68.us.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.r, %middle.block147 ]
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %mbedtls_xor.exit.us
end_hunk_4
begin_hunk_5_@puts
!28 = distinct !{!28, !22, !25, !24}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = distinct !{!30, !22, !25, !24}
end_hunk_5
