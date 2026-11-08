Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ahci?download=true
inline.NumInlined: 180
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ahci_pretty_buffer_fis:bb.a
  store i8 0, ptr %i.s, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %.critedge.i, %bb.g
  %i.t = tail call ptr @g_string_free(ptr noundef %i.a, i32 noundef 0) #12
  ret ptr %i.t
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_handle_cmd_fis_dump(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_HANDLE_CMD_FIS_DUMP_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.96, ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #1

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_handle_reg_h2d_fis_dump(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_HANDLE_REG_H2D_FIS_DUMP_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.121, ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @ide_bus_exec_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @ahci_populate_sglist(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 -2147483648, 2199023255041) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i16, ptr %2, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 1              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 1
  %i.g = zext i16 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 4                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %trace_ahci_populate_sglist.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.p = load i16, ptr @_TRACE_AHCI_POPULATE_SGLIST_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i, label %trace_ahci_populate_sglist.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %trace_ahci_populate_sglist.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.109, ptr noundef %i.l, i32 noundef %i.n) #12
  br label %trace_ahci_populate_sglist.exit

trace_ahci_populate_sglist.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %trace_ahci_populate_sglist.exit
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = load i32, ptr %i.m, align 8
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i111 = icmp eq i32 %i.u, 0
  br i1 %.not.i111, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.v = load i16, ptr @_TRACE_AHCI_POPULATE_SGLIST_NO_PRDTL_DSTATE, align 2
  %.not2.i112 = icmp eq i16 %i.v, 0
  br i1 %.not2.i112, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not3.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext i16 %i.b to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.110, ptr noundef %i.s, i32 noundef %i.t, i32 noundef %i.y) #12
  br label %trace_ahci_populate_sglist_no_prdtl.exit

bb.i:                                             ; preds = %trace_ahci_populate_sglist.exit
  %i.z = add i64 %i.f, 128
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 600
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.h, ptr %i.a, align 8
  %i.ad = call ptr @address_space_map(ptr noundef %i.ac, i64 noundef %i.z, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 4294967296) #12 ; 4 uses
  %i.ae = load i64, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not106 = icmp eq ptr %i.ad, null
  br i1 %.not106, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = load i32, ptr %i.m, align 8
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i113 = icmp eq i32 %i.ah, 0
  br i1 %.not.i113, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.ai = load i16, ptr @_TRACE_AHCI_POPULATE_SGLIST_NO_MAP_DSTATE, align 2
  %.not1.i114 = icmp eq i16 %i.ai, 0
  br i1 %.not1.i114, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not2.i115 = icmp eq i32 %i.ak, 0
  br i1 %.not2.i115, label %trace_ahci_populate_sglist_no_prdtl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.111, ptr noundef %i.af, i32 noundef %i.ag) #12
  br label %trace_ahci_populate_sglist_no_prdtl.exit

bb.n:                                             ; preds = %bb.i
  %i.al = icmp ult i64 %i.ae, %i.h
  br i1 %i.al, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.k, align 8
  %i.an = load i32, ptr %i.m, align 8
  %i.ao = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i116 = icmp eq i32 %i.ao, 0
  br i1 %.not.i116, label %.critedge, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.ap = load i16, ptr @_TRACE_AHCI_POPULATE_SGLIST_SHORT_MAP_DSTATE, align 2
  %.not1.i117 = icmp eq i16 %i.ap, 0
  br i1 %.not1.i117, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load i32, ptr @qemu_loglevel, align 4
  %i.ar = and i32 %i.aq, 32768
  %.not2.i118 = icmp eq i32 %i.ar, 0
  br i1 %.not2.i118, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.112, ptr noundef %i.am, i32 noundef %i.an) #12
  br label %.critedge

