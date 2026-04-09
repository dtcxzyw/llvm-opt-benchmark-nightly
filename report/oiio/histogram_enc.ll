inline.NumInlined: 117
inline.NumDeleted: 52
begin_hunk_0_@VP8LAllocateHistogramSet:bb.a
  br i1 %i.o, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = zext nneg i32 %0 to i64                  ; 6 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  %i.s = add nsw i64 %i.p, -1                     ; 2 uses
end_hunk_0
begin_hunk_1_@VP8LAllocateHistogramSet:bb.a
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.unr-lcssa, %.epil.preheader
  %xtraiter27 = and i64 %i.p, 1
  %i.ay = icmp eq i64 %i.s, 0
  br i1 %i.ay, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter30 = and i64 %i.p, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_1
