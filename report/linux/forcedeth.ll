inline.NumInlined: 1048
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nv_probe:bb.a
bb.bi:                                            ; preds = %bb.bh
  %i.kw = getelementptr i8, ptr %.val399, i64 1536 ; 2 uses
  %i.kx = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kw) #17, !srcloc !11
  %i.ky = and i32 %i.kx, -3862                    ; 2 uses
  %i.kz = load i64, ptr %i.v, align 8
  %i.la = and i64 %i.kz, 8388608
  %.not363 = icmp eq i64 %i.la, 0
  br i1 %.not363, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lb = getelementptr i8, ptr %0, i64 72
  %i.lc = load i8, ptr %i.lb, align 8
  %i.ld = icmp ugt i8 %i.lc, -94
  %i.le = zext i1 %i.ld to i32
  %spec.select = or disjoint i32 %i.ky, %i.le
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0323 = phi i32 [ %i.ky, %bb.bi ], [ %spec.select, %bb.bj ]
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0323, ptr elementtype(i32) %i.kw) #17, !srcloc !12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk
  %i.lf = getelementptr i8, ptr %i.e, i64 3848
  store i32 -2147483648, ptr %i.lf, align 8
  store i32 0, ptr %i.m, align 4
  %i.lg = load i64, ptr %i.v, align 8
  %i.lh = and i64 %i.lg, 64
  %i.li = icmp ne i64 %i.lh, 0
  %i.lj = load i32, ptr @msi, align 4
  %i.lk = icmp ne i32 %i.lj, 0
  %or.cond = select i1 %i.li, i1 %i.lk, i1 false
  %spec.store.select395 = select i1 %or.cond, i32 16, i32 0 ; 2 uses
  store i32 %spec.store.select395, ptr %i.m, align 4
  %i.ll = load i32, ptr @optimization_mode, align 4
  switch i32 %i.ll, label %bb.bp [
    i32 1, label %bb.bm
    i32 2, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.lm = getelementptr i8, ptr %i.e, i64 3508
  store i32 96, ptr %i.lm, align 4
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ln = load i64, ptr %i.v, align 8
  %i.lo = and i64 %i.ln, 1
  %.not364 = icmp eq i64 %i.lo, 0
  br i1 %.not364, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lp = getelementptr i8, ptr %i.e, i64 3508
  store i32 223, ptr %i.lp, align 4
  store i32 %spec.store.select395, ptr %i.m, align 4
  br label %bb.br

bb.bp:                                            ; preds = %bb.bl, %bb.bn
  store i32 0, ptr @optimization_mode, align 4
  %i.lq = getelementptr i8, ptr %i.e, i64 3508
  store i32 223, ptr %i.lq, align 4
  %i.lr = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ls = and i32 %i.lr, 32
  %.not365 = icmp eq i32 %i.ls, 0
  br i1 %.not365, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lt = or i32 %i.lr, 3
  store i32 %i.lt, ptr %i.m, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bm, %bb.bo, %bb.bq, %bb.bp
  %i.lu = phi i32 [ 96, %bb.bm ], [ 255, %bb.bo ], [ 255, %bb.bq ], [ 255, %bb.bp ]
  %i.lv = load i64, ptr %i.v, align 8             ; 2 uses
  %i.lw = and i64 %i.lv, 1
  %.not367 = icmp eq i64 %i.lw, 0
  br i1 %.not367, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lx = getelementptr i8, ptr %i.e, i64 3508
  store i32 %i.lu, ptr %i.lx, align 4
  %.pre467 = load i64, ptr %i.v, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ly = phi i64 [ %.pre467, %bb.bs ], [ %i.lv, %bb.br ]
  %i.lz = and i64 %i.ly, 2
  %.not368 = icmp eq i64 %i.lz, 0
  %i.ma = getelementptr i8, ptr %i.e, i64 3768    ; 2 uses
  br i1 %.not368, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 1, ptr %i.ma, align 8
  %i.mb = load volatile i64, ptr @jiffies, align 64
  %i.mc = add i64 %i.mb, 3000
  %i.md = getelementptr i8, ptr %i.e, i64 3776
  store i64 %i.mc, ptr %i.md, align 64
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  store i32 0, ptr %i.ma, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.me = load i64, ptr %i.v, align 8
  %i.mf = and i64 %i.me, 524288
  %.not369 = icmp eq i64 %i.mf, 0
  br i1 %.not369, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mg = getelementptr i8, ptr %i.e, i64 3856    ; 2 uses
  store i32 1, ptr %i.mg, align 16
  %i.mh = load i64, ptr %i.v, align 8
  %i.mi = and i64 %i.mh, 1572864
  %i.mj = icmp eq i64 %i.mi, 1572864
  br i1 %i.mj, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.mk = getelementptr i8, ptr %0, i64 72
  %i.ml = load i8, ptr %i.mk, align 8
  %i.mm = icmp ugt i8 %i.ml, -95
  br i1 %i.mm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.mg, align 16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.bz, %bb.bw
  %i.mn = getelementptr i8, ptr %.val399, i64 388
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.mn) #17, !srcloc !12
  %i.mo = getelementptr i8, ptr %.val399, i64 392 ; 3 uses
  %i.mp = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.mo) #17, !srcloc !11 ; 3 uses
  %i.mq = and i32 %i.mp, 1048576
  %.not370 = icmp eq i32 %i.mq, 0                 ; 2 uses
  br i1 %.not370, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mr = and i32 %i.mp, -1048577                 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.mr, ptr elementtype(i32) %i.mo) #17, !srcloc !12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0325 = phi i32 [ %i.mr, %bb.cb ], [ %i.mp, %bb.ca ]
  %i.ms = getelementptr i8, ptr %.val399, i64 384
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 15, ptr elementtype(i32) %i.ms) #17, !srcloc !12
  %i.mt = load i64, ptr %i.v, align 8
  %i.mu = and i64 %i.mt, 8192
  %.not371 = icmp eq i64 %i.mu, 0
  br i1 %.not371, label %bb.cj, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mv = getelementptr i8, ptr %.val399, i64 132 ; 3 uses
  %i.mw = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.mv) #17, !srcloc !11
  %i.mx = and i32 %i.mw, 1073741824
  %.not372 = icmp eq i32 %i.mx, 0
  br i1 %.not372, label %bb.cj, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.my = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.mv) #17, !srcloc !11
  %i.mz = and i32 %i.my, 262144
  %.not373 = icmp eq i32 %i.mz, 0
  br i1 %.not373, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.na = call fastcc i32 @nv_mgmt_acquire_sema(ptr noundef %i.e) #20, !srcloc !14
  %.not374 = icmp eq i32 %i.na, 0
  br i1 %.not374, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nb = call fastcc i32 @nv_mgmt_get_version(ptr noundef %i.e) #20, !srcloc !15
  %.not375 = icmp eq i32 %i.nb, 0
  br i1 %.not375, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nc = getelementptr i8, ptr %i.e, i64 3536    ; 2 uses
  store i32 1, ptr %i.nc, align 16
  %i.nd = getelementptr i8, ptr %i.e, i64 3540
  %i.ne = load i32, ptr %i.nd, align 4
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %bb.ci, label %.thread442

bb.ci:                                            ; preds = %bb.ch
  %i.ng = getelementptr i8, ptr %.val399, i64 632
  %i.nh = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ng) #17, !srcloc !11
  %i.ni = and i32 %i.nh, 131072                   ; 2 uses
  store i32 %i.ni, ptr %i.nc, align 16
  %.not376 = icmp eq i32 %i.ni, 0
  br i1 %.not376, label %bb.cj, label %.thread442

.thread442:                                       ; preds = %bb.ch, %bb.ci
  %i.nj = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.mv) #17, !srcloc !11
  %i.nk = and i32 %i.nj, 983040
  %i.nl = icmp ne i32 %i.nk, 262144
  br label %bb.cj

