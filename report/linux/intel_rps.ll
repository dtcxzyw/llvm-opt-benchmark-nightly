Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_rps?download=true
inline.NumInlined: 618
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@intel_rps_enable:bb.a

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %has_busy_stats.exit
  %i.iz = getelementptr i8, ptr %0, i64 96        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.iz, i32 1, ptr elementtype(i8) %i.iz) #12, !srcloc !20
  br label %bb.cd

bb.cd:                                            ; preds = %.split79, %.split, %chv_rps_enable.exit.thread77, %chv_rps_enable.exit, %.critedge, %rps_uses_slpc.exit, %bb.a, %bb.cc
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @gen9_rps_enable(ptr noundef initializes((124, 128), (129, 130), (176, 180)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3696      ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -3672
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 1656
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp eq i8 %i.f, 9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 137
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 23
  %.val10 = load ptr, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %i.c, i64 36
  %.val11 = load i32, ptr %i.l, align 4
  %i.m = add i32 %.val11, 40972
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %.val10, i64 %i.n
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.k, ptr elementtype(i32) %i.o) #12, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val = load ptr, ptr %i.c, align 8
  %i.p = getelementptr i8, ptr %i.c, i64 36
  %.val9 = load i32, ptr %i.p, align 4
  %i.q = add i32 %.val9, 41072
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %.val, i64 %i.r
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 10, ptr elementtype(i32) %i.s) #12, !srcloc !19
  %i.t = getelementptr i8, ptr %0, i64 124
  store i32 48, ptr %i.t, align 4
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 176
  store i32 -1, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 129
  store i8 -1, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %0, i64 133        ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = tail call fastcc i32 @rps_set(ptr noundef %0, i8 noundef zeroext %i.x, i1 noundef zeroext true) #11, !srcloc !25
  %.not.i = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %.val.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef nonnull @.str.14) #13
  br label %rps_reset.exit

bb.f:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.w, align 1
  %i.ad = getelementptr i8, ptr %0, i64 128
  store i8 %i.ac, ptr %i.ad, align 8
  br label %rps_reset.exit

rps_reset.exit:                                   ; preds = %__drm_to_dev.exit.i, %bb.f
  ret i1 %.not.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @gen8_rps_enable(ptr noundef initializes((124, 128), (129, 130), (176, 180)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3672
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 137
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw i32 %i.d, 24
  %.val8 = load ptr, ptr %.val10, align 8
  %i.f = getelementptr i8, ptr %.val10, i64 36    ; 2 uses
  %.val9 = load i32, ptr %i.f, align 4
  %i.g = add i32 %.val9, 40972
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %.val8, i64 %i.h
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.e, ptr elementtype(i32) %i.i) #12, !srcloc !19
  %.val = load ptr, ptr %.val10, align 8
  %.val7 = load i32, ptr %i.f, align 4
  %i.j = add i32 %.val7, 41072
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %.val, i64 %i.k
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 10, ptr elementtype(i32) %i.l) #12, !srcloc !19
  %i.m = getelementptr i8, ptr %0, i64 124
  store i32 48, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %0, i64 -3696
  %.val.i = load ptr, ptr %i.n, align 8           ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 176
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %0, i64 129
  store i8 -1, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 133        ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = tail call fastcc i32 @rps_set(ptr noundef %0, i8 noundef zeroext %i.r, i1 noundef zeroext true) #11, !srcloc !25
  %.not.i = icmp eq i32 %i.s, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %.val.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.v, ptr noundef nonnull @.str.14) #13
  br label %rps_reset.exit

bb.d:                                             ; preds = %bb.a
  %i.w = load i8, ptr %i.q, align 1
  %i.x = getelementptr i8, ptr %0, i64 128
  store i8 %i.w, ptr %i.x, align 8
  br label %rps_reset.exit

