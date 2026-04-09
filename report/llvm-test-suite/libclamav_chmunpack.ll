inline.NumInlined: 27
inline.NumDeleted: 17
begin_hunk_0_@chm_unpack:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !37
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23, i32 noundef %i.cj) #12
  %i.ck = load i64, ptr %i.am, align 1, !tbaa !25 ; 2 uses
  %i.cl = load i32, ptr %i.cc, align 1, !tbaa !34 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load i32, ptr %i.bu, align 1            ; 3 uses
  %i.co = mul i32 %i.cn, %i.cl
  %narrow = select i1 %i.cm, i32 %i.co, i32 0
  %i.cp = zext i32 %narrow to i64
  %5 = add i64 %i.ck, %i.cp
  %.041 = add i64 %5, 84
  %i.cq = load i32, ptr %i.ce, align 1, !tbaa !35
  %reass.sub = sub i32 %i.cq, %i.cl
  %i.cr = add i32 %reass.sub, 1                   ; 2 uses
end_hunk_0
begin_hunk_1_@chm_unpack:bb.a
  %i.cu = load i32, ptr %i.cg, align 1, !tbaa !36
  %i.cv = mul i32 %i.cu, %i.cn
  %i.cw = zext i32 %i.cv to i64
  %6 = add i64 %i.ck, %i.cw
  %i.cx = add i64 %6, 84
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.cx, ptr %i.cy, align 1, !tbaa !27
  br label %bb.r
end_hunk_1