bb.cj:                                            ; preds = %.thread442, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ci, %bb.cc
  %.not377 = phi i1 [ true, %bb.cc ], [ %i.nl, %.thread442 ], [ true, %bb.ci ], [ true, %bb.cg ], [ true, %bb.cf ], [ true, %bb.ce ], [ true, %bb.cd ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.dd
  %.1322455 = phi i32 [ 1, %bb.cj ], [ %i.py, %bb.dd ] ; 4 uses
  call void @_raw_spin_lock_irq(ptr noundef %i.f) #16
  %.val.i414 = load ptr, ptr %i.fn, align 32      ; 3 uses
  %i.nm = getelementptr i8, ptr %.val.i414, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.nm) #17, !srcloc !12
  %i.nn = getelementptr i8, ptr %.val.i414, i64 400 ; 3 uses
  %i.no = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nn) #17, !srcloc !11
  %i.np = and i32 %i.no, 32768
  %.not.i = icmp eq i32 %i.np, 0
  br i1 %.not.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.nn) #17, !srcloc !12
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.nq = shl nuw nsw i32 %.1322455, 5            ; 3 uses
  %i.nr = or disjoint i32 %i.nq, 2
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.nr, ptr elementtype(i32) %i.nn) #17, !srcloc !12
  %.val22.i = load ptr, ptr %i.fn, align 32       ; 2 uses
  %i.ns = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i) #17, !srcloc !11 ; 0 uses
  %i.nt = getelementptr i8, ptr %.val22.i, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %i.nu = add nsw i32 %.0.i.i415521, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.nv = icmp slt i32 %.0.i.i415521, 20
  br i1 %i.nv, label %mii_rw.exit, label %bb.co, !llvm.loop !16

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.0.i.i415521 = phi i32 [ 10000, %bb.cm ], [ %i.nu, %bb.cn ] ; 2 uses
  %i.nw = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nt) #17, !srcloc !11
  %i.nx = and i32 %i.nw, 32768
  %.not.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i, label %reg_delay.exit.i, label %bb.cn, !llvm.loop !16

reg_delay.exit.i:                                 ; preds = %bb.co
  %i.ny = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nm) #17, !srcloc !11
  %i.nz = and i32 %i.ny, 1
  %.not21.i = icmp eq i32 %i.nz, 0
  br i1 %.not21.i, label %bb.cp, label %mii_rw.exit

bb.cp:                                            ; preds = %reg_delay.exit.i
  %i.oa = getelementptr i8, ptr %.val.i414, i64 404
  %i.ob = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.oa) #17, !srcloc !11
  br label %mii_rw.exit

mii_rw.exit:                                      ; preds = %bb.cn, %reg_delay.exit.i, %bb.cp
  %.0.i416 = phi i32 [ %i.ob, %bb.cp ], [ -1, %reg_delay.exit.i ], [ -1, %bb.cn ] ; 3 uses
  call void @_raw_spin_unlock_irq(ptr noundef %i.f) #16
  %i.oc = icmp slt i32 %.0.i416, 0
  %i.od = icmp eq i32 %.0.i416, 65535
  %or.cond5 = or i1 %i.oc, %i.od
  br i1 %or.cond5, label %bb.dd, label %bb.cq

bb.cq:                                            ; preds = %mii_rw.exit
  call void @_raw_spin_lock_irq(ptr noundef %i.f) #16
  %.val.i417 = load ptr, ptr %i.fn, align 32      ; 3 uses
  %i.oe = getelementptr i8, ptr %.val.i417, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.oe) #17, !srcloc !12
  %i.of = getelementptr i8, ptr %.val.i417, i64 400 ; 3 uses
  %i.og = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.of) #17, !srcloc !11
  %i.oh = and i32 %i.og, 32768
  %.not.i418 = icmp eq i32 %i.oh, 0
  br i1 %.not.i418, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.of) #17, !srcloc !12
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.oi = or disjoint i32 %i.nq, 3
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.oi, ptr elementtype(i32) %i.of) #17, !srcloc !12
  %.val22.i419 = load ptr, ptr %i.fn, align 32    ; 2 uses
  %i.oj = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i419) #17, !srcloc !11 ; 0 uses
  %i.ok = getelementptr i8, ptr %.val22.i419, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cu
  %i.ol = add nsw i32 %.0.i.i420522, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.om = icmp slt i32 %.0.i.i420522, 20
  br i1 %i.om, label %mii_rw.exit425, label %bb.cu, !llvm.loop !16

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.0.i.i420522 = phi i32 [ 10000, %bb.cs ], [ %i.ol, %bb.ct ] ; 2 uses
  %i.on = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ok) #17, !srcloc !11
  %i.oo = and i32 %i.on, 32768
  %.not.i.i421 = icmp eq i32 %i.oo, 0
  br i1 %.not.i.i421, label %reg_delay.exit.i422, label %bb.ct, !llvm.loop !16

reg_delay.exit.i422:                              ; preds = %bb.cu
  %i.op = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.oe) #17, !srcloc !11
  %i.oq = and i32 %i.op, 1
  %.not21.i423 = icmp eq i32 %i.oq, 0
  br i1 %.not21.i423, label %bb.cv, label %mii_rw.exit425

bb.cv:                                            ; preds = %reg_delay.exit.i422
  %i.or = getelementptr i8, ptr %.val.i417, i64 404
  %i.os = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.or) #17, !srcloc !11
  br label %mii_rw.exit425

mii_rw.exit425:                                   ; preds = %bb.ct, %reg_delay.exit.i422, %bb.cv
  %.0.i424 = phi i32 [ %i.os, %bb.cv ], [ -1, %reg_delay.exit.i422 ], [ -1, %bb.ct ] ; 4 uses
  call void @_raw_spin_unlock_irq(ptr noundef %i.f) #16
  %i.ot = icmp slt i32 %.0.i424, 0
  %i.ou = icmp eq i32 %.0.i424, 65535
  %or.cond7 = or i1 %i.ot, %i.ou
  br i1 %or.cond7, label %bb.dd, label %bb.cw

bb.cw:                                            ; preds = %mii_rw.exit425
  %i.ov = and i32 %.0.i424, 1008                  ; 2 uses
  %i.ow = getelementptr i8, ptr %i.e, i64 3456
  store i32 %i.ov, ptr %i.ow, align 64
  %i.ox = shl i32 %.0.i416, 6
  %i.oy = and i32 %i.ox, 65472
  %i.oz = lshr i32 %.0.i424, 10
  %i.pa = and i32 %i.oz, 63
  %i.pb = getelementptr i8, ptr %i.e, i64 3444
  store i32 %.1322455, ptr %i.pb, align 4
  %i.pc = or disjoint i32 %i.pa, %i.oy            ; 2 uses
  %i.pd = getelementptr i8, ptr %i.e, i64 3452
  %i.pe = icmp eq i32 %i.pc, 32
  %spec.select397 = select i1 %i.pe, i32 1842, i32 %i.pc ; 2 uses
  store i32 %spec.select397, ptr %i.pd, align 4
  %i.pf = icmp eq i32 %spec.select397, 1842
  %i.pg = icmp eq i32 %i.ov, 272
  %or.cond446 = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond446, label %bb.cx, label %.thread444

bb.cx:                                            ; preds = %bb.cw
  %.val.i426 = load ptr, ptr %i.fn, align 32      ; 3 uses
  %i.ph = getelementptr i8, ptr %.val.i426, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.ph) #17, !srcloc !12
  %i.pi = getelementptr i8, ptr %.val.i426, i64 400 ; 3 uses
  %i.pj = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.pi) #17, !srcloc !11
  %i.pk = and i32 %i.pj, 32768
  %.not.i427 = icmp eq i32 %i.pk, 0
  br i1 %.not.i427, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.pi) #17, !srcloc !12
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.pl = or disjoint i32 %i.nq, 23
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.pl, ptr elementtype(i32) %i.pi) #17, !srcloc !12
  %.val22.i428 = load ptr, ptr %i.fn, align 32    ; 2 uses
  %i.pm = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i428) #17, !srcloc !11 ; 0 uses
  %i.pn = getelementptr i8, ptr %.val22.i428, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.db

bb.da:                                            ; preds = %bb.db
  %i.po = add nsw i32 %.0.i.i429523, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.pp = icmp slt i32 %.0.i.i429523, 20
  br i1 %i.pp, label %mii_rw.exit434, label %bb.db, !llvm.loop !16

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.0.i.i429523 = phi i32 [ 10000, %bb.cz ], [ %i.po, %bb.da ] ; 2 uses
  %i.pq = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.pn) #17, !srcloc !11
  %i.pr = and i32 %i.pq, 32768
  %.not.i.i430 = icmp eq i32 %i.pr, 0
  br i1 %.not.i.i430, label %reg_delay.exit.i431, label %bb.da, !llvm.loop !16

reg_delay.exit.i431:                              ; preds = %bb.db
  %i.ps = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ph) #17, !srcloc !11
  %i.pt = and i32 %i.ps, 1
  %.not21.i432 = icmp eq i32 %i.pt, 0
  br i1 %.not21.i432, label %bb.dc, label %mii_rw.exit434

bb.dc:                                            ; preds = %reg_delay.exit.i431
  %i.pu = getelementptr i8, ptr %.val.i426, i64 404
  %i.pv = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.pu) #17, !srcloc !11
  %i.pw = and i32 %i.pv, 1
  br label %mii_rw.exit434

mii_rw.exit434:                                   ; preds = %bb.da, %reg_delay.exit.i431, %bb.dc
  %.0.i433 = phi i32 [ %i.pw, %bb.dc ], [ 1, %reg_delay.exit.i431 ], [ 1, %bb.da ]
  %i.px = getelementptr i8, ptr %i.e, i64 3460
  store i32 %.0.i433, ptr %i.px, align 4
  br label %.thread444

