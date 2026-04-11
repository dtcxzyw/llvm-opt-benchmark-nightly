inline.NumInlined: 40
inline.NumDeleted: 16
begin_hunk_0_@JPEGFixupTags:bb.a
  %.sroa.143.5.i = phi i64 [ %i.fc, %bb.az ], [ %.sroa.143.15.i, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 3 uses
  %.sroa.188.5.i = phi i8 [ 1, %bb.az ], [ %.sroa.188.19.i, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 2 uses
  %i.fd = phi i32 [ %spec.select.i87.i.i, %bb.az ], [ %i.eo, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 2 uses
  %i.fe = phi ptr [ %i.p, %bb.az ], [ %i.en, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !21  ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %i.fg = lshr i8 %i.ff, 4                        ; 3 uses
  %i.fh = and i8 %i.ff, 15                        ; 3 uses
  %.not.i90.i.i = icmp eq i32 %i.fd, 1
  br i1 %.not.i90.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i80.i.i
  %2 = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fi = add nsw i32 %i.fd, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit92.i.i

end_hunk_0
begin_hunk_1_@JPEGFixupTags:bb.a
  %.sroa.10877.6.i = phi i64 [ %.sroa.10877.5.i, %bb.bb ], [ %i.fj, %bb.bc ], [ %.sroa.10877.5.i, %bb.ba ]
  %.sroa.143.6.i = phi i64 [ 0, %bb.bb ], [ %i.fk, %bb.bc ], [ %.sroa.143.5.i, %bb.ba ]
  %.sroa.188.6.i = phi i8 [ %.sroa.188.5.i, %bb.bb ], [ 0, %bb.bc ], [ %.sroa.188.5.i, %bb.ba ]
  %3 = phi ptr [ %1, %bb.bb ], [ %1, %bb.bc ], [ %2, %bb.ba ]
  %i.fl = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %i.fi, %bb.ba ]
  %i.fm = load i16, ptr %i.i, align 2, !tbaa !133
  %i.fn = icmp ugt i16 %i.fm, 1
  br i1 %i.fn, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %JPEGFixupTagsSubsamplingSkip.exit92.i.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i
  %.sroa.10877.7.i = phi i64 [ %.sroa.10877.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.10877.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 4 uses
  %.sroa.143.7.i = phi i64 [ %.sroa.143.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.143.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 6 uses
  %.sroa.188.7.i = phi i8 [ %.sroa.188.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.188.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 2 uses
  %i.fo = phi ptr [ %6, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %3, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ]
  %i.fp = phi i32 [ %i.gm, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %i.fl, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 2 uses
  %.052143.i.i = phi i16 [ %i.gn, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ 1, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ]
  %.not.i93.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i93.i.i, label %bb.bd, label %JPEGFixupTagsSubsamplingSkip.exit95.i.i

end_hunk_1
begin_hunk_2_@JPEGFixupTags:bb.a
  %.sroa.143.8.i = phi i64 [ %i.gf, %bb.bg ], [ %.sroa.143.7.i, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 3 uses
  %.sroa.188.8.i = phi i8 [ 1, %bb.bg ], [ %.sroa.188.7.i, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 2 uses
  %i.gg = phi i32 [ %spec.select.i103.i.i, %bb.bg ], [ %i.fr, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 2 uses
  %i.gh = phi ptr [ %i.p, %bb.bg ], [ %i.fq, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !21
  %4 = getelementptr inbounds nuw i8, ptr %i.gh, i64 1 ; 2 uses
  %.not63.i.i = icmp eq i8 %i.gi, 17
  br i1 %.not63.i.i, label %bb.bi, label %bb.bh

end_hunk_2
begin_hunk_3_@JPEGFixupTags:bb.a
  br i1 %.not.i106.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %5 = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gj = add i32 %i.gg, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

end_hunk_3
begin_hunk_4_@JPEGFixupTags:bb.a
  %.sroa.10877.9.i = phi i64 [ %.sroa.10877.8.i, %bb.bk ], [ %i.gk, %bb.bl ], [ %.sroa.10877.8.i, %bb.bj ]
  %.sroa.143.9.i = phi i64 [ 0, %bb.bk ], [ %i.gl, %bb.bl ], [ %.sroa.143.8.i, %bb.bj ]
  %.sroa.188.9.i = phi i8 [ %.sroa.188.8.i, %bb.bk ], [ 0, %bb.bl ], [ %.sroa.188.8.i, %bb.bj ]
  %6 = phi ptr [ %4, %bb.bk ], [ %4, %bb.bl ], [ %5, %bb.bj ]
  %i.gm = phi i32 [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.gj, %bb.bj ]
  %i.gn = add nuw i16 %.052143.i.i, 1             ; 2 uses
  %i.go = load i16, ptr %i.i, align 2, !tbaa !133
  %i.gp = icmp ult i16 %i.gn, %i.go
end_hunk_4
