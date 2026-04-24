inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@_Py_bytes_repr
define hidden ptr @_Py_bytes_repr(ptr noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.081101 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_bytes_repr:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.c, %bb.b
  %.190 = phi i64 [ %.08998, %.lr.ph ], [ %.08998, %bb.d ], [ %i.d, %bb.b ], [ %.08998, %bb.c ], [ %.08998, %.lr.ph ], [ %.08998, %.lr.ph ], [ %.08998, %.lr.ph ] ; 2 uses
  %.188 = phi i64 [ %.08799, %.lr.ph ], [ %.08799, %bb.d ], [ %.08799, %bb.b ], [ %i.e, %bb.c ], [ %.08799, %.lr.ph ], [ %.08799, %.lr.ph ], [ %.08799, %.lr.ph ] ; 2 uses
  %.080 = phi i64 [ 2, %.lr.ph ], [ %spec.select, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %.lr.ph ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.g = xor i64 %.080, 9223372036854775807
end_hunk_1
begin_hunk_2_@_Py_bytes_repr:bb.a
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %.080, %.085100                  ; 2 uses
  %i.j = add nuw nsw i64 %.081101, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %bb.f
  %4 = icmp eq i64 %.188, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.089.lcssa = phi i64 [ 0, %bb.a ], [ %.190, %._crit_edge.loopexit ] ; 3 uses
  %.087.lcssa = phi i1 [ true, %bb.a ], [ %4, %._crit_edge.loopexit ]
  %.085.lcssa = phi i64 [ 3, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 3 uses
  %i.k = icmp ne i32 %2, 0
  %i.l = icmp ne i64 %.089.lcssa, 0               ; 2 uses
  %or.cond4 = and i1 %i.k, %i.l
  %or.cond6.not = select i1 %or.cond4, i1 %.087.lcssa, i1 false ; 3 uses
  %spec.select94 = select i1 %or.cond6.not, i32 34, i32 39
  %spec.select94.a = select i1 %or.cond6.not, i8 34, i8 39 ; 2 uses
  %or.cond9 = xor i1 %i.l, %or.cond6.not
  br i1 %or.cond9, label %bb.g, label %.._crit_edge_crit_edge

bb.g:                                             ; preds = %._crit_edge
  %i.m = sub i64 9223372036854775807, %.089.lcssa
  %i.n = icmp sgt i64 %.085.lcssa, %i.m
  br i1 %i.n, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %.085.lcssa, %.089.lcssa
  br label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.h, %._crit_edge
  %.2 = phi i64 [ %i.o, %bb.h ], [ %.085.lcssa, %._crit_edge ]
  %i.p = tail call ptr @PyUnicode_New(i64 noundef %.2, i32 noundef 127) #21 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.u, label %bb.i
end_hunk_2
begin_hunk_3_@_Py_bytes_repr:bb.a
  %i.v = getelementptr i8, ptr %.0.i, i64 1
  store i8 98, ptr %.0.i, align 1, !tbaa !14
  %i.w = getelementptr i8, ptr %.0.i, i64 2       ; 2 uses
  store i8 %spec.select94.a, ptr %i.v, align 1, !tbaa !14
  br i1 %i.a, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %bb.t
  %.1105 = phi i64 [ %i.az, %bb.t ], [ 0, %_PyUnicode_DATA.exit ] ; 2 uses
  %.082104 = phi ptr [ %.183, %bb.t ], [ %i.w, %_PyUnicode_DATA.exit ] ; 18 uses
  %i.x = getelementptr i8, ptr %0, i64 %.1105
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14    ; 6 uses
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = icmp eq i32 %spec.select94, %i.z
  %i.ab = icmp eq i8 %i.y, 92
  %or.cond12 = or i1 %i.ab, %i.aa
  br i1 %or.cond12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph106
end_hunk_3
begin_hunk_4_@_Py_bytes_repr:bb.a

._crit_edge107:                                   ; preds = %bb.t, %_PyUnicode_DATA.exit
  %.082.lcssa = phi ptr [ %i.w, %_PyUnicode_DATA.exit ], [ %.183, %bb.t ]
  store i8 %spec.select94.a, ptr %.082.lcssa, align 1, !tbaa !14
  br label %bb.u

.loopexit:                                        ; preds = %bb.e, %bb.g
end_hunk_4
