inline.NumInlined: 55
inline.NumDeleted: 13
begin_hunk_0_@rev_init:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph
  %i.ao = sub nsw i32 %i.d, %.                    ; 9 uses
  store i32 %i.ao, ptr %i.e, align 4, !tbaa !122
  %i.ap = icmp ugt i32 %i.ak, 32
  br i1 %i.ap, label %rev_read.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %4 = icmp sgt i32 %i.ao, 3
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@rev_init:bb.a
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %5 = icmp sgt i32 %i.ao, 0
  br i1 %5, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.d
  %i.at = add nsw i32 %3, -3
end_hunk_1
begin_hunk_2_@rev_init:bb.a
  br i1 %i.au, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.ao, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
end_hunk_2
