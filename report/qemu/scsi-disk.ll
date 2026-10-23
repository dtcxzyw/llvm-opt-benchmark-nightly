Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/scsi-disk?download=true
inline.NumInlined: 175
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@scsi_disk_dma_command:bb.a
  br i1 %.not5.i.i80, label %scsi_check_condition.exit81, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = and i24 %.0.copyload1, 255
  %i.by = zext nneg i24 %i.bx to i32
  %i.bz = and i24 %.sroa.3.0.extract.shift.i75, 255
  %i.ca = zext nneg i24 %i.bz to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.bs, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %.sroa.4.0.extract.trunc.i77) #16
  br label %scsi_check_condition.exit81

scsi_check_condition.exit81:                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  tail call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload1) #16
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %bb.am

check_lba_range.exit.thread:                      ; preds = %bb.w, %bb.l, %check_lba_range.exit74, %check_lba_range.exit
  %.0.copyload = load i24, ptr @sense_code_LBA_OUT_OF_RANGE, align 1 ; 4 uses
  %.sroa.3.0.extract.shift.i82 = lshr i24 %.0.copyload, 8
  %.sroa.4.0.extract.shift.i83 = lshr i24 %.0.copyload, 16
  %.sroa.4.0.extract.trunc.i84 = zext nneg i24 %.sroa.4.0.extract.shift.i83 to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i85 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i85, label %scsi_check_condition.exit88, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %check_lba_range.exit.thread
  %i.ce = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i86 = icmp eq i16 %i.ce, 0
  br i1 %.not4.i.i86, label %scsi_check_condition.exit88, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load i32, ptr @qemu_loglevel, align 4
  %i.cg = and i32 %i.cf, 32768
  %.not5.i.i87 = icmp eq i32 %i.cg, 0
  br i1 %.not5.i.i87, label %scsi_check_condition.exit88, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = and i24 %.0.copyload, 255
  %i.ci = zext nneg i24 %i.ch to i32
  %i.cj = and i24 %.sroa.3.0.extract.shift.i82, 255
  %i.ck = zext nneg i24 %i.cj to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.cc, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %.sroa.4.0.extract.trunc.i84) #16
  br label %scsi_check_condition.exit88

scsi_check_condition.exit88:                      ; preds = %check_lba_range.exit.thread, %bb.ac, %bb.ad, %bb.ae
  tail call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload) #16
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %bb.am

bb.af:                                            ; preds = %check_lba_range.exit74, %check_lba_range.exit
  %.sink100 = phi i64 [ %i.ae, %check_lba_range.exit ], [ %i.bl, %check_lba_range.exit74 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = lshr i64 %i.cn, 9
  %i.cp = mul i64 %i.co, %.sink100
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = load i32, ptr %i.cl, align 8
  %i.cs = ashr i32 %i.cr, 9
  %i.ct = mul i32 %i.cs, %i.s
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call zeroext i1 %i.cw(ptr noundef nonnull %i.r) #16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.cz = zext i1 %i.cx to i8
  store i8 %i.cz, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, i32 noundef 2381, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_disk_dma_command) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp eq i32 %i.dh, 2
  %i.dj = load i32, ptr %i.da, align 8            ; 2 uses
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.neg = mul i32 %i.dj, -512
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dk = shl i32 %i.dj, 9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %scsi_check_condition.exit88, %scsi_check_condition.exit81, %scsi_check_condition.exit69, %scsi_check_condition.exit
  %.0 = phi i32 [ 0, %scsi_check_condition.exit81 ], [ %.neg, %bb.ak ], [ %i.dk, %bb.al ], [ 0, %scsi_check_condition.exit88 ], [ 0, %scsi_check_condition.exit69 ], [ 0, %scsi_check_condition.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_read_data(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_scsi_disk_read_data_count.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_SCSI_DISK_READ_DATA_COUNT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_scsi_disk_read_data_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_scsi_disk_read_data_count.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %i.d) #16
  %.pr.pre = load i32, ptr %i.c, align 8
  br label %trace_scsi_disk_read_data_count.exit

trace_scsi_disk_read_data_count.exit:             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.i = phi i32 [ %i.d, %bb.a ], [ %.pr.pre, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_scsi_disk_read_data_count.exit
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.s

bb.f:                                             ; preds = %trace_scsi_disk_read_data_count.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.6, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_read_data) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = tail call ptr @scsi_req_ref(ptr noundef nonnull %0) #16 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i26 = icmp eq i32 %i.r, 0
  br i1 %.not.i26, label %trace_scsi_disk_read_data_invalid.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.s = load i16, ptr @_TRACE_SCSI_DISK_READ_DATA_INVALID_DSTATE, align 2
  %.not1.i27 = icmp eq i16 %i.s, 0
  br i1 %.not1.i27, label %trace_scsi_disk_read_data_invalid.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not2.i28 = icmp eq i32 %i.u, 0
  br i1 %.not2.i28, label %trace_scsi_disk_read_data_invalid.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29) #16
  br label %trace_scsi_disk_read_data_invalid.exit

