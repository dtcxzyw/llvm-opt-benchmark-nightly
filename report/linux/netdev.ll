Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/netdev?download=true
inline.NumInlined: 1067
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@e1000_watchdog_task:bb.a
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = and i32 %i.dq, 4194304
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val200 = load ptr, ptr %i.cb, align 8
  %i.dt = getelementptr i8, ptr %.val200, i64 14400
  %i.du = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dt) #24, !srcloc !31
  %i.dv = and i32 %i.du, -2097153
  call void @__ew32(ptr noundef %i.e, i64 noundef 14400, i32 noundef %i.dv) #28
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ag, %bb.af
  %.val199 = load ptr, ptr %i.cb, align 8
  %i.dw = getelementptr i8, ptr %.val199, i64 1024
  %i.dx = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dw) #24, !srcloc !31
  %i.dy = or i32 %i.dx, 2
  call void @__ew32(ptr noundef %i.e, i64 noundef 1024, i32 noundef %i.dy) #28
  %i.dz = getelementptr i8, ptr %0, i64 2200
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not190 = icmp eq ptr %i.ea, null
  br i1 %.not190, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.eb = call i32 %i.ea(ptr noundef %i.e) #23    ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread
  %i.ec = getelementptr i8, ptr %i.d, i64 24
  %.val204 = load ptr, ptr %i.ec, align 8
  call void @netif_tx_wake_queue(ptr noundef %.val204) #23
  call void @netif_carrier_on(ptr noundef %i.d) #23
  %i.ed = load volatile i64, ptr %i.h, align 8
  %i.ee = and i64 %i.ed, 8
  %.not250 = icmp eq i64 %i.ee, 0
  br i1 %.not250, label %bb.aj, label %e1000e_enable_receives.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr i8, ptr %0, i64 -112
  %i.eg = load volatile i64, ptr @jiffies, align 64
  %i.eh = add i64 %i.eg, 2000
  %i.ei = call i64 @round_jiffies(i64 noundef %i.eh) #23
  %i.ej = call i32 @mod_timer(ptr noundef %i.ef, i64 noundef %i.ei) #23 ; 0 uses
  br label %e1000e_enable_receives.exit

netif_carrier_ok.exit215:                         ; preds = %bb.q
  br i1 %.in.not.i209, label %bb.ak, label %e1000e_enable_receives.exit

bb.ak:                                            ; preds = %netif_carrier_ok.exit215
  %i.ek = getelementptr i8, ptr %0, i64 562
  store i16 0, ptr %i.ek, align 2
  %i.el = getelementptr i8, ptr %0, i64 564
  store i16 0, ptr %i.el, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %i.d, ptr noundef @.str.12) #27
  tail call void @netif_carrier_off(ptr noundef %i.d) #23
  %i.em = getelementptr i8, ptr %i.d, i64 24
  %.val.i216 = load ptr, ptr %i.em, align 8       ; 2 uses
  %i.en = load volatile i64, ptr @jiffies, align 64
  %i.eo = getelementptr i8, ptr %.val.i216, i64 264
  store volatile i64 %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr i8, ptr %.val.i216, i64 272 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ep, i32 1, ptr elementtype(i8) %i.ep) #24, !srcloc !44
  %i.eq = load volatile i64, ptr %i.h, align 8
  %i.er = and i64 %i.eq, 8
  %.not248 = icmp eq i64 %i.er, 0
  br i1 %.not248, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr i8, ptr %0, i64 -112
  %i.et = load volatile i64, ptr @jiffies, align 64
  %i.eu = add i64 %i.et, 2000
  %i.ev = tail call i64 @round_jiffies(i64 noundef %i.eu) #23
  %i.ew = tail call i32 @mod_timer(ptr noundef %i.es, i64 noundef %i.ev) #23 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ex = getelementptr i8, ptr %0, i64 11844     ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.ez = and i32 %i.ey, 16777216
  %.not185 = icmp eq i32 %i.ez, 0
  br i1 %.not185, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = or i32 %i.ey, 1073741824
  store i32 %i.fa, ptr %i.ex, align 4
  br label %e1000e_enable_receives.exit

