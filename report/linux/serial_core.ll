Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/serial_core?download=true
inline.NumInlined: 344
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uart_ioctl:bb.a
bb.am:                                            ; preds = %bb.al
  %i.en = tail call fastcc i32 @uart_get_lsr_info(ptr noundef %i.b, ptr noundef %i.c) #21
  br label %.thread

bb.an:                                            ; preds = %bb.al
  %i.eo = tail call fastcc i32 @uart_get_rs485_config(ptr noundef %.val, ptr noundef %i.c) #21, !srcloc !73
  br label %.thread

.thread56:                                        ; preds = %bb.al
  %i.ep = tail call fastcc i32 @uart_set_rs485_config(ptr noundef %0, ptr noundef %.val, ptr noundef %i.c) #21, !srcloc !74
  tail call void @mutex_unlock(ptr noundef %i.ek) #19
  br label %bb.at

bb.ao:                                            ; preds = %bb.al
  %i.eq = tail call fastcc i32 @uart_set_iso7816_config(ptr noundef nonnull %.val, ptr noundef %i.c) #21, !srcloc !75
  br label %.thread

bb.ap:                                            ; preds = %bb.al
  %i.er = tail call fastcc i32 @uart_get_iso7816_config(ptr noundef nonnull %.val, ptr noundef %i.c) #21, !srcloc !76
  br label %.thread

bb.aq:                                            ; preds = %bb.al
  %i.es = getelementptr i8, ptr %.val, i64 304
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %i.et, i64 184
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not44 = icmp eq ptr %i.ev, null
  br i1 %.not44, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ew = tail call i32 %i.ev(ptr noundef nonnull %.val, i32 noundef %1, i64 noundef %2) #19
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.aq
  %.1.ph = phi i32 [ %i.er, %bb.ap ], [ %i.eq, %bb.ao ], [ %i.eo, %bb.an ], [ %i.en, %bb.am ], [ -515, %bb.aq ], [ %i.ew, %bb.ar ]
  tail call void @mutex_unlock(ptr noundef %i.ek) #19
  br label %bb.au

bb.as:                                            ; preds = %bb.ak, %tty_io_error.exit52
  tail call void @mutex_unlock(ptr noundef %i.ek) #19
  br i1 %i.ei, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread56, %bb.as
  %.158 = phi i32 [ %i.ep, %.thread56 ], [ -5, %bb.as ]
  %i.ex = getelementptr i8, ptr %0, i64 168
  tail call void @up_write(ptr noundef %i.ex) #19
  br label %bb.au

bb.au:                                            ; preds = %.thread, %bb.as, %bb.at, %tty_io_error.exit, %uart_wait_modem_status.exit, %uart_do_autoconfig.exit
  %.040 = phi i32 [ %.1.i, %uart_do_autoconfig.exit ], [ -5, %tty_io_error.exit ], [ %.0.i, %uart_wait_modem_status.exit ], [ %.158, %bb.at ], [ -5, %bb.as ], [ %.1.ph, %.thread ]
  ret i32 %.040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_set_termios(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 224
  %i.d = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 256      ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.f) #19
  %i.g = getelementptr i8, ptr %i.b, i64 392
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val, i64 272
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4194304
  %.not39 = icmp eq i64 %i.j, 0
  br i1 %.not39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 249
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %1, i64 25
  %i.n = load i8, ptr %i.m, align 1
  %.not40 = icmp eq i8 %i.l, %i.n
  br i1 %.not40, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 250
  %i.p = load i8, ptr %i.o, align 2
  %i.q = getelementptr i8, ptr %1, i64 26
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp ne i8 %i.p, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.037 = phi i32 [ 31, %bb.b ], [ 7199, %bb.d ], [ 7199, %bb.c ]
  %.036 = phi i1 [ false, %bb.b ], [ %i.s, %bb.d ], [ true, %bb.c ]
  %i.t = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.e, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 264
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %0, i64 260
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %1, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.c, align 8
  %i.ah = load i32, ptr %1, align 4
  %i.ai = xor i32 %i.ah, %i.ag
  %i.aj = and i32 %i.ai, %.037
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond = select i1 %i.ak, i1 true, i1 %.036
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  tail call fastcc void @uart_change_line_settings(ptr noundef %0, ptr noundef %i.b, ptr noundef %1) #21, !srcloc !77
  %i.al = load i32, ptr %i.d, align 8             ; 2 uses
  %i.am = load i32, ptr %i.t, align 4
  %i.an = and i32 %i.am, 4111
  %.not41 = icmp ne i32 %i.an, 0                  ; 2 uses
  %i.ao = and i32 %i.al, 4111
  %i.ap = icmp eq i32 %i.ao, 0                    ; 2 uses
  %or.cond45 = select i1 %.not41, i1 %i.ap, i1 false
  br i1 %or.cond45, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @uart_update_mctrl(ptr noundef nonnull %.val, i32 noundef 0, i32 noundef 6) #21, !srcloc !78
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %or.cond46 = select i1 %.not41, i1 true, i1 %i.ap
  br i1 %or.cond46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not43 = icmp sgt i32 %i.al, -1
  br i1 %.not43, label %.split, label %tty_throttled.exit

