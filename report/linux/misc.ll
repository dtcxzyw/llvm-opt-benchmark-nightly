Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/misc?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@zlib_inflateIncomp:bb.a
  br i1 %.not46.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nuw i32 %i.l, %spec.select.i        ; 2 uses
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = zext i32 %i.ah to i64                   ; 2 uses
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.am, i64 %i.ak, i1 false)
  store i32 %i.ah, ptr %i.w, align 4
  %i.an = load i32, ptr %i.m, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.an, ptr %i.ao, align 8
  br label %zlib_updatewindow.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.w, align 4
  %i.aq = add i32 %i.ap, %spec.select.i           ; 2 uses
  %i.ar = load i32, ptr %i.m, align 4             ; 2 uses
  %i.as = icmp eq i32 %i.aq, %i.ar
  %spec.store.select.i = select i1 %i.as, i32 0, i32 %i.aq
  store i32 %spec.store.select.i, ptr %i.w, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.ar
  br i1 %i.av, label %bb.g, label %zlib_updatewindow.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = add i32 %i.au, %spec.select.i
  store i32 %i.aw, ptr %i.at, align 8
  br label %zlib_updatewindow.exit

zlib_updatewindow.exit:                           ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.ax = and i64 %i.f, 4294967295
  store i64 %i.ax, ptr %i.e, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call fastcc i64 @zlib_adler32(i64 noundef %i.az, ptr noundef %i.ba, i32 noundef %i.bc) #17 ; 2 uses
  store i64 %i.bd, ptr %i.ay, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = load i64, ptr %i.i, align 8             ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bf
  store ptr %i.bn, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, %i.bf
  store i64 %i.bq, ptr %i.bo, align 8
  store i64 0, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %zlib_updatewindow.exit
  %.0 = phi i32 [ 0, %zlib_updatewindow.exit ], [ -3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind
define hidden void @__putstr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @early_serial_base, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %serial_putchar.exit37
  %.0 = phi ptr [ %i.w, %serial_putchar.exit37 ], [ %0, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.0, align 1                ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %.loopexit
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader
  %i.c = load ptr, ptr @pio_ops, align 8
  %i.d = load i32, ptr @early_serial_base, align 4
  %i.e = trunc i32 %i.d to i16
  %i.f = add i16 %i.e, 5
  %i.g = tail call zeroext i8 %i.c(i16 noundef zeroext %i.f) #18, !inline_history !45
  %i.h = and i8 %i.g, 32
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.preheader, label %serial_putchar.exit

.lr.ph.i.preheader:                               ; preds = %bb.b, %.lr.ph.i.preheader
  %i.j = phi i32 [ %i.r, %.lr.ph.i.preheader ], [ 65534, %bb.b ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !46
  %i.k = load ptr, ptr @pio_ops, align 8
  %i.l = load i32, ptr @early_serial_base, align 4
  %i.m = trunc i32 %i.l to i16
  %i.n = add i16 %i.m, 5
  %i.o = tail call zeroext i8 %i.k(i16 noundef zeroext %i.n) #18, !inline_history !45
  %i.p = and i8 %i.o, 32
  %i.q = icmp ne i8 %i.p, 0
  %i.r = add nsw i32 %i.j, -1                     ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  %or.cond64 = select i1 %i.q, i1 true, i1 %.not.i
  br i1 %or.cond64, label %serial_putchar.exit, label %.lr.ph.i.preheader, !llvm.loop !47

serial_putchar.exit:                              ; preds = %.lr.ph.i.preheader, %bb.b
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.t = load i32, ptr @early_serial_base, align 4
  %i.u = trunc i32 %i.t to i16
  tail call void %i.s(i8 noundef zeroext 13, i16 noundef zeroext %i.u) #18, !inline_history !45
  %.pre = load i8, ptr %.0, align 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %serial_putchar.exit
  %i.v = phi i8 [ %i.b, %.preheader ], [ %.pre, %serial_putchar.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.x = load ptr, ptr @pio_ops, align 8
  %i.y = load i32, ptr @early_serial_base, align 4
  %i.z = trunc i32 %i.y to i16
  %i.aa = add i16 %i.z, 5
  %i.ab = tail call zeroext i8 %i.x(i16 noundef zeroext %i.aa) #18, !inline_history !45
  %i.ac = and i8 %i.ab, 32
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i34.preheader, label %serial_putchar.exit37

.lr.ph.i34.preheader:                             ; preds = %bb.c, %.lr.ph.i34.preheader
  %i.ae = phi i32 [ %i.am, %.lr.ph.i34.preheader ], [ 65534, %bb.c ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !46
  %i.af = load ptr, ptr @pio_ops, align 8
  %i.ag = load i32, ptr @early_serial_base, align 4
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = add i16 %i.ah, 5
  %i.aj = tail call zeroext i8 %i.af(i16 noundef zeroext %i.ai) #18, !inline_history !45
  %i.ak = and i8 %i.aj, 32
  %i.al = icmp ne i8 %i.ak, 0
  %i.am = add nsw i32 %i.ae, -1                   ; 2 uses
  %.not.i36 = icmp eq i32 %i.am, 0
  %or.cond65 = select i1 %i.al, i1 true, i1 %.not.i36
  br i1 %or.cond65, label %serial_putchar.exit37, label %.lr.ph.i34.preheader, !llvm.loop !47

serial_putchar.exit37:                            ; preds = %.lr.ph.i34.preheader, %bb.c
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ao = load i32, ptr @early_serial_base, align 4
  %i.ap = trunc i32 %i.ao to i16
  tail call void %i.an(i8 noundef zeroext %i.v, i16 noundef zeroext %i.ap) #18, !inline_history !45
  br label %.preheader, !llvm.loop !48

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.aq = load i32, ptr @lines, align 4           ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = load i32, ptr @cols, align 4            ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.au = load ptr, ptr @boot_params_ptr, align 8 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  br label %bb.e

bb.e:                                             ; preds = %scroll.exit, %bb.d
  %i.ba = phi i32 [ %i.aq, %bb.d ], [ %i.dc, %scroll.exit ] ; 6 uses
  %i.bb = phi i32 [ %i.as, %bb.d ], [ %i.dd, %scroll.exit ] ; 8 uses
  %i.bc = phi i32 [ %i.as, %bb.d ], [ %i.de, %scroll.exit ] ; 3 uses
  %i.bd = phi i32 [ %i.aq, %bb.d ], [ %i.df, %scroll.exit ] ; 4 uses
  %.023 = phi ptr [ %0, %bb.d ], [ %i.be, %scroll.exit ] ; 2 uses
  %.021 = phi i32 [ %i.aw, %bb.d ], [ %.122, %scroll.exit ] ; 4 uses
  %.020 = phi i32 [ %i.az, %bb.d ], [ %.1, %scroll.exit ] ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.bf = load i8, ptr %.023, align 1             ; 2 uses
  switch i8 %i.bf, label %bb.i [
    i8 0, label %bb.m
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bg = add nuw nsw i32 %.020, 1                ; 2 uses
  %.not33 = icmp slt i32 %i.bg, %i.bd
  br i1 %.not33, label %scroll.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr @vidmem, align 8          ; 2 uses
  %i.bi = shl i32 %i.bc, 1                        ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = add nsw i32 %i.bd, -1
  %i.bm = mul i32 %i.bi, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call ptr @memmove(ptr noundef %i.bh, ptr noundef %i.bk, i64 noundef %i.bn) #18 ; 0 uses
  %i.bp = load i32, ptr @lines, align 4           ; 6 uses
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = load i32, ptr @cols, align 4            ; 5 uses
  %i.bs = shl i32 %i.br, 1                        ; 2 uses
  %i.bt = mul i32 %i.bs, %i.bq                    ; 2 uses
  %i.bu = mul i32 %i.bs, %i.bp                    ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i38, label %scroll.exit

.lr.ph.i38:                                       ; preds = %bb.g
  %i.bw = load ptr, ptr @vidmem, align 8
  %i.bx = sext i32 %i.bt to i64
  %i.by = sext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i38
  %indvars.iv.i = phi i64 [ %i.bx, %.lr.ph.i38 ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %indvars.iv.i
  store i8 32, ptr %i.bz, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ca = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.ca, label %bb.h, label %scroll.exit, !llvm.loop !49

bb.i:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr @vidmem, align 8          ; 3 uses
  %i.cc = mul nuw nsw i32 %i.bb, %.020
  %i.cd = add nuw nsw i32 %i.cc, %.021
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  store i8 %i.bf, ptr %i.cg, align 1
  %i.ch = add nuw nsw i32 %.021, 1                ; 2 uses
  %.not31 = icmp slt i32 %i.ch, %i.bb
  br i1 %.not31, label %scroll.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = add nuw nsw i32 %.020, 1                ; 2 uses
  %.not32 = icmp slt i32 %i.ci, %i.ba
  br i1 %.not32, label %scroll.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = shl i32 %i.bb, 1                        ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ck
  %i.cm = add nsw i32 %i.ba, -1
  %i.cn = mul i32 %i.cm, %i.cj
  %i.co = sext i32 %i.cn to i64
  %i.cp = tail call ptr @memmove(ptr noundef nonnull %i.cb, ptr noundef %i.cl, i64 noundef %i.co) #18 ; 0 uses
  %i.cq = load i32, ptr @lines, align 4           ; 6 uses
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = load i32, ptr @cols, align 4            ; 5 uses
  %i.ct = shl i32 %i.cs, 1                        ; 2 uses
  %i.cu = mul i32 %i.ct, %i.cr                    ; 2 uses
  %i.cv = mul i32 %i.ct, %i.cq                    ; 2 uses
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.i39, label %scroll.exit

.lr.ph.i39:                                       ; preds = %bb.k
  %i.cx = load ptr, ptr @vidmem, align 8
  %i.cy = sext i32 %i.cu to i64
  %i.cz = sext i32 %i.cv to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %i.cy, %.lr.ph.i39 ], [ %indvars.iv.next.i41, %bb.l ] ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv.i40
  store i8 32, ptr %i.da, align 1
  %indvars.iv.next.i41 = add nsw i64 %indvars.iv.i40, 2 ; 2 uses
  %i.db = icmp slt i64 %indvars.iv.next.i41, %i.cz
  br i1 %i.db, label %bb.l, label %scroll.exit, !llvm.loop !49

scroll.exit:                                      ; preds = %bb.h, %bb.l, %bb.k, %bb.g, %bb.i, %bb.j, %bb.f
  %i.dc = phi i32 [ %i.ba, %bb.i ], [ %i.ba, %bb.f ], [ %i.cq, %bb.l ], [ %i.ba, %bb.j ], [ %i.bp, %bb.g ], [ %i.cq, %bb.k ], [ %i.bp, %bb.h ]
  %i.dd = phi i32 [ %i.bb, %bb.i ], [ %i.bb, %bb.f ], [ %i.cs, %bb.l ], [ %i.bb, %bb.j ], [ %i.br, %bb.g ], [ %i.cs, %bb.k ], [ %i.br, %bb.h ]
  %i.de = phi i32 [ %i.bb, %bb.i ], [ %i.bc, %bb.f ], [ %i.cs, %bb.l ], [ %i.bb, %bb.j ], [ %i.br, %bb.g ], [ %i.cs, %bb.k ], [ %i.br, %bb.h ]
  %i.df = phi i32 [ %i.bd, %bb.i ], [ %i.bd, %bb.f ], [ %i.cq, %bb.l ], [ %i.ba, %bb.j ], [ %i.bp, %bb.g ], [ %i.cq, %bb.k ], [ %i.bp, %bb.h ]
  %.122 = phi i32 [ %i.ch, %bb.i ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ]
  %.1 = phi i32 [ %.020, %bb.i ], [ %i.bg, %bb.f ], [ %.020, %bb.l ], [ %i.ci, %bb.j ], [ %.020, %bb.g ], [ %.020, %bb.k ], [ %.020, %bb.h ]
  br label %bb.e, !llvm.loop !50

bb.m:                                             ; preds = %bb.e
  %i.dg = trunc nuw i32 %.021 to i8
  %i.dh = load ptr, ptr @boot_params_ptr, align 8
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc nuw i32 %.020 to i8
  %i.dj = load ptr, ptr @boot_params_ptr, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.di, ptr %i.dk, align 1
  %i.dl = mul nuw nsw i32 %i.bc, %.020
  %i.dm = add nuw nsw i32 %i.dl, %.021            ; 2 uses
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.do = load i32, ptr @vidport, align 4
  %i.dp = trunc nuw nsw i32 %i.do to i16
  tail call void %i.dn(i8 noundef zeroext 14, i16 noundef zeroext %i.dp) #18
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dr = lshr i32 %i.dm, 8
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = load i32, ptr @vidport, align 4
  %i.du = trunc i32 %i.dt to i16
  %i.dv = add i16 %i.du, 1
  tail call void %i.dq(i8 noundef zeroext %i.ds, i16 noundef zeroext %i.dv) #18
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dx = load i32, ptr @vidport, align 4
  %i.dy = trunc nuw nsw i32 %i.dx to i16
  tail call void %i.dw(i8 noundef zeroext 15, i16 noundef zeroext %i.dy) #18
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ea = trunc i32 %i.dm to i8
  %i.eb = load i32, ptr @vidport, align 4
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = add i16 %i.ec, 1
  tail call void %i.dz(i8 noundef zeroext %i.ea, i16 noundef zeroext %i.ed) #18
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m
  ret void
}

; Function Attrs: noredzone nounwind
define hidden void @__puthex(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @__putnum(i64 noundef %0, i32 noundef 16, i32 noundef 16) #17
  ret void
}

; Function Attrs: noinline noredzone nounwind
define internal fastcc void @__putnum(i64 noundef %0, i32 noundef range(i32 10, 17) %1, i32 noundef range(i32 1, 17) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store i8 0, ptr %i.b, align 16
  %i.c = zext nneg i32 %1 to i64                  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ %0, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  %.01114 = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.b ]
  %.01213 = phi i32 [ %2, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.d = add nsw i32 %.01213, -1
  %i.e = urem i64 %.015, %i.c                     ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = icmp samesign ugt i64 %i.e, 9
  %i.h = select i1 %i.g, i8 87, i8 48
  %i.i = add nuw nsw i8 %i.h, %i.f
  %i.j = getelementptr inbounds i8, ptr %.01114, i64 -1 ; 3 uses
  store i8 %i.i, ptr %i.j, align 1
  %i.k = udiv i64 %.015, %i.c
  %i.l = icmp sgt i32 %.01213, 1
  %i.m = icmp uge i64 %.015, %i.c
  %i.n = select i1 %i.l, i1 true, i1 %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !51

bb.c:                                             ; preds = %bb.b
  call void @__putstr(ptr noundef nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noredzone nounwind
define hidden void @__putdec(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call fastcc void @__putnum(i64 noundef %0, i32 noundef 10, i32 noundef 1) #17
  ret void
}

; Function Attrs: noredzone nounwind
define hidden i64 @decompress_kernel(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr @free_mem_ptr, align 8     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 ptrtoint (ptr @boot_heap to i64), ptr @free_mem_ptr, align 8
  store i64 add (i64 ptrtoint (ptr @boot_heap to i64), i64 65536), ptr @free_mem_end_ptr, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i64 [ ptrtoint (ptr @boot_heap to i64), %bb.b ], [ %i.a, %bb.a ]
  %i.c = load i32, ptr @input_len, align 4        ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load i32, ptr @output_len, align 4       ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.g = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.h = xor i64 %i.g, -1
  %.088.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.f
  %.not99.i.i = icmp eq ptr %0, null
  br i1 %.not99.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void %2(ptr noundef nonnull @.str.32) #18, !inline_history !52
  br label %handle_relocations.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr @malloc_ptr, align 8       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %.fr.i.i = freeze i64 %i.b                      ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %.fr.i.i, i64 %i.i
  %spec.select.i.fr.i.i = freeze i64 %spec.select.i.i.i
  %i.j = add i64 %spec.select.i.fr.i.i, 7
  %i.k = and i64 %i.j, -8                         ; 3 uses
  %i.l = add i64 %i.k, 96                         ; 4 uses
  store i64 %i.l, ptr @malloc_ptr, align 8
  %i.m = load i64, ptr @free_mem_end_ptr, align 8
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %or.cond.not.i.i.i = icmp ult i64 %i.n, %i.l
  br i1 %or.cond.not.i.i.i, label %malloc.exit.thread.i.i, label %malloc.exit.i.i

malloc.exit.i.i:                                  ; preds = %bb.e
  %i.o = inttoptr i64 %i.k to ptr                 ; 9 uses
  %i.p = load i32, ptr @malloc_count, align 4     ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @malloc_count, align 4
  %i.r = icmp eq i64 %i.k, 0
  br i1 %i.r, label %malloc.exit.thread.i.i, label %bb.f

malloc.exit.thread.i.i:                           ; preds = %malloc.exit.i.i, %bb.e
  tail call void %2(ptr noundef nonnull @.str.34) #18, !inline_history !52
  br label %handle_relocations.exit

bb.f:                                             ; preds = %malloc.exit.i.i
  %.not.i106.i.i = icmp eq i64 %i.l, 0
  %spec.select.i107.i.i = select i1 %.not.i106.i.i, i64 %.fr.i.i, i64 %i.l
  %i.s = add i64 %spec.select.i107.i.i, 7
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = add i64 %i.t, 9544                       ; 2 uses
  store i64 %i.u, ptr @malloc_ptr, align 8
  %or.cond.not.i108.i.i = icmp ult i64 %i.n, %i.u
  br i1 %or.cond.not.i108.i.i, label %malloc.exit110.thread.i.i, label %malloc.exit110.i.i

malloc.exit110.thread.i.i:                        ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr null, ptr %i.v, align 8
  br label %bb.g

malloc.exit110.i.i:                               ; preds = %bb.f
  %i.w = inttoptr i64 %i.t to ptr
  %i.x = add nsw i32 %i.p, 2
  store i32 %i.x, ptr @malloc_count, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = icmp eq i64 %i.t, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %malloc.exit110.i.i, %malloc.exit110.thread.i.i
  tail call void %2(ptr noundef nonnull @.str.35) #18, !inline_history !52
  %.pre.i.i = load i32, ptr @malloc_count, align 4
  br label %free.exit.i.i

bb.h:                                             ; preds = %malloc.exit110.i.i
  %i.aa = icmp ult i32 %i.c, 10
  br i1 %i.aa, label %zlib_inflateEnd.exit.sink.split.i.i, label %bb.i

end_hunk_0
