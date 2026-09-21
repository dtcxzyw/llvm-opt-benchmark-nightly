Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/e1000_hw?download=true
inline.NumInlined: 376
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@e1000_write_eeprom:bb.a
  tail call void @iowrite16_rep(ptr noundef %i.i, ptr noundef %3, i64 noundef %i.j) #7
  br label %e1000_do_write_eeprom.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 84
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %.not.i = icmp ult i16 %1, %i.l
  br i1 %.not.i, label %bb.d, label %e1000_do_write_eeprom.exit

bb.d:                                             ; preds = %bb.c
  %narrow.i = sub nuw i16 %i.l, %1
  %i.m = add i16 %2, -1
  %or.cond.not.i = icmp ult i16 %i.m, %narrow.i
  br i1 %or.cond.not.i, label %bb.e, label %e1000_do_write_eeprom.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc i32 @e1000_acquire_eeprom(ptr noundef readonly %0) #8, !srcloc !69
  %.not28.i = icmp eq i32 %i.n, 0
  br i1 %.not28.i, label %bb.f, label %e1000_do_write_eeprom.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.a, align 8
  %i.p = icmp eq i32 %i.o, 2
  %i.q = getelementptr i8, ptr %0, i64 86         ; 5 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %.lr.ph.i29.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.r = load i16, ptr %i.q, align 2
  %i.s = add i16 %i.r, 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 19, i16 noundef zeroext %i.s) #8, !srcloc !70
  %i.t = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = add i16 %i.u, -2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 0, i16 noundef zeroext %i.v) #8, !srcloc !71
  tail call fastcc void @e1000_standby_eeprom(ptr noundef readonly %0) #8, !srcloc !72
  %wide.trip.count.i.i = zext i16 %2 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 3 uses
  %i.w = load i16, ptr %i.q, align 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 5, i16 noundef zeroext %i.w) #8, !srcloc !73
  %i.x = trunc nuw i64 %indvars.iv.i.i to i16
  %i.y = add i16 %1, %i.x
  %i.z = load i16, ptr %i.t, align 8
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext %i.y, i16 noundef zeroext %i.z) #8, !srcloc !74
  %i.aa = getelementptr [2 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.ab = load i16, ptr %i.aa, align 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext %i.ab, i16 noundef zeroext 16) #8, !srcloc !75
  tail call fastcc void @e1000_standby_eeprom(ptr noundef readonly %0) #8, !srcloc !76
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.03034.i.i = phi i16 [ 0, %.lr.ph.i.i ], [ %i.ag, %bb.h ]
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad) #6, !srcloc !12
  %i.af = and i32 %i.ae, 8
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.h, label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @__const_udelay(i64 noundef 214750) #7
  %i.ag = add nuw nsw i16 %.03034.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i16 %i.ag, 200
  br i1 %exitcond.not.i.i, label %e1000_write_eeprom_microwire.exit.i, label %bb.g, !llvm.loop !66

.thread.i.i:                                      ; preds = %bb.g
  tail call fastcc void @e1000_standby_eeprom(ptr noundef readonly %0) #8, !srcloc !77
  %i.ah = tail call i32 @__SCT__cond_resched() #7 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond38.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.thread.i.i
  %i.ai = load i16, ptr %i.q, align 2
  %i.aj = add i16 %i.ai, 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 16, i16 noundef zeroext %i.aj) #8, !srcloc !78
  %i.ak = load i16, ptr %i.t, align 8
  %i.al = add i16 %i.ak, -2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 0, i16 noundef zeroext %i.al) #8, !srcloc !79
  br label %e1000_write_eeprom_microwire.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.f
  %i.am = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.an = zext i16 %1 to i32
  %i.ao = icmp ugt i16 %1, 127
  %i.ap = getelementptr i8, ptr %0, i64 90        ; 8 uses
  %i.aq = getelementptr i8, ptr %0, i64 92
  br label %bb.i