rps_reset.exit:                                   ; preds = %__drm_to_dev.exit.i, %bb.d
  ret i1 %.not.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @gen6_rps_enable(ptr noundef initializes((124, 128), (129, 130), (176, 180)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3672
  %.val9 = load ptr, ptr %i.a, align 8            ; 3 uses
  %.val7 = load ptr, ptr %.val9, align 8
  %i.b = getelementptr i8, ptr %.val9, i64 36     ; 2 uses
  %.val8 = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val8, 40976
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %.val7, i64 %i.d
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 50000, ptr elementtype(i32) %i.e) #12, !srcloc !19
  %.val = load ptr, ptr %.val9, align 8
  %.val6 = load i32, ptr %i.b, align 4
  %i.f = add i32 %.val6, 41072
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val, i64 %i.g
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 10, ptr elementtype(i32) %i.h) #12, !srcloc !19
  %i.i = getelementptr i8, ptr %0, i64 124
  store i32 112, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 -3696
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 176
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 129
  store i8 -1, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 133        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = tail call fastcc i32 @rps_set(ptr noundef %0, i8 noundef zeroext %i.n, i1 noundef zeroext true) #11, !srcloc !25
  %.not.i = icmp eq i32 %i.o, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.val.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.r, ptr noundef nonnull @.str.14) #13
  br label %rps_reset.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.m, align 1
  %i.t = getelementptr i8, ptr %0, i64 128
  store i8 %i.s, ptr %i.t, align 8
  br label %rps_reset.exit

rps_reset.exit:                                   ; preds = %__drm_to_dev.exit.i, %bb.d
  ret i1 %.not.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @gen5_rps_enable(ptr nofree noundef captures(none) %0) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 -3696      ; 2 uses
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 1552
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 -3672      ; 2 uses
  %.val66 = load ptr, ptr %i.e, align 8           ; 65 uses
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @mchdev_lock) #10
  %i.f = getelementptr i8, ptr %.val66, i64 144   ; 12 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef %.val66, i32 70032, i1 noundef zeroext true) #10, !inline_history !1 ; 2 uses
  %i.i = getelementptr i8, ptr %.val66, i64 136   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i16 %i.j(ptr noundef %.val66, i32 70164, i1 noundef zeroext true) #10, !inline_history !54
  %i.l = or i16 %i.k, 1
  %i.m = getelementptr i8, ptr %.val66, i64 168   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %.val66, i32 70164, i16 noundef zeroext %i.l, i1 noundef zeroext true) #10, !inline_history !2
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = tail call zeroext i16 %i.o(ptr noundef %.val66, i32 69633, i1 noundef zeroext true) #10, !inline_history !54
  %i.q = or i16 %i.p, 1
  %i.r = load ptr, ptr %i.m, align 8
  tail call void %i.r(ptr noundef %.val66, i32 69633, i16 noundef zeroext %i.q, i1 noundef zeroext true) #10, !inline_history !2
  %i.s = getelementptr i8, ptr %.val66, i64 176   ; 44 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef %.val66, i32 70064, i32 noundef 100000, i1 noundef zeroext true) #10, !inline_history !0
  %i.u = load ptr, ptr %i.s, align 8
  tail call void %i.u(ptr noundef %.val66, i32 70068, i32 noundef 100000, i1 noundef zeroext true) #10, !inline_history !0
  %i.v = load ptr, ptr %i.s, align 8
  tail call void %i.v(ptr noundef %.val66, i32 70044, i32 noundef 90000, i1 noundef zeroext true) #10, !inline_history !0
  %i.w = load ptr, ptr %i.s, align 8
  tail call void %i.w(ptr noundef %.val66, i32 70048, i32 noundef 80000, i1 noundef zeroext true) #10, !inline_history !0
  %i.x = load ptr, ptr %i.s, align 8
  tail call void %i.x(ptr noundef %.val66, i32 70012, i32 noundef 1, i1 noundef zeroext true) #10, !inline_history !0
  %i.y = lshr i32 %i.h, 6
  %i.z = and i32 %i.y, 60
  %i.aa = add nuw nsw i32 %i.z, 69904
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = tail call i32 %i.ab(ptr noundef %.val66, i32 %i.aa, i1 noundef zeroext true) #10, !inline_history !1
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = and i32 %i.ad, 127
  %i.af = load ptr, ptr %i.s, align 8
  tail call void %i.af(ptr noundef %.val66, i32 70016, i32 noundef 144, i1 noundef zeroext true) #10, !inline_history !0
  %i.ag = load ptr, ptr %i.s, align 8
  tail call void %i.ag(ptr noundef %.val66, i32 70092, i32 noundef %i.ae, i1 noundef zeroext true) #10, !inline_history !0
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = tail call i32 %i.ah(ptr noundef %.val66, i32 70092, i1 noundef zeroext false) #10, !inline_history !55 ; 0 uses
  %i.aj = or i32 %i.h, 16384
  %i.ak = load ptr, ptr %i.s, align 8
  tail call void %i.ak(ptr noundef %.val66, i32 70032, i32 noundef %i.aj, i1 noundef zeroext true) #10, !inline_history !0
  %i.al = tail call i64 @local_clock() #10
  %i.am = tail call i64 @local_clock() #10
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !60
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = tail call i32 %i.an(ptr noundef %.val66, i32 70000, i1 noundef zeroext true) #10, !inline_history !1
  %i.ap = and i32 %i.ao, 4096
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.ar = phi i64 [ %i.au, %bb.b ], [ %i.am, %bb.a ]
  %i.as = sub i64 %i.ar, %i.al
  %i.at = icmp ugt i64 %i.as, 9999999
  br i1 %i.at, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !61
  %i.au = tail call i64 @local_clock() #10
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !60
  %i.av = load ptr, ptr %i.f, align 8
  %i.aw = tail call i32 %i.av(ptr noundef %.val66, i32 70000, i1 noundef zeroext true) #10, !inline_history !1
  %i.ax = and i32 %i.aw, 4096
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread72, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.val66, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.bd = phi ptr [ %i.bc, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bd, ptr noundef nonnull @.str.15) #13
  br label %.thread72

