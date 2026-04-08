inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@tdefl_compress_fast:bb.a
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ae) ; 3 uses
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = sub i64 %i.y, %i.af
  store i64 %i.ah, ptr %i.p, align 8, !tbaa !55
  %i.ai = add i32 %.0231, %i.ag                   ; 6 uses
  %.not320394 = icmp eq i64 %i.af, 0
end_hunk_0
begin_hunk_1_@tdefl_compress_fast:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 2 uses
  store ptr %i.av, ptr %i.s, align 8, !tbaa !54
  %i.aw = add nuw nsw i32 %i.am, %.0307396
  %i.ax = sub i32 %.0308395, %i.am                ; 2 uses
  %.not320 = icmp eq i32 %i.ax, 0
  br i1 %.not320, label %._crit_edge, label %bb.c, !llvm.loop !150

end_hunk_1
begin_hunk_2_@tdefl_compress_normal:bb.a
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.0174, i64 %i.aw) ; 4 uses
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0167, i64 %i.ax ; 2 uses
  %i.ba = sub i64 %.0174, %i.ax                   ; 2 uses
  %i.bb = add i32 %.promoted396, %i.ay            ; 3 uses
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !62
  %.not199300 = icmp samesign eq i64 %i.ax, 0
end_hunk_2
begin_hunk_3_@mz_zip_reader_extract_to_mem_no_alloc:bb.a

bb.z:                                             ; preds = %bb.y
  %i.cr = add i64 %i.cn, %.0104
  %i.cs = sub i64 %.1101, %i.cn
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.z
end_hunk_3
begin_hunk_4_@mz_zip_reader_extract_to_callback:bb.a
bb.r:                                             ; preds = %bb.q
  %i.cd = add i64 %.0124247.us, %i.bx
  %i.ce = add i64 %.0128246.us, %i.bx             ; 2 uses
  %i.cf = sub i64 %.1134245.us, %i.bx             ; 2 uses
  %.not169.us = icmp eq i64 %i.cf, 0
  br i1 %.not169.us, label %.thread207.loopexit, label %.lr.ph.split.us, !llvm.loop !250

end_hunk_4
begin_hunk_5_@mz_zip_reader_extract_to_callback:bb.a
bb.u:                                             ; preds = %bb.t
  %i.co = add i64 %.0124247, %i.cj
  %i.cp = add i64 %.0128246, %i.cj                ; 2 uses
  %i.cq = sub i64 %.1134245, %i.cj                ; 2 uses
  %.not169 = icmp eq i64 %i.cq, 0
  br i1 %.not169, label %.thread207, label %.lr.ph.split, !llvm.loop !250

end_hunk_5
begin_hunk_6_@mz_zip_reader_extract_to_callback:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dj = add i64 %.1125, %i.df
  %i.dk = sub i64 %.2135, %i.df
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
end_hunk_6
begin_hunk_7_@mz_zip_writer_init_file:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ak = add i64 %.026, %i.ag
  %i.al = sub i64 %.030, %i.ag                    ; 2 uses
  %.not37 = icmp eq i64 %i.al, 0
  br i1 %.not37, label %bb.q, label %bb.o, !llvm.loop !260

end_hunk_7
begin_hunk_8_@mz_zip_writer_add_mem_ex:bb.a
  %i.cl = call i64 %i.ci(ptr noundef %i.cj, i64 noundef %.018.i, ptr noundef nonnull %i.b, i64 noundef %i.ck) #34
  %.not21.i = icmp eq i64 %i.cl, %i.ck
  %i.cm = add i64 %.018.i, %i.ck
  %i.cn = sub i32 %.016.i, %i.ch
  br i1 %.not21.i, label %bb.u, label %bb.w, !llvm.loop !262

bb.w:                                             ; preds = %bb.v
end_hunk_8
begin_hunk_9_@mz_zip_writer_add_file:bb.a
  %i.bj = call i64 %i.bg(ptr noundef %i.bh, i64 noundef %.018.i, ptr noundef nonnull %i.b, i64 noundef %i.bi) #34
  %.not21.i = icmp eq i64 %i.bj, %i.bi
  %i.bk = add i64 %.018.i, %i.bi
  %i.bl = sub i32 %.016.i, %i.bf
  br i1 %.not21.i, label %bb.n, label %bb.p, !llvm.loop !262

bb.p:                                             ; preds = %bb.o
end_hunk_9
begin_hunk_10_@mz_zip_writer_add_file:bb.a

