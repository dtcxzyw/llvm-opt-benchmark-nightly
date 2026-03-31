begin_hunk_0
  %.12274 = phi i32 [ 0, %.preheader ], [ 1, %.._crit_edge.loopexit_crit_edge ], [ 0, %.thread429 ] ; 2 uses
  %.17259 = phi ptr [ %.6248.lcssa, %.preheader ], [ %i.kg, %.._crit_edge.loopexit_crit_edge ], [ %.16258, %.thread429 ]
  %i.kr = icmp slt i32 %i.kq, %4
  br i1 %i.kr, label %.lr.ph487, label %.thread454

.thread454:                                       ; preds = %.thread443, %._crit_edge
  %.26.lcssa = phi i32 [ %.25, %._crit_edge ], [ %.30, %.thread443 ]
  %.13275.lcssa = phi i32 [ %.12274, %._crit_edge ], [ %.16278, %.thread443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bx

.lr.ph487:                                        ; preds = %._crit_edge, %.thread443
  %i.ks = phi i32 [ %i.mi, %.thread443 ], [ %i.kq, %._crit_edge ] ; 5 uses
end_hunk_0
begin_hunk_1
  %.30 = phi i32 [ %.26484, %bb.bm ], [ %.27, %bb.bw ], [ %.26484, %bb.bu ], [ %.26484, %bb.br ] ; 2 uses
  %.16278 = phi i32 [ %i.kz, %bb.bm ], [ %i.mh, %bb.bw ], [ %i.ma, %bb.bu ], [ %i.lt, %bb.br ] ; 2 uses
  %i.mj = icmp slt i32 %i.mi, %4
  br i1 %i.mj, label %.lr.ph487, label %.thread454, !llvm.loop !18

.thread448:                                       ; preds = %bb.at, %bb.bh, %bb.bv
  store i32 10, ptr %7, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.cc

bb.bx:                                            ; preds = %.thread454, %._crit_edge507
  %.32 = phi i32 [ %.6287.lcssa, %._crit_edge507 ], [ %.26.lcssa, %.thread454 ]
  %.18280 = phi i32 [ %.4266.lcssa, %._crit_edge507 ], [ %.13275.lcssa, %.thread454 ]
  %.19261 = phi ptr [ %.4246, %._crit_edge507 ], [ %.17259, %.thread454 ]
  %i.mk = ptrtoint ptr %.19261 to i64
  %i.ml = ptrtoint ptr %0 to i64
  %i.mm = sub i64 %i.mk, %i.ml
end_hunk_1
