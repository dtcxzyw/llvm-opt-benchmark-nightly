inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_call_ex:bb.a
  %i.b = icmp ne i32 %4, 0
  %or.cond = or i1 %i.b, %i.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.not.i64 = icmp eq i32 %1, 0                   ; 2 uses
  %i.d = select i1 %.not.i64, i16 1, i16 4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.not13.i65 = icmp eq i32 %4, 0
  %9 = select i1 %.not.i64, i16 9, i16 12
  %spec.select.i66 = select i1 %.not13.i65, i16 %i.d, i16 %9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.not61 = icmp eq ptr %5, null                  ; 7 uses
end_hunk_0
