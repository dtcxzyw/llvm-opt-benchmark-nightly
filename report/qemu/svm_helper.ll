Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/svm_helper?download=true
inline.NumInlined: 92
inline.NumDeleted: 23
begin_hunk_0_@helper_vmrun:bb.a
  %i.fj = load i64, ptr %i.fi, align 16
  %i.fk = sext i32 %2 to i64
  %i.fl = add i64 %i.fj, %i.fk
  tail call void @x86_stq_phys(ptr noundef nonnull %i.a, i64 noundef %i.fh, i64 noundef %i.fl) #10
  %i.fm = load i64, ptr %i.v, align 8
  %i.fn = add i64 %i.fm, 1496
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 16
  tail call void @x86_stq_phys(ptr noundef nonnull %i.a, i64 noundef %i.fn, i64 noundef %i.fp) #10
  %i.fq = load i64, ptr %i.v, align 8
  %i.fr = add i64 %i.fq, 1528
  %i.fs = load i64, ptr %0, align 16
  tail call void @x86_stq_phys(ptr noundef nonnull %i.a, i64 noundef %i.fr, i64 noundef %i.fs) #10
  %i.ft = load i64, ptr %i.u, align 8
  %i.fu = add i64 %i.ft, 12
  %i.fv = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.fu) #10
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 13576 ; 2 uses
  store i64 %i.fv, ptr %i.fw, align 8
  %i.fx = load i64, ptr %i.u, align 8
  %i.fy = tail call i32 @x86_lduw_phys(ptr noundef nonnull %i.a, i64 noundef %i.fx) #10
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 13584
  store i16 %i.fz, ptr %i.ga, align 16
  %i.gb = load i64, ptr %i.u, align 8
  %i.gc = add i64 %i.gb, 2
  %i.gd = tail call i32 @x86_lduw_phys(ptr noundef nonnull %i.a, i64 noundef %i.gc) #10
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 13586
  store i16 %i.ge, ptr %i.gf, align 2
  %i.gg = load i64, ptr %i.u, align 8
  %i.gh = add i64 %i.gg, 4
  %i.gi = tail call i32 @x86_lduw_phys(ptr noundef nonnull %i.a, i64 noundef %i.gh) #10
  %i.gj = trunc i32 %i.gi to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 13588
  store i16 %i.gj, ptr %i.gk, align 4
  %i.gl = load i64, ptr %i.u, align 8
  %i.gm = add i64 %i.gl, 6
  %i.gn = tail call i32 @x86_lduw_phys(ptr noundef nonnull %i.a, i64 noundef %i.gm) #10
  %i.go = trunc i32 %i.gn to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 13590
  store i16 %i.go, ptr %i.gp, align 2
  %i.gq = load i64, ptr %i.u, align 8
  %i.gr = add i64 %i.gq, 8
  %i.gs = tail call i32 @x86_ldl_phys(ptr noundef nonnull %i.a, i64 noundef %i.gr) #10
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 13592
  store i32 %i.gs, ptr %i.gt, align 8
  %i.gu = load i32, ptr %i.m, align 16
  %i.gv = and i32 %i.gu, -9
  store i32 %i.gv, ptr %i.m, align 16
  %i.gw = load i64, ptr %i.u, align 8
  %i.gx = add i64 %i.gw, 104
  %i.gy = tail call i32 @x86_ldl_phys(ptr noundef nonnull %i.a, i64 noundef %i.gx) #10
  %i.gz = and i32 %i.gy, 1
  %.not259 = icmp eq i32 %i.gz, 0
  br i1 %.not259, label %bb.j, label %bb.i

