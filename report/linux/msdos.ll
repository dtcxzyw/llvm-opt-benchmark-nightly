Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/msdos?download=true
inline.NumInlined: 44
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@msdos_partition:bb.a
  store i8 0, ptr %i.gw, align 1
  %i.gx = load ptr, ptr %i.cy, align 8
  %i.gy = getelementptr [128 x i8], ptr %i.gx, i64 %i.gs
  %i.gz = getelementptr i8, ptr %i.gy, i64 20
  store i8 1, ptr %i.gz, align 4
  %i.ha = load i8, ptr %i.ga, align 1
  %i.hb = icmp eq i8 %i.ha, -3
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %put_partition.exit.1.i
  %i.hc = load ptr, ptr %i.cy, align 8
  %i.hd = load i32, ptr %i.cv, align 8
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [128 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  store i32 1, ptr %i.hg, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %put_partition.exit.1.i
  %i.hh = load i32, ptr %i.cv, align 8
  %i.hi = add i32 %i.hh, 1                        ; 2 uses
  store i32 %i.hi, ptr %i.cv, align 8
  %i.hj = load i32, ptr %i.cw, align 4
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %msdos_magic_present.exit.thread.i, label %is_extended_partition.exit.thread.1.i

is_extended_partition.exit.thread.1.i:            ; preds = %bb.at, %bb.ap, %bb.ap, %bb.ap, %is_extended_partition.exit.thread.i
  %.2.ph.1.i = phi i32 [ %.2.ph.i, %bb.ap ], [ 0, %bb.at ], [ %.2.ph.i, %bb.ap ], [ %.2.ph.i, %bb.ap ], [ %.2.ph.i, %is_extended_partition.exit.thread.i ] ; 5 uses
  %i.hl = getelementptr i8, ptr %i.ef, i64 490    ; 2 uses
  %.061.val77.2.i = load i32, ptr %i.hl, align 1  ; 2 uses
  %i.hm = zext i32 %.061.val77.2.i to i64
  %.not70.2.i = icmp eq i32 %.061.val77.2.i, 0
  br i1 %.not70.2.i, label %is_extended_partition.exit.thread.2.i, label %bb.au

bb.au:                                            ; preds = %is_extended_partition.exit.thread.1.i
  %i.hn = getelementptr i8, ptr %i.ef, i64 482    ; 2 uses
  %.061.val.2.i = load i8, ptr %i.hn, align 1
  switch i8 %.061.val.2.i, label %bb.av [
    i8 5, label %is_extended_partition.exit.thread.2.i
    i8 15, label %is_extended_partition.exit.thread.2.i
    i8 -123, label %is_extended_partition.exit.thread.2.i
  ]

bb.av:                                            ; preds = %bb.au
  %i.ho = getelementptr i8, ptr %i.ef, i64 486
  %.061.val73.2.i = load i32, ptr %i.ho, align 1
  %i.hp = zext i32 %.061.val73.2.i to i64
  %i.hq = mul nuw nsw i64 %i.hp, %i.dz            ; 2 uses
  %i.hr = mul nuw nsw i64 %i.hm, %i.dz            ; 3 uses
  %i.hs = add nuw nsw i64 %i.hq, %.060103.i       ; 3 uses
  %i.ht = add nuw nsw i64 %i.hq, %i.hr
  %i.hu = icmp ugt i64 %i.ht, %.059104.i
  %i.hv = icmp ult i64 %i.hs, %i.dd
  %or.cond.2.i = select i1 %i.hu, i1 true, i1 %i.hv
  %i.hw = add nuw nsw i64 %i.hs, %i.hr
  %i.hx = icmp ugt i64 %i.hw, %i.ea
  %or.cond106.2.i = select i1 %or.cond.2.i, i1 true, i1 %i.hx
  br i1 %or.cond106.2.i, label %is_extended_partition.exit.thread.2.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = load i32, ptr %i.cv, align 8            ; 4 uses
  %i.hz = load i32, ptr %i.cw, align 4
  %i.ia = icmp slt i32 %i.hy, %i.hz
  br i1 %i.ia, label %bb.ax, label %put_partition.exit.2.i

bb.ax:                                            ; preds = %bb.aw
  %i.ib = load ptr, ptr %i.cy, align 8
  %i.ic = sext i32 %i.hy to i64                   ; 2 uses
  %i.id = getelementptr [128 x i8], ptr %i.ib, i64 %i.ic
  store i64 %i.hs, ptr %i.id, align 8
  %i.ie = load ptr, ptr %i.cy, align 8
  %i.if = getelementptr [128 x i8], ptr %i.ie, i64 %i.ic
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  store i64 %i.hr, ptr %i.ig, align 8
  %i.ih = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %i.cz, ptr noundef nonnull @.str.6, ptr noundef %i.da, i32 noundef %i.hy) #8 ; 0 uses
  %.pre114.i = load i32, ptr %i.cv, align 8
  br label %put_partition.exit.2.i

