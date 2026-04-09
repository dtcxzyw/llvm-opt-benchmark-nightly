inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@parseVector:bb.a
  br label %bb.s

.critedge:                                        ; preds = %.thread, %bb.a, %bb.c, %bb.b
  %.173 = phi i32 [ 2, %bb.c ], [ 4, %.thread ], [ 2, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %.163 = phi i32 [ %2, %bb.c ], [ %i.e, %.thread ], [ %2, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.u = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.v = sext i32 %.163 to i64
end_hunk_0
begin_hunk_1_@parseVector:bb.a
  br i1 %.not99, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.476.a, ptr %5, align 4, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %.thread110, %.thread104, %bb.e, %bb.f, %bb.k, %bb.j, %bb.r, %bb.q
end_hunk_1
begin_hunk_2_@VADD_RedisCommand:bb.a
  br label %.thread232

bb.e:                                             ; preds = %bb.c
  %3 = add nsw i32 %2, -2
  %4 = load i32, ptr %i.c, align 4, !tbaa !9      ; 4 uses
  %.not188 = icmp sgt i32 %3, %4
  br i1 %.not188, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
end_hunk_2
begin_hunk_3_@VADD_RedisCommand:bb.a
  br label %.thread232

bb.g:                                             ; preds = %bb.e
  %i.q = add nsw i32 %4, 3                        ; 2 uses
  %.not196265 = icmp slt i32 %i.q, %2
  br i1 %.not196265, label %.lr.ph, label %._crit_edge

end_hunk_3
begin_hunk_4_@VADD_RedisCommand:bb.a
  br label %.thread232

bb.z:                                             ; preds = %._crit_edge
  %i.cf = sext i32 %4 to i64
  %i.cg = getelementptr [8 x i8], ptr %1, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !115
end_hunk_4
begin_hunk_5_@VADD_RedisCommand:bb.a
  br label %.critedge

bb.ae:                                            ; preds = %bb.x
  %i.dq = sext i32 %4 to i64
  %i.dr = getelementptr [8 x i8], ptr %1, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !115 ; 7 uses
end_hunk_5
begin_hunk_6_@VSIM_execute:bb.a
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %11 = add i64 %5, 1
  %i.cu = add i64 %11, %6
  %i.cv = load ptr, ptr @RedisModule_ReplySetArrayLength, align 8, !tbaa !13
  %sext.a = shl i64 %i.cu, 32
  %i.cw = ashr exact i64 %sext.a, 32
  %i.cx = mul nsw i64 %.086.lcssa, %i.cw
  tail call void %i.cv(ptr noundef %0, i64 noundef %i.cx) #24
  br label %bb.r
end_hunk_6
