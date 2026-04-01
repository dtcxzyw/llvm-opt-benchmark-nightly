begin_hunk_0
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i.i51 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i51, label %.noexc56, label %bb.h

end_hunk_0
