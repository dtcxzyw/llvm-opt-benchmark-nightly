inline.NumInlined: 58
inline.NumDeleted: 1
begin_hunk_0_@cli_scanpe:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amc, -4                     ; 3 uses
  %5 = or disjoint i64 %n.vec, 1
  %6 = load i32, ptr %i.ajf, align 4, !tbaa !32, !alias.scope !78
  %i.amm = xor i32 %6, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.amm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body
end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a
  br i1 %cmp.n, label %._crit_edge3453, label %.lr.ph3452.preheader3968

.lr.ph3452.preheader3968:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3452.preheader, %middle.block
  %indvars.iv3562.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph3452.preheader ], [ %5, %middle.block ] ; 5 uses
  %i.ane = and i64 %wide.trip.count3566, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ane, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph3452.prol, label %.lr.ph3452.prol.loopexit
end_hunk_1
