Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm_tis_common?download=true
inline.NumInlined: 50
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tpm_tis_read_data:bb.a
  %i.b = trunc nuw i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @tpm_tis_mmio_read(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 3                            ; 2 uses
  %.tr = trunc nuw nsw i64 %i.a to i32
  %i.b = shl nuw nsw i32 %.tr, 3
  %i.c = lshr i64 %1, 12                          ; 7 uses
  %i.d = trunc i64 %i.c to i8
  %i.e = and i8 %i.d, 7                           ; 4 uses
  %i.f = icmp samesign ult i8 %i.e, 5
  br i1 %i.f, label %tpm_tis_locality_from_addr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.tpm_tis_locality_from_addr) #8
  unreachable

tpm_tis_locality_from_addr.exit:                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @tpm_backend_had_startup_error(ptr noundef %i.h) #9
  br i1 %i.i, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %tpm_tis_locality_from_addr.exit
  %i.j = trunc i64 %1 to i32                      ; 2 uses
  %i.k = and i32 %i.j, 4092
  switch i32 %i.k, label %bb.ac [
    i32 0, label %bb.d
    i32 8, label %bb.e
    i32 12, label %bb.f
    i32 16, label %bb.g
    i32 20, label %bb.h
    i32 24, label %bb.i
    i32 36, label %bb.m
    i32 128, label %bb.m
    i32 3984, label %bb.ab
    i32 3844, label %bb.aa
    i32 3840, label %bb.z
    i32 132, label %bb.m
    i32 48, label %bb.y
    i32 188, label %bb.m
    i32 148, label %bb.m
    i32 136, label %bb.m
    i32 156, label %bb.m
    i32 176, label %bb.m
    i32 184, label %bb.m
    i32 140, label %bb.m
    i32 160, label %bb.m
    i32 152, label %bb.m
    i32 168, label %bb.m
    i32 144, label %bb.m
    i32 180, label %bb.m
    i32 164, label %bb.m
    i32 172, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %i.c, 7
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4380
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -9
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = tail call fastcc i32 @tpm_tis_check_request_use_except(ptr noundef nonnull %0, i8 noundef zeroext %i.e)
  %.not77 = icmp eq i32 %i.r, 0
  %i.s = or i32 %i.q, 4
  %spec.select = select i1 %.not77, i32 %i.q, i32 %i.s
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = tail call zeroext i1 @tpm_backend_get_tpm_established_flag(ptr noundef %i.t) #9
  %i.v = xor i1 %i.u, true
  %i.w = zext i1 %i.v to i32
  %i.x = or i32 %spec.select, %i.w
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.y = and i64 %i.c, 7
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4392
  %i.ab = load i32, ptr %i.aa, align 8
  br label %bb.ac

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ad = load i32, ptr %i.ac, align 8
  br label %bb.ac

bb.g:                                             ; preds = %bb.c
  %i.ae = and i64 %i.c, 7
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4396
  %i.ah = load i32, ptr %i.ag, align 4
  br label %bb.ac

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.aj = load i32, ptr %i.ai, align 16           ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %switch.lookup, label %bb.ac

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4370
  %i.am = load i8, ptr %i.al, align 2
  %i.an = icmp eq i8 %i.am, %i.e
  br i1 %i.an, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.ao = and i64 %i.c, 7
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4384
  %i.ar = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.as = and i32 %i.ar, 16
  %.not75 = icmp eq i32 %i.as, 0
  br i1 %.not75, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %0, i64 274
  %.val = load i32, ptr %i.at, align 2
  %i.au = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.ba = load i16, ptr %i.az, align 16
  %i.bb = zext i16 %i.ba to i64
  %i.bc = sub nsw i64 %i.ay, %i.bb
  %.tr76 = trunc i64 %i.bc to i32
  %i.bd = shl i32 %.tr76, 8
  %i.be = or i32 %i.bd, %i.ar
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.bi = load i16, ptr %i.bh, align 16
  %i.bj = zext i16 %i.bi to i64
  %i.bk = sub i64 %i.bg, %i.bj
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = icmp eq i32 %2, 1
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 255)
  %spec.store.select = select i1 %i.bm, i32 %i.bn, i32 %i.bl
  %i.bo = shl i32 %spec.store.select, 8
  %i.bp = or i32 %i.bo, %i.ar
  br label %bb.ac

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4370
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = icmp eq i8 %i.br, %i.e
  br i1 %i.bs, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  %.not92 = icmp eq i32 %2, 0
  br i1 %.not92, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bt = zext i32 %2 to i64
  %i.bu = sub nuw nsw i64 4, %i.a
  %spec.select8991 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt) ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.bw = and i64 %i.c, 7
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ca = getelementptr i8, ptr %0, i64 274
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.bx, align 8
  %i.ch = icmp eq i32 %i.cg, 2
  br i1 %i.ch, label %.lr.ph.split.preheader, label %tpm_tis_data_read.exit.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %spec.select89 = trunc nuw nsw i64 %spec.select8991 to i32
  br label %.lr.ph.split