bb.ao:                                            ; preds = %bb.am
  %i.fb = getelementptr i8, ptr %i.d, i64 1528
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call i32 @pm_schedule_suspend(ptr noundef %i.fc, i32 noundef 100) #23 ; 0 uses
  br label %e1000e_enable_receives.exit

e1000e_enable_receives.exit:                      ; preds = %__ew32.exit.i, %bb.k, %bb.ai, %bb.aj, %netif_carrier_ok.exit210, %bb.an, %bb.ao, %netif_carrier_ok.exit215
  %i.fe = getelementptr i8, ptr %0, i64 10768     ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.fe) #23
  call fastcc void @e1000e_update_stats(ptr noundef %i.b) #28, !srcloc !164
  %i.ff = getelementptr i8, ptr %0, i64 11120
  %i.fg = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr i8, ptr %0, i64 1192      ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 64
  %i.fj = sub i64 %i.fg, %i.fi
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr i8, ptr %0, i64 1620
  store i32 %i.fk, ptr %i.fl, align 4
  store i64 %i.fg, ptr %i.fh, align 64
  %i.fm = getelementptr i8, ptr %0, i64 10848
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr i8, ptr %0, i64 1200      ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = sub i64 %i.fn, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr i8, ptr %0, i64 1600
  store i32 %i.fr, ptr %i.fs, align 8
  store i64 %i.fn, ptr %i.fo, align 8
  %i.ft = getelementptr i8, ptr %0, i64 11016
  %i.fu = load i64, ptr %i.ft, align 16           ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 1320      ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 64
  %i.fx = sub i64 %i.fu, %i.fw
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr i8, ptr %0, i64 1312      ; 2 uses
  store i32 %i.fy, ptr %i.fz, align 8
  store i64 %i.fu, ptr %i.fv, align 64
  %i.ga = getelementptr i8, ptr %0, i64 11024
  %i.gb = load i64, ptr %i.ga, align 8            ; 2 uses
  %i.gc = getelementptr i8, ptr %0, i64 1216      ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = sub i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr i8, ptr %0, i64 1208      ; 2 uses
  store i32 %i.gf, ptr %i.gg, align 16
  store i64 %i.gb, ptr %i.gc, align 8
  call void @_raw_spin_unlock(ptr noundef %i.fe) #23
  %i.gh = load volatile i64, ptr %i.aq, align 8
  %.in.in.i219 = and i64 %i.gh, 4
  %.in.not.i220 = icmp eq i64 %.in.in.i219, 0
  br i1 %.in.not.i220, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %e1000e_enable_receives.exit
  %i.gi = getelementptr i8, ptr %i.g, i64 34
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = getelementptr i8, ptr %i.g, i64 32
  %i.gm = load i16, ptr %i.gl, align 8            ; 2 uses
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = icmp ugt i16 %i.gj, %i.gm
  br i1 %i.go, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gp = xor i32 %i.gn, -1
  %i.gq = add nsw i32 %i.gp, %i.gk
  %.phi.trans.insert = getelementptr i8, ptr %i.g, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %e1000_desc_unused.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gr = getelementptr i8, ptr %i.g, i64 28
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %i.gt = xor i32 %i.gn, -1
  %i.gu = add nsw i32 %i.gt, %i.gk
  %i.gv = add i32 %i.gu, %i.gs
  br label %e1000_desc_unused.exit

e1000_desc_unused.exit:                           ; preds = %bb.aq, %bb.ar
  %i.gw = phi i32 [ %.pre, %bb.aq ], [ %i.gs, %bb.ar ]
  %.0.i222 = phi i32 [ %i.gq, %bb.aq ], [ %i.gv, %bb.ar ]
  %i.gx = add i32 %.0.i222, 1
  %i.gy = icmp ult i32 %i.gx, %i.gw
  br i1 %i.gy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %e1000_desc_unused.exit
  %i.gz = getelementptr i8, ptr %0, i64 11844     ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = or i32 %i.ha, 1073741824
  store i32 %i.hb, ptr %i.gz, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %e1000_desc_unused.exit, %e1000e_enable_receives.exit
  %i.hc = getelementptr i8, ptr %0, i64 11844
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = and i32 %i.hd, 1073741824
  %.not191 = icmp eq i32 %i.he, 0
  br i1 %.not191, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hf = getelementptr i8, ptr %0, i64 -32
  %i.hg = load ptr, ptr @system_percpu_wq, align 8
  %i.hh = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.hg, ptr noundef %i.hf) #23 ; 0 uses
  br label %bb.bs

