inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_expand_path_internal:bb.a
  %i.gn = ptrtoint ptr %.6 to i64                 ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ptrtoint ptr %.7263 to i64
  %i.gq = sub i64 %i.gp, %i.gn                    ; 2 uses
  %i.gr = add i64 %i.gq, 1                        ; 2 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.gr) #23
  %i.gs = ptrtoint ptr %.4 to i64
  %i.gt = ptrtoint ptr %.1248 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = add i64 %i.gr, %i.gu                    ; 2 uses
  %.not315 = icmp ult i64 %i.gv, %.10282
  br i1 %.not315, label %ruby_nonempty_memcpy.exit355, label %.preheader384

end_hunk_0
begin_hunk_1_@rb_file_expand_path_internal:bb.a
bb.br:                                            ; preds = %bb.bq
  %i.hl = ptrtoint ptr %.7263 to i64
  %i.hm = ptrtoint ptr %.6 to i64                 ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = add i64 %i.hn, 1                        ; 2 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.ho) #23
  %i.hp = ptrtoint ptr %.4 to i64
  %i.hq = ptrtoint ptr %.1248 to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 3 uses
  %i.hs = add i64 %i.ho, %i.hr                    ; 2 uses
  %.not313 = icmp ult i64 %i.hs, %.10282
  br i1 %.not313, label %ruby_nonempty_memcpy.exit360, label %.preheader

end_hunk_1
begin_hunk_2_@rb_file_dirname_n:bb.a
  %i.ag = zext nneg i32 %1 to i64                 ; 6 uses
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = ptrtoint ptr %.0.lcssa.i to i64
  %2 = add i64 %i.ah, 1
  %3 = sub i64 %2, %i.ai
  %i.aj = sdiv i64 %3, 2
  %i.ak = icmp slt i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.l, label %bb.e
end_hunk_2
begin_hunk_3_@rb_file_join:bb.a

bb.h:                                             ; preds = %rb_array_len.exit55.thread, %rb_array_len.exit55
  %.0.i5478 = phi i64 [ %i.r, %rb_array_len.exit55.thread ], [ %i.o, %rb_array_len.exit55 ]
  %i.an = add i64 %.042, -1
  %i.ao = add i64 %i.an, %.0.i5478
  %i.ap = tail call i64 @rb_str_buf_new(i64 noundef %i.ao) #23 ; 10 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
end_hunk_3
