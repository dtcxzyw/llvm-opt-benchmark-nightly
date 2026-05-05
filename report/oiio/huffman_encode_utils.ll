inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@VP8LCreateHuffmanTree:bb.a
  br i1 %i.n, label %OptimizeHuffmanForRle.exit.loopexit175, label %.lr.ph

.lr.ph138.preheader.i:                            ; preds = %.lr.ph
  %.0100124.i30.lcssa = phi i32 [ %tmp, %.lr.ph ] ; 2 uses
  %.lcssa187 = phi i64 [ %lsr.iv, %.lr.ph ]       ; 2 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  %i.p = add nuw i32 %.0100124.i30.lcssa, 1
  %wide.trip.count.i = zext i32 %i.p to i64
  %i.q = zext i32 %lsr.iv198 to i64
  %scevgep200 = getelementptr i8, ptr %2, i64 -1
  br label %.lr.ph138.i

end_hunk_0
begin_hunk_1_@VP8LCreateHuffmanTree:bb.a
  %indvar.i = phi i64 [ 0, %.lr.ph138.preheader.i ], [ %indvar.next.i, %bb.g ] ; 5 uses
  %.094136.i = phi i32 [ 0, %.lr.ph138.preheader.i ], [ %.195.i, %bb.g ] ; 5 uses
  %.096134.i = phi i32 [ %i.o, %.lr.ph138.preheader.i ], [ %.197.i, %bb.g ] ; 5 uses
  %i.r = icmp eq i64 %lsr.iv, %indvar.i           ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph138.i
end_hunk_1
begin_hunk_2_@VP8LCreateHuffmanTree:bb.a

.lr.ph121.us.i:                                   ; preds = %.lr.ph121.us.i.preheader, %bb.ab
  %lsr.iv232 = phi ptr [ %3, %.lr.ph121.us.i.preheader ], [ %scevgep233.a, %bb.ab ] ; 2 uses
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.ab ], [ 0, %.lr.ph121.us.i.preheader ] ; 2 uses
  %i.fm = load i32, ptr %lsr.iv232, align 4, !tbaa !37
  %.not107.us.i = icmp ugt i32 %i.fm, %i.fk
  br i1 %.not107.us.i, label %bb.ab, label %.lr.ph121.us.i.._crit_edge122.us.loopexit.i_crit_edge

._crit_edge122.us.loopexit.isplit:                ; preds = %bb.ab
  br label %._crit_edge122.us.loopexit.i

.lr.ph121.us.i.._crit_edge122.us.loopexit.i_crit_edge: ; preds = %.lr.ph121.us.i
  %indvars.iv180.i.lcssa.a = phi i64 [ %indvars.iv180.i, %.lr.ph121.us.i ]
  br label %._crit_edge122.us.loopexit.i

._crit_edge122.us.loopexit.i:                     ; preds = %._crit_edge122.us.loopexit.isplit, %.lr.ph121.us.i.._crit_edge122.us.loopexit.i_crit_edge
  %.092.lcssa.us.ph.in.i = phi i64 [ %indvars.iv180.i.lcssa.a, %.lr.ph121.us.i.._crit_edge122.us.loopexit.i_crit_edge ], [ %indvars.iv187.i, %._crit_edge122.us.loopexit.isplit ]
  %.092.lcssa.us.ph.i = trunc i64 %.092.lcssa.us.ph.in.i to i32
  br label %._crit_edge122.us.i

end_hunk_2
