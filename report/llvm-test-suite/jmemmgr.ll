inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@alloc_barray:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %4 = shl nuw nsw i64 %i.c, 7                    ; 2 uses
  %5 = udiv i64 999999976, %4
  %i.d = icmp ugt i32 %2, 7812499
  br i1 %i.d, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@alloc_barray:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %.03741 = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.h)
  %.037 = trunc nuw nsw i64 %.03741 to i32        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 %.037, ptr %i.i, align 8, !tbaa !47
  %i.j = shl nuw nsw i64 %i.h, 3
end_hunk_1
begin_hunk_2_@alloc_barray:bb.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c
  %or.cond.i = icmp ugt i32 %1, 1
  %i.l = sext i32 %1 to i64
  br label %bb.d
end_hunk_2
begin_hunk_3_@alloc_barray:bb.a
  %i.n = sub nuw i32 %3, %.03647
  %i.o = tail call i32 @llvm.umin.i32(i32 %.13846, i32 %i.n) ; 7 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = mul i64 %4, %i.p                         ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.s = icmp ugt i64 %i.q, 999999976
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_3
