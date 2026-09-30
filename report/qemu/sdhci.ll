Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sdhci?download=true
inline.NumInlined: 226
inline.NumDeleted: 54
begin_hunk_0_@sdhci_write:bb.a
bb.cy:                                            ; preds = %bb.cx
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.65, i32 noundef range(i32 0, -7) %i.c, i64 noundef %1, ptr noundef nonnull @.str.66, i64 noundef range(i64 0, 4294967296) %i.pp, i64 noundef range(i64 0, 4294967296) %i.pp) #10
  br label %trace_sdhci_access.exit

trace_sdhci_access.exit:                          ; preds = %bb.aa, %sdhci_write_dataport.exit, %sdhci_write_dataport.exit.thread250, %bb.cx, %bb.cy
  ret void
}

declare zeroext i1 @timer_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @sdhci_read_dataport(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3408 ; 3 uses
  %i.b = load i32, ptr %i.a, align 16             ; 4 uses
  %i.c = and i32 %i.b, 2048
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not41 = icmp eq i32 %1, 0
  br i1 %.not41, label %trace_sdhci_error.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3492 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.g = load i32, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3380
  %.promoted = load i16, ptr %i.e, align 4
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_sdhci_error.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr @_TRACE_SDHCI_ERROR_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i, label %trace_sdhci_error.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %trace_sdhci_error.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.56) #10
  br label %trace_sdhci_error.exit

bb.f:                                             ; preds = %bb.i
  %i.n = add nuw nsw i32 %.040, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %1
  br i1 %exitcond.not, label %trace_sdhci_error.exit, label %bb.g, !llvm.loop !24

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.o = phi i16 [ %.promoted, %.lr.ph ], [ %i.z, %bb.f ] ; 3 uses
  %.040 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.f ] ; 2 uses
  %.02639 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.f ]
  %i.p = zext i16 %i.o to i32
  %i.q = icmp ugt i32 %i.g, %i.p
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 489, ptr noundef nonnull @__PRETTY_FUNCTION__.sdhci_read_dataport) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = zext i16 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %.040, 3
  %i.x = shl i32 %i.v, %i.w
  %i.y = or i32 %i.x, %.02639                     ; 4 uses
  %i.z = add i16 %i.o, 1                          ; 4 uses
  store i16 %i.z, ptr %i.e, align 4
  %i.aa = load i16, ptr %i.i, align 4
  %i.ab = and i16 %i.aa, 4095
  %.not = icmp ult i16 %i.z, %i.ab
  br i1 %.not, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i31 = icmp eq i32 %i.ac, 0
  br i1 %.not.i31, label %trace_sdhci_read_dataport.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ad = load i16, ptr @_TRACE_SDHCI_READ_DATAPORT_DSTATE, align 2
  %.not1.i32 = icmp eq i16 %i.ad, 0
  br i1 %.not1.i32, label %trace_sdhci_read_dataport.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not2.i33 = icmp eq i32 %i.af, 0
  br i1 %.not2.i33, label %trace_sdhci_read_dataport.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext i16 %i.z to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, i32 noundef %i.ag) #10
  %.pre = load i32, ptr %i.a, align 16
  br label %trace_sdhci_read_dataport.exit

