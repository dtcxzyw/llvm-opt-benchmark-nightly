inline.NumInlined: 3053
inline.NumDeleted: 1337
begin_hunk_0_@_ZNK6hermes2vm7HadesGC6OldGen13getMemorySizeEv:bb.a
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %1 = shl i64 %i.l, 9
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %2 = sub i64 %i.p, %i.q
  %3 = and i64 %2, -32
  %4 = add i64 %1, %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = load ptr, ptr %i.b, align 8, !tbaa !120
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %i.r = sub i64 %8, %9
  %10 = and i64 %i.r, -32
  %11 = add i64 %4, %10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm7HadesGC6OldGen13getMemorySizeEv:bb.a
  %i.as = sdiv exact i64 %i.ar, 6408
  %i.at = add nsw i64 %i.al, %i.as
  %i.au = mul i64 %i.at, 6408
  %i.av = add i64 %11, %i.au
  ret i64 %i.av
}

end_hunk_1
