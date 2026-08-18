inline.NumInlined: 477
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__ip6_append_data:bb.a
  br label %ip6_sk_ignore_df.exit

ip6_sk_ignore_df.exit:                            ; preds = %bb.o, %bb.p
  %i.ca = phi ptr [ %i.bz, %bb.p ], [ null, %bb.o ]
  %i.cb = getelementptr i8, ptr %i.ca, i64 50
  %i.cc = load volatile i8, ptr %i.cb, align 2    ; 2 uses
  %i.cd = icmp ult i8 %i.cc, 2
  %i.ce = icmp eq i8 %i.cc, 5
  %i.cf = or i1 %i.cd, %i.ce
  %.0443 = select i1 %i.cf, i32 65575, i32 %i.z
  %i.cg = sub i32 %.0443, %i.ay
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp ugt i64 %i.bj, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %ip6_sk_ignore_df.exit, %bb.j, %.thread, %bb.i, %bb.n
  %i.cj = add i32 %i.z, 40
  %i.ck = sub i32 %i.cj, %i.ay
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  tail call void @ipv6_local_error(ptr noundef %0, i32 noundef 90, ptr noundef %i.d, i32 noundef %i.cl) #11
  br label %skb_zcopy.exit543.thread

bb.r:                                             ; preds = %ip6_sk_ignore_df.exit
  %.not481 = icmp eq i32 %7, 0
  br i1 %.not481, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr i8, ptr %0, i64 532
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = icmp ne i16 %i.cn, 17
  %i.cp = icmp ne i32 %i.ay, 40
  %or.cond.not644 = select i1 %i.co, i1 true, i1 %i.cp
  %.not482 = icmp ugt i64 %6, %i.bl
  %or.cond639 = or i1 %.not482, %or.cond.not644
  br i1 %or.cond639, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = and i32 %8, 32768
  %.not483 = icmp eq i32 %i.cq, 0
  %brmerge640 = or i1 %.not483, %i.w
  br i1 %brmerge640, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %i.aa, i64 184
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = and i64 %i.cs, 24
  %.not485 = icmp ne i64 %i.ct, 0                 ; 2 uses
  %spec.select515 = select i1 %.not485, i8 96, i8 0
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.r
  %i.cu = phi i1 [ false, %bb.r ], [ %.not485, %bb.u ], [ false, %bb.t ], [ false, %bb.s ] ; 2 uses
  %.0442 = phi i8 [ 0, %bb.r ], [ %spec.select515, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cv = and i32 %8, 67108864
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = icmp ne i64 %6, 0                       ; 2 uses
  %or.cond4 = and i1 %i.cx, %i.cw
  br i1 %or.cond4, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.cy = icmp eq ptr %4, @ip_generic_getfrag
  br i1 %i.cy, label %bb.x, label %sock_flag.exit

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr i8, ptr %5, i64 80
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not486 = icmp eq ptr %i.da, null
  br i1 %.not486, label %sock_flag.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not, label %skb_zcopy.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr i8, ptr %spec.store.select.i, i64 192
  %.val4.i = load i32, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %spec.store.select.i, i64 200
  %.val5.i = load ptr, ptr %i.dc, align 8
  %i.dd = zext i32 %.val4.i to i64
  %i.de = getelementptr i8, ptr %.val5.i, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %skb_zcopy.exit, label %skb_zcopy.exit.thread

skb_zcopy.exit:                                   ; preds = %bb.z
  %i.dh = getelementptr i8, ptr %i.de, i64 40
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not489 = icmp eq ptr %i.di, null
  %.not490 = icmp eq ptr %i.da, %i.di
  %or.cond = or i1 %.not489, %.not490
  br i1 %or.cond, label %skb_zcopy.exit.thread, label %skb_zcopy.exit543.thread

skb_zcopy.exit.thread:                            ; preds = %bb.y, %bb.z, %skb_zcopy.exit
  %i.dj = getelementptr i8, ptr %i.aa, i64 184
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = trunc i64 %i.dk to i1
  %or.cond6 = and i1 %i.cu, %i.dl
  br i1 %or.cond6, label %bb.aa, label %.thread590

bb.aa:                                            ; preds = %skb_zcopy.exit.thread
  br label %.thread590

sock_flag.exit:                                   ; preds = %bb.w, %bb.x
  %i.dm = getelementptr i8, ptr %0, i64 96
  %i.dn = load volatile i64, ptr %i.dm, align 8
  %.in.in.i = and i64 %i.dn, 262144
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %.thread590, label %bb.ab

bb.ab:                                            ; preds = %sock_flag.exit
  br i1 %.not, label %skb_zcopy.exit547.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr i8, ptr %spec.store.select.i, i64 192 ; 2 uses
  %.val4.i545 = load i32, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %spec.store.select.i, i64 200 ; 2 uses
  %.val5.i546 = load ptr, ptr %i.dp, align 8
  %i.dq = zext i32 %.val4.i545 to i64
  %i.dr = getelementptr i8, ptr %.val5.i546, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8
  %i.dt = trunc i8 %i.ds to i1
  br i1 %i.dt, label %bb.ad, label %skb_zcopy.exit547

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr i8, ptr %i.dr, i64 40
  %i.dv = load ptr, ptr %i.du, align 8
  br label %skb_zcopy.exit547

skb_zcopy.exit547:                                ; preds = %bb.ac, %bb.ad
  %i.dw = phi ptr [ %i.dv, %bb.ad ], [ null, %bb.ac ]
  %i.dx = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i64 noundef %6, ptr noundef %i.dw, i1 noundef zeroext false) #11 ; 3 uses
  %.not487 = icmp eq ptr %i.dx, null
  br i1 %.not487, label %skb_zcopy.exit543.thread, label %bb.ae

skb_zcopy.exit547.thread:                         ; preds = %bb.ab
  %i.dy = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i64 noundef %6, ptr noundef null, i1 noundef zeroext false) #11 ; 2 uses
  %.not487588 = icmp eq ptr %i.dy, null
  br i1 %.not487588, label %skb_zcopy.exit543.thread, label %skb_zcopy.exit551

bb.ae:                                            ; preds = %skb_zcopy.exit547
  %.val4.i549 = load i32, ptr %i.do, align 8
  %.val5.i550 = load ptr, ptr %i.dp, align 8
  %i.dz = zext i32 %.val4.i549 to i64
  %i.ea = getelementptr i8, ptr %.val5.i550, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %bb.af, label %skb_zcopy.exit551

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr i8, ptr %i.ea, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = icmp eq ptr %i.ee, null
  %i.eg = zext i1 %i.ef to i8
  br label %skb_zcopy.exit551

skb_zcopy.exit551:                                ; preds = %skb_zcopy.exit547.thread, %bb.ae, %bb.af
  %i.eh = phi ptr [ %i.dx, %bb.af ], [ %i.dx, %bb.ae ], [ %i.dy, %skb_zcopy.exit547.thread ] ; 4 uses
  %.not488 = phi i8 [ %i.eg, %bb.af ], [ 1, %bb.ae ], [ 1, %skb_zcopy.exit547.thread ]
  store i8 %.not488, ptr %i.b, align 1
  %i.ei = load ptr, ptr %i.f, align 8
  %i.ej = getelementptr i8, ptr %i.ei, i64 184
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = trunc i64 %i.ek to i1
  %or.cond8 = and i1 %i.cu, %i.el
  br i1 %or.cond8, label %.thread590, label %bb.ag

bb.ag:                                            ; preds = %skb_zcopy.exit551
  %i.em = getelementptr i8, ptr %i.eh, i64 22     ; 2 uses
  %i.en = load i8, ptr %i.em, align 2
  %i.eo = and i8 %i.en, -2
  store i8 %i.eo, ptr %i.em, align 2
  call fastcc void @skb_zcopy_set(ptr noundef %spec.store.select.i, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.b) #13, !srcloc !108
  br label %.thread590

bb.ah:                                            ; preds = %bb.v
  %i.ep = and i32 %8, 134217728
  %i.eq = icmp ne i32 %i.ep, 0
  %or.cond10 = and i1 %i.cx, %i.eq
  br i1 %or.cond10, label %bb.ai, label %.thread590

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr i8, ptr %0, i64 792
  %i.es = load volatile i64, ptr %i.er, align 8
  %i.et = and i64 %i.es, 4096
  %.not646.a = icmp eq i64 %i.et, 0
  br i1 %.not646.a, label %bb.aj, label %skb_zcopy.exit543.thread

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr i8, ptr %i.aa, i64 184
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = trunc i64 %i.ev to i1
  %i.ex = icmp eq ptr %4, @ip_generic_getfrag
  %or.cond12 = and i1 %i.ex, %i.ew                ; 2 uses
  %i.ey = and i32 %8, -134217729
  %spec.select523 = or i1 %i.w, %or.cond12
  %spec.select524 = select i1 %or.cond12, i32 %8, i32 %i.ey
  br label %.thread590

.thread590:                                       ; preds = %bb.aa, %skb_zcopy.exit.thread, %bb.ag, %sock_flag.exit, %skb_zcopy.exit551, %bb.aj, %bb.ah
  %.2434 = phi i1 [ %spec.select523, %bb.aj ], [ %i.w, %bb.ah ], [ true, %skb_zcopy.exit551 ], [ %i.w, %bb.ag ], [ %i.w, %sock_flag.exit ], [ %i.w, %skb_zcopy.exit.thread ], [ true, %bb.aa ]
  %.2428 = phi i1 [ false, %bb.aj ], [ false, %bb.ah ], [ true, %skb_zcopy.exit551 ], [ false, %bb.ag ], [ false, %sock_flag.exit ], [ false, %skb_zcopy.exit.thread ], [ true, %bb.aa ]
  %.2412 = phi ptr [ null, %bb.aj ], [ null, %bb.ah ], [ %i.eh, %skb_zcopy.exit551 ], [ %i.eh, %bb.ag ], [ null, %sock_flag.exit ], [ null, %skb_zcopy.exit.thread ], [ %i.da, %bb.aa ] ; 8 uses
  %.0404 = phi i32 [ %spec.select524, %bb.aj ], [ %8, %bb.ah ], [ %8, %skb_zcopy.exit551 ], [ %8, %bb.ag ], [ %8, %sock_flag.exit ], [ %8, %skb_zcopy.exit.thread ], [ %8, %bb.aa ] ; 6 uses
  %i.ez = getelementptr i8, ptr %2, i64 32        ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 8
  %i.fb = and i8 %i.fa, -53
  %.not491 = icmp eq i8 %i.fb, 0
  br i1 %.not491, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.thread590
  %i.fc = getelementptr i8, ptr %0, i64 352
  %i.fd = load volatile i32, ptr %i.fc, align 8
  %i.fe = and i32 %i.fd, 128
  %.not492 = icmp eq i32 %i.fe, 0
  br i1 %.not492, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ff = load i32, ptr %2, align 8
  %i.fg = and i32 %i.ff, 2
  %.not493 = icmp eq i32 %i.fg, 0
  br i1 %.not493, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr i8, ptr %2, i64 44
  %i.fi = load i32, ptr %i.fh, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fj = getelementptr i8, ptr %0, i64 484       ; 2 uses
  %i.fk = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fj, i32 1, ptr elementtype(i32) %i.fj) #12, !srcloc !109
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ak, %.thread590
  %.0441 = phi i1 [ false, %bb.am ], [ true, %bb.an ], [ false, %bb.ak ], [ false, %.thread590 ]
  %.0429 = phi i32 [ %i.fi, %bb.am ], [ %i.fk, %bb.an ], [ 0, %bb.ak ], [ 0, %.thread590 ] ; 2 uses
  %i.fl = load i32, ptr %i.bg, align 4
  %i.fm = trunc i64 %6 to i32
  %i.fn = add i32 %i.fl, %i.fm                    ; 2 uses
  store i32 %i.fn, ptr %i.bg, align 4
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bu, %bb.ao
  %.0582.ph = phi i32 [ %i.bd, %bb.ao ], [ %.2584, %bb.bu ] ; 3 uses
  %.0578.ph = phi i32 [ %i.z, %bb.ao ], [ %.2580, %bb.bu ] ; 3 uses
  %.0444.ph = phi i32 [ 0, %bb.ao ], [ %.2446, %bb.bu ] ; 2 uses
  %.1430.ph = phi i32 [ %.0429, %bb.ao ], [ 0, %bb.bu ]
  %.0424.ph = phi i32 [ 0, %bb.ao ], [ %i.lk, %bb.bu ]
  %.1418.ph = phi i32 [ %.0417, %bb.ao ], [ 0, %bb.bu ]
  %.1415.ph = phi i16 [ %.0414, %bb.ao ], [ 0, %bb.bu ]
  %.0408.ph = phi i1 [ false, %bb.ao ], [ %i.gn, %bb.bu ]
  %.0405.ph = phi ptr [ %i.i, %bb.ao ], [ %.3621, %bb.bu ] ; 19 uses
  %.0402.ph = phi i32 [ %7, %bb.ao ], [ 0, %bb.bu ]
  %.0399.ph = phi i64 [ %6, %bb.ao ], [ %i.ln, %bb.bu ] ; 2 uses
  %.not494674 = icmp eq i64 %.0399.ph, 0
  br i1 %.not494674, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fo = getelementptr i8, ptr %.0405.ph, i64 112 ; 4 uses
  %i.fp = getelementptr i8, ptr %.0405.ph, i64 116 ; 3 uses
  %i.fq = getelementptr i8, ptr %.0405.ph, i64 192 ; 8 uses
  %i.fr = getelementptr i8, ptr %.0405.ph, i64 188
  %i.fs = icmp eq ptr %4, @ip_generic_getfrag     ; 2 uses
  %i.ft = and i32 %.0404, 134217728
  %.not499 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr i8, ptr %5, i64 40
  %i.fv = getelementptr i8, ptr %5, i64 16        ; 2 uses
  %i.fw = and i32 %.0404, 524288
  %.not500 = icmp eq i32 %i.fw, 0
  %i.fx = getelementptr i8, ptr %.0405.ph, i64 200 ; 6 uses
  %i.fy = getelementptr i8, ptr %3, i64 8         ; 4 uses
  %i.fz = getelementptr i8, ptr %.0405.ph, i64 126 ; 2 uses
  %i.ga = getelementptr i8, ptr %.0405.ph, i64 129 ; 2 uses
  %i.gb = getelementptr i8, ptr %3, i64 12
  %i.gc = getelementptr i8, ptr %.0405.ph, i64 216 ; 2 uses
  %i.gd = getelementptr i8, ptr %.0405.ph, i64 24
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %.thread622.a
  %.0399678 = phi i64 [ %.0399.ph, %.lr.ph ], [ %i.rw, %.thread622.a ] ; 11 uses
  %.0424676 = phi i32 [ %.0424.ph, %.lr.ph ], [ %i.ru, %.thread622.a ] ; 6 uses
  %.0444675 = phi i32 [ %.0444.ph, %.lr.ph ], [ %.5449, %.thread622.a ] ; 12 uses
  %i.ge = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not496 = icmp ugt i32 %i.ge, %.0578.ph
  %i.gf = select i1 %.not496, i32 %.0582.ph, i32 %.0578.ph
  %i.gg = load i32, ptr %i.fo, align 8            ; 5 uses
  %i.gh = sub i32 %i.gf, %i.gg                    ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp ugt i64 %.0399678, %i.gi
  %i.gk = sub i32 %.0582.ph, %i.gg
  %spec.select518 = select i1 %i.gj, i32 %i.gk, i32 %i.gh ; 2 uses
  %i.gl = icmp slt i32 %spec.select518, 1
  br i1 %i.gl, label %.loopexit, label %bb.bv