trace_scsi_disk_read_data_invalid.exit:           ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  tail call fastcc void @scsi_read_complete_noio(ptr noundef nonnull %0, i32 noundef -22)
  br label %bb.s

bb.m:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @blk_is_available(ptr noundef %i.x) #16
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @scsi_read_complete_noio(ptr noundef nonnull %0, i32 noundef -123)
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !8, !noundef !9
  %1 = trunc nuw i8 %i.aa to i1
  store i8 1, ptr %i.z, align 8
  br i1 %1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 433
  %i.ac = load i8, ptr %i.ab, align 1, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @blk_get_stats(ptr noundef %i.af) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @block_acct_start(ptr noundef %i.ag, ptr noundef nonnull %i.ah, i64 noundef 0, i32 noundef 3) #16
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = tail call ptr @blk_aio_flush(ptr noundef %i.ai, ptr noundef nonnull @scsi_do_read_cb, ptr noundef nonnull %0) #16
  store ptr %i.aj, ptr %i.k, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  tail call fastcc void @scsi_do_read(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n, %trace_scsi_disk_read_data_invalid.exit, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_write_data(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.6, i32 noundef 607, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_write_data) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @scsi_req_ref(ptr noundef nonnull %0) #16 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 2
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_scsi_disk_write_data_invalid.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.l = load i16, ptr @_TRACE_SCSI_DISK_WRITE_DATA_INVALID_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.l, 0
  br i1 %.not1.i, label %trace_scsi_disk_write_data_invalid.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not2.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i, label %trace_scsi_disk_write_data_invalid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34) #16
  br label %trace_scsi_disk_write_data_invalid.exit

