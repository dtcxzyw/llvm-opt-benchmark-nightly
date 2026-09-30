Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hflags?download=true
inline.NumInlined: 198
inline.NumDeleted: 49
begin_hunk_0_@rebuild_hflags_a64:bb.a
  %i.av = and i64 %.sroa.17283.1, -13
  %i.aw = shl i32 %.0, 2
  %i.ax = and i32 %i.aw, 12
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.17283.2 = phi i64 [ %i.az, %bb.k ], [ %.sroa.17283.0, %bb.f ] ; 3 uses
  %.val469 = load i64, ptr %i.z, align 8
  %i.ba = and i64 %.val469, 251658240
  %.not524 = icmp eq i64 %i.ba, 0
  br i1 %.not524, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call i32 @sme_exception_el(ptr noundef nonnull %0, i32 noundef %1) #9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 16
  %i.be = and i64 %i.bd, 1
  %.not425 = icmp eq i64 %i.be, 0                 ; 2 uses
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call i32 @sve_vqm1_for_el_sm(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext true) #9
  %i.bh = and i64 %.sroa.17283.2, -254803969
  %i.bi = and i32 %i.bg, 15
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 24
  %i.bl = or disjoint i64 %i.bk, %i.bh            ; 2 uses
  br i1 %.not425, label %.thread, label %.thread509

.thread509:                                       ; preds = %bb.n
  %i.bm = and i64 %i.bl, -3145969
  %i.bn = shl nuw nsw i64 %i.bj, 4
  %i.bo = or disjoint i64 %i.bm, %i.bn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bp = and i64 %.sroa.17283.2, -3145729
  %i.bq = shl i32 %i.bb, 20
  %i.br = and i32 %i.bq, 3145728
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs            ; 2 uses
  br i1 %.not425, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread509, %bb.o
  %.sroa.17283.4511 = phi i64 [ %i.bo, %.thread509 ], [ %i.bt, %bb.o ]
  %i.bu = getelementptr i8, ptr %0, i64 79760
  %.val15.i = load i64, ptr %i.bu, align 16
  %i.bv = icmp slt i64 %.val15.i, 0
  br i1 %i.bv, label %bb.q, label %sme_fa64.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp slt i32 %1, 2
  br i1 %i.bw, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bx = tail call zeroext i1 @el_is_in_host(ptr noundef nonnull %0, i32 noundef %1) #9
  br i1 %i.bx, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12888
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, 2147483648
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %sme_fa64.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.q
  %i.cb = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i64, ptr %i.cb, align 16
  %i.cc = and i64 %.val.i, 536870912
  %.not13.i = icmp eq i64 %i.cc, 0
  br i1 %.not13.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12904
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 2147483648
  %.not14.i = icmp eq i64 %i.cf, 0
  br i1 %.not14.i, label %sme_fa64.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i
  br label %sme_fa64.exit

sme_fa64.exit:                                    ; preds = %bb.p, %bb.s, %bb.t, %bb.u
  %i.cg = phi i64 [ 0, %bb.u ], [ 268435456, %bb.s ], [ 268435456, %bb.p ], [ 268435456, %bb.t ]
  %i.ch = and i64 %.sroa.17283.4511, -272629761
  %i.ci = or disjoint i64 %i.ch, %i.cg
  %i.cj = or disjoint i64 %i.ci, 4194304
  br label %.thread

