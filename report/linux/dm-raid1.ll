inline.NumInlined: 171
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mirror_map:bb.a
  %i.b = trunc i32 %.val to i1
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %i.e = getelementptr i8, ptr %i.d, i64 104      ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @dm_rh_dirty_log(ptr noundef %i.f) #13 ; 2 uses
  %i.h = tail call ptr @dm_per_bio_data(ptr noundef %1, i64 noundef 72) #13 ; 7 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call i64 @dm_rh_bio_to_region(ptr noundef %i.j, ptr noundef %1) #13
  %i.l = getelementptr i8, ptr %i.h, i64 64
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.d, i64 56       ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.o = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.n) #13
  %i.p = load ptr, ptr %i.m, align 8
  %.not10.i = icmp eq ptr %i.p, null
  store ptr null, ptr %1, align 8
  %i.q = getelementptr i8, ptr %i.d, i64 64       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %..i.i = select i1 %.not.i.i, ptr %i.m, ptr %i.r
  store ptr %1, ptr %..i.i, align 8
  store ptr %1, ptr %i.q, align 8
  br i1 %.not10.i, label %bb.c, label %queue_bio.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.d, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.d, i64 168
  %i.v = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.t, ptr noundef %i.u) #13 ; 0 uses
  br label %queue_bio.exit

queue_bio.exit:                                   ; preds = %bb.b, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.n, i64 noundef %i.o) #13
  br label %choose_mirror.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.e, align 8
  %i.aa = tail call i64 @dm_rh_bio_to_region(ptr noundef %i.z, ptr noundef %1) #13
  %i.ab = tail call i32 %i.y(ptr noundef %i.g, i64 noundef %i.aa, i32 noundef 0) #13 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = icmp ne i32 %i.ab, -11
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %choose_mirror.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.ab, label %bb.i [
    i32 -11, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ae = load i32, ptr %i.a, align 8
  %i.af = and i32 %i.ae, 524288
  %.not36 = icmp eq i32 %i.af, 0
  br i1 %.not36, label %bb.g, label %choose_mirror.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.d, i64 40      ; 2 uses
  %i.ah = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  %i.ai = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ah) #13
  %i.aj = load ptr, ptr %i.ag, align 8
  %.not10.i39 = icmp eq ptr %i.aj, null
  store ptr null, ptr %1, align 8
  %i.ak = getelementptr i8, ptr %i.d, i64 48      ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.al, null
  %..i.i41 = select i1 %.not.i.i40, ptr %i.ag, ptr %i.al
  store ptr %1, ptr %..i.i41, align 8
  store ptr %1, ptr %i.ak, align 8
  br i1 %.not10.i39, label %bb.h, label %queue_bio.exit42

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.d, i64 160
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.d, i64 168
  %i.ap = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.an, ptr noundef %i.ao) #13 ; 0 uses
  br label %queue_bio.exit42

queue_bio.exit42:                                 ; preds = %bb.g, %bb.h
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %i.ai) #13
  br label %choose_mirror.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.ar = getelementptr i8, ptr %i.d, i64 288     ; 3 uses
  %i.as = getelementptr i8, ptr %i.d, i64 152     ; 2 uses
  %i.at = load volatile i32, ptr %i.as, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [40 x i8], ptr %i.ar, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.d, i64 280
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i = phi ptr [ %i.av, %bb.i ], [ %.1.i, %bb.m ] ; 8 uses
  %i.ax = getelementptr i8, ptr %.0.i, i64 8
  %i.ay = load volatile i32, ptr %i.ax, align 4
  %.not.i43 = icmp eq i32 %i.ay, 0
  br i1 %.not.i43, label %choose_mirror.exit, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %.0.i, i64 -40    ; 2 uses
  %i.ba = icmp eq ptr %.0.i, %i.ar
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.aw, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr [40 x i8], ptr %i.az, i64 %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi ptr [ %i.bd, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %i.be = load volatile i32, ptr %i.as, align 8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [40 x i8], ptr %i.ar, i64 %i.bf
  %.not11.i = icmp eq ptr %.1.i, %i.bg
  br i1 %.not11.i, label %choose_mirror.exit.thread, label %bb.j, !llvm.loop !16

choose_mirror.exit:                               ; preds = %bb.j
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %choose_mirror.exit.thread, label %bb.n, !prof !17

bb.n:                                             ; preds = %choose_mirror.exit
  %i.bh = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr %i.bi, ptr %i.i, align 8
  %i.bj = getelementptr i8, ptr %1, i64 20        ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.h, i64 24
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.h, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(20) %i.bn, ptr noundef align 8 dereferenceable(20) %i.aq, i64 20, i1 false)
  %i.bo = getelementptr i8, ptr %1, i64 28
  %i.bp = load volatile i32, ptr %i.bo, align 4
  %i.bq = getelementptr i8, ptr %i.h, i64 16
  store i32 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %1, i64 64
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.h, i64 56
  store ptr %i.bs, ptr %i.bt, align 8
  store ptr %.0.i, ptr %i.h, align 8
  %i.bu = getelementptr i8, ptr %.0.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load i16, ptr %i.bj, align 4            ; 2 uses
  %i.by = and i16 %i.bx, -1025
  store i16 %i.by, ptr %i.bj, align 4
  %i.bz = load ptr, ptr %i.bh, align 8
  %.not.i.i44 = icmp eq ptr %i.bz, %i.bw
  br i1 %.not.i.i44, label %bio_set_dev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = and i16 %i.bx, -1057
  store i16 %i.ca, ptr %i.bj, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %bb.o, %bb.n
  store ptr %i.bw, ptr %i.bh, align 8
  tail call void @bio_associate_blkg(ptr noundef %1) #13
  %i.cb = getelementptr i8, ptr %1, i64 48
  %i.cc = load i32, ptr %i.cb, align 8
  %.not.i5.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i5.i, label %map_bio.exit, label %bb.p, !prof !18