bb.i:                                             ; preds = %cpu_compute_eflags.exit
  %i.ha = load i32, ptr %i.m, align 16
  %i.hb = or i32 %i.ha, 8
  store i32 %i.hb, ptr %i.m, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cpu_compute_eflags.exit
  %i.hc = load i64, ptr %i.u, align 8
  %i.hd = add i64 %i.hc, 144
  %i.he = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.hd) #10
  %i.hf = load i64, ptr %i.u, align 8
  %i.hg = add i64 %i.hf, 88
  %i.hh = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.hg) #10
  %i.hi = load i64, ptr %i.u, align 8
  %i.hj = add i64 %i.hi, 72
  %i.hk = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.hj) #10
  %i.hl = load i64, ptr %i.u, align 8
  %i.hm = add i64 %i.hl, 64
  %i.hn = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.hm) #10
  %i.ho = and i64 %i.hk, -4096
  %i.hp = load i32, ptr %i.e, align 4
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw i64 1, %i.hq                    ; 2 uses
  %i.hs = add i64 %i.hr, -8192
  %.not260 = icmp ult i64 %i.ho, %i.hs
  br i1 %.not260, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ht = and i64 %i.hn, -4096
  %i.hu = add i64 %i.hr, -8193
  %.not261 = icmp ult i64 %i.ht, %i.hu
  br i1 %.not261, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 13608 ; 2 uses
  store i32 0, ptr %i.hv, align 8
  %i.hw = load i64, ptr %i.fw, align 8
  %i.hx = and i64 %i.hw, 4294967296
  %.not17.i = icmp eq i64 %i.hx, 0
  br i1 %.not17.i, label %cpu_svm_has_intercept.exit, label %bb.o

cpu_svm_has_intercept.exit:                       ; preds = %bb.n
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.hy = and i64 %i.hh, 4294967295
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ia = and i64 %i.he, 1
  %.not262 = icmp eq i64 %i.ia, 0
  br i1 %.not262, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ib = load i64, ptr %i.u, align 8
  %i.ic = add i64 %i.ib, 176
  %i.id = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.ic) #10
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 13600
  store i64 %i.id, ptr %i.ie, align 16
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = or i32 %i.ig, 64
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = tail call i32 @get_pg_mode(ptr noundef nonnull %0) #10
  %i.ij = and i32 %i.ii, 32767
  store i32 %i.ij, ptr %i.hv, align 8
  tail call void @tlb_flush_by_mmuidx(ptr noundef nonnull %i.a, i32 noundef 128) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ik = load i32, ptr %i.m, align 16
  %i.il = or i32 %i.ik, 2097152
  store i32 %i.il, ptr %i.m, align 16
  %i.im = load i64, ptr %i.u, align 8
  %i.in = add i64 %i.im, 80
  %i.io = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.in) #10
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 13568
  store i64 %i.io, ptr %i.ip, align 16
  %i.iq = load i64, ptr %i.u, align 8
  %i.ir = add i64 %i.iq, 1368
  %i.is = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.ir) #10 ; 3 uses
  %.not263 = icmp ult i64 %i.is, 4294967296
  br i1 %.not263, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.it = and i64 %i.is, 1610612736
  %or.cond274 = icmp eq i64 %i.it, 536870912
  br i1 %or.cond274, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.iu = load i64, ptr %i.u, align 8
  %i.iv = add i64 %i.iu, 1360
  %i.iw = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.iv) #10 ; 2 uses
  %i.ix = load i64, ptr %i.bo, align 8
  %i.iy = and i64 %i.ix, 1024
  %.not266 = icmp eq i64 %i.iy, 0
  br i1 %.not266, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.iz = load i32, ptr %i.e, align 4
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = lshr i64 %i.iw, %i.ja
  %.not267 = icmp eq i64 %i.jb, 0
  br i1 %.not267, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.jc = load i64, ptr %i.u, align 8
  %i.jd = add i64 %i.jc, 1352
  %i.je = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.jd) #10 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 13864
  %i.jg = load i64, ptr %i.jf, align 8
  %.not.i276 = icmp eq i64 %i.jg, 0
  %spec.select.i = select i1 %.not.i276, i64 -4596113408, i64 -4596375552
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 13728
  %i.ji = load i64, ptr %i.jh, align 16           ; 3 uses
  %i.jj = shl i64 %i.ji, 13
  %i.jk = and i64 %i.jj, 1048576
  %i.jl = or disjoint i64 %i.jk, %spec.select.i
  %3 = and i64 %i.ji, 1048576
  %.not24.i = icmp eq i64 %3, 0
  %.2.v.i = select i1 %.not24.i, i64 3145728, i64 1048576
  %.2.i = xor i64 %i.jl, %.2.v.i
  %i.jm = shl i64 %i.ji, 16
  %i.jn = and i64 %i.jm, 65536
  %i.jo = or disjoint i64 %.2.i, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 13736
  %i.jq = load i64, ptr %i.jp, align 8            ; 5 uses
  %4 = and i64 %i.jq, 8
  %.not26.i = icmp eq i64 %4, 0
  %.4.v.i = select i1 %.not26.i, i64 4259840, i64 65536
  %.4.i = xor i64 %i.jo, %.4.v.i
  %5 = lshr i64 %i.jq, 4
  %6 = and i64 %5, 4096
  %i.jr = shl i64 %i.jq, 9
  %i.js = and i64 %i.jr, 2048
  %i.jt = lshr i64 %i.jq, 7
  %i.ju = and i64 %i.jt, 16777216
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 13752
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jx = shl i64 %i.jw, 2
  %i.jy = and i64 %i.jx, 268435456
  %7 = shl i64 %i.jw, 15
  %8 = and i64 %7, 4294967296
  %i.jz = or disjoint i64 %i.js, %6
  %9 = or disjoint i64 %i.jz, %i.ju
  %10 = or disjoint i64 %9, %i.jy
  %11 = or disjoint i64 %10, %8
  %i.ka = or disjoint i64 %11, %.4.i
  %.9.i = xor i64 %i.ka, 4580186112               ; 2 uses
  %i.kb = and i64 %i.jq, 128
  %.not32.i = icmp eq i64 %i.kb, 0
  br i1 %.not32.i, label %bb.aa, label %cr4_reserved_bits.exit

