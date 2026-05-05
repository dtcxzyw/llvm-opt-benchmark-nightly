inline.NumInlined: 68
inline.NumDeleted: 44
begin_hunk_0_@_upb_OneofDefs_New:bb.a
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.n, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__OneofOptions_msg_init, i64 8), align 8
end_hunk_0
begin_hunk_1_@_upb_OneofDefs_New:bb.a
  ret ptr %.0.i37

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %lsr.iv = phi ptr [ %.0.i.ph, %.lr.ph ], [ %scevgep, %bb.f ] ; 13 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.u = shl i64 %indvars.iv, 3
  %scevgep81 = getelementptr i8, ptr %2, i64 %i.u
  %i.v = load ptr, ptr %scevgep81, align 8, !tbaa !48 ; 4 uses
  %5 = getelementptr inbounds nuw [104 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !50
  %i.y = and i8 %i.x, 2
end_hunk_1
begin_hunk_2_@_upb_OneofDefs_New:bb.a
  br i1 %.not10.i.i, label %bb.m, label %._crit_edge73

split.a:                                          ; preds = %upb_Arena_Malloc.exit.i.i.i.i
  %lsr.iv.lcssa82 = phi ptr [ %5, %upb_Arena_Malloc.exit.i.i.i.i ]
  br label %bb.l

._crit_edge73:                                    ; preds = %bb.k
  %lsr.iv.lcssa83 = phi ptr [ %lsr.iv, %bb.k ]
  %split = phi ptr [ %5, %bb.k ]                  ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %split.a, %._crit_edge73
end_hunk_2
