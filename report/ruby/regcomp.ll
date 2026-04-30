inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@noname_disable_map:bb.a

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %2, align 4, !tbaa !7
  %i.r = add i32 %i.q, 1                          ; 3 uses
  store i32 %i.r, ptr %2, align 4, !tbaa !7
  %i.s = getelementptr i8, ptr %i.a, i64 12       ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !180
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %1, i64 %i.u
  store i32 %i.r, ptr %i.v, align 4, !tbaa !119
  store i32 %i.r, ptr %i.s, align 4, !tbaa !180
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
end_hunk_0
