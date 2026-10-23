Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/keyboard?download=true
inline.NumInlined: 207
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@kbd_event:bb.a

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i.i140.i
  %.pre-phi.i.i142.i = phi i64 [ %.pre.i.i141.i, %._crit_edge.i.i140.i ], [ %i.qi, %bb.cv ]
  %i.qm = add nuw i32 %i.qa, 1
  store i32 %i.qm, ptr %i.pz, align 8
  %i.qn = getelementptr i8, ptr %i.py, i64 32
  %i.qo = getelementptr i8, ptr %i.qn, i64 %.pre-phi.i.i142.i
  store i8 %i.px, ptr %i.qo, align 1
  br label %put_queue.exit143.i

bb.cx:                                            ; preds = %put_queue.exit139.i
  %i.qp = call i64 @__tty_insert_flip_string_flags(ptr noundef %i.dd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext false, i64 noundef 1) #18 ; 0 uses
  br label %put_queue.exit143.i

put_queue.exit143.i:                              ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %put_queue.exit143.i, %put_queue.exit.i22
  call void @tty_flip_buffer_push(ptr noundef %i.dd) #18
  br label %bb.cy

bb.cy:                                            ; preds = %.sink.split.i, %emulate_raw.exit.thread.i
  %.0.i21 = phi i1 [ %i.dv, %emulate_raw.exit.thread.i ], [ true, %.sink.split.i ] ; 2 uses
  %.not118.i = icmp eq i32 %3, 0                  ; 3 uses
  %i.qq = zext nneg i32 %2 to i64                 ; 6 uses
  br i1 %.not118.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @key_down, i64 range(i64 0, 768) %i.qq) #19, !srcloc !44
  br label %arch_set_bit.exit.i

bb.da:                                            ; preds = %bb.cy
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @key_down, i64 range(i64 0, 768) %i.qq) #19, !srcloc !45
  br label %arch_set_bit.exit.i

arch_set_bit.exit.i:                              ; preds = %bb.da, %bb.cz
  %i.qr = load i8, ptr @rep, align 1, !range !20, !noundef !21
  %i.qs = trunc nuw i8 %i.qr to i1
  %.pre153.i = load ptr, ptr @kbd, align 8        ; 4 uses
  br i1 %i.qs, label %bb.db, label %bb.df

bb.db:                                            ; preds = %arch_set_bit.exit.i
  %i.qt = getelementptr i8, ptr %.pre153.i, i64 4
  %.val.i = load i8, ptr %i.qt, align 1
  %i.qu = and i8 %.val.i, 4
  %.not119.i = icmp eq i8 %i.qu, 0
  br i1 %.not119.i, label %kbd_keycode.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %.not112.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qv = getelementptr i8, ptr %i.dj, i64 236
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = and i32 %i.qw, 8
  %.not120.i = icmp eq i32 %i.qx, 0
  br i1 %.not120.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qy = call i32 @tty_chars_in_buffer(ptr noundef nonnull %i.dj) #18
  %.not121.i = icmp eq i32 %i.qy, 0
  br i1 %.not121.i, label %._crit_edge.i, label %kbd_keycode.exit

._crit_edge.i:                                    ; preds = %bb.de
  %.pre.i = load ptr, ptr @kbd, align 8
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i, %bb.dd, %bb.dc, %arch_set_bit.exit.i
  %i.qz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.pre153.i, %bb.dd ], [ %.pre153.i, %bb.dc ], [ %.pre153.i, %arch_set_bit.exit.i ] ; 3 uses
  %i.ra = load i32, ptr @shift_state, align 4
  %i.rb = getelementptr i8, ptr %i.qz, i64 1
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = zext i8 %i.rc to i32
  %i.re = or i32 %i.ra, %i.rd                     ; 2 uses
  %i.rf = load i8, ptr %i.qz, align 1
  %i.rg = zext i8 %i.rf to i32                    ; 2 uses
  %i.rh = xor i32 %i.re, %i.rg                    ; 2 uses
  store i32 %i.rh, ptr %i.df, align 4
  %i.ri = getelementptr i8, ptr %i.qz, i64 2
  %i.rj = load i16, ptr %i.ri, align 1
  %i.rk = lshr i16 %i.rj, 1
  %i.rl = and i16 %i.rk, 15
  %i.rm = zext nneg i16 %i.rl to i32
  store i32 %i.rm, ptr %i.dg, align 8
  %i.rn = sext i32 %i.rh to i64                   ; 2 uses
  %i.ro = getelementptr [8 x i8], ptr @key_maps, i64 %i.rn
  %i.rp = load ptr, ptr %i.ro, align 8            ; 6 uses
  %i.rq = icmp ne i32 %i.re, %i.rg
  %i.rr = icmp samesign ult i32 %2, 256           ; 2 uses
  %or.cond3.i = select i1 %i.rq, i1 %i.rr, i1 false
  br i1 %or.cond3.i, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %.not122.i = icmp eq ptr %i.rp, null
  br i1 %.not122.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rs = getelementptr [2 x i8], ptr %i.rp, i64 %i.qq
  %i.rt = load i16, ptr %i.rs, align 2
  %i.ru = icmp eq i16 %i.rt, 512
  %i.rv = load ptr, ptr @key_maps, align 16       ; 2 uses
  %i.rw = icmp ne ptr %i.rv, null
  %or.cond5.i = select i1 %i.ru, i1 %i.rw, i1 false
  br i1 %or.cond5.i, label %._crit_edge154.i, label %bb.dl