.loopexit:                                        ; preds = %bb.ap, %bb.ao
  %i.gm = phi i32 [ %i.fn, %bb.ao ], [ %i.ge, %bb.ap ]
  %.1583 = phi i32 [ %i.bd, %bb.ao ], [ %.0582.ph, %bb.ap ] ; 4 uses
  %.1579 = phi i32 [ %i.z, %bb.ao ], [ %.0578.ph, %bb.ap ] ; 3 uses
  %.1445 = phi i32 [ 0, %bb.ao ], [ %.0444675, %bb.ap ] ; 7 uses
  %.2431 = phi i32 [ %.0429, %bb.ao ], [ %.1430.ph, %bb.ap ]
  %.1425 = phi i32 [ 0, %bb.ao ], [ %.0424676, %bb.ap ] ; 3 uses
  %.2419 = phi i32 [ %.0417, %bb.ao ], [ %.1418.ph, %bb.ap ]
  %.2416 = phi i16 [ %.0414, %bb.ao ], [ %.1415.ph, %bb.ap ]
  %.1409 = phi i1 [ false, %bb.ao ], [ %.0408.ph, %bb.ap ]
  %.1406 = phi ptr [ null, %bb.ao ], [ %.0405.ph, %bb.ap ] ; 10 uses
  %.1403 = phi i32 [ %7, %bb.ao ], [ %.0402.ph, %bb.ap ] ; 7 uses
  %.1400 = phi i64 [ %6, %bb.ao ], [ %.0399678, %bb.ap ] ; 6 uses
  %i.gn = icmp ne ptr %.1406, null                ; 3 uses
  br i1 %i.gn, label %bb.aq, label %.thread601

bb.aq:                                            ; preds = %.loopexit
  %i.go = getelementptr i8, ptr %.1406, i64 112
  %i.gp = load i32, ptr %i.go, align 8
  %i.gq = sub i32 %i.gp, %.1583                   ; 3 uses
  br i1 %.1409, label %ip6_append_data_mtu.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr i8, ptr %i.f, i64 56
  %i.gs = load i16, ptr %i.gr, align 8
  %i.gt = and i16 %i.gs, 32
  %.not.i552 = icmp eq i16 %i.gt, 0
  br i1 %.not.i552, label %bb.at, label %ip6_append_data_mtu.exit

.thread601:                                       ; preds = %.loopexit
  %i.gu = getelementptr i8, ptr %i.f, i64 56
  %i.gv = load i16, ptr %i.gu, align 8
  %i.gw = and i16 %i.gv, 32
  %.not.i552603 = icmp eq i16 %i.gw, 0
  br i1 %.not.i552603, label %bb.as, label %ip6_append_data_mtu.exit

bb.as:                                            ; preds = %.thread601
  %i.gx = getelementptr i8, ptr %i.f, i64 60
  %i.gy = load i16, ptr %i.gx, align 4
  %i.gz = zext i16 %i.gy to i32
  %i.ha = sub i32 %i.z, %i.gz                     ; 2 uses
  %.pre707 = sub i32 %i.ha, %i.aw
  %.pre709 = and i32 %.pre707, -8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.pre-phi710 = phi i32 [ %i.ba, %bb.ar ], [ %.pre709, %bb.as ]
  %.0437599605609 = phi i32 [ %i.gq, %bb.ar ], [ 0, %bb.as ]
  %storemerge.i = phi i32 [ %i.z, %bb.ar ], [ %i.ha, %bb.as ]
  %i.hb = add nsw i32 %i.aw, -8
  %i.hc = add i32 %i.hb, %.pre-phi710
  br label %ip6_append_data_mtu.exit

ip6_append_data_mtu.exit:                         ; preds = %bb.at, %bb.ar, %.thread601, %bb.aq
  %.0437600 = phi i32 [ %i.gq, %bb.aq ], [ %.0437599605609, %bb.at ], [ %i.gq, %bb.ar ], [ 0, %.thread601 ] ; 8 uses
  %.2584 = phi i32 [ %.1583, %bb.aq ], [ %i.hc, %bb.at ], [ %.1583, %bb.ar ], [ %.1583, %.thread601 ] ; 8 uses
  %.2580 = phi i32 [ %.1579, %bb.aq ], [ %storemerge.i, %bb.at ], [ %.1579, %bb.ar ], [ %.1579, %.thread601 ] ; 4 uses
  %i.hd = zext i32 %.0437600 to i64               ; 2 uses
  %i.he = add i64 %.1400, %i.hd                   ; 2 uses
  %i.hf = trunc i64 %i.he to i32                  ; 2 uses
  %.not501 = icmp ugt i32 %i.gm, %.2580
  %i.hg = select i1 %.not501, i32 %.2584, i32 %.2580
  %i.hh = sub i32 %i.hg, %i.aw
  %i.hi = icmp ult i32 %i.hh, %i.hf
  %i.hj = getelementptr i8, ptr %i.f, i64 62
  %i.hk = load i16, ptr %i.hj, align 2
  %i.hl = zext i16 %i.hk to i32                   ; 3 uses
  %i.hm = add nuw nsw i32 %i.aw, %i.hl
  %i.hn = sub i32 %.2584, %i.hm
  %.0438 = select i1 %i.hi, i32 %i.hn, i32 %i.hf  ; 4 uses
  %i.ho = add i32 %.0438, %i.aw                   ; 3 uses
  %i.hp = add nuw nsw i32 %i.ai, 24
  %i.hq = add nsw i32 %i.hp, %.2419               ; 3 uses
  %i.hr = add nsw i32 %i.hq, %i.hl                ; 2 uses
  %i.hs = and i32 %.0404, 32768
  %.not502 = icmp eq i32 %i.hs, 0
  br i1 %.not502, label %bb.av, label %bb.au

bb.au:                                            ; preds = %ip6_append_data_mtu.exit
  %i.ht = load ptr, ptr %i.f, align 8
  %i.hu = getelementptr i8, ptr %i.ht, i64 184
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = and i64 %i.hv, 1
  %.not503 = icmp eq i64 %i.hw, 0
  br i1 %.not503, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au, %ip6_append_data_mtu.exit
  br i1 %.2434, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hx = add i32 %i.hr, %i.ho
  %i.hy = icmp ult i32 %i.hx, 16064
  br i1 %i.hy, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hz = load ptr, ptr %i.f, align 8
  %i.ia = getelementptr i8, ptr %i.hz, i64 184
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = and i64 %i.ib, 1
  %.not504 = icmp eq i64 %i.ic, 0
  br i1 %.not504, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.id = add i32 %.1403, %i.aw
  %i.ie = add i32 %i.id, %.0437600
  %i.if = add i32 %.0437600, %.1403
  %i.ig = sub i32 %.0438, %i.if
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay
  %.0436 = phi i32 [ %i.ie, %bb.ay ], [ %i.ho, %bb.aw ], [ %i.ho, %bb.ax ], [ %.2580, %bb.au ]
  %.0435 = phi i32 [ %i.ig, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.au ] ; 2 uses
  %i.ih = add i32 %.0436, %i.hr                   ; 2 uses
  %i.ii = zext i32 %.0438 to i64
  %.not505 = icmp eq i64 %i.he, %i.ii
  %i.ij = select i1 %.not505, i32 0, i32 %i.hl
  %spec.select641 = add i32 %i.ij, %.0438         ; 3 uses
  %i.ik = add i32 %spec.select641, %i.aw
  %i.il = add i32 %.0437600, %.1403
  %i.im = add i32 %i.il, %.0435                   ; 2 uses
  %i.in = sub i32 %spec.select641, %i.im          ; 4 uses
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 -22, ptr %i.a, align 4
  br label %.thread625

bb.bb:                                            ; preds = %bb.az
  %.not506 = icmp eq i32 %.1403, 0
  br i1 %.not506, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ip = getelementptr i8, ptr %0, i64 372
  %i.iq = load volatile i32, ptr %i.ip, align 4
  %i.ir = add i32 %i.iq, %.1445
  %i.is = getelementptr i8, ptr %0, i64 568
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = shl i32 %i.it, 1
  %.not507 = icmp ugt i32 %i.ir, %i.iu
  br i1 %.not507, label %.thread615.a, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iv = getelementptr i8, ptr %0, i64 560
  %i.iw = load i32, ptr %i.iv, align 8
  %i.ix = call ptr @__alloc_skb(i32 noundef %i.ih, i32 noundef %i.iw, i32 noundef 0, i32 noundef -1) #11 ; 2 uses
  %.not508 = icmp eq ptr %i.ix, null
  br i1 %.not508, label %.thread615.a, label %.thread618, !prof !69

.thread615.a:                                     ; preds = %bb.bd, %bb.bc
  store i32 -105, ptr %i.a, align 4
  br label %.thread625

bb.be:                                            ; preds = %bb.bb
  %i.iy = zext i32 %i.ih to i64
  %i.iz = and i32 %.0404, 64
  %i.ja = call ptr @sock_alloc_send_pskb(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %i.iy, i64 noundef 0, i32 noundef range(i32 0, 65) %i.iz, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 2 uses
  %.not509 = icmp eq ptr %i.ja, null
  br i1 %.not509, label %.thread625, label %.thread618

.thread618:                                       ; preds = %bb.bd, %bb.be
  %.3621 = phi ptr [ %i.ja, %bb.be ], [ %i.ix, %bb.bd ] ; 21 uses
  %i.jb = getelementptr i8, ptr %.3621, i64 128   ; 4 uses
  %i.jc = getelementptr i8, ptr %.3621, i64 180
  store i16 -8826, ptr %i.jc, align 4
  %i.jd = load i8, ptr %i.jb, align 8
  %i.je = and i8 %i.jd, -97
  %i.jf = or disjoint i8 %i.je, %.0442
  store i8 %i.jf, ptr %i.jb, align 8
  %i.jg = getelementptr i8, ptr %.3621, i64 140   ; 2 uses
  store i32 0, ptr %i.jg, align 4
  %i.jh = getelementptr i8, ptr %.3621, i64 208   ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = sext i32 %i.hq to i64
  %i.jk = getelementptr i8, ptr %i.ji, i64 %i.jj
  store ptr %i.jk, ptr %i.jh, align 8
  %i.jl = getelementptr i8, ptr %.3621, i64 188   ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = add i32 %i.jm, %i.hq
  store i32 %i.jn, ptr %i.jl, align 4
  %i.jo = sub i32 %i.ik, %.0435
  %i.jp = call ptr @skb_put(ptr noundef nonnull %.3621, i32 noundef %i.jo) #11
  %i.jq = load ptr, ptr %i.jh, align 8
  %i.jr = getelementptr i8, ptr %.3621, i64 200   ; 6 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = trunc i64 %i.jv to i16
  %i.jx = getelementptr i8, ptr %.3621, i64 184
  %i.jy = add i16 %.2416, %i.jw                   ; 2 uses
  store i16 %i.jy, ptr %i.jx, align 8
  %i.jz = zext nneg i32 %i.aw to i64
  %i.ka = getelementptr i8, ptr %i.jp, i64 %i.jz  ; 3 uses
  %i.kb = trunc i32 %i.aw to i16
  %i.kc = add i16 %i.jy, %i.kb
  %i.kd = getelementptr i8, ptr %.3621, i64 182
  store i16 %i.kc, ptr %i.kd, align 2
  %.not510 = icmp eq i32 %.0437600, 0
  br i1 %.not510, label %pskb_trim_unique.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread618
  %i.ke = sext i32 %.1403 to i64
  %i.kf = getelementptr i8, ptr %i.ka, i64 %i.ke
  %i.kg = call i32 @skb_copy_and_csum_bits(ptr noundef %.1406, i32 noundef %.2584, ptr noundef %i.kf, i32 noundef %.0437600) #11 ; 2 uses
  store i32 %i.kg, ptr %i.jg, align 4
  %i.kh = getelementptr i8, ptr %.1406, i64 140   ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = xor i32 %i.kg, -1
  %i.kk = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.ki, i32 %i.kj) #16, !srcloc !110
  store i32 %i.kk, ptr %i.kh, align 4
  %i.kl = getelementptr i8, ptr %i.ka, i64 %i.hd  ; 3 uses
  %i.km = getelementptr i8, ptr %.1406, i64 112   ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = icmp ult i32 %.2584, %i.kn
  br i1 %i.ko, label %bb.bg, label %pskb_trim_unique.exit

bb.bg:                                            ; preds = %bb.bf
  %i.kp = getelementptr i8, ptr %.1406, i64 116
  %i.kq = load i32, ptr %i.kp, align 4
  %.not.i.i553 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i553, label %__skb_trim.exit.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i:                              ; preds = %bb.bg
  store i32 %.2584, ptr %i.km, align 8
  %i.kr = getelementptr i8, ptr %.1406, i64 208
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr i8, ptr %.1406, i64 200
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = getelementptr i8, ptr %.1406, i64 188
  %i.la = add i32 %.2584, %i.ky
  store i32 %i.la, ptr %i.kz, align 4
  br label %pskb_trim_unique.exit

pskb_trim.exit.i:                                 ; preds = %bb.bg
  %i.lb = call i32 @___pskb_trim(ptr noundef %.1406, i32 noundef %.2584) #11
  %.not.i554 = icmp eq i32 %i.lb, 0
  br i1 %.not.i554, label %pskb_trim_unique.exit, label %bb.bh, !prof !111

bb.bh:                                            ; preds = %pskb_trim.exit.i
  call void asm sideeffect "588: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 588b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 588) #12, !srcloc !112
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 3364, i32 0, i64 16) #12, !srcloc !113
  unreachable

pskb_trim_unique.exit:                            ; preds = %pskb_trim.exit.i, %__skb_trim.exit.i.i, %bb.bf, %.thread618
  %.0440 = phi ptr [ %i.ka, %.thread618 ], [ %i.kl, %bb.bf ], [ %i.kl, %__skb_trim.exit.i.i ], [ %i.kl, %pskb_trim.exit.i ]
  %.not511 = icmp eq i32 %spec.select641, %i.im
  br i1 %.not511, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %pskb_trim_unique.exit
  %i.lc = icmp eq ptr %4, @ip_generic_getfrag
  %i.ld = sext i32 %.1403 to i64
  %i.le = getelementptr i8, ptr %.0440, i64 %i.ld ; 2 uses
  br i1 %i.lc, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %bb.bi
  %i.lf = call i32 @ip_generic_getfrag(ptr noundef %5, ptr noundef %i.le, i32 noundef %.1425, i32 noundef %i.in, i32 noundef %.0437600, ptr noundef nonnull %.3621) #11
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.lg = call i32 %4(ptr noundef %5, ptr noundef %i.le, i32 noundef %.1425, i32 noundef %i.in, i32 noundef %.0437600, ptr noundef nonnull %.3621) #11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lh = phi i32 [ %i.lf, %bb.bj ], [ %i.lg, %bb.bk ]
  %i.li = icmp slt i32 %i.lh, 0
  br i1 %i.li, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 -14, ptr %i.a, align 4
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %.3621, i32 noundef 2) #11
  br label %.thread625

bb.bn:                                            ; preds = %bb.bl, %pskb_trim_unique.exit
  %i.lj = and i32 %.0404, 134217728
  %.not512 = icmp eq i32 %i.lj, 0
  %spec.select519 = select i1 %.not512, i32 %i.in, i32 0 ; 2 uses
  %i.lk = add i32 %spec.select519, %.1425
  %i.ll = add i32 %spec.select519, %.1403
  %i.lm = sext i32 %i.ll to i64
  %i.ln = sub i64 %.1400, %i.lm
  %i.lo = load i8, ptr %i.ez, align 8
  %i.lp = getelementptr i8, ptr %.3621, i64 192   ; 5 uses
  %.3.val535 = load i32, ptr %i.lp, align 8
  %.3.val536 = load ptr, ptr %i.jr, align 8
  %i.lq = zext i32 %.3.val535 to i64
  %i.lr = getelementptr i8, ptr %.3.val536, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 3
  store i8 %i.lo, ptr %i.ls, align 1
  store i8 0, ptr %i.ez, align 8
  %.3.val = load i32, ptr %i.lp, align 8
  %.3.val534 = load ptr, ptr %i.jr, align 8
  %i.lt = zext i32 %.3.val to i64
  %i.lu = getelementptr i8, ptr %.3.val534, i64 %i.lt
  %i.lv = getelementptr i8, ptr %i.lu, i64 28
  store i32 %.2431, ptr %i.lv, align 4
  %.not647 = icmp eq ptr %.2412, null
  br i1 %.not647, label %skb_zcopy_set.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val4.i.i = load i32, ptr %i.lp, align 8
  %.val5.i.i = load ptr, ptr %i.jr, align 8
  %i.lw = zext i32 %.val4.i.i to i64
  %i.lx = getelementptr i8, ptr %.val5.i.i, i64 %i.lw ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 8
  %i.lz = trunc i8 %i.ly to i1
  br i1 %i.lz, label %skb_zcopy.exit.i, label %skb_zcopy.exit.thread.i

