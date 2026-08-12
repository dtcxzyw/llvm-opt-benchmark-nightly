inline.NumInlined: 199
inline.NumDeleted: 82
begin_hunk_0_@get_device_system_crosststamp:bb.a
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 160), align 32
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 156), align 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 %i.cx, %i.cz
  br label %timekeeping_cycles_to_ns.exit

timekeeping_cycles_to_ns.exit:                    ; preds = %bb.r, %bb.s, %bb.t
  %.0.i = phi i64 [ %i.cr, %bb.r ], [ %i.cs, %bb.s ], [ %i.da, %bb.t ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !26
  %i.db = load volatile i32, ptr @timekeeper_data, align 64
  %.not100 = icmp eq i32 %i.db, %.lcssa
  br i1 %.not100, label %bb.u, label %bb.c, !llvm.loop !84

bb.u:                                             ; preds = %timekeeping_cycles_to_ns.exit
  %i.dc = add i64 %i.be, %i.bd
  %i.dd = add i64 %i.dc, %.0.i82
  %i.de = getelementptr i8, ptr %3, i64 32
  store i64 %i.dd, ptr %i.de, align 8
  %i.df = add i64 %.0.i, %i.bf
  %i.dg = getelementptr i8, ptr %3, i64 40
  store i64 %i.df, ptr %i.dg, align 8
  br i1 %.0.demorgan.i, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %.not80 = icmp eq ptr %2, null
  br i1 %.not80, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load i64, ptr %2, align 8               ; 3 uses
  %.not.i91 = icmp ult i64 %i.aq, %i.dh           ; 2 uses
  %.not12.i92 = icmp ugt i64 %i.aq, %i.az         ; 2 uses
  %or.cond.i93 = or i1 %.not12.i92, %.not.i91
  %i.di = icmp ule i64 %i.dh, %i.az
  %or.cond14.i94 = and i1 %.not12.i92, %.not.i91
  %or.cond15.i95 = or i1 %i.di, %or.cond14.i94
  %.0.demorgan.i96 = and i1 %or.cond.i93, %or.cond15.i95
  br i1 %.0.demorgan.i96, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr i8, ptr %2, i64 44
  %i.dk = load i8, ptr %i.dj, align 4
  %.not81 = icmp eq i8 %i.dk, %i.bc
  br i1 %.not81, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dl = sub i64 %i.az, %i.aq
  %i.dm = sub i64 %i.az, %i.dh
  %i.dn = getelementptr i8, ptr %2, i64 40
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp ne i32 %i.do, %i.bb
  %i.dq = tail call fastcc i32 @adjust_historical_crosststamp(ptr noundef %2, i64 noundef %i.dl, i64 noundef %i.dm, i1 noundef zeroext %i.dp, ptr noundef %3) #16, !srcloc !85
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.g, %bb.f, %bb.d, %._crit_edge, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.x, %bb.w, %bb.v, %bb.u, %bb.y, %bb.b
  %.1 = phi i32 [ -19, %bb.b ], [ -22, %bb.x ], [ -19, %bb.a ], [ -19, %bb.a ], [ 0, %bb.u ], [ -19, %bb.a ], [ %i.dq, %bb.y ], [ -22, %bb.v ], [ -22, %bb.w ], [ -19, %bb.a ], [ -19, %bb.a ], [ -19, %bb.a ], [ -19, %bb.a ], [ -19, %bb.a ], [ -19, %bb.j ], [ -19, %bb.g ], [ -19, %bb.f ], [ -19, %bb.d ], [ %i.j, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite)
define internal fastcc range(i32 -75, 1) i32 @adjust_historical_crosststamp(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %scale64_check_overflow.exit.thread, label %fls64.exit15.i

fls64.exit15.i:                                   ; preds = %bb.a
  %i.c = lshr i64 %2, 1
  %i.d = icmp ugt i64 %1, %i.c                    ; 2 uses
  %i.e = sub i64 %2, %1
  %i.f = select i1 %i.d, i64 %i.e, i64 %1         ; 6 uses
  %i.g = getelementptr i8, ptr %4, i64 40         ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %i.h, %i.j                       ; 2 uses
  %i.l = urem i64 %i.k, %2                        ; 2 uses
  %i.m = udiv i64 %i.k, %2                        ; 2 uses
  %i.n = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.f, i32 -1) #17, !srcloc !76
  %i.o = sub i32 63, %i.n                         ; 2 uses
  %i.p = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.m, i32 -1) #17, !srcloc !76
  %i.q = add i32 %i.p, 1
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %scale64_check_overflow.exit.thread, label %fls64.exit.i

fls64.exit.i:                                     ; preds = %fls64.exit15.i
  %i.s = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.l, i32 -1) #17, !srcloc !76
  %i.t = add i32 %i.s, 1
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %scale64_check_overflow.exit.thread, label %bb.b

bb.b:                                             ; preds = %fls64.exit.i
  %i.v = mul i64 %i.m, %i.f
  %i.w = mul i64 %i.l, %i.f
  %i.x = udiv i64 %i.w, %2
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  br i1 %3, label %bb.c, label %fls64.exit15.i38

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 32), align 32
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 152), align 8
  %i.ab = zext i32 %i.z to i64
  %i.ac = zext i32 %i.aa to i64
  %i.ad = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},rm,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %i.ab, i64 %i.y) #18, !srcloc !86 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 1
  %i.af = extractvalue { i64, i64 } %i.ad, 0
  %i.ag = tail call { i64, i64 } asm "divq $2", "={ax},={dx},rm,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %i.ac, i64 %i.af, i64 %i.ae) #18, !srcloc !87
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  br label %bb.d

fls64.exit15.i38:                                 ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %4, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = sub i64 %i.aj, %i.al                    ; 2 uses
  %i.an = urem i64 %i.am, %2                      ; 2 uses
  %i.ao = udiv i64 %i.am, %2                      ; 2 uses
  %i.ap = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.f, i32 -1) #17, !srcloc !76
  %i.aq = sub i32 63, %i.ap                       ; 2 uses
  %i.ar = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ao, i32 -1) #17, !srcloc !76
  %i.as = add i32 %i.ar, 1
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %scale64_check_overflow.exit.thread, label %fls64.exit.i42

fls64.exit.i42:                                   ; preds = %fls64.exit15.i38
  %i.au = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an, i32 -1) #17, !srcloc !76
  %i.av = add i32 %i.au, 1
  %i.aw = icmp slt i32 %i.aq, %i.av
  br i1 %i.aw, label %scale64_check_overflow.exit.thread, label %scale64_check_overflow.exit45