bb.av:                                            ; preds = %bb.at
  call void @e1000e_update_adaptive(ptr noundef %i.e) #23
  %i.hi = getelementptr i8, ptr %0, i64 580
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = icmp eq i32 %i.hj, 4
  br i1 %i.hk, label %bb.aw, label %e1000e_write_itr.exit

bb.aw:                                            ; preds = %bb.av
  %i.hl = load i32, ptr %i.gg, align 16           ; 2 uses
  %i.hm = load i32, ptr %i.fz, align 8            ; 2 uses
  %i.hn = add i32 %i.hm, %i.hl                    ; 2 uses
  %.not192 = icmp ult i32 %i.hn, 10000
  br i1 %.not192, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = sub nsw i32 %i.hl, %i.hm
  %1 = call i32 @llvm.abs.i32(i32 %i.ho, i1 true)
  %i.hp = udiv i32 %i.hn, 10000
  %i.hq = udiv i32 %1, 10000
  %i.hr = mul nuw nsw i32 %i.hq, 6000
  %i.hs = udiv i32 %i.hr, %i.hp
  %i.ht = shl i32 %i.hs, 8
  %i.hu = add i32 %i.ht, 512000
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.hv = phi i32 [ %i.hu, %bb.ax ], [ 2048000, %bb.aw ]
  %i.hw = udiv i32 1000000000, %i.hv              ; 2 uses
  %i.hx = getelementptr i8, ptr %0, i64 11808
  %i.hy = load ptr, ptr %i.hx, align 8
  %.not12.i = icmp eq ptr %i.hy, null
  br i1 %.not12.i, label %bb.ba, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ay
  %i.hz = getelementptr i8, ptr %0, i64 11800     ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 16
  %.not14.i = icmp eq i32 %i.ia, 0
  br i1 %.not14.i, label %e1000e_write_itr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ib = getelementptr i8, ptr %0, i64 1384
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ih, %bb.az ] ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = shl i32 %.013.i, 2
  %i.ie = add i32 %i.id, 232
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr i8, ptr %i.ic, i64 %i.if
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.hw, ptr elementtype(i32) %i.ig) #24, !srcloc !32
  %i.ih = add nuw i32 %.013.i, 1                  ; 2 uses
  %i.ii = load i32, ptr %i.hz, align 16
  %i.ij = icmp ult i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.az, label %e1000e_write_itr.exit, !llvm.loop !2

bb.ba:                                            ; preds = %bb.ay
  %i.ik = load ptr, ptr %i.e, align 8
  %i.il = getelementptr i8, ptr %i.ik, i64 12000
  %i.im = load i32, ptr %i.il, align 32
  %i.in = and i32 %i.im, 2048
  %.not.i.i224 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i224, label %__ew32.exit.i232, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.io = getelementptr i8, ptr %0, i64 1384      ; 2 uses
  %.val3.i.i.i225 = load ptr, ptr %i.io, align 8
  %i.ip = getelementptr i8, ptr %.val3.i.i.i225, i64 23380
  %i.iq = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ip) #24, !srcloc !31
  %i.ir = and i32 %i.iq, 16777216
  %.not4.i.i.i226 = icmp eq i32 %i.ir, 0
  br i1 %.not4.i.i.i226, label %__ew32.exit.i232, label %.lr.ph.i.i.i227.preheader

.lr.ph.i.i.i227.preheader:                        ; preds = %bb.bb, %.lr.ph.i.i.i227.preheader
  %i.is = phi i32 [ %i.iw, %.lr.ph.i.i.i227.preheader ], [ 1999, %bb.bb ]
  call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i.i230 = load ptr, ptr %i.io, align 8
  %i.it = getelementptr i8, ptr %.val.i.i.i230, i64 23380
  %i.iu = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.it) #24, !srcloc !31
  %i.iv = and i32 %i.iu, 16777216
  %.not.i.i.i231 = icmp eq i32 %i.iv, 0
  %i.iw = add nsw i32 %i.is, -1                   ; 2 uses
  %.not2.i.i.i229 = icmp eq i32 %i.iw, 0
  %or.cond270 = select i1 %.not.i.i.i231, i1 true, i1 %.not2.i.i.i229
  br i1 %or.cond270, label %__ew32.exit.i232, label %.lr.ph.i.i.i227.preheader, !llvm.loop !0

