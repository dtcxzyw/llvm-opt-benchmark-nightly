inline.NumInlined: 332
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ebml_writer_elem_write:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !178 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !136 ; 2 uses
  %.not24.i = icmp ugt i32 %i.cc, %i.ce
  %spec.select.i = select i1 %.not24.i, i32 0, i32 %i.cc ; 2 uses
  %i.cf = zext i32 %spec.select.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = sub i32 %i.ce, %spec.select.i
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.cg, i32 noundef %i.ch) #14
  br label %ebml_writer_write_block.exit

bb.h:                                             ; preds = %put_ebml_num.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !50 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = icmp sgt i32 %i.cj, 0
  br i1 %i.cl, label %.lr.ph48, label %ebml_writer_write_block.exit

.lr.ph48:                                         ; preds = %bb.h, %.lr.ph48
  %.047 = phi i32 [ %i.cq, %.lr.ph48 ], [ 0, %bb.h ] ; 2 uses
  %i.cm = sext i32 %.047 to i64
  %i.cn = getelementptr inbounds [32 x i8], ptr %i.ck, i64 %i.cm
  %i.co = tail call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %i.cn, ptr noundef %1)
  %i.cp = add nsw i32 %.047, 1
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.cj
  br i1 %i.cr, label %.lr.ph48, label %ebml_writer_write_block.exit, !llvm.loop !287

ebml_writer_write_block.exit:                     ; preds = %.lr.ph, %.lr.ph48, %bb.c, %bb.h, %put_ebml_num.exit, %bb.g, %bb.f, %bb.b, %bb.d
  %.037 = phi i32 [ 0, %bb.g ], [ %i.cj, %bb.h ], [ 0, %put_ebml_num.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ %i.cj, %.lr.ph48 ], [ 0, %.lr.ph ]
  ret i32 %.037
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avio_wb64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @ffio_fill(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_parse_creation_time_metadata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ebml_float(ptr noundef %0, i32 noundef range(i32 181, 30902) %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %.not11.i.i.i = icmp samesign ult i32 %1, 256   ; 2 uses
  %i.a = lshr i32 %1, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %1, i32 %i.a
  %i.b = zext nneg i32 %.110.i.i.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !50
  %i.e = zext i8 %i.d to i32
  %i.f = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.g = add nuw nsw i32 %i.f, %i.e
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %put_ebml_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.i = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.j = shl nsw i32 %i.i, 3
  %i.k = lshr i32 %1, %i.j
  %i.l = and i32 %i.k, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.l) #14
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !51

put_ebml_id.exit:                                 ; preds = %.lr.ph.i, %bb.a
  tail call void @avio_w8(ptr noundef %0, i32 noundef 136) #14
  %i.m = bitcast double %2 to i64
  tail call void @avio_wb64(ptr noundef %0, i64 noundef %i.m) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 307544935, 374648428) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 372
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = load ptr, ptr %1, align 8, !tbaa !288
  %i.h = call i32 @avio_get_dyn_buf(ptr noundef %i.g, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !288
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !154  ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i64 @avio_seek(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !289
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !271  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  store i32 %3, ptr %i.s, align 8, !tbaa !272
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %i.v = sub i64 %i.m, %i.u
  %i.w = add nsw i32 %i.q, 1
  store i32 %i.w, ptr %i.p, align 8, !tbaa !271
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !274
  %i.y = lshr i32 %3, 24
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 31
  %i.ae = lshr i32 %i.ad, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.05.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ae, %bb.d ]
  %i.af = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.ag = shl nsw i32 %i.af, 3
  %i.ah = lshr i32 %3, %i.ag
  %i.ai = and i32 %i.ah, 255
  call void @avio_w8(ptr noundef nonnull %0, i32 noundef %i.ai) #14
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !51

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.aj = sext i32 %i.h to i64
  call fastcc void @put_ebml_length(ptr noundef nonnull %0, i64 noundef %i.aj, i32 noundef 0)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @avio_write(ptr noundef nonnull %0, ptr noundef %i.ak, i32 noundef %i.h) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %put_ebml_id.exit
  %.0 = phi i32 [ 0, %put_ebml_id.exit ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.al = tail call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.al, %bb.f ], [ %.0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.03.i.i = phi i64 [ %i.a, %bb.a ], [ %i.c, %bb.b ]
  %.0.i.i = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.b = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.c = lshr i64 %.03.i.i, 7                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %ebml_length_size.exit, label %bb.b, !llvm.loop !152

ebml_length_size.exit:                            ; preds = %bb.b
  %i.d = icmp ult i64 %1, 72057594037927935
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ebml_length_size.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.47, i32 noundef 384) #14
  tail call void @abort() #17
  unreachable

bb.d:                                             ; preds = %ebml_length_size.exit
  %i.e = icmp eq i32 %2, 0
  %spec.select = select i1 %i.e, i32 %i.b, i32 %2 ; 4 uses
  %.not.not = icmp sgt i32 %spec.select, %.0.i.i
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef 390) #14
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = mul nsw i32 %spec.select, 7
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = or i64 %i.h, %1
  %3 = icmp sgt i32 %spec.select, 0
  br i1 %3, label %.lr.ph.preheader.i, label %put_ebml_num.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %4 = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %4, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.j = shl nsw i64 %indvars.iv.next.i, 3
  %i.k = lshr i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.m) #14
  %i.n = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.n, label %.lr.ph.i, label %put_ebml_num.exit, !llvm.loop !148

