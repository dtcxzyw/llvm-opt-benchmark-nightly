inline.NumInlined: 1
begin_hunk_0_@hsfc2d:bb.a

bb.b:                                             ; preds = %.preheader52, %bb.a
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
end_hunk_0
begin_hunk_1_@hsfc2d:bb.a
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.f, i1 false), !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.f
  %.161 = phi i32 [ 1, %.lr.ph62 ], [ %i.aj, %bb.f ] ; 5 uses
  %.sroa.6.060 = phi i8 [ 1, %.lr.ph62 ], [ %.sroa.6.1, %bb.f ] ; 4 uses
  %.sroa.0.059 = phi i8 [ 0, %.lr.ph62 ], [ %.sroa.0.1, %bb.f ] ; 4 uses
  %.04558 = phi i8 [ 0, %.lr.ph62 ], [ %.2, %bb.f ] ; 4 uses
  %i.g = sub nuw nsw i32 32, %.161                ; 2 uses
  %i.h = zext nneg i8 %.04558 to i32
  %i.i = load i32, ptr %0, align 4, !tbaa !4
end_hunk_1
begin_hunk_2_@hsfc2d:bb.a
  %.2 = phi i8 [ %.04558, %bb.c ], [ %i.ai, %bb.d ], [ %.04558, %bb.e ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.059, %bb.c ], [ %.sroa.6.060, %bb.d ], [ %.sroa.6.060, %bb.e ]
  %.sroa.6.1 = phi i8 [ %.sroa.6.060, %bb.c ], [ %.sroa.0.059, %bb.d ], [ %.sroa.0.059, %bb.e ]
  %i.aj = add nuw nsw i32 %.161, 1
  %exitcond = icmp eq i32 %.161, %i.b
  br i1 %exitcond, label %._crit_edge, label %bb.c, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.f, %bb.b
  ret void
}

end_hunk_2
begin_hunk_3_@hsfc3d:bb.a

bb.b:                                             ; preds = %.preheader81, %bb.a
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph92.preheader.a

.lr.ph92.preheader.a:                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
end_hunk_3
begin_hunk_4_@hsfc3d:bb.a
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.f, i1 false), !tbaa !4
  %narrow107 = add nuw nsw i8 %i.b, 1
  %3 = zext nneg i8 %narrow107 to i32
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader.a, %bb.j
  %.191 = phi i32 [ %i.ce, %bb.j ], [ 1, %.lr.ph92.preheader.a ] ; 3 uses
  %.sroa.26.090 = phi i8 [ %.sroa.26.1, %bb.j ], [ 4, %.lr.ph92.preheader.a ] ; 8 uses
  %.sroa.14.089 = phi i8 [ %.sroa.14.1, %bb.j ], [ 2, %.lr.ph92.preheader.a ] ; 8 uses
  %.sroa.0.088 = phi i8 [ %.sroa.0.1, %bb.j ], [ 0, %.lr.ph92.preheader.a ] ; 8 uses
  %i.g = sub nuw nsw i32 32, %.191                ; 3 uses
  %i.h = zext nneg i8 %.sroa.0.088 to i32         ; 2 uses
  %i.i = lshr i32 %i.h, 1
end_hunk_4
begin_hunk_5_@hsfc3d:bb.a
  %.sroa.14.1 = phi i8 [ %.sroa.14.089, %bb.h ], [ %.sroa.26.090, %bb.c ], [ %.sroa.14.089, %bb.d ], [ %i.bx, %bb.e ], [ %i.by, %bb.f ], [ %.sroa.14.089, %.lr.ph92 ], [ %i.ca, %bb.g ]
  %.sroa.26.1 = phi i8 [ %i.cd, %bb.h ], [ %.sroa.14.089, %bb.c ], [ %.sroa.26.090, %bb.d ], [ %.sroa.14.089, %bb.e ], [ %i.bz, %bb.f ], [ %.sroa.0.088, %.lr.ph92 ], [ %i.cb, %bb.g ]
  %i.ce = add nuw nsw i32 %.191, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.ce, %3
  br i1 %exitcond, label %._crit_edge, label %.lr.ph92, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.j, %bb.b
  ret void
}

end_hunk_5
begin_hunk_6_@fhsfc2d:bb.a

bb.b:                                             ; preds = %.preheader52.i, %bb.a
  %.not63.i = icmp eq i32 %1, 0
  br i1 %.not63.i, label %hsfc2d.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1
end_hunk_6
begin_hunk_7_@fhsfc2d:bb.a
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.m, i1 false), !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph62.i
  %.161.i = phi i32 [ 1, %.lr.ph62.i ], [ %i.ao, %bb.f ] ; 5 uses
  %.sroa.6.060.i = phi i8 [ 1, %.lr.ph62.i ], [ %.sroa.6.1.i, %bb.f ] ; 4 uses
  %.sroa.0.059.i = phi i8 [ 0, %.lr.ph62.i ], [ %.sroa.0.1.i, %bb.f ] ; 4 uses
  %.04558.i = phi i8 [ 0, %.lr.ph62.i ], [ %.2.i, %bb.f ] ; 4 uses
  %i.n = sub nuw nsw i32 32, %.161.i              ; 2 uses
  %i.o = zext nneg i8 %.04558.i to i32
  %i.p = lshr i32 %i.c, %i.n
end_hunk_7
begin_hunk_8_@fhsfc2d:bb.a
  %.2.i = phi i8 [ %.04558.i, %bb.c ], [ %i.an, %bb.d ], [ %.04558.i, %bb.e ]
  %.sroa.0.1.i = phi i8 [ %.sroa.0.059.i, %bb.c ], [ %.sroa.6.060.i, %bb.d ], [ %.sroa.6.060.i, %bb.e ]
  %.sroa.6.1.i = phi i8 [ %.sroa.6.060.i, %bb.c ], [ %.sroa.0.059.i, %bb.d ], [ %.sroa.0.059.i, %bb.e ]
  %i.ao = add nuw nsw i32 %.161.i, 1
  %exitcond.i = icmp eq i32 %.161.i, %i.i
  br i1 %exitcond.i, label %hsfc2d.exit, label %bb.c, !llvm.loop !9

hsfc2d.exit:                                      ; preds = %bb.f, %bb.b
  ret void
}

end_hunk_8
begin_hunk_9_@llvm.umin.i32
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_9
