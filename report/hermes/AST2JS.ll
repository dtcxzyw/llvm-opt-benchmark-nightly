begin_hunk_0
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  br i1 %.not77, label %bb.c, label %.thread122.sink.split134, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
end_hunk_0
begin_hunk_1
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = icmp samesign ult i32 %i.n, 128
  br i1 %i.q, label %.thread122, label %.critedge, !prof !172

bb.d:                                             ; preds = %bb.a
  %i.r = and i32 %i.e, 240
end_hunk_1
begin_hunk_2
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22    ; 2 uses
  %.not75 = icmp slt i8 %i.u, -64
  br i1 %.not75, label %bb.f, label %.thread122.sink.split134, !prof !72

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %.not76 = icmp slt i8 %i.w, -64
  br i1 %.not76, label %bb.g, label %.thread122.sink.split134, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
end_hunk_2
begin_hunk_3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ult i32 %i.ad, 2048
  br i1 %i.ah, label %.thread122, label %.critedge, !prof !172

.thread122.sink.split134:                         ; preds = %bb.e, %bb.f, %bb.b
  %.sink135 = phi ptr [ %i.h, %bb.b ], [ %i.t, %bb.e ], [ %i.v, %bb.f ]
  store ptr %.sink135, ptr %0, align 8, !tbaa !59
  br label %.thread122

.thread122:                                       ; preds = %.thread122.sink.split134, %bb.c, %bb.g
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.ai = and i32 %i.e, 248
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.q, %bb.n, %bb.l, %bb.j, %bb.c, %bb.g, %bb.p, %.thread122, %bb.r
  %.6 = phi i32 [ 65533, %bb.r ], [ 65533, %bb.o ], [ 65533, %.thread122 ], [ %i.bd, %bb.p ], [ %i.ag, %bb.g ], [ %i.p, %bb.c ], [ 65533, %bb.j ], [ 65533, %bb.l ], [ 65533, %bb.n ], [ 65533, %bb.q ]
  ret i32 %.6
}

end_hunk_4