tpm_tis_data_read.exit.us:                        ; preds = %.lr.ph
  switch i64 %spec.select8991, label %tpm_tis_data_read.exit.us.3 [
    i64 1, label %.thread
    i64 2, label %.thread.loopexit106.fold.split
    i64 3, label %.thread.loopexit106.fold.split108
  ]

tpm_tis_data_read.exit.us.3:                      ; preds = %tpm_tis_data_read.exit.us
  br label %.thread

.lr.ph.splitthread-pre-split:                     ; preds = %tpm_tis_data_read.exit
  %i.ci = add nuw nsw i32 %i.dp, 8
  %.pr = load i32, ptr %i.bx, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.splitthread-pre-split
  %i.cj = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 2, %.lr.ph.split.preheader ]
  %.195 = phi i32 [ %i.ds, %.lr.ph.splitthread-pre-split ], [ %spec.select89, %.lr.ph.split.preheader ]
  %.06894 = phi i32 [ %i.ci, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ]
  %.17293 = phi i32 [ %i.dr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ]
  %cond = icmp eq i32 %i.cj, 2
  br i1 %cond, label %bb.o, label %tpm_tis_data_read.exit

bb.o:                                             ; preds = %.lr.ph.split
  %i.ck = load i32, ptr %i.by, align 8            ; 2 uses
  %i.cl = and i32 %i.ck, 16
  %.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i, label %tpm_tis_data_read.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load i32, ptr %i.ca, align 2
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %.val.i)
  %i.cn = zext i32 %i.cm to i64
  %i.co = load i64, ptr %i.cb, align 8
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cn)
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = load i16, ptr %i.cc, align 16           ; 2 uses
  %i.cs = add i16 %i.cr, 1                        ; 2 uses
  store i16 %i.cs, ptr %i.cc, align 16
  %i.ct = zext i16 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32                    ; 5 uses
  %i.cx = zext i16 %i.cs to i32                   ; 3 uses
  %i.cy = and i32 %i.cq, 65535
  %.not19.i = icmp samesign ugt i32 %i.cy, %i.cx
  br i1 %.not19.i, label %tpm_tis_raise_irq.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = and i32 %i.ck, 201326596
  %i.da = or disjoint i32 %i.cz, 128
  store i32 %i.da, ptr %i.by, align 8
  %i.db = load i32, ptr %i.cd, align 8
  %i.dc = and i32 %i.db, -2147483646
  %or.cond.i.not.i = icmp eq i32 %i.dc, -2147483646
  br i1 %or.cond.i.not.i, label %bb.r, label %tpm_tis_raise_irq.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dd = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i, label %trace_tpm_tis_raise_irq.exit.i.i, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.de = load i16, ptr @_TRACE_TPM_TIS_RAISE_IRQ_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not1.i.i.i, label %trace_tpm_tis_raise_irq.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load i32, ptr @qemu_loglevel, align 4
  %i.dg = and i32 %i.df, 32768
  %.not2.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not2.i.i.i, label %trace_tpm_tis_raise_irq.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef range(i32 2, 129) 2) #9
  br label %trace_tpm_tis_raise_irq.exit.i.i

trace_tpm_tis_raise_irq.exit.i.i:                 ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.dh = load ptr, ptr %i.ce, align 16
  tail call void @qemu_set_irq(ptr noundef %i.dh, i32 noundef 1) #9
  %i.di = load i32, ptr %i.cf, align 4
  %i.dj = or i32 %i.di, 2
  store i32 %i.dj, ptr %i.cf, align 4
  %.pre.i = load i16, ptr %i.cc, align 16
  %.pre21.i = zext i16 %.pre.i to i32
  br label %tpm_tis_raise_irq.exit.i