.thread:                                          ; preds = %bb.n, %sme_fa64.exit, %bb.o
  %.sroa.17283.5 = phi i64 [ %i.cj, %sme_fa64.exit ], [ %i.bt, %bb.o ], [ %i.bl, %bb.n ] ; 2 uses
  %i.ck = load i64, ptr %i.bc, align 16
  %i.cl = and i64 %i.ck, 2
  %.not426 = icmp eq i64 %i.cl, 0
  br i1 %.not426, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.cm = or i64 %.sroa.17283.5, 8388608          ; 2 uses
  %i.cn = getelementptr i8, ptr %0, i64 79760
  %.val470 = load i64, ptr %i.cn, align 16
  %i.co = and i64 %.val470, 1080863910568919040
  %.not525 = icmp eq i64 %i.co, 0
  %i.cp = and i64 %i.cm, -1649267441665
  %spec.select = select i1 %.not525, i64 %i.cm, i64 %i.cp
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread, %bb.l
  %.sroa.17283.7 = phi i64 [ %.sroa.17283.2, %bb.l ], [ %.sroa.17283.5, %.thread ], [ %spec.select, %bb.v ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @arm_mmuidx_table, i64 256), align 16 ; 2 uses
  %i.cs = and i32 %i.cr, 32
  %i.ct = icmp ne i32 %i.cs, 0
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = lshr i32 %i.cr, 3
  %i.cv = and i32 %i.cu, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8            ; 13 uses
  %.not.i480 = icmp eq i32 %1, 0                  ; 5 uses
  %i.cz = getelementptr i8, ptr %0, i64 79816
  %.val471 = load i64, ptr %i.cz, align 8         ; 2 uses
  %i.da = getelementptr i8, ptr %0, i64 79824
  %.val472 = load i64, ptr %i.da, align 8
  %i.db = lshr i64 %.val471, 4
  %i.dc = lshr i64 %.val471, 8
  %i.dd = or i64 %i.db, %i.dc
  %i.de = lshr i64 %.val472, 12
  %i.df = or i64 %i.dd, %i.de
  %i.dg = and i64 %i.df, 15
  %.not527 = icmp eq i64 %i.dg, 0
  %i.dh = and i64 %i.cy, 3355451392
  %.not427 = icmp eq i64 %i.dh, 0
  %or.cond461 = or i1 %.not427, %.not527
  %i.di = or i64 %.sroa.17283.7, 256
  %.sroa.17283.8 = select i1 %or.cond461, i64 %.sroa.17283.7, i64 %i.di ; 3 uses
  %.val473 = load i64, ptr %i.z, align 8          ; 3 uses
  %i.dj = and i64 %.val473, 15
  %.not528 = icmp eq i64 %i.dj, 0
  br i1 %.not528, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = select i1 %.not.i480, i64 34359738368, i64 68719476736
  %i.dl = and i64 %i.cy, %i.dk
  %.not428 = icmp eq i64 %i.dl, 0
  %i.dm = or i64 %.sroa.17283.8, 512
  %spec.select534 = select i1 %.not428, i64 %.sroa.17283.8, i64 %i.dm
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.17283.9 = phi i64 [ %.sroa.17283.8, %bb.w ], [ %spec.select534, %bb.x ] ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 79856
  %.val474 = load i64, ptr %i.dn, align 8
  %i.do = and i64 %.val474, 64424509440
  %.not529 = icmp eq i64 %i.do, 0
  %i.dp = and i64 %i.cy, 64
  %.not429 = icmp eq i64 %i.dp, 0
  %or.cond463 = or i1 %.not429, %.not529
  %i.dq = or i64 %.sroa.17283.9, 1073741824
  %.sroa.17283.10 = select i1 %or.cond463, i64 %.sroa.17283.9, i64 %i.dq ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ds = load i64, ptr %i.dr, align 8            ; 4 uses
  %i.dt = and i64 %i.ds, 8388608
  %.not430 = icmp eq i64 %i.dt, 0
  br i1 %.not430, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  switch i32 %3, label %bb.ac [
    i32 34, label %bb.aa
    i32 35, label %bb.aa
    i32 39, label %bb.ab
    i32 40, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.du = and i64 %i.v, 13194139533312
  %.not432 = icmp eq i64 %i.du, 13194139533312
  %i.dv = or i64 %.sroa.17283.10, 16384
  %spec.select535 = select i1 %.not432, i64 %.sroa.17283.10, i64 %i.dv
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = lshr i64 %i.dx, 13
  %i.dz = and i64 %i.dy, 16384
  %spec.select536 = or i64 %.sroa.17283.10, %i.dz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.17283.11 = phi i64 [ %.sroa.17283.10, %bb.y ], [ %.sroa.17283.10, %bb.z ], [ %spec.select535, %bb.aa ], [ %spec.select536, %bb.ab ] ; 2 uses
  %i.ea = icmp ne i32 %1, 1
  %i.eb = and i64 %i.v, 4398046511104
  %.not434 = icmp eq i64 %i.eb, 0
  %or.cond465 = select i1 %i.ea, i1 true, i1 %.not434
  br i1 %or.cond465, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %4 = lshr i64 %i.v, 10
  %5 = and i64 %4, 8589934592
  %.sroa.17283.14.v = or i64 %5, %.sroa.17283.11  ; 2 uses
  %.sroa.17283.14 = or i64 %.sroa.17283.14.v, 4831838208
  %i.ec = and i64 %i.v, 35184372088832
  %.not436 = icmp eq i64 %i.ec, 0
  br i1 %.not436, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ee = load i64, ptr %i.ed, align 8
  %6 = shl i64 %i.ee, 11
  %7 = and i64 %6, 68719476736
  %spec.select537.v = or disjoint i64 %7, 22011707392
  %spec.select537 = or i64 %.sroa.17283.14.v, %spec.select537.v
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.17283.15 = phi i64 [ %.sroa.17283.11, %bb.ac ], [ %spec.select537, %bb.ae ], [ %.sroa.17283.14, %bb.ad ] ; 7 uses
  %i.ef = and i64 %.val473, 3584
  %.not530 = icmp eq i64 %i.ef, 0
  br i1 %.not530, label %bb.aw, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = icmp slt i32 %1, 3
  br i1 %i.eg, label %bb.ah, label %allocation_tag_access_enabled.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr i8, ptr %0, i64 78928
  %.val.i482 = load i64, ptr %i.eh, align 16
  %i.ei = and i64 %.val.i482, 536870912
  %.not.i483 = icmp eq i64 %i.ei, 0
  br i1 %.not.i483, label %allocation_tag_access_enabled.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = and i64 %i.ek, 67108864
  %.not14.i484 = icmp eq i64 %i.el, 0
  br i1 %.not14.i484, label %allocation_tag_access_enabled.exit.thread, label %allocation_tag_access_enabled.exit

allocation_tag_access_enabled.exit:               ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.em = select i1 %.not.i480, i64 4398046511104, i64 8796093022208
  %i.en = and i64 %i.cy, %i.em
  %.not531 = icmp eq i64 %i.en, 0
  br i1 %.not531, label %allocation_tag_access_enabled.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %allocation_tag_access_enabled.exit
  %i.eo = or i64 %.sroa.17283.15, 32768           ; 2 uses
  %i.ep = icmp ne i32 %i.w, 0
  %i.eq = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %i.ep, i1 true, i1 %i.eq
  %i.er = and i64 %i.ds, 33554432
  %.not438 = icmp eq i64 %i.er, 0
  %or.cond517 = and i1 %or.cond, %.not438
  br i1 %or.cond517, label %bb.ak, label %allocation_tag_access_enabled.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.es = select i1 %.not.i480, i64 824633720832, i64 3298534883328
  %i.et = and i64 %i.cy, %i.es
  %.not439 = icmp eq i64 %i.et, 0
  br i1 %.not439, label %allocation_tag_access_enabled.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %8 = shl nuw nsw i64 %.sroa.17283.15, 5
  %9 = and i64 %8, 524288
  %.sroa.17283.16.v = xor i64 %9, 819200
  %.sroa.17283.16 = or i64 %.sroa.17283.16.v, %.sroa.17283.15 ; 2 uses
  %i.eu = select i1 %.not.i480, i64 288230376151711744, i64 576460752303423488
  %i.ev = and i64 %i.cy, %i.eu
  %.not441 = icmp eq i64 %i.ev, 0
  br i1 %.not441, label %allocation_tag_access_enabled.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %10 = shl i64 %.sroa.17283.15, 34
  %11 = and i64 %10, 281474976710656
  %spec.select538.v = xor i64 %11, 422212465065984
  %spec.select538 = or i64 %.sroa.17283.16, %spec.select538.v
  br label %allocation_tag_access_enabled.exit.thread

allocation_tag_access_enabled.exit.thread:        ; preds = %bb.am, %bb.ai, %bb.ak, %bb.aj, %bb.al, %allocation_tag_access_enabled.exit
  %.sroa.17283.17 = phi i64 [ %.sroa.17283.15, %bb.ai ], [ %spec.select538, %bb.am ], [ %.sroa.17283.15, %allocation_tag_access_enabled.exit ], [ %.sroa.17283.16, %bb.al ], [ %i.eo, %bb.ak ], [ %i.eo, %bb.aj ] ; 7 uses
  %i.ew = and i64 %.sroa.17283.17, 16384
  %.not443 = icmp eq i64 %i.ew, 0
  br i1 %.not443, label %allocation_tag_access_enabled.exit490.thread, label %bb.an

bb.an:                                            ; preds = %allocation_tag_access_enabled.exit.thread
  %i.ex = icmp ne i32 %i.w, 0
  %i.ey = icmp ne i32 %i.ac, 0
  %or.cond3 = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond3, label %bb.ao, label %allocation_tag_access_enabled.exit490.thread

bb.ao:                                            ; preds = %bb.an
  %i.ez = and i64 %i.ds, 33554432
  %.not444 = icmp ne i64 %i.ez, 0
  %i.fa = and i64 %i.cy, 824633720832
  %.not445 = icmp eq i64 %i.fa, 0
  %or.cond466 = or i1 %.not445, %.not444
  br i1 %or.cond466, label %allocation_tag_access_enabled.exit490.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr i8, ptr %0, i64 78928
  %.val.i485 = load i64, ptr %i.fb, align 16
  %i.fc = and i64 %.val.i485, 536870912
  %.not.i486 = icmp eq i64 %i.fc, 0
  br i1 %.not.i486, label %allocation_tag_access_enabled.exit490, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, 67108864
  %.not14.i487 = icmp ne i64 %i.ff, 0
  %i.fg = and i64 %i.cy, 4398046511104
  %i.fh = icmp ne i64 %i.fg, 0
  %or.cond519 = select i1 %.not14.i487, i1 %i.fh, i1 false
  br i1 %or.cond519, label %bb.ar, label %allocation_tag_access_enabled.exit490.thread

allocation_tag_access_enabled.exit490:            ; preds = %bb.ap
  %.old = and i64 %i.cy, 4398046511104
  %.old518.not = icmp eq i64 %.old, 0
  br i1 %.old518.not, label %allocation_tag_access_enabled.exit490.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %allocation_tag_access_enabled.exit490
  %12 = lshr i64 %i.cy, 10
  %13 = and i64 %12, 281474976710656
  %spec.select539.v = or disjoint i64 %13, 524288
  %spec.select539 = or i64 %.sroa.17283.17, %spec.select539.v
  br label %allocation_tag_access_enabled.exit490.thread

allocation_tag_access_enabled.exit490.thread:     ; preds = %bb.ar, %bb.aq, %bb.an, %allocation_tag_access_enabled.exit490, %bb.ao, %allocation_tag_access_enabled.exit.thread
  %.sroa.17283.18 = phi i64 [ %.sroa.17283.17, %bb.ao ], [ %.sroa.17283.17, %bb.aq ], [ %spec.select539, %bb.ar ], [ %.sroa.17283.17, %allocation_tag_access_enabled.exit490 ], [ %.sroa.17283.17, %allocation_tag_access_enabled.exit.thread ], [ %.sroa.17283.17, %bb.an ] ; 6 uses
  %i.fi = and i64 %.sroa.17283.18, 16384
  %.not447 = icmp eq i64 %i.fi, 0
  br i1 %.not447, label %bb.av, label %bb.as

bb.as:                                            ; preds = %allocation_tag_access_enabled.exit490.thread
  %i.fj = getelementptr i8, ptr %0, i64 78928
  %.val.i491 = load i64, ptr %i.fj, align 16
  %i.fk = and i64 %.val.i491, 536870912
  %.not.i492 = icmp eq i64 %i.fk, 0
  br i1 %.not.i492, label %allocation_tag_access_enabled.exit496, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 67108864
  %.not14.i493 = icmp ne i64 %i.fn, 0
  %i.fo = and i64 %i.cy, 4398046511104
  %i.fp = icmp ne i64 %i.fo, 0
  %or.cond522 = select i1 %.not14.i493, i1 %i.fp, i1 false
  br i1 %or.cond522, label %bb.au, label %allocation_tag_access_enabled.exit496.thread

allocation_tag_access_enabled.exit496:            ; preds = %bb.as
  %.old520 = and i64 %i.cy, 4398046511104
  %.old521.not = icmp eq i64 %.old520, 0
  br i1 %.old521.not, label %allocation_tag_access_enabled.exit496.thread, label %bb.au

bb.au:                                            ; preds = %bb.at, %allocation_tag_access_enabled.exit496
  %i.fq = or i64 %.sroa.17283.18, 2147483648
  br label %allocation_tag_access_enabled.exit496.thread

bb.av:                                            ; preds = %allocation_tag_access_enabled.exit490.thread
  %i.fr = and i64 %.sroa.17283.18, -2147500033
  %i.fs = shl i64 %.sroa.17283.18, 16
  %i.ft = and i64 %i.fs, 2147483648
  %i.fu = or disjoint i64 %i.ft, %i.fr
  br label %allocation_tag_access_enabled.exit496.thread

allocation_tag_access_enabled.exit496.thread:     ; preds = %bb.at, %allocation_tag_access_enabled.exit496, %bb.au, %bb.av
  %.sroa.17283.19 = phi i64 [ %i.fq, %bb.au ], [ %.sroa.17283.18, %allocation_tag_access_enabled.exit496 ], [ %i.fu, %bb.av ], [ %.sroa.17283.18, %bb.at ]
  %i.fv = tail call i32 @aa64_va_parameter_tcma(i64 noundef %.0.i, i32 noundef %3) #9
  %i.fw = and i64 %.sroa.17283.19, -1688849860460545
  %i.fx = shl i32 %i.fv, 16
  %i.fy = and i32 %i.fx, 196608
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = or disjoint i64 %i.fw, %i.fz
  %i.gb = and i32 %i.ac, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 49
  %i.ge = or disjoint i64 %i.ga, %i.gd
  %.val477.pre = load i64, ptr %i.z, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %allocation_tag_access_enabled.exit496.thread, %bb.af
  %.val477 = phi i64 [ %.val477.pre, %allocation_tag_access_enabled.exit496.thread ], [ %.val473, %bb.af ]
  %.sroa.17283.20 = phi i64 [ %i.ge, %allocation_tag_access_enabled.exit496.thread ], [ %.sroa.17283.15, %bb.af ] ; 5 uses
  %i.gf = and i64 %.val477, 263882790666240
  %.not532 = icmp eq i64 %i.gf, 0
  br i1 %.not532, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.gh = sext i32 %1 to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = and i64 %i.gj, 1
  %.not448 = icmp eq i64 %i.gk, 0
  br i1 %.not448, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  switch i32 %1, label %bb.az [
    i32 2, label %bb.bb
    i32 3, label %bb.bd
  ]

bb.az:                                            ; preds = %bb.ay
  %i.gl = tail call zeroext i1 @el_is_in_host(ptr noundef nonnull %0, i32 noundef %1) #9
  br i1 %i.gl, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = tail call i64 @arm_hcrx_el2_eff(ptr noundef nonnull %0) #9
  %i.gn = and i64 %i.gm, 4194304
  %.not449 = icmp eq i64 %i.gn, 0
  br i1 %.not449, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.ay
  %i.go = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.go, align 16
  %i.gp = and i64 %.val, 536870912
  %.not450 = icmp eq i64 %i.gp, 0
  br i1 %.not450, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = and i64 %i.gr, 549755813888
  %.not451 = icmp eq i64 %i.gs, 0
  br i1 %.not451, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ay
  %i.gt = or i64 %.sroa.17283.20, 2199023255552
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba, %bb.bc, %bb.ax
  %.sroa.17283.21 = phi i64 [ %i.gt, %bb.bd ], [ %.sroa.17283.20, %bb.bc ], [ %.sroa.17283.20, %bb.ba ], [ %.sroa.17283.20, %bb.ax ]
  %i.gu = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gv = shl i64 %i.gu, 37
  %i.gw = and i64 %i.gv, 4398046511104
  %.sroa.17283.22 = or i64 %i.gw, %.sroa.17283.21 ; 2 uses
  %i.gx = and i64 %i.gu, 512
  %.not453 = icmp eq i64 %i.gx, 0
  br i1 %.not453, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gy = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.gz = and i64 %.sroa.17283.22, -26388279066625
  %i.ha = and i32 %i.gy, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, 43
  %i.hd = or disjoint i64 %i.gz, %i.hc
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.aw
  %.sroa.17283.23 = phi i64 [ %.sroa.17283.20, %bb.aw ], [ %i.hd, %bb.bf ], [ %.sroa.17283.22, %bb.be ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 12688
  %i.hf = load i64, ptr %i.he, align 16           ; 2 uses
  %i.hg = shl i64 %i.hf, 36
  %i.hh = and i64 %i.hg, 137438953472
  %.sroa.17283.24 = or i64 %i.hh, %.sroa.17283.23 ; 5 uses
  %i.hi = and i64 %i.hf, 4
  %.not458 = icmp eq i64 %i.hi, 0
  br i1 %.not458, label %sme_fa64.exit504.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = and i64 %.sroa.17283.23, 4194304
  %.not459 = icmp eq i64 %i.hj, 0
  br i1 %.not459, label %sme_fa64.exit504, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = getelementptr i8, ptr %0, i64 79760
  %.val15.i497 = load i64, ptr %i.hk, align 16
  %i.hl = icmp slt i64 %.val15.i497, 0
  br i1 %i.hl, label %bb.bj, label %sme_fa64.exit504.thread

bb.bj:                                            ; preds = %bb.bi
  %i.hm = icmp slt i32 %1, 2
  br i1 %i.hm, label %bb.bk, label %.thread.i499

bb.bk:                                            ; preds = %bb.bj
  %i.hn = tail call zeroext i1 @el_is_in_host(ptr noundef nonnull %0, i32 noundef %1) #9
  br i1 %i.hn, label %.thread.i499, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 12888
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = and i64 %i.hp, 2147483648
  %.not.i503 = icmp eq i64 %i.hq, 0
  br i1 %.not.i503, label %sme_fa64.exit504.thread, label %.thread.i499

.thread.i499:                                     ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.hr = getelementptr i8, ptr %0, i64 78928
  %.val.i500 = load i64, ptr %i.hr, align 16
  %i.hs = and i64 %.val.i500, 536870912
  %.not13.i501 = icmp eq i64 %i.hs, 0
  br i1 %.not13.i501, label %sme_fa64.exit504, label %bb.bm

bb.bm:                                            ; preds = %.thread.i499
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 12904
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = and i64 %i.hu, 2147483648
  %.not14.i502 = icmp eq i64 %i.hv, 0
  br i1 %.not14.i502, label %sme_fa64.exit504.thread, label %sme_fa64.exit504

sme_fa64.exit504:                                 ; preds = %bb.bm, %.thread.i499, %bb.bh
  %i.hw = or i64 %.sroa.17283.24, 274877906944
  br label %sme_fa64.exit504.thread

sme_fa64.exit504.thread:                          ; preds = %bb.bm, %bb.bi, %bb.bl, %sme_fa64.exit504, %bb.bg
  %.sroa.17283.25 = phi i64 [ %i.hw, %sme_fa64.exit504 ], [ %.sroa.17283.24, %bb.bg ], [ %.sroa.17283.24, %bb.bl ], [ %.sroa.17283.24, %bb.bi ], [ %.sroa.17283.24, %bb.bm ] ; 2 uses
  %i.hx = getelementptr i8, ptr %0, i64 79752
  %.val478 = load i64, ptr %i.hx, align 8
  %i.hy = and i64 %.val478, 64424509440
  %.not533 = icmp eq i64 %i.hy, 0
  br i1 %.not533, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %sme_fa64.exit504.thread
  switch i32 %1, label %bb.bs [
    i32 0, label %bb.bo
    i32 1, label %bb.br
    i32 2, label %bb.bt
    i32 3, label %fpmr_exception_el.exit
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.hz = tail call zeroext i1 @el_is_in_host(ptr noundef nonnull %0, i32 noundef 0) #9
  br i1 %i.hz, label %bb.bp, label %bb.bq
end_hunk_0
