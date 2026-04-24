inline.NumInlined: 2499
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
bb.aw:                                            ; preds = %bb.av, %bb.aj
  %i.gr = phi ptr [ %i.gp, %bb.av ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.gs = phi ptr [ %.pre130, %bb.av ], [ %i.cz, %bb.aj ]
  %.037 = phi i64 [ 1, %bb.av ], [ 0, %bb.aj ]    ; 2 uses
  %.037.a = phi i32 [ 1, %bb.av ], [ 0, %bb.aj ]
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 4                 ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, %.037
  br i1 %i.gx, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.aw
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  ret void

bb.az:                                            ; preds = %.lr.ph114, %bb.az
  %i.ho = phi i64 [ %.037, %.lr.ph114 ], [ %i.hy, %bb.az ]
  %.0112 = phi i32 [ 0, %.lr.ph114 ], [ %i.hx, %bb.az ] ; 2 uses
  %.138111 = phi i32 [ %.037.a, %.lr.ph114 ], [ %i.hw, %bb.az ]
  %i.hp = zext i32 %.0112 to i64
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
bb.ay:                                            ; preds = %bb.ax, %bb.al
  %i.gq = phi ptr [ %i.go, %bb.ax ], [ %i.cx, %bb.al ] ; 2 uses
  %i.gr = phi ptr [ %.pre130, %bb.ax ], [ %i.cy, %bb.al ]
  %.037 = phi i64 [ 1, %bb.ax ], [ 0, %bb.al ]    ; 2 uses
  %.037.a = phi i32 [ 1, %bb.ax ], [ 0, %bb.al ]
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 4                 ; 2 uses
  %i.gw = icmp ugt i64 %i.gv, %.037
  br i1 %i.gw, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.ay
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii:bb.a
  ret void

bb.bb:                                            ; preds = %.lr.ph114, %bb.bb
  %i.hn = phi i64 [ %.037, %.lr.ph114 ], [ %i.hx, %bb.bb ]
  %.0112 = phi i32 [ 0, %.lr.ph114 ], [ %i.hw, %bb.bb ] ; 2 uses
  %.138111 = phi i32 [ %.037.a, %.lr.ph114 ], [ %i.hv, %bb.bb ]
  %i.ho = zext i32 %.0112 to i64
end_hunk_3
