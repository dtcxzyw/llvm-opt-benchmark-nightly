inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@tdefl_compress_normal:bb.a
  %i.ay = trunc nuw i64 %i.ax to i32
  %.not200 = icmp eq ptr %.0168, null
  %i.az = getelementptr inbounds nuw i8, ptr %.0168, i64 %i.ax
  %i.ba = sub nuw i64 %.0175, %i.ax               ; 2 uses
  %i.bb = add i32 %.promoted383, %i.ay            ; 3 uses
  store i32 %i.bb, ptr %i.g, align 8
  %.not201285381 = icmp samesign eq i64 %i.ax, 0
end_hunk_0
begin_hunk_1_@mz_zip_reader_extract_to_mem_no_alloc1:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.cp, %.0132
  %i.cv = sub nuw i64 %.1129, %i.cp
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ac, %bb.ae
end_hunk_1
begin_hunk_2_@mz_zip_reader_extract_to_callback:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ce = add i64 %.0153304.us, %i.by
  %i.cf = add i64 %.0157303.us, %i.by             ; 2 uses
  %i.cg = sub nuw i64 %.1163302.us, %i.by         ; 2 uses
  %.not200.us = icmp eq i64 %i.cg, 0
  br i1 %.not200.us, label %.thread261.loopexit, label %.lr.ph.split.us

end_hunk_2
begin_hunk_3_@mz_zip_reader_extract_to_callback:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cs = add i64 %.0153304, %i.cl
  %i.ct = add i64 %.0157303, %i.cl                ; 2 uses
  %i.cu = sub nuw i64 %.1163302, %i.cl            ; 2 uses
  %.not200 = icmp eq i64 %i.cu, 0
  br i1 %.not200, label %.thread261, label %.lr.ph.split

end_hunk_3
begin_hunk_4_@mz_zip_reader_extract_to_callback:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.do = add i64 %.1154, %i.dk
  %i.dp = sub nuw i64 %.2164, %i.dk
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
end_hunk_4
begin_hunk_5_@mz_zip_writer_init_file_v2:bb.a

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.034, %i.q
  %i.v = sub nuw i64 %.038, %i.q                  ; 2 uses
  %.not46 = icmp eq i64 %i.v, 0
  br i1 %.not46, label %bb.i, label %bb.g

end_hunk_5
begin_hunk_6_@mz_zip_writer_write_zeros:bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.01926, %i.i
  %i.m = sub nuw i32 %.01727, %i.f                ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit, label %bb.b

end_hunk_6
begin_hunk_7_@mz_zip_writer_add_from_zip_reader:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.ga = add i64 %i.fl, %.0314627                ; 2 uses
  %i.gb = add i64 %i.fl, %.0315626                ; 2 uses
  %i.gc = sub nuw i64 %.0313628, %i.fl            ; 2 uses
  %.not358 = icmp eq i64 %i.gc, 0
  br i1 %.not358, label %._crit_edge, label %.lr.ph

end_hunk_7
begin_hunk_8_@zip_entries_delete_mark:bb.a
zip_file_move.exit.i:                             ; preds = %bb.k
  %i.bq = add i64 %.02734.i, %i.bl
  %i.br = add i64 %i.bl, %.02635.i
  %i.bs = sub nuw nsw i64 %.02536.i, %i.bl        ; 2 uses
  %i.bt = add nuw nsw i64 %i.bl, %.037.i          ; 2 uses
  %.not46.i = icmp eq i64 %i.bs, 0
  br i1 %.not46.i, label %zip_file_move.exit.thread.i, label %.lr.ph.i

zip_file_move.exit.thread.i:                      ; preds = %zip_file_move.exit.i, %bb.k, %bb.j, %bb.i, %.lr.ph.i, %.preheader.i
  %.1.i = phi i64 [ 0, %.preheader.i ], [ %i.bt, %zip_file_move.exit.i ], [ -27, %.lr.ph.i ], [ -28, %bb.i ], [ -29, %bb.k ], [ -27, %bb.j ]
end_hunk_8
