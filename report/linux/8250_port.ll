Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/8250_port?download=true
inline.NumInlined: 511
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@uart_handle_break:bb.a
  store i64 %i.r, ptr %i.o, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  store i64 0, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 272
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 4
  %.not18 = icmp eq i64 %i.u, 0
  br i1 %.not18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.b, i64 136
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @do_SAK(ptr noundef %i.w) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i16 @serial8250_rx_chars(ptr noundef %0, i16 noundef zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  tail call void @serial8250_read_char(ptr noundef %0, i16 noundef zeroext %1) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @serial8250_read_char(ptr noundef %0, i16 noundef zeroext %i.g) #15
  %i.b = add nsw i32 %i.d, -1                     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 255, %bb.a ], [ %i.b, %bb.b ]
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call i32 %i.e(ptr noundef %0, i32 noundef 5) #13, !inline_history !7 ; 2 uses
  %i.g = trunc i32 %i.f to i16                    ; 2 uses
  %i.h = and i32 %i.f, 17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !8

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @tty_flip_buffer_push(ptr noundef %i.j) #13
  ret i16 %i.g
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @serial8250_tx_chars(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 192
  %i.d = load i8, ptr %i.c, align 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uart_xchar_out(ptr noundef %0, i32 noundef 0) #13
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %uart_tx_stopped.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 404
  %i.h = load i8, ptr %i.g, align 4, !range !32, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %uart_tx_stopped.exit.thread, label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %bb.c, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 284
  %i.k = load i8, ptr %i.j, align 4, !range !32, !noundef !33
  %.not34 = icmp eq i8 %i.k, 0
  br i1 %.not34, label %bb.e, label %uart_tx_stopped.exit.thread

uart_tx_stopped.exit.thread:                      ; preds = %bb.d, %uart_tx_stopped.exit
  tail call void @serial8250_stop_tx(ptr noundef %0) #15, !srcloc !46
  br label %bb.q

bb.e:                                             ; preds = %uart_tx_stopped.exit
  %i.l = getelementptr i8, ptr %i.b, i64 312      ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.b, i64 316      ; 4 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @__stop_tx(ptr noundef %0) #15, !srcloc !47
  br label %bb.q

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 592
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 236        ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 32
  %i.v = getelementptr i8, ptr %0, i64 588
  %i.w = getelementptr i8, ptr %0, i64 584        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %i.x = phi i32 [ %i.o, %.lr.ph ], [ %i.bj, %.backedge ]
  %i.y = phi ptr [ %i.n, %.lr.ph ], [ %i.bi, %.backedge ] ; 2 uses
  %i.z = phi ptr [ %i.b, %.lr.ph ], [ %i.bf, %.backedge ] ; 2 uses
  %.052 = phi i32 [ %i.s, %.lr.ph ], [ %.0.be, %.backedge ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 328
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.z, i64 320
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, %i.x
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !48
  %i.ai = load i32, ptr %i.y, align 4
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.y, align 4
  %i.ak = load i32, ptr %i.t, align 4
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.t, align 4
  %i.am = zext i8 %i.ah to i32
  %i.an = load ptr, ptr %i.u, align 8
  tail call void %i.an(ptr noundef %0, i32 noundef 0, i32 noundef %i.am) #13, !inline_history !0
  %i.ao = load i16, ptr %i.v, align 4
  %i.ap = and i16 %i.ao, 32
  %.not36 = icmp eq i16 %i.ap, 0
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = tail call i32 %i.aq(ptr noundef %0, i32 noundef 7) #13, !inline_history !7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = load i32, ptr %i.w, align 8             ; 2 uses
  %i.at = and i32 %i.as, 16384
  %.not37 = icmp eq i32 %i.at, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = tail call i32 %i.au(ptr noundef %0, i32 noundef 5) #13, !inline_history !7
  %i.aw = and i32 %i.av, 96
  %i.ax = icmp eq i32 %i.aw, 96
  br i1 %i.ax, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.w, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %i.ay = phi i32 [ %.pre, %._crit_edge ], [ %i.as, %bb.i ]
  %i.az = and i32 %i.ay, 131072
  %.not38 = icmp eq i32 %i.az, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.q, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %0, i32 noundef 5) #13, !inline_history !7
  %i.bc = and i32 %i.bb, 32
  %.not39 = icmp ne i32 %i.bc, 0
  %i.bd = add i32 %.052, -1                       ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %or.cond = select i1 %.not39, i1 %i.be, i1 false
  br i1 %or.cond, label %.backedge, label %.thread

bb.m:                                             ; preds = %bb.k
  %.old = add i32 %.052, -1                       ; 2 uses
  %.old50 = icmp sgt i32 %.old, 0
  br i1 %.old50, label %.backedge, label %.thread

.backedge:                                        ; preds = %bb.m, %bb.l
  %.0.be = phi i32 [ %.old, %bb.m ], [ %i.bd, %bb.l ]
  %i.bf = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 312
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bf, i64 316    ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not49 = icmp eq i32 %i.bh, %i.bj
  br i1 %.not49, label %.thread, label %bb.g, !llvm.loop !45

.thread:                                          ; preds = %bb.m, %bb.j, %bb.l, %.backedge
  %.pre57 = load i32, ptr %i.n, align 4           ; 2 uses
  %.pre56 = load i32, ptr %i.l, align 8           ; 2 uses
  %i.bk = sub i32 %.pre56, %.pre57
  %i.bl = icmp ult i32 %i.bk, 256
  br i1 %i.bl, label %bb.n, label %1

bb.n:                                             ; preds = %.thread
  tail call void @uart_write_wakeup(ptr noundef %0) #13
  %.pre58 = load i32, ptr %i.l, align 8
  %.pre59 = load i32, ptr %i.n, align 4
  br label %1

1:                                                ; preds = %bb.n, %.thread
  %2 = phi i32 [ %.pre59, %bb.n ], [ %.pre57, %.thread ]
  %3 = phi i32 [ %.pre58, %bb.n ], [ %.pre56, %.thread ]
  %4 = icmp eq i32 %3, %2
  br i1 %4, label %bb.o, label %bb.q

bb.o:                                             ; preds = %1
  %i.bm = getelementptr i8, ptr %0, i64 584
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 32768
  %.not40 = icmp eq i32 %i.bo, 0
  br i1 %.not40, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @__stop_tx(ptr noundef %0) #15, !srcloc !49
  br label %bb.q

bb.q:                                             ; preds = %1, %bb.o, %bb.p, %bb.f, %uart_tx_stopped.exit.thread, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @uart_xchar_out(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial8250_stop_tx(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32768
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %serial8250_rpm_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @__pm_runtime_resume(ptr noundef %i.e, i32 noundef 4) #13 ; 0 uses
  br label %serial8250_rpm_get.exit

serial8250_rpm_get.exit:                          ; preds = %bb.a, %bb.b
  tail call fastcc void @__stop_tx(ptr noundef %0) #15, !srcloc !51
  %i.g = getelementptr i8, ptr %0, i64 296
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 10
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %serial8250_rpm_get.exit
  %i.j = getelementptr i8, ptr %0, i64 596        ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = or i8 %i.k, 2                            ; 2 uses
  store i8 %i.l, ptr %i.j, align 4
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %0, i32 noundef 7, i32 noundef 0) #13, !inline_history !50
  %i.p = load ptr, ptr %i.n, align 8
  tail call void %i.p(ptr noundef %0, i32 noundef 5, i32 noundef range(i32 0, 256) %i.m) #13, !inline_history !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %serial8250_rpm_get.exit
  %i.q = load i32, ptr %i.a, align 8
  %i.r = and i32 %i.q, 32768
  %.not.i7 = icmp eq i32 %i.r, 0
  br i1 %.not.i7, label %serial8250_rpm_put.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i64 @ktime_get_mono_fast_ns() #13
  %i.v = getelementptr i8, ptr %i.t, i64 496
  store volatile i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = tail call i64 @ktime_get_mono_fast_ns() #13
  %i.y = getelementptr i8, ptr %i.w, i64 496
  store volatile i64 %i.x, ptr %i.y, align 8
  %i.z = tail call i32 @__pm_runtime_suspend(ptr noundef %i.w, i32 noundef 13) #13 ; 0 uses
  br label %serial8250_rpm_put.exit

serial8250_rpm_put.exit:                          ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__stop_tx(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %__stop_tx_rs485.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 624        ; 2 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %0, i32 noundef 5) #13, !inline_history !9
  %i.h = trunc i32 %i.g to i16
  %i.i = or i16 %i.d, %i.h                        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 626
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.i, %i.k
  store i16 %i.l, ptr %i.c, align 8
  %i.m = zext i16 %i.i to i32                     ; 2 uses
  %i.n = and i32 %i.m, 32
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %serial8250_clear_THRI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.m, 64
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 584
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 262144
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %serial8250_clear_THRI.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 292
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = add i32 %i.t, 6
  %i.v = udiv i32 %i.u, 7
  %i.w = add i32 %i.v, %i.t
  %i.x = zext i32 %i.w to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c
  %.012 = phi i64 [ 0, %bb.c ], [ %i.x, %bb.e ]
  %i.y = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 408
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 1000000
  %i.ad = add nuw nsw i64 %i.ac, %.012            ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ae = getelementptr i8, ptr %i.y, i64 80      ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 160
  store ptr %i.ae, ptr %i.af, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %i.ae, i64 noundef range(i64 0, 4294971589967296) %i.ad, i64 noundef 0, i32 noundef 1) #13
  br label %__stop_tx_rs485.exit

bb.g:                                             ; preds = %.critedge
  %i.ag = getelementptr i8, ptr %0, i64 680
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef %0, i1 noundef zeroext true) #13, !inline_history !52
  %i.ai = getelementptr i8, ptr %i.y, i64 160
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.y, i64 176     ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = or i8 %i.ak, 1
  store i8 %i.al, ptr %i.aj, align 8
  br label %__stop_tx_rs485.exit

