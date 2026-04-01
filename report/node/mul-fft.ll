begin_hunk_0
  %i.lj = zext i64 %i.le to i128
  %i.lk = add nuw nsw i128 %i.li, %i.lh
  %i.ll = sub nsw i128 %i.lj, %i.lk               ; 2 uses
  %5 = lshr i128 %i.ll, 64
  %6 = trunc nuw i128 %5 to i64
  %i.lm = trunc i128 %i.ll to i64
  %i.ln = zext i32 %.0112 to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ln
end_hunk_0
begin_hunk_1
  %i.qx = zext i64 %i.qr to i128
  %i.qy = add nuw nsw i128 %i.qw, %i.qv
  %i.qz = sub nsw i128 %i.qx, %i.qy               ; 2 uses
  %7 = lshr i128 %i.qz, 64
  %8 = trunc nuw i128 %7 to i64
  %i.ra = trunc i128 %i.qz to i64
  store i64 %i.ra, ptr %i.qq, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge231, %._crit_edge250
  %.pre-phi = phi i64 [ %.pre-phi308, %._crit_edge231 ], [ %.pre-phi306, %._crit_edge250 ]
  %.5.in = phi i64 [ %8, %._crit_edge231 ], [ %6, %._crit_edge250 ] ; 2 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  store i64 0, ptr %i.rb, align 8
  %9 = icmp ult i32 %.0112, %3
  %10 = trunc i64 %.5.in to i1                    ; 2 uses
  %i.rc = select i1 %9, i1 %10, i1 false
  br i1 %i.rc, label %.lr.ph256.preheader, label %._crit_edge257

.lr.ph256.preheader:                              ; preds = %bb.u
end_hunk_1
begin_hunk_2
  br label %.lr.ph256

._crit_edge257:                                   ; preds = %.lr.ph256, %bb.u
  %.lcssa = phi i1 [ %10, %bb.u ], [ %16, %.lr.ph256 ]
  br i1 %.lcssa, label %.preheader, label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %.lr.ph256
  %.0111254 = phi i32 [ %.0111, %.lr.ph256 ], [ %.0111252, %.lr.ph256.preheader ] ; 2 uses
  %.6.in253 = phi i64 [ %14, %.lr.ph256 ], [ %.5.in, %.lr.ph256.preheader ]
  %.6 = and i64 %.6.in253, 1
  %i.rd = zext i32 %.0111254 to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rd ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8
  %11 = zext i64 %i.rf to i128
  %i.rg = zext nneg i64 %.6 to i128
  %12 = sub nsw i128 %11, %i.rg                   ; 2 uses
  %13 = lshr i128 %12, 64                         ; 2 uses
  %14 = trunc nuw i128 %13 to i64
  %15 = trunc i128 %12 to i64
  store i64 %15, ptr %i.re, align 8
  %.0111 = add i32 %.0111254, 1                   ; 2 uses
  %i.rh = icmp ule i32 %.0111, %3
  %16 = trunc i128 %13 to i1                      ; 2 uses
  %i.ri = select i1 %i.rh, i1 %16, i1 false
  br i1 %i.ri, label %.lr.ph256, label %._crit_edge257, !llvm.loop !49

.preheader:                                       ; preds = %._crit_edge257, %.preheader
end_hunk_2