scale64_check_overflow.exit45:                    ; preds = %fls64.exit.i42
  %i.ax = mul i64 %i.ao, %i.f
  %i.ay = mul i64 %i.an, %i.f
  %i.az = udiv i64 %i.ay, %2
  %i.ba = add i64 %i.az, %i.ax
  br label %bb.d

bb.d:                                             ; preds = %scale64_check_overflow.exit45, %bb.c
  %.052 = phi i64 [ %i.ah, %bb.c ], [ %i.ba, %scale64_check_overflow.exit45 ] ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = add i64 %i.y, %i.j
  store i64 %i.bb, ptr %i.g, align 8
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i64 %i.bd, %.052
  %i.bf = getelementptr i8, ptr %4, i64 32
  store i64 %i.be, ptr %i.bf, align 8
  br label %scale64_check_overflow.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.bg = sub i64 %i.h, %i.y
  store i64 %i.bg, ptr %i.g, align 8
  %i.bh = getelementptr i8, ptr %4, i64 32        ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub i64 %i.bi, %.052
  store i64 %i.bj, ptr %i.bh, align 8
  br label %scale64_check_overflow.exit.thread

scale64_check_overflow.exit.thread:               ; preds = %fls64.exit15.i38, %fls64.exit.i42, %fls64.exit15.i, %fls64.exit.i, %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ -75, %fls64.exit15.i ], [ 0, %bb.f ], [ -75, %fls64.exit.i ], [ -75, %fls64.exit.i42 ], [ -75, %fls64.exit15.i38 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local zeroext i1 @timekeeping_clocksource_has_base(i32 noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 8), align 8
  %i.b = getelementptr i8, ptr %i.a, i64 104
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @do_settimeofday64(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %timespec64_valid_settod.exit.thread, label %timespec64_valid_settod.exit

timespec64_valid_settod.exit:                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.d, 1000000000
  %i.f = icmp samesign ult i64 %i.a, 8277292036
  %spec.select.i19 = and i1 %i.f, %i.e
  br i1 %spec.select.i19, label %bb.b, label %timespec64_valid_settod.exit.thread

bb.b:                                             ; preds = %timespec64_valid_settod.exit
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616)) #14 ; 2 uses
  tail call fastcc void @timekeeping_forward_now() #16
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 %i.i, %i.k
  %i.m = load i64, ptr %0, align 8
  %i.n = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !88
  %i.o = sub i64 %i.m, %i.h
  %i.p = sub i64 %i.n, %i.l
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %i.o, i64 noundef %i.p) #14
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 5 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 384), align 64 ; 3 uses
  %.val18 = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 392), align 8 ; 2 uses
  %i.q = icmp slt i64 %.val, %.fca.0.load.i
  br i1 %i.q, label %.timespec64_compare.exit.thread_crit_edge, label %bb.c

.timespec64_compare.exit.thread_crit_edge:        ; preds = %bb.b
  %.pre = sub i64 %.val18, %.fca.1.load.i
  br label %timespec64_compare.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = icmp sle i64 %.val, %.fca.0.load.i
  %i.s = sub i64 %.val18, %.fca.1.load.i          ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i32 %i.t, 1
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %timespec64_compare.exit.thread, label %timespec64_compare.exit.thread39

timespec64_compare.exit.thread39:                 ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), ptr noundef nonnull align 8 dereferenceable(304) getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 8), i64 304, i1 false)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616), i64 noundef %i.g) #14
  br label %timespec64_valid_settod.exit.thread

timespec64_compare.exit.thread:                   ; preds = %.timespec64_compare.exit.thread_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %.timespec64_compare.exit.thread_crit_edge ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !88
  %i.v = sub i64 %.val, %.fca.0.load.i
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %i.v, i64 noundef %.pre-phi) #14
  %.fca.0.load.i24 = load i64, ptr %1, align 8
  %.fca.1.gep.i26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i27 = load i64, ptr %.fca.1.gep.i26, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @tk_set_wall_to_mono(i64 %.fca.0.load.i24, i64 %.fca.1.load.i27) #16
  %i.w = load i64, ptr %0, align 8
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.x = load i64, ptr %i.c, align 8
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl i64 %i.x, %i.z                      ; 2 uses
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ab = lshr exact i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 424), align 8
  call fastcc void @timekeeping_update_from_shadow(i32 noundef 3) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616), i64 noundef %i.g) #14
  call void @clock_was_set(i32 noundef 170) #14
  %i.ad = icmp eq i64 %.fca.0.load.i, 0
  %i.ae = icmp eq i64 %.fca.1.load.i, 0
  %or.cond.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %audit_tk_injoffset.exit, label %bb.d

bb.d:                                             ; preds = %timespec64_compare.exit.thread
  %i.af = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !89
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 2192
  %i.ai = load ptr, ptr %i.ah, align 16           ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %audit_tk_injoffset.exit, label %audit_dummy_context.exit.i

audit_dummy_context.exit.i:                       ; preds = %bb.d
  %i.aj = load i32, ptr %i.ai, align 4
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.e, label %audit_tk_injoffset.exit

bb.e:                                             ; preds = %audit_dummy_context.exit.i
  call void @__audit_tk_injoffset(i64 %.fca.0.load.i, i64 %.fca.1.load.i) #14
  br label %audit_tk_injoffset.exit

audit_tk_injoffset.exit:                          ; preds = %timespec64_compare.exit.thread, %bb.d, %audit_dummy_context.exit.i, %bb.e
  call void @add_device_randomness(ptr noundef %0, i64 noundef 16) #14
  br label %timespec64_valid_settod.exit.thread

timespec64_valid_settod.exit.thread:              ; preds = %bb.a, %timespec64_compare.exit.thread39, %timespec64_valid_settod.exit, %audit_tk_injoffset.exit
  %.1 = phi i32 [ 0, %audit_tk_injoffset.exit ], [ -22, %timespec64_compare.exit.thread39 ], [ -22, %timespec64_valid_settod.exit ], [ -22, %bb.a ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @timekeeping_forward_now() unnamed_addr #0 align 16 {
bb.a:
  %i.a = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @clocksource_read_inlined, i1 true) #15
          to label %arch_static_branch_jump.exit [label %bb.b], !srcloc !11

arch_static_branch_jump.exit:                     ; preds = %bb.a
  %i.b = tail call { i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !12 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = shl i64 %i.d, 32
  %i.f = or i64 %i.e, %i.c
  br label %tk_clock_read.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = tail call i64 %i.g(ptr noundef %i.a) #14, !inline_history !13
  br label %tk_clock_read.exit

tk_clock_read.exit:                               ; preds = %arch_static_branch_jump.exit, %bb.b
  %.0.i = phi i64 [ %i.f, %arch_static_branch_jump.exit ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 320), align 64
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %.0.i, %i.i
  %i.o = and i64 %i.n, %i.j                       ; 2 uses
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 448), align 64
  %i.p = add i64 %i.o, -1
  %.not16.not = icmp ult i64 %i.p, %i.m
  br i1 %.not16.not, label %.lr.ph, label %tk_clock_read.exit.select.unfold._crit_edge_crit_edge

