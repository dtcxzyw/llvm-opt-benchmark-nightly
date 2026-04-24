inline.NumInlined: 42
inline.NumDeleted: 31
begin_hunk_0_@_upb_DefBuilder_CheckIdentSlow:bb.a
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !41

._crit_edge:                                      ; preds = %upb_isalphanum.exit.thread
  %4 = trunc nuw i8 %.1 to i1
  br i1 %4, label %._crit_edge.thread51, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %upb_isalphanum.exit.thread
  %.033 = phi i8 [ %.1, %upb_isalphanum.exit.thread ], [ 1, %.lr.ph ]
  %.02432 = phi i64 [ %i.af, %upb_isalphanum.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.02432
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20    ; 4 uses
  %i.u = icmp eq i8 %i.t, 46
  %5 = trunc nuw i8 %.033 to i1                   ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  br i1 %5, label %.split37.us, label %upb_isalphanum.exit.thread

.split37.us:                                      ; preds = %.lr.ph.split.us, %bb.d, %.lr.ph.split.us.preheader
  %i.v = trunc i64 %2 to i32
end_hunk_0
begin_hunk_1_@_upb_DefBuilder_CheckIdentSlow:bb.a
  %i.y = icmp ult i8 %i.x, 26
  %i.z = icmp eq i8 %i.t, 95
  %i.aa = or i1 %i.z, %i.y                        ; 2 uses
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.aa, label %upb_isalphanum.exit.thread, label %.split35.us
end_hunk_1
begin_hunk_2_@_upb_DefBuilder_CheckIdentSlow:bb.a
  unreachable

upb_isalphanum.exit.thread:                       ; preds = %bb.g, %bb.f, %bb.d
  %.1 = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 0, %bb.f ] ; 2 uses
  %i.af = add nuw i64 %.02432, 1                  ; 2 uses
  %exitcond44.not = icmp eq i64 %i.af, %2
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !43
end_hunk_2