skb_zcopy.exit.i:                                 ; preds = %bb.bo
  %i.ma = getelementptr i8, ptr %i.lx, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8
  %.not.i556 = icmp eq ptr %i.mb, null
  br i1 %.not.i556, label %skb_zcopy.exit.thread.i, label %skb_zcopy_set.exit

skb_zcopy.exit.thread.i:                          ; preds = %skb_zcopy.exit.i, %bb.bo
  %i.mc = load i8, ptr %i.b, align 1, !range !98, !noundef !99
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.bp, label %.critedge.i, !prof !10

bb.bp:                                            ; preds = %skb_zcopy.exit.thread.i
  store i8 0, ptr %i.b, align 1
  br label %net_zcopy_get.exit.i

.critedge.i:                                      ; preds = %skb_zcopy.exit.thread.i
  %i.me = getelementptr i8, ptr %.2412, i64 8     ; 3 uses
  %i.mf = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.me, i32 1, ptr elementtype(i32) %i.me) #12, !srcloc !73 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.bq, !prof !10

bb.bq:                                            ; preds = %.critedge.i
  %i.mg = add i32 %i.mf, 1
  %i.mh = or i32 %i.mg, %i.mf
  %.not10.i.i.i.i.i = icmp sgt i32 %i.mh, -1
  br i1 %.not10.i.i.i.i.i, label %net_zcopy_get.exit.i, label %.sink.split.i.i.i.i.i, !prof !11

.sink.split.i.i.i.i.i:                            ; preds = %bb.bq, %.critedge.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %.critedge.i ], [ 1, %bb.bq ]
  call void @refcount_warn_saturate(ptr noundef %i.me, i32 noundef %.sink.i.i.i.i.i) #11
  br label %net_zcopy_get.exit.i

net_zcopy_get.exit.i:                             ; preds = %.sink.split.i.i.i.i.i, %bb.bq, %bb.bp
  %.val5.i13.i = load i32, ptr %i.lp, align 8
  %.val6.i.i = load ptr, ptr %i.jr, align 8
  %i.mi = zext i32 %.val5.i13.i to i64
  %i.mj = getelementptr i8, ptr %.val6.i.i, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 40
  store ptr %.2412, ptr %i.mk, align 8
  %i.ml = getelementptr i8, ptr %.2412, i64 12
  %i.mm = load i8, ptr %i.ml, align 4
  %.val.i.i = load i32, ptr %i.lp, align 8
  %.val4.i14.i = load ptr, ptr %i.jr, align 8
  %i.mn = zext i32 %.val.i.i to i64
  %i.mo = getelementptr i8, ptr %.val4.i14.i, i64 %i.mn ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 8
  %i.mq = or i8 %i.mp, %i.mm
  store i8 %i.mq, ptr %i.mo, align 8
  br label %skb_zcopy_set.exit

skb_zcopy_set.exit:                               ; preds = %bb.bn, %skb_zcopy.exit.i, %net_zcopy_get.exit.i
  %i.mr = and i32 %.0404, 2048
  %i.ms = icmp eq i32 %i.mr, 0
  %or.cond16 = or i1 %i.ms, %i.gn
  br i1 %or.cond16, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %skb_zcopy_set.exit
  %i.mt = load i8, ptr %i.jb, align 8
  %i.mu = or i8 %i.mt, 16
  store i8 %i.mu, ptr %i.jb, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %skb_zcopy_set.exit
  %i.mv = getelementptr i8, ptr %.3621, i64 96    ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8
  %.not513 = icmp eq ptr %i.mw, null
  br i1 %.not513, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store ptr @sock_wfree, ptr %i.mv, align 8
  %i.mx = getelementptr i8, ptr %.3621, i64 24
  store ptr %0, ptr %i.mx, align 8
  %i.my = getelementptr i8, ptr %.3621, i64 216
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = add i32 %i.mz, %.1445
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2446 = phi i32 [ %.1445, %bb.bs ], [ %i.na, %bb.bt ]
  %i.nb = load ptr, ptr %i.h, align 8             ; 2 uses
  store volatile ptr %1, ptr %.3621, align 8
  %i.nc = getelementptr i8, ptr %.3621, i64 8
  store volatile ptr %i.nb, ptr %i.nc, align 8
  store volatile ptr %.3621, ptr %i.h, align 8
  store volatile ptr %.3621, ptr %i.nb, align 8
  %i.nd = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8
  %i.nf = add i32 %i.ne, 1
  store volatile i32 %i.nf, ptr %i.nd, align 8
  br label %.preheader, !llvm.loop !114

bb.bv:                                            ; preds = %bb.ap
  %i.ng = zext nneg i32 %spec.select518 to i64
  %spec.select520648 = call i64 @llvm.umin.i64(i64 %.0399678, i64 %i.ng) ; 4 uses
  %spec.select520 = trunc nuw nsw i64 %spec.select520648 to i32 ; 7 uses
  %i.nh = load ptr, ptr %i.f, align 8
  %i.ni = getelementptr i8, ptr %i.nh, i64 184
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = and i64 %i.nj, 1
  %.not497 = icmp eq i64 %i.nk, 0
  br i1 %.not497, label %bb.bw, label %.critedge650

bb.bw:                                            ; preds = %bb.bv
  %.val.i = load i32, ptr %i.fp, align 4
  %.not.i557 = icmp eq i32 %.val.i, 0
  br i1 %.not.i557, label %skb_tailroom.exit, label %.critedge650

skb_tailroom.exit:                                ; preds = %bb.bw
  %i.nl = load i32, ptr %i.fq, align 8
  %i.nm = load i32, ptr %i.fr, align 4
  %i.nn = sub i32 %i.nl, %i.nm
  %i.no = icmp slt i32 %i.nn, %spec.select520
  br i1 %i.no, label %.critedge650, label %bb.bx

bb.bx:                                            ; preds = %skb_tailroom.exit
  %i.np = call ptr @skb_put(ptr noundef nonnull %.0405.ph, i32 noundef %spec.select520) #11 ; 2 uses
  br i1 %i.fs, label %bb.by, label %bb.bz, !prof !11

bb.by:                                            ; preds = %bb.bx
  %i.nq = call i32 @ip_generic_getfrag(ptr noundef %5, ptr noundef %i.np, i32 noundef %.0424676, i32 noundef %spec.select520, i32 noundef %i.gg, ptr noundef nonnull %.0405.ph) #11
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.nr = call i32 %4(ptr noundef %5, ptr noundef %i.np, i32 noundef %.0424676, i32 noundef %spec.select520, i32 noundef %i.gg, ptr noundef nonnull %.0405.ph) #11
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ns = phi i32 [ %i.nq, %bb.by ], [ %i.nr, %bb.bz ]
  %i.nt = icmp slt i32 %i.ns, 0
  br i1 %i.nt, label %bb.cb, label %.thread622.a

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @__skb_trim(ptr noundef nonnull %.0405.ph, i32 noundef %i.gg) #13, !srcloc !115
  store i32 -14, ptr %i.a, align 4
  br label %.thread625

.critedge650:                                     ; preds = %bb.bw, %skb_tailroom.exit, %bb.bv
  br i1 %.not499, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %.critedge650
  store i32 -5, ptr %i.a, align 4
  %i.nu = load i64, ptr %i.fu, align 8
  %i.nv = icmp ult i64 %i.nu, %spec.select520648
  br i1 %i.nv, label %bb.cd, label %.critedge, !prof !10

bb.cd:                                            ; preds = %bb.cc
  call void asm sideeffect "1303: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1303b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1303) #12, !srcloc !116
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1789, i32 2307, i64 16) #12, !srcloc !117
  call void asm sideeffect "1304: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1304b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1304) #12, !srcloc !118
  br label %.thread625

.critedge:                                        ; preds = %bb.cc
  %i.nw = call i64 @skb_splice_from_iter(ptr noundef nonnull %.0405.ph, ptr noundef %i.fv, i64 noundef %spec.select520648) #11
  %i.nx = trunc i64 %i.nw to i32                  ; 4 uses
  store i32 %i.nx, ptr %i.a, align 4
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %.thread625, label %bb.ce

bb.ce:                                            ; preds = %.critedge
  br i1 %.not500, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %.0405.val532 = load i32, ptr %i.fq, align 8
  %.0405.val533 = load ptr, ptr %i.fx, align 8
  %i.nz = zext i32 %.0405.val532 to i64
  %i.oa = getelementptr i8, ptr %.0405.val533, i64 %i.nz ; 2 uses
  %i.ob = load i8, ptr %i.oa, align 8
  %i.oc = or i8 %i.ob, 2
  store i8 %i.oc, ptr %i.oa, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.od = add i32 %.0444675, %i.nx
  br label %.thread622.a

bb.ch:                                            ; preds = %.critedge650
  br i1 %.2428, label %bb.cu, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.0405.val530 = load i32, ptr %i.fq, align 8
  %.0405.val531 = load ptr, ptr %i.fx, align 8
  %i.oe = zext i32 %.0405.val530 to i64
  %i.of = getelementptr i8, ptr %.0405.val531, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 2
  %i.oh = load i8, ptr %i.og, align 2             ; 5 uses
  %i.oi = zext i8 %i.oh to i32                    ; 2 uses
  store i32 -12, ptr %i.a, align 4
  %i.oj = call zeroext i1 @sk_page_frag_refill(ptr noundef %0, ptr noundef %3) #11
  br i1 %i.oj, label %bb.cj, label %.thread625

bb.cj:                                            ; preds = %bb.ci
  %.val.i558 = load i32, ptr %i.fq, align 8
  %.val2.i = load ptr, ptr %i.fx, align 8         ; 2 uses
  %i.ok = zext i32 %.val.i558 to i64              ; 2 uses
  %i.ol = getelementptr i8, ptr %.val2.i, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 8             ; 2 uses
  %i.on = and i8 %i.om, 16
  %.not.i559 = icmp eq i8 %i.on, 0
  br i1 %.not.i559, label %skb_zcopy_downgrade_managed.exit, label %bb.ck, !prof !11

bb.ck:                                            ; preds = %bb.cj
  call void @__skb_zcopy_downgrade_managed(ptr noundef nonnull %.0405.ph) #11
  %.0405.val537.pre = load i32, ptr %i.fq, align 8
  %.0405.val538.pre = load ptr, ptr %i.fx, align 8 ; 2 uses
  %.phi.trans.insert701 = zext i32 %.0405.val537.pre to i64 ; 2 uses
  %.phi.trans.insert702 = getelementptr i8, ptr %.0405.val538.pre, i64 %.phi.trans.insert701
  %.pre703 = load i8, ptr %.phi.trans.insert702, align 8
  br label %skb_zcopy_downgrade_managed.exit

skb_zcopy_downgrade_managed.exit:                 ; preds = %bb.cj, %bb.ck
  %.pre-phi706 = phi i64 [ %i.ok, %bb.cj ], [ %.phi.trans.insert701, %bb.ck ]
  %i.oo = phi i8 [ %i.om, %bb.cj ], [ %.pre703, %bb.ck ]
  %.0405.val538 = phi ptr [ %.val2.i, %bb.cj ], [ %.0405.val538.pre, %bb.ck ] ; 2 uses
  %i.op = load ptr, ptr %3, align 8               ; 2 uses
  %i.oq = load i32, ptr %i.fy, align 8            ; 3 uses
  %i.or = ptrtoint ptr %i.op to i64               ; 4 uses
  %i.os = getelementptr i8, ptr %.0405.val538, i64 %.pre-phi706 ; 2 uses
  %i.ot = trunc i8 %i.oo to i1
  br i1 %i.ot, label %bb.cl, label %skb_zcopy.exit.i.i

bb.cl:                                            ; preds = %skb_zcopy_downgrade_managed.exit
  %i.ou = getelementptr i8, ptr %i.os, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = icmp ne ptr %i.ov, null
  br label %skb_zcopy.exit.i.i

skb_zcopy.exit.i.i:                               ; preds = %bb.cl, %skb_zcopy_downgrade_managed.exit
  %.not.i.i560 = phi i1 [ %i.ow, %bb.cl ], [ false, %skb_zcopy_downgrade_managed.exit ]
  %.not10.i.i = icmp eq i8 %i.oh, 0
  %or.cond.i.i = or i1 %.not10.i.i, %.not.i.i560
  br i1 %or.cond.i.i, label %skb_can_coalesce.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %skb_zcopy.exit.i.i
  %i.ox = zext i8 %i.oh to i64
  %i.oy = getelementptr [16 x i8], ptr %i.os, i64 %i.ox ; 3 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 32
  %.val13.i.i = load i64, ptr %i.oz, align 8
  %i.pa = icmp eq i64 %.val13.i.i, %i.or
  br i1 %i.pa, label %skb_can_coalesce.exit, label %skb_can_coalesce.exit.thread

skb_can_coalesce.exit:                            ; preds = %bb.cm
  %i.pb = getelementptr i8, ptr %i.oy, i64 44
  %.val14.i.i = load i32, ptr %i.pb, align 4
  %i.pc = getelementptr i8, ptr %i.oy, i64 40
  %.val12.i.i = load i32, ptr %i.pc, align 8
  %i.pd = add i32 %.val12.i.i, %.val14.i.i
  %i.pe = icmp eq i32 %i.oq, %i.pd
  br i1 %i.pe, label %bb.cq, label %skb_can_coalesce.exit.thread

skb_can_coalesce.exit.thread:                     ; preds = %bb.cm, %skb_zcopy.exit.i.i, %skb_can_coalesce.exit
  store i32 -90, ptr %i.a, align 4
  %i.pf = icmp eq i8 %i.oh, 17
  br i1 %i.pf, label %.thread625, label %bb.cn

bb.cn:                                            ; preds = %skb_can_coalesce.exit.thread
  %.0405.val = load i32, ptr %i.fq, align 8
  %i.pg = zext i32 %.0405.val to i64
  %i.ph = getelementptr i8, ptr %.0405.val538, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 48
  %i.pj = zext i8 %i.oh to i64
  %i.pk = getelementptr [16 x i8], ptr %i.pi, i64 %i.pj ; 3 uses
  store i64 %i.or, ptr %i.pk, align 8
  %i.pl = getelementptr i8, ptr %i.pk, i64 12
  store i32 %i.oq, ptr %i.pl, align 4
  %i.pm = getelementptr i8, ptr %i.pk, i64 8
  store i32 0, ptr %i.pm, align 8
  %i.pn = trunc i64 %i.or to i1
  br i1 %i.pn, label %bb.co, label %netmem_to_page.exit

bb.co:                                            ; preds = %bb.cn
  %i.po = load i32, ptr %i.ga, align 1
  %i.pp = or i32 %i.po, 4194304
  store i32 %i.pp, ptr %i.ga, align 1
  br label %__skb_fill_netmem_desc.exit

