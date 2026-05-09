inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@mz_inflate:bb.a
bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8392
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp sgt i32 %i.h, 0                     ; 3 uses
  %spec.select = select i1 %i.i, i32 9, i32 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8384 ; 2 uses
end_hunk_0
begin_hunk_1_@mz_inflate:bb.a
  br i1 %or.cond7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %2 = select i1 %i.i, i32 13, i32 12
  %i.x = load i32, ptr %i.j, align 8
  %i.y = zext i32 %i.x to i64
  store i64 %i.y, ptr %i.a, align 8
end_hunk_1
begin_hunk_2_@mz_inflate:bb.a
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %3 = select i1 %i.i, i32 11, i32 10
  %spec.select140 = select i1 %i.f, i32 %3, i32 %spec.select
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8380 ; 6 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
end_hunk_2
begin_hunk_3_@mz_zip_writer_add_read_buf_callback:bb.a
  %spec.store.select = select i1 %i.l, i32 6, i32 %8 ; 4 uses
  %i.m = and i32 %spec.store.select, 15           ; 2 uses
  %i.n = and i32 %spec.store.select, 131072
  %.not = icmp eq i32 %i.n, 0                     ; 4 uses
  %i.o = select i1 %.not, i16 8, i16 0
  %i.p = and i32 %spec.store.select, 65536
  %.not364 = icmp eq i32 %i.p, 0
  %15 = select i1 %.not, i16 2056, i16 2048
  %spec.select = select i1 %.not364, i16 %15, i16 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
end_hunk_3
