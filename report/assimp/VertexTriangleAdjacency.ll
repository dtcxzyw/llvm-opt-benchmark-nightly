inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi ptr [ %i.ao, %bb.b ], [ %i.at, %bb.c ] ; 7 uses
  %.057 = phi ptr [ %i.ai, %bb.b ], [ %i.at, %bb.c ] ; 6 uses
  store ptr %i.ax, ptr %0, align 8
  %i.ay = zext i32 %.197 to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb:bb.a
  %niter136.ncmp.7 = icmp eq i64 %niter136.next.7, %unroll_iter135
  br i1 %niter136.ncmp.7, label %._crit_edge116.unr-lcssa, label %.lr.ph115, !llvm.loop !8

._crit_edge123.loopexit:                          ; preds = %.thread101
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %._crit_edge116
  %5 = phi ptr [ %.pre, %._crit_edge123.loopexit ], [ %i.ax, %._crit_edge116 ]
  %i.dm = getelementptr inbounds i8, ptr %5, i64 -4 ; 2 uses
  store ptr %i.dm, ptr %0, align 8
  store i32 0, ptr %i.dm, align 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp23VertexTriangleAdjacencyC2EP6aiFacejjb:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %.058120, i64 16 ; 2 uses
  %i.es = add nuw i32 %.1119, 1
  %.not66 = icmp eq ptr %i.er, %i.b
  br i1 %.not66, label %._crit_edge123.loopexit, label %.lr.ph122, !llvm.loop !9
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_2
