inline.NumInlined: 125
inline.NumDeleted: 23
begin_hunk_0_@ebRemove:bb.a
  %i.p = tail call ptr %i.o(ptr noundef nonnull %i.n) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 6 ; 2 uses
  %5 = load i16, ptr %4, align 2
  %6 = add i16 %i.r, 248
  %i.s = and i16 %6, 248
  %i.t = and i16 %5, -251
  %i.u = or disjoint i16 %i.t, %i.s
  %i.v = or disjoint i16 %i.u, 2
  store i16 %i.v, ptr %4, align 2
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = or i64 %i.w, 1
  %i.y = inttoptr i64 %i.x to ptr
end_hunk_0