tty_throttled.exit:                               ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %0, i64 376
  %i.ar = load volatile i64, ptr %i.aq, align 8
  %.in.i = trunc i64 %i.ar to i1
  br i1 %.in.i, label %.split38, label %.split

.split38:                                         ; preds = %tty_throttled.exit
  tail call fastcc void @uart_update_mctrl(ptr noundef nonnull %.val, i32 noundef 2, i32 noundef 0) #21, !srcloc !79
  br label %bb.m

.split:                                           ; preds = %bb.l, %tty_throttled.exit
  tail call fastcc void @uart_update_mctrl(ptr noundef nonnull %.val, i32 noundef 6, i32 noundef 0) #21, !srcloc !79
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %.split38, %.split, %bb.h, %bb.a
  tail call void @mutex_unlock(ptr noundef %i.f) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_throttle(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 364      ; 3 uses
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %uart_port_deref.exit, label %.lr.ph.i, !prof !30

.lr.ph.i:                                         ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i
  %.058.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = add i32 %.058.i, 1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 %i.f, ptr elementtype(i32) %i.c, i32 %.058.i) #18, !srcloc !31 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %uart_port_ref.exit, label %arch_atomic_try_cmpxchg.exit.i, !prof !25

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %uart_port_deref.exit, label %.lr.ph.i, !prof !32

uart_port_ref.exit:                               ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %i.b, i64 392
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %uart_port_deref.exit, label %bb.b

bb.b:                                             ; preds = %uart_port_ref.exit
  %i.o = getelementptr i8, ptr %0, i64 224
  %i.p = load i32, ptr %i.o, align 8
  %1 = and i32 %i.p, 4096
  %.not19 = icmp eq i32 %1, 0
  %spec.select = select i1 %.not19, i32 32, i32 48
  %i.q = getelementptr i8, ptr %0, i64 232
  %i.r = load i32, ptr %i.q, align 8
  %2 = lshr i32 %i.r, 29
  %3 = and i32 %2, 4
  %.1 = or disjoint i32 %spec.select, %3          ; 3 uses
  %i.s = getelementptr i8, ptr %i.n, i64 280      ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %.1, %i.t
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.n, i64 304
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull %i.n) #19
  %i.z = load i32, ptr %i.s, align 8
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.1, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.ab, %bb.c ], [ %.1, %bb.b ]  ; 2 uses
  %i.ac = and i32 %.2, 4
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uart_update_mctrl(ptr noundef nonnull %i.n, i32 noundef 0, i32 noundef 4) #21, !srcloc !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = and i32 %.2, 16
  %.not23 = icmp eq i32 %i.ad, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 250
  %i.af = load i8, ptr %i.ae, align 2
  tail call void @uart_send_xchar(ptr noundef %0, i8 noundef zeroext %i.af) #21, !srcloc !81
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr i8, ptr %i.n, i64 208     ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 364    ; 2 uses
  %i.aj = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, ptr elementtype(i32) %i.ai) #18, !srcloc !33 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %uart_port_deref.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 368
  %i.ao = tail call i32 @__wake_up(ptr noundef %i.an, i32 noundef 3, i32 noundef 1, ptr noundef null) #19 ; 0 uses
  br label %uart_port_deref.exit

