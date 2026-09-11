Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hpet?download=true
inline.NumInlined: 129
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hpet_ram_write:bb.a
  %i.gy = and i64 %i.gx, 256
  %.not141 = icmp eq i64 %i.gy, 0
  br i1 %.not141, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not142 = icmp eq i32 %i.b, 0
  br i1 %.not142, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @trace_hpet_ram_write_invalid_tn_cmp()
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.bh:                                            ; preds = %bb.bf
  %i.gz = and i64 %2, 4294967295
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.0137 = phi i32 [ 64, %bb.bh ], [ %i.e, %bb.be ] ; 4 uses
  %.0 = phi i64 [ %i.gz, %bb.bh ], [ %2, %bb.be ] ; 2 uses
  %i.ha = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i204 = icmp eq i32 %i.ha, 0
  br i1 %.not.i204, label %trace_hpet_ram_write_tn_cmp.exit, label %bb.bj, !prof !8

bb.bj:                                            ; preds = %bb.bi
  %i.hb = load i16, ptr @_TRACE_HPET_RAM_WRITE_TN_CMP_DSTATE, align 2
  %.not1.i205 = icmp eq i16 %i.hb, 0
  br i1 %.not1.i205, label %trace_hpet_ram_write_tn_cmp.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hc = load i32, ptr @qemu_loglevel, align 4
  %i.hd = and i32 %i.hc, 32768
  %.not2.i206 = icmp eq i32 %i.hd, 0
  br i1 %.not2.i206, label %trace_hpet_ram_write_tn_cmp.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %.val166.pre = load i64, ptr %i.gw, align 8
  br label %trace_hpet_ram_write_tn_cmp.exit

trace_hpet_ram_write_tn_cmp.exit:                 ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %i.he = phi i64 [ %i.gx, %bb.bi ], [ %i.gx, %bb.bj ], [ %i.gx, %bb.bk ], [ %.val166.pre, %bb.bl ] ; 3 uses
  %i.hf = and i64 %i.he, 72
  %or.cond221 = icmp eq i64 %i.hf, 8
  br i1 %or.cond221, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %trace_hpet_ram_write_tn_cmp.exit
  %i.hg = add nsw i32 %.0137, -1
  %or.cond.i208.not = icmp ult i32 %i.hg, %i.d
  br i1 %or.cond.i208.not, label %deposit64.exit209, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #8
  unreachable

deposit64.exit209:                                ; preds = %bb.bm
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = sub nuw nsw i32 64, %.0137
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = lshr i64 -1, %i.hk                      ; 2 uses
  %i.hm = zext nneg i32 %i.b to i64               ; 2 uses
  %i.hn = shl i64 %i.hl, %i.hm
  %i.ho = xor i64 %i.hn, -1
  %i.hp = and i64 %i.hi, %i.ho
  %i.hq = and i64 %i.hl, %.0
  %i.hr = shl i64 %i.hq, %i.hm
  %i.hs = or i64 %i.hp, %i.hr
  store i64 %i.hs, ptr %i.hh, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %trace_hpet_ram_write_tn_cmp.exit, %deposit64.exit209
  %i.ht = and i64 %i.he, 8
  %.not145 = icmp eq i64 %i.ht, 0
  br i1 %.not145, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hu = add nsw i32 %.0137, -1
  %or.cond.i211.not = icmp ult i32 %i.hu, %i.d
  br i1 %or.cond.i211.not, label %deposit64.exit212, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #8
  unreachable

deposit64.exit212:                                ; preds = %bb.bp
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fh, i64 56 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = sub nuw nsw i32 64, %.0137
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 -1, %i.hy                      ; 2 uses
  %i.ia = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ib = shl i64 %i.hz, %i.ia
  %i.ic = xor i64 %i.ib, -1
  %i.id = and i64 %i.hw, %i.ic
  %i.ie = and i64 %i.hz, %.0
  %i.if = shl i64 %i.ie, %i.ia
  %i.ig = or i64 %i.id, %i.if
  store i64 %i.ig, ptr %i.hv, align 8
  br label %bb.br

