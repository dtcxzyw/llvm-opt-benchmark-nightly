inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@mz_inflate:bb.a
bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 11016
  %i.h = load i32, ptr %i.g, align 8, !tbaa !71
  %i.i = icmp sgt i32 %i.h, 0                     ; 3 uses
  %spec.select = select i1 %i.i, i32 9, i32 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 11008 ; 2 uses
end_hunk_0
begin_hunk_1_@mz_inflate:bb.a
  br i1 %or.cond7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %2 = select i1 %i.i, i32 13, i32 12
  %i.x = zext i32 %i.k to i64
  store i64 %i.x, ptr %i.a, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
end_hunk_1
begin_hunk_2_@mz_inflate:bb.a
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %3 = select i1 %i.i, i32 11, i32 10
  %spec.select140 = select i1 %i.f, i32 %3, i32 %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 11004 ; 6 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !76 ; 2 uses
end_hunk_2
