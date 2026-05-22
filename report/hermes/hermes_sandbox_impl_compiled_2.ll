inline.NumInlined: 21302
inline.NumDeleted: 19
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Asem0x3A0x3ABlockContext0x3A0x3AensureScopedNamesAreUnique0x28hermes0x3A0x3Asem0x3A0x3ABlockContext0x3A0x3AIsFunctionBody0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x29:bb.a
  %i.bf = add i32 %.0.copyload.i2870, %i.be
  %i.bg = add i32 %i.b, -144                      ; 3 uses
  %i.bh = add i32 %i.b, -8
  %i.bi = add i32 %i.b, -152                      ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 18 uses
  %i.bk = add nuw nsw i64 %i.bj, 12               ; 6 uses
  %i.bl = add nuw nsw i64 %i.bj, 8                ; 4 uses
  %i.bm = add nuw nsw i64 %i.bj, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.r, 216               ; 3 uses
  %i.bo = add nuw nsw i64 %i.r, 212               ; 3 uses
  %i.bp = add i32 %i.b, -112
  %i.bq = add i32 %i.b, -12                       ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.be, %bb.f
  %.02429 = phi i32 [ %.0.copyload.i2870, %bb.f ], [ %i.nc, %bb.be ] ; 2 uses
  %i.br = zext i32 %.02429 to i64
  %.val2729 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2729, i64 %i.br
  %.0.copyload.i2871 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2871) #7, !srcloc !19
  %i.bt = zext i32 %.0.copyload.i2871 to i64      ; 5 uses
  %.val2728 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2728, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %.0.copyload.i2872 = load i32, ptr %i.bv, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2872) #7, !srcloc !19
  %.not2531 = icmp eq i32 %.0.copyload.i2872, 0
  br i1 %.not2531, label %bb.be, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = zext i32 %.0.copyload.i2872 to i64      ; 7 uses
  %.val2727 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2727, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i2873 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2873) #7, !srcloc !19
  %.not2532 = icmp eq i32 %.0.copyload.i2873, 63
  br i1 %.not2532, label %bb.i, label %bb.be

bb.i:                                             ; preds = %bb.h
  %.val2726 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2726, i64 %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.0.copyload.i2874 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2874) #7, !srcloc !19
  %.off = add i32 %.0.copyload.i2874, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %.val2747 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2747, i64 %i.bt
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 73
  %.0.copyload.i2875 = load i8, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2875) #7, !srcloc !20
  %.not2534 = icmp eq i8 %.0.copyload.i2875, 0
  br i1 %.not2534, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.i, %bb.j
  %.val2746 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2746, i64 %i.bt
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %.0.copyload.i2876 = load i8, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2876) #7, !srcloc !20
  %.not2535 = icmp eq i8 %.0.copyload.i2876, 0
  br i1 %.not2535, label %.loopexit3055, label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j
  %.val2725 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2725, i64 %i.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %.0.copyload.i2877 = load i32, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2877) #7, !srcloc !19
  %.val2745 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2745, i64 %i.at
  %.0.copyload.i2878 = load i8, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2878) #7, !srcloc !20
  %i.ci = and i8 %.0.copyload.i2878, 1
  %.not2536 = icmp eq i8 %i.ci, 0                 ; 2 uses
  %i.cj = select i1 %.not2536, i32 %.0.copyload.i2877, i32 8 ; 2 uses
  %.not2537 = icmp eq i32 %i.cj, 0
  br i1 %.not2537, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val2724 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2724, i64 %i.bw
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %.0.copyload.i2879 = load i32, ptr %i.cl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2879) #7, !srcloc !19
  %.val2723 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2723, i64 %i.ar
  %.0.copyload.i2880 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2880) #7, !srcloc !19
  %i.cn = select i1 %.not2536, i32 %.0.copyload.i2880, i32 %i.bg ; 2 uses
  %i.co = add i32 %i.cj, -1                       ; 2 uses
  %i.cp = lshr i32 %.0.copyload.i2879, 4
  %i.cq = lshr i32 %.0.copyload.i2879, 9
  %i.cr = xor i32 %i.cp, %i.cq
  %i.cs = and i32 %i.cr, %i.co                    ; 2 uses
  %i.ct = shl nuw nsw i32 %i.cs, 2
  %i.cu = add i32 %i.cn, %i.ct                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %.val2722 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2722, i64 %i.cv
  %.0.copyload.i2881 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2881) #7, !srcloc !19
  %i.cx = icmp eq i32 %.0.copyload.i2879, %.0.copyload.i2881
  br i1 %i.cx, label %.loopexit3055, label %.preheader3054

