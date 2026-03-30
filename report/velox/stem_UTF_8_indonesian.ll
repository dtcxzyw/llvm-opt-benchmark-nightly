begin_hunk_0
  store i32 %i.bp, ptr %i.v, align 8, !tbaa !15
  %i.bu = load i32, ptr %i.w, align 4, !tbaa !16
  store i32 %i.bu, ptr %i.d, align 8, !tbaa !14
  %i.bv = tail call fastcc i32 @r_remove_suffix(ptr noundef nonnull %0) ; 6 uses
  %1 = icmp slt i32 %i.bv, 0                      ; 2 uses
  %.lobit197 = lshr i32 %i.bv, 31                 ; 2 uses
  %cond7 = icmp sgt i32 %i.bv, 0
  %.3 = select i1 %1, i32 %i.bv, i32 %.1.i.ph
  br i1 %cond7, label %.thread162, label %bb.q

.thread162:                                       ; preds = %bb.p
end_hunk_0
begin_hunk_1

bb.q:                                             ; preds = %bb.p
  %.not192 = icmp eq i32 %i.bv, 0
  %.7121 = select i1 %.not192, i32 6, i32 %.lobit197
  switch i32 %.7121, label %2 [
    i32 0, label %bb.r
    i32 6, label %.thread178
  ]
end_hunk_1
begin_hunk_2
  %.not206 = icmp sgt i32 %i.ca, -1
  br i1 %.not206, label %.thread178, label %.thread174

2:                                                ; preds = %bb.q
  br i1 %1, label %.thread174, label %.thread178

.thread178:                                       ; preds = %bb.o, %bb.s, %bb.r, %bb.q, %2
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !14
  br label %r_remove_particle.exit

.thread174:                                       ; preds = %bb.s, %2, %bb.n
  %.11125 = phi i32 [ %.6120, %bb.n ], [ %.lobit197, %2 ], [ %.lobit.a, %bb.s ] ; 2 uses
  %.8 = phi i32 [ %.2, %bb.n ], [ %i.bv, %2 ], [ %.5, %bb.s ] ; 2 uses
  switch i32 %.11125, label %.critedge [
    i32 0, label %r_remove_particle.exit
    i32 5, label %bb.t
end_hunk_2
