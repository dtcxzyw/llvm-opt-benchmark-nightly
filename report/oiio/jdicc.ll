inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@jpeg_read_icc_profile:bb.a
bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.188125 = phi ptr [ %.188125.pre, %bb.ad ], [ %.087109, %bb.ac ] ; 2 uses
  %.not91126 = icmp eq ptr %.188125, null
  br i1 %.not91126, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %bb.ae
  %3 = add i64 %i.db, -14
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %marker_is_icc.exit99.thread
  %.188127 = phi ptr [ %.188, %marker_is_icc.exit99.thread ], [ %.188125, %.lr.ph129.preheader ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.188127, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !40
  %i.dk = icmp eq i8 %i.dj, -30
end_hunk_0
begin_hunk_1_@jpeg_read_icc_profile:bb.a
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fk = add i64 %3, %i.fh
  %i.fl = sub i64 %i.fk, %i.dq
  %diff.check = icmp ult i64 %i.fl, 32
  br i1 %diff.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
end_hunk_1