bb.di:                                            ; preds = %bb.dg
  %.old.i = load ptr, ptr @key_maps, align 16     ; 2 uses
  %.old4.not.i = icmp eq ptr %.old.i, null
  br i1 %.old4.not.i, label %bb.dl, label %._crit_edge154.i

._crit_edge154.i:                                 ; preds = %bb.di, %bb.dh
  %i.rx = phi ptr [ %i.rv, %bb.dh ], [ %.old.i, %bb.di ] ; 2 uses
  %i.ry = getelementptr [2 x i8], ptr %i.rx, i64 %i.qq
  %i.rz = load i16, ptr %i.ry, align 2            ; 2 uses
  %i.sa = icmp ugt i16 %i.rz, -4097
  br i1 %i.sa, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %._crit_edge154.i
  %i.sb = lshr i16 %i.rz, 8
  %trunc.i = trunc nuw i16 %i.sb to i8
  switch i8 %trunc.i, label %bb.dl [
    i8 -10, label %bb.dk
    i8 -1, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %._crit_edge154.i, %bb.di, %bb.dh, %bb.df
  %.1.i = phi ptr [ %i.rp, %bb.df ], [ %i.rp, %bb.dh ], [ null, %bb.di ], [ %i.rx, %bb.dk ], [ %i.rp, %bb.dj ], [ %i.rp, %._crit_edge154.i ] ; 2 uses
  %i.sc = call i32 @atomic_notifier_call_chain(ptr noundef @keyboard_notifier_list, i64 noundef 1, ptr noundef nonnull %4) #18
  %i.sd = icmp ne i32 %i.sc, 32769
  %i.se = icmp ne ptr %.1.i, null
  %or.cond8.i = select i1 %i.sd, i1 %i.se, i1 false
  br i1 %or.cond8.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sf = call i32 @atomic_notifier_call_chain(ptr noundef @keyboard_notifier_list, i64 noundef 2, ptr noundef nonnull %4) #18 ; 0 uses
  store i32 0, ptr @shift_state, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(9) @shift_down, i8 0, i64 9, i1 false)
  %i.sg = call i64 @_find_next_bit(ptr noundef @key_down, i64 noundef 256, i64 noundef range(i64 0, 498) 0) #18 ; 2 uses
  %i.sh = and i64 %i.sg, 4294967040
  %i.si = icmp eq i64 %i.sh, 0
  br i1 %i.si, label %.lr.ph.i.i, label %do_compute_shiftstate.exit.i