bb.dd:                                            ; preds = %mii_rw.exit, %mii_rw.exit425
  %i.py = add nuw nsw i32 %.1322455, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.py, 33
  br i1 %exitcond.not, label %.thread444.thread, label %bb.ck, !llvm.loop !18

.thread444:                                       ; preds = %bb.cw, %mii_rw.exit434
  %i.pz = icmp eq i32 %.1322455, 33
  br i1 %i.pz, label %.thread444.thread, label %bb.de

.thread444.thread:                                ; preds = %bb.dd, %.thread444
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef nonnull @.str.9) #18
  br label %bb.dn

bb.de:                                            ; preds = %.thread444
  br i1 %.not377, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call fastcc void @phy_init(ptr noundef nonnull %i.e) #20
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.qa = getelementptr i8, ptr %i.e, i64 3444
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = call fastcc i32 @mii_rw(ptr noundef nonnull %i.e, i32 noundef %i.qb, i32 noundef 1, i32 noundef -1) #20, !srcloc !19
  %i.qd = and i32 %i.qc, 256
  %.not378 = icmp eq i32 %i.qd, 0
  br i1 %.not378, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qe = getelementptr i8, ptr %i.e, i64 3464
  store i16 256, ptr %i.qe, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.df
  %i.qf = getelementptr i8, ptr %i.e, i64 3428
  store i32 66536, ptr %i.qf, align 4
  %i.qg = getelementptr i8, ptr %i.e, i64 3432
  store i32 0, ptr %i.qg, align 8
  %i.qh = getelementptr i8, ptr %i.e, i64 3436
  store i32 1, ptr %i.qh, align 4
  %i.qi = call i32 @register_netdev(ptr noundef nonnull %i.e) #16 ; 3 uses
  %.not379 = icmp eq i32 %i.qi, 0
  br i1 %.not379, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef nonnull @.str.10, i32 noundef %i.qi) #18
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di
  call void @netif_carrier_off(ptr noundef nonnull %i.e) #16
  call fastcc void @nv_update_pause(ptr noundef nonnull %i.e, i32 noundef 0) #20, !srcloc !20
  %.val.i435 = load ptr, ptr %i.fn, align 32      ; 2 uses
  %i.qj = getelementptr i8, ptr %.val.i435, i64 132 ; 2 uses
  %i.qk = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.qj) #17, !srcloc !11
  %i.ql = or i32 %i.qk, 1                         ; 2 uses
  %i.qm = getelementptr i8, ptr %i.e, i64 3536
  %i.qn = load i32, ptr %i.qm, align 16
  %.not.i436 = icmp eq i32 %i.qn, 0
  %i.qo = and i32 %i.ql, -16777217
  %spec.select.i = select i1 %.not.i436, i32 %i.ql, i32 %i.qo
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %spec.select.i, ptr elementtype(i32) %i.qj) #17, !srcloc !12
  %i.qp = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i435) #17, !srcloc !11 ; 0 uses
  call fastcc void @nv_stop_tx(ptr noundef nonnull %i.e) #20, !srcloc !21
  %i.qq = load i64, ptr %i.v, align 8
  %i.qr = and i64 %i.qq, 32
  %.not380 = icmp eq i64 %i.qr, 0
  br i1 %.not380, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qs = load i64, ptr %i.fb, align 8
  call fastcc void @nv_vlan_mode(ptr noundef nonnull %i.e, i64 noundef %i.qs) #20, !srcloc !22
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.qt = getelementptr i8, ptr %i.e, i64 288
  %i.qu = getelementptr i8, ptr %i.e, i64 3452
  %i.qv = load i32, ptr %i.qu, align 4
  %i.qw = getelementptr i8, ptr %i.e, i64 3444
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = load ptr, ptr %i.kk, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef nonnull @.str.11, ptr noundef %i.qt, i32 noundef %i.qv, i32 noundef %i.qx, ptr noundef %i.qy) #18
  %i.qz = load i64, ptr %i.fb, align 8            ; 4 uses
  %i.ra = and i64 %i.qz, 32
  %.not381 = icmp eq i64 %i.ra, 0
  %i.rb = select i1 %.not381, ptr @.str.14, ptr @.str.13
  %i.rc = and i64 %i.qz, 3
  %.not382 = icmp eq i64 %i.rc, 0
  %i.rd = select i1 %.not382, ptr @.str.14, ptr @.str.15
  %i.re = and i64 %i.qz, 384
  %.not383 = icmp eq i64 %i.re, 0
  %i.rf = select i1 %.not383, ptr @.str.14, ptr @.str.16
  %i.rg = and i64 %i.qz, 4398046511104
  %.not384 = icmp eq i64 %i.rg, 0
  %i.rh = select i1 %.not384, ptr @.str.14, ptr @.str.17
  %i.ri = load i64, ptr %i.v, align 8             ; 3 uses
  %i.rj = and i64 %i.ri, 256
  %.not385 = icmp eq i64 %i.rj, 0
  %i.rk = select i1 %.not385, ptr @.str.14, ptr @.str.18
  %i.rl = and i64 %i.ri, 8192
  %.not386 = icmp eq i64 %i.rl, 0
  %i.rm = select i1 %.not386, ptr @.str.14, ptr @.str.19
  %i.rn = and i64 %i.ri, 1
  %.not387 = icmp eq i64 %i.rn, 0
  %i.ro = select i1 %.not387, ptr @.str.14, ptr @.str.20
  %i.rp = getelementptr i8, ptr %i.e, i64 3464
  %i.rq = load i16, ptr %i.rp, align 8
  %i.rr = icmp eq i16 %i.rq, 256
  %i.rs = select i1 %i.rr, ptr @.str.21, ptr @.str.14
  %i.rt = getelementptr i8, ptr %i.e, i64 3768
  %i.ru = load i32, ptr %i.rt, align 8
  %.not388 = icmp eq i32 %i.ru, 0
  %i.rv = select i1 %.not388, ptr @.str.14, ptr @.str.22
  %i.rw = load i32, ptr %i.m, align 4             ; 2 uses
  %i.rx = and i32 %i.rw, 16
  %.not389 = icmp eq i32 %i.rx, 0
  %i.ry = select i1 %.not389, ptr @.str.14, ptr @.str.23
  %i.rz = and i32 %i.rw, 32
  %.not390 = icmp eq i32 %i.rz, 0
  %i.sa = select i1 %.not390, ptr @.str.14, ptr @.str.24
  %i.sb = load i32, ptr %i.fq, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.rb, ptr noundef nonnull %i.rd, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.rh, ptr noundef nonnull %i.rk, ptr noundef nonnull %i.rm, ptr noundef nonnull %i.ro, ptr noundef nonnull %i.rs, ptr noundef nonnull %i.rv, ptr noundef nonnull %i.ry, ptr noundef nonnull %i.sa, i32 noundef %i.sb) #18
  br label %bb.dx

bb.dn:                                            ; preds = %bb.dj, %.thread444.thread
  %.0319 = phi i32 [ -12, %.thread444.thread ], [ %i.qi, %bb.dj ] ; 2 uses
  %.val.i437 = load ptr, ptr %i.fn, align 32
  %i.sc = load i32, ptr %i.dq, align 4
  %i.sd = and i32 %i.sc, 8192
  %.not.i438 = icmp eq i32 %i.sd, 0
  br i1 %.not.i438, label %nv_mgmt_release_sema.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.se = getelementptr i8, ptr %i.e, i64 3544
  %i.sf = load i32, ptr %i.se, align 8
  %.not7.i = icmp eq i32 %i.sf, 0
end_hunk_0
begin_hunk_1_@nv_close:bb.a
bb.q:                                             ; preds = %nv_free_irq.exit
  %i.cu = getelementptr i8, ptr %0, i64 3444
  %i.cv = load i32, ptr %i.cu, align 4
  %.val.i41 = load ptr, ptr %i.r, align 8         ; 3 uses
  %i.cw = getelementptr i8, ptr %.val.i41, i64 384 ; 2 uses
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.cw) #17, !srcloc !12
  %i.cx = getelementptr i8, ptr %.val.i41, i64 400 ; 3 uses
  %i.cy = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx) #17, !srcloc !11
  %i.cz = and i32 %i.cy, 32768
  %.not.i42 = icmp eq i32 %i.cz, 0
  br i1 %.not.i42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.cx) #17, !srcloc !12
  tail call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.da = shl i32 %i.cv, 5                        ; 3 uses
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.da, ptr elementtype(i32) %i.cx) #17, !srcloc !12
  %.val22.i = load ptr, ptr %i.r, align 8         ; 2 uses
  %i.db = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i) #17, !srcloc !11 ; 0 uses
  %i.dc = getelementptr i8, ptr %.val22.i, i64 400
  tail call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.dd = add nsw i32 %.0.i.i58, -10
  tail call void @__const_udelay(i64 noundef 42950) #16
  %i.de = icmp slt i32 %.0.i.i58, 20
  br i1 %i.de, label %mii_rw.exit, label %bb.u, !llvm.loop !16

