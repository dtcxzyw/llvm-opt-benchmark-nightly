Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/atapi?download=true
inline.NumInlined: 152
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cmd_read_dvd_structure:bb.a
  %.not.i.i31 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i31, label %ide_atapi_cmd_error.exit34, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bp = load i16, ptr @_TRACE_IDE_ATAPI_CMD_ERROR_DSTATE, align 2
  %.not2.i.i32 = icmp eq i16 %i.bp, 0
  br i1 %.not2.i.i32, label %ide_atapi_cmd_error.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i32, ptr @qemu_loglevel, align 4
  %i.br = and i32 %i.bq, 32768
  %.not3.i.i33 = icmp eq i32 %i.br, 0
  br i1 %.not3.i.i33, label %ide_atapi_cmd_error.exit34, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, i32 noundef 5, i32 noundef %.1.i.ph.neg) #6
  br label %ide_atapi_cmd_error.exit34

ide_atapi_cmd_error.exit34:                       ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 80, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 65, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, -8
  %i.bx = or disjoint i32 %i.bw, 3
  store i32 %i.bx, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 691
  store i8 5, ptr %i.by, align 1
  %i.bz = trunc nuw nsw i32 %.1.i.ph.neg to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i8 %i.bz, ptr %i.ca, align 4
  tail call void @ide_transfer_stop(ptr noundef nonnull %0) #6
  %i.cb = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.cb) #6
  br label %ide_atapi_cmd_reply.exit

bb.t:                                             ; preds = %bb.k, %.thread44, %bb.o, %bb.n
  %.sink.i = phi i16 [ 520, %bb.n ], [ 4608, %.thread44 ], [ 1536, %bb.o ], [ 520, %bb.k ]
  %.1.ph.i = phi i32 [ 2052, %bb.n ], [ 20, %.thread44 ], [ 8, %bb.o ], [ 2052, %bb.k ]
  store i16 %.sink.i, ptr %1, align 1
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %.1.ph.i, i32 range(i32 0, 65536) %i.g) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 -1, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %spec.select.i, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i32 %spec.select.i, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.ch = load i32, ptr %i.cg, align 4
  %.not.i35 = icmp eq i32 %i.ch, 0
  br i1 %.not.i35, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call ptr @blk_get_stats(ptr noundef %i.cj) #6
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cm = zext nneg i32 %spec.select.i to i64
  tail call void @block_acct_start(ptr noundef %i.ck, ptr noundef nonnull %i.cl, i64 noundef %i.cm, i32 noundef 1) #6
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 88, ptr %i.cn, align 1
  tail call void @ide_start_dma(ptr noundef nonnull %0, ptr noundef nonnull @ide_atapi_cmd_read_dma_cb) #6
  br label %ide_atapi_cmd_reply.exit

bb.v:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.cp, align 8
  tail call void @ide_atapi_cmd_reply_end(ptr noundef nonnull %0)
  br label %ide_atapi_cmd_reply.exit

bb.w:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %.thread43, %bb.aa
  %i.cq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i36 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i36, label %ide_atapi_cmd_error.exit39, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.cr = load i16, ptr @_TRACE_IDE_ATAPI_CMD_ERROR_DSTATE, align 2
  %.not2.i.i37 = icmp eq i16 %i.cr, 0
  br i1 %.not2.i.i37, label %ide_atapi_cmd_error.exit39, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not3.i.i38 = icmp eq i32 %i.ct, 0
  br i1 %.not3.i.i38, label %ide_atapi_cmd_error.exit39, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef 5, i32 noundef 36) #6
  br label %ide_atapi_cmd_error.exit39

ide_atapi_cmd_error.exit39:                       ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 80, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 65, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, -8
  %i.cz = or disjoint i32 %i.cy, 3
  store i32 %i.cz, ptr %i.cw, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 691
  store i8 5, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i8 36, ptr %i.db, align 4
  tail call void @ide_transfer_stop(ptr noundef %0) #6
  %i.dc = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.dc) #6
  br label %ide_atapi_cmd_reply.exit

bb.aa:                                            ; preds = %bb.j
  %i.dd = icmp sgt i8 %i.d, -1
  %i.de = icmp eq i8 %i.b, 0
  %or.cond = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond, label %bb.k, label %bb.w

