begin_hunk_0
  %92 = ptrtoint ptr %19 to i64                   ; [#uses=1 type=i64]
  %93 = ptrtoint ptr %90 to i64                   ; [#uses=1 type=i64]
  %94 = sub i64 %92, %93                          ; [#uses=1 type=i64]
  %.fr179 = freeze i64 %94                        ; [#uses=1 type=i64]
  %95 = trunc i64 %.fr179 to i32                  ; [#uses=2 type=i32]
  %96 = icmp eq i32 %95, 0                        ; [#uses=1 type=i1]
  %or.cond = or i1 %brmerge, %96                  ; [#uses=1 type=i1]
  %97 = select i1 %or.cond, i32 1024, i32 %95     ; [#uses=1 type=i32]
  br label %98

end_hunk_0