.thread72:                                        ; preds = %bb.b, %bb.a, %__drm_to_dev.exit
  tail call void @__const_udelay(i64 noundef 4295000) #10
  %i.be = getelementptr i8, ptr %0, i64 128
  %i.bf = load i8, ptr %i.be, align 8
  %.val16.i = load ptr, ptr %i.e, align 8         ; 6 uses
  %i.bg = getelementptr i8, ptr %.val16.i, i64 136 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call zeroext i16 %i.bh(ptr noundef %.val16.i, i32 70000, i1 noundef zeroext true) #10, !inline_history !3
  %i.bj = and i16 %i.bi, 4096
  %.not.i67 = icmp eq i16 %i.bj, 0
  br i1 %.not.i67, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.thread72
  %.val.i = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr i8, ptr %.val.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.f, %bb.e
  %i.bm = phi ptr [ %i.bl, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bm, i32 noundef 1, ptr noundef nonnull @.str.16) #10
  br label %__gen5_rps_set.exit

bb.g:                                             ; preds = %.thread72
  %i.bn = zext i8 %i.bf to i16
  %i.bo = getelementptr i8, ptr %0, i64 132
  %.val17.i = load i8, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %0, i64 133
  %.val18.i = load i8, ptr %i.bp, align 1
  %i.bq = zext i8 %.val17.i to i16
  %i.br = sub nsw i16 %i.bq, %i.bn
  %i.bs = zext i8 %.val18.i to i16
  %.tr.i = add nsw i16 %i.br, %i.bs
  %i.bt = shl i16 %.tr.i, 8                       ; 2 uses
  %i.bu = or i16 %i.bt, 16512
  %i.bv = getelementptr i8, ptr %.val16.i, i64 168 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef %.val16.i, i32 70000, i16 noundef zeroext %i.bu, i1 noundef zeroext true) #10, !inline_history !4
  %i.bx = load ptr, ptr %i.bg, align 8
  %i.by = tail call zeroext i16 %i.bx(ptr noundef %.val16.i, i32 70000, i1 noundef zeroext false) #10, !inline_history !5 ; 0 uses
  %i.bz = or i16 %i.bt, 20608
  %i.ca = load ptr, ptr %i.bv, align 8
  tail call void %i.ca(ptr noundef %.val16.i, i32 70000, i16 noundef zeroext %i.bz, i1 noundef zeroext true) #10, !inline_history !4
  br label %__gen5_rps_set.exit