bb.x:                                             ; preds = %bb.w
  %i.ci = call i64 @mz_crc32(i64 noundef %.0164272, ptr noundef nonnull %i.bx, i64 noundef %i.bz) ; 2 uses
  %i.cj = sub i64 %.0177271, %i.bz                ; 2 uses
  %i.ck = add i64 %i.bz, %.0189270                ; 2 uses
  %.not219 = icmp eq i64 %i.cj, 0
  br i1 %.not219, label %.loopexit, label %.preheader, !llvm.loop !272
end_hunk_10
begin_hunk_11_@mz_zip_writer_add_file:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.db = call i64 @mz_crc32(i64 noundef %.2166, ptr noundef nonnull %i.bx, i64 noundef %i.cz) ; 2 uses
  %i.dc = sub i64 %.2179, %i.cz                   ; 2 uses
  %.not224 = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not224, i32 4, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_11
begin_hunk_12_@mz_zip_writer_add_from_zip_reader:bb.a
  %i.bg = call i64 %i.bd(ptr noundef %i.be, i64 noundef %.018.i, ptr noundef nonnull %i.a, i64 noundef %i.bf) #34
  %.not21.i = icmp eq i64 %i.bg, %i.bf
  %i.bh = add i64 %.018.i, %i.bf
  %i.bi = sub i32 %.016.i, %i.bc
  br i1 %.not21.i, label %bb.l, label %mz_zip_writer_write_zeros.exit.thread, !llvm.loop !262

mz_zip_writer_write_zeros.exit.thread:            ; preds = %bb.m
end_hunk_12
begin_hunk_13_@mz_zip_writer_add_from_zip_reader:bb.a
bb.s:                                             ; preds = %bb.q
  %i.cs = add i64 %i.cf, %.0106191                ; 2 uses
  %i.ct = add i64 %i.cf, %.0107190                ; 2 uses
  %i.cu = sub i64 %.0105192, %i.cf                ; 2 uses
  %.not119 = icmp eq i64 %i.cu, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph, !llvm.loop !273

end_hunk_13
begin_hunk_14_@zip_entry_open:bb.a
  %i.ca = call i64 %i.bx(ptr noundef %i.by, i64 noundef %.018.i, ptr noundef nonnull %i.a, i64 noundef %i.bz) #34
  %.not21.i = icmp eq i64 %i.ca, %i.bz
  %i.cb = add i64 %.018.i, %i.bz
  %i.cc = sub i32 %.016.i, %i.bw
  br i1 %.not21.i, label %bb.p, label %mz_zip_writer_write_zeros.exit.thread, !llvm.loop !262

mz_zip_writer_write_zeros.exit.thread:            ; preds = %bb.q
end_hunk_14
begin_hunk_15_@zip_entries_delete:bb.a
zip_file_move.exit.i.i:                           ; preds = %bb.z
  %i.iq = add i64 %.02735.i.i, %i.ik
  %i.ir = add i64 %i.ik, %.02636.i.i
  %i.is = sub nsw i64 %.02537.i.i, %i.ik          ; 2 uses
  %i.it = add nuw nsw i64 %i.ik, %.038.i.i        ; 2 uses
  %4 = icmp sgt i64 %i.is, 0
  br i1 %4, label %.lr.ph.i.i33, label %.loopexit.i.i, !llvm.loop !319

.loopexit.i.i:                                    ; preds = %zip_file_move.exit.i.i, %.sink.split.i.i.i, %.preheader.i.i32
  %.1.i.i = phi i64 [ %.0.ph.i.i.i, %.sink.split.i.i.i ], [ 0, %.preheader.i.i32 ], [ %i.it, %zip_file_move.exit.i.i ]
end_hunk_15
begin_hunk_16_@tdefl_compress_block:bb.a
  %i.are = phi i32 [ %i.aqa, %bb.ew ], [ %.lcssa237, %._crit_edge171.split.us.i ], [ %i.arb, %bb.ey ] ; 2 uses
  %i.arf = phi i32 [ %i.aqb, %bb.ew ], [ %.lcssa236, %._crit_edge171.split.us.i ], [ %i.arc, %bb.ey ] ; 2 uses
  %i.arg = lshr i64 %.3142176.i, %i.apv
  %i.arh = sub i32 %.3146175.i, %i.apt            ; 2 uses
  %.not.i5 = icmp eq i32 %i.arh, 0
  br i1 %.not.i5, label %._crit_edge179.loopexit.i, label %bb.ew, !llvm.loop !353

end_hunk_16