__ew32.exit.i232:                                 ; preds = %.lr.ph.i.i.i227.preheader, %bb.bb, %bb.ba
  %i.ix = getelementptr i8, ptr %0, i64 1384
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr i8, ptr %i.iy, i64 196
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.hw, ptr elementtype(i32) %i.iz) #24, !srcloc !32
  br label %e1000e_write_itr.exit

e1000e_write_itr.exit:                            ; preds = %bb.az, %__ew32.exit.i232, %.preheader.i, %bb.av
  %i.ja = getelementptr i8, ptr %0, i64 11808
  %i.jb = load ptr, ptr %i.ja, align 8
  %.not193 = icmp eq ptr %i.jb, null
  br i1 %.not193, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %e1000e_write_itr.exit
  %i.jc = getelementptr i8, ptr %0, i64 1272
  %i.jd = load ptr, ptr %i.jc, align 16
  %i.je = getelementptr i8, ptr %i.jd, i64 88
  %i.jf = load i32, ptr %i.je, align 8
  %i.jg = load ptr, ptr %i.e, align 8
  %i.jh = getelementptr i8, ptr %i.jg, i64 12000
  %i.ji = load i32, ptr %i.jh, align 32
  %i.jj = and i32 %i.ji, 2048
  %.not.i233 = icmp eq i32 %i.jj, 0
  br i1 %.not.i233, label %__ew32.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jk = getelementptr i8, ptr %0, i64 1384      ; 2 uses
  %.val3.i.i = load ptr, ptr %i.jk, align 8
  %i.jl = getelementptr i8, ptr %.val3.i.i, i64 23380
  %i.jm = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jl) #24, !srcloc !31
  %i.jn = and i32 %i.jm, 16777216
  %.not4.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not4.i.i, label %__ew32.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bd, %.lr.ph.i.i.preheader
  %i.jo = phi i32 [ %i.js, %.lr.ph.i.i.preheader ], [ 1999, %bb.bd ]
  call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i = load ptr, ptr %i.jk, align 8
  %i.jp = getelementptr i8, ptr %.val.i.i, i64 23380
  %i.jq = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jp) #24, !srcloc !31
  %i.jr = and i32 %i.jq, 16777216
  %.not.i.i234 = icmp eq i32 %i.jr, 0
  %i.js = add nsw i32 %i.jo, -1                   ; 2 uses
  %.not2.i.i = icmp eq i32 %i.js, 0
  %or.cond271 = select i1 %.not.i.i234, i1 true, i1 %.not2.i.i
  br i1 %or.cond271, label %__ew32.exit, label %.lr.ph.i.i.preheader, !llvm.loop !0

__ew32.exit:                                      ; preds = %.lr.ph.i.i.preheader, %bb.bc, %bb.bd
  %i.jt = getelementptr i8, ptr %0, i64 1384
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr i8, ptr %i.ju, i64 200
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.jf, ptr elementtype(i32) %i.jv) #24, !srcloc !32
  br label %bb.bg

bb.be:                                            ; preds = %e1000e_write_itr.exit
  %i.jw = load ptr, ptr %i.e, align 8
  %i.jx = getelementptr i8, ptr %i.jw, i64 12000
  %i.jy = load i32, ptr %i.jx, align 32
  %i.jz = and i32 %i.jy, 2048
  %.not.i235 = icmp eq i32 %i.jz, 0
  br i1 %.not.i235, label %__ew32.exit243, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ka = getelementptr i8, ptr %0, i64 1384      ; 2 uses
  %.val3.i.i236 = load ptr, ptr %i.ka, align 8
  %i.kb = getelementptr i8, ptr %.val3.i.i236, i64 23380
  %i.kc = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kb) #24, !srcloc !31
  %i.kd = and i32 %i.kc, 16777216
  %.not4.i.i237 = icmp eq i32 %i.kd, 0
  br i1 %.not4.i.i237, label %__ew32.exit243, label %.lr.ph.i.i238.preheader