put_ebml_num.exit:                                ; preds = %.lr.ph.i, %bb.f
  ret void
}

declare i32 @av_parse_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_get_dyn_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @end_ebml_master_crc32(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 272869232, 524531318) %3, i32 noundef range(i32 -2147483647, -2147483648) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !56
  %i.d = call i32 @avio_get_dyn_buf(ptr noundef %i.c, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !154  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !271  ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  store i32 %3, ptr %i.n, align 8, !tbaa !272
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = sub i64 %i.i, %i.p
  %i.r = add nsw i32 %i.l, 1
  store i32 %i.r, ptr %i.k, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !274
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = lshr i32 %3, 24
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 31
  %i.z = lshr i32 %i.y, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.05.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.z, %bb.d ]
  %i.aa = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.ab = shl nsw i32 %i.aa, 3
  %i.ac = lshr i32 %3, %i.ab
  %i.ad = and i32 %i.ac, 255
  call void @avio_w8(ptr noundef %0, i32 noundef %i.ad) #14
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !51

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.ae = sext i32 %i.d to i64
  call fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %i.ae, i32 noundef %4)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57
  %.not23 = icmp eq i32 %i.ag, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %put_ebml_id.exit
  %i.ah = call ptr @av_crc_get_table(i32 noundef 4) #14
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = add nsw i32 %i.d, -6
  %i.al = sext i32 %i.ak to i64
  %i.am = call i32 @av_crc(ptr noundef %i.ah, i32 noundef -1, ptr noundef nonnull %i.aj, i64 noundef %i.al) #15
  %i.an = xor i32 %i.am, -1
  store i32 %i.an, ptr %i.b, align 4, !tbaa !50
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 191), align 1, !tbaa !50
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 7
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i.i, label %put_ebml_binary.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.as, %.lr.ph.i.i ], [ %i.ar, %bb.e ]
  %i.as = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.at = shl nsw i32 %i.as, 3
  %i.au = lshr i32 191, %i.at
  call void @avio_w8(ptr noundef %0, i32 noundef %i.au) #14
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %put_ebml_binary.exit, label %.lr.ph.i.i, !llvm.loop !51

put_ebml_binary.exit:                             ; preds = %.lr.ph.i.i, %bb.e
  call void @avio_w8(ptr noundef %0, i32 noundef 132) #14
  call void @avio_write(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 4) #14
  br label %bb.f

bb.f:                                             ; preds = %put_ebml_binary.exit, %put_ebml_id.exit
  %.0 = phi i32 [ 6, %put_ebml_binary.exit ], [ 0, %put_ebml_id.exit ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.aw = zext nneg i32 %.0 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = sub nsw i32 %i.d, %.0
  call void @avio_write(ptr noundef %0, ptr noundef %i.ax, i32 noundef %i.ay) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.not24 = icmp eq i32 %5, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %1, align 8, !tbaa !56
  call void @ffio_reset_dyn_buf(ptr noundef %i.az) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @ffio_free_dyn_buf(ptr noundef nonnull %1) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @ffio_reset_dyn_buf(ptr noundef) local_unnamed_addr #2

declare void @ffio_free_dyn_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i32 } @start_ebml_master(ptr noundef %0, i32 noundef range(i32 174, 26569) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ebml_length_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03.i.i = phi i64 [ %i.a, %bb.b ], [ %i.c, %bb.c ]
  %.0.i.i = phi i32 [ 0, %bb.b ], [ %i.b, %bb.c ]
  %i.b = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.c = lshr i64 %.03.i.i, 7                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %ebml_length_size.exit, label %bb.c, !llvm.loop !152

ebml_length_size.exit:                            ; preds = %bb.c, %bb.a
  %i.d = phi i32 [ 8, %bb.a ], [ %i.b, %bb.c ]    ; 4 uses
  %.not11.i.i.i = icmp samesign ult i32 %1, 256   ; 2 uses
  %i.e = lshr i32 %1, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %1, i32 %i.e
  %i.f = zext nneg i32 %.110.i.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50
  %i.i = zext i8 %i.h to i32
  %i.j = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = lshr i32 %i.k, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %put_ebml_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ebml_length_size.exit, %.lr.ph.i
  %.05.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.l, %ebml_length_size.exit ]
  %i.m = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.n = shl nsw i32 %i.m, 3
  %i.o = lshr i32 %1, %i.n
  %i.p = and i32 %i.o, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.p) #14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !51

put_ebml_id.exit:                                 ; preds = %.lr.ph.i, %ebml_length_size.exit
  %i.q = icmp slt i32 %i.d, 9
  br i1 %i.q, label %put_ebml_size_unknown.exit, label %bb.d

bb.d:                                             ; preds = %put_ebml_id.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 333) #14
  tail call void @abort() #17
  unreachable

put_ebml_size_unknown.exit:                       ; preds = %put_ebml_id.exit
  %i.r = lshr i32 511, %i.d
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.r) #14
  %i.s = add nsw i32 %i.d, -1
  %i.t = sext i32 %i.s to i64
  tail call void @ffio_fill(ptr noundef %0, i32 noundef 255, i64 noundef %i.t) #14
  %i.u = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #14
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %i.u, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.d, 1
  ret { i64, i32 } %.fca.1.insert
end_hunk_0