bb.aa:                                            ; preds = %bb.z
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 13744
  %i.kd = load i64, ptr %i.kc, align 16
  %i.ke = shl i64 %i.kd, 3
  %i.kf = and i64 %i.ke, 8388608
  %i.kg = xor i64 %i.kf, 8388608
  %spec.select34.i = or i64 %i.kg, %.9.i
  br label %cr4_reserved_bits.exit

cr4_reserved_bits.exit:                           ; preds = %bb.z, %bb.aa
  %.10.i = phi i64 [ %.9.i, %bb.z ], [ %spec.select34.i, %bb.aa ]
  %i.kh = and i64 %.10.i, %i.je
  %.not268 = icmp eq i64 %i.kh, 0
  br i1 %.not268, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %cr4_reserved_bits.exit
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.ac:                                            ; preds = %cr4_reserved_bits.exit
  %i.ki = load i64, ptr %i.u, align 8
  %i.kj = add i64 %i.ki, 128
  tail call void @x86_stq_phys(ptr noundef nonnull %i.a, i64 noundef %i.kj, i64 noundef 0) #10
  %i.kk = trunc nuw i64 %i.is to i32
  tail call void @cpu_x86_update_cr0(ptr noundef nonnull %0, i32 noundef %i.kk) #10
  %i.kl = trunc i64 %i.je to i32
  tail call void @cpu_x86_update_cr4(ptr noundef nonnull %0, i32 noundef %i.kl) #10
  tail call void @cpu_x86_update_cr3(ptr noundef nonnull %0, i64 noundef %i.iw) #10
  %i.km = load i64, ptr %i.u, align 8
  %i.kn = add i64 %i.km, 1600
  %i.ko = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.kn) #10
  store i64 %i.ko, ptr %i.au, align 8
  %i.kp = load i64, ptr %i.u, align 8
  %i.kq = add i64 %i.kp, 96
  %i.kr = tail call i32 @x86_ldl_phys(ptr noundef nonnull %i.a, i64 noundef %i.kq) #10 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 13616 ; 3 uses
  store i32 %i.kr, ptr %i.ks, align 16
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 8 uses
  %i.ku = load i32, ptr %i.kt, align 4            ; 2 uses
  %i.kv = and i32 %i.ku, -11                      ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 4
  %i.kw = and i32 %i.kr, 16777216
  %.not269 = icmp eq i32 %i.kw, 0
  br i1 %.not269, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kx = or disjoint i32 %i.kv, 8
  store i32 %i.kx, ptr %i.kt, align 4
  %i.ky = load i64, ptr %i.bs, align 8
  %i.kz = and i64 %i.ky, 512
  %.not270 = icmp eq i64 %i.kz, 0
  br i1 %.not270, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.la = or i32 %i.ku, 10
  store i32 %i.la, ptr %i.kt, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.lb = load i64, ptr %i.u, align 8
  %i.lc = add i64 %i.lb, 1232
  %i.ld = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.lc) #10
  tail call void @cpu_load_efer(ptr noundef nonnull %0, i64 noundef %i.ld) #10
  store i64 0, ptr %i.bs, align 8
  %i.le = load i64, ptr %i.u, align 8
  %i.lf = add i64 %i.le, 1392
  %i.lg = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.lf) #10
  %i.lh = trunc i64 %i.lg to i32
  tail call void @cpu_load_eflags(ptr noundef nonnull %0, i32 noundef %i.lh, i32 noundef -3286) #10
  %i.li = load i64, ptr %i.u, align 8
  %i.lj = add i64 %i.li, 1024
  tail call fastcc void @svm_load_seg_cache(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.lj, i32 noundef 0)
  %i.lk = load i64, ptr %i.u, align 8
  %i.ll = add i64 %i.lk, 1040
  tail call fastcc void @svm_load_seg_cache(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.ll, i32 noundef 1)
  %i.lm = load i64, ptr %i.u, align 8
  %i.ln = add i64 %i.lm, 1056
  tail call fastcc void @svm_load_seg_cache(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.ln, i32 noundef 2)
  %i.lo = load i64, ptr %i.u, align 8
  %i.lp = add i64 %i.lo, 1072
  tail call fastcc void @svm_load_seg_cache(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.lp, i32 noundef 3)
  %i.lq = load i64, ptr %i.u, align 8             ; 4 uses
  %i.lr = add i64 %i.lq, 1152
  %i.ls = tail call zeroext i16 @cpu_ldw_mmu(ptr noundef nonnull %0, i64 noundef %i.lr, i32 noundef 38, i64 noundef 0) #10
  %i.lt = zext i16 %i.ls to i32
  store i32 %i.lt, ptr %i.ah, align 16
  %i.lu = add i64 %i.lq, 1160
  %i.lv = tail call i64 @cpu_ldq_mmu(ptr noundef nonnull %0, i64 noundef %i.lu, i32 noundef 102, i64 noundef 0) #10
  store i64 %i.lv, ptr %i.ai, align 8
  %i.lw = add i64 %i.lq, 1156
  %i.lx = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.lw, i32 noundef 70, i64 noundef 0) #10
  store i32 %i.lx, ptr %i.am, align 16
  %i.ly = add i64 %i.lq, 1154
  %i.lz = tail call zeroext i16 @cpu_ldw_mmu(ptr noundef nonnull %0, i64 noundef %i.ly, i32 noundef 38, i64 noundef 0) #10
  %i.ma = zext i16 %i.lz to i32                   ; 2 uses
  %i.mb = shl nuw nsw i32 %i.ma, 8
  %i.mc = and i32 %i.mb, 65280
  %i.md = shl nuw nsw i32 %i.ma, 12
  %i.me = and i32 %i.md, 15728640
  %i.mf = or disjoint i32 %i.mc, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 %i.mf, ptr %i.mg, align 4
  %i.mh = tail call i32 @cpu_x86_virtual_addr_width(ptr noundef nonnull %0) #10
  %i.mi = sub i32 64, %i.mh
  %i.mj = load i64, ptr %i.ai, align 8
  %i.mk = and i32 %i.mi, 65535
  %i.ml = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.mm = shl i64 %i.mj, %i.ml
  %i.mn = ashr exact i64 %i.mm, %i.ml
  store i64 %i.mn, ptr %i.ai, align 8
  %i.mo = load i64, ptr %i.u, align 8             ; 4 uses
  %i.mp = add i64 %i.mo, 1120
  %i.mq = tail call zeroext i16 @cpu_ldw_mmu(ptr noundef nonnull %0, i64 noundef %i.mp, i32 noundef 38, i64 noundef 0) #10
  %i.mr = zext i16 %i.mq to i32
  store i32 %i.mr, ptr %i.y, align 8
  %i.ms = add i64 %i.mo, 1128
  %i.mt = tail call i64 @cpu_ldq_mmu(ptr noundef nonnull %0, i64 noundef %i.ms, i32 noundef 102, i64 noundef 0) #10
  store i64 %i.mt, ptr %i.z, align 16
  %i.mu = add i64 %i.mo, 1124
  %i.mv = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.mu, i32 noundef 70, i64 noundef 0) #10
  store i32 %i.mv, ptr %i.ad, align 8
  %i.mw = add i64 %i.mo, 1122
  %i.mx = tail call zeroext i16 @cpu_ldw_mmu(ptr noundef nonnull %0, i64 noundef %i.mw, i32 noundef 38, i64 noundef 0) #10
  %i.my = zext i16 %i.mx to i32                   ; 2 uses
  %i.mz = shl nuw nsw i32 %i.my, 8
  %i.na = and i32 %i.mz, 65280
  %i.nb = shl nuw nsw i32 %i.my, 12
  %i.nc = and i32 %i.nb, 15728640
  %i.nd = or disjoint i32 %i.na, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %i.nd, ptr %i.ne, align 4
  %i.nf = tail call i32 @cpu_x86_virtual_addr_width(ptr noundef nonnull %0) #10
  %i.ng = sub i32 64, %i.nf
  %i.nh = load i64, ptr %i.z, align 16
  %i.ni = and i32 %i.ng, 65535
  %i.nj = zext nneg i32 %i.ni to i64              ; 2 uses
  %i.nk = shl i64 %i.nh, %i.nj
  %i.nl = ashr exact i64 %i.nk, %i.nj
  store i64 %i.nl, ptr %i.z, align 16
  %i.nm = load i64, ptr %i.u, align 8
  %i.nn = add i64 %i.nm, 1400
  %i.no = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.nn) #10
  store i64 %i.no, ptr %i.fi, align 16
  %i.np = load i64, ptr %i.u, align 8
  %i.nq = add i64 %i.np, 1496
  %i.nr = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.nq) #10
  store i64 %i.nr, ptr %i.fo, align 16
  %i.ns = load i64, ptr %i.u, align 8
  %i.nt = add i64 %i.ns, 1528
  %i.nu = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.nt) #10
  store i64 %i.nu, ptr %0, align 16
  %i.nv = load i64, ptr %i.u, align 8
  %i.nw = add i64 %i.nv, 1376
  %i.nx = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.nw) #10 ; 2 uses
  %i.ny = load i64, ptr %i.u, align 8
  %i.nz = add i64 %i.ny, 1384
  %i.oa = tail call i64 @x86_ldq_phys(ptr noundef nonnull %i.a, i64 noundef %i.nz) #10 ; 2 uses
  %.not271 = icmp ult i64 %i.nx, 4294967296
  br i1 %.not271, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.not272 = icmp ult i64 %i.oa, 4294967296
  br i1 %.not272, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @cpu_vmexit(ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i64 noundef %i.l) #9
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ob = trunc nuw i64 %i.nx to i32
  tail call void @cpu_x86_update_dr7(ptr noundef nonnull %0, i32 noundef %i.ob) #10
  store i64 %i.oa, ptr %i.bg, align 16
  %i.oc = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.od = and i64 %i.oc, -19714
  %or.cond31.i = icmp eq i64 %i.od, 4096
  br i1 %or.cond31.i, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.oe = and i64 %i.oc, 1280
  %.not17.i278 = icmp eq i64 %i.oe, 0
  br i1 %.not17.i278, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 13760
  %i.og = load i64, ptr %i.of, align 16
  %i.oh = and i64 %i.og, 536870912
  %.not18.i = icmp eq i64 %i.oh, 0
  br i1 %.not18.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oi = and i64 %i.oc, 256
  %.not19.i = icmp eq i64 %i.oi, 0
end_hunk_0