put_partition.exit.2.i:                           ; preds = %bb.ax, %bb.aw
  %i.ii = phi i32 [ %.pre114.i, %bb.ax ], [ %i.hy, %bb.aw ] ; 2 uses
  %i.ij = load ptr, ptr %i.cy, align 8
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = getelementptr [128 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 21
  %i.in = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.im, i64 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %i.cu, i32 noundef %i.ii) #8 ; 0 uses
  %i.io = getelementptr i8, ptr %i.il, i64 58
  store i8 0, ptr %i.io, align 1
  %i.ip = load ptr, ptr %i.cy, align 8
  %i.iq = getelementptr [128 x i8], ptr %i.ip, i64 %i.ik
  %i.ir = getelementptr i8, ptr %i.iq, i64 20
  store i8 1, ptr %i.ir, align 4
  %i.is = load i8, ptr %i.hn, align 1
  %i.it = icmp eq i8 %i.is, -3
  br i1 %i.it, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %put_partition.exit.2.i
  %i.iu = load ptr, ptr %i.cy, align 8
  %i.iv = load i32, ptr %i.cv, align 8
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [128 x i8], ptr %i.iu, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 16
  store i32 1, ptr %i.iy, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %put_partition.exit.2.i
  %i.iz = load i32, ptr %i.cv, align 8
  %i.ja = add i32 %i.iz, 1                        ; 2 uses
  store i32 %i.ja, ptr %i.cv, align 8
  %i.jb = load i32, ptr %i.cw, align 4
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %msdos_magic_present.exit.thread.i, label %is_extended_partition.exit.thread.2.i

is_extended_partition.exit.thread.2.i:            ; preds = %bb.az, %bb.av, %bb.au, %bb.au, %bb.au, %is_extended_partition.exit.thread.1.i
  %.2.ph.2.i = phi i32 [ %.2.ph.1.i, %bb.au ], [ 0, %bb.az ], [ %.2.ph.1.i, %bb.au ], [ %.2.ph.1.i, %bb.av ], [ %.2.ph.1.i, %is_extended_partition.exit.thread.1.i ], [ %.2.ph.1.i, %bb.au ] ; 5 uses
  %i.jd = getelementptr i8, ptr %i.ef, i64 506    ; 2 uses
  %.061.val77.3.i = load i32, ptr %i.jd, align 1  ; 2 uses
  %i.je = zext i32 %.061.val77.3.i to i64
  %.not70.3.i = icmp eq i32 %.061.val77.3.i, 0
  br i1 %.not70.3.i, label %is_extended_partition.exit.thread.3.i, label %bb.ba