uart_port_deref.exit:                             ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.a, %bb.i, %bb.h, %uart_port_ref.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_unthrottle(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 364      ; 3 uses
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %uart_port_deref.exit, label %.lr.ph.i, !prof !30

.lr.ph.i:                                         ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i
  %.058.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = add i32 %.058.i, 1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 %i.f, ptr elementtype(i32) %i.c, i32 %.058.i) #18, !srcloc !31 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %uart_port_ref.exit, label %arch_atomic_try_cmpxchg.exit.i, !prof !25

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %uart_port_deref.exit, label %.lr.ph.i, !prof !32

uart_port_ref.exit:                               ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %i.b, i64 392
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %uart_port_deref.exit, label %bb.b

bb.b:                                             ; preds = %uart_port_ref.exit
  %i.o = getelementptr i8, ptr %0, i64 224
  %i.p = load i32, ptr %i.o, align 8
  %1 = and i32 %i.p, 4096
  %.not19 = icmp eq i32 %1, 0
  %spec.select = select i1 %.not19, i32 32, i32 48
  %i.q = getelementptr i8, ptr %0, i64 232
  %i.r = load i32, ptr %i.q, align 8
  %2 = lshr i32 %i.r, 29
  %3 = and i32 %2, 4
  %.1 = or disjoint i32 %spec.select, %3          ; 3 uses
  %i.s = getelementptr i8, ptr %i.n, i64 280      ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %.1, %i.t
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.n, i64 304
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull %i.n) #19
  %i.z = load i32, ptr %i.s, align 8
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.1, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.ab, %bb.c ], [ %.1, %bb.b ]  ; 2 uses
  %i.ac = and i32 %.2, 4
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uart_update_mctrl(ptr noundef nonnull %i.n, i32 noundef 4, i32 noundef 0) #21, !srcloc !82
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = and i32 %.2, 16
  %.not23 = icmp eq i32 %i.ad, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 249
  %i.af = load i8, ptr %i.ae, align 1
  tail call void @uart_send_xchar(ptr noundef %0, i8 noundef zeroext %i.af) #21, !srcloc !83
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr i8, ptr %i.n, i64 208     ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 364    ; 2 uses
  %i.aj = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, ptr elementtype(i32) %i.ai) #18, !srcloc !33 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %uart_port_deref.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 368
  %i.ao = tail call i32 @__wake_up(ptr noundef %i.an, i32 noundef 3, i32 noundef 1, ptr noundef null) #19 ; 0 uses
  br label %uart_port_deref.exit

uart_port_deref.exit:                             ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.a, %bb.i, %bb.h, %uart_port_ref.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_stop(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 364      ; 3 uses
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.lr.ph.i.i, !prof !30

.lr.ph.i.i:                                       ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i.i
  %.058.i.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = add i32 %.058.i.i, 1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 %i.f, ptr elementtype(i32) %i.c, i32 %.058.i.i) #18, !srcloc !31 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %uart_port_ref.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !25

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.split, label %.lr.ph.i.i, !prof !32

uart_port_ref.exit.i:                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr i8, ptr %i.b, i64 392
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.split, label %bb.b