.lr.ph.i.i238.preheader:                          ; preds = %bb.bf, %.lr.ph.i.i238.preheader
  %i.ke = phi i32 [ %i.ki, %.lr.ph.i.i238.preheader ], [ 1999, %bb.bf ]
  call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i241 = load ptr, ptr %i.ka, align 8
  %i.kf = getelementptr i8, ptr %.val.i.i241, i64 23380
  %i.kg = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kf) #24, !srcloc !31
  %i.kh = and i32 %i.kg, 16777216
  %.not.i.i242 = icmp eq i32 %i.kh, 0
  %i.ki = add nsw i32 %i.ke, -1                   ; 2 uses
  %.not2.i.i240 = icmp eq i32 %i.ki, 0
  %or.cond272 = select i1 %.not.i.i242, i1 true, i1 %.not2.i.i240
  br i1 %or.cond272, label %__ew32.exit243, label %.lr.ph.i.i238.preheader, !llvm.loop !0

__ew32.exit243:                                   ; preds = %.lr.ph.i.i238.preheader, %bb.be, %bb.bf
  %i.kj = getelementptr i8, ptr %0, i64 1384
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr i8, ptr %i.kk, i64 200
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 16, ptr elementtype(i32) %i.kl) #24, !srcloc !32
  br label %bb.bg

bb.bg:                                            ; preds = %__ew32.exit243, %__ew32.exit
  call fastcc void @e1000e_flush_descriptors(ptr noundef %i.b) #28, !srcloc !165
  %i.km = getelementptr i8, ptr %0, i64 1160
  store i8 1, ptr %i.km, align 32
  %i.kn = call zeroext i1 @e1000e_get_laa_state_82571(ptr noundef %i.e) #23
  br i1 %i.kn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ko = getelementptr i8, ptr %0, i64 1560
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr i8, ptr %0, i64 1584
  %i.kr = call i32 %i.kp(ptr noundef %i.e, ptr noundef %i.kq, i32 noundef 0) #23 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ks = getelementptr i8, ptr %0, i64 11848     ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 32
  %i.ku = and i32 %i.kt, 512
  %.not194 = icmp eq i32 %i.ku, 0
  br i1 %.not194, label %e1000e_check_82574_phy_workaround.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kv = call zeroext i1 @e1000_check_phy_82574(ptr noundef %i.e) #23
  %i.kw = getelementptr i8, ptr %0, i64 11952     ; 4 uses
  br i1 %i.kv, label %bb.bk, label %.thread.i

.thread.i:                                        ; preds = %bb.bj
  store i32 0, ptr %i.kw, align 8
  br label %e1000e_check_82574_phy_workaround.exit

bb.bk:                                            ; preds = %bb.bj
  %i.kx = load i32, ptr %i.kw, align 8
  %i.ky = add i32 %i.kx, 1                        ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.bl, label %e1000e_check_82574_phy_workaround.exit

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.kw, align 8
  %i.la = getelementptr i8, ptr %0, i64 -32
  %i.lb = load ptr, ptr @system_percpu_wq, align 8
  %i.lc = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.lb, ptr noundef %i.la) #23 ; 0 uses
  br label %e1000e_check_82574_phy_workaround.exit
end_hunk_0
begin_hunk_1_@__e1000_resume:bb.a
  %spec.store.select = select i1 %.not, i16 0, i16 3
  %i.h = trunc i32 %i.f to i16
  %i.i = lshr i16 %i.h, 1
  %i.j = and i16 %i.i, 4
  %spec.select = or disjoint i16 %spec.store.select, %i.j ; 2 uses
  %.not32 = icmp eq i16 %spec.select, 0
  br i1 %.not32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext range(i16 1, 8) %spec.select, i32 noundef 0) #28, !srcloc !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @pci_set_master(ptr noundef %0) #23
  %i.k = getelementptr i8, ptr %.val47, i64 4372
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp ugt i32 %i.l, 9
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @e1000_resume_workarounds_pchlan(ptr noundef %i.d) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %.val47, i64 5128
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %e1000e_power_up_phy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.o(ptr noundef %i.d) #23, !inline_history !46
  br label %e1000e_power_up_phy.exit

