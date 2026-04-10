inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@nghttp2_hd_deflate_hd_bufs:bb.a
  %i.fw = load i32, ptr %i.aw, align 8, !tbaa !45
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.i3134.i.ph.i, i64 72
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !99
  %5 = xor i32 %i.fy, -1
  %i.fz = add i32 %i.fw, 61
  %6 = add i32 %i.fz, %5
  %i.ga = zext i32 %6 to i64
  br label %search_hd_table.exit.thread93.i

search_hd_table.exit.i:                           ; preds = %bb.af
  %i.gb = load i32, ptr %i.aw, align 8, !tbaa !45
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 72
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !99
  %7 = xor i32 %i.gd, -1
  %i.ge = add i32 %i.gb, 61
  %8 = add i32 %i.ge, %7
  %i.gf = zext i32 %8 to i64
  br label %search_hd_table.exit.thread.i

search_hd_table.exit.thread93.i:                  ; preds = %bb.ad, %search_hd_table.exit.thread148.i
end_hunk_0