tk_clock_read.exit.select.unfold._crit_edge_crit_edge: ; preds = %tk_clock_read.exit
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %.pre26 = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %.pre27 = zext nneg i32 %.pre26 to i64
  br label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %tk_clock_read.exit
  %.promoted13 = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  %.promoted10 = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %.promoted7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  %.promoted = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.q = getelementptr i8, ptr %i.k, i64 40
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 336), align 16
  %i.s = zext i32 %i.r to i64
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 456), align 8
  %i.u = zext i32 %i.t to i64
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl i64 1000000000, %i.w                 ; 3 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 460), align 4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 1000000000, %i.z                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %tk_normalize_xtime.exit
  %.021 = phi i64 [ %i.o, %.lr.ph ], [ %i.ap, %tk_normalize_xtime.exit ] ; 2 uses
  %.lcssa2520 = phi i64 [ %.promoted, %.lr.ph ], [ %.lcssa26, %tk_normalize_xtime.exit ]
  %.lcssa4819 = phi i64 [ %.promoted7, %.lr.ph ], [ %.lcssa49, %tk_normalize_xtime.exit ]
  %.lcssa1218 = phi i64 [ %.promoted10, %.lr.ph ], [ %.lcssa11, %tk_normalize_xtime.exit ] ; 2 uses
  %.lcssa31517 = phi i64 [ %.promoted13, %.lr.ph ], [ %.lcssa314, %tk_normalize_xtime.exit ] ; 2 uses
  %i.ab = load i64, ptr %i.q, align 8
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.021, i64 %i.ab) ; 3 uses
  %i.ad = mul i64 %i.ac, %i.s
  %i.ae = add i64 %i.ad, %.lcssa2520              ; 4 uses
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.af = mul i64 %i.ac, %i.u
  %i.ag = add i64 %i.af, %.lcssa4819              ; 4 uses
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  %.not2.i = icmp ult i64 %i.ae, %i.x
  br i1 %.not2.i, label %.preheader.i, label %.lr.ph.i

..preheader_crit_edge.i:                          ; preds = %.lr.ph.i
  store i64 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader_crit_edge.i, %bb.c
  %.lcssa11 = phi i64 [ %i.ak, %..preheader_crit_edge.i ], [ %.lcssa1218, %bb.c ]
  %.lcssa26 = phi i64 [ %i.aj, %..preheader_crit_edge.i ], [ %i.ae, %bb.c ] ; 2 uses
  %.not136.i = icmp ult i64 %i.ag, %i.aa
  br i1 %.not136.i, label %tk_normalize_xtime.exit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %i.aj, %.lr.ph.i ], [ %i.ae, %bb.c ]
  %i.ai = phi i64 [ %i.ak, %.lr.ph.i ], [ %.lcssa1218, %bb.c ]
  %i.aj = sub nuw i64 %i.ah, %i.x                 ; 4 uses
  %i.ak = add i64 %i.ai, 1                        ; 3 uses
  %.not.i = icmp ult i64 %i.aj, %i.x
  br i1 %.not.i, label %..preheader_crit_edge.i, label %.lr.ph.i, !llvm.loop !90

.lr.ph7.i:                                        ; preds = %.preheader.i, %.lr.ph7.i
  %i.al = phi i64 [ %i.an, %.lr.ph7.i ], [ %i.ag, %.preheader.i ]
  %i.am = phi i64 [ %i.ao, %.lr.ph7.i ], [ %.lcssa31517, %.preheader.i ]
  %i.an = sub nuw i64 %i.al, %i.aa                ; 4 uses
  %i.ao = add i64 %i.am, 1                        ; 3 uses
  %.not13.i = icmp ult i64 %i.an, %i.aa
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph7.i, !llvm.loop !91
end_hunk_0
begin_hunk_1_@ktime_get_raw_ts64:bb.a

bb.h:                                             ; preds = %timekeeping_cycles_to_ns.exit
  %i.an = getelementptr i8, ptr %0, i64 8         ; 2 uses
  store i64 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.i, ptr %i.a, align 8
  %i.ao = icmp ugt i64 %.0.i, 999999999
  br i1 %i.ao, label %.lr.ph19, label %__iter_div_u64_rem.exit

.lr.ph19:                                         ; preds = %bb.h, %.lr.ph19
  %.0.i1117 = phi i32 [ %i.as, %.lr.ph19 ], [ 0, %bb.h ]
  %i.ap = phi i64 [ %i.ar, %.lr.ph19 ], [ %.0.i, %bb.h ]
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 %i.ap) #15, !srcloc !34
  %i.aq = load i64, ptr %i.a, align 8
  %i.ar = add i64 %i.aq, -1000000000              ; 4 uses
  store i64 %i.ar, ptr %i.a, align 8
  %i.as = add i32 %.0.i1117, 1                    ; 2 uses
  %i.at = icmp ugt i64 %i.ar, 999999999
  br i1 %i.at, label %.lr.ph19, label %__iter_div_u64_rem.exit.loopexit, !llvm.loop !35

__iter_div_u64_rem.exit.loopexit:                 ; preds = %.lr.ph19
  %i.au = zext i32 %i.as to i64
  br label %__iter_div_u64_rem.exit

__iter_div_u64_rem.exit:                          ; preds = %__iter_div_u64_rem.exit.loopexit, %bb.h
  %.lcssa = phi i64 [ %.0.i, %bb.h ], [ %i.ar, %__iter_div_u64_rem.exit.loopexit ]
  %.0.i11.lcssa = phi i64 [ 0, %bb.h ], [ %i.au, %__iter_div_u64_rem.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load i64, ptr %0, align 8
  %i.aw = add i64 %i.av, %.0.i11.lcssa
  store i64 %i.aw, ptr %0, align 8
  store i64 %.lcssa, ptr %i.an, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ktime_get_clock_ts64(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 16)) %1) #0 align 16 prefalign(16) {
