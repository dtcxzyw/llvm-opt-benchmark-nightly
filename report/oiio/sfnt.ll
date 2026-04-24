inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_face_get_colorline_stops:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !520
  %.not54 = icmp eq i8 %i.k, 0                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !521  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
end_hunk_0
begin_hunk_1_@tt_face_get_colorline_stops:bb.a
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.a = select i1 %.not54, i32 6, i32 10
  %spec.select = select i1 %.not54, i64 -6, i64 -10
  %i.q = xor i32 %i.h, -1
  %i.r = add i32 %i.i, %i.q
  %i.s = mul i32 %spec.select.a, %i.r
end_hunk_1
begin_hunk_2_@tt_face_get_colorline_stops:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !493
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %spec.select
  %i.z = icmp ugt ptr %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.f

end_hunk_2