bb.u:                                             ; preds = %bb.s, %bb.t
  %.0.i.i58 = phi i32 [ 10000, %bb.s ], [ %i.dd, %bb.t ] ; 2 uses
  %i.df = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dc) #17, !srcloc !11
  %i.dg = and i32 %i.df, 32768
  %.not.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i, label %reg_delay.exit.i, label %bb.t, !llvm.loop !16

reg_delay.exit.i:                                 ; preds = %bb.u
  %i.dh = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cw) #17, !srcloc !11
  %i.di = and i32 %i.dh, 1
  %.not21.i = icmp eq i32 %i.di, 0
  br i1 %.not21.i, label %bb.v, label %mii_rw.exit

bb.v:                                             ; preds = %reg_delay.exit.i
  %i.dj = getelementptr i8, ptr %.val.i41, i64 404
  %i.dk = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj) #17, !srcloc !11
  %i.dl = or i32 %i.dk, 2048
  br label %mii_rw.exit

mii_rw.exit:                                      ; preds = %bb.t, %reg_delay.exit.i, %bb.v
  %.0.i43 = phi i32 [ %i.dl, %bb.v ], [ -1, %reg_delay.exit.i ], [ -1, %bb.t ] ; 2 uses
  %.val.i44 = load ptr, ptr %i.r, align 8         ; 4 uses
  %i.dm = getelementptr i8, ptr %.val.i44, i64 384 ; 2 uses
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.dm) #17, !srcloc !12
  %i.dn = getelementptr i8, ptr %.val.i44, i64 400 ; 3 uses
  %i.do = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dn) #17, !srcloc !11
  %i.dp = and i32 %i.do, 32768
  %.not.i45 = icmp eq i32 %i.dp, 0
  br i1 %.not.i45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %mii_rw.exit
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.dn) #17, !srcloc !12
  tail call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %mii_rw.exit
  %.not19.not.i = icmp eq i32 %.0.i43, -1         ; 2 uses
  br i1 %.not19.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr i8, ptr %.val.i44, i64 404
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i43, ptr elementtype(i32) %i.dq) #17, !srcloc !12
  %i.dr = or i32 %i.da, 1024
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.017.i = phi i32 [ %i.dr, %bb.y ], [ %i.da, %bb.x ]
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.017.i, ptr elementtype(i32) %i.dn) #17, !srcloc !12
  %.val22.i46 = load ptr, ptr %i.r, align 8       ; 2 uses
  %i.ds = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i46) #17, !srcloc !11 ; 0 uses
  %i.dt = getelementptr i8, ptr %.val22.i46, i64 400
  tail call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.du = add nsw i32 %.0.i.i4759, -10
  tail call void @__const_udelay(i64 noundef 42950) #16
  %i.dv = icmp slt i32 %.0.i.i4759, 20
  br i1 %i.dv, label %mii_rw.exit52, label %bb.ab, !llvm.loop !16

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0.i.i4759 = phi i32 [ 10000, %bb.z ], [ %i.du, %bb.aa ] ; 2 uses
  %i.dw = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dt) #17, !srcloc !11
  %i.dx = and i32 %i.dw, 32768
  %.not.i.i48 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i48, label %reg_delay.exit.i49, label %bb.aa, !llvm.loop !16

reg_delay.exit.i49:                               ; preds = %bb.ab
  br i1 %.not19.not.i, label %bb.ac, label %mii_rw.exit52

bb.ac:                                            ; preds = %reg_delay.exit.i49
  %i.dy = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm) #17, !srcloc !11
  %i.dz = and i32 %i.dy, 1
  %.not21.i51 = icmp eq i32 %i.dz, 0
  br i1 %.not21.i51, label %bb.ad, label %mii_rw.exit52

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr i8, ptr %.val.i44, i64 404
  %i.eb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ea) #17, !srcloc !11 ; 0 uses
  br label %mii_rw.exit52

mii_rw.exit52:                                    ; preds = %bb.aa, %reg_delay.exit.i49, %bb.ac, %bb.ad
  %.val.i53 = load ptr, ptr %i.r, align 8
  %i.ec = getelementptr i8, ptr %0, i64 3536
  %i.ed = load i32, ptr %i.ec, align 8
  %.not.i54 = icmp eq i32 %i.ed, 0
  br i1 %.not.i54, label %bb.ae, label %nv_txrx_gate.exit57

bb.ae:                                            ; preds = %mii_rw.exit52
  %i.ee = getelementptr i8, ptr %0, i64 3524
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = and i32 %i.ef, 256
  %.not9.i55 = icmp eq i32 %i.eg, 0
  br i1 %.not9.i55, label %nv_txrx_gate.exit57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr i8, ptr %.val.i53, i64 1536 ; 2 uses
  %i.ei = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eh) #17, !srcloc !11
  %.0.i56 = or i32 %i.ei, 3840
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i56, ptr elementtype(i32) %i.eh) #17, !srcloc !12
  br label %nv_txrx_gate.exit57

nv_txrx_gate.exit57:                              ; preds = %bb.af, %bb.ae, %mii_rw.exit52, %nv_start_rx.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 17) i32 @nv_start_xmit(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2624       ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 3512
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  %i.e = select i1 %i.d, i32 65536, i32 536870912
  %i.f = getelementptr i8, ptr %0, i64 192        ; 4 uses
  %.val186 = load i32, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %.val187 = load ptr, ptr %i.g, align 8
  %i.h = zext i32 %.val186 to i64
  %i.i = getelementptr i8, ptr %.val187, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 2               ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val188 = load i32, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 116
  %.val189 = load i32, ptr %i.m, align 4
  %i.n = sub i32 %.val188, %.val189               ; 3 uses
  %i.o = lshr i32 %i.n, 14
  %i.p = and i32 %i.n, 16383
  %.not = icmp ne i32 %i.p, 0
  %i.q = zext i1 %.not to i32
  %i.r = add nuw nsw i32 %i.o, %i.q               ; 3 uses
  %.not227 = icmp eq i8 %i.k, 0                   ; 2 uses
  br i1 %.not227, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.k to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i8 %i.k, 1
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0149218 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.t = getelementptr [16 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 56
  %.val191 = load i32, ptr %i.u, align 8          ; 2 uses
  %i.v = lshr i32 %.val191, 14
  %i.w = and i32 %.val191, 16383
  %.not179 = icmp ne i32 %i.w, 0
  %i.x = zext i1 %.not179 to i32
  %i.y = add i32 %i.v, %.0149218
  %i.z = add i32 %i.y, %i.x
  %i.aa = getelementptr [16 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 72
  %.val191.1 = load i32, ptr %i.ab, align 8       ; 2 uses
  %i.ac = lshr i32 %.val191.1, 14
  %i.ad = and i32 %.val191.1, 16383
  %.not179.1 = icmp ne i32 %i.ad, 0
  %i.ae = zext i1 %.not179.1 to i32
  %i.af = add i32 %i.ac, %i.z
  %i.ag = add i32 %i.af, %i.ae                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0149218.epil.init = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod276 = trunc i8 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.ah = getelementptr [16 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ai = getelementptr i8, ptr %i.ah, i64 56
  %.val191.epil = load i32, ptr %i.ai, align 8    ; 2 uses
  %i.aj = lshr i32 %.val191.epil, 14
  %i.ak = and i32 %.val191.epil, 16383
  %.not179.epil = icmp ne i32 %i.ak, 0
  %i.al = zext i1 %.not179.epil to i32
  %i.am = add i32 %i.aj, %.0149218.epil.init
  %i.an = add i32 %i.am, %i.al
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0149.lcssa = phi i32 [ %i.r, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ]
  %i.ao = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #16 ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 3852
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 3816      ; 18 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %1, i64 3808
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 40
  %i.ba = add nsw i64 %i.az, %i.ar
  %i.bb = srem i64 %i.ba, %i.ar
  %i.bc = trunc nsw i64 %i.bb to i32
  %i.bd = sub i32 %i.aq, %i.bc
  %.not172 = icmp ugt i32 %i.bd, %.0149.lcssa
  br i1 %.not172, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %._crit_edge
  %i.be = getelementptr i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.be, align 8          ; 2 uses
  %i.bf = load volatile i64, ptr @jiffies, align 64
  %i.bg = getelementptr i8, ptr %.val.i, i64 264
  store volatile i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %.val.i, i64 272  ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bh, i32 1, ptr elementtype(i8) %i.bh) #17, !srcloc !112
  %i.bi = getelementptr i8, ptr %1, i64 3880
  store i32 1, ptr %i.bi, align 8
  br label %netif_queue_stopped.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.ao) #16
  %i.bj = getelementptr i8, ptr %1, i64 3792      ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 3488      ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 208
  %i.bn = getelementptr i8, ptr %1, i64 3848
  %i.bo = getelementptr i8, ptr %1, i64 3800      ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 3840      ; 3 uses
  %i.bq = getelementptr i8, ptr %1, i64 3824      ; 4 uses
  %i.br = getelementptr i8, ptr %1, i64 3832      ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.0162 = phi ptr [ %i.bk, %bb.c ], [ %.1163, %bb.k ] ; 4 uses
  %.0148 = phi i32 [ %i.n, %bb.c ], [ %i.ds, %bb.k ] ; 2 uses
  %.0146 = phi i32 [ 0, %bb.c ], [ %i.dr, %bb.k ] ; 2 uses
  %.0141 = phi i32 [ 0, %bb.c ], [ %i.dq, %bb.k ]
  %i.bs = tail call i32 @llvm.umin.i32(i32 %.0148, i32 16384) ; 5 uses
  %i.bt = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 200    ; 4 uses
  %i.bv = load ptr, ptr %i.bm, align 8
  %i.bw = zext i32 %.0146 to i64
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.bw  ; 3 uses
  %i.by = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %i.bx) #16
  br i1 %i.by, label %dev_name.exit.i, label %.critedge.i, !prof !36

dev_name.exit.i:                                  ; preds = %bb.d
  %i.bz = tail call ptr @dev_driver_string(ptr noundef %i.bu) #16 ; 0 uses
  %i.ca = getelementptr i8, ptr %i.bt, i64 280
  %i.cb = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.28, ptr nonnull @.str.29, i32 524, i32 2323, i64 16) #17, !srcloc !87
  %i.cc = tail call ptr @dev_driver_string(ptr noundef %i.bu) #16
  %i.cd = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not.i21.i = icmp eq ptr %i.cd, null
  br i1 %.not.i21.i, label %bb.e, label %dev_name.exit24.i