e1000e_power_up_phy.exit:                         ; preds = %bb.e, %bb.f
  %i.p = getelementptr i8, ptr %.val47, i64 4296
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.d) #23, !inline_history !46 ; 0 uses
  %i.s = load i32, ptr %i.e, align 32
  %i.t = and i32 %i.s, 2
  %.not33 = icmp eq i32 %i.t, 0
  br i1 %.not33, label %bb.n, label %bb.g

bb.g:                                             ; preds = %e1000e_power_up_phy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i16 0, ptr %i.a, align 2, !annotation !27
  %i.u = getelementptr i8, ptr %.val47, i64 5048
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 %i.v(ptr noundef %i.d, i32 noundef 25603, ptr noundef nonnull %i.a) #23, !inline_history !5 ; 0 uses
  %i.x = load i16, ptr %i.a, align 2              ; 2 uses
  %.not40 = icmp eq i16 %i.x, 0
  br i1 %.not40, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %.val47, i64 4136
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext i16 %i.x to i32                    ; 5 uses
  %i.ab = and i32 %i.aa, 4
  %.not41 = icmp eq i32 %i.ab, 0
  br i1 %.not41, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %i.aa, 8
  %.not42 = icmp eq i32 %i.ac, 0
  br i1 %.not42, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ad = and i32 %i.aa, 16
  %.not43 = icmp eq i32 %i.ad, 0
  br i1 %.not43, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.aa, 2
  %.not44 = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.aa, 1
  %.not45 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not45, ptr @.str.174, ptr @.str.173
  %i.ah = select i1 %.not44, ptr %i.ag, ptr @.str.172
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %i.ai = phi ptr [ @.str.169, %bb.h ], [ @.str.170, %bb.i ], [ %i.ah, %bb.k ], [ @.str.171, %bb.j ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %i.z, ptr noundef @.str.168, ptr noundef %i.ai) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.aj = getelementptr i8, ptr %.val47, i64 5104
  %i.ak = load ptr, ptr %i.aj, align 16
  %i.al = call i32 %i.ak(ptr noundef %i.d, i32 noundef 25603, i16 noundef zeroext -1) #23, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.v

bb.n:                                             ; preds = %e1000e_power_up_phy.exit
  %i.am = getelementptr i8, ptr %.val47, i64 4160 ; 4 uses
  %.val = load ptr, ptr %i.am, align 32
  %i.an = getelementptr i8, ptr %.val, i64 22544
  %i.ao = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an) #24, !srcloc !31 ; 6 uses
  %.not34 = icmp eq i32 %i.ao, 0
  br i1 %.not34, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %.val47, i64 4136
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = and i32 %i.ao, 4
  %.not35 = icmp eq i32 %i.ar, 0
  br i1 %.not35, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %i.ao, 8
  %.not36 = icmp eq i32 %i.as, 0
  br i1 %.not36, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.at = and i32 %i.ao, 16
  %.not37 = icmp eq i32 %i.at, 0
  br i1 %.not37, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = and i32 %i.ao, 2
  %.not38 = icmp eq i32 %i.au, 0
  %i.av = and i32 %i.ao, 1
  %.not39 = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not39, ptr @.str.174, ptr @.str.173
  %i.ax = select i1 %.not38, ptr %i.aw, ptr @.str.172
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.o
  %i.ay = phi ptr [ @.str.169, %bb.o ], [ @.str.170, %bb.p ], [ %i.ax, %bb.r ], [ @.str.171, %bb.q ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %i.aq, ptr noundef @.str.175, ptr noundef %i.ay) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 12000
  %i.bb = load i32, ptr %i.ba, align 32
  %i.bc = and i32 %i.bb, 2048
  %.not.i48 = icmp eq i32 %i.bc, 0
  br i1 %.not.i48, label %__ew32.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val3.i.i = load ptr, ptr %i.am, align 32
  %i.bd = getelementptr i8, ptr %.val3.i.i, i64 23380
  %i.be = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd) #24, !srcloc !31
  %i.bf = and i32 %i.be, 16777216
  %.not4.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not4.i.i, label %__ew32.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.u, %.lr.ph.i.i.preheader
  %i.bg = phi i32 [ %i.bk, %.lr.ph.i.i.preheader ], [ 1999, %bb.u ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i = load ptr, ptr %i.am, align 32
  %i.bh = getelementptr i8, ptr %.val.i.i, i64 23380
  %i.bi = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bh) #24, !srcloc !31
  %i.bj = and i32 %i.bi, 16777216
  %.not.i.i = icmp eq i32 %i.bj, 0
  %i.bk = add nsw i32 %i.bg, -1                   ; 2 uses
  %.not2.i.i = icmp eq i32 %i.bk, 0
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not2.i.i
  br i1 %or.cond, label %__ew32.exit, label %.lr.ph.i.i.preheader, !llvm.loop !0

