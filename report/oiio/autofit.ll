begin_hunk_0
  %.not673.i = xor i1 %i.lw, %i.na
  %.not653.i = icmp samesign ult i64 %i.ms, %i.ld
  %or.cond674.i = select i1 %.not673.i, i1 true, i1 %.not653.i
  br i1 %or.cond674.i, label %bb.be, label %.preheader778.i

.preheader778.i:                                  ; preds = %._crit_edge945.i, %bb.bd
  %.2494.i = phi i32 [ %.3495.i, %bb.bd ], [ %.1493.i, %._crit_edge945.i ] ; 2 uses
  %.4485.i = phi i32 [ %.5486.i, %bb.bd ], [ %.3484.i, %._crit_edge945.i ] ; 3 uses
  %.4477.i = phi i32 [ %.3495.i, %bb.bd ], [ %.3476.i, %._crit_edge945.i ]
  %i.nb = icmp slt i32 %.2494.i, %.1556.i
  %i.nc = add nsw i32 %.2494.i, 1
  %.3495.i = select i1 %i.nb, i32 %i.nc, i32 %.1508.i ; 7 uses
end_hunk_0
begin_hunk_1
  %i.ne = getelementptr inbounds [16 x i8], ptr %.sroa.5397.0.copyload.i, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !60
  %reass.sub132 = sub i64 %i.ng, %i.mg
  %i.nh = add i64 %reass.sub132, -6
  %i.ni = icmp ult i64 %i.nh, -11
  br i1 %i.ni, label %bb.bb, label %bb.bd

end_hunk_1
