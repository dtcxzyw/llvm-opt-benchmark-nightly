inline.NumInlined: 3053
inline.NumDeleted: 1337
begin_hunk_0_@_ZNK6hermes2vm7HadesGC6OldGen13getMemorySizeEv:bb.a
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load ptr, ptr %1, align 8, !tbaa !205
  %3 = load ptr, ptr %i.b, align 8, !tbaa !120
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = shl i64 %i.l, 9
  %7 = add i64 %i.p, %4
  %8 = add i64 %i.q, %5
  %i.r = sub i64 %7, %8
  %9 = add i64 %i.r, %6
  %10 = and i64 %9, -32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm7HadesGC6OldGen13getMemorySizeEv:bb.a
  %i.as = sdiv exact i64 %i.ar, 6408
  %i.at = add nsw i64 %i.al, %i.as
  %i.au = mul i64 %i.at, 6408
  %i.av = add i64 %i.au, %10
  ret i64 %i.av
}

end_hunk_1