bb.ba:                                            ; preds = %is_extended_partition.exit.thread.2.i
  %i.jf = getelementptr i8, ptr %i.ef, i64 498    ; 2 uses
  %.061.val.3.i = load i8, ptr %i.jf, align 1
  switch i8 %.061.val.3.i, label %bb.bb [
    i8 5, label %is_extended_partition.exit.thread.3.i
    i8 15, label %is_extended_partition.exit.thread.3.i
    i8 -123, label %is_extended_partition.exit.thread.3.i
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr i8, ptr %i.ef, i64 502
  %.061.val73.3.i = load i32, ptr %i.jg, align 1
  %i.jh = zext i32 %.061.val73.3.i to i64
  %i.ji = mul nuw nsw i64 %i.jh, %i.dz            ; 2 uses
  %i.jj = mul nuw nsw i64 %i.je, %i.dz            ; 3 uses
  %i.jk = add nuw nsw i64 %i.ji, %.060103.i       ; 3 uses
  %i.jl = add nuw nsw i64 %i.ji, %i.jj
  %i.jm = icmp ugt i64 %i.jl, %.059104.i
  %i.jn = icmp ult i64 %i.jk, %i.dd
  %or.cond.3.i = select i1 %i.jm, i1 true, i1 %i.jn
  %i.jo = add nuw nsw i64 %i.jk, %i.jj
  %i.jp = icmp ugt i64 %i.jo, %i.ea
  %or.cond106.3.i = select i1 %or.cond.3.i, i1 true, i1 %i.jp
  br i1 %or.cond106.3.i, label %is_extended_partition.exit.thread.3.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jq = load i32, ptr %i.cv, align 8            ; 4 uses
  %i.jr = load i32, ptr %i.cw, align 4
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %bb.bd, label %put_partition.exit.3.i

bb.bd:                                            ; preds = %bb.bc
  %i.jt = load ptr, ptr %i.cy, align 8
  %i.ju = sext i32 %i.jq to i64                   ; 2 uses
  %i.jv = getelementptr [128 x i8], ptr %i.jt, i64 %i.ju
  store i64 %i.jk, ptr %i.jv, align 8
  %i.jw = load ptr, ptr %i.cy, align 8
  %i.jx = getelementptr [128 x i8], ptr %i.jw, i64 %i.ju
  %i.jy = getelementptr i8, ptr %i.jx, i64 8
  store i64 %i.jj, ptr %i.jy, align 8
  %i.jz = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %i.cz, ptr noundef nonnull @.str.6, ptr noundef %i.da, i32 noundef %i.jq) #8 ; 0 uses
  %.pre116.i = load i32, ptr %i.cv, align 8
  br label %put_partition.exit.3.i

put_partition.exit.3.i:                           ; preds = %bb.bd, %bb.bc
  %i.ka = phi i32 [ %.pre116.i, %bb.bd ], [ %i.jq, %bb.bc ] ; 2 uses
  %i.kb = load ptr, ptr %i.cy, align 8
  %i.kc = sext i32 %i.ka to i64                   ; 2 uses
  %i.kd = getelementptr [128 x i8], ptr %i.kb, i64 %i.kc ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 21
  %i.kf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ke, i64 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %i.cu, i32 noundef %i.ka) #8 ; 0 uses
  %i.kg = getelementptr i8, ptr %i.kd, i64 58
  store i8 0, ptr %i.kg, align 1
  %i.kh = load ptr, ptr %i.cy, align 8
  %i.ki = getelementptr [128 x i8], ptr %i.kh, i64 %i.kc
  %i.kj = getelementptr i8, ptr %i.ki, i64 20
  store i8 1, ptr %i.kj, align 4
  %i.kk = load i8, ptr %i.jf, align 1
  %i.kl = icmp eq i8 %i.kk, -3
  br i1 %i.kl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %put_partition.exit.3.i
  %i.km = load ptr, ptr %i.cy, align 8
  %i.kn = load i32, ptr %i.cv, align 8
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr [128 x i8], ptr %i.km, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 16
  store i32 1, ptr %i.kq, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %put_partition.exit.3.i
  %i.kr = load i32, ptr %i.cv, align 8
  %i.ks = add i32 %i.kr, 1                        ; 2 uses
  store i32 %i.ks, ptr %i.cv, align 8
  %i.kt = load i32, ptr %i.cw, align 4
  %i.ku = icmp eq i32 %i.ks, %i.kt
  br i1 %i.ku, label %msdos_magic_present.exit.thread.i, label %is_extended_partition.exit.thread.3.i

is_extended_partition.exit.thread.3.i:            ; preds = %bb.bf, %bb.bb, %bb.ba, %bb.ba, %bb.ba, %is_extended_partition.exit.thread.2.i
  %.2.ph.3.i = phi i32 [ %.2.ph.2.i, %bb.ba ], [ 0, %bb.bf ], [ %.2.ph.2.i, %bb.ba ], [ %.2.ph.2.i, %bb.bb ], [ %.2.ph.2.i, %is_extended_partition.exit.thread.2.i ], [ %.2.ph.2.i, %bb.ba ]
  %.162.val75.i = load i32, ptr %i.el, align 1
  %.not68.i = icmp eq i32 %.162.val75.i, 0
  br i1 %.not68.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %is_extended_partition.exit.thread.3.i
  %i.kv = getelementptr i8, ptr %i.ef, i64 446    ; 3 uses
  %i.kw = getelementptr i8, ptr %i.ef, i64 450
  %.162.val.i = load i8, ptr %i.kw, align 1
  switch i8 %.162.val.i, label %bb.bh [
    i8 5, label %.thread88.i
    i8 15, label %.thread88.i
    i8 -123, label %.thread88.i
  ]

