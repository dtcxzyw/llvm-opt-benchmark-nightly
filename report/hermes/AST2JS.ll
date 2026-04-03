begin_hunk_0
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  br i1 %.not77, label %bb.c, label %7, !prof !72

7:                                                ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8, !tbaa !59
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
end_hunk_0
begin_hunk_1
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = icmp samesign ult i32 %i.n, 128
  br i1 %i.q, label %.thread, label %.critedge, !prof !172

.thread:                                          ; preds = %bb.g, %7, %bb.c
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.r = and i32 %i.e, 240
end_hunk_1
begin_hunk_2
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22    ; 2 uses
  %.not75 = icmp slt i8 %i.u, -64
  br i1 %.not75, label %bb.f, label %8, !prof !72

8:                                                ; preds = %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !59
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %.not76 = icmp slt i8 %i.w, -64
  br i1 %.not76, label %bb.g, label %9, !prof !72

9:                                                ; preds = %bb.f
  store ptr %i.v, ptr %0, align 8, !tbaa !59
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
end_hunk_2
begin_hunk_3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ult i32 %i.ad, 2048
  br i1 %i.ah, label %.thread, label %.critedge, !prof !172

bb.h:                                             ; preds = %bb.d
  %i.ai = and i32 %i.e, 248
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.thread, %bb.c, %bb.j, %bb.l, %bb.n, %bb.q, %8, %9, %bb.g, %bb.p, %bb.r
  %.6 = phi i32 [ 65533, %bb.r ], [ 65533, %bb.l ], [ 65533, %bb.j ], [ 65533, %8 ], [ %i.ag, %bb.g ], [ %i.bd, %bb.p ], [ 65533, %bb.o ], [ 65533, %9 ], [ 65533, %bb.q ], [ %i.p, %bb.c ], [ 65533, %bb.n ], [ 65533, %.thread ]
  ret i32 %.6
}

end_hunk_4