bb.br:                                            ; preds = %deposit64.exit212, %bb.bo
  %i.ih = and i64 %i.he, -65
  store i64 %i.ih, ptr %i.gw, align 8
  %i.ii = getelementptr i8, ptr %0, i64 3360
  %.val = load i64, ptr %i.ii, align 16
  %i.ij = and i64 %.val, 1
  %.not146 = icmp eq i64 %i.ij, 0
  br i1 %.not146, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @hpet_set_timer(ptr noundef nonnull %i.fh)
  br label %glib_autoptr_cleanup_QemuLockable.exit

bb.bt:                                            ; preds = %bb.aq
  %i.ik = icmp eq i32 %i.c, 0
  br i1 %i.ik, label %bb.bu, label %deposit64.exit215

bb.bu:                                            ; preds = %bb.bt
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #8
  unreachable

deposit64.exit215:                                ; preds = %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  %i.in = sub nuw nsw i32 64, %i.e
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = lshr i64 -1, %i.io                      ; 2 uses
  %i.iq = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ir = shl i64 %i.ip, %i.iq
  %i.is = xor i64 %i.ir, -1
  %i.it = and i64 %i.im, %i.is
  %i.iu = and i64 %i.ip, %2
  %i.iv = shl i64 %i.iu, %i.iq
  %i.iw = or i64 %i.it, %i.iv
  store i64 %i.iw, ptr %i.il, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

.unreachabledefault:                              ; preds = %bb.aq
  unreachable

bb.bv:                                            ; preds = %bb.aq
  %i.ix = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i216 = icmp eq i32 %i.ix, 0
  br i1 %.not.i216, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.bw, !prof !8

bb.bw:                                            ; preds = %bb.bv
  %i.iy = load i16, ptr @_TRACE_HPET_RAM_WRITE_INVALID_DSTATE, align 2
  %.not1.i217 = icmp eq i16 %i.iy, 0
  br i1 %.not1.i217, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load i32, ptr @qemu_loglevel, align 4
  %i.ja = and i32 %i.iz, 32768
  %.not2.i218 = icmp eq i32 %i.ja, 0
  br i1 %.not2.i218, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15) #7
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit.critedge:  ; preds = %bb.q
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.jc = load ptr, ptr %i.jb, align 8
  tail call void @qemu_set_irq(ptr noundef %i.jc, i32 noundef 0) #7
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.je = load ptr, ptr %i.jd, align 16
  tail call void @qemu_set_irq(ptr noundef %i.je, i32 noundef 0) #7
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.jg = load ptr, ptr %i.jf, align 16
  tail call void @qemu_set_irq(ptr noundef %i.jg, i32 noundef 0) #7
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.y, %bb.v, %glib_autoptr_cleanup_QemuLockable.exit.critedge, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.u, %bql_auto_lock.exit177, %bql_auto_lock.exit, %bb.r, %deposit64.exit184, %bb.br, %bb.bs, %bb.bc, %bb.bd, %deposit64.exit215, %bb.bg, %bb.e
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.8, i32 noundef 56) #7
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_irq(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 3 uses
  %i.b = icmp ult i8 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 3360
  %.val40 = load i64, ptr %i.e, align 16
  %i.f = and i64 %.val40, 2
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = icmp eq i8 %i.a, 0
  %3 = select i1 %2, i32 0, i32 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val41 = load i64, ptr %i.g, align 8
  %i.h = trunc i64 %.val41 to i32
  %i.i = lshr i32 %i.h, 9
  %i.j = and i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0 = phi i32 [ %3, %bb.c ], [ %i.j, %._crit_edge ] ; 6 uses
  %i.k = zext nneg i8 %i.a to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %.not33 = icmp eq i32 %1, 0
  br i1 %.not33, label %.thread56, label %bb.e

.thread56:                                        ; preds = %bb.d
  %i.n = xor i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3368 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  %.phi.trans.insert61 = getelementptr i8, ptr %0, i64 24
  %.val43.pre = load i64, ptr %.phi.trans.insert61, align 8
  br label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 2
  %.not34 = icmp eq i64 %i.t, 0
  br i1 %.not34, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3368 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.v, %i.m
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = xor i64 %i.m, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3368 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.val42 = load i64, ptr %i.r, align 8           ; 4 uses
  %i.ab = trunc i64 %.val42 to i32                ; 2 uses
  %i.ac = and i32 %i.ab, 4
  %.not35 = icmp eq i32 %i.ac, 0
  br i1 %.not35, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.d, i64 3360
  %.val = load i64, ptr %i.ad, align 16
  %i.ae = and i64 %.val, 1
  %.not36 = icmp eq i64 %i.ae, 0
  br i1 %.not36, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ab, 16384
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc i64 %i.ah to i32
  tail call void @address_space_stl_le(ptr noundef nonnull @address_space_memory, i64 noundef %i.ai, i32 noundef %i.aj, i64 4294967296, ptr noundef null) #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = and i64 %.val42, 2
  %.not39 = icmp eq i64 %i.ak, 0
  %i.al = tail call zeroext i1 @bql_locked() #7   ; 2 uses
  br i1 %.not39, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bql_auto_lock.exit.thread, label %bb.m

bql_auto_lock.exit.thread:                        ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.an = zext nneg i32 %.0 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ap, i32 noundef 1) #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.m:                                             ; preds = %bb.l
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.4, i32 noundef 225) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.ar = zext nneg i32 %.0 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  tail call void @qemu_set_irq(ptr noundef %i.at, i32 noundef 1) #7
  tail call void @bql_unlock() #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.n:                                             ; preds = %bb.k
  br i1 %i.al, label %glib_autoptr_cleanup_BQLLockAuto.exit.critedge, label %bql_auto_lock.exit49