.lr.ph.i.i:                                       ; preds = %bb.dm, %bb.do
  %i.sj = phi i64 [ %i.tc, %bb.do ], [ %i.sg, %bb.dm ] ; 2 uses
  %i.sk = load ptr, ptr @key_maps, align 16
  %i.sl = and i64 %i.sj, 255
  %i.sm = getelementptr [2 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = load i16, ptr %i.sm, align 2            ; 2 uses
  %i.so = lshr i16 %i.sn, 8
  %i.sp = trunc nuw i16 %i.so to i8
  switch i8 %i.sp, label %bb.do [
    i8 -9, label %bb.dn
    i8 -4, label %bb.dn
  ]

bb.dn:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.sq = and i16 %i.sn, 255                      ; 2 uses
  %i.sr = icmp eq i16 %i.sq, 8
  %narrow.i.i = select i1 %i.sr, i16 0, i16 %i.sq
  %i.ss = zext nneg i16 %narrow.i.i to i64        ; 2 uses
  %i.st = getelementptr i8, ptr @shift_down, i64 %i.ss ; 2 uses
  %i.su = load i8, ptr %i.st, align 1
  %i.sv = add i8 %i.su, 1
  store i8 %i.sv, ptr %i.st, align 1
  %i.sw = shl nuw i64 1, %i.ss
  %i.sx = load i32, ptr @shift_state, align 4
  %i.sy = trunc i64 %i.sw to i32
  %i.sz = or i32 %i.sx, %i.sy
  store i32 %i.sz, ptr @shift_state, align 4
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph.i.i
  %i.ta = add nuw nsw i64 %i.sj, 1
  %i.tb = and i64 %i.ta, 4294967295
  %i.tc = call i64 @_find_next_bit(ptr noundef @key_down, i64 noundef 256, i64 noundef range(i64 0, 498) %i.tb) #18 ; 2 uses
  %i.td = and i64 %i.tc, 4294967040
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %.lr.ph.i.i, label %do_compute_shiftstate.exit.i, !llvm.loop !0

do_compute_shiftstate.exit.i:                     ; preds = %bb.do, %bb.dm
  %i.tf = load ptr, ptr @kbd, align 8
  %i.tg = getelementptr i8, ptr %i.tf, i64 1
  store i8 0, ptr %i.tg, align 1
  br label %kbd_keycode.exit

bb.dp:                                            ; preds = %bb.dl
  br i1 %i.rr, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.th = add nsw i32 %2, -497
  %or.cond11.i = icmp ult i32 %i.th, 8
  br i1 %or.cond11.i, label %.thread.i, label %kbd_keycode.exit

.thread.i:                                        ; preds = %bb.dq
  %i.ti = trunc nuw nsw i32 %2 to i16
  %i.tj = add nuw nsw i16 %i.ti, -1008
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dp
  %i.tk = getelementptr [2 x i8], ptr %.1.i, i64 %i.qq
  %i.tl = load i16, ptr %i.tk, align 2            ; 3 uses
  %i.tm = zext i16 %i.tl to i32                   ; 2 uses
  %i.tn = icmp ult i16 %i.tl, -4096
  br i1 %i.tn, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.tm, ptr %i.dh, align 4
  %i.to = call i32 @atomic_notifier_call_chain(ptr noundef @keyboard_notifier_list, i64 noundef 3, ptr noundef nonnull %4) #18
  %.not127.i = icmp eq i32 %i.to, 32769
  %i.tp = or i1 %.0.i21, %.not127.i
  %or.cond129.i = or i1 %.not118.i, %i.tp
  br i1 %or.cond129.i, label %kbd_keycode.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tq = load ptr, ptr @kbd, align 8
  %i.tr = getelementptr i8, ptr %i.tq, i64 2
  %i.ts = load i16, ptr %i.tr, align 1
  %i.tt = and i16 %i.ts, 28672
  %i.tu = icmp eq i16 %i.tt, 16384
  br i1 %i.tu, label %kbd_keycode.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call fastcc void @k_unicode(ptr noundef %i.dd, i32 noundef %i.tm, i8 noundef zeroext 0) #23, !srcloc !46
  br label %kbd_keycode.exit

bb.dv:                                            ; preds = %bb.dr, %.thread.i
  %.0100147.i = phi i16 [ %i.tj, %.thread.i ], [ %i.tl, %bb.dr ] ; 4 uses
  %i.tv = lshr i16 %.0100147.i, 8
  %i.tw = trunc nuw i16 %i.tv to i8
  %i.tx = add nsw i8 %i.tw, 16                    ; 2 uses
  %i.ty = icmp eq i8 %i.tx, 11
  br i1 %i.ty, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.tz = load ptr, ptr @kbd, align 8
  %i.ua = getelementptr i8, ptr %i.tz, i64 2
  %.val131.i = load i16, ptr %i.ua, align 1
  %i.ub = and i16 %.val131.i, 8
  %.not123.i = icmp eq i16 %i.ub, 0
  br i1 %.not123.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uc = xor i64 %i.rn, 1
  %i.ud = getelementptr [8 x i8], ptr @key_maps, i64 %i.uc
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  %.not124.i = icmp eq ptr %i.ue, null
  br i1 %.not124.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uf = getelementptr [2 x i8], ptr %i.ue, i64 %i.qq
  %i.ug = load i16, ptr %i.uf, align 2
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dv
  %.1101.i = phi i16 [ %i.ug, %bb.dy ], [ %.0100147.i, %bb.dx ], [ %.0100147.i, %bb.dw ], [ %.0100147.i, %bb.dv ] ; 2 uses
  %.098.i = phi i8 [ 0, %bb.dy ], [ 0, %bb.dx ], [ 0, %bb.dw ], [ %i.tx, %bb.dv ] ; 4 uses
  %i.uh = zext i16 %.1101.i to i32
  store i32 %i.uh, ptr %i.dh, align 4
  %i.ui = call i32 @atomic_notifier_call_chain(ptr noundef @keyboard_notifier_list, i64 noundef 4, ptr noundef nonnull %4) #18
  %i.uj = icmp eq i32 %i.ui, 32769
  br i1 %i.uj, label %kbd_keycode.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %.0.i21, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uk = load ptr, ptr @kbd, align 8
  %i.ul = getelementptr i8, ptr %i.uk, i64 2
  %i.um = load i16, ptr %i.ul, align 1
  %.fr151.i = freeze i16 %i.um
  %i.un = and i16 %.fr151.i, 28672
  %.not152.i = icmp eq i16 %i.un, 16384
  br i1 %.not152.i, label %switch.early.test.i, label %bb.ed

switch.early.test.i:                              ; preds = %bb.eb
  switch i8 %.098.i, label %kbd_keycode.exit [
    i8 7, label %bb.ed
    i8 2, label %bb.ed
  ]

bb.ec:                                            ; preds = %bb.ea
  switch i8 %.098.i, label %kbd_keycode.exit [
    i8 2, label %bb.ed
    i8 7, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec, %bb.ec, %switch.early.test.i, %switch.early.test.i, %bb.eb
  %i.uo = zext nneg i8 %.098.i to i64
  %i.up = getelementptr [8 x i8], ptr @k_handler, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = trunc i16 %.1101.i to i8
  %i.us = zext i1 %.not118.i to i8
  call void %i.uq(ptr noundef %i.dd, i8 noundef zeroext %i.ur, i8 noundef zeroext %i.us) #18, !inline_history !43
  %i.ut = load ptr, ptr @kbd, align 8
  %i.uu = getelementptr i8, ptr %i.ut, i64 2
  %i.uv = load i16, ptr %i.uu, align 1
  %i.uw = lshr i16 %i.uv, 1
  %i.ux = and i16 %i.uw, 15
  %i.uy = zext nneg i16 %i.ux to i32
  store i32 %i.uy, ptr %i.dg, align 8
  %i.uz = call i32 @atomic_notifier_call_chain(ptr noundef @keyboard_notifier_list, i64 noundef 5, ptr noundef nonnull %4) #18 ; 0 uses
  %.not126.i = icmp eq i8 %.098.i, 12
  br i1 %.not126.i, label %kbd_keycode.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.va = load ptr, ptr @kbd, align 8
  %i.vb = getelementptr i8, ptr %i.va, i64 1
  store i8 0, ptr %i.vb, align 1
  br label %kbd_keycode.exit

kbd_keycode.exit:                                 ; preds = %bb.db, %bb.de, %do_compute_shiftstate.exit.i, %bb.dq, %bb.ds, %bb.dt, %bb.du, %bb.dz, %switch.early.test.i, %bb.ec, %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %kbd_rawcode.exit.thread

kbd_rawcode.exit.thread:                          ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %kbd_is_hw_raw.exit, %bb.f, %put_queue.exit.i, %kbd_keycode.exit, %kbd_rawcode.exit
  call void @_raw_spin_unlock(ptr noundef @kbd_event_lock) #18
  %i.vc = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8), i64 0, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8)) #19, !srcloc !15 ; 2 uses
  %i.vd = icmp ult i8 %i.vc, 2
  call void @llvm.assume(i1 %i.vd)
  %i.ve = trunc nuw i8 %i.vc to i1
  br i1 %i.ve, label %tasklet_schedule.exit, label %bb.ef