bb.p:                                             ; preds = %bio_set_dev.exit.i
  %i.cd = getelementptr i8, ptr %.0.i, i64 32
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.aq, align 8
  %i.cg = load ptr, ptr %.0.i, align 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = add i64 %i.cf, %i.ce
  %i.cl = sub i64 %i.ck, %i.cj
  br label %map_bio.exit

map_bio.exit:                                     ; preds = %bio_set_dev.exit.i, %bb.p
  %.0.i.i = phi i64 [ %i.cl, %bb.p ], [ 0, %bio_set_dev.exit.i ]
  store i64 %.0.i.i, ptr %i.aq, align 8
  br label %choose_mirror.exit.thread

choose_mirror.exit.thread:                        ; preds = %bb.m, %choose_mirror.exit, %bb.f, %bb.d, %map_bio.exit, %queue_bio.exit42, %queue_bio.exit
  %.0 = phi i32 [ 0, %queue_bio.exit ], [ 1, %map_bio.exit ], [ 4, %bb.d ], [ 0, %queue_bio.exit42 ], [ 4, %bb.f ], [ 4, %choose_mirror.exit ], [ 4, %bb.m ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @mirror_end_io(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val34 = load i32, ptr %i.a, align 8
  %i.b = trunc i32 %.val34 to i1
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = tail call ptr @dm_per_bio_data(ptr noundef %1, i64 noundef 72) #13 ; 8 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8              ; 2 uses
  %i.g = and i32 %i.f, 262144
  %.not32 = icmp ne i32 %i.g, 0
  %i.h = and i32 %i.f, 255
  %.not33 = icmp eq i32 %i.h, 3
  %or.cond35 = or i1 %.not32, %.not33
  br i1 %or.cond35, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.e, i64 64
  %i.l = load i64, ptr %i.k, align 8
  tail call void @dm_rh_dec(ptr noundef %i.j, i64 noundef %i.l) #13
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.m = load i8, ptr %2, align 1                 ; 2 uses
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 8
  %i.p = and i32 %i.o, 524288
  %.not = icmp ne i32 %i.p, 0
  %.not27 = icmp eq i8 %i.m, 0
  %or.cond = or i1 %.not27, %.not
  br i1 %or.cond, label %bb.m, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @___ratelimit(ptr noundef nonnull @mirror_end_io._rs, ptr noundef nonnull @__func__.mirror_end_io) #13
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 28
  %i.y = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %i.x) #14 ; 0 uses
  tail call fastcc void @fail_mirror(ptr noundef %i.u, i32 noundef 3) #16, !srcloc !20
  %i.z = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 152
  %i.ab = load volatile i32, ptr %i.aa, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [40 x i8], ptr %i.z, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 296
  %i.af = load volatile i32, ptr %i.ae, align 4
  %.not.i.not = icmp eq i32 %i.af, 0
  br i1 %.not.i.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call fastcc i32 @mirror_available(ptr noundef %i.d, ptr noundef %1) #16, !srcloc !21
  %.not31 = icmp eq i32 %i.ag, 0
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = load ptr, ptr %i.q, align 8
  %i.ai = getelementptr i8, ptr %1, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.e, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i16
  %i.am = getelementptr i8, ptr %1, i64 20
  store i16 %i.al, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %1, i64 40
  %i.ao = getelementptr i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(20) %i.an, ptr noundef readonly align 8 dereferenceable(20) %i.ao, i64 20, i1 false)
  %i.ap = getelementptr i8, ptr %1, i64 28
  %i.aq = getelementptr i8, ptr %i.e, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
  store volatile i32 %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr i8, ptr %i.e, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %1, i64 64
  store ptr %i.at, ptr %i.au, align 8
  store ptr null, ptr %i.q, align 8
  %i.av = getelementptr i8, ptr %1, i64 26
  store i8 0, ptr %i.av, align 2
  tail call fastcc void @queue_bio(ptr noundef %i.d, ptr noundef %1, i32 noundef 0) #16, !srcloc !22
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aw = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.d
  %i.ax = getelementptr i8, ptr %i.e, i64 8
  store ptr null, ptr %i.ax, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.b, %bb.c, %bb.m, %bb.k
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.m ], [ 1, %bb.k ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mirror_presuspend(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 104      ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @dm_rh_dirty_log(ptr noundef %i.d) #13 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 148      ; 2 uses
  store volatile i32 1, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %i.b, i64 32       ; 5 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #13
  %i.h = getelementptr i8, ptr %i.b, i64 88       ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #13
  %.not.i68 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %hold_bio.exit
  %.sroa.0.069 = phi ptr [ %.sroa.0.0.copyload, %.lr.ph ], [ %i.j, %hold_bio.exit ] ; 7 uses
  %i.j = load ptr, ptr %.sroa.0.069, align 8      ; 2 uses
  store ptr null, ptr %.sroa.0.069, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #13
  %i.k = load volatile i32, ptr %i.f, align 4
  %.not.i65 = icmp eq i32 %i.k, 0
  br i1 %.not.i65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #13
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = tail call i32 @dm_noflush_suspending(ptr noundef %i.l) #13
  %.not10.i = icmp eq i32 %i.m, 0
  %spec.select.i = select i1 %.not10.i, i8 10, i8 11
  %i.n = getelementptr i8, ptr %.sroa.0.069, i64 26
  store i8 %spec.select.i, ptr %i.n, align 2
  tail call void @bio_endio(ptr noundef nonnull %.sroa.0.069) #13
  br label %hold_bio.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %.sroa.0.069, align 8
  %i.o = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %..i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.o
  store ptr %.sroa.0.069, ptr %..i.i, align 8
  store ptr %.sroa.0.069, ptr %i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #13
  br label %hold_bio.exit

hold_bio.exit:                                    ; preds = %bb.c, %bb.d
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %hold_bio.exit, %bb.a
  %i.p = load ptr, ptr %i.c, align 8
  tail call void @dm_rh_stop_recovery(ptr noundef %i.p) #13
  %i.q = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = tail call i32 @dm_rh_recovery_in_flight(ptr noundef %i.r) #13
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.t = call i64 @prepare_to_wait_event(ptr noundef nonnull @_kmirrord_recovery_stopped, ptr noundef nonnull %1, i32 noundef 2) #13 ; 0 uses
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = call i32 @dm_rh_recovery_in_flight(ptr noundef %i.u) #13
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @schedule() #13
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = call i32 @dm_rh_recovery_in_flight(ptr noundef %i.w) #13
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.g, %bb.f
  call void @finish_wait(ptr noundef nonnull @_kmirrord_recovery_stopped, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %select.unfold
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 %i.aa(ptr noundef %i.e) #13
  %.not41 = icmp eq i32 %i.ab, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ad = getelementptr i8, ptr %i.b, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @__flush_workqueue(ptr noundef %i.ae) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mirror_postsuspend(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @dm_rh_dirty_log(ptr noundef %i.d) #13 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef %i.e) #13
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mirror_resume(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 104      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @dm_rh_dirty_log(ptr noundef %i.d) #13 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 148
  store volatile i32 0, ptr %i.f, align 4
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 %i.i(ptr noundef %i.e) #13
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = load ptr, ptr %i.c, align 8
  tail call void @dm_rh_start_recovery(ptr noundef %i.l) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mirror_status(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, ptr noundef %3, i32 noundef %4) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8              ; 16 uses
  %i.d = getelementptr i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @dm_rh_dirty_log(ptr noundef %i.e) #13 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false), !annotation !10
end_hunk_0