__stop_tx_rs485.exit:                             ; preds = %bb.g, %bb.f, %bb.a
  %i.am = getelementptr i8, ptr %0, i64 598       ; 2 uses
  %i.an = load i8, ptr %i.am, align 2             ; 2 uses
  %i.ao = and i8 %i.an, 2
  %.not.i16.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i16.not, label %serial8250_clear_THRI.exit, label %bb.h

bb.h:                                             ; preds = %__stop_tx_rs485.exit
  %i.ap = and i8 %i.an, -3                        ; 2 uses
  store i8 %i.ap, ptr %i.am, align 2
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef %0, i32 noundef 1, i32 noundef %i.aq) #13, !inline_history !53
  %i.at = getelementptr i8, ptr %0, i64 584
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 32768
  %.not.i17 = icmp eq i32 %i.av, 0
  br i1 %.not.i17, label %serial8250_clear_THRI.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %0, i64 604       ; 2 uses
  %i.ax = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aw, i32 0, ptr elementtype(i32) %i.aw) #16, !srcloc !54
  %i.ay = and i32 %i.ax, 255
  %.not10.i = icmp eq i32 %i.ay, 0
  br i1 %.not10.i, label %serial8250_clear_THRI.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %0, i64 344       ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i64 @ktime_get_mono_fast_ns() #13
  %i.bc = getelementptr i8, ptr %i.ba, i64 496
  store volatile i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.be = tail call i64 @ktime_get_mono_fast_ns() #13
  %i.bf = getelementptr i8, ptr %i.bd, i64 496
  store volatile i64 %i.be, ptr %i.bf, align 8
  %i.bg = tail call i32 @__pm_runtime_suspend(ptr noundef %i.bd, i32 noundef 13) #13 ; 0 uses
  br label %serial8250_clear_THRI.exit

serial8250_clear_THRI.exit:                       ; preds = %bb.j, %bb.i, %bb.h, %__stop_tx_rs485.exit, %bb.b, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @serial8250_modem_status(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 %i.b(ptr noundef %0, i32 noundef 6) #13, !inline_history !7
  %i.d = getelementptr i8, ptr %0, i64 628        ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32
  %i.g = or i32 %i.c, %i.f                        ; 8 uses
  store i8 0, ptr %i.d, align 4
  %i.h = and i32 %i.g, 15
  %.not = icmp eq i32 %i.h, 0
end_hunk_0