__gen5_rps_set.exit:                              ; preds = %__drm_to_dev.exit.i, %bb.g
  %i.cb = load ptr, ptr %i.f, align 8
  %i.cc = tail call i32 %i.cb(ptr noundef %.val66, i32 70372, i1 noundef zeroext true) #10, !inline_history !1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr i8, ptr %0, i64 216       ; 5 uses
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.f, align 8
  %i.cg = tail call i32 %i.cf(ptr noundef %.val66, i32 70376, i1 noundef zeroext true) #10, !inline_history !1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = load i64, ptr %i.ce, align 8
  %i.cj = add i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.ce, align 8
  %i.ck = load ptr, ptr %i.f, align 8
  %i.cl = tail call i32 %i.ck(ptr noundef %.val66, i32 70368, i1 noundef zeroext true) #10, !inline_history !1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load i64, ptr %i.ce, align 8
  %i.co = add i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.ce, align 8
  %i.cp = load volatile i64, ptr @jiffies, align 64
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = getelementptr i8, ptr %0, i64 224
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.f, align 8
  %i.ct = tail call i32 %i.cs(ptr noundef %.val66, i32 70388, i1 noundef zeroext true) #10, !inline_history !1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %0, i64 240
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = tail call i64 @ktime_get_raw() #10
  %i.cx = getelementptr i8, ptr %0, i64 248
  store i64 %i.cw, ptr %i.cx, align 8
  tail call void @ilk_display_rps_enable(ptr noundef %i.d) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @mchdev_lock) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !62
  %i.cy = load ptr, ptr %i.s, align 8
  tail call void %i.cy(ptr noundef %.val66, i32 71168, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.cz = load ptr, ptr %i.f, align 8
  %i.da = tail call i32 %i.cz(ptr noundef %.val66, i32 71168, i1 noundef zeroext false) #10, !inline_history !57 ; 0 uses
  %i.db = load ptr, ptr %i.s, align 8
  tail call void %i.db(ptr noundef %.val66, i32 70220, i32 noundef 352587008, i1 noundef zeroext true) #10, !inline_history !56
  %i.dc = load ptr, ptr %i.s, align 8
  tail call void %i.dc(ptr noundef %.val66, i32 70224, i32 noundef 8323072, i1 noundef zeroext true) #10, !inline_history !56
  %i.dd = load ptr, ptr %i.s, align 8
  tail call void %i.dd(ptr noundef %.val66, i32 70228, i32 noundef 505544708, i1 noundef zeroext true) #10, !inline_history !56
  %i.de = load ptr, ptr %i.s, align 8
  tail call void %i.de(ptr noundef %.val66, i32 70232, i32 noundef 67108868, i1 noundef zeroext true) #10, !inline_history !56
  %i.df = load ptr, ptr %i.s, align 8
  tail call void %i.df(ptr noundef %.val66, i32 70236, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dg = load ptr, ptr %i.s, align 8
  tail call void %i.dg(ptr noundef %.val66, i32 70240, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dh = load ptr, ptr %i.s, align 8
  tail call void %i.dh(ptr noundef %.val66, i32 70244, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.di = load ptr, ptr %i.s, align 8
  tail call void %i.di(ptr noundef %.val66, i32 70248, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dj = load ptr, ptr %i.s, align 8
  tail call void %i.dj(ptr noundef %.val66, i32 70252, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dk = load ptr, ptr %i.s, align 8
  tail call void %i.dk(ptr noundef %.val66, i32 70256, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dl = load ptr, ptr %i.s, align 8
  tail call void %i.dl(ptr noundef %.val66, i32 70260, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.dm = load ptr, ptr %i.s, align 8
  tail call void %i.dm(ptr noundef %.val66, i32 70264, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  br label %.preheader.i

.preheader.i:                                     ; preds = %intel_pxfreq.exit.i, %__gen5_rps_set.exit
  %indvars.iv.i = phi i64 [ 0, %__gen5_rps_set.exit ], [ %indvars.iv.next.i, %intel_pxfreq.exit.i ] ; 3 uses
  %i.dn = load ptr, ptr %i.f, align 8
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.do = shl i32 %indvars.iv.tr.i, 2
  %i.dp = add i32 %i.do, 69904
  %i.dq = tail call i32 %i.dn(ptr noundef %.val66, i32 %i.dp, i1 noundef zeroext true) #10, !inline_history !58 ; 4 uses
  %i.dr = and i32 %i.dq, 7                        ; 2 uses
  %.not.i.i68 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i68, label %intel_pxfreq.exit.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %i.ds = lshr i32 %i.dq, 12
  %i.dt = and i32 %i.ds, 3
  %i.du = lshr i32 %i.dq, 16
  %i.dv = and i32 %i.du, 63
  %i.dw = mul nuw nsw i32 %i.dv, 133333
  %i.dx = shl nuw nsw i32 %i.dr, %i.dt
  %i.dy = udiv i32 %i.dw, %i.dx
  br label %intel_pxfreq.exit.i

intel_pxfreq.exit.i:                              ; preds = %bb.h, %.preheader.i
  %.0.i.i = phi i32 [ %i.dy, %bb.h ], [ 0, %.preheader.i ]
  %i.dz = lshr i32 %i.dq, 24
  %i.ea = and i32 %i.dz, 127                      ; 2 uses
  %i.eb = mul nuw nsw i32 %i.ea, %i.ea
  %i.ec = mul i32 %i.eb, %.0.i.i
  %i.ed = udiv i32 %i.ec, 1000
  %i.ee = mul nuw nsw i32 %i.ed, 17
  %i.ef = udiv i32 %i.ee, 967740
  %i.eg = trunc nuw nsw i32 %i.ef to i8
  %i.eh = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.eg, ptr %i.eh, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %init_emon.exit, label %.preheader.i, !llvm.loop !59

init_emon.exit:                                   ; preds = %intel_pxfreq.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 0, ptr %i.ej, align 1
  %1 = load i32, ptr %i.a, align 16
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.ek = load ptr, ptr %i.s, align 8
  tail call void %i.ek(ptr noundef %.val66, i32 71268, i32 noundef %2, i1 noundef zeroext true) #10, !inline_history !56
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = load i32, ptr %i.el, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.em = load ptr, ptr %i.s, align 8
  tail call void %i.em(ptr noundef %.val66, i32 71272, i32 noundef %4, i1 noundef zeroext true) #10, !inline_history !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %5 = load i32, ptr %i.en, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %i.eo = load ptr, ptr %i.s, align 8
  tail call void %i.eo(ptr noundef %.val66, i32 71276, i32 noundef %6, i1 noundef zeroext true) #10, !inline_history !56
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %7 = load i32, ptr %i.ep, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %i.eq = load ptr, ptr %i.s, align 8
  tail call void %i.eq(ptr noundef %.val66, i32 71280, i32 noundef %8, i1 noundef zeroext true) #10, !inline_history !56
  %i.er = load ptr, ptr %i.s, align 8
  tail call void %i.er(ptr noundef %.val66, i32 71176, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.es = load ptr, ptr %i.s, align 8
  tail call void %i.es(ptr noundef %.val66, i32 71180, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.et = load ptr, ptr %i.s, align 8
  tail call void %i.et(ptr noundef %.val66, i32 71184, i32 noundef 32512, i1 noundef zeroext true) #10, !inline_history !56
  %i.eu = load ptr, ptr %i.s, align 8
  tail call void %i.eu(ptr noundef %.val66, i32 71188, i32 noundef 14, i1 noundef zeroext true) #10, !inline_history !56
  %i.ev = load ptr, ptr %i.s, align 8
  tail call void %i.ev(ptr noundef %.val66, i32 71192, i32 noundef 917504, i1 noundef zeroext true) #10, !inline_history !56
  %i.ew = load ptr, ptr %i.s, align 8
  tail call void %i.ew(ptr noundef %.val66, i32 71196, i32 noundef 1744831232, i1 noundef zeroext true) #10, !inline_history !56
  %i.ex = load ptr, ptr %i.s, align 8
  tail call void %i.ex(ptr noundef %.val66, i32 71200, i32 noundef 1107296256, i1 noundef zeroext true) #10, !inline_history !56
  %i.ey = load ptr, ptr %i.s, align 8
  tail call void %i.ey(ptr noundef %.val66, i32 71204, i32 noundef 1310769, i1 noundef zeroext true) #10, !inline_history !56
  %i.ez = load ptr, ptr %i.s, align 8
  tail call void %i.ez(ptr noundef %.val66, i32 71208, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fa = load ptr, ptr %i.s, align 8
  tail call void %i.fa(ptr noundef %.val66, i32 71212, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fb = load ptr, ptr %i.s, align 8
  tail call void %i.fb(ptr noundef %.val66, i32 71296, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fc = load ptr, ptr %i.s, align 8
  tail call void %i.fc(ptr noundef %.val66, i32 71304, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fd = load ptr, ptr %i.s, align 8
  tail call void %i.fd(ptr noundef %.val66, i32 71312, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fe = load ptr, ptr %i.s, align 8
  tail call void %i.fe(ptr noundef %.val66, i32 71320, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.ff = load ptr, ptr %i.s, align 8
  tail call void %i.ff(ptr noundef %.val66, i32 71328, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fg = load ptr, ptr %i.s, align 8
  tail call void %i.fg(ptr noundef %.val66, i32 71336, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fh = load ptr, ptr %i.s, align 8
  tail call void %i.fh(ptr noundef %.val66, i32 71344, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fi = load ptr, ptr %i.s, align 8
  tail call void %i.fi(ptr noundef %.val66, i32 71352, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !56
  %i.fj = load ptr, ptr %i.s, align 8
  tail call void %i.fj(ptr noundef %.val66, i32 71168, i32 noundef -2147483623, i1 noundef zeroext true) #10, !inline_history !56
  %i.fk = load ptr, ptr %i.f, align 8
  %i.fl = tail call i32 %i.fk(ptr noundef %.val66, i32 71360, i1 noundef zeroext true) #10, !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr i8, ptr %0, i64 264
  store i8 %i.fm, ptr %i.fn, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_rps_disable(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
intel_rps_is_enabled.exit:
  %i.a = getelementptr i8, ptr %0, i64 -3696      ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 96         ; 7 uses
  %i.c = load volatile i64, ptr %i.b, align 8
  %.in.i = trunc i64 %i.c to i1
  br i1 %.in.i, label %bb.a, label %bb.i

bb.a:                                             ; preds = %intel_rps_is_enabled.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 -2, ptr elementtype(i8) %i.b) #12, !srcloc !70
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 -5, ptr elementtype(i8) %i.b) #12, !srcloc !70
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 -9, ptr elementtype(i8) %i.b) #12, !srcloc !70
  %i.d = getelementptr i8, ptr %.val, i64 1656
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ugt i8 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 -3672
  %.val10 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.val10.val = load ptr, ptr %.val10, align 8
  %i.h = getelementptr i8, ptr %.val10, i64 36
  %.val10.val11 = load i32, ptr %i.h, align 4
  %i.i = add i32 %.val10.val11, 40996
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %.val10.val, i64 %i.j
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.k) #12, !srcloc !19
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %.val, i64 1664
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 524288
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val, i64 1648
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 28
  %i.r = load i64, ptr %i.q, align 4
  %i.s = and i64 %i.r, 1
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.a, align 8
  %i.t = getelementptr i8, ptr %.val.i, i64 1552
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %0, i64 -3672      ; 2 uses
  %.val14.i = load ptr, ptr %i.v, align 8         ; 8 uses
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @mchdev_lock) #10
  tail call void @ilk_display_rps_disable(ptr noundef %i.u) #10
  %i.w = getelementptr i8, ptr %.val14.i, i64 136
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i16 %i.x(ptr noundef %.val14.i, i32 70000, i1 noundef zeroext true) #10, !inline_history !63
  %i.z = getelementptr i8, ptr %.val14.i, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %.val14.i, i32 70016, i1 noundef zeroext true) #10, !inline_history !64
  %i.ac = and i32 %i.ab, -17
  %i.ad = getelementptr i8, ptr %.val14.i, i64 176 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %.val14.i, i32 70016, i32 noundef %i.ac, i1 noundef zeroext true) #10, !inline_history !65
  %i.af = load ptr, ptr %i.ad, align 8
  tail call void %i.af(ptr noundef %.val14.i, i32 70020, i32 noundef 16, i1 noundef zeroext true) #10, !inline_history !66
  %i.ag = getelementptr i8, ptr %0, i64 135
  %i.ah = load i8, ptr %i.ag, align 1
  %.val16.i.i = load ptr, ptr %i.v, align 8       ; 6 uses
  %i.ai = getelementptr i8, ptr %.val16.i.i, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call zeroext i16 %i.aj(ptr noundef %.val16.i.i, i32 70000, i1 noundef zeroext true) #10, !inline_history !67
  %i.al = and i16 %i.ak, 4096
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr i8, ptr %.val.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.g, %bb.f
  %i.ao = phi ptr [ %i.an, %bb.g ], [ null, %bb.f ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ao, i32 noundef 1, ptr noundef nonnull @.str.16) #10
  br label %gen5_rps_disable.exit

bb.h:                                             ; preds = %bb.e
  %i.ap = zext i8 %i.ah to i16
  %i.aq = getelementptr i8, ptr %0, i64 132
  %.val17.i.i = load i8, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %0, i64 133
  %.val18.i.i = load i8, ptr %i.ar, align 1
  %i.as = zext i8 %.val17.i.i to i16
  %i.at = sub nsw i16 %i.as, %i.ap
  %i.au = zext i8 %.val18.i.i to i16
  %.tr.i.i = add nsw i16 %i.at, %i.au
  %i.av = shl i16 %.tr.i.i, 8                     ; 2 uses
  %i.aw = or i16 %i.av, 16512
  %i.ax = getelementptr i8, ptr %.val16.i.i, i64 168 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef %.val16.i.i, i32 70000, i16 noundef zeroext %i.aw, i1 noundef zeroext true) #10, !inline_history !68
  %i.az = load ptr, ptr %i.ai, align 8
  %i.ba = tail call zeroext i16 %i.az(ptr noundef %.val16.i.i, i32 70000, i1 noundef zeroext false) #10, !inline_history !69 ; 0 uses
  %i.bb = or i16 %i.av, 20608
  %i.bc = load ptr, ptr %i.ax, align 8
  tail call void %i.bc(ptr noundef %.val16.i.i, i32 70000, i16 noundef zeroext %i.bb, i1 noundef zeroext true) #10, !inline_history !68
  br label %gen5_rps_disable.exit

gen5_rps_disable.exit:                            ; preds = %__drm_to_dev.exit.i.i, %bb.h
  tail call void @__const_udelay(i64 noundef 4295000) #10
  %i.bd = or i16 %i.y, 4096
  %i.be = zext i16 %i.bd to i32
  %i.bf = load ptr, ptr %i.ad, align 8
  tail call void %i.bf(ptr noundef %.val14.i, i32 70000, i32 noundef %i.be, i1 noundef zeroext true) #10, !inline_history !66
  tail call void @__const_udelay(i64 noundef 4295000) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @mchdev_lock) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %gen5_rps_disable.exit, %bb.d, %bb.c, %intel_rps_is_enabled.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @intel_freq_opcode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3696
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 1656
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = icmp ugt i8 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = mul i32 %1, 3                            ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %.in33.v = select i1 %i.f, i32 25, i32 -25
  %.in33 = add i32 %.in33.v, %i.e
  %i.g = sdiv i32 %.in33, 50
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val, i64 1664
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64                     ; 2 uses
end_hunk_0
begin_hunk_1_@boost_if_not_started:bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_interactive(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 3696
  %i.c = getelementptr i8, ptr %.val, i64 3848    ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr i8, ptr %.val, i64 3876    ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %intel_rps_is_active.exit.i, label %intel_rps_mark_interactive.exit

intel_rps_is_active.exit.i:                       ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.val, i64 3792
  %i.h = load volatile i64, ptr %i.g, align 8
  %.in.in.i.i = and i64 %i.h, 2
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %intel_rps_mark_interactive.exit, label %bb.c

bb.c:                                             ; preds = %intel_rps_is_active.exit.i
  tail call fastcc void @rps_set_power(ptr noundef %i.b, i32 noundef 2) #11, !srcloc !18
  br label %intel_rps_mark_interactive.exit

bb.d:                                             ; preds = %bb.a
  %i.i = add i32 %i.e, -1
  store i32 %i.i, ptr %i.d, align 4
  br label %intel_rps_mark_interactive.exit

intel_rps_mark_interactive.exit:                  ; preds = %bb.b, %intel_rps_is_active.exit.i, %bb.c, %bb.d
  tail call void @mutex_unlock(ptr noundef %i.c) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ilk_irq_handler(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 3696
  tail call void @gen5_rps_irq_handler(ptr noundef %i.b) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_gt_ns_to_pm_interval(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen6_gt_pm_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @timer_delete_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen6_gt_pm_disable_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_synchronize_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @gen11_gt_reset_one_iir(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen6_gt_pm_reset_iir(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vlv_iosf_sb_get(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_iosf_sb_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vlv_iosf_sb_put(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_iosf_sb_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @local_clock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ilk_display_rps_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ilk_display_rps_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen6_gt_pm_unmask_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_clock_get_czclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_engine_get_busy_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_clock_get_gpll(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ilk_fsb_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ilk_mem_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_gt_pm_interval_to_ns(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { noredzone "no-builtin-wcslen" }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = distinct !{null, null}
!6 = distinct !{null, null}
!7 = distinct !{!7, !21}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"cf-protection-branch", i32 1}
!10 = !{i32 4, !"function_return_thunk_extern", i32 1}
!11 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!12 = !{i32 1, !"Code Model", i32 2}
!13 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!14 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!15 = !{i32 1, !"override-stack-alignment", i32 8}
!16 = !{i32 4, !"SkipRaxSetup", i32 1}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!18 = !{i64 19964}
!19 = !{i64 2156086043}
!20 = !{i64 2149622978, i64 2149623017, i64 2149623038, i64 2149623075, i64 2149623098, i64 2149622969}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{i64 31347}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{i64 2149058562, i64 2149058601, i64 2149058622, i64 2149058659, i64 2149058682, i64 2149058691}
!28 = distinct !{null, null}
!29 = distinct !{null, null, null}
!30 = !{i64 27300}
!31 = !{i64 2149632239, i64 2149632278, i64 2149632299, i64 2149632336, i64 2149632359, i64 2149632368}
!32 = !{i64 22546}
!33 = !{i64 23338}
!34 = distinct !{!34, !21}
!35 = distinct !{null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null, null, null}
!38 = !{i64 19623}
!39 = !{i64 2149042982, i64 2149043021, i64 2149043042, i64 2149043079, i64 2149043102, i64 2149042973}
!40 = !{i64 2149629443, i64 2149629482, i64 2149629503, i64 2149629540, i64 2149629563, i64 2149629572}
!41 = !{i64 2149052813, i64 2149052852, i64 2149052873, i64 2149052910, i64 2149052933, i64 2149052942}
!42 = distinct !{null}
!43 = distinct !{null, null}
!44 = distinct !{null, null}
!45 = !{i64 2161567094, i64 2161567121, i64 2161567518, i64 2161567551, i64 2161567586, i64 2161567602, i64 2161568443, i64 2161568501, i64 2161568550, i64 2161568360, i64 2161567661, i64 2161567693}
!46 = !{i64 2161565283}
!47 = !{i64 2161575227, i64 2161575254, i64 2161575651, i64 2161575684, i64 2161575719, i64 2161575735, i64 2161576576, i64 2161576634, i64 2161576683, i64 2161576493, i64 2161575794, i64 2161575826}
!48 = !{i64 2161573416}
!49 = !{i64 40769}
!50 = !{i64 40907}
!51 = !{i64 2161586336, i64 2161586363, i64 2161586752, i64 2161586785, i64 2161586820, i64 2161586836, i64 2161587677, i64 2161587735, i64 2161587784, i64 2161587594, i64 2161586895, i64 2161586927}
!52 = !{i64 2161584547}
!53 = !{i64 40838}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null, null}
!57 = distinct !{null, null}
!58 = distinct !{null, null}
!59 = distinct !{!59, !21}
!60 = !{i64 2161153154}
!61 = !{i64 3084032}
!62 = !{!"auto-init"}
!63 = distinct !{null, null}
!64 = distinct !{null, null, null}
!65 = distinct !{null, null, null}
!66 = distinct !{null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{null, null, null}
!69 = distinct !{null, null, null}
!70 = !{i64 2149624290, i64 2149624329, i64 2149624350, i64 2149624387, i64 2149624410, i64 2149624281}
!71 = distinct !{null}
!72 = distinct !{null, null, null}
!73 = distinct !{!73, !21}
!74 = !{i64 2161600449, i64 2161600476, i64 2161600876, i64 2161600909, i64 2161600944, i64 2161600960, i64 2161601801, i64 2161601859, i64 2161601908, i64 2161601718, i64 2161601019, i64 2161601051}
!75 = !{i64 2161598632}
!76 = !{i64 52353}
!77 = !{i64 54288}
!78 = !{i64 56371}
!79 = !{i64 56761}
!80 = !{i64 2156083650}
!81 = distinct !{null, null}
!82 = distinct !{null, null}
!83 = distinct !{null, ptr @intel_rps_read_rpstat, null}
!84 = distinct !{null, null}
!85 = distinct !{null}
!86 = distinct !{null, ptr @intel_rps_read_rpstat, null}
!87 = distinct !{null, null}
!88 = distinct !{null}
!89 = !{i64 2162313411}
!90 = distinct !{null, null}
!91 = distinct !{null, null}
!92 = distinct !{null, null, null}
!93 = distinct !{null, null, null}
!94 = distinct !{null, null, null}
end_hunk_1
