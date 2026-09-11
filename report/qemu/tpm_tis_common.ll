Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm_tis_common?download=true
inline.NumInlined: 50
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tpm_tis_abort:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_tpm_tis_abort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i8 %i.c to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef %i.h) #9
  %.pre = load i8, ptr %i.b, align 4
  br label %trace_tpm_tis_abort.exit

trace_tpm_tis_abort.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = phi i8 [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.pre, %bb.d ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4371 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, %i.i
  br i1 %i.l, label %bb.e, label %tpm_tis_raise_irq.exit

bb.e:                                             ; preds = %trace_tpm_tis_abort.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.n = zext i8 %i.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 4 uses
  store i32 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 201326596
  %i.s = or disjoint i32 %i.r, 64
  store i32 %i.s, ptr %i.p, align 8
  %i.t = icmp ult i8 %i.i, 5
  br i1 %i.t, label %bb.f, label %tpm_tis_raise_irq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, -2147483520
  %or.cond.i.not = icmp eq i32 %i.w, -2147483520
  br i1 %or.cond.i.not, label %bb.g, label %tpm_tis_raise_irq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %trace_tpm_tis_raise_irq.exit.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr @_TRACE_TPM_TIS_RAISE_IRQ_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.y, 0
  br i1 %.not1.i.i, label %trace_tpm_tis_raise_irq.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not2.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not2.i.i, label %trace_tpm_tis_raise_irq.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef range(i32 2, 129) 128) #9
  br label %trace_tpm_tis_raise_irq.exit.i

trace_tpm_tis_raise_irq.exit.i:                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.ac = load ptr, ptr %i.ab, align 16
  tail call void @qemu_set_irq(ptr noundef %i.ac, i32 noundef 1) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 128
  store i32 %i.af, ptr %i.ad, align 4
  %.pre15 = load i8, ptr %i.b, align 4
  br label %tpm_tis_raise_irq.exit

tpm_tis_raise_irq.exit:                           ; preds = %trace_tpm_tis_raise_irq.exit.i, %bb.f, %bb.e, %trace_tpm_tis_abort.exit
  %i.ag = phi i8 [ %.pre15, %trace_tpm_tis_raise_irq.exit.i ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %trace_tpm_tis_abort.exit ]
  tail call fastcc void @tpm_tis_new_active_locality(ptr noundef nonnull %0, i8 noundef zeroext %i.ag)
  store i8 -1, ptr %i.b, align 4
  store i8 -1, ptr %i.j, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tpm_tis_raise_irq(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i32 noundef range(i32 2, 129) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %1, 5
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.c = zext nneg i8 %1 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.f, -1
  %i.g = and i32 %i.f, %2
  %.not10 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not, %.not10
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_tpm_tis_raise_irq.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr @_TRACE_TPM_TIS_RAISE_IRQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_tpm_tis_raise_irq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_tpm_tis_raise_irq.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef range(i32 2, 129) %2) #9
  br label %trace_tpm_tis_raise_irq.exit

trace_tpm_tis_raise_irq.exit:                     ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.m = load ptr, ptr %i.l, align 16
  tail call void @qemu_set_irq(ptr noundef %i.m, i32 noundef 1) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, %2
  store i32 %i.p, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %trace_tpm_tis_raise_irq.exit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @tpm_tis_read_data(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @tpm_tis_mmio_read(ptr noundef %0, i64 noundef %1, i32 noundef %2)
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
  %i.q = zext i8 %i.p to i32
  %i.r = tail call fastcc i32 @tpm_tis_check_request_use_except(ptr noundef nonnull %0, i8 noundef zeroext %i.e)
  %3 = shl nuw nsw i32 %i.r, 2
  %i.s = or i32 %3, %i.q
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = tail call zeroext i1 @tpm_backend_get_tpm_established_flag(ptr noundef %i.t) #9
  %i.v = xor i1 %i.u, true
  %i.w = zext i1 %i.v to i32
  %i.x = or i32 %i.s, %i.w
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
  %.17094 = phi i32 [ %i.dr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ]
  %.07293 = phi i32 [ %i.ci, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ]
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
  br i1 %.not.i.i.i, label %trace_tpm_tis_raise_irq.exit.i.i, label %bb.s, !prof !7

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
  br i1 %.not.i20.i, label %tpm_tis_data_read.exit, label %bb.v, !prof !7
end_hunk_0