bb.b:                                             ; preds = %uart_port_ref.exit.i
  %i.o = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull %i.n) #19
  %i.p = getelementptr i8, ptr %i.n, i64 264      ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.q, i64 74
  %i.s = load i16, ptr %i.r, align 2
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr i8, ptr %i.n, i64 316
  %i.v = load i32, ptr %i.u, align 4
  %.not11.i.i.i.i = icmp eq i32 %i.v, %i.t
  br i1 %.not11.i.i.i.i, label %bb.d, label %.loopexit, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 120
  %i.x = load volatile ptr, ptr %i.w, align 8
  %.not.i.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.q, i64 72
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 256
  %.not9.i.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not9.i.i.i.i, label %.loopexit, label %__uart_port_using_nbcon.exit.i.i.i

__uart_port_using_nbcon.exit.i.i.i:               ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.q, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not10.i.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.not.i.i.i, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %__uart_port_using_nbcon.exit.i.i.i
  %i.ad = tail call zeroext i1 @nbcon_device_try_acquire(ptr noundef nonnull %i.q) #19
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !19
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = tail call zeroext i1 @nbcon_device_try_acquire(ptr noundef %i.ae) #19
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %__uart_port_using_nbcon.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ag = getelementptr i8, ptr %i.n, i64 304
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull %i.n) #19
  %i.ak = load ptr, ptr %i.p, align 8             ; 6 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i9, label %uart_port_unlock_irqrestore.exit.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.al = getelementptr i8, ptr %i.ak, i64 74
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.n, i64 316
  %i.ap = load i32, ptr %i.ao, align 4
  %.not11.i.i.i.i10 = icmp eq i32 %i.ap, %i.an
  br i1 %.not11.i.i.i.i10, label %bb.g, label %uart_port_unlock_irqrestore.exit.i, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %i.ak, i64 120
  %i.ar = load volatile ptr, ptr %i.aq, align 8
  %.not.i.not.i.i.i.i11 = icmp eq ptr %i.ar, null
  br i1 %.not.i.not.i.i.i.i11, label %uart_port_unlock_irqrestore.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.ak, i64 72
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 256
  %.not9.i.i.i.i12 = icmp eq i16 %i.au, 0
  br i1 %.not9.i.i.i.i12, label %uart_port_unlock_irqrestore.exit.i, label %__uart_port_using_nbcon.exit.i.i.i13

__uart_port_using_nbcon.exit.i.i.i13:             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %i.ak, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  %.not10.i.not.i.i.i14 = icmp eq ptr %i.aw, null
  br i1 %.not10.i.not.i.i.i14, label %uart_port_unlock_irqrestore.exit.i, label %bb.i

bb.i:                                             ; preds = %__uart_port_using_nbcon.exit.i.i.i13
  tail call void @nbcon_device_release(ptr noundef nonnull %i.ak) #19
  br label %uart_port_unlock_irqrestore.exit.i

uart_port_unlock_irqrestore.exit.i:               ; preds = %bb.i, %__uart_port_using_nbcon.exit.i.i.i13, %bb.h, %bb.g, %bb.f, %.loopexit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %i.n, i64 noundef %i.o) #19
  %i.ax = getelementptr i8, ptr %i.n, i64 208     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 364    ; 2 uses
  %i.ba = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.az, ptr elementtype(i32) %i.az) #18, !srcloc !33 ; 2 uses
  %i.bb = icmp ult i8 %i.ba, 2
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = trunc nuw i8 %i.ba to i1
  br i1 %i.bc, label %bb.j, label %.split

bb.j:                                             ; preds = %uart_port_unlock_irqrestore.exit.i
  %i.bd = load ptr, ptr %i.ax, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 368
  %i.bf = tail call i32 @__wake_up(ptr noundef %i.be, i32 noundef 3, i32 noundef 1, ptr noundef null) #19 ; 0 uses
  br label %.split

.split:                                           ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %bb.j, %uart_port_unlock_irqrestore.exit.i, %bb.a, %uart_port_ref.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uart_start(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
end_hunk_0