ide_atapi_cmd_reply.exit:                         ; preds = %bb.v, %bb.u, %ide_atapi_cmd_error.exit39, %ide_atapi_cmd_error.exit34, %ide_atapi_cmd_error.exit30, %ide_atapi_cmd_error.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_set_speed(ptr noundef initializes((649, 650), (665, 666)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, -8
  %i.f = or disjoint i32 %i.e, 3
  store i32 %i.f, ptr %i.c, align 4
  tail call void @ide_transfer_stop(ptr noundef %0) #6
  %i.g = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.g) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_mechanism_status(ptr noundef initializes((696, 704), (708, 712), (808, 812)) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i16, ptr %i.a, align 1
  %i.b = tail call i16 @llvm.bswap.i16(i16 %.val)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 0, ptr %i.d, align 1
  %i.e = tail call i16 @llvm.umin.i16(i16 %i.b, i16 8) ; 2 uses
  %spec.select.i = zext nneg i16 %i.e to i32      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 -1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %spec.select.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i32 %spec.select.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.k = load i32, ptr %i.j, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr @blk_get_stats(ptr noundef %i.m) #6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.p = zext nneg i16 %i.e to i64
  tail call void @block_acct_start(ptr noundef %i.n, ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef 1) #6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 88, ptr %i.q, align 1
  tail call void @ide_start_dma(ptr noundef nonnull %0, ptr noundef nonnull @ide_atapi_cmd_read_dma_cb) #6
  br label %ide_atapi_cmd_reply.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.s, align 8
  tail call void @ide_atapi_cmd_reply_end(ptr noundef nonnull %0)
  br label %ide_atapi_cmd_reply.exit

ide_atapi_cmd_reply.exit:                         ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_read_cd(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = ashr i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %2 = load i8, ptr %i.d, align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %6 = load i8, ptr %5, align 1
  %i.e = zext i8 %6 to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %7 = or disjoint i32 %i.f, %4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %7, %i.i                 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, -8
  %i.q = or disjoint i32 %i.p, 3
  store i32 %i.q, ptr %i.n, align 4
  tail call void @ide_transfer_stop(ptr noundef nonnull %0) #6
  %i.r = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.r) #6
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i32, ptr %i.s, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.val) ; 4 uses
  %i.u = zext i32 %i.t to i64
  %.not = icmp ugt i64 %i.c, %i.u
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.j, -1
  %i.w = add i32 %i.v, %i.t
  %i.x = zext i32 %i.w to i64
  %.not26 = icmp ugt i64 %i.c, %i.x
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %ide_atapi_cmd_error.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.z = load i16, ptr @_TRACE_IDE_ATAPI_CMD_ERROR_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.z, 0
  br i1 %.not2.i.i, label %ide_atapi_cmd_error.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not3.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not3.i.i, label %ide_atapi_cmd_error.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, i32 noundef 5, i32 noundef 33) #6
  br label %ide_atapi_cmd_error.exit

ide_atapi_cmd_error.exit:                         ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 80, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 65, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -8
  %i.ah = or disjoint i32 %i.ag, 3
  store i32 %i.ah, ptr %i.ae, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 691
  store i8 5, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i8 33, ptr %i.aj, align 4
  tail call void @ide_transfer_stop(ptr noundef nonnull %0) #6
  %i.ak = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.ak) #6
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, -8                        ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, -8
  %i.au = or disjoint i32 %i.at, 3
  store i32 %i.au, ptr %i.ar, align 4
  tail call void @ide_transfer_stop(ptr noundef nonnull %0) #6
  %i.av = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.av) #6
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.ax = load i32, ptr %i.aw, align 4
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %0, i64 657
  %.val.i = load i16, ptr %i.ay, align 1
  %.not4.i = icmp eq i16 %.val.i, 0
  br i1 %.not4.i, label %validate_bcl.exit, label %bb.m

validate_bcl.exit:                                ; preds = %bb.l
  tail call void @ide_abort_command(ptr noundef nonnull %0) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k
  switch i8 %i.an, label %bb.p [
    i8 16, label %bb.n
    i8 -8, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @ide_atapi_cmd_read(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.j, i32 noundef 2048)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @ide_atapi_cmd_read(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.j, i32 noundef 2352)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @ide_atapi_cmd_error(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 36)
  br label %bb.q

bb.q:                                             ; preds = %validate_bcl.exit, %bb.n, %bb.o, %bb.p, %bb.j, %ide_atapi_cmd_error.exit, %bb.b
  ret void
}

declare void @ide_start_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ide_atapi_cmd_read_dma_cb(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = sub i32 0, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 252
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %switch.lookup, label %ide_dma_cmd_to_retry.exit

switch.lookup:                                    ; preds = %bb.b
  %.mask = and i32 %i.d, 3
  %i.g = zext nneg i32 %.mask to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ide_atapi_cmd_read_dma_cb, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %ide_dma_cmd_to_retry.exit

ide_dma_cmd_to_retry.exit:                        ; preds = %bb.b, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ]
  %i.h = tail call i32 @ide_handle_rw_error(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %.0.i) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %ide_dma_cmd_to_retry.exit
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2144
  %i.k = load i32, ptr %i.j, align 8
  %.not56 = icmp eq i32 %i.k, 0
  br i1 %.not56, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2120
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.n, align 8
  br label %bb.w

bb.e:                                             ; preds = %ide_dma_cmd_to_retry.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8              ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4              ; 3 uses
  %.not55 = icmp eq i32 %i.s, -1
  br i1 %.not55, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 2352
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  store i8 0, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.y, i8 noundef -1, i64 noundef 10, i1 noundef false) #6
end_hunk_0
