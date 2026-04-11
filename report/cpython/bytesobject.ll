inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@_Py_bytes_repr:bb.a

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %bb.t
  %.1105 = phi i64 [ %i.au, %bb.t ], [ 0, %_PyUnicode_DATA.exit ] ; 2 uses
  %.082104 = phi ptr [ %.183, %bb.t ], [ %i.x, %_PyUnicode_DATA.exit ] ; 18 uses
  %i.y = getelementptr i8, ptr %0, i64 %.1105
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 7 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_bytes_repr:bb.a
bb.l:                                             ; preds = %.lr.ph106
  %i.ad = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %4 = getelementptr i8, ptr %.082104, i64 2
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !14
  br label %bb.t

end_hunk_1
begin_hunk_2_@_Py_bytes_repr:bb.a
bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %5 = getelementptr i8, ptr %.082104, i64 2
  store i8 116, ptr %i.ae, align 1, !tbaa !14
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %6 = getelementptr i8, ptr %.082104, i64 2
  store i8 110, ptr %i.af, align 1, !tbaa !14
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %7 = getelementptr i8, ptr %.082104, i64 2
  store i8 114, ptr %i.ag, align 1, !tbaa !14
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.ah = add i8 %i.z, -127
  %or.cond15 = icmp ult i8 %i.ah, -95
  %8 = getelementptr i8, ptr %.082104, i64 1      ; 2 uses
  br i1 %or.cond15, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %i.ai = getelementptr i8, ptr %.082104, i64 2
  store i8 120, ptr %8, align 1, !tbaa !14
  %i.aj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !45
  %i.ak = lshr i32 %i.aa, 4
  %i.al = zext nneg i32 %i.ak to i64
end_hunk_2
begin_hunk_3_@_Py_bytes_repr:bb.a
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %9 = getelementptr i8, ptr %.082104, i64 4
  store i8 %i.at, ptr %i.ao, align 1, !tbaa !14
  br label %bb.t

end_hunk_3
begin_hunk_4_@_Py_bytes_repr:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.p, %bb.s, %bb.r, %bb.o, %bb.l
  %.183 = phi ptr [ %4, %bb.l ], [ %5, %bb.n ], [ %6, %bb.o ], [ %7, %bb.p ], [ %9, %bb.r ], [ %8, %bb.s ] ; 2 uses
  %i.au = add nuw nsw i64 %.1105, 1               ; 2 uses
  %exitcond111.not = icmp eq i64 %i.au, %1
  br i1 %exitcond111.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !78
end_hunk_4
