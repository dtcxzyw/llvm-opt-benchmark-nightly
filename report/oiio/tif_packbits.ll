begin_hunk_0_@PackBitsEncode:bb.a
  %.0161 = phi i32 [ 0, %.lr.ph163 ], [ %.4, %bb.z ]
  %.091160 = phi ptr [ null, %.lr.ph163 ], [ %.495, %bb.z ]
  %.096159 = phi i64 [ %2, %.lr.ph163 ], [ %.197.lcssa, %bb.z ] ; 5 uses
  %.098158 = phi ptr [ %i.b, %.lr.ph163 ], [ %.4102.a, %bb.z ]
  %.0103157 = phi ptr [ %1, %.lr.ph163 ], [ %.1104.lcssa, %bb.z ] ; 3 uses
  %i.j = load i8, ptr %.0103157, align 1, !tbaa !36 ; 8 uses
  %.1104132 = getelementptr inbounds nuw i8, ptr %.0103157, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@PackBitsEncode:bb.a
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.critedge
  %.199.ph = phi ptr [ %.098158, %.critedge ], [ %4, %.outer.backedge ] ; 2 uses
  %.192.ph = phi ptr [ %.091160, %.critedge ], [ %.394113, %.outer.backedge ] ; 2 uses
  %.190.ph = phi i64 [ %.089.lcssa, %.critedge ], [ %.190.ph.be, %.outer.backedge ] ; 11 uses
  %.1.ph = phi i32 [ %.0161, %.critedge ], [ %.1.ph.be, %.outer.backedge ] ; 2 uses
end_hunk_1
begin_hunk_2_@PackBitsEncode:bb.a
  %.1.ph.be = phi i32 [ 2, %bb.w ], [ 3, %bb.t ], [ 2, %bb.q ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.us-phi.sink239, i64 1
  store i8 -127, ptr %.us-phi.sink239, align 1, !tbaa !36
  %4 = getelementptr inbounds nuw i8, ptr %.us-phi.sink239, i64 2
  store i8 %i.j, ptr %i.cp, align 1, !tbaa !36
  %.190.ph.be = add i64 %.190.ph, -128
  br label %.outer

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@PackBitsEncode:bb.a
  %i.cr = sub i8 1, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store i8 %i.cr, ptr %.us-phi, align 1, !tbaa !36
  %5 = getelementptr inbounds nuw i8, ptr %.us-phi, i64 2
  store i8 %i.j, ptr %i.cs, align 1, !tbaa !36
  br label %bb.z

bb.s:                                             ; preds = %.split.us
  %i.ct = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store i8 0, ptr %.us-phi, align 1, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %.us-phi, i64 2
  store i8 %i.j, ptr %i.ct, align 1, !tbaa !36
  br label %bb.z

end_hunk_3
begin_hunk_4_@PackBitsEncode:bb.a
  %i.cx = sub i8 1, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.us-phi151, i64 1
  store i8 %i.cx, ptr %.us-phi151, align 1, !tbaa !36
  %7 = getelementptr inbounds nuw i8, ptr %.us-phi151, i64 2
  store i8 %i.j, ptr %i.cy, align 1, !tbaa !36
  br label %bb.z

end_hunk_4
begin_hunk_5_@PackBitsEncode:bb.a
  store i8 %i.da, ptr %.us-phi152, align 1, !tbaa !36
  %i.db = icmp ne i8 %i.da, 127
  %spec.select = zext i1 %i.db to i32
  %8 = getelementptr inbounds nuw i8, ptr %.us-phi151, i64 1
  store i8 %i.j, ptr %.us-phi151, align 1, !tbaa !36
  br label %bb.z

end_hunk_5
begin_hunk_6_@PackBitsEncode:bb.a
  %i.df = sub i8 1, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.us-phi155, i64 1
  store i8 %i.df, ptr %.us-phi155, align 1, !tbaa !36
  %9 = getelementptr inbounds nuw i8, ptr %.us-phi155, i64 2
  store i8 %i.j, ptr %i.dg, align 1, !tbaa !36
  br label %bb.z

bb.y:                                             ; preds = %.split154.us
  %i.dh = getelementptr inbounds nuw i8, ptr %.us-phi155, i64 1
  store i8 0, ptr %.us-phi155, align 1, !tbaa !36
  %10 = getelementptr inbounds nuw i8, ptr %.us-phi155, i64 2
  store i8 %i.j, ptr %i.dh, align 1, !tbaa !36
  br label %bb.z

end_hunk_6
begin_hunk_7_@PackBitsEncode:bb.a
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v, %bb.r, %bb.s
  %.4102.a = phi ptr [ %10, %bb.y ], [ %5, %bb.r ], [ %6, %bb.s ], [ %7, %bb.u ], [ %8, %bb.v ], [ %9, %bb.x ] ; 2 uses
  %.495 = phi ptr [ %.us-phi155, %bb.y ], [ %.us-phi148, %bb.r ], [ %.us-phi, %bb.s ], [ %.us-phi152, %bb.u ], [ %.us-phi152, %bb.v ], [ %.us-phi156, %bb.x ]
  %.4 = phi i32 [ 1, %bb.y ], [ 2, %bb.r ], [ 1, %bb.s ], [ 3, %bb.u ], [ %spec.select, %bb.v ], [ 2, %bb.x ]
  %i.di = icmp sgt i64 %.197.lcssa, 0
  br i1 %i.di, label %bb.b, label %._crit_edge164.loopexit

end_hunk_7
begin_hunk_8_@PackBitsEncode:bb.a

._crit_edge164:                                   ; preds = %._crit_edge164.loopexit, %bb.a
  %i.dj = phi ptr [ %i.b, %bb.a ], [ %.pre200, %._crit_edge164.loopexit ]
  %.098.lcssa = phi ptr [ %i.b, %bb.a ], [ %.4102.a, %._crit_edge164.loopexit ] ; 2 uses
  %i.dk = ptrtoint ptr %.098.lcssa to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
end_hunk_8
