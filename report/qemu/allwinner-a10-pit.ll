Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/allwinner-a10-pit?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@a10_pit_write:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ba = trunc nuw nsw i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.a10_pit_write, i32 noundef %i.ba) #3
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  %i.bb = trunc i64 %2 to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1380
  store i32 %i.bb, ptr %i.bc, align 4
  br label %bb.z

bb.q:                                             ; preds = %bb.a
  %i.bd = trunc i64 %2 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  store i32 %i.bd, ptr %i.be, align 16
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  %i.bf = trunc i64 %2 to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  store i32 %i.bf, ptr %i.bg, align 8
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  %i.bh = trunc i64 %2 to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1388
  store i32 %i.bh, ptr %i.bi, align 4
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  %i.bj = trunc i64 %2 to i32                     ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1392 ; 4 uses
  store i32 %i.bj, ptr %i.bk, align 16
  %i.bl = and i32 %i.bj, 2
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = load i32, ptr %i.bk, align 16
  %i.bp = and i32 %i.bo, -3                       ; 2 uses
  store i32 %i.bp, ptr %i.bk, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bq = phi i32 [ %i.bp, %bb.u ], [ %i.bj, %bb.t ] ; 2 uses
  %i.br = and i32 %i.bq, 1
  %.not71 = icmp eq i32 %i.br, 0
  br i1 %.not71, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1388
  store i32 0, ptr %i.bt, align 4
  %i.bu = and i32 %i.bq, -2
  store i32 %i.bu, ptr %i.bk, align 16
  br label %bb.z

bb.x:                                             ; preds = %bb.e
  %i.bv = load i32, ptr @qemu_loglevel, align 4
  %i.bw = and i32 %i.bv, 2048
  %.not75 = icmp eq i32 %i.bw, 0
  br i1 %.not75, label %bb.z, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.bx = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.a10_pit_write, i32 noundef %i.bx) #3
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v, %bb.w, %bb.k, %bb.l, %bb.m, %bb.o, %bb.n, %bb.s, %bb.r, %bb.q, %bb.p, %bb.c, %bb.b
  ret void
}

declare i64 @ptimer_get_count(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @a10_pit_update_irq(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1300 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i32, ptr %i.b, align 4
  %i.f = load i32, ptr %i.c, align 16
  %i.g = and i32 %i.f, %i.e
  %i.h = and i32 %i.g, 1
  tail call void @qemu_set_irq(ptr noundef %i.d, i32 noundef %i.h) #3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = load i32, ptr %i.b, align 4
  %i.l = load i32, ptr %i.c, align 16
  %i.m = and i32 %i.l, %i.k
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 1
  tail call void @qemu_set_irq(ptr noundef %i.j, i32 noundef %i.o) #3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %i.b, align 4
  %i.s = load i32, ptr %i.c, align 16
  %i.t = and i32 %i.s, %i.r
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 1
  tail call void @qemu_set_irq(ptr noundef %i.q, i32 noundef %i.v) #3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.x = load ptr, ptr %i.w, align 16
  %i.y = load i32, ptr %i.b, align 4
  %i.z = load i32, ptr %i.c, align 16
  %i.aa = and i32 %i.z, %i.y
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = and i32 %i.ab, 1
  tail call void @qemu_set_irq(ptr noundef %i.x, i32 noundef %i.ac) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = load i32, ptr %i.c, align 16
  %i.ah = and i32 %i.ag, %i.af
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = and i32 %i.ai, 1
  tail call void @qemu_set_irq(ptr noundef %i.ae, i32 noundef %i.aj) #3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.al = load ptr, ptr %i.ak, align 16
  %i.am = load i32, ptr %i.b, align 4
  %i.an = load i32, ptr %i.c, align 16
  %i.ao = and i32 %i.an, %i.am
  %i.ap = lshr i32 %i.ao, 5
  %i.aq = and i32 %i.ap, 1
  tail call void @qemu_set_irq(ptr noundef %i.al, i32 noundef %i.aq) #3
  ret void
}

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @a10_pit_set_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = and i32 %i.e, 3                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i32 %i.d, 4
  %i.l = and i32 %i.k, 7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = lshr i32 %i.j, %i.l
  tail call void @ptimer_set_freq(ptr noundef %i.o, i32 noundef %i.p) #3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 2048
  %.not11 = icmp eq i32 %i.r, 0
  br i1 %.not11, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.a10_pit_set_freq, i32 noundef %i.f) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_limit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_free(ptr noundef) local_unnamed_addr #1

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @a10_pit_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 9, ptr noundef nonnull @__func__.AW_A10_PIT) #3 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  store i32 0, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1300
  store i32 0, ptr %i.c, align 4
  tail call fastcc void @a10_pit_update_irq(ptr noundef %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1304 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1352
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1280 ; 6 uses
  store i32 4, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 16
  store i32 0, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.i) #3
  %i.j = load ptr, ptr %i.g, align 8
  tail call void @ptimer_stop(ptr noundef %i.j) #3
  %i.k = load i32, ptr %i.d, align 8              ; 2 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i32 %i.k, 4
  %i.r = and i32 %i.q, 7
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = lshr i32 %i.p, %i.r
  tail call void @ptimer_set_freq(ptr noundef %i.s, i32 noundef %i.t) #3
  br label %a10_pit_set_freq.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 2048
  %.not11.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i, label %a10_pit_set_freq.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.a10_pit_set_freq, i32 noundef %i.m) #3
  br label %a10_pit_set_freq.exit