bb.bh:                                            ; preds = %bb.bg, %is_extended_partition.exit.thread.3.i
  %.162.val75.1.i = load i32, ptr %i.fy, align 1
  %.not68.1.i = icmp eq i32 %.162.val75.1.i, 0
  br i1 %.not68.1.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = getelementptr i8, ptr %i.ef, i64 462    ; 3 uses
  %i.ky = getelementptr i8, ptr %i.ef, i64 466
  %.162.val.1.i = load i8, ptr %i.ky, align 1
  switch i8 %.162.val.1.i, label %bb.bj [
    i8 5, label %.thread88.i
    i8 15, label %.thread88.i
    i8 -123, label %.thread88.i
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.162.val75.2.i = load i32, ptr %i.hl, align 1
  %.not68.2.i = icmp eq i32 %.162.val75.2.i, 0
  br i1 %.not68.2.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = getelementptr i8, ptr %i.ef, i64 478    ; 3 uses
  %i.la = getelementptr i8, ptr %i.ef, i64 482
  %.162.val.2.i = load i8, ptr %i.la, align 1
  switch i8 %.162.val.2.i, label %bb.bl [
    i8 5, label %.thread88.i
    i8 15, label %.thread88.i
    i8 -123, label %.thread88.i
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.162.val75.3.i = load i32, ptr %i.jd, align 1
  %.not68.3.i = icmp eq i32 %.162.val75.3.i, 0
  br i1 %.not68.3.i, label %msdos_magic_present.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lb = getelementptr i8, ptr %i.ef, i64 494    ; 3 uses
  %i.lc = getelementptr i8, ptr %i.ef, i64 498
  %.162.val.3.i = load i8, ptr %i.lc, align 1
  switch i8 %.162.val.3.i, label %msdos_magic_present.exit.thread.i [
    i8 5, label %.thread88.i
    i8 15, label %.thread88.i
    i8 -123, label %.thread88.i
  ]

.thread88.i:                                      ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bk, %bb.bk, %bb.bk, %bb.bi, %bb.bi, %bb.bi, %bb.bg, %bb.bg, %bb.bg
  %.162101.lcssa.i = phi ptr [ %i.kv, %bb.bg ], [ %i.kv, %bb.bg ], [ %i.kv, %bb.bg ], [ %i.kx, %bb.bi ], [ %i.kx, %bb.bi ], [ %i.kx, %bb.bi ], [ %i.kz, %bb.bk ], [ %i.kz, %bb.bk ], [ %i.kz, %bb.bk ], [ %i.lb, %bb.bm ], [ %i.lb, %bb.bm ], [ %i.lb, %bb.bm ] ; 2 uses
  %i.ld = getelementptr i8, ptr %.162101.lcssa.i, i64 8
  %.162.val72.i = load i32, ptr %i.ld, align 1
  %i.le = zext i32 %.162.val72.i to i64
  %i.lf = mul nuw nsw i64 %i.le, %i.dz
  %i.lg = add nuw nsw i64 %i.lf, %i.dd
  %4 = getelementptr i8, ptr %.162101.lcssa.i, i64 12
  %.162.val74.i = load i32, ptr %4, align 1
  %i.lh = zext i32 %.162.val74.i to i64
  %i.li = mul nuw nsw i64 %i.lh, %i.dz
  %i.lj = load ptr, ptr %1, align 8               ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 52     ; 2 uses
  %i.ll = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.lk, ptr elementtype(i32) %i.lk) #7, !srcloc !12 ; 2 uses
  %i.lm = icmp ult i8 %i.ll, 2
  call void @llvm.assume(i1 %i.lm)
  %.not.i.i.i128 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i128, label %put_dev_sector.exit.i, label %bb.bn

bb.bn:                                            ; preds = %.thread88.i
  call void @__folio_put(ptr noundef %i.lj) #8
  br label %put_dev_sector.exit.i

put_dev_sector.exit.i:                            ; preds = %bb.bn, %.thread88.i
  %i.ln = add i32 %.2.ph.3.i, 1                   ; 2 uses
  %i.lo = icmp sgt i32 %i.ln, 100
  br i1 %i.lo, label %parse_extended.exit, label %bb.ag

msdos_magic_present.exit.thread.i:                ; preds = %bb.bm, %bb.bl, %bb.bf, %bb.az, %bb.at, %bb.ao, %msdos_magic_present.exit.i, %bb.ai
  %i.lp = load ptr, ptr %1, align 8               ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 52     ; 2 uses
  %i.lr = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.lq, ptr elementtype(i32) %i.lq) #7, !srcloc !12 ; 2 uses
  %i.ls = icmp ult i8 %i.lr, 2
  call void @llvm.assume(i1 %i.ls)
  %.not.i.i79.i = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i79.i, label %parse_extended.exit, label %bb.bo