bb.a:
  store i64 -1, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 16, label %bb.f
    i32 17, label %bb.f
    i32 18, label %bb.f
    i32 19, label %bb.f
    i32 20, label %bb.f
    i32 21, label %bb.f
    i32 22, label %bb.f
    i32 23, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @ktime_get_real_ts64(ptr noundef %1) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @ktime_get_ts64(ptr noundef %1) #16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @ktime_get_raw_ts64(ptr noundef %1) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "571: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 571b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 571) #15, !srcloc !102
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1928, i32 2307, i64 16) #15, !srcloc !103
  tail call void asm sideeffect "572: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 572b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 572) #15, !srcloc !104
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 33) i32 @timekeeping_valid_for_hres() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.a = load volatile i32, ptr @timekeeper_data, align 64 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  %i.b = and i32 %i.a, 1
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph, !prof !22

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !23
  %i.c = load volatile i32, ptr @timekeeper_data, align 64 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !24, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa = phi i32 [ %i.a, %bb.b ], [ %i.c, %.lr.ph ]
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 8), align 8
  %i.f = getelementptr i8, ptr %i.e, i64 96
  %i.g = load i64, ptr %i.f, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !26
  %i.h = load volatile i32, ptr @timekeeper_data, align 64
  %.not6 = icmp eq i32 %i.h, %.lcssa
  br i1 %.not6, label %bb.c, label %bb.b, !llvm.loop !106

bb.c:                                             ; preds = %._crit_edge
  %i.i = trunc i64 %i.g to i32
  %i.j = and i32 %i.i, 32
  ret i32 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.a = load volatile i32, ptr @timekeeper_data, align 64 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  %i.b = and i32 %i.a, 1
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph, !prof !22

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !23
  %i.c = load volatile i32, ptr @timekeeper_data, align 64 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !24, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa = phi i32 [ %i.a, %bb.b ], [ %i.c, %.lr.ph ]
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 8), align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !26
  %i.h = load volatile i32, ptr @timekeeper_data, align 64
  %.not6 = icmp eq i32 %i.h, %.lcssa
  br i1 %.not6, label %bb.c, label %bb.b, !llvm.loop !108

bb.c:                                             ; preds = %._crit_edge
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak dso_local void @read_persistent_clock64(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak dso_local void @read_persistent_wall_and_boot_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @read_persistent_clock64(ptr noundef %0) #16
  %i.a = tail call i64 @local_clock() #14
  %i.b = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.a) #14 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  store i64 %i.c, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @local_clock() local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @timekeeping_init() local_unnamed_addr #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.timespec64, align 8         ; 6 uses
  %1 = alloca %struct.timespec64, align 8         ; 9 uses
  %2 = alloca %struct.timespec64, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616), align 8
  store i32 0, ptr @timekeeper_data, align 64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 428), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 124), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 525), align 1
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 221), align 1
  call void @read_persistent_wall_and_boot_offset(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %i.a = load i64, ptr %1, align 8                ; 8 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val1524 = load i64, ptr %i.c, align 8         ; 5 uses
  br i1 %i.b, label %bb.d, label %timespec64_valid_settod.exit

timespec64_valid_settod.exit:                     ; preds = %bb.a
  %i.d = icmp ult i64 %.val1524, 1000000000
  %i.e = icmp samesign ult i64 %i.a, 8277292036
  %spec.select.i = and i1 %i.e, %i.d
  br i1 %spec.select.i, label %timespec64_to_ns.exit, label %bb.c

timespec64_to_ns.exit:                            ; preds = %timespec64_valid_settod.exit
  %i.f = mul nuw nsw i64 %i.a, 1000000000
  %i.g = or i64 %.val1524, %i.f
  %.not43 = icmp eq i64 %i.g, 0
  br i1 %.not43, label %timespec64_to_ns.exit20, label %bb.b

bb.b:                                             ; preds = %timespec64_to_ns.exit
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %bb.e

bb.c:                                             ; preds = %timespec64_valid_settod.exit
  %i.h = icmp samesign ugt i64 %i.a, 9223372035
  br i1 %i.h, label %timespec64_to_ns.exit20.thread, label %timespec64_to_ns.exit20

bb.d:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.a, -9223372035
  br i1 %i.i, label %timespec64_to_ns.exit20.thread, label %timespec64_to_ns.exit20

timespec64_to_ns.exit20:                          ; preds = %timespec64_to_ns.exit, %bb.c, %bb.d
  %i.j = mul nsw i64 %i.a, 1000000000
  %i.k = sub i64 0, %.val1524
  %.not = icmp eq i64 %i.j, %i.k
  br i1 %.not, label %bb.e, label %timespec64_to_ns.exit20.thread

timespec64_to_ns.exit20.thread:                   ; preds = %bb.d, %bb.c, %timespec64_to_ns.exit20
  %i.l = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #20 ; 0 uses
  store i64 0, ptr %1, align 8
  store i64 0, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %timespec64_to_ns.exit20, %timespec64_to_ns.exit20.thread, %bb.b
  %.val13 = phi i64 [ %.val1524, %timespec64_to_ns.exit20 ], [ 0, %timespec64_to_ns.exit20.thread ], [ %.val1524, %bb.b ] ; 2 uses
  %.val = phi i64 [ %i.a, %timespec64_to_ns.exit20 ], [ 0, %timespec64_to_ns.exit20.thread ], [ %i.a, %bb.b ] ; 3 uses
  %i.m = load i64, ptr %2, align 8                ; 4 uses
  %i.n = icmp slt i64 %.val, %i.m
  br i1 %i.n, label %timespec64_compare.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %.val, %i.m
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert39, align 8 ; 3 uses
  br i1 %i.o, label %timespec64_compare.exit.thread34, label %timespec64_compare.exit

timespec64_compare.exit:                          ; preds = %bb.f
  %i.p = sub i64 %.val13, %.pre
  %i.q = and i64 %i.p, 2147483648
  %.not36 = icmp eq i64 %i.q, 0
  br i1 %.not36, label %timespec64_compare.exit.thread34, label %timespec64_compare.exit.thread

timespec64_compare.exit.thread:                   ; preds = %bb.e, %timespec64_compare.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %timespec64_compare.exit.thread34

timespec64_compare.exit.thread34:                 ; preds = %bb.f, %timespec64_compare.exit.thread, %timespec64_compare.exit
  %i.r = phi i64 [ %.pre, %timespec64_compare.exit ], [ 0, %timespec64_compare.exit.thread ], [ %.pre, %bb.f ]
  %i.s = phi i64 [ %i.m, %timespec64_compare.exit ], [ 0, %timespec64_compare.exit.thread ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !88
  %i.t = sub i64 %i.s, %.val
  %i.u = sub i64 %i.r, %.val13
  call void @set_normalized_timespec64(ptr noundef nonnull %0, i64 noundef %i.t, i64 noundef %i.u) #14
  %.fca.0.load.i = load i64, ptr %0, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.v = call ptr @clocksource_default_clock() #20 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.x, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %timespec64_compare.exit.thread34
  %i.y = call i32 %i.x(ptr noundef %i.v) #14      ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %timespec64_compare.exit.thread34
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616)) #14
  call void @ntp_init() #14
  call fastcc void @tk_setup_internals(ptr noundef %i.v) #16
  %i.ab = load i64, ptr %1, align 8
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.ac = load i64, ptr %i.z, align 8
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.ac, %i.ae                    ; 2 uses
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ag = lshr exact i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 424), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  call fastcc void @tk_set_wall_to_mono(i64 %.fca.0.load.i, i64 %.fca.1.load.i) #16
  call fastcc void @timekeeping_update_from_shadow(i32 noundef 2) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616), i64 noundef %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local ptr @clocksource_default_clock() local_unnamed_addr #9 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ntp_init() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tk_setup_internals(ptr noundef %0) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 524), align 4
  %i.b = add i8 %i.a, 1
  store i8 %i.b, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 524), align 4
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 320), align 64
  %i.f = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @clocksource_read_inlined, i1 true) #15
          to label %arch_static_branch_jump.exit [label %bb.b], !srcloc !11