bql_auto_lock.exit49:                             ; preds = %bb.n
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.4, i32 noundef 228) #7
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.av = zext nneg i32 %.0 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.ax, i32 noundef 1) #7
  tail call void @qemu_set_irq(ptr noundef %i.ax, i32 noundef 0) #7
  tail call void @bql_unlock() #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.o:                                             ; preds = %.thread56, %bb.h, %bb.g
  %.val43 = phi i64 [ %.val43.pre, %.thread56 ], [ %.val42, %bb.h ], [ %.val42, %bb.g ]
  %i.ay = and i64 %.val43, 16384
  %.not37 = icmp eq i64 %i.ay, 0
  br i1 %.not37, label %bb.p, label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.p:                                             ; preds = %bb.o
  %i.az = tail call zeroext i1 @bql_locked() #7
  br i1 %i.az, label %bql_auto_lock.exit53.thread, label %bb.q

bql_auto_lock.exit53.thread:                      ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.bb = zext nneg i32 %.0 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bd, i32 noundef 0) #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

bb.q:                                             ; preds = %bb.p
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.4, i32 noundef 233) #7
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.bf = zext nneg i32 %.0 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bh, i32 noundef 0) #7
  tail call void @bql_unlock() #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

glib_autoptr_cleanup_BQLLockAuto.exit.critedge:   ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  %i.bj = zext nneg i32 %.0 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.bl, i32 noundef 1) #7
  tail call void @qemu_set_irq(ptr noundef %i.bl, i32 noundef 0) #7
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

glib_autoptr_cleanup_BQLLockAuto.exit:            ; preds = %glib_autoptr_cleanup_BQLLockAuto.exit.critedge, %bb.q, %bql_auto_lock.exit53.thread, %bql_auto_lock.exit49, %bb.m, %bql_auto_lock.exit.thread, %bb.o, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @hpet_set_timer(ptr nofree noundef captures(none) initializes((48, 56), (64, 65)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.e = load i64, ptr %i.d, align 16
  %i.f = add i64 %i.e, %i.c
  %i.g = udiv i64 %i.f, 10                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.k, align 8             ; 3 uses
  %i.l = and i64 %.val, 256
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i64 %i.g, 2305843004918726656
  %i.n = and i64 %i.j, 4294967295
  %i.o = or disjoint i64 %i.n, %i.m               ; 3 uses
  %i.p = icmp samesign ult i64 %i.o, %i.g
  %i.q = add nuw nsw i64 %i.o, 4294967296
  %spec.select.i = select i1 %i.p, i64 %i.q, i64 %i.o ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %spec.select.i, ptr %i.r, align 8
  %i.s = and i64 %.val, 8
  %.not14 = icmp eq i64 %i.s, 0
  br i1 %.not14, label %bb.c, label %.thread30

.thread30:                                        ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 1136
  %.val9.i1833 = load i64, ptr %i.u, align 16
  %i.v = mul i64 %spec.select.i, 10
  %i.w = sub i64 %i.v, %.val9.i1833
  br label %bb.e

end_hunk_0