bb.s:                                             ; preds = %bb.n
  %i.as = zext i16 %i.d to i32                    ; 2 uses
  %wide.trip.count = zext i16 %i.d to i64         ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.097132 = phi i64 [ 0, %bb.s ], [ %i.ay, %bb.u ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 12
  %.val110 = load i32, ptr %i.au, align 1
  %i.av = and i32 %.val110, 4194303
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = add i64 %.097132, %i.ax                 ; 2 uses
  %i.az = icmp ult i64 %4, %i.ay
  br i1 %i.az, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.t, !llvm.loop !30

bb.v:                                             ; preds = %bb.t
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.bb = sub i64 %4, %.097132                    ; 4 uses
  %or.cond108 = icmp ugt i64 %i.bb, %i.ax
  br i1 %or.cond108, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.u, %bb.v
  %.099129 = phi i64 [ %i.bb, %bb.v ], [ -1, %bb.u ]
  %.0100128 = phi i32 [ %i.ba, %bb.v ], [ -1, %bb.u ]
  %i.bc = load ptr, ptr %i.k, align 8
  %i.bd = load i32, ptr %i.m, align 8
  %i.be = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i119 = icmp eq i32 %i.be, 0
  br i1 %.not.i119, label %.critedge, label %bb.w, !prof !8

bb.w:                                             ; preds = %.thread
  %i.bf = load i16, ptr @_TRACE_AHCI_POPULATE_SGLIST_BAD_OFFSET_DSTATE, align 2
  %.not3.i120 = icmp eq i16 %i.bf, 0
  br i1 %.not3.i120, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 32768
  %.not4.i = icmp eq i32 %i.bh, 0
  br i1 %.not4.i, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.113, ptr noundef %i.bc, i32 noundef %i.bd, i32 noundef %.0100128, i64 noundef %.099129) #12
  br label %.critedge

bb.z:                                             ; preds = %bb.v
  %i.bi = getelementptr i8, ptr %i.at, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = sub nuw nsw i32 %i.as, %i.ba
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 600
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @qemu_sglist_init(ptr noundef %1, ptr noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.bo) #12
  %i.bp = load i64, ptr %i.at, align 1
  %i.bq = add i64 %i.bp, %i.bb
  %.val109 = load i32, ptr %i.bi, align 1
  %i.br = and i32 %.val109, 4194303
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = sub nsw i64 %i.bt, %i.bb
  %i.bv = call i64 @llvm.smin.i64(i64 %i.bu, i64 %3)
  call void @qemu_sglist_add(ptr noundef %1, i64 noundef %i.bq, i64 noundef %i.bv) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.194134 = add nuw nsw i32 %i.ba, 1             ; 2 uses
  %i.bx = icmp samesign ult i32 %.194134, %i.as
  br i1 %i.bx, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.z
  %5 = zext nneg i32 %.194134 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %indvars.iv144 = phi i64 [ %5, %.lr.ph.preheader ], [ %indvars.iv.next145, %bb.aa ] ; 2 uses
  %i.by = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.bz = icmp ult i64 %i.by, %3
  br i1 %i.bz, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv144 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 1
  %i.cc = getelementptr i8, ptr %i.ca, i64 12
  %.val = load i32, ptr %i.cc, align 1
  %i.cd = and i32 %.val, 4194303
  %i.ce = add nuw nsw i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = sub nuw i64 %3, %i.by
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cf)
  call void @qemu_sglist_add(ptr noundef nonnull %1, i64 noundef %i.cb, i64 noundef %i.ch) #12
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond148.not, label %.critedge, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %.lr.ph, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.thread, %bb.r, %bb.q, %bb.p, %bb.o
  %.196 = phi i32 [ -1, %bb.x ], [ -1, %bb.r ], [ -1, %bb.y ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %.thread ], [ -1, %bb.w ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.lr.ph ]
  %i.ci = load ptr, ptr %i.k, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 600
  %i.ck = load ptr, ptr %i.cj, align 8
  call void @address_space_unmap(ptr noundef %i.ck, ptr noundef nonnull %i.ad, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef %i.ae) #12
  br label %trace_ahci_populate_sglist_no_prdtl.exit