arch_static_branch_jump.exit:                     ; preds = %bb.a
  %i.g = tail call { i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !12 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = shl i64 %i.i, 32
  %i.k = or i64 %i.j, %i.h
  br label %tk_clock_read.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = tail call i64 %i.l(ptr noundef %i.f) #14, !inline_history !13
  br label %tk_clock_read.exit

tk_clock_read.exit:                               ; preds = %arch_static_branch_jump.exit, %bb.b
  %.0.i = phi i64 [ %i.k, %arch_static_branch_jump.exit ], [ %i.m, %bb.b ] ; 2 uses
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 432), align 16
  %i.n = load i64, ptr %i.d, align 8
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 440), align 8
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 448), align 64
  %i.o = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 1000000, %i.q                    ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = add nuw i64 %i.r, %i.v                   ; 2 uses
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = udiv i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.w, %i.x
  %spec.store.select = select i1 %i.z, i64 1, i64 %i.y ; 3 uses
  store i64 %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 544), align 32
  %i.aa = load i32, ptr %i.s, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul i64 %spec.store.select, %i.ab       ; 2 uses
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 552), align 8
  %i.ad = sub i64 %i.r, %i.ac
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 560), align 16
  %i.ae = load i32, ptr %i.s, align 8
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %spec.store.select, %i.af
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 568), align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %tk_clock_read.exit
  %i.ah = load i32, ptr %i.o, align 4
  %i.ai = getelementptr i8, ptr %i.c, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub i32 %i.ah, %i.aj                    ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = sub i32 0, %i.ak
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ao = zext i32 %i.am to i64                   ; 2 uses
  %i.ap = lshr i64 %i.an, %i.ao
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  %i.ar = lshr i64 %i.aq, %i.ao
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.at = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.au = shl i64 %i.as, %i.at
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  %i.aw = shl i64 %i.av, %i.at
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.ap, %bb.d ], [ %i.au, %bb.e ]
  %storemerge = phi i64 [ %i.ar, %bb.d ], [ %i.aw, %bb.e ]
  store i64 %.sink, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %tk_clock_read.exit
  %i.ax = load i32, ptr %i.o, align 4             ; 2 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 460), align 4
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 592), align 16
  %i.ay = load i32, ptr %i.o, align 4
  %i.az = sub i32 32, %i.ay                       ; 2 uses
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 600), align 8
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.r, %i.ba
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 584), align 8
  %i.bc = load i32, ptr %i.s, align 8             ; 2 uses
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 336), align 16
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 456), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 604), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 608), align 32
  %i.bd = getelementptr i8, ptr %0, i64 88
  %i.be = load i32, ptr %i.bd, align 8
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 496), align 16
  %i.bf = getelementptr i8, ptr %0, i64 96
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 1024
  %.not75 = icmp eq i64 %i.bh, 0
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr i8, ptr %0, i64 80
  %i.bj = load i32, ptr %i.bi, align 8
  tail call void @clocks_calc_mult_shift(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 500), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 504), i32 noundef 1000000, i32 noundef %i.bj, i32 noundef 3600000) #14
  %i.bk = load i64, ptr %i.d, align 8
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 500), align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = udiv i64 %i.bk, %i.bm
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 512), align 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @timekeeping_resume() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.timespec64, align 8         ; 6 uses
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  %3 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !88
  call void @read_persistent_clock64(ptr noundef nonnull %2) #16
  call void @clockevents_resume() #14
  call void @clocksource_resume() #14
  %i.b = call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616)) #14
  %i.c = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @clocksource_read_inlined, i1 true) #15
          to label %arch_static_branch_jump.exit [label %bb.b], !srcloc !11

arch_static_branch_jump.exit:                     ; preds = %bb.a
  %i.d = call { i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !12 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = shl i64 %i.f, 32
  %i.h = or i64 %i.g, %i.e
  br label %tk_clock_read.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call i64 %i.i(ptr noundef %i.c) #14, !inline_history !13
  br label %tk_clock_read.exit

tk_clock_read.exit:                               ; preds = %arch_static_branch_jump.exit, %bb.b
  %.0.i = phi i64 [ %i.h, %arch_static_branch_jump.exit ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = call i64 @clocksource_stop_suspend_timing(ptr noundef %i.a, i64 noundef %.0.i) #14 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %tk_clock_read.exit
  %i.l = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.k) #14 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %.critedge

bb.d:                                             ; preds = %tk_clock_read.exit
  %.val = load i64, ptr %2, align 8               ; 3 uses
  %i.o = load i64, ptr @timekeeping_suspend_time, align 8 ; 3 uses
  %i.p = icmp slt i64 %.val, %i.o
  br i1 %i.p, label %__timekeeping_inject_sleeptime.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val17 = load i64, ptr %i.q, align 8
  %i.r = icmp sgt i64 %.val, %i.o
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeping_suspend_time, i64 8), align 8
  %.pre29 = sub i64 %.val17, %.pre                ; 2 uses
  %i.s = trunc i64 %.pre29 to i32
  %i.t = icmp sgt i32 %i.s, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond, label %timespec64_compare.exit.thread, label %__timekeeping_inject_sleeptime.exit

timespec64_compare.exit.thread:                   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !88
  %i.u = sub i64 %.val, %i.o
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %i.u, i64 noundef %.pre29) #14
  %.fca.0.load.i = load i64, ptr %1, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.critedge

