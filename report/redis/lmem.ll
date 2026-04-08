inline.NumInlined: 2
begin_hunk_0_@luaM_growaux_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = tail call ptr %i.o(ptr noundef %i.q, ptr noundef %1, i64 noundef %i.i, i64 noundef %i.k) #3 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.t, %i.s
end_hunk_0
begin_hunk_1_@luaM_growaux_:bb.a

luaM_realloc_.exit:                               ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %i.w = sub i64 %i.k, %i.i
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.u, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@luaM_realloc_:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = sub i64 %3, %2
  %i.m = add i64 %i.l, %i.k
  store i64 %i.m, ptr %i.j, align 8, !tbaa !30
  ret ptr %i.g
}

end_hunk_2
begin_hunk_3_@llvm.smax.i32
!27 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!28 = !{!"UpVal", !10, i64 0, !6, i64 8, !6, i64 9, !12, i64 16, !6, i64 24}
!29 = !{!21, !11, i64 24}
!30 = !{!21, !19, i64 120}
end_hunk_3