bb.i:                                             ; preds = %e1000_standby_eeprom.exit.thread.i.i, %.lr.ph.i29.i
  %.03847.i.i = phi i16 [ 0, %.lr.ph.i29.i ], [ %indvars.le.i.i, %e1000_standby_eeprom.exit.thread.i.i ] ; 4 uses
  %i.ar = tail call fastcc i32 @e1000_spi_eeprom_ready(ptr noundef readonly %0) #8, !srcloc !80
  %.not.i30.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i30.i, label %bb.j, label %e1000_write_eeprom_spi.exit.i

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @e1000_standby_eeprom(ptr noundef readonly %0) #8, !srcloc !81
  %i.as = tail call i32 @__SCT__cond_resched() #7 ; 0 uses
  %i.at = load i16, ptr %i.q, align 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext 6, i16 noundef zeroext %i.at) #8, !srcloc !82
  tail call fastcc void @e1000_standby_eeprom(ptr noundef readonly %0) #8, !srcloc !83
  %i.au = load i16, ptr %i.am, align 8
  %i.av = icmp eq i16 %i.au, 8
  %or.cond.i.i = and i1 %i.ao, %i.av
  %spec.select.i.i = select i1 %or.cond.i.i, i16 10, i16 2
  %i.aw = load i16, ptr %i.q, align 2
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext %spec.select.i.i, i16 noundef zeroext %i.aw) #8, !srcloc !84
  %i.ax = add i16 %.03847.i.i, %1
  %i.ay = shl i16 %i.ax, 1
  %i.az = load i16, ptr %i.am, align 8
  tail call fastcc void @e1000_shift_out_ee_bits(ptr noundef readonly %0, i16 noundef zeroext %i.ay, i16 noundef zeroext %i.az) #8, !srcloc !85
  %i.ba = tail call i16 @llvm.umax.i16(i16 %.03847.i.i, i16 %2)
  %umax.i.i = zext i16 %i.ba to i64
  %exitcond.not.i32.i11.not = icmp ult i16 %.03847.i.i, %2
  br i1 %exitcond.not.i32.i11.not, label %.lr.ph, label %e1000_write_eeprom_spi.exit.i

.lr.ph:                                           ; preds = %bb.j
  %i.bb = zext i16 %.03847.i.i to i64
  br label %bb.k

e1000_standby_eeprom.exit.i.i:                    ; preds = %e1000_shift_out_ee_bits.exit.i.i
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i33.i, %umax.i.i
  br i1 %exitcond.not.i32.i, label %e1000_write_eeprom_spi.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph, %e1000_standby_eeprom.exit.i.i
  %indvars.iv.i31.i12 = phi i64 [ %i.bb, %.lr.ph ], [ %indvars.iv.next.i33.i, %e1000_standby_eeprom.exit.i.i ] ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %3, i64 %indvars.iv.i31.i12
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bg) #6, !srcloc !12 ; 3 uses
  %i.bi = load i32, ptr %i.a, align 8
  switch i32 %i.bi, label %bb.n [
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = and i32 %i.bh, -9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bk = or i32 %i.bh, 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.024.i.i.i = phi i32 [ %i.bh, %bb.k ], [ %i.bj, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = zext i16 %i.be to i32
  br label %udelay.exit.i.i.i

udelay.exit.i.i.i:                                ; preds = %udelay.exit.i.i.i, %bb.n
  %.1.i.i.i = phi i32 [ %.024.i.i.i, %bb.n ], [ %i.cd, %udelay.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ 32768, %bb.n ], [ %i.cl, %udelay.exit.i.i.i ] ; 2 uses
  %i.bm = and i32 %.1.i.i.i, -5
  %i.bn = and i32 %.0.i.i.i, %i.bl
  %.not.i.i.i = icmp eq i32 %i.bn, 0
  %masksel.i.i.i = select i1 %.not.i.i.i, i32 0, i32 4
  %spec.select.i.i.i = or disjoint i32 %masksel.i.i.i, %i.bm ; 3 uses
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %spec.select.i.i.i, ptr elementtype(i32) %i.bp) #6, !srcloc !13
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.br) #6, !srcloc !12 ; 0 uses
  %i.bt = load i16, ptr %i.ap, align 2
  %i.bu = zext i16 %i.bt to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.bu) #7
  %i.bv = or i32 %spec.select.i.i.i, 1
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bv, ptr elementtype(i32) %i.bx) #6, !srcloc !13
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bz) #6, !srcloc !12 ; 0 uses
  %i.cb = load i16, ptr %i.ap, align 2
  %i.cc = zext i16 %i.cb to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.cc) #7
  %i.cd = and i32 %spec.select.i.i.i, -2          ; 2 uses
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cd, ptr elementtype(i32) %i.cf) #6, !srcloc !13
  %i.cg = load ptr, ptr %0, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ch) #6, !srcloc !12 ; 0 uses
  %i.cj = load i16, ptr %i.ap, align 2
  %i.ck = zext i16 %i.cj to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.ck) #7
  %i.cl = lshr i32 %.0.i.i.i, 1                   ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not20.i.i.i, label %e1000_shift_out_ee_bits.exit.i.i, label %udelay.exit.i.i.i, !llvm.loop !1