netmem_to_page.exit:                              ; preds = %bb.cn
  %i.pq = getelementptr i8, ptr %i.op, i64 8
  %i.pr = load volatile i64, ptr %i.pq, align 8   ; 2 uses
  %i.ps = and i64 %i.pr, 1
  %i.pt = add nsw i64 %i.ps, -1
  %i.pu = or i64 %i.pt, %i.pr
  %i.pv = and i64 %i.pu, %i.or
  %i.pw = inttoptr i64 %i.pv to ptr
  %i.px = getelementptr i8, ptr %i.pw, i64 8
  %.val539 = load ptr, ptr %i.px, align 8
  %i.py = ptrtoint ptr %.val539 to i64
  %i.pz = and i64 %i.py, 2
  %.not649 = icmp eq i64 %i.pz, 0
  br i1 %.not649, label %__skb_fill_netmem_desc.exit, label %bb.cp

bb.cp:                                            ; preds = %netmem_to_page.exit
  %i.qa = load i8, ptr %i.fz, align 2
  %i.qb = or i8 %i.qa, 64
  store i8 %i.qb, ptr %i.fz, align 2
  br label %__skb_fill_netmem_desc.exit

__skb_fill_netmem_desc.exit:                      ; preds = %bb.co, %netmem_to_page.exit, %bb.cp
  %i.qc = add nuw nsw i32 %i.oi, 1                ; 2 uses
  %i.qd = trunc i32 %i.qc to i8
  %.0405.val528 = load i32, ptr %i.fq, align 8
  %.0405.val529 = load ptr, ptr %i.fx, align 8
  %i.qe = zext i32 %.0405.val528 to i64
  %i.qf = getelementptr i8, ptr %.0405.val529, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.qf, i64 2
  store i8 %i.qd, ptr %i.qg, align 2
  %i.qh = load ptr, ptr %3, align 8
  call fastcc void @get_page(ptr noundef %i.qh) #13, !srcloc !119
  %.pre704 = load i32, ptr %i.fy, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %__skb_fill_netmem_desc.exit, %skb_can_coalesce.exit
  %i.qi = phi i32 [ %i.oq, %skb_can_coalesce.exit ], [ %.pre704, %__skb_fill_netmem_desc.exit ] ; 2 uses
  %.0413 = phi i32 [ %i.oi, %skb_can_coalesce.exit ], [ %i.qc, %__skb_fill_netmem_desc.exit ]
  %i.qj = load i32, ptr %i.gb, align 4
  %i.qk = sub i32 %i.qj, %i.qi
  %i.ql = call i32 @llvm.smin.i32(i32 %spec.select520, i32 %i.qk) ; 9 uses
  %i.qm = load ptr, ptr %3, align 8
  %i.qn = load i64, ptr @vmemmap_base, align 8
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qo, %i.qn
  %i.qq = shl i64 %i.qp, 6
  %i.qr = load i64, ptr @page_offset_base, align 8
  %i.qs = add i64 %i.qq, %i.qr
  %i.qt = inttoptr i64 %i.qs to ptr
  %i.qu = zext i32 %i.qi to i64
  %i.qv = getelementptr i8, ptr %i.qt, i64 %i.qu  ; 2 uses
  %i.qw = load i32, ptr %i.fo, align 8            ; 2 uses
  br i1 %i.fs, label %bb.cr, label %bb.cs, !prof !11

bb.cr:                                            ; preds = %bb.cq
  %i.qx = call i32 @ip_generic_getfrag(ptr noundef %5, ptr noundef %i.qv, i32 noundef %.0424676, i32 noundef %i.ql, i32 noundef %i.qw, ptr noundef nonnull %.0405.ph) #11
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.qy = call i32 %4(ptr noundef %5, ptr noundef %i.qv, i32 noundef %.0424676, i32 noundef %i.ql, i32 noundef %i.qw, ptr noundef nonnull %.0405.ph) #11
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.qz = phi i32 [ %i.qx, %bb.cr ], [ %i.qy, %bb.cs ]
  %i.ra = icmp slt i32 %i.qz, 0
  br i1 %i.ra, label %bb.cw, label %.thread635

.thread635:                                       ; preds = %bb.ct
  %i.rb = load i32, ptr %i.fy, align 8
  %i.rc = add i32 %i.rb, %i.ql
  store i32 %i.rc, ptr %i.fy, align 8
  %.0405.val526 = load i32, ptr %i.fq, align 8
  %.0405.val527 = load ptr, ptr %i.fx, align 8
  %i.rd = zext i32 %.0405.val526 to i64
  %i.re = getelementptr i8, ptr %.0405.val527, i64 %i.rd
  %i.rf = zext nneg i32 %.0413 to i64
  %i.rg = getelementptr [16 x i8], ptr %i.re, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 40     ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 8
  %i.rj = add i32 %i.ri, %i.ql
  store i32 %i.rj, ptr %i.rh, align 8
  %i.rk = load i32, ptr %i.fo, align 8
  %i.rl = add i32 %i.rk, %i.ql
  store i32 %i.rl, ptr %i.fo, align 8
  %i.rm = load i32, ptr %i.fp, align 4
  %i.rn = add i32 %i.rm, %i.ql
  store i32 %i.rn, ptr %i.fp, align 4
  %i.ro = load i32, ptr %i.gc, align 8
  %i.rp = add i32 %i.ro, %i.ql
  store i32 %i.rp, ptr %i.gc, align 8
  %i.rq = add i32 %i.ql, %.0444675
  br label %.thread622.a

bb.cu:                                            ; preds = %bb.ch
  %i.rr = load ptr, ptr %i.gd, align 8
  %i.rs = call i32 @__zerocopy_sg_from_iter(ptr noundef %5, ptr noundef %i.rr, ptr noundef nonnull %.0405.ph, ptr noundef %i.fv, i64 noundef %spec.select520648, ptr noundef null) #11 ; 2 uses
  store i32 %i.rs, ptr %i.a, align 4
  %i.rt = icmp slt i32 %i.rs, 0
  br i1 %i.rt, label %.thread625, label %.thread622.a

.thread622.a:                                     ; preds = %bb.ca, %.thread635, %bb.cg, %bb.cu
  %.5449 = phi i32 [ %i.od, %bb.cg ], [ %.0444675, %bb.cu ], [ %i.rq, %.thread635 ], [ %.0444675, %bb.ca ] ; 2 uses
  %.5 = phi i32 [ %i.nx, %bb.cg ], [ %spec.select520, %bb.cu ], [ %i.ql, %.thread635 ], [ %spec.select520, %bb.ca ] ; 2 uses
  %i.ru = add i32 %.5, %.0424676
  %i.rv = sext i32 %.5 to i64
  %i.rw = sub i64 %.0399678, %i.rv                ; 2 uses
  %.not494 = icmp eq i64 %i.rw, 0
  br i1 %.not494, label %._crit_edge, label %bb.ap, !llvm.loop !114

._crit_edge:                                      ; preds = %.thread622.a, %.preheader
  %.0444.lcssa = phi i32 [ %.0444.ph, %.preheader ], [ %.5449, %.thread622.a ] ; 2 uses
  %.not495 = icmp eq i32 %.0444.lcssa, 0
  br i1 %.not495, label %skb_zcopy.exit543.thread, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  %i.rx = getelementptr i8, ptr %0, i64 372
  call fastcc void @refcount_add(i32 noundef %.0444.lcssa, ptr noundef %i.rx) #13, !srcloc !120
  br label %skb_zcopy.exit543.thread

bb.cw:                                            ; preds = %bb.ct
  store i32 -14, ptr %i.a, align 4
  br label %.thread625

.thread625:                                       ; preds = %bb.ci, %skb_can_coalesce.exit.thread, %.critedge, %bb.cu, %bb.cd, %bb.cb, %.thread615.a, %bb.be, %bb.cw, %bb.bm, %bb.ba
  %.6 = phi i32 [ %.1445, %bb.ba ], [ %.1445, %bb.bm ], [ %.1445, %bb.be ], [ %.1445, %.thread615.a ], [ %.0444675, %bb.cb ], [ %.0444675, %bb.cw ], [ %.0444675, %bb.cd ], [ %.0444675, %bb.cu ], [ %.0444675, %.critedge ], [ %.0444675, %skb_can_coalesce.exit.thread ], [ %.0444675, %bb.ci ] ; 2 uses
  %.2401 = phi i64 [ %.1400, %bb.ba ], [ %.1400, %bb.bm ], [ %.1400, %bb.be ], [ %.1400, %.thread615.a ], [ %.0399678, %bb.cb ], [ %.0399678, %bb.cw ], [ %.0399678, %bb.cd ], [ %.0399678, %bb.cu ], [ %.0399678, %.critedge ], [ %.0399678, %skb_can_coalesce.exit.thread ], [ %.0399678, %bb.ci ]
  %9 = load i8, ptr %i.b, align 1, !range !98, !noundef !99
  %10 = trunc nuw i8 %9 to i1                     ; 2 uses
  %.not.i562 = icmp eq ptr %.2412, null
  br i1 %.not.i562, label %net_zcopy_put_abort.exit, label %11

11:                                               ; preds = %.thread625
  %12 = load ptr, ptr %.2412, align 8             ; 2 uses
  %13 = icmp eq ptr %12, @msg_zerocopy_ubuf_ops
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %.2412, i1 noundef zeroext %10) #11
  br label %net_zcopy_put_abort.exit

15:                                               ; preds = %11
  br i1 %10, label %16, label %net_zcopy_put_abort.exit

16:                                               ; preds = %15
  %17 = load ptr, ptr %12, align 8
  call void %17(ptr noundef null, ptr noundef nonnull %.2412, i1 noundef zeroext true) #11, !inline_history !121
  br label %net_zcopy_put_abort.exit

net_zcopy_put_abort.exit:                         ; preds = %.thread625, %14, %15, %16
  %i.ry = load i32, ptr %i.bg, align 4
  %i.rz = trunc i64 %.2401 to i32
  %i.sa = sub i32 %i.ry, %i.rz
  store i32 %i.sa, ptr %i.bg, align 4
  %i.sb = getelementptr i8, ptr %i.f, i64 208
  %i.sc = load ptr, ptr %i.sb, align 8            ; 2 uses
  %.not514 = icmp eq ptr %i.sc, null
  br i1 %.not514, label %bb.cy, label %bb.cx, !prof !10

bb.cx:                                            ; preds = %net_zcopy_put_abort.exit
  %i.sd = getelementptr i8, ptr %i.sc, i64 912
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = getelementptr i8, ptr %i.se, i64 152    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sf, ptr elementtype(i64) %i.sf) #12, !srcloc !122
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %net_zcopy_put_abort.exit
  %i.sg = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.sg, align 8
  %i.sh = getelementptr i8, ptr %.val, i64 728
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = getelementptr i8, ptr %i.si, i64 152    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sj, ptr elementtype(i64) %i.sj) #12, !srcloc !123
  %i.sk = getelementptr i8, ptr %0, i64 372       ; 3 uses
  %18 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.sk, i32 %.6, ptr elementtype(i32) %i.sk) #12, !srcloc !73 ; 3 uses
  %.not.i.i563 = icmp eq i32 %18, 0
  br i1 %.not.i.i563, label %.sink.split.i.i, label %19, !prof !10

19:                                               ; preds = %bb.cy
  %20 = add i32 %18, %.6
  %21 = or i32 %20, %18
  %.not10.i.i564 = icmp sgt i32 %21, -1
  br i1 %.not10.i.i564, label %refcount_add.exit, label %.sink.split.i.i, !prof !11

.sink.split.i.i:                                  ; preds = %19, %bb.cy
  %.sink.i.i = phi i32 [ 2, %bb.cy ], [ 1, %19 ]
  call void @refcount_warn_saturate(ptr noundef %i.sk, i32 noundef %.sink.i.i) #11
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %19, %.sink.split.i.i
  br i1 %.0441, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %refcount_add.exit
  %i.sl = getelementptr i8, ptr %0, i64 484       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.sl, ptr elementtype(i32) %i.sl) #12, !srcloc !124
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %refcount_add.exit
  %i.sm = load i32, ptr %i.a, align 4
  br label %skb_zcopy.exit543.thread