bb.e:                                             ; preds = %dev_name.exit.i
  %.val.i23.i = load ptr, ptr %i.bu, align 8
  br label %dev_name.exit24.i

dev_name.exit24.i:                                ; preds = %bb.e, %dev_name.exit.i
  %.0.i22.i = phi ptr [ %.val.i23.i, %bb.e ], [ %i.cd, %dev_name.exit.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef %.0.i22.i) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !88
  br label %dma_map_single_attrs.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ce = zext nneg i32 %i.bs to i64
  %i.cf = load i64, ptr @vmemmap_base, align 8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ci = add i64 %i.ch, 2147483648
  %i.cj = icmp ugt ptr %i.bx, inttoptr (i64 -2147483649 to ptr)
  %i.ck = load i64, ptr @phys_base, align 8
  %i.cl = load i64, ptr @page_offset_base, align 8
  %i.cm = sub i64 -2147483648, %i.cl
  %i.cn = select i1 %i.cj, i64 %i.ck, i64 %i.cm
  %i.co = add i64 %i.ci, %i.cn
  %i.cp = lshr i64 %i.co, 12
  %i.cq = getelementptr [64 x i8], ptr %i.cg, i64 %i.cp
  %i.cr = and i64 %i.ch, 4095
  %i.cs = tail call i64 @dma_map_page_attrs(ptr noundef %i.bu, ptr noundef %i.cq, i64 noundef %i.cr, i64 noundef range(i64 -2147483648, 4294967296) %i.ce, i32 noundef 1, i64 noundef 0) #16
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %dev_name.exit24.i, %.critedge.i
  %.0.i = phi i64 [ %i.cs, %.critedge.i ], [ -1, %dev_name.exit24.i ]
  %i.ct = load ptr, ptr %i.as, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store i64 %.0.i, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8
  %.not206 = icmp eq i64 %i.cx, -1
  br i1 %.not206, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %dma_map_single_attrs.exit
  tail call void @dev_kfree_skb_any_reason(ptr noundef %0, i32 noundef 2) #16
  %i.cy = getelementptr i8, ptr %1, i64 3760
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 48     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.da, ptr elementtype(i64) %i.da) #17, !srcloc !117
  br label %bb.ae

bb.g:                                             ; preds = %dma_map_single_attrs.exit
  %i.db = getelementptr i8, ptr %i.cv, i64 16     ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = and i32 %i.dc, -2147483648
  %i.de = or disjoint i32 %i.dd, %i.bs
  store i32 %i.de, ptr %i.db, align 8
  %i.df = load ptr, ptr %i.as, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 16     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = or i32 %i.dh, -2147483648
  store i32 %i.di, ptr %i.dg, align 8
  %i.dj = load ptr, ptr %i.as, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %.0162, align 4
  %i.dn = add nsw i32 %i.bs, -1
  %i.do = or i32 %i.dn, %.0141
  %i.dp = getelementptr i8, ptr %.0162, i64 4
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = load i32, ptr %i.bn, align 8            ; 3 uses
  %i.dr = add i32 %.0146, %i.bs
  %i.ds = sub i32 %.0148, %i.bs                   ; 2 uses
  %i.dt = getelementptr i8, ptr %.0162, i64 8
  %i.du = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.dv = icmp eq ptr %.0162, %i.du
  br i1 %i.dv, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.dw = load ptr, ptr %i.bp, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1163 = phi ptr [ %i.dw, %bb.h ], [ %i.dt, %bb.g ] ; 3 uses
  %i.dx = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 40     ; 2 uses
  store ptr %i.dy, ptr %i.as, align 8
  %i.dz = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ea = icmp eq ptr %i.dx, %i.dz
  br i1 %i.ea, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.eb = load ptr, ptr %i.br, align 8            ; 2 uses
  store ptr %i.eb, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ec = phi ptr [ %i.dy, %bb.i ], [ %i.eb, %bb.j ] ; 2 uses
  %.not174 = icmp eq i32 %i.ds, 0
  br i1 %.not174, label %.preheader210, label %bb.d, !llvm.loop !118

.preheader210:                                    ; preds = %bb.k
  br i1 %.not227, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %.preheader210
  %wide.trip.count237 = zext i8 %i.k to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph224, %bb.y
  %i.ed = phi ptr [ %i.ec, %.lr.ph224 ], [ %i.hb, %bb.y ]
  %indvars.iv234 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next235, %bb.y ] ; 2 uses
