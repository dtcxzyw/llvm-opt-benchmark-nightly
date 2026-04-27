inline.NumInlined: 17
begin_hunk_0_@agrep:bb.a
  br i1 %i.ff, label %.lr.ph271, label %._crit_edge272

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %i.fm, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %niter362 = phi i64 [ %niter362.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fg = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv286
  %i.fh = lshr i32 %store_forwarded, 1
  %i.fi = and i32 %i.fh, %store_forwarded         ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv286
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.next287
  %i.fl = lshr i32 %i.fi, 1
  %i.fm = and i32 %i.fl, %i.fi                    ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next287
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !4
end_hunk_0