bb.ef:                                            ; preds = %kbd_rawcode.exit.thread
  call void @__tasklet_schedule(ptr noundef @keyboard_tasklet) #18
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %kbd_rawcode.exit.thread, %bb.ef
  store i32 1, ptr @do_poke_blanked_console, align 4
  call void @schedule_console_callback() #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @kbd_match(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 262144
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i64, ptr %i.a, align 8
  %i.e = and i64 %i.d, 2
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.g = tail call i64 @_find_next_bit(ptr noundef %i.f, i64 noundef 256, i64 noundef 0) #18
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @_find_next_bit(ptr noundef %i.f, i64 noundef 507, i64 noundef 497) #18
  %i.j = icmp ult i64 %i.i, 507
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kbd_connect(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef 80) #21 ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %__free_kfree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 32
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 16
  store ptr @.str.3, ptr %i.e, align 8
  %i.f = tail call i32 @input_register_handle(ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @input_open_device(ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %__free_kfree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @input_unregister_handle(ptr noundef nonnull %i.b) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.d ]  ; 2 uses
  %i.h = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.h, label %__free_kfree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @kfree(ptr noundef nonnull %i.b) #18
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.c, %bb.a, %bb.e, %bb.f
  %.030 = phi i32 [ %.0, %bb.f ], [ %.0, %bb.e ], [ 0, %bb.c ], [ -12, %bb.a ]
  ret i32 %.030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kbd_disconnect(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @input_close_device(ptr noundef %0) #18
  tail call void @input_unregister_handle(ptr noundef %0) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kbd_start(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 16), ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 16)) #19, !inline_history !2, !srcloc !22
  tail call void @tasklet_unlock_wait(ptr noundef @keyboard_tasklet) #18, !inline_history !3
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #19, !inline_history !3, !srcloc !23
  %i.a = load i32, ptr @ledstate, align 4         ; 3 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %kbd_update_leds_helper.exit, label %bb.b

end_hunk_0