skb_zcopy.exit543.thread:                         ; preds = %skb_zcopy.exit, %skb_zcopy.exit547, %skb_zcopy.exit547.thread, %._crit_edge, %bb.cv, %bb.ai, %bb.da, %bb.q
  %.2 = phi i32 [ -90, %bb.q ], [ %i.sm, %bb.da ], [ -1, %bb.ai ], [ 0, %._crit_edge ], [ -105, %skb_zcopy.exit547.thread ], [ 0, %bb.cv ], [ -22, %skb_zcopy.exit ], [ -105, %skb_zcopy.exit547 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__ip6_make_skb(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.flow_keys, align 8          ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val118 = load ptr, ptr %i.b, align 8          ; 7 uses
  %i.c = getelementptr i8, ptr %2, i64 24         ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %2, i64 64
  %i.f = getelementptr i8, ptr %2, i64 82
  %i.g = load i8, ptr %i.f, align 2               ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 6 uses
  %i.i = icmp eq ptr %i.h, %1
  %spec.store.select.i.i = select i1 %i.i, ptr null, ptr %i.h ; 31 uses
  %.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %.not.i, label %ip6_cork_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !15
  %i.j = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, -1
  store volatile i32 %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %spec.store.select.i.i, align 8 ; 2 uses
  %i.n = getelementptr i8, ptr %spec.store.select.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store volatile ptr %i.o, ptr %i.p, align 8
  store volatile ptr %i.m, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %spec.store.select.i.i, i64 192
  %.val112 = load i32, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %spec.store.select.i.i, i64 200 ; 3 uses
  %.val113 = load ptr, ptr %i.r, align 8          ; 2 uses
  %i.s = zext i32 %.val112 to i64
  %i.t = getelementptr i8, ptr %.val113, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr i8, ptr %spec.store.select.i.i, i64 208 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr i8, ptr %spec.store.select.i.i, i64 184 ; 4 uses
  %.val114 = load i16, ptr %i.x, align 8
  %i.y = zext i16 %.val114 to i64
  %i.z = getelementptr i8, ptr %.val113, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %i.w, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr i8, ptr %spec.store.select.i.i, i64 112 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sub i32 %i.ag, %i.ae                    ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr i8, ptr %spec.store.select.i.i, i64 116
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.d, label %__skb_pull.exit110, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "584: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 584b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 584) #12, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2847, i32 0, i64 16) #12, !srcloc !63
  unreachable

__skb_pull.exit110:                               ; preds = %bb.c
  %i.al = and i64 %i.ad, 4294967295
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al
  store ptr %i.am, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %__skb_pull.exit110, %bb.b
  %i.an = load ptr, ptr %1, align 8               ; 3 uses
  %i.ao = icmp eq ptr %i.an, %1
  %.not.i126135136 = icmp eq ptr %i.an, null
  %.not.i126137 = or i1 %i.ao, %.not.i126135136
  br i1 %.not.i126137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %spec.store.select.i.i, i64 182
  %i.aq = getelementptr i8, ptr %spec.store.select.i.i, i64 112 ; 2 uses
  %i.ar = getelementptr i8, ptr %spec.store.select.i.i, i64 116 ; 2 uses
  %i.as = getelementptr i8, ptr %spec.store.select.i.i, i64 216 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %__skb_pull.exit109
  %i.at = phi ptr [ %i.an, %.lr.ph ], [ %i.bz, %__skb_pull.exit109 ] ; 11 uses
  %.0138 = phi ptr [ %i.u, %.lr.ph ], [ %i.at, %__skb_pull.exit109 ]
  %i.au = load i32, ptr %i.j, align 8
  %i.av = add i32 %i.au, -1
  store volatile i32 %i.av, ptr %i.j, align 8
  %i.aw = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store volatile ptr %i.ay, ptr %i.az, align 8
  store volatile ptr %i.aw, ptr %i.ay, align 8
  %.val121 = load i16, ptr %i.ap, align 2
  %.val122 = load i16, ptr %i.x, align 8
  %i.ba = zext i16 %.val121 to i32
  %i.bb = zext i16 %.val122 to i32
  %i.bc = sub nsw i32 %i.ba, %i.bb                ; 2 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 112    ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = sub i32 %i.be, %i.bc                    ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr i8, ptr %i.at, i64 116
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp ult i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %__skb_pull.exit109, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "584: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 584b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 584) #12, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2847, i32 0, i64 16) #12, !srcloc !63
  unreachable

__skb_pull.exit109:                               ; preds = %bb.f
  %i.bj = getelementptr i8, ptr %i.at, i64 208    ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = zext i32 %i.bc to i64
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  store ptr %i.bm, ptr %i.bj, align 8
  store ptr %i.at, ptr %.0138, align 8
  %i.bn = load i32, ptr %i.bd, align 8
  %i.bo = load i32, ptr %i.aq, align 8
  %i.bp = add i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.aq, align 8
  %i.bq = load i32, ptr %i.bd, align 8
  %i.br = load i32, ptr %i.ar, align 4
  %i.bs = add i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.ar, align 4
  %i.bt = getelementptr i8, ptr %i.at, i64 216
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = load i32, ptr %i.as, align 8
  %i.bw = add i32 %i.bv, %i.bu
  store i32 %i.bw, ptr %i.as, align 8
  %i.bx = getelementptr i8, ptr %i.at, i64 96
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %i.at, i64 24
  store ptr null, ptr %i.by, align 8
  %i.bz = load ptr, ptr %1, align 8               ; 3 uses
  %i.ca = icmp eq ptr %i.bz, %1
  %.not.i126135 = icmp eq ptr %i.bz, null
  %.not.i126 = or i1 %i.ca, %.not.i126135
  br i1 %.not.i126, label %._crit_edge, label %bb.f, !llvm.loop !125

._crit_edge:                                      ; preds = %__skb_pull.exit109, %bb.e
  %i.cb = getelementptr i8, ptr %0, i64 18
  %i.cc = load volatile i8, ptr %i.cb, align 2
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = and i32 %i.ce, -4161
  %.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i, label %ip6_sk_ignore_df.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cg = getelementptr i8, ptr %0, i64 776
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %ip6_sk_ignore_df.exit

ip6_sk_ignore_df.exit:                            ; preds = %._crit_edge, %bb.h
  %i.ci = phi ptr [ %i.ch, %bb.h ], [ null, %._crit_edge ]
  %i.cj = getelementptr i8, ptr %i.ci, i64 50
  %i.ck = load volatile i8, ptr %i.cj, align 2    ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 2
  %i.cm = icmp eq i8 %i.ck, 5
  %i.cn = or i1 %i.cl, %i.cm
  %i.co = getelementptr i8, ptr %spec.store.select.i.i, i64 128 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = select i1 %i.cn, i8 8, i8 0
  %i.cr = and i8 %i.cp, -9
  %i.cs = or disjoint i8 %i.cq, %i.cr
  store i8 %i.cs, ptr %i.co, align 8
  %i.ct = getelementptr i8, ptr %spec.store.select.i.i, i64 182 ; 2 uses
  %.val119 = load i16, ptr %i.ct, align 2
  %.val120 = load i16, ptr %i.x, align 8
  %i.cu = zext i16 %.val119 to i32
  %i.cv = zext i16 %.val120 to i32
  %i.cw = sub nsw i32 %i.cu, %i.cv                ; 2 uses
  %i.cx = getelementptr i8, ptr %spec.store.select.i.i, i64 112 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = sub i32 %i.cy, %i.cw                    ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8
  %i.da = getelementptr i8, ptr %spec.store.select.i.i, i64 116
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp ult i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.i, label %__skb_pull.exit, !prof !10

bb.i:                                             ; preds = %ip6_sk_ignore_df.exit
  tail call void asm sideeffect "584: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 584b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 584) #12, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2847, i32 0, i64 16) #12, !srcloc !63
  unreachable

__skb_pull.exit:                                  ; preds = %ip6_sk_ignore_df.exit
  %i.dd = load ptr, ptr %i.v, align 8
  %i.de = zext i32 %i.cw to i64
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de
  store ptr %i.df, ptr %i.v, align 8
  %i.dg = getelementptr i8, ptr %2, i64 104
  store ptr %i.dg, ptr %i.a, align 8
  %i.dh = getelementptr i8, ptr %2, i64 152       ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 5 uses
  %.not103 = icmp eq ptr %i.di, null
  br i1 %.not103, label %bb.n, label %bb.j, !prof !11

bb.j:                                             ; preds = %__skb_pull.exit
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load i16, ptr %i.dj, align 8
  %.not104 = icmp eq i16 %i.dk, 0
  br i1 %.not104, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = tail call zeroext i8 @ipv6_push_frag_opts(ptr noundef nonnull %i.h, ptr noundef nonnull %i.di, i8 noundef zeroext %i.g) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.095 = phi i8 [ %i.dl, %bb.k ], [ %i.g, %bb.j ] ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 10
  %i.dn = load i16, ptr %i.dm, align 2
  %.not105 = icmp eq i16 %i.dn, 0
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr i8, ptr %2, i64 120
  %i.dp = call zeroext i8 @ipv6_push_nfrag_opts(ptr noundef nonnull %i.h, ptr noundef nonnull %i.di, i8 noundef zeroext %.095, ptr noundef nonnull %i.a, ptr noundef %i.do) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %__skb_pull.exit
  %.1 = phi i8 [ %i.dp, %bb.m ], [ %.095, %bb.l ], [ %i.g, %__skb_pull.exit ] ; 2 uses
  %i.dq = call ptr @skb_push(ptr noundef nonnull %i.h, i32 noundef 40) #11 ; 0 uses
  %i.dr = load ptr, ptr %i.v, align 8
  %i.ds = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = trunc i64 %i.dv to i16
  store i16 %i.dw, ptr %i.x, align 8
  %i.dx = and i64 %i.dv, 65535
  %i.dy = getelementptr i8, ptr %i.ds, i64 %i.dx  ; 5 uses
  %i.dz = getelementptr i8, ptr %2, i64 161
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr i8, ptr %2, i64 136
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = getelementptr i8, ptr %0, i64 792       ; 2 uses
  %i.ef = load volatile i64, ptr %i.ee, align 8
  %i.eg = and i64 %i.ef, 8388608
  %.not36.i = icmp eq i64 %i.eg, 0
  br i1 %.not36.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eh = getelementptr i8, ptr %.val118, i64 2190
  %i.ei = load volatile i8, ptr %i.eh, align 2
  %i.ej = add i8 %i.ei, -1
  %switch.and.i.i = and i8 %i.ej, -3
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br label %ip6_autoflowlabel.exit

bb.p:                                             ; preds = %bb.n
  %i.ek = load volatile i64, ptr %i.ee, align 8
  %i.el = and i64 %i.ek, 16777216
  %i.em = icmp ne i64 %i.el, 0
  br label %ip6_autoflowlabel.exit

ip6_autoflowlabel.exit:                           ; preds = %bb.o, %bb.p
  %.0.i = phi i1 [ %switch.selectcmp.i.i, %bb.o ], [ %i.em, %bb.p ]
  %i.en = and i32 %i.ed, -61696                   ; 2 uses
  %.not22.i = icmp eq i32 %i.en, 0
  br i1 %.not22.i, label %bb.q, label %ip6_make_flowlabel.exit

bb.q:                                             ; preds = %ip6_autoflowlabel.exit
  %i.eo = getelementptr i8, ptr %.val118, i64 2190
  %i.ep = load volatile i8, ptr %i.eo, align 2    ; 2 uses
  %i.eq = icmp ne i8 %i.ep, 0
  %i.er = icmp eq i8 %i.ep, 3
  %or.cond.not.i = or i1 %.0.i, %i.er
  %or.cond.i = and i1 %i.eq, %or.cond.not.i
  br i1 %or.cond.i, label %bb.r, label %ip6_make_flowlabel.exit

bb.r:                                             ; preds = %bb.q
  %i.es = getelementptr i8, ptr %spec.store.select.i.i, i64 129 ; 3 uses
  %i.et = load i32, ptr %i.es, align 1
  %i.eu = and i32 %i.et, 1536
  %or.cond.i.i = icmp eq i32 %i.eu, 0
  br i1 %or.cond.i.i, label %bb.s, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.r
  %.phi.trans.insert.i.i = getelementptr i8, ptr %spec.store.select.i.i, i64 152
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %skb_get_hash_flowi6.exit.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !15
  %i.ev = call i32 @__get_hash_from_flowi6(ptr noundef %i.e, ptr noundef nonnull %3) #11 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val.i.i = load i32, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.val6.i.i = load i32, ptr %i.ex, align 4
  %.not.i.i.i = icmp ne i32 %.val6.i.i, 0
  %i.ey = icmp ne i32 %.val.i.i, 0
  %spec.select.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.ey
  %i.ez = load i32, ptr %i.es, align 1
  %i.fa = and i32 %i.ez, -1537
  %i.fb = select i1 %spec.select.i.i.i, i32 1536, i32 1024
  %i.fc = or disjoint i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.es, align 1
  %i.fd = getelementptr i8, ptr %spec.store.select.i.i, i64 152
  store i32 %i.ev, ptr %i.fd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %skb_get_hash_flowi6.exit.i

skb_get_hash_flowi6.exit.i:                       ; preds = %bb.s, %._crit_edge.i.i
  %i.fe = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ev, %bb.s ] ; 2 uses
  %i.ff = call noundef i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 16)
  %i.fg = and i32 %i.ff, -61696                   ; 2 uses
  %i.fh = getelementptr i8, ptr %.val118, i64 2191
  %i.fi = load volatile i8, ptr %i.fh, align 1
  %.not.i130 = icmp eq i8 %i.fi, 0
  %i.fj = or i32 %i.fg, 2048
  %spec.select.i = select i1 %.not.i130, i32 %i.fg, i32 %i.fj
  br label %ip6_make_flowlabel.exit

ip6_make_flowlabel.exit:                          ; preds = %ip6_autoflowlabel.exit, %bb.q, %skb_get_hash_flowi6.exit.i
  %.0.i129 = phi i32 [ %spec.select.i, %skb_get_hash_flowi6.exit.i ], [ %i.en, %ip6_autoflowlabel.exit ], [ 0, %bb.q ]
  %i.fk = shl nuw nsw i32 %i.eb, 20
  %i.fl = or disjoint i32 %i.fk, 1610612736
  %i.fm = call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = or i32 %.0.i129, %i.fm
  store i32 %i.fn, ptr %i.dy, align 4
  %i.fo = getelementptr i8, ptr %2, i64 160
  %i.fp = load i8, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.dy, i64 7
  store i8 %i.fp, ptr %i.fq, align 1
  %i.fr = getelementptr i8, ptr %i.dy, i64 6
  store i8 %.1, ptr %i.fr, align 2
  %i.fs = getelementptr i8, ptr %i.dy, i64 8
  %i.ft = getelementptr i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.fs, ptr noundef align 8 dereferenceable(16) %i.ft, i64 16, i1 false)
  %i.fu = getelementptr i8, ptr %i.dy, i64 24
  %i.fv = load ptr, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.fu, ptr noundef align 4 dereferenceable(16) %i.fv, i64 16, i1 false)
  %i.fw = getelementptr i8, ptr %2, i64 36
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = getelementptr i8, ptr %spec.store.select.i.i, i64 144
  store i32 %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr i8, ptr %2, i64 56
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = getelementptr i8, ptr %spec.store.select.i.i, i64 168
  store i32 %i.ga, ptr %i.gb, align 8
  %i.gc = getelementptr i8, ptr %0, i64 16
  %i.gd = load volatile i16, ptr %i.gc, align 8
  %i.ge = and i16 %i.gd, -9
  %i.gf = icmp eq i16 %i.ge, 2
  br i1 %i.gf, label %bb.t, label %sk_is_tcp.exit.thread

bb.t:                                             ; preds = %ip6_make_flowlabel.exit
  %i.gg = getelementptr i8, ptr %0, i64 534
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = icmp eq i16 %i.gh, 1
  br i1 %i.gi, label %sk_is_tcp.exit, label %sk_is_tcp.exit.thread

sk_is_tcp.exit:                                   ; preds = %bb.t
  %i.gj = getelementptr i8, ptr %0, i64 532
  %i.gk = load i16, ptr %i.gj, align 4
  %i.gl = icmp eq i16 %i.gk, 6
  br i1 %i.gl, label %skb_set_delivery_time.exit, label %sk_is_tcp.exit.thread

skb_set_delivery_time.exit:                       ; preds = %sk_is_tcp.exit
  %i.gm = getelementptr i8, ptr %2, i64 48
  %i.gn = load i64, ptr %i.gm, align 8            ; 2 uses
  %i.go = getelementptr i8, ptr %spec.store.select.i.i, i64 32
  store i64 %i.gn, ptr %i.go, align 8
  %.not.i131 = icmp ne i64 %i.gn, 0
  %i.gp = getelementptr i8, ptr %spec.store.select.i.i, i64 129 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 1
  %i.gr = and i32 %i.gq, -4
  %i.gs = zext i1 %.not.i131 to i32
  %.sink.i = or disjoint i32 %i.gr, %i.gs
  store i32 %.sink.i, ptr %i.gp, align 1
  br label %bb.z

sk_is_tcp.exit.thread:                            ; preds = %ip6_make_flowlabel.exit, %bb.t, %sk_is_tcp.exit
  %i.gt = getelementptr i8, ptr %2, i64 48
  %i.gu = load i64, ptr %i.gt, align 8            ; 2 uses
  %i.gv = getelementptr i8, ptr %0, i64 653
  %i.gw = load i8, ptr %i.gv, align 1
  switch i8 %i.gw, label %.thread.i [
    i8 0, label %bb.w
    i8 1, label %bb.u
    i8 11, label %bb.v
  ]

bb.u:                                             ; preds = %sk_is_tcp.exit.thread
  br label %bb.w

bb.v:                                             ; preds = %sk_is_tcp.exit.thread
  br label %bb.w

.thread.i:                                        ; preds = %sk_is_tcp.exit.thread
  call void asm sideeffect "597: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 597b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 597) #12, !srcloc !126
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 4484, i32 2307, i64 16) #12, !srcloc !127
  call void asm sideeffect "598: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 598b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 598) #12, !srcloc !128
  %i.gx = getelementptr i8, ptr %spec.store.select.i.i, i64 32
  store i64 0, ptr %i.gx, align 8
  %i.gy = getelementptr i8, ptr %spec.store.select.i.i, i64 129
  br label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u, %sk_is_tcp.exit.thread
  %.06.i = phi i32 [ 2, %bb.v ], [ 0, %sk_is_tcp.exit.thread ], [ 1, %bb.u ]
  %i.gz = getelementptr i8, ptr %spec.store.select.i.i, i64 32
  store i64 %i.gu, ptr %i.gz, align 8
  %.not.i.i132 = icmp eq i64 %i.gu, 0
  %i.ha = getelementptr i8, ptr %spec.store.select.i.i, i64 129 ; 3 uses
  br i1 %.not.i.i132, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hb = load i32, ptr %i.ha, align 1
  %i.hc = and i32 %i.hb, -4
  %i.hd = or disjoint i32 %i.hc, %.06.i
  br label %skb_set_delivery_type_by_clockid.exit

bb.y:                                             ; preds = %bb.w, %.thread.i
  %i.he = phi ptr [ %i.gy, %.thread.i ], [ %i.ha, %bb.w ] ; 2 uses
  %i.hf = load i32, ptr %i.he, align 1
  %i.hg = and i32 %i.hf, -4
  br label %skb_set_delivery_type_by_clockid.exit

