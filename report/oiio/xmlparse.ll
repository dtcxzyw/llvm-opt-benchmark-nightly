begin_hunk_0
  %92 = ptrtoint ptr %19 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32                      ; 2 uses
  %96 = icmp eq i32 %95, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %96
  %97 = select i1 %or.cond, i32 1024, i32 %95
  br label %98

end_hunk_0