tpm_tis_raise_irq.exit.i:                         ; preds = %trace_tpm_tis_raise_irq.exit.i.i, %bb.q, %bb.p
  %.pre-phi.i = phi i32 [ %.pre21.i, %trace_tpm_tis_raise_irq.exit.i.i ], [ %i.cx, %bb.q ], [ %i.cx, %bb.p ]
  %i.dk = add nsw i32 %.pre-phi.i, -1
  %i.dl = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i20.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i20.i, label %tpm_tis_data_read.exit, label %bb.v, !prof !9

bb.v:                                             ; preds = %tpm_tis_raise_irq.exit.i
  %i.dm = load i16, ptr @_TRACE_TPM_TIS_DATA_READ_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not2.i.i, label %tpm_tis_data_read.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = load i32, ptr @qemu_loglevel, align 4
  %i.do = and i32 %i.dn, 32768
  %.not3.i.i = icmp eq i32 %i.do, 0
  br i1 %.not3.i.i, label %tpm_tis_data_read.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i32 noundef range(i32 0, 256) %i.cw, i32 noundef range(i32 -1, 65535) %i.dk) #9
  br label %tpm_tis_data_read.exit

tpm_tis_data_read.exit:                           ; preds = %bb.x, %bb.w, %bb.v, %tpm_tis_raise_irq.exit.i, %bb.o, %.lr.ph.split
  %.070 = phi i32 [ 255, %.lr.ph.split ], [ 255, %bb.o ], [ %i.cw, %tpm_tis_raise_irq.exit.i ], [ %i.cw, %bb.v ], [ %i.cw, %bb.w ], [ %i.cw, %bb.x ]
  %i.dp = and i32 %.06894, 255                    ; 2 uses
  %i.dq = shl i32 %.070, %i.dp
  %i.dr = or i32 %i.dq, %.17293                   ; 2 uses
  %i.ds = add nsw i32 %.195, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %.thread, label %.lr.ph.splitthread-pre-split, !llvm.loop !10

bb.y:                                             ; preds = %bb.c
  %i.dt = and i64 %i.c, 7
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4388
  %i.dw = load i32, ptr %i.dv, align 4
  br label %bb.ac

bb.z:                                             ; preds = %bb.c
  br label %bb.ac

bb.aa:                                            ; preds = %bb.c
  br label %bb.ac

bb.ab:                                            ; preds = %bb.c
  tail call fastcc void @tpm_tis_dump_state(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.ac

switch.lookup:                                    ; preds = %bb.h
  %i.dx = zext nneg i32 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tpm_tis_mmio_read, i64 %i.dx
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %switch.lookup, %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.273 = phi i32 [ -1, %bb.c ], [ %i.x, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.ah, %bb.g ], [ -1, %bb.h ], [ %switch.load, %switch.lookup ], [ 1, %bb.aa ], [ 69652, %bb.z ], [ %i.be, %bb.k ], [ %i.bp, %bb.l ], [ -1, %bb.i ], [ -1, %bb.ab ], [ -1, %bb.m ], [ %i.dw, %bb.y ]
  %i.dy = lshr i32 %.273, %i.b
  br label %.thread

.thread.loopexit106.fold.split:                   ; preds = %tpm_tis_data_read.exit.us
  br label %.thread

.thread.loopexit106.fold.split108:                ; preds = %tpm_tis_data_read.exit.us
  br label %.thread

.thread:                                          ; preds = %tpm_tis_data_read.exit.us.3, %.thread.loopexit106.fold.split, %.thread.loopexit106.fold.split108, %tpm_tis_data_read.exit.us, %tpm_tis_data_read.exit, %bb.n, %bb.ac
  %.287 = phi i32 [ %2, %bb.ac ], [ 0, %tpm_tis_data_read.exit ], [ 0, %bb.n ], [ 0, %tpm_tis_data_read.exit.us ], [ 0, %.thread.loopexit106.fold.split108 ], [ 0, %.thread.loopexit106.fold.split ], [ 0, %tpm_tis_data_read.exit.us.3 ]
  %i.dz = phi i32 [ %i.dy, %bb.ac ], [ %i.dr, %tpm_tis_data_read.exit ], [ 0, %bb.n ], [ 255, %tpm_tis_data_read.exit.us ], [ -1, %tpm_tis_data_read.exit.us.3 ], [ 65535, %.thread.loopexit106.fold.split ], [ 16777215, %.thread.loopexit106.fold.split108 ] ; 2 uses
  %i.ea = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i80 = icmp eq i32 %i.ea, 0
  br i1 %.not.i80, label %trace_tpm_tis_mmio_read.exit, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %.thread
  %i.eb = load i16, ptr @_TRACE_TPM_TIS_MMIO_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.eb, 0
  br i1 %.not3.i, label %trace_tpm_tis_mmio_read.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load i32, ptr @qemu_loglevel, align 4
  %i.ed = and i32 %i.ec, 32768
  %.not4.i = icmp eq i32 %i.ed, 0
  br i1 %.not4.i, label %trace_tpm_tis_mmio_read.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef %.287, i32 noundef %i.j, i32 noundef %i.dz) #9
  br label %trace_tpm_tis_mmio_read.exit

