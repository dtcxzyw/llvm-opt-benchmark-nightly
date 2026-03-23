begin_hunk_0
  %92 = ptrtoint ptr %19 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %.fr179 = freeze i64 %94
  %95 = trunc i64 %.fr179 to i32                  ; 2 uses
  %96 = icmp eq i32 %95, 0
  %or.cond = or i1 %brmerge, %96
  %97 = select i1 %or.cond, i32 1024, i32 %95
  br label %98

end_hunk_0
