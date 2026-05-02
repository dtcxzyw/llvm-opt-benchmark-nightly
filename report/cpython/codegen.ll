inline.NumInlined: 724
inline.NumDeleted: 94
begin_hunk_0_@unpack_helper:bb.a

.outer:                                           ; preds = %.thread60, %.lr.ph
  %.03454.ph = phi i64 [ %i.x, %.thread60 ], [ 0, %.lr.ph ]
  %i.d = phi i1 [ false, %.thread60 ], [ true, %.lr.ph ]
  %i.e = phi i1 [ true, %.thread60 ], [ false, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.j
end_hunk_0
begin_hunk_1_@unpack_helper:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = icmp ne i32 %i.h, 25
  %or.cond = or i1 %i.i, %i.e
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@unpack_helper:bb.a
  br i1 %exitcond.not62, label %._crit_edge.thread64, label %.outer, !llvm.loop !319

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.d, label %._crit_edge.thread, label %._crit_edge.thread64

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.b, %bb.b ], [ 0, %bb.a ]
end_hunk_2