e1000_shift_out_ee_bits.exit.i.i:                 ; preds = %udelay.exit.i.i.i
  %i.cm = and i32 %.1.i.i.i, -6
  %i.cn = load ptr, ptr %0, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cm, ptr elementtype(i32) %i.co) #6, !srcloc !13
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i12, 1 ; 4 uses
  %i.cp = trunc i64 %indvars.iv.next.i33.i to i32
  %4 = and i32 %i.cp, 65535
  %i.cq = add nuw nsw i32 %4, %i.an
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = load i16, ptr %i.aq, align 4
  %i.ct = zext i16 %i.cs to i32
  %i.cu = urem i32 %i.cr, %i.ct
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.o, label %e1000_standby_eeprom.exit.i.i

bb.o:                                             ; preds = %e1000_shift_out_ee_bits.exit.i.i
  %indvars.le.i.i = trunc i64 %indvars.iv.next.i33.i to i16 ; 2 uses
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %i.cy = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx) #6, !srcloc !12 ; 4 uses
  %i.cz = load i32, ptr %i.a, align 8
  switch i32 %i.cz, label %e1000_standby_eeprom.exit.thread.i.i [
    i32 2, label %udelay.exit50.i.i.i
    i32 1, label %udelay.exit46.i.i.i
  ]

udelay.exit50.i.i.i:                              ; preds = %bb.o
  %i.da = and i32 %i.cy, -4                       ; 2 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.da, ptr elementtype(i32) %i.dc) #6, !srcloc !13
  %i.dd = load ptr, ptr %0, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.de) #6, !srcloc !12 ; 0 uses
  %i.dg = load i16, ptr %i.ap, align 2
  %i.dh = zext i16 %i.dg to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.dh) #7
  %i.di = or disjoint i32 %i.da, 1
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.di, ptr elementtype(i32) %i.dk) #6, !srcloc !13
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm) #6, !srcloc !12 ; 0 uses
  %i.do = load i16, ptr %i.ap, align 2
  %i.dp = zext i16 %i.do to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.dp) #7
  %i.dq = or i32 %i.cy, 3                         ; 2 uses
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dq, ptr elementtype(i32) %i.ds) #6, !srcloc !13
  %i.dt = load ptr, ptr %0, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.du) #6, !srcloc !12 ; 0 uses
  %i.dw = load i16, ptr %i.ap, align 2
  %i.dx = zext i16 %i.dw to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.dx) #7
  %i.dy = and i32 %i.dq, -2
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dy, ptr elementtype(i32) %i.ea) #6, !srcloc !13
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ec) #6, !srcloc !12 ; 0 uses
  br label %e1000_standby_eeprom.exit.thread.i.i.sink.split

udelay.exit46.i.i.i:                              ; preds = %bb.o
  %i.ee = or i32 %i.cy, 2
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ee, ptr elementtype(i32) %i.eg) #6, !srcloc !13
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ei) #6, !srcloc !12 ; 0 uses
  %i.ek = load i16, ptr %i.ap, align 2
  %i.el = zext i16 %i.ek to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.el) #7
  %i.em = and i32 %i.cy, -3
  %i.en = load ptr, ptr %0, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.em, ptr elementtype(i32) %i.eo) #6, !srcloc !13
  %i.ep = load ptr, ptr %0, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eq) #6, !srcloc !12 ; 0 uses
  br label %e1000_standby_eeprom.exit.thread.i.i.sink.split

