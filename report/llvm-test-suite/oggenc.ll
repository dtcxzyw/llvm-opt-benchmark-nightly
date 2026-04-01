begin_hunk_0

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge52
  %i.r = phi ptr [ %i.m, %.preheader.lr.ph ], [ %i.bm, %._crit_edge52 ]
  %i.s = phi i32 [ %i.c, %.preheader.lr.ph ], [ %i.bn, %._crit_edge52 ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %._crit_edge52 ] ; 3 uses
  %i.t = sext i32 %i.s to i64                     ; 6 uses
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge52.critedge

end_hunk_0
begin_hunk_1
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -128
  call void @vorbis_lpc_predict(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aq, i32 noundef 32, ptr noundef nonnull %i.ap, i64 noundef %i.aj)
  %1 = zext nneg i32 %i.s to i64
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge, %.lr.ph51
  %i.ar = phi i64 [ %1, %._crit_edge ], [ %i.bc, %.lr.ph51 ]
  %.149 = phi i64 [ 0, %._crit_edge ], [ %i.ba, %.lr.ph51 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.149
  %i.at = load float, ptr %i.as, align 4
  %i.au = load ptr, ptr %i.q, align 8
end_hunk_1
