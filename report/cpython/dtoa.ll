inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_dtoa:bb.a
  %.0486822 = phi i32 [ %.0486826, %bb.bl ], [ %.0486823, %bb.bq ] ; 4 uses
  %.0490816 = phi i32 [ %.0490820, %bb.bl ], [ %.0490817, %bb.bq ] ; 11 uses
  %.09.lcssa22.i = phi i32 [ %.09.lcssa21.i, %bb.bl ], [ %.09.lcssa19.i, %bb.bq ]
  %.1.i.i668 = phi ptr [ %i.ha, %bb.bl ], [ %.024.i.i667, %bb.bq ] ; 7 uses
  %i.if = getelementptr i8, ptr %.1.i.i668, i64 20
  store i32 0, ptr %i.if, align 4, !tbaa !137
  %i.ig = getelementptr i8, ptr %.1.i.i668, i64 16
end_hunk_0
begin_hunk_1_@_Py_dg_dtoa:bb.a

.loopexit979:                                     ; preds = %.lr.ph1097, %bb.cn, %.lr.ph1108._crit_edge, %._crit_edge1104
  %.5477 = phi i32 [ %.2474, %.lr.ph1108._crit_edge ], [ %.2474, %bb.cn ], [ %.3475, %._crit_edge1104 ], [ %.3475, %.lr.ph1097 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1460.a, %.lr.ph1108._crit_edge ], [ %.lcssa1460.a, %bb.cn ], [ %.lcssa1073, %._crit_edge1104 ], [ %i.ks, %.lr.ph1097 ]
  br label %bb.co

bb.co:                                            ; preds = %bb.cp, %.loopexit979
  %.6 = phi ptr [ %.5, %.loopexit979 ], [ %i.nl, %bb.cp ] ; 2 uses
  %i.nl = getelementptr i8, ptr %.6, i64 -1       ; 5 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !11  ; 2 uses
  %i.nn = icmp eq i8 %i.nm, 57
  br i1 %i.nn, label %bb.cp, label %.loopexit.loopexit
end_hunk_1
begin_hunk_2_@_Py_dg_dtoa:bb.a

bb.cq:                                            ; preds = %bb.cp
  %i.np = add i32 %.5477, 1
  store i8 48, ptr %i.nl, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.co
end_hunk_2
begin_hunk_3_@_Py_dg_dtoa:bb.a

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cq
  %i.nr = phi i8 [ 49, %bb.cq ], [ %i.nq, %.loopexit.loopexit ]
  %.6478 = phi i32 [ %i.np, %bb.cq ], [ %.5477, %.loopexit.loopexit ]
  store i8 %i.nr, ptr %i.nl, align 1, !tbaa !11
  br label %.critedge

.preheader:                                       ; preds = %.lr.ph1555.a
end_hunk_3
begin_hunk_4_@_Py_dg_dtoa:bb.a
  %.11447 = phi ptr [ %.8444, %bb.fv ], [ %i.yi, %cmp.exit720 ], [ %i.yi, %cmp.exit720.thread ], [ %i.yi, %bb.gk ] ; 2 uses
  %.3431 = phi ptr [ %.0428, %bb.fv ], [ %.2430, %cmp.exit720 ], [ %.2430, %cmp.exit720.thread ], [ %.2430, %bb.gk ] ; 2 uses
  %.14425 = phi ptr [ %.11422, %bb.fv ], [ %.13424, %cmp.exit720 ], [ %.13424, %cmp.exit720.thread ], [ %.13424, %bb.gk ] ; 2 uses
  %.13 = phi ptr [ %i.xf, %bb.fv ], [ %.12, %cmp.exit720 ], [ %.12, %cmp.exit720.thread ], [ %.12, %bb.gk ]
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gn, %cmp.exit720.thread876
  %.14 = phi ptr [ %.13, %cmp.exit720.thread876 ], [ %i.zb, %bb.gn ] ; 3 uses
  %i.zb = getelementptr i8, ptr %.14, i64 -1      ; 5 uses
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !11  ; 2 uses
  %i.zd = icmp eq i8 %i.zc, 57
  br i1 %i.zd, label %bb.gn, label %bb.gp
end_hunk_4
begin_hunk_5_@_Py_dg_dtoa:bb.a

