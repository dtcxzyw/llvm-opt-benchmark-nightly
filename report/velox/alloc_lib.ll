begin_hunk_0
.lr.ph112.split.new:                              ; preds = %.lr.ph112.split
  %unroll_iter = and i64 %i.bu, -4
  %.neg = mul i64 %.076, -3
  %invariant.op = sub i64 %.neg, %.076
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph112.split.new
  %.1111 = phi i64 [ 0, %.lr.ph112.split.new ], [ %i.dq, %bb.y ] ; 4 uses
  %.182110 = phi i64 [ %.081, %.lr.ph112.split.new ], [ %.reass, %bb.y ]
  %.083109 = phi ptr [ %i.bk, %.lr.ph112.split.new ], [ %i.dp, %bb.y ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph112.split.new ], [ %niter.next.3, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.083109, i64 8
end_hunk_0
begin_hunk_1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.cw, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %.076 ; 3 uses
end_hunk_1
begin_hunk_2
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !76
  %.reass = add i64 %.182110, %invariant.op       ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.cw, ptr %i.do, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.076 ; 4 uses
end_hunk_2
begin_hunk_3

.epil.preheader:                                  ; preds = %._crit_edge.loopexit141.unr-lcssa, %.lr.ph112.split
  %.1111.epil.init = phi i64 [ 0, %.lr.ph112.split ], [ %i.dq, %._crit_edge.loopexit141.unr-lcssa ]
  %.182110.epil.init = phi i64 [ %.081, %.lr.ph112.split ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ]
  %.083109.epil.init = phi ptr [ %i.bk, %.lr.ph112.split ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
end_hunk_3
begin_hunk_4

._crit_edge:                                      ; preds = %._crit_edge.loopexit141.unr-lcssa, %bb.z, %.lr.ph112.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.x
  %.083.lcssa = phi ptr [ %i.bk, %bb.x ], [ %i.ec, %.lr.ph112.split.us.epil.preheader ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ], [ %i.ei, %bb.z ]
  %.182.lcssa = phi i64 [ %.081, %bb.x ], [ %i.dz, %.lr.ph112.split.us.epil.preheader ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ], [ %i.eg, %bb.z ]
  %i.em = or i64 %.182.lcssa, 3
  %i.en = getelementptr inbounds nuw i8, ptr %.083.lcssa, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !26
end_hunk_4
