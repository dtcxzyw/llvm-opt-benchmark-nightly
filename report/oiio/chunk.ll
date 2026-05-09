inline.NumInlined: 55
inline.NumDeleted: 12
begin_hunk_0_@exr_read_scanline_chunk_info:bb.a
bb.y:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !99
  %.not228 = icmp eq i8 %i.cg, 0                  ; 2 uses
  %i.ch = select i1 %.not228, i64 4, i64 8
  %i.ci = load i32, ptr %i.x, align 4, !tbaa !48
  %.not229 = icmp eq i32 %i.ci, 2
  %4 = select i1 %.not228, i64 8, i64 12
  %spec.select = select i1 %.not229, i64 %i.ch, i64 %4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.cl = call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %spec.select, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 0) #8 ; 2 uses
  %.not230 = icmp eq i32 %i.cl, 0
  br i1 %.not230, label %bb.z, label %bb.ax

end_hunk_0
begin_hunk_1_@extract_chunk_leader:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !99
  %.not = icmp eq i8 %i.j, 0                      ; 4 uses
  switch i32 %i.h, label %bb.d [
    i32 0, label %bb.b
    i32 2, label %bb.b
end_hunk_1
begin_hunk_2_@extract_chunk_leader:bb.a
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = select i1 %.not, i64 4, i64 8
  %.not92 = icmp eq i32 %i.h, 2
  %6 = select i1 %.not, i64 8, i64 12
  %spec.select97 = select i1 %.not92, i64 %i.k, i64 %6
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %. = select i1 %.not, i64 16, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.98 = select i1 %.not, i64 20, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.071 = phi i64 [ %.98, %bb.d ], [ %spec.select97, %bb.b ], [ %., %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.071, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0) #8 ; 2 uses
  %.not93 = icmp eq i32 %i.n, 0
  br i1 %.not93, label %bb.f, label %bb.y

end_hunk_2