e1000_standby_eeprom.exit.thread.i.i.sink.split:  ; preds = %udelay.exit50.i.i.i, %udelay.exit46.i.i.i
  %i.es = load i16, ptr %i.ap, align 2
  %i.et = zext i16 %i.es to i64
  tail call void @__udelay(i64 noundef range(i64 0, 65536) %i.et) #7
  br label %e1000_standby_eeprom.exit.thread.i.i

e1000_standby_eeprom.exit.thread.i.i:             ; preds = %e1000_standby_eeprom.exit.thread.i.i.sink.split, %bb.o
  %i.eu = icmp ugt i16 %2, %indvars.le.i.i
  br i1 %i.eu, label %bb.i, label %e1000_write_eeprom_spi.exit.i, !llvm.loop !68

e1000_write_eeprom_spi.exit.i:                    ; preds = %e1000_standby_eeprom.exit.thread.i.i, %bb.i, %bb.j, %e1000_standby_eeprom.exit.i.i
  %.2.i.i = phi i32 [ 0, %e1000_standby_eeprom.exit.i.i ], [ -1, %bb.i ], [ 0, %e1000_standby_eeprom.exit.thread.i.i ], [ 0, %bb.j ]
  tail call void @msleep(i32 noundef 10) #7
  br label %e1000_write_eeprom_microwire.exit.i

e1000_write_eeprom_microwire.exit.i:              ; preds = %bb.h, %e1000_write_eeprom_spi.exit.i, %._crit_edge.i.i
  %.0.i = phi i32 [ %.2.i.i, %e1000_write_eeprom_spi.exit.i ], [ 0, %._crit_edge.i.i ], [ -1, %bb.h ]
  tail call fastcc void @e1000_release_eeprom(ptr noundef readonly %0) #8, !srcloc !86
  br label %e1000_do_write_eeprom.exit

e1000_do_write_eeprom.exit:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %e1000_write_eeprom_microwire.exit.i
  %.025.i = phi i32 [ 0, %bb.b ], [ %.0.i, %e1000_write_eeprom_microwire.exit.i ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  tail call void @mutex_unlock(ptr noundef nonnull @e1000_eeprom_lock) #7
  ret i32 %.025.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @e1000_read_mac_addr(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i16 0, ptr %i.a, align 2, !annotation !14
  %i.b = getelementptr i8, ptr %0, i64 250        ; 2 uses
  %i.c = call i32 @e1000_read_eeprom(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %i.a) #8
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2
  store i16 %i.e, ptr %i.b, align 1
  %i.f = call i32 @e1000_read_eeprom(ptr noundef %0, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %i.a) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.a, align 2
  %i.i = getelementptr i8, ptr %0, i64 252
  store i16 %i.h, ptr %i.i, align 1
  %i.j = call i32 @e1000_read_eeprom(ptr noundef %0, i16 noundef zeroext 2, i16 noundef zeroext 1, ptr noundef nonnull %i.a) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i16, ptr %i.a, align 2
  %i.m = getelementptr i8, ptr %0, i64 254
  store i16 %i.l, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8
  switch i32 %i.o, label %.loopexit.loopexit [
    i32 8, label %bb.e
    i32 10, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q) #6, !srcloc !12
  %i.s = and i32 %i.r, 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 255        ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = xor i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.e, %bb.f, %bb.d
  %i.w = getelementptr i8, ptr %0, i64 244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(6) %i.w, ptr noundef align 2 dereferenceable(6) %i.b, i64 6, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %.loopexit.loopexit
  %.019 = phi i32 [ 0, %.loopexit.loopexit ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.019
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 4096) i32 @e1000_hash_mc_addr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 4
  %i.f = zext nneg i8 %i.e to i32
  %i.g = getelementptr i8, ptr %1, i64 5
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 4
  %i.k = or disjoint i32 %i.j, %i.f
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = lshr i8 %i.m, 3
  %i.o = zext nneg i8 %i.n to i32
  %i.p = getelementptr i8, ptr %1, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 5
  %i.t = or disjoint i32 %i.s, %i.o
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 1
  %i.w = lshr i8 %i.v, 2
  %i.x = zext nneg i8 %i.w to i32
  %i.y = getelementptr i8, ptr %1, i64 5
end_hunk_0