end_hunk_1
begin_hunk_2_@nv_get_stats64:bb.a
  %i.bx = getelementptr i8, ptr %0, i64 3392
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %1, i64 112
  store i64 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %0, i64 3208
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %1, i64 136
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %0, i64 3200
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %1, i64 144
  store i64 %i.ce, ptr %i.cf, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.bb) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %find_next_bit.exit.thread
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nv_poll_controller(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3672
  tail call void @nv_do_nic_poll(ptr noundef %i.a) #20, !srcloc !142
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i64 @nv_fix_features(ptr nofree readnone captures(none) %0, i64 noundef %1) #12 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %1, 384
  %.not = icmp eq i64 %i.a, 0
  %i.b = or i64 %1, 1099511627776
  %spec.select = select i1 %.not, i64 %1, i64 %i.b
  ret i64 %spec.select
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @nv_set_features(ptr noundef %0, i64 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 3552       ; 2 uses
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 184
  %i.d = load i64, ptr %i.c, align 8
  %i.e = xor i64 %i.d, %1                         ; 3 uses
  %i.f = and i64 %i.e, 4398046511104
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %netif_running.exit

netif_running.exit:                               ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 168
  %i.h = load volatile i64, ptr %i.g, align 8
  %.in.i = trunc i64 %i.h to i1
  br i1 %.in.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %netif_running.exit
  %i.i = tail call fastcc i32 @nv_set_loopback(ptr noundef %0, i64 noundef %1) #20, !srcloc !143 ; 2 uses
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %netif_running.exit, %bb.a
  %i.j = and i64 %i.e, 1099511627776
  %.not24 = icmp eq i64 %i.j, 0
  br i1 %.not24, label %bb.f, label %netif_running.exit30

netif_running.exit30:                             ; preds = %bb.c
  tail call void @_raw_spin_lock_irq(ptr noundef %i.a) #16
  %i.k = getelementptr i8, ptr %0, i64 3516       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -1025
  %i.n = lshr i64 %1, 30
  %i.o = trunc i64 %i.n to i32
  %masksel = and i32 %i.o, 1024
  %.sink = or disjoint i32 %i.m, %masksel         ; 2 uses
  store i32 %.sink, ptr %i.k, align 4
  %i.p = getelementptr i8, ptr %0, i64 168
  %i.q = load volatile i64, ptr %i.p, align 8
  %.in.i29 = trunc i64 %i.q to i1
  br i1 %.in.i29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %netif_running.exit30
  %i.r = getelementptr i8, ptr %.val, i64 324
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.sink, ptr elementtype(i32) %i.r) #17, !srcloc !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %netif_running.exit30
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = and i64 %i.e, 384
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_raw_spin_lock_irq(ptr noundef %i.a) #16
  %i.t = getelementptr i8, ptr %0, i64 3516       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, -193
  %i.w = trunc i64 %1 to i32                      ; 2 uses
  %i.x = lshr i32 %i.w, 2
  %masksel.i = and i32 %i.x, 64
  %masksel11.i = and i32 %i.w, 128
  %i.y = or disjoint i32 %masksel.i, %masksel11.i
  %.sink.i = or disjoint i32 %i.y, %i.v           ; 2 uses
  store i32 %.sink.i, ptr %i.t, align 4
  %.val.i = load ptr, ptr %i.b, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 324
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.sink.i, ptr elementtype(i32) %i.z) #17, !srcloc !12
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.a) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @nv_request_irq(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3552       ; 4 uses
  %.val = load ptr, ptr %i.a, align 8             ; 7 uses
  %.not102 = icmp eq i32 %1, 0
  br i1 %.not102, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 3512
  %.val107 = load i32, ptr %i.b, align 8
  %i.c = add i32 %.val107, -3
  %switch.i = icmp ult i32 %i.c, -2
  %nv_nic_irq_optimized.nv_nic_irq = select i1 %switch.i, ptr @nv_nic_irq_optimized, ptr @nv_nic_irq
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ @nv_nic_irq_test, %bb.a ], [ %nv_nic_irq_optimized.nv_nic_irq, %bb.b ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 3884       ; 15 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = and i32 %i.e, 32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = and i32 %i.e, 15                         ; 5 uses
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 8
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = trunc i64 %indvars.iv to i16
  %i.j = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 3892
  store i16 %i.i, ptr %i.k, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = trunc i64 %indvars.iv.next to i16
  %i.m = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.n = getelementptr i8, ptr %i.m, i64 3892
  store i16 %i.l, ptr %i.n, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = trunc i64 %indvars.iv.next.1 to i16
  %i.p = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.q = getelementptr i8, ptr %i.p, i64 3892
  store i16 %i.o, ptr %i.q, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = trunc i64 %indvars.iv.next.2 to i16
  %i.s = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.t = getelementptr i8, ptr %i.s, i64 3892
  store i16 %i.r, ptr %i.t, align 4
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.3 to i16
  %i.v = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.3
  %i.w = getelementptr i8, ptr %i.v, i64 3892
  store i16 %i.u, ptr %i.w, align 4
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.x = trunc i64 %indvars.iv.next.4 to i16
  %i.y = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.4
  %i.z = getelementptr i8, ptr %i.y, i64 3892
  store i16 %i.x, ptr %i.z, align 4
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.aa = trunc i64 %indvars.iv.next.5 to i16
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.5
  %i.ac = getelementptr i8, ptr %i.ab, i64 3892
  store i16 %i.aa, ptr %i.ac, align 4
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.ad = trunc i64 %indvars.iv.next.6 to i16
  %i.ae = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.6
  %i.af = getelementptr i8, ptr %i.ae, i64 3892
  store i16 %i.ad, ptr %i.af, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !144

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = trunc i64 %indvars.iv.epil to i16
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ai = getelementptr i8, ptr %i.ah, i64 3892
  store i16 %i.ag, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !145

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %i.aj = getelementptr i8, ptr %0, i64 3488      ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %0, i64 3888      ; 4 uses
  %i.am = tail call i32 @pci_enable_msix_range(ptr noundef %i.ak, ptr noundef %i.al, i32 noundef %i.g, i32 noundef %i.g) #16
  %i.an = icmp sgt i32 %i.am, 0
  %.pre = load i32, ptr %i.d, align 4             ; 2 uses
  br i1 %i.an, label %bb.d, label %bb.p

bb.d:                                             ; preds = %._crit_edge
  %i.ao = or i32 %.pre, 128
  store i32 %i.ao, ptr %i.d, align 4
  %i.ap = load i32, ptr @optimization_mode, align 4
  %i.aq = or i32 %i.ap, %1
  %or.cond.not = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr i8, ptr %0, i64 288       ; 4 uses
  br i1 %or.cond.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr i8, ptr %0, i64 5496      ; 2 uses
  %i.at = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.as, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %i.ar) #16 ; 0 uses
  %i.au = load i32, ptr %i.al, align 8
  %i.av = tail call i32 @request_threaded_irq(i32 noundef %i.au, ptr noundef nonnull @nv_nic_irq_rx, ptr noundef null, i64 noundef 2097280, ptr noundef %i.as, ptr noundef %0) #16 ; 2 uses
  %.not103 = icmp eq i32 %i.av, 0
  br i1 %.not103, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %i.av) #18
  %i.aw = load ptr, ptr %i.aj, align 8
  tail call void @pci_disable_msix(ptr noundef %i.aw) #16
  %i.ax = load i32, ptr %i.d, align 4
  %i.ay = and i32 %i.ax, -129
  store i32 %i.ay, ptr %i.d, align 4
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %0, i64 5515      ; 2 uses
  %i.ba = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.az, ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %i.ar) #16 ; 0 uses
  %i.bb = getelementptr i8, ptr %0, i64 3896      ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = tail call i32 @request_threaded_irq(i32 noundef %i.bc, ptr noundef nonnull @nv_nic_irq_tx, ptr noundef null, i64 noundef 2097280, ptr noundef %i.az, ptr noundef %0) #16 ; 2 uses
  %.not104 = icmp eq i32 %i.bd, 0
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %i.bd) #18
  %i.be = load ptr, ptr %i.aj, align 8
  tail call void @pci_disable_msix(ptr noundef %i.be) #16
  %i.bf = load i32, ptr %i.d, align 4
  %i.bg = and i32 %i.bf, -129
  store i32 %i.bg, ptr %i.d, align 4
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr i8, ptr %0, i64 5534      ; 2 uses
  %i.bi = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.bh, ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef %i.ar) #16 ; 0 uses
  %i.bj = getelementptr i8, ptr %0, i64 3904
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = tail call i32 @request_threaded_irq(i32 noundef %i.bk, ptr noundef nonnull @nv_nic_irq_other, ptr noundef null, i64 noundef 2097280, ptr noundef %i.bh, ptr noundef %0) #16 ; 2 uses
  %.not105 = icmp eq i32 %i.bl, 0
  br i1 %.not105, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %i.bl) #18
  %i.bm = load ptr, ptr %i.aj, align 8
  tail call void @pci_disable_msix(ptr noundef %i.bm) #16
  %i.bn = load i32, ptr %i.d, align 4
  %i.bo = and i32 %i.bn, -129
  store i32 %i.bo, ptr %i.d, align 4
  %i.bp = load i32, ptr %i.bb, align 8
  %i.bq = tail call ptr @free_irq(i32 noundef %i.bp, ptr noundef %0) #16 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.br = getelementptr i8, ptr %.val, i64 992
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.br) #17, !srcloc !12
  %i.bs = getelementptr i8, ptr %.val, i64 996
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.bs) #17, !srcloc !12
  %.val110 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.bt = getelementptr i8, ptr %.val110, i64 992 ; 2 uses
  %i.bu = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bt) #17, !srcloc !11
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bu, ptr elementtype(i32) %i.bt) #17, !srcloc !12
  %i.bv = getelementptr i8, ptr %.val110, i64 996 ; 2 uses
  %i.bw = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bv) #17, !srcloc !11
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bw, ptr elementtype(i32) %i.bv) #17, !srcloc !12
  %.val109 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.bx = getelementptr i8, ptr %.val109, i64 992 ; 2 uses
  %i.by = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bx) #17, !srcloc !11
  %i.bz = or i32 %i.by, 69632
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bz, ptr elementtype(i32) %i.bx) #17, !srcloc !12
  %i.ca = getelementptr i8, ptr %.val109, i64 996 ; 2 uses
  %i.cb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ca) #17, !srcloc !11
  %i.cc = or i32 %i.cb, 1
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cc, ptr elementtype(i32) %i.ca) #17, !srcloc !12
  %.val108 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.cd = getelementptr i8, ptr %.val108, i64 992 ; 2 uses
  %i.ce = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cd) #17, !srcloc !11
  %i.cf = or i32 %i.ce, 35651584
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cf, ptr elementtype(i32) %i.cd) #17, !srcloc !12
  %i.cg = getelementptr i8, ptr %.val108, i64 996 ; 2 uses
  %i.ch = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cg) #17, !srcloc !11
  %i.ci = or i32 %i.ch, 536870944
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ci, ptr elementtype(i32) %i.cg) #17, !srcloc !12
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.cj = load i32, ptr %i.al, align 8
  %i.ck = tail call i32 @request_threaded_irq(i32 noundef %i.cj, ptr noundef nonnull %.0, ptr noundef null, i64 noundef 2097280, ptr noundef %i.ar, ptr noundef %0) #16 ; 2 uses
  %.not106 = icmp eq i32 %i.ck, 0
  br i1 %.not106, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.ck) #18
  %i.cl = load ptr, ptr %i.aj, align 8
  tail call void @pci_disable_msix(ptr noundef %i.cl) #16
  %i.cm = load i32, ptr %i.d, align 4
  %i.cn = and i32 %i.cm, -129
  store i32 %i.cn, ptr %i.d, align 4
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.co = getelementptr i8, ptr %.val, i64 992
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.co) #17, !srcloc !12
  %i.cp = getelementptr i8, ptr %.val, i64 996
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.cp) #17, !srcloc !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.42) #18
  br label %bb.x