.critedge:                                        ; preds = %timespec64_compare.exit.thread, %bb.c
  %.fca.0.load.i.sink = phi i64 [ %.fca.0.load.i, %timespec64_compare.exit.thread ], [ %i.m, %bb.c ] ; 6 uses
  %.fca.1.load.i.sink = phi i64 [ %.fca.1.load.i, %timespec64_compare.exit.thread ], [ %i.n, %bb.c ] ; 5 uses
  store i64 %.fca.0.load.i.sink, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.fca.1.load.i.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %i.v = icmp slt i64 %.fca.0.load.i.sink, 0
  br i1 %i.v, label %timespec64_valid_strict.exit.thread.i, label %timespec64_valid_strict.exit.i

timespec64_valid_strict.exit.i:                   ; preds = %.critedge
  %i.w = icmp ult i64 %.fca.1.load.i.sink, 1000000000
  %i.x = icmp samesign ult i64 %.fca.0.load.i.sink, 9223372036
  %spec.select.i.i = and i1 %i.x, %i.w
  br i1 %spec.select.i.i, label %bb.f, label %timespec64_valid_strict.exit.thread.i

timespec64_valid_strict.exit.thread.i:            ; preds = %timespec64_valid_strict.exit.i, %.critedge
  %i.y = call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.7) #20 ; 0 uses
  br label %__timekeeping_inject_sleeptime.exit

bb.f:                                             ; preds = %timespec64_valid_strict.exit.i
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.aa = add i64 %i.z, %.fca.0.load.i.sink       ; 2 uses
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ad = shl i64 %.fca.1.load.i.sink, %i.ac
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ag = shl i64 1000000000, %i.ac               ; 3 uses
  %.not2.i.i.i = icmp ult i64 %i.af, %i.ag
  br i1 %.not2.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

..preheader_crit_edge.i.i.i:                      ; preds = %.lr.ph.i.i.i
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %..preheader_crit_edge.i.i.i, %bb.f
  %i.ah = phi i64 [ %i.an, %..preheader_crit_edge.i.i.i ], [ %i.af, %bb.f ]
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 460), align 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 1000000000, %i.aj               ; 3 uses
  %.promoted4.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16 ; 2 uses
  %.not136.i.i.i = icmp ult i64 %.promoted4.i.i.i, %i.ak
  br i1 %.not136.i.i.i, label %tk_xtime_add.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %.preheader.i.i.i
  %.promoted5.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  br label %.lr.ph7.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.al = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ %i.af, %bb.f ]
  %i.am = phi i64 [ %i.ao, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ]
  %i.an = sub nuw i64 %i.al, %i.ag                ; 4 uses
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.an, %i.ag
  br i1 %.not.i.i.i, label %..preheader_crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !90

.lr.ph7.i.i.i:                                    ; preds = %.lr.ph7.i.i.i, %.lr.ph7.preheader.i.i.i
  %i.ap = phi i64 [ %i.ar, %.lr.ph7.i.i.i ], [ %.promoted4.i.i.i, %.lr.ph7.preheader.i.i.i ]
  %i.aq = phi i64 [ %i.as, %.lr.ph7.i.i.i ], [ %.promoted5.i.i.i, %.lr.ph7.preheader.i.i.i ]
  %i.ar = sub nuw i64 %i.ap, %i.ak                ; 3 uses
  %i.as = add i64 %i.aq, 1                        ; 2 uses
  %.not13.i.i.i = icmp ult i64 %i.ar, %i.ak
  br i1 %.not13.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph7.i.i.i, !llvm.loop !91

._crit_edge.i.i.i:                                ; preds = %.lr.ph7.i.i.i
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  br label %tk_xtime_add.exit.i

tk_xtime_add.exit.i:                              ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  %i.at = lshr i64 %i.ah, %i.ac
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 424), align 8
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 384), align 64
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 392), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !88
  %i.ax = sub i64 %i.av, %.fca.0.load.i.sink
  %i.ay = sub i64 %i.aw, %.fca.1.load.i.sink
  call void @set_normalized_timespec64(ptr noundef nonnull %0, i64 noundef %i.ax, i64 noundef %i.ay) #14
  %.fca.0.load.i.i = load i64, ptr %0, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call fastcc void @tk_set_wall_to_mono(i64 %.fca.0.load.i.i, i64 %.fca.1.load.i.i) #16
  %i.az = mul nuw nsw i64 %.fca.0.load.i.sink, 1000000000
  %i.ba = add nuw nsw i64 %i.az, %.fca.1.load.i.sink
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 408), align 8
  %i.bc = add i64 %i.ba, %i.bb                    ; 2 uses
  store volatile i64 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 408), align 8
  %i.bd = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.bc) #14 ; 2 uses
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 528), align 16
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 536), align 8
  call void @tk_debug_account_sleep_time(ptr noundef nonnull %3) #14
  br label %__timekeeping_inject_sleeptime.exit

__timekeeping_inject_sleeptime.exit:              ; preds = %bb.e, %bb.d, %tk_xtime_add.exit.i, %timespec64_valid_strict.exit.thread.i
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 448), align 64
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 592), align 16
  store i32 0, ptr @timekeeping_suspended, align 4
  call fastcc void @timekeeping_update_from_shadow(i32 noundef 2) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616), i64 noundef %i.b) #14
  call void @tick_resume() #14
  call void @timerfd_resume() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clockevents_resume() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clocksource_resume() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @clocksource_stop_suspend_timing(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tick_resume() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timerfd_resume() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @timekeeping_suspend() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.timespec64, align 8         ; 6 uses
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  tail call void @read_persistent_clock64(ptr noundef nonnull @timekeeping_suspend_time) #16
  %i.a = load i64, ptr @timekeeping_suspend_time, align 8
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeping_suspend_time, i64 8), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 616)) #14
  tail call fastcc void @timekeeping_forward_now() #16
  store i32 1, ptr @timekeeping_suspended, align 4
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  tail call void @clocksource_start_suspend_timing(ptr noundef %i.f, i64 noundef %i.g) #14
  %.b = load i1, ptr @persistent_clock_exists, align 1
  br i1 %.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 %i.i, %i.k
  %i.m = load i64, ptr @timekeeping_suspend_time, align 8
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeping_suspend_time, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !88
  %i.o = sub i64 %i.h, %i.m
  %i.p = sub i64 %i.l, %i.n
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %i.o, i64 noundef %i.p) #14
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.q = load i64, ptr @timekeeping_suspend.old_delta.0, align 8
  %i.r = load i64, ptr @timekeeping_suspend.old_delta.1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !88
  %i.s = sub i64 %.fca.0.load.i, %i.q
  %i.t = sub i64 %.fca.1.load.i, %i.r
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %i.s, i64 noundef %i.t) #14
  %.fca.0.load.i25 = load i64, ptr %1, align 8    ; 2 uses
  %.fca.1.gep.i27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i28 = load i64, ptr %.fca.1.gep.i27, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.u = call i64 @llvm.abs.i64(i64 %.fca.0.load.i25, i1 false)
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.fca.0.load.i, ptr @timekeeping_suspend.old_delta.0, align 8
  store i64 %.fca.1.load.i, ptr @timekeeping_suspend.old_delta.1, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr @timekeeping_suspend_time, align 8
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeping_suspend_time, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !88
  %i.y = add i64 %i.w, %.fca.0.load.i25
  %i.z = add i64 %i.x, %.fca.1.load.i28
  call void @set_normalized_timespec64(ptr noundef nonnull %0, i64 noundef %i.y, i64 noundef %i.z) #14
  %.fca.0.load.i30 = load i64, ptr %0, align 8
  %.fca.1.gep.i32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.fca.1.load.i33 = load i64, ptr %.fca.1.gep.i32, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  store i64 %.fca.0.load.i30, ptr @timekeeping_suspend_time, align 8
  store i64 %.fca.1.load.i33, ptr getelementptr inbounds nuw (i8, ptr @timekeeping_suspend_time, i64 8), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  call fastcc void @timekeeping_update_from_shadow(i32 noundef 0) #16