bb.bo:                                            ; preds = %msdos_magic_present.exit.thread.i
  call void @__folio_put(ptr noundef %i.lp) #8
  br label %parse_extended.exit

parse_extended.exit:                              ; preds = %bb.ag, %bb.ah, %put_dev_sector.exit.i, %msdos_magic_present.exit.thread.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %.sink.split

bb.bp:                                            ; preds = %bb.ae
  br i1 %i.dk, label %bb.bq, label %.put_partition.exit129_crit_edge

.put_partition.exit129_crit_edge:                 ; preds = %bb.bp
  %.pre167 = trunc nuw nsw i64 %indvars.iv to i32
  br label %put_partition.exit129

bb.bq:                                            ; preds = %bb.bp
  %i.lt = load ptr, ptr %i.cy, align 8
  %i.lu = getelementptr [128 x i8], ptr %i.lt, i64 %indvars.iv
  store i64 %i.dd, ptr %i.lu, align 8
  %i.lv = load ptr, ptr %i.cy, align 8
  %i.lw = getelementptr [128 x i8], ptr %i.lv, i64 %indvars.iv
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  store i64 %i.dg, ptr %i.lx, align 8
  %i.ly = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.lz = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %i.cz, ptr noundef nonnull @.str.6, ptr noundef %i.da, i32 noundef %i.ly) #8 ; 0 uses
  br label %put_partition.exit129

put_partition.exit129:                            ; preds = %.put_partition.exit129_crit_edge, %bb.bq
  %.pre-phi = phi i32 [ %.pre167, %.put_partition.exit129_crit_edge ], [ %i.ly, %bb.bq ]
  %i.ma = load ptr, ptr %i.cy, align 8
  %i.mb = getelementptr [128 x i8], ptr %i.ma, i64 %indvars.iv ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 21
  %i.md = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.mc, i64 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %i.cu, i32 noundef %.pre-phi) #8 ; 0 uses
  %i.me = getelementptr i8, ptr %i.mb, i64 58
  store i8 0, ptr %i.me, align 1
  %i.mf = load ptr, ptr %i.cy, align 8
  %i.mg = getelementptr [128 x i8], ptr %i.mf, i64 %indvars.iv
  %i.mh = getelementptr i8, ptr %i.mg, i64 20
  store i8 1, ptr %i.mh, align 4
  %i.mi = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.mj = icmp eq i8 %i.mi, -3
  br i1 %i.mj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %put_partition.exit129
  %i.mk = load ptr, ptr %i.cy, align 8
  %i.ml = getelementptr [128 x i8], ptr %i.mk, i64 %indvars.iv
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  store i32 1, ptr %i.mm, align 8
  %.pr = load i8, ptr %i.dh, align 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %put_partition.exit129
  %i.mn = phi i8 [ %.pr, %bb.br ], [ %i.mi, %put_partition.exit129 ] ; 2 uses
  %i.mo = icmp eq i8 %i.mn, 84
  br i1 %i.mo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mp = call i32 @seq_buf_puts(ptr noundef %i.cz, ptr noundef nonnull @.str.4) #8 ; 0 uses
  %.pre = load i8, ptr %i.dh, align 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.mq = phi i8 [ %.pre, %bb.bt ], [ %i.mn, %bb.bs ]
  %i.mr = icmp eq i8 %i.mq, 85
  br i1 %i.mr, label %.sink.split, label %bb.bv

.sink.split:                                      ; preds = %bb.bu, %parse_extended.exit
  %.str.5.sink = phi ptr [ @.str.3, %parse_extended.exit ], [ @.str.5, %bb.bu ]
  %i.ms = call i32 @seq_buf_puts(ptr noundef %i.cz, ptr noundef nonnull %.str.5.sink) #8 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.bu, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mt = getelementptr i8, ptr %.2150, i64 16
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.bw, label %bb.ad, !llvm.loop !10