trace_ahci_populate_sglist_no_prdtl.exit:         ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %.critedge
  %.0 = phi i32 [ %.196, %.critedge ], [ -1, %bb.h ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @execute_ncq_command(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2360
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  switch i8 %i.e, label %bb.b [
    i8 96, label %is_ncq.exit
    i8 97, label %is_ncq.exit
    i8 99, label %is_ncq.exit
    i8 101, label %is_ncq.exit
    i8 100, label %is_ncq.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 1064, ptr noundef nonnull @__func__.execute_ncq_command, ptr noundef nonnull @.str.116) #13
  unreachable

is_ncq.exit:                                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2440
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i8, ptr %i.i, align 8               ; 3 uses
  switch i8 %i.e, label %bb.k [
    i8 96, label %bb.c
    i8 97, label %bb.g
  ]

bb.c:                                             ; preds = %is_ncq.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %trace_execute_ncq_command_read.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.p = load i16, ptr @_TRACE_EXECUTE_NCQ_COMMAND_READ_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.p, 0
  br i1 %.not4.i, label %trace_execute_ncq_command_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not5.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i, label %trace_execute_ncq_command_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext i8 %i.j to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.117, ptr noundef %i.h, i32 noundef %i.c, i32 noundef %i.s, i32 noundef %i.l, i64 noundef %i.n) #12
  br label %trace_execute_ncq_command_read.exit

trace_execute_ncq_command_read.exit:              ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 864 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @dma_acct_start(ptr noundef %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i32 noundef 1) #12
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = load i64, ptr %i.m, align 8
  %i.z = shl i64 %i.y, 9
  %i.aa = tail call ptr @dma_blk_read(ptr noundef %i.x, ptr noundef nonnull %i.w, i64 noundef %i.z, i32 noundef 512, ptr noundef nonnull @ncq_cb, ptr noundef nonnull %0) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  br label %bb.o

bb.g:                                             ; preds = %is_ncq.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i39 = icmp eq i32 %i.ag, 0
  br i1 %.not.i39, label %trace_execute_ncq_command_write.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ah = load i16, ptr @_TRACE_EXECUTE_NCQ_COMMAND_WRITE_DSTATE, align 2
  %.not4.i40 = icmp eq i16 %i.ah, 0
  br i1 %.not4.i40, label %trace_execute_ncq_command_write.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr @qemu_loglevel, align 4
  %i.aj = and i32 %i.ai, 32768
  %.not5.i41 = icmp eq i32 %i.aj, 0
  br i1 %.not5.i41, label %trace_execute_ncq_command_write.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = zext i8 %i.j to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.119, ptr noundef %i.h, i32 noundef %i.c, i32 noundef %i.ak, i32 noundef %i.ad, i64 noundef %i.af) #12
  br label %trace_execute_ncq_command_write.exit

trace_execute_ncq_command_write.exit:             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 864 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @dma_acct_start(ptr noundef %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, i32 noundef 2) #12
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = load i64, ptr %i.ae, align 8
  %i.ar = shl i64 %i.aq, 9
  %i.as = tail call ptr @dma_blk_write(ptr noundef %i.ap, ptr noundef nonnull %i.ao, i64 noundef %i.ar, i32 noundef 512, ptr noundef nonnull @ncq_cb, ptr noundef nonnull %0) #12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.o

bb.k:                                             ; preds = %is_ncq.exit
  %i.au = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i42 = icmp eq i32 %i.au, 0
  br i1 %.not.i42, label %trace_execute_ncq_command_unsup.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.av = load i16, ptr @_TRACE_EXECUTE_NCQ_COMMAND_UNSUP_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.av, 0
  br i1 %.not3.i, label %trace_execute_ncq_command_unsup.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr @qemu_loglevel, align 4
  %i.ax = and i32 %i.aw, 32768
  %.not4.i43 = icmp eq i32 %i.ax, 0
  br i1 %.not4.i43, label %trace_execute_ncq_command_unsup.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = zext i8 %i.j to i32
  %i.az = zext nneg i8 %i.e to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef %i.h, i32 noundef %i.c, i32 noundef %i.ay, i32 noundef %i.az) #12
  %.pre = load ptr, ptr %0, align 8
  br label %trace_execute_ncq_command_unsup.exit

trace_execute_ncq_command_unsup.exit:             ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.ba = phi ptr [ %i.a, %bb.k ], [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.pre, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 841
  store i8 4, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 857
  store i8 65, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @qemu_sglist_destroy(ptr noundef nonnull %i.bd) #12
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 0, ptr %i.be, align 1
  br label %bb.o

bb.o:                                             ; preds = %trace_execute_ncq_command_unsup.exit, %trace_execute_ncq_command_write.exit, %trace_execute_ncq_command_read.exit
  ret void
}

declare void @qemu_sglist_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_sglist_add(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_sglist_destroy(ptr noundef) local_unnamed_addr #1

declare void @dma_acct_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dma_blk_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ncq_cb(ptr noundef initializes((8, 16)) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8
end_hunk_0