skb_set_delivery_type_by_clockid.exit:            ; preds = %bb.x, %bb.y
  %i.hh = phi ptr [ %i.he, %bb.y ], [ %i.ha, %bb.x ]
  %.sink.i.i = phi i32 [ %i.hg, %bb.y ], [ %i.hd, %bb.x ]
  store i32 %.sink.i.i, ptr %i.hh, align 1
  br label %bb.z

bb.z:                                             ; preds = %skb_set_delivery_type_by_clockid.exit, %skb_set_delivery_time.exit
  %i.hi = load ptr, ptr %i.c, align 8             ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not.i.i133 = icmp eq ptr %i.hi, null
  %i.hj = getelementptr i8, ptr %spec.store.select.i.i, i64 129 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 1            ; 2 uses
  %.mask.i.i = and i32 %i.hk, 2097152
  %i.hl = select i1 %.not.i.i133, i32 %.mask.i.i, i32 2097152
  %i.hm = and i32 %i.hk, -2097153
  %i.hn = or disjoint i32 %i.hl, %i.hm
  store i32 %i.hn, ptr %i.hj, align 1
  %i.ho = ptrtoint ptr %i.hi to i64
  %i.hp = getelementptr i8, ptr %spec.store.select.i.i, i64 88 ; 2 uses
  store i64 %i.ho, ptr %i.hp, align 8
  %i.hq = getelementptr i8, ptr %i.d, i64 208
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %.not106 = icmp eq ptr %i.hr, null
  br i1 %.not106, label %bb.ab, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.hs = getelementptr i8, ptr %i.hr, i64 912
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr i8, ptr %i.ht, i64 64     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hu, ptr elementtype(i64) %i.hu) #12, !srcloc !129
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hv = getelementptr i8, ptr %.val118, i64 728
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr i8, ptr %i.hw, i64 64     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hx, ptr elementtype(i64) %i.hx) #12, !srcloc !130
  %i.hy = icmp eq i8 %.1, 58
  br i1 %i.hy, label %bb.ac, label %bb.aj, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %.val = load i64, ptr %i.hp, align 8
  %i.hz = and i64 %.val, -2
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = getelementptr i8, ptr %i.ia, i64 208
  %.val111 = load ptr, ptr %i.ib, align 8         ; 3 uses
  %i.ic = getelementptr i8, ptr %0, i64 288
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr i8, ptr %i.id, i64 4
  %i.if = load i16, ptr %i.ie, align 4
  %i.ig = icmp eq i16 %i.if, 3
  br i1 %i.ig, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ih = getelementptr i8, ptr %2, i64 83
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = and i8 %i.ii, 2
  %.not107 = icmp eq i8 %i.ij, 0
  br i1 %.not107, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ik = getelementptr i8, ptr %2, i64 140
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.val123 = load i16, ptr %i.ct, align 2
  %.val124 = load ptr, ptr %i.r, align 8
  %i.il = zext i16 %.val123 to i64
  %i.im = getelementptr i8, ptr %.val124, i64 %i.il
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.094.in = phi ptr [ %i.im, %bb.af ], [ %i.ik, %bb.ae ]
  %.094 = load i8, ptr %.094.in, align 4
  %.not108 = icmp eq ptr %.val111, null
  %i.in = zext i8 %.094 to i64                    ; 3 uses
  br i1 %.not108, label %.critedge, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr i8, ptr %.val111, i64 928
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %i.in
  %i.ir = getelementptr i8, ptr %i.iq, i64 2048   ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ir, ptr elementtype(i64) %i.ir) #12, !srcloc !131
  %i.is = getelementptr i8, ptr %.val118, i64 792
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr [8 x i8], ptr %i.it, i64 %i.in
  %i.iv = getelementptr i8, ptr %i.iu, i64 2048   ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iv, ptr elementtype(i64) %i.iv) #12, !srcloc !131
  %i.iw = getelementptr i8, ptr %.val111, i64 920
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr i8, ptr %i.ix, i64 24     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iy, ptr elementtype(i64) %i.iy) #12, !srcloc !131
  br label %bb.ai

.critedge:                                        ; preds = %bb.ag
  %i.iz = getelementptr i8, ptr %.val118, i64 792
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %i.in
  %i.jc = getelementptr i8, ptr %i.jb, i64 2048   ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jc, ptr elementtype(i64) %i.jc) #12, !srcloc !131
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge, %bb.ah
  %i.jd = getelementptr i8, ptr %.val118, i64 784
  %i.je = load ptr, ptr %i.jd, align 16
  %i.jf = getelementptr i8, ptr %i.je, i64 24     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jf, ptr elementtype(i64) %i.jf) #12, !srcloc !132
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %i.jg = load ptr, ptr %i.dh, align 8            ; 6 uses
  %.not.i134 = icmp eq ptr %i.jg, null
  br i1 %.not.i134, label %bb.al, label %bb.ak, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.jh = getelementptr i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void @kfree(ptr noundef %i.ji) #11
  %i.jj = getelementptr i8, ptr %i.jg, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  call void @kfree(ptr noundef %i.jk) #11
  %i.jl = getelementptr i8, ptr %i.jg, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void @kfree(ptr noundef %i.jm) #11
  %i.jn = getelementptr i8, ptr %i.jg, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8
  call void @kfree(ptr noundef %i.jo) #11
  call void @kfree(ptr noundef nonnull %i.jg) #11
  store ptr null, ptr %i.dh, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jp = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not13.i = icmp eq ptr %i.jp, null
  br i1 %.not13.i, label %ip6_cork_release.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @dst_release(ptr noundef nonnull %i.jp) #11
  store ptr null, ptr %i.c, align 8
  br label %ip6_cork_release.exit

ip6_cork_release.exit:                            ; preds = %bb.a, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %spec.store.select.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @ip6_send_skb(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val21 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val, -2
  %i.f = inttoptr i64 %i.e to ptr
  tail call void @__rcu_read_lock() #11
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = tail call i32 @ip6_local_out(ptr noundef %.val21, ptr noundef %i.g, ptr noundef %0) #11 ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.h, 0
  %.not18 = icmp eq i32 %i.h, 2                   ; 2 uses
  %i.j = select i1 %.not18, i32 0, i32 -105
  %.0 = select i1 %i.i, i32 %i.j, i32 %i.h
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 208
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.l, i64 912
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, ptr elementtype(i64) %i.o) #12, !srcloc !133
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %.val21, i64 728
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, ptr elementtype(i64) %i.r) #12, !srcloc !134
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  %.1 = phi i32 [ %.0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  tail call void @__rcu_read_unlock() #11
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @ip6_push_pending_frames(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 392
  %i.b = getelementptr i8, ptr %0, i64 856
  %i.c = tail call ptr @__ip6_make_skb(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) #13 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %.val21.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 88
  %.val.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.val.i, -2
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @__rcu_read_lock() #11
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = tail call i32 @ip6_local_out(ptr noundef %.val21.i, ptr noundef %i.j, ptr noundef nonnull %i.c) #11 ; 4 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %ip6_send_skb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %i.k, 0
  %.not18.i = icmp eq i32 %i.k, 2                 ; 2 uses
  %i.m = select i1 %.not18.i, i32 0, i32 -105
  %.0.i = select i1 %i.l, i32 %i.m, i32 %i.k
  br i1 %.not18.i, label %ip6_send_skb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 208
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 912
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, ptr elementtype(i64) %i.r) #12, !srcloc !133
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr i8, ptr %.val21.i, i64 728
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.u, ptr elementtype(i64) %i.u) #12, !srcloc !134
  br label %ip6_send_skb.exit

ip6_send_skb.exit:                                ; preds = %bb.b, %bb.c, %bb.f
  %.1.i = phi i32 [ %.0.i, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @__rcu_read_unlock() #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %ip6_send_skb.exit
  %.0 = phi i32 [ %.1.i, %ip6_send_skb.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ip6_flush_pending_frames(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 392
  %i.b = getelementptr i8, ptr %0, i64 856
  tail call fastcc void @__ip6_flush_pending_frames(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) #13, !srcloc !135
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__ip6_flush_pending_frames(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  %.not.i1516 = icmp eq ptr %i.b, null
  %.not.i17 = or i1 %i.c, %.not.i1516
  br i1 %.not.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.g = load i32, ptr %i.d, align 8
  %i.h = add i32 %i.g, -1
  store volatile i32 %i.h, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store volatile ptr %i.k, ptr %i.l, align 8
  store volatile ptr %i.i, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 88
  %.val11 = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val11, -2                      ; 2 uses
  %.not9 = icmp eq i64 %i.n, 0
  br i1 %.not9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 208
  %.val12 = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not10 = icmp eq ptr %.val12, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.val12, i64 912
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.s, ptr elementtype(i64) %i.s) #12, !srcloc !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val13 = load ptr, ptr %i.e, align 8
  %i.t = getelementptr i8, ptr %.val13, i64 728
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 152      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, ptr elementtype(i64) %i.v) #12, !srcloc !137
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.f, i32 noundef 2) #11
  %i.w = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %i.x = icmp eq ptr %i.w, %1
  %.not.i15 = icmp eq ptr %i.w, null
  %.not.i = or i1 %i.x, %.not.i15
  br i1 %.not.i, label %._crit_edge, label %bb.b, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.y = getelementptr i8, ptr %2, i64 152        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 6 uses
  %.not.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i14, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %._crit_edge
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @kfree(ptr noundef %i.ab) #11
  %i.ac = getelementptr i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @kfree(ptr noundef %i.ad) #11
  %i.ae = getelementptr i8, ptr %i.z, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @kfree(ptr noundef %i.af) #11
  %i.ag = getelementptr i8, ptr %i.z, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void @kfree(ptr noundef %i.ah) #11
  tail call void @kfree(ptr noundef nonnull %i.z) #11
  store ptr null, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ai = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.aj, null
  br i1 %.not13.i, label %ip6_cork_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @dst_release(ptr noundef nonnull %i.aj) #11
  store ptr null, ptr %i.ai, align 8
  br label %ip6_cork_release.exit

ip6_cork_release.exit:                            ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ip6_make_skb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %9 = alloca %struct.sk_buff_head, align 8       ; 10 uses
  %i.a = getelementptr i8, ptr %5, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.g, align 8, !annotation !15
  %i.h = and i32 %7, 16
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @dst_release(ptr noundef %6) #11
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  store ptr %9, ptr %9, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %9, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %8, i64 152        ; 3 uses
  store ptr null, ptr %i.j, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.k = call fastcc i32 @ip6_setup_cork(ptr noundef %0, ptr noundef %8, ptr noundef %5, ptr noundef %6) #13, !srcloc !139 ; 2 uses
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.j, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void @kfree(ptr noundef %i.n) #11
  %i.o = getelementptr i8, ptr %i.l, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void @kfree(ptr noundef %i.p) #11
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void @kfree(ptr noundef %i.r) #11
  %i.s = getelementptr i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  call void @kfree(ptr noundef %i.t) #11
  call void @kfree(ptr noundef nonnull %i.l) #11
  store ptr null, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %8, i64 24         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.v, null
  br i1 %.not13.i, label %ip6_cork_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @dst_release(ptr noundef nonnull %i.v) #11
  store ptr null, ptr %i.u, align 8
  br label %ip6_cork_release.exit

ip6_cork_release.exit:                            ; preds = %bb.h, %bb.i
  %i.w = sext i32 %i.k to i64
  %i.x = inttoptr i64 %i.w to ptr
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.y = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #15, !srcloc !103
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr i8, ptr %i.z, i64 2800
  %i.ab = zext nneg i32 %i.f to i64
  %i.ac = add i64 %3, %i.ab
  %i.ad = add i32 %i.f, %4
  %i.ae = call fastcc i32 @__ip6_append_data(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %8, ptr noundef %i.aa, ptr noundef %1, ptr noundef %2, i64 noundef %i.ac, i32 noundef %i.ad, i32 noundef %7) #13, !srcloc !140 ; 2 uses
  %.not35 = icmp eq i32 %i.ae, 0
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @__ip6_flush_pending_frames(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %8) #13, !srcloc !141
  %i.af = sext i32 %i.ae to i64
  %i.ag = inttoptr i64 %i.af to ptr
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = call ptr @__ip6_make_skb(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %8) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %ip6_cork_release.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.x, %ip6_cork_release.exit ], [ %i.ag, %bb.k ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ip6_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.nf_hook_state, align 8      ; 9 uses
  %i.a = getelementptr i8, ptr %2, i64 88
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, -2
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 8 uses
  %i.e = getelementptr i8, ptr %i.c, i64 208
  %.val171 = load ptr, ptr %i.e, align 8          ; 9 uses
  %i.f = getelementptr i8, ptr %i.d, i64 180
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr i8, ptr %i.d, i64 60
  %i.j = load volatile i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, %i.h
  %i.m = and i32 %i.l, 131056
  %i.n = add nuw nsw i32 %i.m, 16                 ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 200
  %.val173 = load ptr, ptr %i.o, align 8          ; 3 uses
  %i.p = getelementptr i8, ptr %2, i64 208
  %.val174 = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %.val174 to i64
  %i.r = ptrtoint ptr %.val173 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp ugt i32 %i.n, %i.t
  br i1 %i.u, label %bb.b, label %bb.g, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 16
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call ptr @skb_expand_head(ptr noundef %2, i32 noundef %i.n) #11 ; 3 uses
  %.not150 = icmp eq ptr %i.x, null
  br i1 %.not150, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %i.x, i64 200
  %.0135.val172.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not151 = icmp eq ptr %.val171, null
  br i1 %.not151, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val171, i64 912
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 152     ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, ptr elementtype(i64) %i.aa) #12, !srcloc !142
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr i8, ptr %0, i64 728
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 152    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, ptr elementtype(i64) %i.ad) #12, !srcloc !143
  br label %neigh_output.exit

bb.g:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.0135.val172 = phi ptr [ %.0135.val172.pre, %._crit_edge ], [ %.val173, %bb.b ], [ %.val173, %bb.a ]
  %.0135 = phi ptr [ %i.x, %._crit_edge ], [ %2, %bb.b ], [ %2, %bb.a ] ; 14 uses
  %i.ae = getelementptr i8, ptr %.0135, i64 184
  %.0135.val = load i16, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.0135, i64 200   ; 3 uses
  %i.ag = zext i16 %.0135.val to i64
  %i.ah = getelementptr i8, ptr %.0135.val172, i64 %i.ag ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 24     ; 3 uses
  %.val175 = load i32, ptr %i.aj, align 4
  %i.ak = and i32 %.val175, 255
  %i.al = icmp eq i32 %i.ak, 255
  br i1 %i.al, label %bb.h, label %bb.t, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.d, i64 176     ; 2 uses
  %i.an = load i32, ptr %i.am, align 16
  %i.ao = and i32 %i.an, 8
  %.not152 = icmp eq i32 %i.ao, 0
  br i1 %.not152, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call zeroext i1 @sk_mc_loop(ptr noundef %1) #11
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %i.d, ptr noundef %i.aj, ptr noundef %i.ai) #11
  br i1 %i.aq, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @skb_clone(ptr noundef %.0135, i32 noundef 2080) #11 ; 4 uses
  %.not153 = icmp eq ptr %i.ar, null
  br i1 %.not153, label %NF_HOOK.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @nf_hooks_needed, i64 864), i1 false) #12
          to label %nf_hook.exit.thread.i [label %arch_static_branch.exit.thread.i.i], !srcloc !14

arch_static_branch.exit.thread.i.i:               ; preds = %bb.l
  tail call void @__rcu_read_lock() #11
  %i.au = getelementptr i8, ptr %0, i64 2864
  %i.av = load volatile ptr, ptr %i.au, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %nf_hook.exit.thread15.i, label %nf_hook.exit.i

nf_hook.exit.thread15.i:                          ; preds = %arch_static_branch.exit.thread.i.i
  tail call void @__rcu_read_unlock() #11
  br label %nf_hook.exit.thread.i