bb.bw:                                            ; preds = %bb.bv
  %i.mu = call i32 @seq_buf_puts(ptr noundef %i.cz, ptr noundef nonnull @.str.1) #8 ; 0 uses
  %i.mv = getelementptr i8, ptr %i.g, i64 458
  %.3.val117 = load i32, ptr %i.mv, align 2       ; 2 uses
  %i.mw = zext i32 %.3.val117 to i64
  %.not104 = icmp eq i32 %.3.val117, 0
  br i1 %.not104, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bw
  %i.mx = load i8, ptr %i.cd, align 2
  switch i8 %i.mx, label %.loopexit [
    i8 -91, label %.critedge
    i8 -87, label %.critedge.fold.split
    i8 -90, label %.critedge.fold.split187
    i8 -127, label %.critedge.fold.split188
    i8 99, label %.critedge.fold.split189
    i8 -126, label %.critedge.fold.split190
    i8 -65, label %.critedge.fold.split191
  ]

.critedge.fold.split:                             ; preds = %.preheader.preheader
  br label %.critedge

.critedge.fold.split187:                          ; preds = %.preheader.preheader
  br label %.critedge

.critedge.fold.split188:                          ; preds = %.preheader.preheader
  br label %.critedge

.critedge.fold.split189:                          ; preds = %.preheader.preheader
  br label %.critedge

.critedge.fold.split190:                          ; preds = %.preheader.preheader
  br label %.critedge

.critedge.fold.split191:                          ; preds = %.preheader.preheader
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.critedge.fold.split191, %.critedge.fold.split190, %.critedge.fold.split189, %.critedge.fold.split188, %.critedge.fold.split187, %.critedge.fold.split
  %.lcssa = phi ptr [ @subtypes, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 80), %.critedge.fold.split190 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 16), %.critedge.fold.split ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 32), %.critedge.fold.split187 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 48), %.critedge.fold.split188 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 64), %.critedge.fold.split189 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 96), %.critedge.fold.split191 ]
  %i.my = getelementptr i8, ptr %.lcssa, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = getelementptr i8, ptr %i.g, i64 454
  %.3.val = load i32, ptr %i.na, align 2
  %i.nb = zext i32 %.3.val to i64
  %i.nc = mul nuw nsw i64 %i.nb, %i.f
  %i.nd = mul nuw nsw i64 %i.mw, %i.f
  call void %i.mz(ptr noundef %0, i64 noundef %i.nc, i64 noundef %i.nd, i32 noundef 1) #8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.bw, %.critedge
  %i.ne = getelementptr i8, ptr %i.g, i64 474
  %.3.val117.1 = load i32, ptr %i.ne, align 2     ; 2 uses
  %i.nf = zext i32 %.3.val117.1 to i64
  %.not104.1 = icmp eq i32 %.3.val117.1, 0
  br i1 %.not104.1, label %.loopexit.1, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.loopexit
  %i.ng = load i8, ptr %i.ck, align 2
  switch i8 %i.ng, label %.loopexit.1 [
    i8 -91, label %.critedge.1
    i8 -87, label %.critedge.1.fold.split
    i8 -90, label %.critedge.1.fold.split192
    i8 -127, label %.critedge.1.fold.split193
    i8 99, label %.critedge.1.fold.split194
    i8 -126, label %.critedge.1.fold.split195
    i8 -65, label %.critedge.1.fold.split196
  ]

.critedge.1.fold.split:                           ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1.fold.split192:                        ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1.fold.split193:                        ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1.fold.split194:                        ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1.fold.split195:                        ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1.fold.split196:                        ; preds = %.preheader.preheader.1
  br label %.critedge.1

.critedge.1:                                      ; preds = %.preheader.preheader.1, %.critedge.1.fold.split196, %.critedge.1.fold.split195, %.critedge.1.fold.split194, %.critedge.1.fold.split193, %.critedge.1.fold.split192, %.critedge.1.fold.split
  %.lcssa.1 = phi ptr [ @subtypes, %.preheader.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 80), %.critedge.1.fold.split195 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 16), %.critedge.1.fold.split ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 32), %.critedge.1.fold.split192 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 48), %.critedge.1.fold.split193 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 64), %.critedge.1.fold.split194 ], [ getelementptr inbounds nuw (i8, ptr @subtypes, i64 96), %.critedge.1.fold.split196 ]
  %i.nh = getelementptr i8, ptr %.lcssa.1, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = getelementptr i8, ptr %i.g, i64 470
  %.3.val.1 = load i32, ptr %i.nj, align 2
  %i.nk = zext i32 %.3.val.1 to i64
  %i.nl = mul nuw nsw i64 %i.nk, %i.f
end_hunk_0
