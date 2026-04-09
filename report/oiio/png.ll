inline.NumInlined: 72
inline.NumDeleted: 12
begin_hunk_0_@png_ascii_from_fp:bb.a
bb.l:                                             ; preds = %.preheader343, %bb.aj
  %.2147 = phi double [ %.3148199, %bb.aj ], [ %.1146.lcssa, %.preheader343 ]
  %.1128 = phi i64 [ %.13140, %bb.aj ], [ %.0127, %.preheader343 ] ; 5 uses
  %.1120 = phi i32 [ %.5124, %bb.aj ], [ %.0115.ph, %.preheader343 ] ; 4 uses
  %.0115 = phi i32 [ %.3118, %bb.aj ], [ %.0115.ph, %.preheader343 ] ; 6 uses
  %.0108 = phi i32 [ %.4112, %bb.aj ], [ 0, %.preheader343 ] ; 6 uses
  %.1103 = phi ptr [ %.12, %bb.aj ], [ %.0102, %.preheader343 ] ; 5 uses
  %i.aw = fmul double %.2147, 1.000000e+01        ; 2 uses
  %i.ax = add i32 %.1120, 1                       ; 2 uses
  %i.ay = add i32 %i.ax, %.0108
  %i.az = add i32 %.0115, %spec.store.select7
  %i.ba = icmp ult i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %bb.n
end_hunk_0
begin_hunk_1_@png_ascii_from_fp:bb.a
  br i1 %i.ch, label %bb.y, label %.thread191

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp eq i32 %.3111, 0
  %i.cj = zext i1 %i.ci to i32
  %spec.select170 = add i32 %.0115, %i.cj
end_hunk_1
begin_hunk_2_@png_ascii_from_fp:bb.a
  %i.dm = add i8 %i.dl, 48
  %i.dn = getelementptr inbounds nuw i8, ptr %.11, i64 1
  store i8 %i.dm, ptr %.11, align 1, !tbaa !29
  %5 = add i32 %.3111204307, 1
  %6 = sub i32 %5, %.2117203308
  %i.do = add i32 %6, %.3122202309
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.ai
  %.3148199 = phi double [ %.3148200310, %bb.ai ], [ %.3148, %bb.y ] ; 2 uses
  %.13140 = phi i64 [ %.12139, %bb.ai ], [ %.7134, %bb.y ] ; 2 uses
  %.5124 = phi i32 [ 0, %bb.ai ], [ %i.ax, %bb.y ] ; 2 uses
  %.3118 = phi i32 [ 0, %bb.ai ], [ %spec.select170, %bb.y ] ; 2 uses
  %.4112 = phi i32 [ %i.do, %bb.ai ], [ %.3111, %bb.y ] ; 3 uses
  %.12 = phi ptr [ %i.dn, %bb.ai ], [ %.6, %bb.y ] ; 6 uses
end_hunk_2
begin_hunk_3_@png_build_gamma_table:bb.a
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %png_gamma_16bit_correct.exit.i
  %2 = add nuw nsw i32 %i.gg, 1
  %3 = sub nuw i32 %2, %.03442.i
  %i.gh = sub nuw i32 %i.gg, %.03442.i
  %xtraiter = and i32 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_3