trace_sdhci_read_dataport.exit:                   ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.ah = phi i32 [ %i.b, %bb.j ], [ %i.b, %bb.k ], [ %i.b, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  %i.ai = and i32 %i.ah, -2049
  store i32 %i.ai, ptr %i.a, align 16
  store i16 0, ptr %i.e, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3388
  %i.ak = load i16, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i16 %i.ak, 2
  %.not28 = icmp eq i16 %i.al, 0
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %trace_sdhci_read_dataport.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3382 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = add i16 %i.an, -1
  store i16 %i.ao, ptr %i.am, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %trace_sdhci_read_dataport.exit
  %i.ap = zext i16 %i.ak to i32                   ; 2 uses
  %i.aq = and i32 %i.ap, 32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %i.ap, 2
  %.not29 = icmp eq i32 %i.as, 0
  br i1 %.not29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3382
  %i.au = load i16, ptr %i.at, align 2
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3494
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = icmp eq i8 %i.ax, 1
  %i.az = and i32 %i.ah, 4
  %.not30 = icmp eq i32 %i.az, 0
  %or.cond = select i1 %i.ay, i1 %.not30, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  tail call fastcc void @sdhci_end_transfer(ptr noundef nonnull %0)
  br label %trace_sdhci_error.exit

bb.t:                                             ; preds = %bb.r
  tail call fastcc void @sdhci_read_block_from_card(ptr noundef nonnull %0)
  br label %trace_sdhci_error.exit

trace_sdhci_error.exit:                           ; preds = %bb.f, %.preheader, %bb.e, %bb.d, %bb.c, %bb.b, %bb.t, %bb.s
  %.027 = phi i32 [ 0, %bb.e ], [ %i.y, %bb.s ], [ %i.y, %bb.t ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %.preheader ], [ %i.y, %bb.f ]
  ret i32 %.027
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_sdhci_access(ptr noundef %0, i32 noundef range(i32 0, -7) %1, i64 noundef %2, ptr noundef %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef range(i64 0, 4294967296) %5) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_SDHCI_ACCESS_DSTATE, align 2
  %.not5 = icmp eq i16 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare zeroext i8 @sdbus_get_dat_lines(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @sdbus_get_cmd_line(ptr noundef) local_unnamed_addr #1

declare void @timer_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sdhci_send_command(ptr noundef initializes((3422, 3424), (3432, 3434)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDRequest, align 4          ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3422 ; 2 uses
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3432
  store i16 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3390 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = lshr i16 %i.e, 8                         ; 2 uses
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_sdhci_send_command.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr @_TRACE_SDHCI_SEND_COMMAND_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %trace_sdhci_send_command.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i, label %trace_sdhci_send_command.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i16 %i.f to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.68, i32 noundef %i.o, i32 noundef %i.i) #10
  br label %trace_sdhci_send_command.exit

trace_sdhci_send_command.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.q = call i64 @sdbus_do_command(ptr noundef nonnull %i.p, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 16) #10
  %i.r = load i16, ptr %i.d, align 2
  %i.s = and i16 %i.r, 3
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %bb.v, label %bb.e

bb.e:                                             ; preds = %trace_sdhci_send_command.exit
  switch i64 %i.q, label %bb.n [
    i64 4, label %bb.f
    i64 16, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %.val44 = load i32, ptr %i.a, align 16
  %i.t = call i32 @llvm.bswap.i32(i32 %.val44)    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3392
  store i32 %i.t, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3404
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3400
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3396
  store i32 0, ptr %i.x, align 4
  %i.y = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.y, 0
  br i1 %.not.i45, label %trace_sdhci_response4.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.z = load i16, ptr @_TRACE_SDHCI_RESPONSE4_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.z, 0
  br i1 %.not1.i, label %trace_sdhci_response4.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not2.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not2.i46, label %trace_sdhci_response4.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.69, i32 noundef %i.t) #10
  br label %trace_sdhci_response4.exit

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.val43 = load i32, ptr %i.ac, align 1
  %i.ad = call i32 @llvm.bswap.i32(i32 %.val43)   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3392
  store i32 %i.ad, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.val42 = load i32, ptr %i.af, align 1
  %i.ag = call i32 @llvm.bswap.i32(i32 %.val42)   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3396
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.val = load i32, ptr %i.ai, align 1
  %i.aj = call i32 @llvm.bswap.i32(i32 %.val)     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3400
  store i32 %i.aj, ptr %i.ak, align 8
  %2 = load i8, ptr %i.a, align 16
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 16
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %6 = load i8, ptr %5, align 1
  %i.al = zext i8 %6 to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %7 = or disjoint i32 %i.am, %4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %7, %i.ap               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3404
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i47 = icmp eq i32 %i.as, 0
  br i1 %.not.i47, label %trace_sdhci_response4.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.at = load i16, ptr @_TRACE_SDHCI_RESPONSE16_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.at, 0
  br i1 %.not4.i, label %trace_sdhci_response4.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr @qemu_loglevel, align 4
  %i.av = and i32 %i.au, 32768
  %.not5.i = icmp eq i32 %i.av, 0
  br i1 %.not5.i, label %trace_sdhci_response4.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.70, i32 noundef range(i32 0, 16777216) %i.aq, i32 noundef %i.aj, i32 noundef %i.ag, i32 noundef %i.ad) #10
  br label %trace_sdhci_response4.exit

bb.n:                                             ; preds = %bb.e
  %i.aw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i48 = icmp eq i32 %i.aw, 0
  br i1 %.not.i48, label %trace_sdhci_error.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.ax = load i16, ptr @_TRACE_SDHCI_ERROR_DSTATE, align 2
  %.not1.i49 = icmp eq i16 %i.ax, 0
  br i1 %.not1.i49, label %trace_sdhci_error.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr @qemu_loglevel, align 4
  %i.az = and i32 %i.ay, 32768
  %.not2.i50 = icmp eq i32 %i.az, 0
  br i1 %.not2.i50, label %trace_sdhci_error.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.67) #10
  br label %trace_sdhci_error.exit

trace_sdhci_error.exit:                           ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3426
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, 1
  %.not36 = icmp eq i16 %i.bc, 0
  br i1 %.not36, label %trace_sdhci_response4.exit, label %bb.r

bb.r:                                             ; preds = %trace_sdhci_error.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3420 ; 2 uses
  %i.be = load <2 x i16>, ptr %i.bd, align 4
  %i.bf = or <2 x i16> %i.be, <i16 -32768, i16 1>
  store <2 x i16> %i.bf, ptr %i.bd, align 4
  br label %trace_sdhci_response4.exit

trace_sdhci_response4.exit:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.r, %trace_sdhci_error.exit
  %.0 = phi i1 [ true, %trace_sdhci_error.exit ], [ false, %bb.i ], [ true, %bb.r ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 16384
  %.not37 = icmp eq i32 %i.bi, 0
  br i1 %.not37, label %bb.s, label %bb.v

bb.s:                                             ; preds = %trace_sdhci_response4.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.bk = load i16, ptr %i.bj, align 16
  %i.bl = and i16 %i.bk, 2
  %.not38 = icmp eq i16 %i.bl, 0
  br i1 %.not38, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load i16, ptr %i.d, align 2
  %i.bn = and i16 %i.bm, 3
  %i.bo = icmp eq i16 %i.bn, 3
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3420 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = or i16 %i.bq, 2
  store i16 %i.br, ptr %i.bp, align 4
  br label %bb.v

bb.v:                                             ; preds = %trace_sdhci_response4.exit, %bb.s, %bb.t, %bb.u, %trace_sdhci_send_command.exit
  %.1 = phi i1 [ %.0, %trace_sdhci_response4.exit ], [ %.0, %bb.u ], [ %.0, %bb.t ], [ %.0, %bb.s ], [ false, %trace_sdhci_send_command.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.bt = load i16, ptr %i.bs, align 16
  %i.bu = and i16 %i.bt, 1
  %.not39 = icmp eq i16 %i.bu, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3420 ; 2 uses
  %.pre = load i16, ptr %.phi.trans.insert, align 4 ; 2 uses
  br i1 %.not39, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = or i16 %.pre, 1                         ; 2 uses
  store i16 %i.bv, ptr %.phi.trans.insert, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.w
  %i.bw = phi i16 [ %i.bv, %bb.w ], [ %.pre, %bb.v ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3428
  %i.by = load i16, ptr %i.bx, align 4
  %i.bz = and i16 %i.by, %i.bw
  %.not.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i, label %bb.x, label %sdhci_update_irq.exit

bb.x:                                             ; preds = %._crit_edge
  %i.ca = load i16, ptr %i.b, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3430
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = and i16 %i.cc, %i.ca
  %.not8.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not8.i.i, label %bb.y, label %sdhci_update_irq.exit

bb.y:                                             ; preds = %bb.x
  %i.ce = and i16 %i.bw, 64
  %.not9.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not9.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = and i8 %i.cg, 2
  %.not10.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not10.i.i, label %bb.aa, label %sdhci_update_irq.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ci = and i16 %i.bw, 128
  %.not11.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not11.i.i, label %sdhci_update_irq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = lshr i8 %i.ck, 2
  %.lobit.i.i = and i8 %i.cl, 1
  %i.cm = zext nneg i8 %.lobit.i.i to i32
  br label %sdhci_update_irq.exit

sdhci_update_irq.exit:                            ; preds = %._crit_edge, %bb.x, %bb.z, %bb.aa, %bb.ab
  %i.cn = phi i32 [ 1, %bb.z ], [ 1, %bb.x ], [ 1, %._crit_edge ], [ 0, %bb.aa ], [ %i.cm, %bb.ab ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %i.cp = load ptr, ptr %i.co, align 8
  call void @qemu_set_irq(ptr noundef %i.cp, i32 noundef %i.cn) #10
  br i1 %.1, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %sdhci_update_irq.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3380
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = and i16 %i.cr, 4095
  %.not40 = icmp eq i16 %i.cs, 0
  br i1 %.not40, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i16, ptr %i.d, align 2
  %i.cu = and i16 %i.ct, 32
  %.not41 = icmp eq i16 %i.cu, 0
  br i1 %.not41, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3492
  store i16 0, ptr %i.cv, align 4
  call void @sdhci_data_transfer(ptr noundef nonnull %0)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %sdhci_update_irq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare void @sdbus_set_voltage(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sdhci_reset(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @timer_del(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.e = load ptr, ptr %i.d, align 16
  tail call void @timer_del(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.f, i8 noundef 0, i64 noundef 80, i1 noundef false) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.h = tail call zeroext i1 @sdbus_get_inserted(ptr noundef nonnull %i.g) #10
  tail call void @sdhci_set_inserted(ptr noundef %i.a, i1 noundef zeroext %i.h)
  %i.i = tail call zeroext i1 @sdbus_get_readonly(ptr noundef nonnull %i.g) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3506
  %i.k = load i8, ptr %i.j, align 2, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select.i = xor i1 %i.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3408 ; 2 uses
  %i.n = load i32, ptr %i.m, align 16
  %i.o = and i32 %i.n, -524289
  %masksel.i = select i1 %spec.select.i, i32 0, i32 524288
  %.sink.i = or disjoint i32 %masksel.i, %i.o
  store i32 %.sink.i, ptr %i.m, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3492
end_hunk_0
begin_hunk_1_@esdhc_read:bb.a
  switch i64 %i.c, label %bb.b [
    i64 1, label %bb.c
    i64 0, label %bb.d
    i64 39, label %bb.e
    i64 15, label %bb.f
    i64 17, label %bb.f
    i64 18, label %bb.f
    i64 42, label %bb.f
    i64 9, label %bb.f
    i64 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.f = load i8, ptr %i.e, align 4               ; 3 uses
  %.tr = zext i8 %i.f to i64
  %i.g = shl nuw nsw i64 %.tr, 5
  %i.h = and i64 %i.g, 768
  %i.i = lshr i8 %i.f, 3
  %i.j = and i8 %i.i, 4
  %i.k = and i8 %i.f, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3414
  %i.m = load i8, ptr %i.l, align 2
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3415
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 24
  %spec.select27 = or disjoint i8 %i.j, %i.k
  %spec.select = zext nneg i8 %spec.select27 to i64
  %.1 = or disjoint i64 %i.h, %spec.select
  %i.t = or disjoint i64 %.1, %i.o
  %i.u = or disjoint i64 %i.t, %i.s
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.v = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.w = and i64 %i.v, 4294967287
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3416
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 2
  %.not = icmp eq i16 %i.z, 0
  %i.aa = or i64 %i.v, 8
  %spec.select26 = select i1 %.not, i64 %i.w, i64 %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3448
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = zext i16 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.b
  %.023 = phi i64 [ %i.d, %bb.b ], [ %i.u, %bb.c ], [ 0, %bb.a ], [ %spec.select26, %bb.d ], [ %i.ad, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i64 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @esdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 3 uses
  %i.b = add i64 %1, -4                           ; 2 uses
  %i.c = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 62)
  switch i64 %i.c, label %bb.g [
    i64 23, label %bb.h
    i64 25, label %bb.h
    i64 26, label %bb.h
    i64 50, label %bb.h
    i64 16, label %bb.h
    i64 47, label %bb.b
    i64 9, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3448
  store i16 %i.d, ptr %i.e, align 8
  %i.f = and i64 %2, 256
  %.not30 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3408 ; 3 uses
  %i.h = load i32, ptr %i.g, align 16             ; 2 uses
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.h, -129
  store i32 %i.i, ptr %i.g, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = or i32 %i.h, 128
  store i32 %i.j, ptr %i.g, align 16
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = shl i64 %2, 3
  %i.l = and i64 %i.k, 32
  %i.m = lshr i64 %2, 5
  %i.n = and i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3413
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 8
  %.1 = and i64 %2, 4294901955
  %i.s = or disjoint i64 %.1, %i.l
  %i.t = or disjoint i64 %i.s, %i.n
  %i.u = or disjoint i64 %i.t, %i.r
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %i.u, i32 noundef %3)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.v = or i64 %2, 28672
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.028 = phi i64 [ %2, %bb.a ], [ %i.v, %bb.f ]
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %.028, i32 noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.123, i32 noundef 124, ptr noundef nonnull @__func__.SYSBUS_SDHCI) #10 ; 2 uses
  switch i64 %1, label %bb.d [
    i64 72, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %2 to i16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  store i16 %i.b, ptr %i.c, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i64
  %i.g = or i64 %2, %i.f
  tail call void @sdhci_write(ptr noundef %0, i64 noundef 12, i64 noundef %i.g, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @esdhc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @sdhci_s3c_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i64 %1, label %bb.b [
    i64 128, label %bb.c
    i64 132, label %bb.c
    i64 140, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_s3c_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  switch i64 %1, label %bb.b [
    i64 128, label %bb.c
    i64 132, label %bb.c
    i64 140, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{i64 2152261025}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!14 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!15 = !{!"branch_weights", i32 1, i32 2147483647}
!16 = !{!"branch_weights", i32 0, i32 -2147483648}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!"branch_weights", !"expected", i32 2146401957, i32 1081691}
!24 = distinct !{!24, !11}
end_hunk_1
