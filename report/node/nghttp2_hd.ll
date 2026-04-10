inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@nghttp2_hd_deflate_hd_bufs:bb.a
  %i.fw = load i32, ptr %i.aw, align 8, !tbaa !45
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.i3134.i.ph.i, i64 72
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !99
  %i.fz = add i32 %i.fw, 60
  %5 = sub i32 %i.fz, %i.fy
  %i.ga = zext i32 %5 to i64
  br label %search_hd_table.exit.thread93.i

search_hd_table.exit.i:                           ; preds = %bb.af
  %i.gb = load i32, ptr %i.aw, align 8, !tbaa !45
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 72
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !99
  %i.ge = add i32 %i.gb, 60
  %6 = sub i32 %i.ge, %i.gd
  %i.gf = zext i32 %6 to i64
  br label %search_hd_table.exit.thread.i

search_hd_table.exit.thread93.i:                  ; preds = %bb.ad, %search_hd_table.exit.thread148.i
end_hunk_0