nf_hook.exit.i:                                   ; preds = %arch_static_branch.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 2564, ptr %3, align 8, !annotation !15
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.at, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @dev_loopback_xmit, ptr %i.ba, align 8
  %i.bb = call i32 @nf_hook_slow(ptr noundef nonnull %i.ar, ptr noundef nonnull %3, ptr noundef nonnull %i.av, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @__rcu_read_unlock() #11
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %nf_hook.exit.thread.i, label %NF_HOOK.exit

nf_hook.exit.thread.i:                            ; preds = %nf_hook.exit.i, %nf_hook.exit.thread15.i, %bb.l
  %i.bd = call i32 @dev_loopback_xmit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ar) #11, !callees !54, !inline_history !55 ; 0 uses
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %nf_hook.exit.thread.i, %nf_hook.exit.i, %bb.k
  %i.be = getelementptr i8, ptr %i.ah, i64 7
  %i.bf = load i8, ptr %i.be, align 1
  %.not155 = icmp eq i8 %i.bf, 0
  br i1 %.not155, label %bb.m, label %.critedge

bb.m:                                             ; preds = %NF_HOOK.exit
  %.not154 = icmp eq ptr %.val171, null
  br i1 %.not154, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %.val171, i64 912
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 152    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bi, ptr elementtype(i64) %i.bi) #12, !srcloc !144
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = getelementptr i8, ptr %0, i64 728
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 152    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bl, ptr elementtype(i64) %i.bl) #12, !srcloc !145
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.0135, i32 noundef 2) #11
  br label %neigh_output.exit

.critedge:                                        ; preds = %NF_HOOK.exit, %bb.j, %bb.i, %bb.h
  %i.bm = getelementptr i8, ptr %.0135, i64 112
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.not156 = icmp eq ptr %.val171, null
  br i1 %.not156, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %.critedge
  %i.bp = getelementptr i8, ptr %.val171, i64 912
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 232    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.br, ptr elementtype(i64) %i.br) #12, !srcloc !146
  %i.bs = getelementptr i8, ptr %i.bq, i64 264    ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bs, i64 %i.bo, ptr elementtype(i64) %i.bs) #12, !srcloc !147
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %i.bt = getelementptr i8, ptr %0, i64 728
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 232    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bv, ptr elementtype(i64) %i.bv) #12, !srcloc !148
  %i.bw = getelementptr i8, ptr %i.bu, i64 264    ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bw, i64 %i.bo, ptr elementtype(i64) %i.bw) #12, !srcloc !149
  %i.bx = getelementptr i8, ptr %i.ah, i64 25
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = and i8 %i.by, 14
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %i.am, align 16
  %i.cc = and i32 %i.cb, 8
  %.not157 = icmp eq i32 %i.cc, 0
  br i1 %.not157, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.0135, i32 noundef 2) #11
  br label %neigh_output.exit

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.g
  %i.cd = getelementptr i8, ptr %.0135, i64 112   ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.not158 = icmp eq ptr %.val171, null           ; 2 uses
  br i1 %.not158, label %bb.v, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %.val171, i64 912
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 72     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ci, ptr elementtype(i64) %i.ci) #12, !srcloc !150
  %i.cj = getelementptr i8, ptr %i.ch, i64 80     ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cj, i64 %i.cf, ptr elementtype(i64) %i.cj) #12, !srcloc !151
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = getelementptr i8, ptr %0, i64 728       ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 72     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cm, ptr elementtype(i64) %i.cm) #12, !srcloc !152
  %i.cn = getelementptr i8, ptr %i.cl, i64 80     ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cn, i64 %i.cf, ptr elementtype(i64) %i.cn) #12, !srcloc !153
  %i.co = getelementptr i8, ptr %i.c, i64 216
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = and i32 %i.cp, 2
  %.not.i176 = icmp eq i32 %i.cq, 0
  br i1 %.not.i176, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr i8, ptr %i.c, i64 188
  br label %rt6_nexthop.exit

bb.x:                                             ; preds = %bb.v
  %i.cs = and i32 %i.cp, 16777216
  %.not6.i = icmp eq i32 %i.cs, 0
  br i1 %.not6.i, label %rt6_nexthop.exit, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr i8, ptr %i.c, i64 148
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %bb.w, %bb.x, %bb.y
  %.0.i177 = phi ptr [ %i.cr, %bb.w ], [ %i.ct, %bb.y ], [ %i.aj, %bb.x ] ; 5 uses
  %i.cu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @nd_tbl, i64 584), align 8 ; 6 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 12
  %i.cw = load i32, ptr %.0.i177, align 4         ; 2 uses
  %i.cx = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.cy = lshr i64 %i.cx, 32
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = trunc i64 %i.cz to i32
  %i.db = xor i32 %i.cw, %i.da
  %i.dc = load i32, ptr %i.cv, align 4
  %i.dd = mul i32 %i.db, %i.dc
  %i.de = getelementptr i8, ptr %.0.i177, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 16
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = mul i32 %i.dh, %i.df
  %i.dj = add i32 %i.di, %i.dd
  %i.dk = getelementptr i8, ptr %.0.i177, i64 8
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cu, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = mul i32 %i.dn, %i.dl
  %i.dp = add i32 %i.dj, %i.do
  %i.dq = getelementptr i8, ptr %.0.i177, i64 12
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cu, i64 24
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = mul i32 %i.dt, %i.dr
  %i.dv = add i32 %i.dp, %i.du
  %i.dw = getelementptr i8, ptr %i.cu, i64 8
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = sub i32 32, %i.dx
  %i.dz = lshr i32 %i.dv, %i.dy
  %i.ea = load ptr, ptr %i.cu, align 8
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load volatile ptr, ptr %i.ec, align 8   ; 2 uses
  %.not381.i.i = icmp eq ptr %i.ed, null
  br i1 %.not381.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %rt6_nexthop.exit, %bb.aa
  %.0352.i.i = phi ptr [ %i.ew, %bb.aa ], [ %i.ed, %rt6_nexthop.exit ] ; 9 uses
  %i.ee = getelementptr i8, ptr %.0352.i.i, i64 384
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp eq ptr %i.ef, %i.d
  br i1 %i.eg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.eh = getelementptr i8, ptr %.0352.i.i, i64 392
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %.0352.i.i, i64 396
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = getelementptr i8, ptr %.0352.i.i, i64 400
  %i.em = load i32, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %.0352.i.i, i64 404
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = icmp eq i32 %i.ei, %i.cw
  %i.eq = icmp eq i32 %i.ek, %i.df
  %i.er = and i1 %i.ep, %i.eq
  %i.es = icmp eq i32 %i.em, %i.dl
  %i.et = and i1 %i.er, %i.es
  %i.eu = icmp eq i32 %i.eo, %i.dr
  %i.ev = and i1 %i.et, %i.eu
  br i1 %i.ev, label %__ipv6_neigh_lookup_noref.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i
  %i.ew = load volatile ptr, ptr %.0352.i.i, align 8 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.ew, null
  br i1 %.not38.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !154

__ipv6_neigh_lookup_noref.exit:                   ; preds = %bb.z
  %i.ex = icmp ugt ptr %.0352.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.ex, label %bb.ab, label %bb.af

.thread:                                          ; preds = %bb.aa, %rt6_nexthop.exit
  %i.ey = call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %.0.i177, ptr noundef %i.d, i1 noundef zeroext false) #11
  br label %bb.ab

bb.ab:                                            ; preds = %__ipv6_neigh_lookup_noref.exit, %.thread
  %.0136 = phi ptr [ %i.ey, %.thread ], [ %.0352.i.i, %__ipv6_neigh_lookup_noref.exit ] ; 2 uses
  %i.ez = icmp ugt ptr %.0136, inttoptr (i64 -4096 to ptr)
  br i1 %i.ez, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not158, label %bb.ae, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr i8, ptr %.val171, i64 912
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %i.fb, i64 160    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fc, ptr elementtype(i64) %i.fc) #12, !srcloc !155
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fd = load ptr, ptr %i.ck, align 8
  %i.fe = getelementptr i8, ptr %i.fd, i64 160    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fe, ptr elementtype(i64) %i.fe) #12, !srcloc !156
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.0135, i32 noundef 57) #11
  br label %neigh_output.exit

bb.af:                                            ; preds = %bb.ab, %__ipv6_neigh_lookup_noref.exit
  %.1137 = phi ptr [ %.0136, %bb.ab ], [ %.0352.i.i, %__ipv6_neigh_lookup_noref.exit ] ; 8 uses
  %i.ff = getelementptr i8, ptr %.0135, i64 128
  %.val.i = load i8, ptr %i.ff, align 8
  %i.fg = and i8 %.val.i, 16
  %.not7.i = icmp eq i8 %i.fg, 0
  br i1 %.not7.i, label %sock_confirm_neigh.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = getelementptr i8, ptr %.0135, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not.i178 = icmp eq ptr %i.fi, null
  br i1 %.not.i178, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = getelementptr i8, ptr %i.fi, i64 496    ; 2 uses
  %i.fk = load volatile i32, ptr %i.fj, align 8
  %.not6.i179 = icmp eq i32 %i.fk, 0
  br i1 %.not6.i179, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store volatile i32 0, ptr %i.fj, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.not.i.i180 = icmp eq ptr %.1137, null
  br i1 %.not.i.i180, label %sock_confirm_neigh.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.fm = getelementptr i8, ptr %.1137, i64 48    ; 2 uses
  %i.fn = load volatile i64, ptr %i.fm, align 8
  %.not6.i.i = icmp eq i64 %i.fn, %i.fl
  br i1 %.not6.i.i, label %sock_confirm_neigh.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store volatile i64 %i.fl, ptr %i.fm, align 8
  br label %sock_confirm_neigh.exit

sock_confirm_neigh.exit:                          ; preds = %bb.af, %bb.aj, %bb.ak, %bb.al
  %i.fo = getelementptr i8, ptr %.1137, i64 208   ; 2 uses
  %i.fp = getelementptr i8, ptr %.1137, i64 156
  %i.fq = load volatile i8, ptr %i.fp, align 4
  %i.fr = and i8 %i.fq, -62
  %.not.i181 = icmp eq i8 %i.fr, 0
  br i1 %.not.i181, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %sock_confirm_neigh.exit
  %i.fs = load volatile i32, ptr %i.fo, align 8
  %.not12.i = icmp eq i32 %i.fs, 0
  br i1 %.not12.i, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = getelementptr i8, ptr %.1137, i64 212   ; 3 uses
  %i.fu = getelementptr i8, ptr %.0135, i64 208   ; 4 uses
  %i.fv = getelementptr i8, ptr %.1137, i64 224   ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.at, %bb.an
  %i.fw = load volatile i32, ptr %i.ft, align 4   ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !157
  %i.fx = and i32 %i.fw, 1
  %.not3.i.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not3.i.i.i, label %read_seqbegin.exit.i.i, label %.lr.ph.i.i.i, !prof !158

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !159
  %i.fy = load volatile i32, ptr %i.ft, align 4   ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !157
  %i.fz = and i32 %i.fy, 1
  %.not.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.i, label %read_seqbegin.exit.i.i, label %.lr.ph.i.i.i, !prof !160, !llvm.loop !161

read_seqbegin.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.ao
  %.lcssa.i.i.i = phi i32 [ %i.fw, %bb.ao ], [ %i.fy, %.lr.ph.i.i.i ]
  %i.ga = load volatile i32, ptr %i.fo, align 8   ; 4 uses
  %i.gb = icmp ult i32 %i.ga, 17
  br i1 %i.gb, label %bb.ap, label %bb.ar, !prof !11

bb.ap:                                            ; preds = %read_seqbegin.exit.i.i
  %.val33.i.i = load ptr, ptr %i.af, align 8
  %.val34.i.i = load ptr, ptr %i.fu, align 8      ; 2 uses
  %i.gc = ptrtoint ptr %.val34.i.i to i64
  %i.gd = ptrtoint ptr %.val33.i.i to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = and i64 %i.ge, 4294967280
  %.not35.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not35.i.i, label %bb.at, label %bb.aq, !prof !10

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr i8, ptr %.val34.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.gg, ptr noundef align 8 dereferenceable(16) %i.fv, i64 16, i1 false)
  br label %bb.at

bb.ar:                                            ; preds = %read_seqbegin.exit.i.i
  %i.gh = add i32 %i.ga, 15
  %i.gi = and i32 %i.gh, -16                      ; 4 uses
  %.val31.i.i = load ptr, ptr %i.af, align 8
  %.val32.i.i = load ptr, ptr %i.fu, align 8      ; 2 uses
  %i.gj = ptrtoint ptr %.val32.i.i to i64
  %i.gk = ptrtoint ptr %.val31.i.i to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %.not.i.i182 = icmp ugt i32 %i.gi, %i.gm
  br i1 %.not.i.i182, label %bb.at, label %bb.as, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.gn = zext i32 %i.gi to i64                   ; 2 uses
  %i.go = sub nsw i64 0, %i.gn
  %i.gp = getelementptr i8, ptr %.val32.i.i, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 8 %i.fv, i64 %i.gn, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.026.i.i = phi i32 [ 16, %bb.aq ], [ 16, %bb.ap ], [ %i.gi, %bb.as ], [ %i.gi, %bb.ar ]
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !162
  %i.gq = load volatile i32, ptr %i.ft, align 4
  %.not36.i.i = icmp eq i32 %i.gq, %.lcssa.i.i.i
  br i1 %.not36.i.i, label %bb.au, label %bb.ao, !llvm.loop !163

bb.au:                                            ; preds = %bb.at
  %.val.i.i = load ptr, ptr %i.af, align 8
  %.val30.i.i = load ptr, ptr %i.fu, align 8      ; 2 uses
  %i.gr = ptrtoint ptr %.val30.i.i to i64
  %i.gs = ptrtoint ptr %.val.i.i to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp ugt i32 %.026.i.i, %i.gu
  br i1 %i.gv, label %bb.av, label %.critedge.i.i, !prof !10

bb.av:                                            ; preds = %bb.au
  call void asm sideeffect "753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 753) #12, !srcloc !164
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.5, i32 538, i32 2307, i64 16) #12, !srcloc !165
  call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #12, !srcloc !166
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.0135, i32 noundef 2) #11
  br label %neigh_output.exit

.critedge.i.i:                                    ; preds = %bb.au
  %i.gw = zext i32 %i.ga to i64
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr i8, ptr %.val30.i.i, i64 %i.gx
  store ptr %i.gy, ptr %i.fu, align 8
  %i.gz = load i32, ptr %i.cd, align 8
  %i.ha = add i32 %i.gz, %i.ga
  store i32 %i.ha, ptr %i.cd, align 8
  %i.hb = call i32 @__dev_queue_xmit(ptr noundef %.0135, ptr noundef null) #11
  br label %neigh_output.exit

bb.aw:                                            ; preds = %bb.am, %sock_confirm_neigh.exit
  %i.hc = getelementptr i8, ptr %.1137, i64 320
  %i.hd = load volatile ptr, ptr %i.hc, align 8
  %i.he = call i32 %i.hd(ptr noundef %.1137, ptr noundef %.0135) #11, !inline_history !167
  br label %neigh_output.exit