.preheader3054:                                   ; preds = %bb.l, %bb.n
  %.02468 = phi i32 [ %i.dc, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.02459 = phi i32 [ %i.dh, %bb.n ], [ %i.cu, %bb.l ] ; 2 uses
  %.02442 = phi i32 [ %i.de, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.02437 = phi i32 [ %.0.copyload.i2882, %bb.n ], [ %.0.copyload.i2881, %bb.l ] ; 2 uses
  %.02431 = phi i32 [ %i.df, %bb.n ], [ %i.cs, %bb.l ]
  %i.cy = icmp eq i32 %.02437, -4
  %.not2540 = icmp eq i32 %.02468, 0              ; 2 uses
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader3054
  %i.cz = select i1 %.not2540, i32 %.02459, i32 %.02468
  br label %bb.o

bb.n:                                             ; preds = %.preheader3054
  %i.da = icmp eq i32 %.02437, -8
  %i.db = select i1 %i.da, i1 %.not2540, i1 false
  %i.dc = select i1 %i.db, i32 %.02459, i32 %.02468
  %i.dd = add i32 %.02431, %.02442
  %i.de = add i32 %.02442, 1
  %i.df = and i32 %i.dd, %i.co                    ; 2 uses
  %i.dg = shl i32 %i.df, 2
  %i.dh = add i32 %i.dg, %i.cn                    ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %.val2721 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2721, i64 %i.di
  %.0.copyload.i2882 = load i32, ptr %i.dj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2882) #7, !srcloc !19
  %.not2539 = icmp eq i32 %.0.copyload.i2879, %.0.copyload.i2882
  br i1 %.not2539, label %.loopexit3055, label %.preheader3054

bb.o:                                             ; preds = %bb.k, %bb.m
  %.12450 = phi i32 [ %i.cz, %bb.m ], [ 0, %bb.k ]
  %.val2720 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2720, i64 %i.bj
  %.0.copyload.i2883 = load i32, ptr %i.dk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2883) #7, !srcloc !19
  %i.dl = lshr i32 %.0.copyload.i2883, 1          ; 2 uses
  %i.dm = shl i32 %i.dl, 2
  %i.dn = add i32 %i.dm, 4
  %.val2719 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val2719, i64 %i.bk
  %.0.copyload.i2884 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2884) #7, !srcloc !19
  %i.dp = and i32 %.0.copyload.i2883, 1           ; 2 uses
  %.not2541 = icmp eq i32 %i.dp, 0
  %i.dq = select i1 %.not2541, i32 %.0.copyload.i2884, i32 8 ; 5 uses
  %i.dr = mul i32 %i.dq, 3
  %.not2542 = icmp ult i32 %i.dn, %i.dr
  br i1 %.not2542, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = shl i32 %i.dq, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dt = xor i32 %i.dl, -1
  %i.du = add i32 %i.dq, %i.dt
  %.val2718 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2718, i64 %i.bj
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.0.copyload.i2885 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2885) #7, !srcloc !19
  %i.dx = sub i32 %i.du, %.0.copyload.i2885
  %i.dy = lshr i32 %i.dq, 3
  %i.dz = icmp ugt i32 %i.dx, %i.dy
  br i1 %i.dz, label %.loopexit3053, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.12469 = phi i32 [ %i.ds, %bb.p ], [ %i.dq, %bb.q ] ; 3 uses
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.eb = add i32 %i.ea, -32                      ; 5 uses
  store i32 %i.eb, ptr %i.a, align 8, !tbaa !7
  %i.ec = icmp ugt i32 %.12469, 7
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = add i32 %.12469, -1
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = or i64 %i.ef, %i.ee                     ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = or i64 %i.eh, %i.eg                     ; 2 uses
  %i.ej = lshr i64 %i.ei, 4
  %i.ek = or i64 %i.ej, %i.ei                     ; 2 uses
  %i.el = lshr i64 %i.ek, 8
  %i.em = or i64 %i.el, %i.ek                     ; 2 uses
  %i.en = lshr i64 %i.em, 16
  %i.eo = or i64 %i.en, %i.em
  %i.ep = trunc nuw i64 %i.eo to i32
  %i.eq = add i32 %i.ep, 1                        ; 2 uses
  %4 = icmp ult i32 %i.eq, 65
  %5 = select i1 %4, i32 64, i32 %i.eq
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.22470 = phi i32 [ %5, %bb.s ], [ %.12469, %bb.r ] ; 6 uses
  %.val2717 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val2717, i64 %i.bj
  %.0.copyload.i2886 = load i32, ptr %i.er, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2886) #7, !srcloc !19
  %i.es = and i32 %.0.copyload.i2886, 1
  %.not2543 = icmp eq i32 %i.es, 0
  br i1 %.not2543, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = icmp ult i32 %.22470, 8
  br i1 %i.et, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val2716 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2716, i64 %i.bl
  %.0.copyload.i2887 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2887) #7, !srcloc !19
  switch i32 %.0.copyload.i2887, label %bb.w [
    i32 -8, label %bb.x
    i32 -4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ev = zext i32 %i.eb to i64
  %.val2808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val2808, i64 %i.ev
  store i32 %.0.copyload.i2887, ptr %i.ew, align 1
  %i.ex = add i32 %i.ea, -28
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.12460 = phi i32 [ %i.ex, %bb.w ], [ %i.eb, %bb.v ], [ %i.eb, %bb.v ] ; 4 uses
  %.val2715 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2715, i64 %i.bk
  %.0.copyload.i2888 = load i32, ptr %i.ey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2888) #7, !srcloc !19
  switch i32 %.0.copyload.i2888, label %bb.y [
    i32 -8, label %bb.z
    i32 -4, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ez = zext i32 %.12460 to i64
  %.val2807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2807, i64 %i.ez
  store i32 %.0.copyload.i2888, ptr %i.fa, align 1
  %i.fb = add i32 %.12460, 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.y
  %.22461 = phi i32 [ %i.fb, %bb.y ], [ %.12460, %bb.x ], [ %.12460, %bb.x ] ; 4 uses
  %.val2714 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2714, i64 %i.bj
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.0.copyload.i2889 = load i32, ptr %i.fd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2889) #7, !srcloc !19
  switch i32 %.0.copyload.i2889, label %bb.aa [
    i32 -8, label %bb.ab
    i32 -4, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fe = zext i32 %.22461 to i64
  %.val2806 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2806, i64 %i.fe
  store i32 %.0.copyload.i2889, ptr %i.ff, align 1
  %i.fg = add i32 %.22461, 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.aa
  %.32462 = phi i32 [ %i.fg, %bb.aa ], [ %.22461, %bb.z ], [ %.22461, %bb.z ] ; 4 uses
  %.val2713 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2713, i64 %i.bj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %.0.copyload.i2890 = load i32, ptr %i.fi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2890) #7, !srcloc !19
  switch i32 %.0.copyload.i2890, label %bb.ac [
    i32 -8, label %bb.ad
    i32 -4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fj = zext i32 %.32462 to i64
  %.val2805 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val2805, i64 %i.fj
  store i32 %.0.copyload.i2890, ptr %i.fk, align 1
  %i.fl = add i32 %.32462, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ab, %bb.ac
  %.42463 = phi i32 [ %i.fl, %bb.ac ], [ %.32462, %bb.ab ], [ %.32462, %bb.ab ] ; 4 uses
  %.val2712 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val2712, i64 %i.bj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %.0.copyload.i2891 = load i32, ptr %i.fn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2891) #7, !srcloc !19
  switch i32 %.0.copyload.i2891, label %bb.ae [
    i32 -8, label %bb.af
    i32 -4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fo = zext i32 %.42463 to i64
  %.val2804 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val2804, i64 %i.fo
  store i32 %.0.copyload.i2891, ptr %i.fp, align 1
  %i.fq = add i32 %.42463, 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ad, %bb.ae
  %.52464 = phi i32 [ %i.fq, %bb.ae ], [ %.42463, %bb.ad ], [ %.42463, %bb.ad ] ; 4 uses
  %.val2711 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val2711, i64 %i.bj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %.0.copyload.i2892 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2892) #7, !srcloc !19
  switch i32 %.0.copyload.i2892, label %bb.ag [
    i32 -8, label %bb.ah
    i32 -4, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ft = zext i32 %.52464 to i64
  %.val2803 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2803, i64 %i.ft
  store i32 %.0.copyload.i2892, ptr %i.fu, align 1
  %i.fv = add i32 %.52464, 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.af, %bb.ag
  %.62465 = phi i32 [ %i.fv, %bb.ag ], [ %.52464, %bb.af ], [ %.52464, %bb.af ] ; 4 uses
  %.val2710 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val2710, i64 %i.bj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %.0.copyload.i2893 = load i32, ptr %i.fx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2893) #7, !srcloc !19
  switch i32 %.0.copyload.i2893, label %bb.ai [
    i32 -8, label %bb.aj
    i32 -4, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = zext i32 %.62465 to i64
  %.val2802 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val2802, i64 %i.fy
  store i32 %.0.copyload.i2893, ptr %i.fz, align 1
  %i.ga = add i32 %.62465, 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ah, %bb.ai
  %.72466 = phi i32 [ %i.ga, %bb.ai ], [ %.62465, %bb.ah ], [ %.62465, %bb.ah ] ; 4 uses
  %.val2709 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val2709, i64 %i.bj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 36
  %.0.copyload.i2894 = load i32, ptr %i.gc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2894) #7, !srcloc !19
  switch i32 %.0.copyload.i2894, label %bb.ak [
    i32 -8, label %bb.al
    i32 -4, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gd = zext i32 %.72466 to i64
  %.val2801 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val2801, i64 %i.gd
  store i32 %.0.copyload.i2894, ptr %i.ge, align 1
  %i.gf = add i32 %.72466, 4
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.aj, %bb.ak
  %.82467 = phi i32 [ %i.gf, %bb.ak ], [ %.72466, %bb.aj ], [ %.72466, %bb.aj ]
  %.val2708 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val2708, i64 %i.bj
  %.0.copyload.i2895 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2895) #7, !srcloc !19
  %i.gh = and i32 %.0.copyload.i2895, -2
  %.val2800 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val2800, i64 %i.bj
  store i32 %i.gh, ptr %i.gi, align 1
  %i.gj = shl i32 %.22470, 2
  %i.gk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gj) #7
  %.val2799 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val2799, i64 %i.bk
  store i32 %.22470, ptr %i.gl, align 1
  %.val2798 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val2798, i64 %i.bl
  store i32 %i.gk, ptr %i.gm, align 1
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x208u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bi, i32 noundef %i.eb, i32 noundef %.82467) #7
  br label %bb.aq

bb.am:                                            ; preds = %bb.t
  %.val2707 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val2707, i64 %i.bk
  %.0.copyload.i2896 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2896) #7, !srcloc !19
  %.val2706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val2706, i64 %i.bl
  %.0.copyload.i2897 = load i32, ptr %i.go, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2897) #7, !srcloc !19
  %i.gp = icmp ult i32 %.22470, 9
end_hunk_0