bb.p:                                             ; preds = %._crit_edge, %bb.c
  %i.cq = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.c ]
  %i.cr = and i32 %i.cq, 16
  %.not99 = icmp eq i32 %i.cr, 0
  br i1 %.not99, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr i8, ptr %0, i64 3488      ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call i32 @pci_enable_msi(ptr noundef %i.ct) #16
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cw = load i32, ptr %i.d, align 4
  %i.cx = or i32 %i.cw, 64
  store i32 %i.cx, ptr %i.d, align 4
  %i.cy = load ptr, ptr %i.cs, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 964
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr i8, ptr %0, i64 288
  %i.dc = tail call i32 @request_threaded_irq(i32 noundef %i.da, ptr noundef nonnull %.0, ptr noundef null, i64 noundef 2097280, ptr noundef %i.db, ptr noundef %0) #16 ; 2 uses
  %.not101 = icmp eq i32 %i.dc, 0
  br i1 %.not101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.dc) #18
  %i.dd = load ptr, ptr %i.cs, align 8
  tail call void @pci_disable_msi(ptr noundef %i.dd) #16
  %i.de = load i32, ptr %i.d, align 4
  %i.df = and i32 %i.de, -65
  store i32 %i.df, ptr %i.d, align 4
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.dg = getelementptr i8, ptr %.val, i64 32
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.dg) #17, !srcloc !12
  %i.dh = getelementptr i8, ptr %.val, i64 36
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.dh) #17, !srcloc !12
  %i.di = getelementptr i8, ptr %.val, i64 48
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, ptr elementtype(i32) %i.di) #17, !srcloc !12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.43) #18
  br label %bb.x

end_hunk_2
begin_hunk_3_@nv_tx_done:bb.a
  br label %.sink.split

bb.j:                                             ; preds = %nv_unmap_txskb.exit
  %i.am = and i32 %i.o, 536870912
  %.not86 = icmp eq i32 %i.am, 0
  br i1 %.not86, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not87 = icmp samesign ult i32 %i.o, 1073741824
  br i1 %.not87, label %bb.n, label %bb.l, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.o, 8126464
  %or.cond96 = icmp eq i32 %i.an, 262144
  br i1 %or.cond96, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @nv_legacybackoff_reseed(ptr noundef %0) #20, !srcloc !155
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.h, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 32     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ap, ptr elementtype(i64) %i.ap) #17, !srcloc !156
  %i.aq = load ptr, ptr %i.e, align 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = load ptr, ptr %i.h, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 40     ; 2 uses
  tail call void asm "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aw, i64 %i.au, ptr elementtype(i64) %i.aw) #17, !srcloc !157
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l, %bb.n, %bb.h, %bb.g, %bb.i
  %i.ax = load ptr, ptr %i.e, align 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 112
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = add i32 %i.ba, %.080102
  tail call void @dev_kfree_skb_any_reason(ptr noundef %i.ay, i32 noundef 2) #16
  %i.bc = load ptr, ptr %i.e, align 8
  store ptr null, ptr %i.bc, align 8
  %i.bd = add nsw i32 %.0103, 1
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.j, %bb.e
  %.181 = phi i32 [ %.080102, %bb.j ], [ %.080102, %bb.e ], [ %i.bb, %.sink.split ] ; 2 uses
  %.1 = phi i32 [ %.0103, %bb.j ], [ %.0103, %bb.e ], [ %i.bd, %.sink.split ] ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = load ptr, ptr %i.i, align 8
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.q, !prof !36

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.j, align 8             ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = phi ptr [ %i.bi, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  store ptr %i.bl, ptr %i.e, align 8
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.s, !prof !36

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %i.l, align 8
  store ptr %i.bo, ptr %i.e, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.bj, %i.bp
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !158

.critedge:                                        ; preds = %bb.s, %bb.b
  %.080.lcssa = phi i32 [ %.080102, %bb.b ], [ %.181, %bb.s ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0103, %bb.b ], [ %.1, %bb.s ] ; 4 uses
  %i.bq = getelementptr i8, ptr %0, i64 2632
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %.val = load ptr, ptr %i.bs, align 8            ; 4 uses
  %.not.i.i = icmp eq i32 %.080.lcssa, 0
  br i1 %.not.i.i, label %netdev_completed_queue.exit, label %bb.t, !prof !102

bb.t:                                             ; preds = %.critedge
  %i.bt = getelementptr i8, ptr %.val, i64 128    ; 2 uses
  tail call void @dql_completed(ptr noundef %i.bt, i32 noundef %.080.lcssa) #16
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !103
  %i.bu = getelementptr i8, ptr %.val, i64 132
  %i.bv = load volatile i32, ptr %i.bu, align 4
  %i.bw = load volatile i32, ptr %i.bt, align 64
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %netdev_completed_queue.exit, label %bb.u, !prof !36

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr i8, ptr %.val, i64 272    ; 2 uses
  %i.ca = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bz, i64 1, ptr elementtype(i64) %i.bz) #17, !srcloc !104 ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 2
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = trunc nuw i8 %i.ca to i1
  br i1 %i.cc, label %bb.v, label %netdev_completed_queue.exit

bb.v:                                             ; preds = %bb.u
  tail call void @netif_schedule_queue(ptr noundef %.val) #16
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %bb.a, %.critedge, %bb.t, %bb.u, %bb.v
  %.0.lcssa115 = phi i32 [ %.0.lcssa, %bb.v ], [ %.0.lcssa, %.critedge ], [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %bb.u ], [ 0, %bb.a ]
  %i.cd = getelementptr i8, ptr %0, i64 3880      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.w, label %.critedge98

bb.w:                                             ; preds = %netdev_completed_queue.exit
  %i.cg = load ptr, ptr %i.a, align 8
  %.not100 = icmp eq ptr %i.cg, %i.b
  br i1 %.not100, label %.critedge98, label %bb.x, !prof !37

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr i8, ptr %0, i64 24
  %.val99 = load ptr, ptr %i.ch, align 8
  tail call void @netif_tx_wake_queue(ptr noundef %.val99) #16
  br label %.critedge98

.critedge98:                                      ; preds = %netdev_completed_queue.exit, %bb.x, %bb.w
  ret i32 %.0.lcssa115
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 17) i32 @nv_start_xmit_optimized(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2624       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 192        ; 4 uses
  %.val210 = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %.val211 = load ptr, ptr %i.c, align 8
  %i.d = zext i32 %.val210 to i64
  %i.e = getelementptr i8, ptr %.val211, i64 %i.d ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2
  %i.g = load i8, ptr %i.f, align 2               ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val212 = load i32, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 116
  %.val213 = load i32, ptr %i.i, align 4
  %i.j = sub i32 %.val212, %.val213               ; 4 uses
  %i.k = lshr i32 %i.j, 14
  %i.l = and i32 %i.j, 16383
  %.not = icmp ne i32 %i.l, 0
  %i.m = zext i1 %.not to i32
  %i.n = add nuw nsw i32 %i.k, %i.m               ; 3 uses
  %.not252 = icmp eq i8 %i.g, 0                   ; 2 uses
  br i1 %.not252, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.g to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i8 %i.g, 1
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0169242 = phi i32 [ %i.n, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 56
  %.val215 = load i32, ptr %i.q, align 8          ; 2 uses
  %i.r = lshr i32 %.val215, 14
  %i.s = and i32 %.val215, 16383
  %.not203 = icmp ne i32 %i.s, 0
  %i.t = zext i1 %.not203 to i32
  %i.u = add i32 %i.r, %.0169242
  %i.v = add i32 %i.u, %i.t
  %i.w = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 72
  %.val215.1 = load i32, ptr %i.x, align 8        ; 2 uses
  %i.y = lshr i32 %.val215.1, 14
  %i.z = and i32 %.val215.1, 16383
  %.not203.1 = icmp ne i32 %i.z, 0
  %i.aa = zext i1 %.not203.1 to i32
  %i.ab = add i32 %i.y, %i.v
  %i.ac = add i32 %i.ab, %i.aa                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !159

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0169242.epil.init = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod305 = trunc i8 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod305)
  %i.ad = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  %.val215.epil = load i32, ptr %i.ae, align 8    ; 2 uses
  %i.af = lshr i32 %.val215.epil, 14
  %i.ag = and i32 %.val215.epil, 16383
  %.not203.epil = icmp ne i32 %i.ag, 0
  %i.ah = zext i1 %.not203.epil to i32
  %i.ai = add i32 %i.af, %.0169242.epil.init
  %i.aj = add i32 %i.ai, %i.ah
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0169.lcssa = phi i32 [ %i.n, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil.preheader ]
  %i.ak = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #16 ; 2 uses
  %i.al = getelementptr i8, ptr %1, i64 3852
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 3816      ; 30 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %1, i64 3808
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 40
  %i.aw = add nsw i64 %i.av, %i.an
  %i.ax = srem i64 %i.aw, %i.an
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = sub i32 %i.am, %i.ay
  %.not193 = icmp ugt i32 %i.az, %.0169.lcssa
  br i1 %.not193, label %.peel.begin, label %bb.b, !prof !37

bb.b:                                             ; preds = %._crit_edge
  %i.ba = getelementptr i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.ba, align 8          ; 2 uses
  %i.bb = load volatile i64, ptr @jiffies, align 64
  %i.bc = getelementptr i8, ptr %.val.i, i64 264
  store volatile i64 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.val.i, i64 272  ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bd, i32 1, ptr elementtype(i8) %i.bd) #17, !srcloc !112
  %i.be = getelementptr i8, ptr %1, i64 3880
  store i32 1, ptr %i.be, align 8
  br label %netif_queue_stopped.exit

