begin_hunk_0
  %vec.ind364 = phi <16 x i64> [ %induction359, %vector.ph348 ], [ %vec.ind.next366, %vector.body.interim367 ] ; 2 uses
  %i.bt = add <16 x i64> %broadcast.splat352, %vec.ind364
  %i.bu = icmp slt <16 x i64> %broadcast.splat354, %i.bt
  %4 = freeze <16 x i1> %i.bu
  %i.bv = bitcast <16 x i1> %4 to i16
  %.not374 = icmp eq i16 %i.bv, 0
  br i1 %.not374, label %vector.body.interim367, label %.split.us

end_hunk_0
begin_hunk_1
  %vec.ind337 = phi <16 x i64> [ %induction332, %vector.ph321 ], [ %vec.ind.next339, %vector.body.interim340 ] ; 2 uses
  %i.cb = add <16 x i64> %broadcast.splat325, %vec.ind337
  %i.cc = icmp slt <16 x i64> %broadcast.splat327, %i.cb
  %5 = freeze <16 x i1> %i.cc
  %i.cd = bitcast <16 x i1> %5 to i16
  %.not375 = icmp eq i16 %i.cd, 0
  br i1 %.not375, label %vector.body.interim340, label %.split.us

end_hunk_1
begin_hunk_2
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph301 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ez = add <16 x i64> %broadcast.splat, %vec.ind
  %i.fa = icmp slt <16 x i64> %broadcast.splat305, %i.ez
  %6 = freeze <16 x i1> %i.fa
  %i.fb = bitcast <16 x i1> %6 to i16
  %.not373 = icmp eq i16 %i.fb, 0
  br i1 %.not373, label %vector.body.interim, label %.split.us

end_hunk_2