neigh_output.exit:                                ; preds = %bb.aw, %.critedge.i.i, %bb.av, %bb.o, %bb.ae, %bb.s, %bb.f
  %.4 = phi i32 [ -22, %bb.ae ], [ 0, %bb.o ], [ -12, %bb.f ], [ 0, %bb.s ], [ %i.he, %bb.aw ], [ 1, %bb.av ], [ %i.hb, %.critedge.i.i ]
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ip6_finish_output_gso_slowpath_drop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @netif_skb_features(ptr noundef %2) #11
  %i.b = and i64 %i.a, -68719411201
  %i.c = tail call ptr @__skb_gso_segment(ptr noundef %2, i64 noundef range(i64 0, -68719411200) %i.b, i1 noundef zeroext true) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.d
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %2, i32 noundef 2) #11
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @consume_skb(ptr noundef %2) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.02835.sink = phi ptr [ %i.c, %bb.c ], [ %i.e, %bb.g ] ; 5 uses
  %.036 = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.g ] ; 2 uses
  %i.e = load ptr, ptr %.02835.sink, align 8      ; 2 uses
  store ptr null, ptr %.02835.sink, align 8
  %i.f = getelementptr i8, ptr %.02835.sink, i64 112
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ugt i32 %i.g, %3
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @ip6_fragment(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.02835.sink, ptr noundef nonnull @ip6_finish_output2) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = tail call i32 @ip6_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.02835.sink) #13, !srcloc !168
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ %i.i, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp eq i32 %.036, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  %spec.select = select i1 %or.cond, i32 %i.k, i32 %.036 ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %.loopexit, label %bb.d, !llvm.loop !169

.loopexit:                                        ; preds = %bb.g, %bb.b
  %.027 = phi i32 [ -12, %bb.b ], [ %spec.select, %bb.g ]
  ret i32 %.027
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @sk_mc_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_loopback_xmit(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__dev_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip6_mtu(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_output(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rawv6_rcv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__xfrm_route_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv4_mtu(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_skb_list_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @rcuref_get_slowpath(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noalias noundef ptr @_kzalloc_noprof(i32 noundef %0) unnamed_addr #5 align 16 {
bb.a:
  %i.a = and i32 %0, 17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %kmalloc_type.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 1
  %..i = add nuw nsw i32 %i.c, 1
  %i.d = zext nneg i32 %..i to i64
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]
  %i.e = or i32 %0, 256
  %i.f = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = tail call noalias align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef range(i32 256, 0) %i.e, i64 noundef 64) #17
  ret ptr %i.i
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ipv6_local_rxpmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skb_zcopy_set(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %.val4.i = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %.val5.i = load ptr, ptr %i.d, align 8
  %i.e = zext i32 %.val4.i to i64
  %i.f = getelementptr i8, ptr %.val5.i, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %skb_zcopy.exit, label %skb_zcopy.exit.thread

skb_zcopy.exit:                                   ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %skb_zcopy.exit.thread, label %bb.f

skb_zcopy.exit.thread:                            ; preds = %bb.b, %skb_zcopy.exit
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %.critedge, label %bb.c

bb.c:                                             ; preds = %skb_zcopy.exit.thread
  %i.k = load i8, ptr %2, align 1, !range !98, !noundef !99
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.critedge, !prof !10

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1
  br label %net_zcopy_get.exit

.critedge:                                        ; preds = %skb_zcopy.exit.thread, %bb.c
  %i.m = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, i32 1, ptr elementtype(i32) %i.m) #12, !srcloc !73 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.e, !prof !10

bb.e:                                             ; preds = %.critedge
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i, label %net_zcopy_get.exit, label %.sink.split.i.i.i.i, !prof !11

.sink.split.i.i.i.i:                              ; preds = %bb.e, %.critedge
  %.sink.i.i.i.i = phi i32 [ 2, %.critedge ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef %i.m, i32 noundef %.sink.i.i.i.i) #11
  br label %net_zcopy_get.exit

net_zcopy_get.exit:                               ; preds = %.sink.split.i.i.i.i, %bb.e, %bb.d
  %.val5.i13 = load i32, ptr %i.c, align 8
  %.val6.i = load ptr, ptr %i.d, align 8
  %i.q = zext i32 %.val5.i13 to i64
  %i.r = getelementptr i8, ptr %.val6.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 40
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %1, i64 12
  %i.u = load i8, ptr %i.t, align 4
  %.val.i = load i32, ptr %i.c, align 8
  %.val4.i14 = load ptr, ptr %i.d, align 8
  %i.v = zext i32 %.val.i to i64
  %i.w = getelementptr i8, ptr %.val4.i14, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = or i8 %i.x, %i.u
  store i8 %i.y, ptr %i.w, align 8
  br label %bb.f

bb.f:                                             ; preds = %net_zcopy_get.exit, %skb_zcopy.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__skb_trim(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #12, !srcloc !170
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 3325, i32 2305, i64 16) #12, !srcloc !171
  tail call void asm sideeffect "587: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 587b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 587) #12, !srcloc !172
  br label %__skb_set_length.exit

.critedge.i:                                      ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 112
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 188
  %i.l = add i32 %1, %i.j
  store i32 %i.l, ptr %i.k, align 4
  br label %__skb_set_length.exit

__skb_set_length.exit:                            ; preds = %bb.b, %.critedge.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @skb_splice_from_iter(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @get_page(ptr noundef %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load volatile i64, ptr %i.a, align 8     ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.b, 1
  %i.e = add nsw i64 %i.d, -1
  %i.f = or i64 %i.e, %i.b
  %i.g = and i64 %i.f, %i.c
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load i32, ptr %i.i, align 16
  %.mask.i = and i32 %i.j, -16777216
  switch i32 %.mask.i, label %.critedge12 [
    i32 -184549376, label %bb.b
    i32 -134217728, label %bb.c
  ], !prof !173

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #12, !srcloc !174
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.9, i32 2092, i32 2307, i64 16) #12, !srcloc !175
  tail call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #12, !srcloc !176
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "452: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 452b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 452) #12, !srcloc !177
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.9, i32 2094, i32 2307, i64 16) #12, !srcloc !178
  tail call void asm sideeffect "453: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 453b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 453) #12, !srcloc !179
  br label %bb.d

.critedge12:                                      ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 52       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, ptr elementtype(i32) %i.k) #12, !srcloc !180
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.critedge12
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @refcount_add(i32 noundef %0, ptr noundef %1) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 %0, ptr elementtype(i32) %1) #12, !srcloc !73 ; 3 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, %0
  %i.c = or i32 %i.b, %i.a
  %.not10.i = icmp sgt i32 %i.c, -1
  br i1 %.not10.i, label %__refcount_add.exit, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.sink.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i) #11
  br label %__refcount_add.exit

__refcount_add.exit:                              ; preds = %bb.b, %.sink.split.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_zcopy_downgrade_managed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__zerocopy_sg_from_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind }
attributes #13 = { noredzone "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i64 2163896105}
!13 = !{i64 2163913236}
!14 = !{i64 2148308491, i64 2148308531, i64 2148308648, i64 2148308669, i64 2148308712, i64 2148308727, i64 2148308760, i64 2148308794, i64 2148308818}
!15 = !{!"auto-init"}
!16 = distinct !{null}
!17 = distinct !{ptr @dst_output, null}
!18 = !{i64 2159375119}
!19 = distinct !{null, null, null}
!20 = !{i64 4810}
!21 = !{i64 4875}
!22 = !{!"branch_weights", i32 1, i32 4001}
!23 = distinct !{null}
!24 = !{i64 5516}
!25 = !{i64 2163961392}
!26 = !{i64 2163978523}
!27 = distinct !{null}
!28 = !{i64 2163997964}
!29 = !{i64 2164015095}
!30 = distinct !{ptr @dst_output, null}
!31 = !{i64 2164031855}
!32 = !{i64 2164048780}
!33 = !{!"branch_weights", i32 1073204953, i32 1074278695}
!34 = !{i64 2164090427}
!35 = !{i64 2164107380}
!36 = !{i64 14374}
!37 = !{i64 2164124389}
!38 = !{i64 2164141446}
!39 = distinct !{null, null}
!40 = !{i64 2164160782}
!41 = !{i64 2164181796}
!42 = !{i64 2164198504}
!43 = !{i64 2164215457}
!44 = !{i64 2164235373}
!45 = !{i64 2164252950}
!46 = !{i64 2164255677}
!47 = !{i64 2164270183}
!48 = !{i64 2164287552}
!49 = !{i64 2164308320}
!50 = !{i64 2164325169}
!51 = !{i64 17482}
!52 = !{i64 2164341981}
!53 = !{i64 2164359038}
!54 = !{ptr @dev_loopback_xmit, ptr @dst_output, ptr @ip6_forward_finish}
!55 = distinct !{null}
!56 = !{!"branch_weights", !"expected", i32 2374770, i32 2145108878}
!57 = !{i64 2164375956}
!58 = !{i64 2164393117}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{ptr @dst_output}
!62 = !{i64 2157411063, i64 2157410938}
!63 = !{i64 2157411586, i64 2157412062, i64 2157412095, i64 2157412130, i64 2157412146, i64 2157412987, i64 2157413045, i64 2157413094, i64 2157412904, i64 2157412205, i64 2157412237}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{i64 20187}
!68 = !{i64 2148546841, i64 2148546880, i64 2148546901, i64 2148546938, i64 2148546961, i64 2148546970}
!69 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!70 = !{i64 2160009842, i64 2160009717}
!71 = !{i64 2160010365, i64 2160011430, i64 2160011463, i64 2160011498, i64 2160011514, i64 2160012441, i64 2160012499, i64 2160012548, i64 2160012358, i64 2160011573, i64 2160011605, i64 2160011688}
!72 = !{i64 2160012845, i64 2160012721}
!73 = !{i64 2148551153, i64 2148551192, i64 2148551213, i64 2148551250, i64 2148551273, i64 2148551282}
!74 = !{i64 2150450688}
!75 = !{i64 21492}
!76 = !{i64 2164409203, i64 2164409073}
!77 = !{i64 2164409734, i64 2164410210, i64 2164410243, i64 2164410278, i64 2164410294, i64 2164411135, i64 2164411193, i64 2164411242, i64 2164411052, i64 2164410353, i64 2164410385}
!78 = distinct !{null, null}
!79 = distinct !{!79, !66}
!80 = !{i64 2164421988, i64 2164421858}
!81 = !{i64 2164422519, i64 2164422995, i64 2164423028, i64 2164423063, i64 2164423079, i64 2164423920, i64 2164423978, i64 2164424027, i64 2164423837, i64 2164423138, i64 2164423170}
!82 = distinct !{!82, !60}
!83 = !{i64 2164438421}
!84 = !{i64 2164455552}
!85 = !{i64 2164472118}
!86 = !{i64 2164492898}
!87 = !{i64 2164509580}
!88 = !{i64 2164526505}
!89 = distinct !{!89, !60}
!90 = !{i64 2164546322}
!91 = !{i64 2164563453}
!92 = distinct !{!92, !60}
!93 = !{i64 2164580027}
!94 = !{i64 2164596746}
!95 = !{i64 2164617502}
!96 = !{i64 2164634427}
!97 = !{i64 32234}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = !{i64 2164680813}
!101 = !{i64 32956}
!102 = !{i64 49059}
!103 = !{i64 2149816129}
!104 = !{i64 49313}
!105 = !{i64 2164689905, i64 2164689775}
!106 = !{i64 2164690436, i64 2164691486, i64 2164691519, i64 2164691554, i64 2164691570, i64 2164692497, i64 2164692555, i64 2164692604, i64 2164692414, i64 2164691629, i64 2164691661, i64 2164691744}
!107 = !{i64 2164696972, i64 2164692782}
!108 = !{i64 41201}
!109 = !{i64 2148548909, i64 2148548948, i64 2148548969, i64 2148549006, i64 2148549029, i64 2148549038}
!110 = !{i64 8927174, i64 8927187}
!111 = !{!"branch_weights", !"expected", i32 2147483645, i32 3}
!112 = !{i64 2157432212, i64 2157432087}
!113 = !{i64 2157432735, i64 2157433211, i64 2157433244, i64 2157433279, i64 2157433295, i64 2157434136, i64 2157434194, i64 2157434243, i64 2157434053, i64 2157433354, i64 2157433386}
!114 = distinct !{!114, !60}
!115 = !{i64 46728}
!116 = !{i64 2164731283, i64 2164731153}
!117 = !{i64 2164731814, i64 2164732878, i64 2164732911, i64 2164732946, i64 2164732962, i64 2164733889, i64 2164733947, i64 2164733996, i64 2164733806, i64 2164733021, i64 2164733053, i64 2164733136}
!118 = !{i64 2164734303, i64 2164734174}
!119 = !{i64 47595}
!120 = !{i64 48214}
!121 = distinct !{null, null}
!122 = !{i64 2164750831}
!123 = !{i64 2164768745}
!124 = !{i64 2148541322, i64 2148541361, i64 2148541382, i64 2148541419, i64 2148541442, i64 2148541313}
!125 = distinct !{!125, !60}
!126 = !{i64 2157477430, i64 2157477305}
!127 = !{i64 2157477953, i64 2157478992, i64 2157479025, i64 2157479060, i64 2157479076, i64 2157480003, i64 2157480061, i64 2157480110, i64 2157479920, i64 2157479135, i64 2157479167, i64 2157479250}
!128 = !{i64 2157480413, i64 2157480289}
!129 = !{i64 2164797096}
!130 = !{i64 2164814227}
!131 = !{i64 2148568470, i64 2148568509, i64 2148568530, i64 2148568567, i64 2148568590, i64 2148568461}
!132 = !{i64 2164832313}
!133 = !{i64 2164851892}
!134 = !{i64 2164869023}
!135 = !{i64 53542}
!136 = !{i64 2164888062}
!137 = !{i64 2164910037}
!138 = distinct !{!138, !60}
!139 = !{i64 54282}
!140 = !{i64 54390}
!141 = !{i64 54541}
!142 = !{i64 2163670058}
!143 = !{i64 2163687189}
!144 = !{i64 2163704550}
!145 = !{i64 2163721681}
!146 = !{i64 2163736454}
!147 = !{i64 2163755899}
!148 = !{i64 2163768042}
!149 = !{i64 2163783426}
!150 = !{i64 2163795618}
!151 = !{i64 2163810437}
!152 = !{i64 2163822120}
!153 = !{i64 2163841000}
!154 = distinct !{!154, !60}
!155 = !{i64 2163858157}
!156 = !{i64 2163875288}
!157 = !{i64 2151278243}
!158 = !{!"branch_weights", i32 1999, i32 1}
!159 = !{i64 2528881}
!160 = !{!"branch_weights", i32 1, i32 0}
!161 = distinct !{!161, !60}
!162 = !{i64 2151319776}
!163 = distinct !{!163, !60}
!164 = !{i64 2159981734, i64 2159981609}
!165 = !{i64 2159982257, i64 2159983322, i64 2159983355, i64 2159983390, i64 2159983406, i64 2159984333, i64 2159984391, i64 2159984440, i64 2159984250, i64 2159983465, i64 2159983497, i64 2159983580}
!166 = !{i64 2159984743, i64 2159984619}
!167 = distinct !{null}
!168 = !{i64 4540}
!169 = distinct !{!169, !60}
!170 = !{i64 2157427563, i64 2157427438}
!171 = !{i64 2157428086, i64 2157429145, i64 2157429178, i64 2157429213, i64 2157429229, i64 2157430156, i64 2157430214, i64 2157430263, i64 2157430073, i64 2157429288, i64 2157429320, i64 2157429403}
!172 = !{i64 2157430566, i64 2157430442}
!173 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!174 = !{i64 2155195344, i64 2155195219}
!175 = !{i64 2155195867, i64 2155196927, i64 2155196960, i64 2155196995, i64 2155197011, i64 2155197938, i64 2155197996, i64 2155198045, i64 2155197855, i64 2155197070, i64 2155197102, i64 2155197185}
!176 = !{i64 2155198344, i64 2155198220}
!177 = !{i64 2155199712, i64 2155199587}
!178 = !{i64 2155200235, i64 2155201304, i64 2155201337, i64 2155201372, i64 2155201388, i64 2155202315, i64 2155202373, i64 2155202422, i64 2155202232, i64 2155201447, i64 2155201479, i64 2155201562}
!179 = !{i64 2155202721, i64 2155202597}
!180 = !{i64 2148540947, i64 2148540986, i64 2148541007, i64 2148541044, i64 2148541067, i64 2148540938}
end_hunk_0