a10_pit_set_freq.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %i.w = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.w) #3
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1308 ; 2 uses
  store i32 4, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1332
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1356
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 864 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.ab) #3
  %i.ac = load ptr, ptr %i.aa, align 16
  tail call void @ptimer_stop(ptr noundef %i.ac) #3
  %i.ad = load i32, ptr %i.x, align 4             ; 2 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 3                        ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %a10_pit_set_freq.exit
  %i.aj = lshr i32 %i.ad, 4
  %i.ak = and i32 %i.aj, 7
  %i.al = load ptr, ptr %i.aa, align 16
  %i.am = lshr i32 %i.ai, %i.ak
  tail call void @ptimer_set_freq(ptr noundef %i.al, i32 noundef %i.am) #3
  br label %a10_pit_set_freq.exit.1

bb.f:                                             ; preds = %a10_pit_set_freq.exit
  %i.an = load i32, ptr @qemu_loglevel, align 4
  %i.ao = and i32 %i.an, 2048
  %.not11.i.1 = icmp eq i32 %i.ao, 0
  br i1 %.not11.i.1, label %a10_pit_set_freq.exit.1, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.a10_pit_set_freq, i32 noundef %i.af) #3
  br label %a10_pit_set_freq.exit.1

a10_pit_set_freq.exit.1:                          ; preds = %bb.g, %bb.f, %bb.e
  %i.ap = load ptr, ptr %i.aa, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.ap) #3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1312 ; 2 uses
  store i32 4, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1336
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  store i32 0, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 872 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.au) #3
  %i.av = load ptr, ptr %i.at, align 8
  tail call void @ptimer_stop(ptr noundef %i.av) #3
  %i.aw = load i32, ptr %i.aq, align 16           ; 2 uses
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = and i32 %i.ax, 3                        ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not.i.2 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %a10_pit_set_freq.exit.1
  %i.bc = lshr i32 %i.aw, 4
  %i.bd = and i32 %i.bc, 7
  %i.be = load ptr, ptr %i.at, align 8
  %i.bf = lshr i32 %i.bb, %i.bd
  tail call void @ptimer_set_freq(ptr noundef %i.be, i32 noundef %i.bf) #3
  br label %a10_pit_set_freq.exit.2

bb.i:                                             ; preds = %a10_pit_set_freq.exit.1
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 2048
  %.not11.i.2 = icmp eq i32 %i.bh, 0
  br i1 %.not11.i.2, label %a10_pit_set_freq.exit.2, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.a10_pit_set_freq, i32 noundef %i.ay) #3
  br label %a10_pit_set_freq.exit.2

a10_pit_set_freq.exit.2:                          ; preds = %bb.j, %bb.i, %bb.h
  %i.bi = load ptr, ptr %i.at, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.bi) #3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1316 ; 2 uses
  store i32 4, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1364
  store i32 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 880 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.bn) #3
  %i.bo = load ptr, ptr %i.bm, align 16
  tail call void @ptimer_stop(ptr noundef %i.bo) #3
  %i.bp = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 3                        ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not.i.3 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %a10_pit_set_freq.exit.2
  %i.bv = lshr i32 %i.bp, 4
  %i.bw = and i32 %i.bv, 7
  %i.bx = load ptr, ptr %i.bm, align 16
  %i.by = lshr i32 %i.bu, %i.bw
  tail call void @ptimer_set_freq(ptr noundef %i.bx, i32 noundef %i.by) #3
  br label %a10_pit_set_freq.exit.3

bb.l:                                             ; preds = %a10_pit_set_freq.exit.2
  %i.bz = load i32, ptr @qemu_loglevel, align 4
  %i.ca = and i32 %i.bz, 2048
  %.not11.i.3 = icmp eq i32 %i.ca, 0
  br i1 %.not11.i.3, label %a10_pit_set_freq.exit.3, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.a10_pit_set_freq, i32 noundef %i.br) #3
  br label %a10_pit_set_freq.exit.3

a10_pit_set_freq.exit.3:                          ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = load ptr, ptr %i.bm, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.cb) #3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 1320 ; 2 uses
  store i32 4, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  store i32 0, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 1368
  store i32 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 888 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.cg) #3
  %i.ch = load ptr, ptr %i.cf, align 8
  tail call void @ptimer_stop(ptr noundef %i.ch) #3
  %i.ci = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.cj = lshr i32 %i.ci, 2
  %i.ck = and i32 %i.cj, 3                        ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %.not.i.4 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %a10_pit_set_freq.exit.3
  %i.co = lshr i32 %i.ci, 4
  %i.cp = and i32 %i.co, 7
  %i.cq = load ptr, ptr %i.cf, align 8
  %i.cr = lshr i32 %i.cn, %i.cp
  tail call void @ptimer_set_freq(ptr noundef %i.cq, i32 noundef %i.cr) #3
  br label %a10_pit_set_freq.exit.4

bb.o:                                             ; preds = %a10_pit_set_freq.exit.3
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 2048
  %.not11.i.4 = icmp eq i32 %i.ct, 0
  br i1 %.not11.i.4, label %a10_pit_set_freq.exit.4, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
end_hunk_0