__ew32.exit:                                      ; preds = %.lr.ph.i.i.preheader, %bb.t, %bb.u
  %i.bl = load ptr, ptr %i.am, align 32
  %i.bm = getelementptr i8, ptr %i.bl, i64 22544
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -1, ptr elementtype(i32) %i.bm) #24, !srcloc !32
  br label %bb.v

bb.v:                                             ; preds = %__ew32.exit, %bb.m
  call void @e1000e_reset(ptr noundef %i.c) #28
  call fastcc void @e1000_init_manageability_pt(ptr noundef %i.c) #28, !srcloc !233
  %i.bn = getelementptr i8, ptr %.val47, i64 14620
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 1
  %.not46 = icmp eq i32 %i.bp, 0
  br i1 %.not46, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @e1000e_get_hw_control(ptr noundef %i.c) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @e1000_resume_workarounds_pchlan(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

attributes #0 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #15 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #18 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #19 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #20 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #21 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noredzone nounwind "no-builtin-wcslen" }
attributes #24 = { nounwind }
attributes #25 = { nounwind memory(read) }
attributes #26 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #27 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #28 = { noredzone "no-builtin-wcslen" }
attributes #29 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #30 = { nounwind memory(none) }

!llvm.named.register.rsp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = !{!"rsp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!18 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!19 = !{i32 1, !"override-stack-alignment", i32 8}
!20 = !{i32 4, !"SkipRaxSetup", i32 1}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i64 2150149489}
!24 = !{i64 2150179617}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"auto-init"}
!28 = !{i64 2150176545}
!29 = !{i64 2150155670}
!30 = !{i64 2150176869}
!31 = !{i64 2155844625}
!32 = !{i64 2155847018}
!33 = !{i64 71265}
!34 = !{i64 2148766053, i64 2148766092, i64 2148766113, i64 2148766150, i64 2148766173, i64 2148766044}
!35 = !{i64 71755}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{i64 2148765038, i64 2148765077, i64 2148765098, i64 2148765135, i64 2148765158, i64 2148765029}
!39 = !{i64 2148766350, i64 2148766389, i64 2148766410, i64 2148766447, i64 2148766470, i64 2148766341}
!40 = !{i64 121904}
!41 = !{i64 122005}
!42 = !{i64 122037}
!43 = !{i64 122125}
!44 = !{i64 2148764741, i64 2148764780, i64 2148764801, i64 2148764838, i64 2148764861, i64 2148764732}
!45 = !{i64 2148771206, i64 2148771245, i64 2148771266, i64 2148771303, i64 2148771326, i64 2148771335}
!46 = !{ptr @e1000e_power_up_phy}
!47 = !{i64 2156897864, i64 2156897891, i64 2156898301, i64 2156898334, i64 2156898369, i64 2156898385, i64 2156899226, i64 2156899284, i64 2156899333, i64 2156899143, i64 2156898444, i64 2156898476}
!48 = !{i64 2156896123}
!49 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!50 = !{i64 195647}
!51 = !{!"branch_weights", i32 1, i32 127}
!52 = !{!"branch_weights", i32 127, i32 255873}
!53 = !{i64 2164060700, i64 2164060570}
!54 = !{i64 2164061231, i64 2164061707, i64 2164061740, i64 2164061775, i64 2164061791, i64 2164062632, i64 2164062690, i64 2164062739, i64 2164062549, i64 2164061850, i64 2164061882}
!55 = !{i64 2164060040}
!56 = !{i64 2148985467, i64 2148985507, i64 2148985624, i64 2148985645, i64 2148985688, i64 2148985703, i64 2148985736, i64 2148985770, i64 2148985794}
!57 = !{i64 2163069937}
!58 = !{i64 2148782046}
!59 = !{i64 2151784149}
!60 = !{i64 2151787451}
!61 = !{i64 2151787873}
!62 = !{i64 2151799655}
!63 = distinct !{!63, !22}
!64 = !{i64 2163797625}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = !{i64 2149166271, i64 2149166310, i64 2149166331, i64 2149166368, i64 2149166391, i64 2149166400}
!71 = distinct !{null}
!72 = !{i64 119162}
!73 = !{i64 119522}
!74 = !{i64 113968}
!75 = !{i64 2163981628, i64 2163981498}
!76 = !{i64 2163982159, i64 2163982635, i64 2163982668, i64 2163982703, i64 2163982719, i64 2163983560, i64 2163983618, i64 2163983667, i64 2163983477, i64 2163982778, i64 2163982810}
!77 = !{i64 2163984116}
!78 = !{ptr @e1000_vlan_rx_add_vid}
!79 = !{ptr @e1000_vlan_rx_kill_vid}
!80 = distinct !{null, ptr @e1000_vlan_rx_add_vid}
!81 = distinct !{!81, !22}
!82 = distinct !{null}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = !{i64 108006}
!86 = !{i64 108075}
!87 = !{i64 84380}
!88 = !{i64 108229}
!89 = !{i64 93831}
!90 = distinct !{!90, !22}
!91 = !{i64 123768}
!92 = !{i64 123963}
!93 = !{i64 124033}
!94 = !{i64 124514}
!95 = !{i64 124551}
!96 = !{i64 124591}
!97 = distinct !{!97, !22}
!98 = distinct !{null}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = !{i64 133808}
!102 = !{i64 134214}
!103 = !{i64 134248}
!104 = !{i64 134531}
!105 = !{i64 135083}
!106 = !{i64 135211}
!107 = !{i64 63618}
!108 = !{i64 2164005274}
!109 = !{i64 130813}
!110 = !{i64 130953}
!111 = !{i64 2164005522}
!112 = !{i64 131398}
!113 = distinct !{!113, !22}
!114 = !{i64 2164008971, i64 2164008841}
!115 = !{i64 2164009502, i64 2164010584, i64 2164010617, i64 2164010652, i64 2164010668, i64 2164011595, i64 2164011653, i64 2164011702, i64 2164011512, i64 2164010727, i64 2164010759, i64 2164010842}
!116 = !{i64 2164012030, i64 2164011901}
!117 = !{i64 171847}
!118 = distinct !{!118, !121}
!119 = !{i64 2163850511}
!120 = !{i64 31754}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = !{i64 2163869438}
!123 = !{i64 49398}
!124 = distinct !{!124, !22}
!125 = !{i64 2163861495}
!126 = !{i64 44313}
!127 = distinct !{null, ptr @e1000_vlan_rx_kill_vid}
!128 = distinct !{null}
!129 = distinct !{!129, !22}
!130 = distinct !{null}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = !{i64 2163848442}
!134 = !{i64 25512}
!135 = distinct !{!135, !22}
!136 = !{i64 2163849820}
!137 = !{i64 27773}
!138 = distinct !{!138, !22}
!139 = !{i64 2163845918}
!140 = !{i64 22776}
!141 = !{i64 57531}
!142 = distinct !{!142, !22}
!143 = !{i64 2163859614}
!144 = !{i64 2160124285}
!145 = !{i64 2148778063, i64 2148778102, i64 2148778123, i64 2148778160, i64 2148778183, i64 2148778192}
!146 = !{i64 2163859925}
!147 = !{i64 2164005052}
!148 = distinct !{null}
!149 = distinct !{null}
!150 = !{i64 212020}
!151 = !{i64 215144}
!152 = !{i64 218815}
!153 = !{i64 2149180100, i64 2149180139, i64 2149180160, i64 2149180197, i64 2149180220, i64 2149180229}
!154 = !{i64 2149164145, i64 2149164184, i64 2149164205, i64 2149164242, i64 2149164265, i64 2149164136}
!155 = !{i64 200880}
!156 = !{i64 77632}
!157 = !{i64 78144}
!158 = !{i64 129112}
!159 = !{i64 171340}
!160 = distinct !{!160, !22}
!161 = !{i64 150946}
!162 = !{i64 151677}
!163 = !{i64 151817}
end_hunk_1