trace_scsi_disk_write_data_invalid.exit:          ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  tail call fastcc void @scsi_write_complete_noio(ptr noundef nonnull %0, i32 noundef -22)
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not51 = icmp eq ptr %i.p, null
  br i1 %.not51, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.r = load i64, ptr %i.q, align 8
  %.not52 = icmp eq i64 %i.r, 0
  br i1 %.not52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 1, ptr %i.s, align 8
  tail call fastcc void @scsi_write_complete_noio(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call zeroext i1 @blk_is_available(ptr noundef %i.v) #16
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @scsi_write_complete_noio(ptr noundef nonnull %0, i32 noundef -123)
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.x = load i8, ptr %i.h, align 8
  switch i8 %i.x, label %bb.o [
    i8 47, label %bb.n
    i8 -81, label %bb.n
    i8 -113, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @blk_get_stats(ptr noundef %i.z) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @block_acct_start(ptr noundef %i.aa, ptr noundef nonnull %i.ab, i64 noundef 0, i32 noundef 3) #16
  %i.ac = load ptr, ptr %i.o, align 8
  %.not54 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not54, ptr @scsi_write_complete, ptr @scsi_dma_complete
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = tail call ptr @blk_aio_flush(ptr noundef %i.ae, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #16
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not53 = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @dma_acct_start(ptr noundef %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ag, i32 noundef 2) #16
  %i.ak = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = shl i64 %i.ar, 9
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call ptr @dma_blk_io(ptr noundef %i.ak, i64 noundef %i.as, i32 noundef 512, ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef nonnull @scsi_dma_complete, ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aw = tail call ptr @blk_get_stats(ptr noundef %i.ai) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ba = load i64, ptr %i.az, align 8
  tail call void @block_acct_start(ptr noundef %i.aw, ptr noundef nonnull %i.ax, i64 noundef %i.ba, i32 noundef 2) #16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = shl i64 %i.be, 9
  %i.bg = tail call ptr %i.bc(i64 noundef %i.bf, ptr noundef nonnull %i.ay, ptr noundef nonnull @scsi_write_complete, ptr noundef nonnull %0, ptr noundef nonnull %0) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi ptr [ %i.bg, %bb.q ], [ %i.av, %bb.p ]
  store ptr %storemerge, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.l, %bb.j, %trace_scsi_disk_write_data_invalid.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal ptr @scsi_get_buf(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_disk_save_request(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val = load i64, ptr %i.a, align 8
  tail call void @qemu_put_be64(ptr noundef %0, i64 noundef %.val) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val23 = load i32, ptr %i.b, align 8
  tail call void @qemu_put_be32(ptr noundef %0, i32 noundef %.val23) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 428 ; 2 uses
  %.val22 = load i32, ptr %i.c, align 4
  tail call void @qemu_put_be32(ptr noundef %0, i32 noundef %.val22) #16
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8
end_hunk_0
begin_hunk_1_@scsi_write_complete:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6, i32 noundef 587, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_write_complete) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @blk_get_stats(ptr noundef %i.g) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @block_acct_failed(ptr noundef %i.h, ptr noundef nonnull %i.i) #16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @blk_get_stats(ptr noundef %i.l) #16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @block_acct_done(ptr noundef %i.m, ptr noundef nonnull %i.n) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  tail call fastcc void @scsi_write_complete_noio(ptr noundef nonnull %0, i32 noundef %1)
  ret void
}

declare void @qemu_put_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_put_be64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_put_be32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @qemu_get_buffer(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @qemu_get_be64(ptr noundef) local_unnamed_addr #1

declare i32 @qemu_get_be32(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @scsi_disk_emulate_command(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 0, ptr %i.c, align 8, !annotation !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8
  switch i8 %i.g, label %bb.b [
    i8 18, label %bb.g
    i8 26, label %bb.g
    i8 90, label %bb.g
    i8 22, label %bb.g
    i8 86, label %bb.g
    i8 23, label %bb.g
    i8 87, label %bb.g
    i8 27, label %bb.g
    i8 30, label %bb.g
    i8 70, label %bb.g
    i8 74, label %bb.g
    i8 -67, label %bb.g
    i8 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @blk_is_available(ptr noundef %i.i) #16
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload19 = load i24, ptr @sense_code_NO_MEDIUM, align 1 ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i24 %.0.copyload19, 8
  %.sroa.4.0.extract.shift.i = lshr i24 %.0.copyload19, 16
  %.sroa.4.0.extract.trunc.i = zext nneg i24 %.sroa.4.0.extract.shift.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %scsi_check_condition.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.n, 0
  br i1 %.not4.i.i, label %scsi_check_condition.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not5.i.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i.i, label %scsi_check_condition.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i24 %.0.copyload19, 255
  %i.r = zext nneg i24 %i.q to i32
  %i.s = and i24 %.sroa.3.0.extract.shift.i, 255
  %i.t = zext nneg i24 %i.s to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.l, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %.sroa.4.0.extract.trunc.i) #16
  br label %scsi_check_condition.exit

scsi_check_condition.exit:                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload19) #16
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %bb.co

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ugt i64 %i.v, 65536
  br i1 %i.w, label %scsi_emulate_mechanism_status.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.v, i64 4096) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 4 uses
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call ptr @blk_blockalign(ptr noundef %i.ad, i64 noundef %i.x) #16 ; 2 uses
  store ptr %i.ae, ptr %i.aa, align 8
  %.pre = load i32, ptr %i.z, align 4
  %i.af = zext i32 %.pre to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = phi i64 [ %i.af, %bb.i ], [ %i.x, %bb.h ]
  %i.ah = phi ptr [ %i.ae, %bb.i ], [ %i.ab, %bb.h ] ; 45 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ah, i8 noundef 0, i64 noundef %i.ag, i1 noundef false) #16
  %i.ai = load i8, ptr %i.f, align 8              ; 3 uses
  switch i8 %i.ai, label %bb.ca [
    i8 0, label %bb.k
    i8 18, label %bb.m
    i8 26, label %bb.n
    i8 90, label %bb.n
    i8 67, label %bb.ak
    i8 22, label %bb.al
    i8 86, label %bb.am
    i8 23, label %bb.an
    i8 87, label %bb.ao
    i8 27, label %bb.ap
    i8 30, label %bb.aq
    i8 37, label %bb.ar
    i8 3, label %bb.ay
    i8 -67, label %bb.az
    i8 70, label %bb.ba
    i8 74, label %bb.bb
    i8 81, label %bb.bc
    i8 -83, label %bb.bd
    i8 -98, label %bb.be
    i8 53, label %bb.bm
    i8 43, label %bb.bn
    i8 21, label %bb.bo
    i8 85, label %bb.bp
    i8 66, label %bb.bq
    i8 47, label %bb.br
    i8 -81, label %bb.br
    i8 -113, label %bb.br
    i8 65, label %bb.bv
    i8 -109, label %bb.bv
    i8 4, label %bb.bz
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call zeroext i1 @blk_is_available(ptr noundef %i.ak) #16
  br i1 %i.al, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.6, i32 noundef 2070, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_disk_emulate_command) #19
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.am = tail call fastcc i32 @scsi_disk_emulate_inquiry(ptr noundef nonnull %0, ptr noundef nonnull %i.ah)
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %scsi_emulate_mechanism_status.exit.thread, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit

bb.n:                                             ; preds = %bb.j, %bb.j
  %i.ao = load ptr, ptr %i.d, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = lshr i8 %i.aq, 3                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.at = load i8, ptr %i.as, align 2
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 63                       ; 4 uses
  %i.aw = lshr i32 %i.au, 6                       ; 4 uses
  %i.ax = icmp eq i8 %i.ai, 26
  %i.ay = select i1 %i.ax, i32 6, i32 10
  %i.az = load i64, ptr %i.u, align 8             ; 4 uses
  %i.ba = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i175 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i175, label %trace_scsi_disk_emulate_mode_sense.exit.i, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.bb = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_MODE_SENSE_DSTATE, align 2
  %.not4.i.i176 = icmp eq i16 %i.bb, 0
  br i1 %.not4.i.i176, label %trace_scsi_disk_emulate_mode_sense.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr @qemu_loglevel, align 4
  %i.bd = and i32 %i.bc, 32768
  %.not5.i.i177 = icmp eq i32 %i.bd, 0
  br i1 %.not5.i.i177, label %trace_scsi_disk_emulate_mode_sense.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, i32 noundef range(i32 6, 11) %i.ay, i32 noundef range(i32 0, 64) %i.av, i64 noundef %i.az, i32 noundef range(i32 0, 4) %i.aw) #16
  %.pre.i = load i64, ptr %i.u, align 8
  br label %trace_scsi_disk_emulate_mode_sense.exit.i

trace_scsi_disk_emulate_mode_sense.exit.i:        ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = phi i64 [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %.pre.i, %bb.q ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ah, i8 noundef 0, i64 noundef %i.be, i1 noundef false) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 604
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %trace_scsi_disk_emulate_mode_sense.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 712
  %i.bj = load i32, ptr %i.bi, align 8
  %.tr.i = trunc i32 %i.bj to i8
  %i.bk = shl i8 %.tr.i, 3
  %i.bl = and i8 %i.bk, 16                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call zeroext i1 @blk_is_writable(ptr noundef %i.bn) #16
  %i.bp = or disjoint i8 %i.bl, -128
  %spec.select.i = select i1 %i.bo, i8 %i.bl, i8 %i.bp
  br label %bb.u

bb.s:                                             ; preds = %trace_scsi_disk_emulate_mode_sense.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 744
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i32 %i.br, 2
  %.not61.i = icmp eq i32 %i.bs, 0
  br i1 %.not61.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i32 %i.br to i1
  %i.bu = icmp eq i32 %i.av, 48
  %or.cond.i = and i1 %i.bu, %i.bt
  %spec.select64.i = select i1 %or.cond.i, i8 1, i8 %i.ar
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.058.i = phi i8 [ 1, %bb.s ], [ %spec.select64.i, %bb.t ], [ %i.ar, %bb.r ]
  %.056.i = phi i8 [ 0, %bb.s ], [ 0, %bb.t ], [ %spec.select.i, %bb.r ] ; 2 uses
  %i.bv = load i8, ptr %i.f, align 8
  %i.bw = icmp eq i8 %i.bv, 26
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  store i8 0, ptr %i.bx, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink71.i = phi i64 [ 6, %bb.v ], [ 1, %bb.u ]
  %.sink69.i = phi i64 [ 8, %bb.v ], [ 4, %bb.u ]
  %.sink.i = phi i8 [ 0, %bb.v ], [ %.056.i, %bb.u ]
  %.056.sink.i = phi i8 [ %.056.i, %bb.v ], [ 0, %bb.u ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink71.i
  store i8 0, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink69.i ; 10 uses
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %.sink.i, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 3 ; 2 uses
  store i8 %.056.sink.i, ptr %i.cb, align 1
  store ptr %i.bz, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.cd = load ptr, ptr %i.cc, align 8
  call void @blk_get_geometry(ptr noundef %i.cd, ptr noundef nonnull %i.a) #16
  %2 = trunc i8 %.058.i to i1
  %i.ce = load i64, ptr %i.a, align 8             ; 2 uses
  %3 = icmp eq i64 %i.ce, 0
  %or.cond3.not.i = select i1 %2, i1 true, i1 %3
  br i1 %or.cond3.not.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load i8, ptr %i.f, align 8
  %i.cg = icmp eq i8 %i.cf, 26
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 8, ptr %i.cb, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  store i8 8, ptr %i.ch, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 600 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = lshr i64 %i.ck, 9
  %i.cm = udiv i64 %i.ce, %i.cl                   ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 16777215
  %spec.store.select.i = select i1 %i.cn, i64 0, i64 %i.cm ; 4 uses
  store i64 %spec.store.select.i, ptr %i.a, align 8
  store i8 0, ptr %i.bz, align 1
  %i.co = lshr i64 %spec.store.select.i, 16
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = lshr i64 %spec.store.select.i, 8
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = trunc i64 %spec.store.select.i to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i8 0, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  store i8 0, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.ci, align 8
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  store i8 0, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.dd, ptr %i.b, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.de = icmp eq i32 %i.aw, 3
  br i1 %i.de, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %.0.copyload.i = load i24, ptr @sense_code_SAVING_PARAMS_NOT_SUPPORTED, align 1 ; 4 uses
  %.sroa.3.0.extract.shift.i.i = lshr i24 %.0.copyload.i, 8
  %.sroa.4.0.extract.shift.i.i = lshr i24 %.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i = zext nneg i24 %.sroa.4.0.extract.shift.i.i to i32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i, label %scsi_check_condition.exit.i, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not4.i.i.i, label %scsi_check_condition.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load i32, ptr @qemu_loglevel, align 4
  %i.dk = and i32 %i.dj, 32768
  %.not5.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not5.i.i.i, label %scsi_check_condition.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = and i24 %.0.copyload.i, 255
  %i.dm = zext nneg i24 %i.dl to i32
  %i.dn = and i24 %.sroa.3.0.extract.shift.i.i, 255
  %i.do = zext nneg i24 %i.dn to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.dg, i32 noundef %i.dm, i32 noundef %i.do, i32 noundef %.sroa.4.0.extract.trunc.i.i) #16
  br label %scsi_check_condition.exit.i

scsi_check_condition.exit.i:                      ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload.i) #16
  call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %scsi_disk_emulate_mode_sense.exit.thread

bb.ag:                                            ; preds = %bb.ab
  %i.dp = icmp eq i32 %i.av, 63
  br i1 %i.dp, label %.preheader.i, label %bb.ah

.preheader.i:                                     ; preds = %bb.ag, %.preheader.i
  %.05765.i = phi i32 [ %i.dr, %.preheader.i ], [ 0, %bb.ag ] ; 2 uses
  %i.dq = call fastcc i32 @mode_sense_page(ptr noundef nonnull %i.ao, i32 noundef %.05765.i, ptr noundef %i.b, i32 noundef %i.aw) ; 0 uses
  %i.dr = add nuw nsw i32 %.05765.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dr, 63
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !13

bb.ah:                                            ; preds = %bb.ag
  %i.ds = call fastcc i32 @mode_sense_page(ptr noundef nonnull %i.ao, i32 noundef %i.av, ptr noundef %i.b, i32 noundef %i.aw)
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %scsi_disk_emulate_mode_sense.exit.thread, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.ah
  %i.du = load ptr, ptr %i.b, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ah to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = load i8, ptr %i.f, align 8
  %i.ea = icmp eq i8 %i.dz, 26
  br i1 %i.ea, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.loopexit.i
  %i.eb = trunc i64 %i.dx to i8
  %i.ec = add i8 %i.eb, -1
  br label %scsi_disk_emulate_mode_sense.exit

bb.aj:                                            ; preds = %.loopexit.i
  %i.ed = add i32 %i.dy, -2                       ; 2 uses
  %i.ee = lshr i32 %i.ed, 8
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = trunc i32 %i.ed to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.eg, ptr %i.eh, align 1
  br label %scsi_disk_emulate_mode_sense.exit

scsi_disk_emulate_mode_sense.exit.thread:         ; preds = %scsi_check_condition.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %scsi_emulate_mechanism_status.exit.thread

scsi_disk_emulate_mode_sense.exit:                ; preds = %bb.ai, %bb.aj
  %.sink = phi i8 [ %i.ec, %bb.ai ], [ %i.ef, %bb.aj ]
  store i8 %.sink, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ei = icmp slt i32 %i.dy, 0
  br i1 %i.ei, label %scsi_emulate_mechanism_status.exit.thread, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit

bb.ak:                                            ; preds = %bb.j
  %i.ej = tail call fastcc i32 @scsi_disk_emulate_read_toc(ptr noundef nonnull %0, ptr noundef nonnull %i.ah)
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %scsi_emulate_mechanism_status.exit.thread, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit

bb.al:                                            ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i8 %i.em, 1
  %.not172 = icmp eq i8 %i.en, 0
  br i1 %.not172, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit, label %scsi_emulate_mechanism_status.exit.thread

bb.am:                                            ; preds = %bb.j
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = and i8 %i.ep, 3
  %.not171 = icmp eq i8 %i.eq, 0
  br i1 %.not171, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit, label %scsi_emulate_mechanism_status.exit.thread

bb.an:                                            ; preds = %bb.j
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.es = load i8, ptr %i.er, align 1
  %i.et = and i8 %i.es, 1
  %.not170 = icmp eq i8 %i.et, 0
  br i1 %.not170, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit, label %scsi_emulate_mechanism_status.exit.thread

bb.ao:                                            ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = and i8 %i.ev, 3
  %.not169 = icmp eq i8 %i.ew, 0
  br i1 %.not169, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit, label %scsi_emulate_mechanism_status.exit.thread

bb.ap:                                            ; preds = %bb.j
  %i.ex = tail call fastcc i32 @scsi_disk_emulate_start_stop(ptr noundef nonnull %0)
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.co, label %trace_scsi_disk_emulate_command_WRITE_SAME.exit

bb.aq:                                            ; preds = %bb.j
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 801
  %i.fc = and i8 %i.fa, 1
  store i8 %i.fc, ptr %i.fb, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load i8, ptr %i.ez, align 4
  %i.fg = trunc i8 %i.ff to i1
  tail call void @blk_lock_medium(ptr noundef %i.fe, i1 noundef zeroext %i.fg) #16
  br label %trace_scsi_disk_emulate_command_WRITE_SAME.exit

bb.ar:                                            ; preds = %bb.j
  store i64 0, ptr %i.ah, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.fi = load ptr, ptr %i.fh, align 8
  call void @blk_get_geometry(ptr noundef %i.fi, ptr noundef nonnull %i.c) #16
  %i.fj = load i64, ptr %i.c, align 8             ; 2 uses
end_hunk_1
