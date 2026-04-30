inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0_@debug_info_reader_read_value:bb.a
  br label %bb.bx

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 2        ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !64
  %.val.i = load i16, ptr %i.n, align 1
  %i.p = zext i16 %.val.i to i64                  ; 2 uses
end_hunk_0
begin_hunk_1_@debug_info_reader_read_value:bb.a
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  %i.r = getelementptr i8, ptr %2, i64 40
  store i32 2, ptr %i.r, align 8, !tbaa !116
  %i.s = getelementptr i8, ptr %i.o, i64 %i.p
  store ptr %i.s, ptr %i.m, align 8, !tbaa !81
  br label %bb.bx

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4        ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !64
  %.val.i.i = load i32, ptr %i.u, align 1
  %i.w = zext i32 %.val.i.i to i64                ; 2 uses
end_hunk_1
begin_hunk_2_@debug_info_reader_read_value:bb.a
  store ptr %i.v, ptr %2, align 8, !tbaa !14
  %i.y = getelementptr i8, ptr %2, i64 40
  store i32 2, ptr %i.y, align 8, !tbaa !116
  %i.z = getelementptr i8, ptr %i.v, i64 %i.w
  store ptr %i.z, ptr %i.t, align 8, !tbaa !81
  br label %bb.bx

end_hunk_2
begin_hunk_3_@debug_info_reader_read_value:bb.a
  br label %bb.bx

bb.l:                                             ; preds = %bb.a
  %i.bs = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !64 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 1      ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !64
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bw = zext i8 %i.bv to i64                    ; 2 uses
end_hunk_3
begin_hunk_4_@debug_info_reader_read_value:bb.a
  store ptr %i.bu, ptr %2, align 8, !tbaa !14
  %i.by = getelementptr i8, ptr %2, i64 40
  store i32 2, ptr %i.by, align 8, !tbaa !116
  %i.bz = getelementptr i8, ptr %i.bu, i64 %i.bw
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !81
  br label %bb.bx

end_hunk_4