end_hunk_1
begin_hunk_2_@do_adjtimex:bb.a
  br i1 %i.bn, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %__do_adjtimex.exit
  %i.bo = load i32, ptr %0, align 8
  %i.bp = and i32 %i.bo, 256
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %audit_tk_injoffset.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i64 %i.br, 0
  %i.bv = icmp eq i64 %i.bt, 0
  %or.cond.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i, label %audit_tk_injoffset.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !89
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr i8, ptr %i.bx, i64 2192
  %i.bz = load ptr, ptr %i.by, align 16           ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i5, label %audit_tk_injoffset.exit, label %audit_dummy_context.exit.i

audit_dummy_context.exit.i:                       ; preds = %bb.ab
  %i.ca = load i32, ptr %i.bz, align 4
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.ac, label %audit_tk_injoffset.exit

bb.ac:                                            ; preds = %audit_dummy_context.exit.i
  call void @__audit_tk_injoffset(i64 %i.br, i64 %i.bt) #14
  br label %audit_tk_injoffset.exit

audit_tk_injoffset.exit:                          ; preds = %bb.ac, %audit_dummy_context.exit.i, %bb.ab, %bb.aa, %bb.z
  %i.cb = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !89
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 2192
  %i.ce = load ptr, ptr %i.cd, align 16           ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i6, label %audit_ntp_log.exit, label %audit_dummy_context.exit.i7

audit_dummy_context.exit.i7:                      ; preds = %audit_tk_injoffset.exit
  %i.cf = load i32, ptr %i.ce, align 4
  %.not.i8 = icmp eq i32 %i.cf, 0
  br i1 %.not.i8, label %bb.ad, label %audit_ntp_log.exit

bb.ad:                                            ; preds = %audit_dummy_context.exit.i7
  call void @__audit_ntp_log(ptr noundef nonnull %2) #14
  br label %audit_ntp_log.exit

audit_ntp_log.exit:                               ; preds = %audit_tk_injoffset.exit, %audit_dummy_context.exit.i7, %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ch = load i8, ptr %i.cg, align 8, !range !82, !noundef !83
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %audit_ntp_log.exit
  call void @clock_was_set(i32 noundef 170) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %audit_ntp_log.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp ne i64 %i.ck, 0
  call void @ntp_notify_cmos_timer(i1 noundef zeroext %i.cl) #14
  br label %bb.ag

bb.ag:                                            ; preds = %__do_adjtimex.exit.thread12, %__do_adjtimex.exit.thread, %__do_adjtimex.exit, %bb.af
  %.1.i10 = phi i32 [ %.1.i.ph, %__do_adjtimex.exit.thread ], [ %i.aq, %__do_adjtimex.exit ], [ %i.aq, %bb.af ], [ %.0.i.ph, %__do_adjtimex.exit.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.1.i10
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ntp_notify_cmos_timer(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local i64 @ktime_get_ntp_seconds(i32 noundef %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [640 x i8], ptr @timekeeper_data, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 64
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dummy_clock_read(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @timekeeping_suspended, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @cycles_at_suspend, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @local_clock() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc i64 @delta_to_ns_safe(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i64 %1 to i128
  %i.h = zext i32 %i.b to i128
  %i.i = mul nuw nsw i128 %i.h, %i.g
  %i.j = zext i64 %i.d to i128
  %i.k = add nuw nsw i128 %i.i, %i.j
  %i.l = zext nneg i32 %i.f to i128
  %i.m = lshr i128 %i.k, %i.l
  %i.n = trunc i128 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ntp_clear(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @update_vsyscall(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ntp_get_next_leap(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__audit_tk_injoffset(i64, i64) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @__timekeeping_inject_offset(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.b = load i64, ptr %i.a, align 8
  %or.cond = icmp ugt i64 %i.b, 999999999
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @timekeeping_forward_now() #16
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 %i.d, %i.f
  %i.h = load i64, ptr %0, align 8
  %i.i = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !88
  %i.j = add i64 %i.h, %i.c
  %i.k = add i64 %i.i, %i.g
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %i.j, i64 noundef %i.k) #14
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 3 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 384), align 64 ; 3 uses
  %.val31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 392), align 8 ; 2 uses
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = icmp slt i64 %.val, %i.l
  br i1 %i.m, label %timespec64_compare.exit.thread2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp sgt i64 %.val, %i.l
  br i1 %i.n, label %timespec64_compare.exit.thread, label %timespec64_compare.exit

timespec64_compare.exit:                          ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8
  %i.p = sub i64 %.val31, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = icmp slt i64 %.fca.0.load.i, 0
  %or.cond5 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond5, label %timespec64_compare.exit.thread, label %timespec64_valid_settod.exit

timespec64_compare.exit.thread2:                  ; preds = %bb.b
  %.old = icmp slt i64 %.fca.0.load.i, 0
  br i1 %.old, label %timespec64_compare.exit.thread, label %timespec64_valid_settod.exit

timespec64_valid_settod.exit:                     ; preds = %timespec64_compare.exit, %timespec64_compare.exit.thread2
  %i.t = icmp ult i64 %.fca.1.load.i, 1000000000
  %i.u = icmp samesign ult i64 %.fca.0.load.i, 8277292036
  %spec.select.i = and i1 %i.u, %i.t
  br i1 %spec.select.i, label %bb.d, label %timespec64_compare.exit.thread

timespec64_compare.exit.thread:                   ; preds = %timespec64_compare.exit.thread2, %bb.c, %timespec64_valid_settod.exit, %timespec64_compare.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), ptr noundef nonnull align 8 dereferenceable(304) getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 8), i64 304, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %timespec64_valid_settod.exit
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.w = add i64 %i.v, %i.l                       ; 2 uses
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  %i.x = load i64, ptr %i.a, align 8
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 340), align 4
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ac = add i64 %i.aa, %i.ab                    ; 4 uses
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  %i.ad = shl i64 1000000000, %i.z                ; 3 uses
  %.not2.i.i = icmp ult i64 %i.ac, %i.ad
  br i1 %.not2.i.i, label %.preheader.i.i, label %.lr.ph.i.i

..preheader_crit_edge.i.i:                        ; preds = %.lr.ph.i.i
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 344), align 8
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 368), align 16
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..preheader_crit_edge.i.i, %bb.d
  %i.ae = phi i64 [ %i.ak, %..preheader_crit_edge.i.i ], [ %i.ac, %bb.d ]
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 460), align 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 1000000000, %i.ag               ; 3 uses
  %.promoted4.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16 ; 2 uses
  %.not136.i.i = icmp ult i64 %.promoted4.i.i, %i.ah
  br i1 %.not136.i.i, label %tk_xtime_add.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %.preheader.i.i
  %.promoted5.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  br label %.lr.ph7.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %i.ac, %bb.d ]
  %i.aj = phi i64 [ %i.al, %.lr.ph.i.i ], [ %i.w, %bb.d ]
  %i.ak = sub nuw i64 %i.ai, %i.ad                ; 4 uses
  %i.al = add i64 %i.aj, 1                        ; 2 uses
  %.not.i.i = icmp ult i64 %i.ak, %i.ad
  br i1 %.not.i.i, label %..preheader_crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !90