trace_tpm_tis_mmio_read.exit:                     ; preds = %.thread, %bb.ad, %bb.ae, %bb.af
  %i.ee = zext i32 %i.dz to i64
  br label %bb.ag

bb.ag:                                            ; preds = %tpm_tis_locality_from_addr.exit, %trace_tpm_tis_mmio_read.exit
  %.0 = phi i64 [ %i.ee, %trace_tpm_tis_mmio_read.exit ], [ 0, %tpm_tis_locality_from_addr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @tpm_tis_get_checksum(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.c = load i16, ptr %i.b, align 16
  %i.d = zext i16 %i.c to i64
  %i.e = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef %i.d) #9
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)
  ret i16 %i.f
}

declare zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_tis_write_data(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @tpm_tis_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tpm_tis_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = and i32 %i.a, 4092
  %i.c = and i64 %1, 3                            ; 2 uses
  %.tr = trunc nuw nsw i64 %i.c to i8
  %i.d = shl nuw nsw i8 %.tr, 3                   ; 2 uses
  %i.e = lshr i64 %1, 12                          ; 14 uses
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 7                           ; 21 uses
  %i.h = icmp samesign ult i8 %i.g, 5
  br i1 %i.h, label %tpm_tis_locality_from_addr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.tpm_tis_locality_from_addr) #8
  unreachable

tpm_tis_locality_from_addr.exit:                  ; preds = %bb.a
  %i.i = icmp eq i32 %3, 1
  %i.j = icmp eq i32 %3, 2
  %i.k = select i1 %i.j, i32 65535, i32 -1
  %i.l = select i1 %i.i, i32 255, i32 %i.k        ; 2 uses
  %i.m = trunc i64 %2 to i32
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %trace_tpm_tis_mmio_write.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %tpm_tis_locality_from_addr.exit
  %i.o = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.o, 0
  br i1 %.not3.i, label %trace_tpm_tis_mmio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %trace_tpm_tis_mmio_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %i.a, i32 noundef %i.m) #9
  br label %trace_tpm_tis_mmio_write.exit

