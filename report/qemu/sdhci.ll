Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sdhci?download=true
inline.NumInlined: 226
inline.NumDeleted: 54
begin_hunk_0_@sdhci_end_transfer:bb.a
  %i.ad = and i16 %i.u, 64
  %.not9.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 2
  %.not10.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not10.i.i, label %bb.k, label %sdhci_update_irq.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = and i16 %i.u, 128
  %.not11.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not11.i.i, label %sdhci_update_irq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = lshr i8 %i.aj, 2
  %.lobit.i.i = and i8 %i.ak, 1
  %i.al = zext nneg i8 %.lobit.i.i to i32
  br label %sdhci_update_irq.exit

sdhci_update_irq.exit:                            ; preds = %._crit_edge, %bb.h, %bb.j, %bb.k, %bb.l
  %i.am = phi i32 [ 1, %bb.j ], [ 1, %bb.h ], [ 1, %._crit_edge ], [ 0, %bb.k ], [ %i.al, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %i.ao = load ptr, ptr %i.an, align 8
  call void @qemu_set_irq(ptr noundef %i.ao, i32 noundef %i.am) #10
  ret void
}

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i64 @sdbus_do_command(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @sdhci_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call zeroext i1 @timer_pending(ptr noundef %i.b) #10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 16
  tail call void @timer_del(ptr noundef %i.d) #10
  tail call void @sdhci_data_transfer(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i64 %1, -4
  switch i64 %i.e, label %bb.af [
    i64 0, label %bb.d
    i64 4, label %bb.e
    i64 8, label %bb.f
    i64 12, label %bb.g
    i64 16, label %bb.h
    i64 252, label %bb.z
    i64 92, label %bb.y
    i64 88, label %bb.x
    i64 20, label %bb.h
    i64 84, label %bb.w
    i64 76, label %bb.v
    i64 72, label %bb.u
    i64 24, label %bb.h
    i64 68, label %bb.t
    i64 64, label %bb.s
    i64 60, label %bb.r
    i64 28, label %bb.h
    i64 32, label %bb.i
    i64 36, label %bb.l
    i64 40, label %bb.m
    i64 44, label %bb.n
    i64 48, label %bb.o
    i64 52, label %bb.p
    i64 56, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.g = load i32, ptr %i.f, align 16
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3380
  %i.i = load i32, ptr %i.h, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.k = load i32, ptr %i.j, align 8
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3388
  %i.m = load i32, ptr %i.l, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.o = add i64 %1, -16
  %i.p = lshr i64 %i.o, 2
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.s = trunc i64 %1 to i32
  %i.t = add i32 %i.s, -32
  %i.u = getelementptr i8, ptr %0, i64 3492
  %.val = load i16, ptr %i.u, align 4
  %i.v = and i16 %.val, 3
  %i.w = zext nneg i16 %i.v to i32
  %.not.i = icmp eq i32 %i.t, %i.w
  br i1 %.not.i, label %sdhci_buff_access_is_sequential.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 2048
  %.not1.i = icmp eq i32 %i.y, 0
  br i1 %.not1.i, label %sdhci_buff_access_is_sequential.exit.thread, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55) #10
  br label %sdhci_buff_access_is_sequential.exit.thread

sdhci_buff_access_is_sequential.exit:             ; preds = %bb.i
  %i.z = tail call fastcc i32 @sdhci_read_dataport(ptr noundef nonnull %0, i32 noundef %2)
  %i.aa = shl i32 %2, 3
  %i.ab = zext i32 %i.z to i64                    ; 3 uses
  tail call fastcc void @trace_sdhci_access(ptr noundef nonnull @.str.52, i32 noundef %i.aa, i64 noundef %1, ptr noundef nonnull @.str.53, i64 noundef %i.ab, i64 noundef %i.ab)
  br label %trace_sdhci_access.exit

bb.l:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.af = tail call zeroext i8 @sdbus_get_dat_lines(ptr noundef nonnull %i.ae) #10
  %i.ag = and i32 %i.ad, -32505857
  %i.ah = and i8 %i.af, 15
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 20
  %i.ak = or disjoint i32 %i.aj, %i.ag
  %i.al = tail call zeroext i1 @sdbus_get_cmd_line(ptr noundef nonnull %i.ae) #10
  %i.am = select i1 %i.al, i32 16777216, i32 0
  %i.an = or disjoint i32 %i.ak, %i.am
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.m:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3412
  %i.ap = load i32, ptr %i.ao, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.n:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3418
  %i.au = load i8, ptr %i.at, align 2
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.aw, %i.as
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.o:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3420
  %i.az = load i32, ptr %i.ay, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.p:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.bb = load i32, ptr %i.ba, align 16
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.q:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3428
  %i.bd = load i32, ptr %i.bc, align 4
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.r:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bf = load i32, ptr %i.be, align 8
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.s:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.bh = load i64, ptr %i.bg, align 16
  %i.bi = trunc i64 %i.bh to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.t:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %3 = load i64, ptr %i.bj, align 16
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.u:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = trunc i64 %i.bl to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.v:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %6 = load i64, ptr %i.bn, align 8
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.w:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3419
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.x:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.bs = load i64, ptr %i.br, align 16
  %i.bt = trunc i64 %i.bs to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.y:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %9 = load i64, ptr %i.bu, align 16
  %10 = lshr i64 %9, 32
  %11 = trunc nuw i64 %10 to i32
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.z:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %i.bw = load i16, ptr %i.bv, align 16
  %i.bx = zext i16 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3420
  %i.ca = load i16, ptr %i.bz, align 4            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3428
  %i.cc = load i16, ptr %i.cb, align 4
  %i.cd = and i16 %i.cc, %i.ca
  %.not.i71 = icmp eq i16 %i.cd, 0
  br i1 %.not.i71, label %bb.aa, label %sdhci_slotint.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3422
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3430
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = and i16 %i.ch, %i.cf
  %.not8.i = icmp eq i16 %i.ci, 0
  br i1 %.not8.i, label %bb.ab, label %sdhci_slotint.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cj = and i16 %i.ca, 64
  %.not9.i = icmp eq i16 %i.cj, 0
  br i1 %.not9.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = and i8 %i.cl, 2
  %.not10.i = icmp eq i8 %i.cm, 0
  br i1 %.not10.i, label %bb.ad, label %sdhci_slotint.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cn = and i16 %i.ca, 128
  %.not11.i = icmp eq i16 %i.cn, 0
  br i1 %.not11.i, label %sdhci_slotint.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3415
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = lshr i8 %i.cp, 2
  %.lobit.i = and i8 %i.cq, 1
  %i.cr = zext nneg i8 %.lobit.i to i32
  br label %sdhci_slotint.exit

sdhci_slotint.exit:                               ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.cs = phi i32 [ 1, %bb.ac ], [ 1, %bb.aa ], [ 1, %bb.z ], [ 0, %bb.ad ], [ %i.cr, %bb.ae ]
  %i.ct = or disjoint i32 %i.cs, %i.by
  br label %sdhci_buff_access_is_sequential.exit.thread

bb.af:                                            ; preds = %bb.c
  %i.cu = load i32, ptr @qemu_loglevel, align 4
  %i.cv = and i32 %i.cu, 1024
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %sdhci_buff_access_is_sequential.exit.thread, label %bb.ag, !prof !7

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.54, i32 noundef %2, i64 noundef %1) #10
  br label %sdhci_buff_access_is_sequential.exit.thread

sdhci_buff_access_is_sequential.exit.thread:      ; preds = %bb.k, %bb.j, %bb.af, %bb.ag, %sdhci_slotint.exit, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.070 = phi i32 [ 0, %bb.ag ], [ 0, %bb.af ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.k, %bb.f ], [ %i.m, %bb.g ], [ %i.ct, %sdhci_slotint.exit ], [ %11, %bb.y ], [ %i.bt, %bb.x ], [ %i.bq, %bb.w ], [ %8, %bb.v ], [ %i.bm, %bb.u ], [ %5, %bb.t ], [ %i.bi, %bb.s ], [ %i.bf, %bb.r ], [ %i.r, %bb.h ], [ %i.bd, %bb.q ], [ %i.an, %bb.l ], [ %i.ap, %bb.m ], [ %i.ax, %bb.n ], [ %i.az, %bb.o ], [ %i.bb, %bb.p ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.tr = trunc i64 %1 to i32
  %i.cw = shl i32 %.tr, 3
  %i.cx = and i32 %i.cw, 24
  %i.cy = lshr i32 %.070, %i.cx
  %i.cz = shl i32 %2, 3                           ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %notmask = shl nsw i64 -1, %i.da
  %i.db = trunc i64 %notmask to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = and i32 %i.cy, %i.dc
  %i.de = zext i32 %i.dd to i64                   ; 6 uses
  %i.df = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i72 = icmp eq i32 %i.df, 0
  br i1 %.not.i72, label %trace_sdhci_access.exit, label %bb.ah, !prof !7

bb.ah:                                            ; preds = %sdhci_buff_access_is_sequential.exit.thread
  %i.dg = load i16, ptr @_TRACE_SDHCI_ACCESS_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.dg, 0
  br i1 %.not5.i, label %trace_sdhci_access.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i32, ptr @qemu_loglevel, align 4
  %i.di = and i32 %i.dh, 32768
  %.not6.i = icmp eq i32 %i.di, 0
  br i1 %.not6.i, label %trace_sdhci_access.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.52, i32 noundef range(i32 0, -7) %i.cz, i64 noundef %1, ptr noundef nonnull @.str.53, i64 noundef range(i64 0, 4294967296) %i.de, i64 noundef range(i64 0, 4294967296) %i.de) #10
  br label %trace_sdhci_access.exit

trace_sdhci_access.exit:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %sdhci_buff_access_is_sequential.exit.thread, %sdhci_buff_access_is_sequential.exit
  %.0 = phi i64 [ %i.ab, %sdhci_buff_access_is_sequential.exit ], [ %i.de, %sdhci_buff_access_is_sequential.exit.thread ], [ %i.de, %bb.ah ], [ %i.de, %bb.ai ], [ %i.de, %bb.aj ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sdhci_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.tr = trunc i64 %1 to i32                      ; 2 uses
  %i.a = shl i32 %.tr, 3
  %i.b = and i32 %i.a, 24                         ; 6 uses
  %i.c = shl i32 %3, 3                            ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %notmask = shl nsw i64 -1, %i.d
  %i.e = xor i64 %notmask, -1
  %i.f = zext nneg i32 %i.b to i64
  %i.g = shl i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = xor i32 %i.h, -1                         ; 22 uses
  %i.j = trunc i64 %2 to i32
  %i.k = shl i32 %i.j, %i.b                       ; 63 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16
  %i.n = tail call zeroext i1 @timer_pending(ptr noundef %i.m) #10
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.l, align 16
  tail call void @timer_del(ptr noundef %i.o) #10
  tail call void @sdhci_data_transfer(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = and i64 %1, -4
  switch i64 %i.p, label %bb.cv [
    i64 0, label %bb.d
    i64 4, label %bb.j
    i64 8, label %bb.q
    i64 12, label %bb.r
    i64 32, label %bb.x
    i64 40, label %bb.an
    i64 44, label %bb.az
    i64 48, label %bb.bg
    i64 52, label %bb.bm
    i64 56, label %bb.bx
    i64 84, label %bb.cd
    i64 88, label %bb.ce
    i64 92, label %bb.cf
    i64 80, label %bb.cg
    i64 60, label %bb.cp
    i64 64, label %bb.ct
    i64 68, label %bb.ct
    i64 72, label %bb.ct
    i64 76, label %bb.ct
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.r = load i32, ptr %i.q, align 16
  %i.s = and i32 %i.r, 768
  %.not212 = icmp eq i32 %i.s, 0
  br i1 %.not212, label %bb.e, label %sdhci_write_dataport.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3376 ; 2 uses
  %i.u = load i32, ptr %i.t, align 16
  %i.v = and i32 %i.u, %i.i
  %i.w = or i32 %i.v, %i.k
  store i32 %i.w, ptr %i.t, align 16
  %.not213 = icmp ugt i32 %i.h, -16777217
  br i1 %.not213, label %bb.f, label %sdhci_write_dataport.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3382
  %i.y = load i16, ptr %i.x, align 2
  %.not214 = icmp eq i16 %i.y, 0
  br i1 %.not214, label %sdhci_write_dataport.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3380
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = and i16 %i.aa, 4095
  %.not215 = icmp eq i16 %i.ab, 0
  br i1 %.not215, label %sdhci_write_dataport.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3412
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, 24
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.i, label %sdhci_write_dataport.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @sdhci_sdma_transfer(ptr noundef nonnull %0)
  br label %sdhci_write_dataport.exit

bb.j:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.ah = load i32, ptr %i.ag, align 16
  %i.ai = and i32 %i.ah, 768
  %.not210 = icmp eq i32 %i.ai, 0
  br i1 %.not210, label %bb.k, label %sdhci_write_dataport.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3380 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 4            ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = and i32 %i.al, %i.i
  %i.an = and i32 %i.k, 32767
  %i.ao = or i32 %i.am, %i.an                     ; 3 uses
  %i.ap = trunc nuw i32 %i.ao to i16              ; 3 uses
  store i16 %i.ap, ptr %i.aj, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3382 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = lshr i32 %i.i, 16
  %i.au = and i32 %i.at, %i.as
  %i.av = lshr i32 %i.k, 16
  %i.aw = or i32 %i.au, %i.av
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.aq, align 2
  %i.ay = and i32 %i.ao, 4095
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 16           ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr @qemu_loglevel, align 4
  %i.bd = and i32 %i.bc, 2048
  %.not255 = icmp eq i32 %i.bd, 0
  br i1 %.not255, label %bb.n, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.sdhci_write, i32 noundef %i.ao, i32 noundef %i.ba) #10
  %.pre257 = load i16, ptr %i.aj, align 4
  %.pre258 = load i32, ptr %i.az, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi i32 [ %.pre258, %bb.m ], [ %i.ba, %bb.l ]
  %i.bf = phi i16 [ %.pre257, %bb.m ], [ %i.ap, %bb.l ]
  %i.bg = and i16 %i.bf, -4096
  %i.bh = trunc i32 %i.be to i16
  %i.bi = and i16 %i.bh, 4095
  %i.bj = or disjoint i16 %i.bi, %i.bg            ; 2 uses
  store i16 %i.bj, ptr %i.aj, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.bk = phi i16 [ %i.bj, %bb.n ], [ %i.ap, %bb.k ]
  %.not211 = icmp eq i16 %i.ak, %i.bk
  br i1 %.not211, label %sdhci_write_dataport.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3492
  store i16 0, ptr %i.bl, align 4
  br label %sdhci_write_dataport.exit

bb.q:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3384 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, %i.i
  %i.bp = or i32 %i.bo, %i.k
  store i32 %i.bp, ptr %i.bm, align 8
  br label %sdhci_write_dataport.exit

bb.r:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.br = load i64, ptr %i.bq, align 16
end_hunk_0