.lr.ph7.i.i:                                      ; preds = %.lr.ph7.i.i, %.lr.ph7.preheader.i.i
  %i.am = phi i64 [ %i.ao, %.lr.ph7.i.i ], [ %.promoted4.i.i, %.lr.ph7.preheader.i.i ]
  %i.an = phi i64 [ %i.ap, %.lr.ph7.i.i ], [ %.promoted5.i.i, %.lr.ph7.preheader.i.i ]
  %i.ao = sub nuw i64 %i.am, %i.ah                ; 3 uses
  %i.ap = add i64 %i.an, 1                        ; 2 uses
  %.not13.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph7.i.i, !llvm.loop !91

._crit_edge.i.i:                                  ; preds = %.lr.ph7.i.i
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 464), align 16
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 488), align 8
  br label %tk_xtime_add.exit

tk_xtime_add.exit:                                ; preds = %.preheader.i.i, %._crit_edge.i.i
  %i.aq = lshr i64 %i.ae, %i.z
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 424), align 8
  %i.as = load i64, ptr %0, align 8
  %i.at = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !88
  %i.au = sub i64 %.val, %i.as
  %i.av = sub i64 %.val31, %i.at
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %i.au, i64 noundef %i.av) #14
  %.fca.0.load.i35 = load i64, ptr %1, align 8
  %.fca.1.gep.i37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i38 = load i64, ptr %.fca.1.gep.i37, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @tk_set_wall_to_mono(i64 %.fca.0.load.i35, i64 %.fca.1.load.i38) #16
  call fastcc void @timekeeping_update_from_shadow(i32 noundef 3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %tk_xtime_add.exit, %timespec64_compare.exit.thread
  %.1 = phi i32 [ 0, %tk_xtime_add.exit ], [ -22, %timespec64_compare.exit.thread ], [ -22, %bb.a ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tk_debug_account_sleep_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @register_syscore(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @timekeeping_syscore_suspend(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @timekeeping_suspend() #16 ; 0 uses
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timekeeping_syscore_resume(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @timekeeping_resume() #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @__timekeeping_advance(i32 noundef range(i32 0, 2) %0) unnamed_addr #0 align 16 {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = load i32, ptr @timekeeping_suspended, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ab, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8 ; 2 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @clocksource_read_inlined, i1 true) #15
          to label %arch_static_branch_jump.exit [label %bb.c], !srcloc !11

arch_static_branch_jump.exit:                     ; preds = %bb.b
  %i.c = tail call { i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !12 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  %i.f = shl i64 %i.e, 32
  %i.g = or i64 %i.f, %i.d
  br label %tk_clock_read.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call i64 %i.h(ptr noundef %i.b) #14, !inline_history !13
  br label %tk_clock_read.exit

tk_clock_read.exit:                               ; preds = %arch_static_branch_jump.exit, %bb.c
  %.0.i = phi i64 [ %i.g, %arch_static_branch_jump.exit ], [ %i.i, %bb.c ]
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 320), align 64
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 312), align 8
  %i.m = getelementptr i8, ptr %i.l, i64 48
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %.0.i, %i.j
  %i.p = and i64 %i.o, %i.k                       ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.p          ; 6 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 240), align 16
  %i.t = icmp ult i64 %i.r, %i.s
  %i.u = icmp eq i32 %0, 0
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.ab, label %__ilog2_u64.exit66

__ilog2_u64.exit66:                               ; preds = %tk_clock_read.exit
  %i.v = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.r, i32 -1) #17, !srcloc !76
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 544), align 32
  %i.x = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.w, i32 -1) #17, !srcloc !76
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 428), align 4
  %i.z = tail call i64 @ntp_tick_length(i32 noundef %i.y) #14
  %i.aa = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i32 -1) #17, !srcloc !76
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 544), align 32 ; 2 uses
  %.not607 = icmp ult i64 %i.r, %i.ab
  br i1 %.not607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %__ilog2_u64.exit66
  %i.ac = sub i32 %i.v, %i.x
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = sub i32 62, %i.aa
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ae)
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %logarithmic_accumulation.exit
  %i.ag = phi i64 [ %i.ab, %.lr.ph ], [ %i.cq, %logarithmic_accumulation.exit ] ; 2 uses
  %.05710 = phi i32 [ %i.af, %.lr.ph ], [ %spec.select, %logarithmic_accumulation.exit ] ; 3 uses
  %.0589 = phi i64 [ %i.r, %.lr.ph ], [ %.0.i67, %logarithmic_accumulation.exit ] ; 3 uses
  %.048 = phi i32 [ 0, %.lr.ph ], [ %.1, %logarithmic_accumulation.exit ] ; 3 uses
  %i.ah = zext i32 %.05710 to i64                 ; 5 uses
  %i.ai = shl i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %.0589, %i.ai
  br i1 %i.aj, label %logarithmic_accumulation.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = sub nuw i64 %.0589, %i.ai               ; 2 uses
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
  %i.am = add i64 %i.al, %i.ai
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @timekeeper_data, i64 328), align 8
end_hunk_2