trace_tpm_tis_mmio_write.exit:                    ; preds = %tpm_tis_locality_from_addr.exit, %bb.c, %bb.d, %bb.e
  %i.r = icmp eq i8 %i.g, 4
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %trace_tpm_tis_mmio_write.exit
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i251 = icmp eq i32 %i.s, 0
  br i1 %.not.i251, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.t = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_LOCTY4_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.t, 0
  br i1 %.not1.i, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23) #9
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.j:                                             ; preds = %trace_tpm_tis_mmio_write.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @tpm_backend_had_startup_error(ptr noundef %i.x) #9
  br i1 %i.y, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = zext i32 %i.l to i64
  %i.aa = and i64 %2, %i.z                        ; 2 uses
  %i.ab = zext nneg i8 %i.d to i64
  %.0 = shl nuw nsw i64 %i.aa, %i.ab              ; 11 uses
  switch i32 %i.b, label %trace_tpm_tis_mmio_write_locty4.exit [
    i32 0, label %bb.l
    i32 8, label %bb.ad
    i32 48, label %bb.bq
    i32 16, label %bb.ae
    i32 24, label %bb.ai
    i32 36, label %bb.bc
    i32 128, label %bb.bc
    i32 188, label %bb.bc
    i32 144, label %bb.bc
    i32 176, label %bb.bc
    i32 132, label %bb.bc
    i32 164, label %bb.bc
    i32 184, label %bb.bc
    i32 160, label %bb.bc
    i32 136, label %bb.bc
    i32 148, label %bb.bc
    i32 168, label %bb.bc
    i32 180, label %bb.bc
    i32 140, label %bb.bc
    i32 172, label %bb.bc
    i32 156, label %bb.bc
    i32 152, label %bb.bc
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = and i64 %.0, 8
  %.not235 = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0, 72057594037927901
end_hunk_0
begin_hunk_1_@tpm_tis_mmio_write:bb.a
  br i1 %i.fc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fd = load ptr, ptr %i.w, align 8
  tail call void @tpm_backend_cancel_cmd(ptr noundef %i.fd) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ak
  %i.fe = and i64 %.0, 33554432
  %.not230 = icmp ne i64 %i.fe, 0
  %i.ff = icmp eq i8 %i.g, 3
  %or.cond247 = and i1 %i.ff, %.not230
  br i1 %or.cond247, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fg = load ptr, ptr %i.w, align 8
  %i.fh = tail call i32 @tpm_backend_reset_tpm_established_flag(ptr noundef %i.fg, i8 noundef zeroext 3) #9 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.aj
  %i.fi = and i64 %.0, 98
  switch i64 %i.fi, label %trace_tpm_tis_mmio_write_locty4.exit [
    i64 64, label %bb.aq
    i64 32, label %bb.ax
    i64 2, label %bb.ba
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.fk = and i64 %i.e, 7
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fk ; 5 uses
  %i.fm = load i32, ptr %i.fl, align 8
  switch i32 %i.fm, label %trace_tpm_tis_mmio_write_locty4.exit [
    i32 1, label %bb.ar
    i32 0, label %bb.as
    i32 3, label %bb.at
    i32 4, label %bb.at
    i32 2, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.fn, align 16
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.as:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = and i32 %i.fp, 201326596
  %i.fr = or disjoint i32 %i.fq, 64
  store i32 %i.fr, ptr %i.fo, align 8
  store i32 1, ptr %i.fl, align 8
  tail call fastcc void @tpm_tis_raise_irq(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i32 noundef 128)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.at:                                            ; preds = %bb.aq, %bb.aq
  tail call fastcc void @trace_tpm_tis_mmio_write_init_abort()
  tail call fastcc void @tpm_tis_prep_abort(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i8 noundef zeroext %i.g)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.au:                                            ; preds = %bb.aq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.fs, align 16
  store i32 1, ptr %i.fl, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fu = load i32, ptr %i.ft, align 8            ; 3 uses
  %i.fv = and i32 %i.fu, 64
  %.not231 = icmp eq i32 %i.fv, 0
  br i1 %.not231, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fw = and i32 %i.fu, 201326596
  %i.fx = or disjoint i32 %i.fw, 64
  store i32 %i.fx, ptr %i.ft, align 8
  tail call fastcc void @tpm_tis_raise_irq(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i32 noundef 128)
  %.pre281 = load i32, ptr %i.ft, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fy = phi i32 [ %.pre281, %bb.av ], [ %i.fu, %bb.au ]
  %i.fz = and i32 %i.fy, -17
  store i32 %i.fz, ptr %i.ft, align 8
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ax:                                            ; preds = %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.gb = and i64 %i.e, 7
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8
  %cond1 = icmp eq i32 %i.gd, 4
  br i1 %cond1, label %bb.ay, label %trace_tpm_tis_mmio_write_locty4.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = and i32 %i.gf, 8
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.az, label %trace_tpm_tis_mmio_write_locty4.exit

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @tpm_tis_tpm_send(ptr noundef nonnull %0, i8 noundef zeroext %i.g)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ba:                                            ; preds = %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.gj = and i64 %i.e, 7
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8
  %cond = icmp eq i32 %i.gl, 2
  br i1 %cond, label %bb.bb, label %trace_tpm_tis_mmio_write_locty4.exit

bb.bb:                                            ; preds = %bb.ba
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.gm, align 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = and i32 %i.go, 201326596
  %i.gq = or disjoint i32 %i.gp, 144
  store i32 %i.gq, ptr %i.gn, align 8
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.bc:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 4370
  %i.gs = load i8, ptr %i.gr, align 2
  %.not226 = icmp eq i8 %i.gs, %i.g
  br i1 %.not226, label %bb.bd, label %trace_tpm_tis_mmio_write_locty4.exit

bb.bd:                                            ; preds = %bb.bc
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.gu = and i64 %i.e, 7
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gu ; 6 uses
  %i.gw = load i32, ptr %i.gv, align 8            ; 4 uses
  switch i32 %i.gw, label %bb.be [
    i32 0, label %trace_tpm_tis_mmio_write_locty4.exit
    i32 3, label %trace_tpm_tis_mmio_write_locty4.exit
    i32 2, label %trace_tpm_tis_mmio_write_locty4.exit
  ]

bb.be:                                            ; preds = %bb.bd
  %i.gx = trunc i64 %.0 to i32
  %i.gy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i252 = icmp eq i32 %i.gy, 0
  br i1 %.not.i252, label %trace_tpm_tis_mmio_write_data2send.exit, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.gz = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_DATA2SEND_DSTATE, align 2
  %.not2.i253 = icmp eq i16 %i.gz, 0
  br i1 %.not2.i253, label %trace_tpm_tis_mmio_write_data2send.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ha = load i32, ptr @qemu_loglevel, align 4
  %i.hb = and i32 %i.ha, 32768
  %.not3.i254 = icmp eq i32 %i.hb, 0
  br i1 %.not3.i254, label %trace_tpm_tis_mmio_write_data2send.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef %i.gx, i32 noundef %3) #9
  %.pr.pre = load i32, ptr %i.gv, align 8
  br label %trace_tpm_tis_mmio_write_data2send.exit

trace_tpm_tis_mmio_write_data2send.exit:          ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.be
  %i.hc = phi i32 [ %i.gw, %bb.be ], [ %.pr.pre, %bb.bh ], [ %i.gw, %bb.bg ], [ %i.gw, %bb.bf ]
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %bb.bi, label %trace_tpm_tis_mmio_write_data2send.exit._crit_edge

trace_tpm_tis_mmio_write_data2send.exit._crit_edge: ; preds = %trace_tpm_tis_mmio_write_data2send.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %trace_tpm_tis_mmio_write_data2send.exit
  store i32 4, ptr %i.gv, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 201326596
  %i.hh = or disjoint i32 %i.hg, 136              ; 2 uses
  store i32 %i.hh, ptr %i.he, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %trace_tpm_tis_mmio_write_data2send.exit._crit_edge, %bb.bi
  %i.hi = phi i32 [ %.pre, %trace_tpm_tis_mmio_write_data2send.exit._crit_edge ], [ %i.hh, %bb.bi ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.hk = and i32 %i.hi, 8
  %i.hl = icmp ne i32 %i.hk, 0                    ; 2 uses
  %i.hm = icmp ne i32 %3, 0
  %i.hn = and i1 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bj
  %i.ho = zext i32 %3 to i64
  %i.hp = sub nuw nsw i64 4, %i.c
  %spec.select248257 = tail call i64 @llvm.umin.i64(i64 %i.hp, i64 %i.ho)
  %spec.select248 = trunc nuw nsw i64 %spec.select248257 to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph, %bb.bn
  %i.ht = phi i32 [ %i.hi, %.lr.ph ], [ %i.if, %bb.bn ]
  %.2263 = phi i64 [ %i.aa, %.lr.ph ], [ %.3, %bb.bn ] ; 3 uses
  %.1216262 = phi i32 [ %spec.select248, %.lr.ph ], [ %.2217, %bb.bn ] ; 2 uses
  %i.hu = load i16, ptr %i.hq, align 16           ; 2 uses
  %i.hv = zext i16 %i.hu to i64                   ; 2 uses
  %i.hw = load i64, ptr %i.hr, align 8
  %i.hx = icmp ugt i64 %i.hw, %i.hv
  br i1 %i.hx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hy = trunc i64 %.2263 to i8
  %i.hz = add i16 %i.hu, 1
  store i16 %i.hz, ptr %i.hq, align 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv
  store i8 %i.hy, ptr %i.ia, align 1
  %i.ib = lshr i64 %.2263, 8
  %i.ic = add nsw i32 %.1216262, -1
  %.pre280 = load i32, ptr %i.hj, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.id = and i32 %i.ht, 201326596
  %i.ie = or disjoint i32 %i.id, 128              ; 2 uses
  store i32 %i.ie, ptr %i.hj, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.if = phi i32 [ %.pre280, %bb.bl ], [ %i.ie, %bb.bm ] ; 3 uses
  %.2217 = phi i32 [ %i.ic, %bb.bl ], [ %.1216262, %bb.bm ] ; 2 uses
  %.3 = phi i64 [ %i.ib, %bb.bl ], [ %.2263, %bb.bm ]
  %i.ig = and i32 %i.if, 8
  %i.ih = icmp ne i32 %i.ig, 0                    ; 2 uses
  %i.ii = icmp ne i32 %.2217, 0
  %i.ij = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.bk, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.bn, %bb.bj
  %.lcssa260 = phi i32 [ %i.hi, %bb.bj ], [ %i.if, %bb.bn ] ; 2 uses
  %.lcssa = phi i1 [ %i.hl, %bb.bj ], [ %i.ih, %bb.bn ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.il = load i16, ptr %i.ik, align 16           ; 2 uses
  %i.im = icmp ugt i16 %i.il, 5
  %brmerge.not = and i1 %.lcssa, %i.im
  br i1 %brmerge.not, label %bb.bo, label %trace_tpm_tis_mmio_write_locty4.exit

bb.bo:                                            ; preds = %._crit_edge
  %i.in = and i32 %.lcssa260, 128
  %.not227 = icmp eq i32 %i.in, 0
  %i.io = getelementptr i8, ptr %0, i64 274
  %.val = load i32, ptr %i.io, align 2
  %i.ip = and i32 %.val, -65536
  %i.iq = tail call i32 @llvm.bswap.i32(i32 %i.ip)
  %i.ir = zext i16 %i.il to i32
  %i.is = icmp samesign ugt i32 %i.iq, %i.ir
  %i.it = and i32 %.lcssa260, 201326596
  %storemerge.v = select i1 %i.is, i32 136, i32 128
  %storemerge = or disjoint i32 %i.it, %storemerge.v
  store i32 %storemerge, ptr %i.hj, align 8
  br i1 %.not227, label %bb.bp, label %trace_tpm_tis_mmio_write_locty4.exit

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @tpm_tis_raise_irq(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i32 noundef 2)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.bq:                                            ; preds = %bb.k
  %i.iu = and i64 %.0, 524288
  %.not234 = icmp eq i64 %i.iu, 0
  br i1 %.not234, label %trace_tpm_tis_mmio_write_locty4.exit, label %.preheader258.preheader

.preheader258.preheader:                          ; preds = %bb.bq
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = or i32 %i.iw, 524288
  store i32 %i.ix, ptr %i.iv, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 4412 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = or i32 %i.iz, 524288
  store i32 %i.ja, ptr %i.iy, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = or i32 %i.jc, 524288
  store i32 %i.jd, ptr %i.jb, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 4460 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = or i32 %i.jf, 524288
  store i32 %i.jg, ptr %i.je, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 4484 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = or i32 %i.ji, 524288
  store i32 %i.jj, ptr %i.jh, align 4
  br label %trace_tpm_tis_mmio_write_locty4.exit

trace_tpm_tis_mmio_write_locty4.exit:             ; preds = %.preheader258.preheader, %bb.i, %bb.h, %bb.g, %bb.f, %bb.k, %bb.ad, %._crit_edge283, %bb.ac, %bb.ab, %bb.ai, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.ba, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.aw, %bb.bc, %bb.bq, %bb.ap, %bb.bd, %bb.bd, %bb.bd, %._crit_edge, %bb.bp, %bb.bo, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @tpm_tis_get_tpm_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @tpm_backend_had_startup_error(ptr noundef %i.b) #9
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i32 @tpm_backend_get_tpm_version(ptr noundef %i.d) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @tpm_backend_had_startup_error(ptr noundef) local_unnamed_addr #2

declare i32 @tpm_backend_get_tpm_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_tis_reset(ptr noundef initializes((4560, 4564), (4568, 4576)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @tpm_backend_get_tpm_version(ptr noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4560 ; 2 uses
  store i32 %i.c, ptr %i.d, align 16
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call i64 @tpm_backend_get_buffer_size(ptr noundef %i.e) #9
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 4096)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4576
  tail call void @tpm_ppi_reset(ptr noundef nonnull %i.i) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  tail call void @tpm_backend_reset(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4370
  store i8 -1, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4372
  store i8 -1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4371
  store i8 -1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4380
  store i8 -128, ptr %i.p, align 4
  %i.q = load i32, ptr %i.d, align 16
  switch i32 %i.q, label %bb.d [
    i32 2, label %.thread
    i32 1, label %.thread38
  ]

.thread38:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4384
  store <4 x i32> <i32 0, i32 -1, i32 8, i32 0>, ptr %i.r, align 16
  store i32 0, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4404
  store i8 -128, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4408
  store <4 x i32> <i32 0, i32 -1, i32 8, i32 0>, ptr %i.u, align 8
  store i32 0, ptr %i.s, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4428
  store i8 -128, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4432
  store <4 x i32> <i32 0, i32 -1, i32 8, i32 0>, ptr %i.x, align 16
  store i32 0, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4452
  store i8 -128, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4456
  store <4 x i32> <i32 0, i32 -1, i32 8, i32 0>, ptr %i.aa, align 8
  store i32 0, ptr %i.y, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4476
  store i8 -128, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4480
  store i32 0, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4484
  store i32 -1, ptr %i.ad, align 4
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4384
  store <4 x i32> <i32 67108864, i32 8448, i32 8, i32 0>, ptr %i.ae, align 16
  store i32 0, ptr %i.n, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4404
  store i8 -128, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4408
  store <4 x i32> <i32 67108864, i32 8448, i32 8, i32 0>, ptr %i.ah, align 8
  store i32 0, ptr %i.af, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4428
  store i8 -128, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4432
  store <4 x i32> <i32 67108864, i32 8448, i32 8, i32 0>, ptr %i.ak, align 16
  store i32 0, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4452
  store i8 -128, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4456
  store <4 x i32> <i32 67108864, i32 8448, i32 8, i32 0>, ptr %i.an, align 8
  store i32 0, ptr %i.al, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4476
  store i8 -128, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4480
  store i32 67108864, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4484
  store i32 8448, ptr %i.aq, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4392
  store i32 8, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4396
  store i32 0, ptr %i.as, align 4
  store i32 0, ptr %i.n, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4404
  store i8 -128, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store i32 8, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4420
  store i32 0, ptr %i.aw, align 4
  store i32 0, ptr %i.at, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4424
end_hunk_1
begin_hunk_2_@trace_tpm_tis_mmio_write_locty_req_use:bb.a
  %i.b = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_LOCTY_REQ_USE_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i8 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, i32 noundef %i.e) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_tis_mmio_write_next_locty(i8 noundef zeroext %0) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_NEXT_LOCTY_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i8 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %i.e) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tpm_tis_prep_abort(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %2, 5
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__.tpm_tis_prep_abort) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4371
  store i8 %1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4372
  store i8 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @tpm_tis_abort(ptr noundef nonnull %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4552
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @tpm_backend_cancel_cmd(ptr noundef %i.t) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_tis_mmio_write_locty_seized(i8 noundef zeroext range(i8 0, 8) %0, i8 noundef zeroext %1) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_LOCTY_SEIZED_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i8 %0 to i32
  %i.f = zext i8 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %i.e, i32 noundef %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_tis_mmio_write_init_abort() unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_INIT_ABORT_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_tis_mmio_write_lowering_irq() unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_LOWERING_IRQ_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @tpm_backend_cancel_cmd(ptr noundef) local_unnamed_addr #2

declare i32 @tpm_backend_reset_tpm_established_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tpm_tis_tpm_send(ptr noundef %0, i8 noundef zeroext range(i8 0, 8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  tail call void @tpm_util_show_buffer(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef nonnull @.str.31) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.e = zext nneg i8 %1 to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.e
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4512 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.i = load i16, ptr %i.h, align 16
  %i.j = zext i16 %i.i to i32
  %i.k = load i64, ptr %i.b, align 8
  %i.l = trunc i64 %i.k to i32
  store i8 %1, ptr %i.g, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4513
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4520
  store ptr %i.a, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4528
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4532
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4536
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4544
  store i32 %i.l, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4548
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4552
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.m = load ptr, ptr %2, align 8
  tail call void @tpm_backend_deliver_request(ptr noundef %i.m, ptr noundef nonnull %i.g) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @tpm_backend_deliver_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
end_hunk_2