bb.go:                                            ; preds = %bb.gn
  %i.zf = add i32 %.7479, 1
  store i8 49, ptr %i.zb, align 1, !tbaa !11
  br label %.loopexit971

bb.gp:                                            ; preds = %bb.gm
end_hunk_5
begin_hunk_6_@_Py_dg_dtoa:bb.a
  %.4432 = phi ptr [ null, %cmp.exit690.thread ], [ null, %cmp.exit690.thread858 ], [ %.3431, %bb.go ], [ %.3431, %bb.gp ], [ %.0428, %.thread869 ], [ %.0428, %bb.fw ], [ %.0428, %bb.fg ], [ %.2430, %.preheader970 ] ; 2 uses
  %.15426 = phi ptr [ %.7418, %cmp.exit690.thread ], [ %.8419, %cmp.exit690.thread858 ], [ %.14425, %bb.go ], [ %.14425, %bb.gp ], [ %.11422, %.thread869 ], [ %.11422, %bb.fw ], [ %.11422, %bb.fg ], [ %.13424, %.preheader970 ] ; 2 uses
  %.6409 = phi ptr [ %.4407, %cmp.exit690.thread ], [ %.5408, %cmp.exit690.thread858 ], [ %.3406, %bb.go ], [ %.3406, %bb.gp ], [ %.3406, %.thread869 ], [ %.3406, %bb.fw ], [ %.3406, %bb.fg ], [ %.3406, %.preheader970 ] ; 2 uses
  %.16 = phi ptr [ %i.ih, %cmp.exit690.thread ], [ %i.td, %cmp.exit690.thread858 ], [ %.14, %bb.go ], [ %.14, %bb.gp ], [ %i.xc, %.thread869 ], [ %i.xi, %bb.fw ], [ %i.vx, %bb.fg ], [ %.15, %.preheader970 ] ; 2 uses
  %.not.i721 = icmp eq ptr %.6409, null
  br i1 %.not.i721, label %Bfree.exit722, label %.thread878

end_hunk_6
begin_hunk_7_@_Py_dg_dtoa:bb.a
.critedge:                                        ; preds = %bb.ci, %.preheader976, %.lr.ph1551, %.preheader, %.preheader.preheader, %..critedge.loopexit_crit_edge, %bb.cg, %.preheader968, %bb.gx, %bb.gw, %Bfree.exit722, %.loopexit
  %.10482 = phi i32 [ %.2474, %.preheader.preheader ], [ %.9481890, %Bfree.exit722 ], [ %.6478, %.loopexit ], [ %.9481890, %bb.gw ], [ %.9481890, %bb.gx ], [ %.2474, %.preheader ], [ %.2474, %.preheader968 ], [ %.3475, %bb.cg ], [ %.3475, %.preheader976 ], [ %.2474, %.lr.ph1551 ], [ %.2474, %..critedge.loopexit_crit_edge ], [ %.3475, %bb.ci ]
  %.13449 = phi ptr [ %.1.i.i, %.preheader.preheader ], [ %.12448892, %Bfree.exit722 ], [ %.1.i.i, %.loopexit ], [ %.12448892, %bb.gw ], [ %.12448892, %bb.gx ], [ %.1.i.i, %.preheader ], [ %.1.i.i, %.preheader968 ], [ %.1.i.i, %bb.cg ], [ %.1.i.i, %.preheader976 ], [ %.1.i.i, %.lr.ph1551 ], [ %.1.i.i, %..critedge.loopexit_crit_edge ], [ %.1.i.i, %bb.ci ] ; 5 uses
  %.17 = phi ptr [ %.lcssa1460.a, %.preheader.preheader ], [ %.16899, %Bfree.exit722 ], [ %.6, %.loopexit ], [ %.16899, %bb.gw ], [ %.16899, %bb.gx ], [ %i.nt, %.preheader ], [ %i.my, %.preheader968 ], [ %i.ki, %bb.cg ], [ %.2, %.preheader976 ], [ %i.og, %.lr.ph1551 ], [ %.71554, %..critedge.loopexit_crit_edge ], [ %i.le, %bb.ci ] ; 2 uses
  %.not.i727 = icmp eq ptr %.13449, null
  br i1 %.not.i727, label %Bfree.exit728, label %bb.gy

end_hunk_7