.peel.begin:                                      ; preds = %._crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.ak) #16
  %i.bf = getelementptr i8, ptr %1, i64 3792      ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 7 uses
  %i.bh = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 3488      ; 4 uses
  %i.bj = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 3800      ; 3 uses
  %i.bl = getelementptr i8, ptr %1, i64 3840      ; 4 uses
  %i.bm = getelementptr i8, ptr %1, i64 3824      ; 5 uses
  %i.bn = getelementptr i8, ptr %1, i64 3832      ; 6 uses
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.j, i32 16384) ; 5 uses
  %i.bp = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 200    ; 4 uses
  %i.br = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bs = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %i.br) #16
  br i1 %i.bs, label %dev_name.exit.i.peel, label %.critedge.i.peel, !prof !36

.critedge.i.peel:                                 ; preds = %.peel.begin
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = load i64, ptr @vmemmap_base, align 8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bx = add i64 %i.bw, 2147483648
  %i.by = icmp ugt ptr %i.br, inttoptr (i64 -2147483649 to ptr)
  %i.bz = load i64, ptr @phys_base, align 8
  %i.ca = load i64, ptr @page_offset_base, align 8
  %i.cb = sub i64 -2147483648, %i.ca
  %i.cc = select i1 %i.by, i64 %i.bz, i64 %i.cb
  %i.cd = add i64 %i.bx, %i.cc
  %i.ce = lshr i64 %i.cd, 12
  %i.cf = getelementptr [64 x i8], ptr %i.bv, i64 %i.ce
  %i.cg = and i64 %i.bw, 4095
  %i.ch = tail call i64 @dma_map_page_attrs(ptr noundef %i.bq, ptr noundef %i.cf, i64 noundef %i.cg, i64 noundef range(i64 -2147483648, 4294967296) %i.bt, i32 noundef 1, i64 noundef 0) #16
  br label %dma_map_single_attrs.exit.peel

dev_name.exit.i.peel:                             ; preds = %.peel.begin
  %i.ci = tail call ptr @dev_driver_string(ptr noundef %i.bq) #16 ; 0 uses
  %i.cj = getelementptr i8, ptr %i.bp, i64 280
  %i.ck = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.28, ptr nonnull @.str.29, i32 524, i32 2323, i64 16) #17, !srcloc !87
  %i.cl = tail call ptr @dev_driver_string(ptr noundef %i.bq) #16
  %i.cm = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i21.i.peel = icmp eq ptr %i.cm, null
  br i1 %.not.i21.i.peel, label %bb.c, label %dev_name.exit24.i.peel

bb.c:                                             ; preds = %dev_name.exit.i.peel
  %.val.i23.i.peel = load ptr, ptr %i.bq, align 8
  br label %dev_name.exit24.i.peel

dev_name.exit24.i.peel:                           ; preds = %bb.c, %dev_name.exit.i.peel
  %.0.i22.i.peel = phi ptr [ %.val.i23.i.peel, %bb.c ], [ %i.cm, %dev_name.exit.i.peel ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %.0.i22.i.peel) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !88
  br label %dma_map_single_attrs.exit.peel

dma_map_single_attrs.exit.peel:                   ; preds = %dev_name.exit24.i.peel, %.critedge.i.peel
  %.0.i.peel = phi i64 [ %i.ch, %.critedge.i.peel ], [ -1, %dev_name.exit24.i.peel ]
  %i.cn = load ptr, ptr %i.ao, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store i64 %.0.i.peel, ptr %i.co, align 8
  %i.cp = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %.not230.peel = icmp eq i64 %i.cr, -1
  br i1 %.not230.peel, label %.loopexit, label %bb.d, !prof !36

bb.d:                                             ; preds = %dma_map_single_attrs.exit.peel
  %i.cs = getelementptr i8, ptr %i.cp, i64 16     ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = and i32 %i.ct, -2147483648
  %i.cv = or disjoint i32 %i.cu, %i.bo
  store i32 %i.cv, ptr %i.cs, align 8
  %i.cw = load ptr, ptr %i.ao, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 16     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = or i32 %i.cy, -2147483648
  store i32 %i.cz, ptr %i.cx, align 8
  %i.da = load ptr, ptr %i.ao, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = lshr i64 %i.dc, 32
  %i.de = trunc nuw i64 %i.dd to i32
  store i32 %i.de, ptr %i.bg, align 4
  %i.df = load ptr, ptr %i.ao, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr i8, ptr %i.bg, i64 4
  store i32 %i.di, ptr %i.dj, align 4
  %i.dk = add nsw i32 %i.bo, -1
  %i.dl = getelementptr i8, ptr %i.bg, i64 12     ; 3 uses
  store i32 %i.dk, ptr %i.dl, align 4
  %i.dm = sub i32 %i.j, %i.bo                     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.bg, i64 16
  %i.do = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.dp = icmp eq ptr %i.bg, %i.do
  br i1 %i.dp, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.dq = load ptr, ptr %i.bl, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1183.peel = phi ptr [ %i.dq, %bb.e ], [ %i.dn, %bb.d ] ; 2 uses
  %i.dr = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 40     ; 2 uses
  store ptr %i.ds, ptr %i.ao, align 8
  %i.dt = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %bb.g, label %bb.h, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.dv = load ptr, ptr %i.bn, align 8            ; 2 uses
  store ptr %i.dv, ptr %i.ao, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dw = phi ptr [ %i.dv, %bb.g ], [ %i.ds, %bb.f ]
  %.not195.peel = icmp eq i32 %i.dm, 0
  br i1 %.not195.peel, label %.preheader234, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.n
  %.0182 = phi ptr [ %.1183, %bb.n ], [ %.1183.peel, %bb.h ] ; 5 uses
  %.0168 = phi i32 [ %i.gc, %bb.n ], [ %i.dm, %bb.h ] ; 2 uses
  %.0166 = phi i32 [ %i.gb, %bb.n ], [ %i.bo, %bb.h ] ; 2 uses
  %i.dx = tail call i32 @llvm.umin.i32(i32 %.0168, i32 16384) ; 5 uses
  %i.dy = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 200    ; 4 uses
  %i.ea = load ptr, ptr %i.bj, align 8
  %i.eb = zext i32 %.0166 to i64
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb  ; 3 uses
  %i.ed = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %i.ec) #16
  br i1 %i.ed, label %dev_name.exit.i, label %.critedge.i, !prof !36

dev_name.exit.i:                                  ; preds = %.peel.next
  %i.ee = tail call ptr @dev_driver_string(ptr noundef %i.dz) #16 ; 0 uses
  %i.ef = getelementptr i8, ptr %i.dy, i64 280
  %i.eg = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.28, ptr nonnull @.str.29, i32 524, i32 2323, i64 16) #17, !srcloc !87
  %i.eh = tail call ptr @dev_driver_string(ptr noundef %i.dz) #16
  %i.ei = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ei, null
  br i1 %.not.i21.i, label %bb.i, label %dev_name.exit24.i

bb.i:                                             ; preds = %dev_name.exit.i
end_hunk_3
