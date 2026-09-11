Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_crecord?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@crec_ct_tv:bb.a
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %ctype_rawchild.exit
  %.2136 = phi i32 [ %i.dj, %ctype_rawchild.exit ], [ %i.fa, %bb.ag ] ; 2 uses
  %.1127 = phi ptr [ %i.dn, %ctype_rawchild.exit ], [ %i.cq, %bb.ag ] ; 2 uses
  %.3 = phi ptr [ %.1125, %ctype_rawchild.exit ], [ %.0124, %bb.ag ] ; 3 uses
  %.1 = phi i32 [ %i.dz, %ctype_rawchild.exit ], [ %.0122, %bb.ag ] ; 2 uses
  %i.fb = load i32, ptr %.3, align 8, !tbaa !58
  %i.fc = icmp ult i32 %i.fb, 268435456
  %i.fd = icmp ne i32 %.1, 10
  %or.cond5 = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond5, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fe = trunc nuw nsw i32 %.1 to i16
  %i.ff = or i16 %i.fe, 17920
  %i.fg = trunc i32 %.2136 to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ff, ptr %i.fi, align 4, !tbaa !35
  store i16 %i.fg, ptr %i.fh, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.fj, align 2, !tbaa !35
  %i.fk = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.j, %bb.k, %bb.d, %bb.h, %bb.s, %bb.p, %bb.f, %bb.b
  %.5139 = phi i32 [ %3, %bb.b ], [ %3, %bb.d ], [ %i.w, %bb.f ], [ %i.x, %bb.h ], [ %i.cd, %bb.s ], [ %.1135, %bb.p ], [ %i.ar, %bb.j ], [ %i.ax, %bb.k ]
  %.1132 = phi i64 [ 9, %bb.b ], [ 16, %bb.d ], [ 3, %bb.f ], [ 19, %bb.h ], [ 23, %bb.s ], [ %.0131, %bb.p ], [ 19, %bb.j ], [ 19, %bb.k ]
  %.3129 = phi ptr [ %i.l, %bb.b ], [ %i.r, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.s ], [ %.0126, %bb.p ], [ null, %bb.j ], [ null, %bb.k ]
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.1132
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.af, %bb.z, %bb.ai, %bb.ah, %bb.aj
  %.6 = phi i32 [ %.5139, %bb.aj ], [ %i.dj, %bb.z ], [ %i.et, %bb.af ], [ %i.eh, %bb.ad ], [ %i.fk, %bb.ai ], [ %.2136, %bb.ah ] ; 20 uses
  %.4130 = phi ptr [ %.3129, %bb.aj ], [ %i.cq, %bb.z ], [ %i.cq, %bb.af ], [ %i.cq, %bb.ad ], [ %.1127, %bb.ai ], [ %.1127, %bb.ah ] ; 7 uses
  %.5 = phi ptr [ %i.fm, %bb.aj ], [ %.0124, %bb.z ], [ %.2, %bb.af ], [ %.0124, %bb.ad ], [ %.3, %bb.ai ], [ %.3, %bb.ah ] ; 4 uses
  %i.fn = load i32, ptr %1, align 8, !tbaa !58    ; 3 uses
  %.mask149 = and i32 %i.fn, -268435456
  %i.fo = icmp eq i32 %.mask149, 1342177280
  br i1 %i.fo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fp = and i32 %i.fn, 65535
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.fr = zext nneg i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %.pre161 = load i32, ptr %i.fs, align 8, !tbaa !58
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ft = phi i32 [ %.pre161, %bb.al ], [ %i.fn, %bb.ak ] ; 5 uses
  %.0133 = phi ptr [ %i.fs, %bb.al ], [ %1, %bb.ak ] ; 3 uses
  %i.fu = load i64, ptr %i.b, align 8, !tbaa !48
  %i.fv = inttoptr i64 %i.fu to ptr               ; 2 uses
  %.mask.i.i = and i32 %i.ft, -268435456
  %i.fw = icmp eq i32 %.mask.i.i, 1342177280
  br i1 %i.fw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fx = and i32 %i.ft, 65535
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !56
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %.pre.i.i = load i32, ptr %i.ga, align 8, !tbaa !58
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gb = phi i32 [ %.pre.i.i, %bb.an ], [ %i.ft, %bb.am ] ; 4 uses
  %.017.i.i = phi ptr [ %i.ga, %bb.an ], [ %.0133, %bb.am ] ; 3 uses
  %i.gc = lshr i32 %i.gb, 28
  switch i32 %i.gc, label %bb.au [
    i32 0, label %bb.ap
    i32 2, label %bb.at
  ], !prof !68

bb.ap:                                            ; preds = %bb.ao
  %i.gd = and i32 %i.gb, 67108864
  %.not.i.i = icmp eq i32 %i.gd, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !60 ; 3 uses
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %switch.selectcmp.i.i = icmp eq i32 %i.gf, 4
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 13, i32 10
  %switch.selectcmp24.i.i = icmp eq i32 %i.gf, 8
  %switch.select25.i.i = select i1 %switch.selectcmp24.i.i, i32 14, i32 %switch.select.i.i
  br label %crec_ct2irt.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.gg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = xor i32 %i.gg, 31                       ; 2 uses
  %i.gi = icmp samesign ult i32 %i.gh, 4
  br i1 %i.gi, label %bb.as, label %crec_ct2irt.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.gj = shl nuw nsw i32 %i.gh, 1
  %i.gk = lshr i32 %i.gb, 23
  %.lobit.i.i = and i32 %i.gk, 1
  %i.gl = add nuw nsw i32 %.lobit.i.i, 15
  %i.gm = add nuw nsw i32 %i.gl, %i.gj
  br label %crec_ct2irt.exit.i

bb.at:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !60
  %i.gp = icmp eq i32 %i.go, 8
  %i.gq = select i1 %i.gp, i32 9, i32 5
  br label %crec_ct2irt.exit.i

bb.au:                                            ; preds = %bb.ao
  %i.gr = and i32 %i.gb, -201326592
  %i.gs = icmp eq i32 %i.gr, 872415232
  br i1 %i.gs, label %bb.av, label %crec_ct2irt.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !60 ; 2 uses
  %switch.selectcmp26.i.i = icmp eq i32 %i.gu, 8
  %switch.select27.i.i = select i1 %switch.selectcmp26.i.i, i32 13, i32 10
  %switch.selectcmp28.i.i = icmp eq i32 %i.gu, 16
  %switch.select29.i.i = select i1 %switch.selectcmp28.i.i, i32 14, i32 %switch.select27.i.i
  br label %crec_ct2irt.exit.i

crec_ct2irt.exit.i:                               ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.1.i.i = phi i32 [ %switch.select29.i.i, %bb.av ], [ %switch.select25.i.i, %bb.aq ], [ %i.gq, %bb.at ], [ %i.gm, %bb.as ], [ 10, %bb.au ], [ 10, %bb.ar ] ; 33 uses
  %i.gv = load i32, ptr %.5, align 8, !tbaa !58   ; 8 uses
  %.mask.i235.i = and i32 %i.gv, -268435456
  %i.gw = icmp eq i32 %.mask.i235.i, 1342177280
  br i1 %i.gw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %crec_ct2irt.exit.i
  %i.gx = and i32 %i.gv, 65535
  %i.gy = load ptr, ptr %i.fv, align 8, !tbaa !56
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gz ; 2 uses
  %.pre.i248.i = load i32, ptr %i.ha, align 8, !tbaa !58
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %crec_ct2irt.exit.i
  %i.hb = phi i32 [ %.pre.i248.i, %bb.aw ], [ %i.gv, %crec_ct2irt.exit.i ] ; 4 uses
  %.017.i236.i = phi ptr [ %i.ha, %bb.aw ], [ %.5, %crec_ct2irt.exit.i ] ; 3 uses
  %i.hc = lshr i32 %i.hb, 28
  switch i32 %i.hc, label %bb.bd [
    i32 0, label %bb.ay
    i32 2, label %bb.bc
  ], !prof !68

bb.ay:                                            ; preds = %bb.ax
  %i.hd = and i32 %i.hb, 67108864
  %.not.i238.i = icmp eq i32 %i.hd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %.017.i236.i, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !60 ; 3 uses
  br i1 %.not.i238.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %switch.selectcmp.i239.i = icmp eq i32 %i.hf, 4
  %switch.select.i240.i = select i1 %switch.selectcmp.i239.i, i32 13, i32 10
  %switch.selectcmp24.i241.i = icmp eq i32 %i.hf, 8
  %switch.select25.i242.i = select i1 %switch.selectcmp24.i241.i, i32 14, i32 %switch.select.i240.i
  br label %crec_ct2irt.exit249.i

bb.ba:                                            ; preds = %bb.ay
  %i.hg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hf, i1 true)
  %i.hh = xor i32 %i.hg, 31                       ; 2 uses
  %i.hi = icmp samesign ult i32 %i.hh, 4
  br i1 %i.hi, label %bb.bb, label %crec_ct2irt.exit249.i

bb.bb:                                            ; preds = %bb.ba
  %i.hj = shl nuw nsw i32 %i.hh, 1
  %i.hk = lshr i32 %i.hb, 23
  %.lobit.i243.i = and i32 %i.hk, 1
  %i.hl = add nuw nsw i32 %.lobit.i243.i, 15
  %i.hm = add nuw nsw i32 %i.hl, %i.hj
  br label %crec_ct2irt.exit249.i

bb.bc:                                            ; preds = %bb.ax
  %i.hn = getelementptr inbounds nuw i8, ptr %.017.i236.i, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !60
  %i.hp = icmp eq i32 %i.ho, 8
  %i.hq = select i1 %i.hp, i32 9, i32 5
  br label %crec_ct2irt.exit249.i

bb.bd:                                            ; preds = %bb.ax
  %i.hr = and i32 %i.hb, -201326592
  %i.hs = icmp eq i32 %i.hr, 872415232
  br i1 %i.hs, label %bb.be, label %crec_ct2irt.exit249.i

bb.be:                                            ; preds = %bb.bd
  %i.ht = getelementptr inbounds nuw i8, ptr %.017.i236.i, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !60 ; 2 uses
  %switch.selectcmp26.i244.i = icmp eq i32 %i.hu, 8
  %switch.select27.i245.i = select i1 %switch.selectcmp26.i244.i, i32 13, i32 10
  %switch.selectcmp28.i246.i = icmp eq i32 %i.hu, 16
  %switch.select29.i247.i = select i1 %switch.selectcmp28.i246.i, i32 14, i32 %switch.select27.i245.i
  br label %crec_ct2irt.exit249.i

crec_ct2irt.exit249.i:                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.1.i237.i = phi i32 [ %switch.select29.i247.i, %bb.be ], [ %switch.select25.i242.i, %bb.az ], [ %i.hq, %bb.bc ], [ %i.hm, %bb.bb ], [ 10, %bb.bd ], [ 10, %bb.ba ] ; 22 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0133, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !60 ; 10 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !60 ; 4 uses
  %i.hz = or i32 %i.gv, %i.ft
  %or.cond233.not.i = icmp ult i32 %i.hz, 1073741824
  br i1 %or.cond233.not.i, label %bb.bf, label %bb.cv

bb.bf:                                            ; preds = %crec_ct2irt.exit249.i
  %i.ia = lshr i32 %i.ft, 24
  %i.ib = and i32 %i.ia, 60
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = lshr i64 -849210047686250463, %i.ic
  %i.ie = trunc i64 %i.id to i8
  %i.if = shl i8 %i.ie, 3
  %i.ig = and i8 %i.if, 120
  %i.ih = lshr i32 %i.gv, 24
  %i.ii = and i32 %i.ih, 60
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = lshr i64 -849210047686250463, %i.ij
  %i.il = trunc i64 %i.ik to i8
  %i.im = and i8 %i.il, 15
  %trunc.i = add nuw i8 %i.im, %i.ig
  switch i8 %trunc.i, label %bb.cv [
    i8 0, label %bb.bx
    i8 1, label %bb.bg
    i8 2, label %bb.bg
    i8 8, label %bb.bq
    i8 9, label %bb.bq
    i8 11, label %bb.bz
    i8 10, label %bb.ca
    i8 13, label %bb.ce
    i8 14, label %bb.ce
    i8 16, label %bb.cg
    i8 17, label %bb.cg
    i8 19, label %bb.ci
    i8 18, label %bb.cj
    i8 25, label %bb.cm
    i8 26, label %bb.cm
    i8 27, label %bb.cn
    i8 63, label %bb.ct
    i8 54, label %bb.ct
    i8 42, label %bb.cr
    i8 41, label %bb.cq
    i8 45, label %bb.bx
    i8 46, label %bb.bx
    i8 47, label %bb.bx
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %.not231.i = icmp eq i32 %.1.i237.i, 10
  br i1 %.not231.i, label %bb.cv, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.in = add nsw i32 %.1.i237.i, -13
  %or.cond.i = icmp ult i32 %i.in, 2
  br i1 %or.cond.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.io = call i32 @lj_ir_knum_u64(ptr noundef nonnull %0, i64 noundef 0) #8
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.ip = add nsw i32 %.1.i237.i, -21
  %or.cond3.i = icmp ult i32 %i.ip, 2
  br i1 %or.cond3.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iq = call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 0) #8
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ir = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.is = phi i32 [ %i.io, %bb.bi ], [ %i.iq, %bb.bk ], [ %i.ir, %bb.bl ]
  %magicptr.i.i = ptrtoint ptr %.4130 to i64
  switch i64 %magicptr.i.i, label %bb.bn [
    i64 0, label %crec_isnonzero.exit.thread262.i
    i64 1, label %crec_isnonzero.exit.thread.i
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.it = load i32, ptr %.5, align 8, !tbaa !58
  %i.iu = and i32 %i.it, 67108864
  %.not.i250.i = icmp eq i32 %i.iu, 0
  %i.iv = load i32, ptr %i.hx, align 4, !tbaa !60 ; 2 uses
  br i1 %.not.i250.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iw = icmp eq i32 %i.iv, 4
  br i1 %i.iw, label %.split277.i, label %.split274.i

.split277.i:                                      ; preds = %bb.bo
  %i.ix = load float, ptr %.4130, align 4, !tbaa !88
  %.fr280.i = freeze float %i.ix
  %i.iy = fcmp une float %.fr280.i, 0.000000e+00
  br i1 %i.iy, label %crec_isnonzero.exit.thread.i, label %crec_isnonzero.exit.thread262.i

.split274.i:                                      ; preds = %bb.bo
  %i.iz = load double, ptr %.4130, align 8, !tbaa !90
  %.fr.i = freeze double %i.iz
  %i.ja = fcmp une double %.fr.i, 0.000000e+00
  br i1 %i.ja, label %crec_isnonzero.exit.thread.i, label %crec_isnonzero.exit.thread262.i

bb.bp:                                            ; preds = %bb.bn
  switch i32 %i.iv, label %.split.i [
    i32 1, label %.split271.i
    i32 2, label %.split268.i
    i32 4, label %crec_isnonzero.exit.i
  ]

.split271.i:                                      ; preds = %bb.bp
  %i.jb = load i8, ptr %.4130, align 1, !tbaa !35
  %.fr283.i = freeze i8 %i.jb
  %.not154 = icmp eq i8 %.fr283.i, 0
  br i1 %.not154, label %crec_isnonzero.exit.thread262.i, label %crec_isnonzero.exit.thread.i

.split268.i:                                      ; preds = %bb.bp
  %i.jc = load i16, ptr %.4130, align 2, !tbaa !91
  %.fr282.i = freeze i16 %i.jc
  %.not153 = icmp eq i16 %.fr282.i, 0
  br i1 %.not153, label %crec_isnonzero.exit.thread262.i, label %crec_isnonzero.exit.thread.i

.split.i:                                         ; preds = %bb.bp
  %i.jd = load i64, ptr %.4130, align 8, !tbaa !92
  %.fr284.i = freeze i64 %i.jd
  %.not155 = icmp eq i64 %.fr284.i, 0
  br i1 %.not155, label %crec_isnonzero.exit.thread262.i, label %crec_isnonzero.exit.thread.i

crec_isnonzero.exit.i:                            ; preds = %bb.bp
  %i.je = load i32, ptr %.4130, align 4, !tbaa !31
  %.fr281.i = freeze i32 %i.je
  %.not152 = icmp eq i32 %.fr281.i, 0
  br i1 %.not152, label %crec_isnonzero.exit.thread262.i, label %crec_isnonzero.exit.thread.i

crec_isnonzero.exit.thread.i:                     ; preds = %crec_isnonzero.exit.i, %.split.i, %.split268.i, %.split271.i, %.split274.i, %.split277.i, %bb.bm
  br label %crec_isnonzero.exit.thread262.i

crec_isnonzero.exit.thread262.i:                  ; preds = %crec_isnonzero.exit.thread.i, %crec_isnonzero.exit.i, %.split.i, %.split268.i, %.split271.i, %.split274.i, %.split277.i, %bb.bm
  %.0.i260.i = phi i32 [ 1, %crec_isnonzero.exit.thread.i ], [ 0, %crec_isnonzero.exit.i ], [ 0, %.split277.i ], [ 0, %.split.i ], [ 0, %.split268.i ], [ 0, %.split271.i ], [ 0, %.split274.i ], [ 0, %bb.bm ]
  %i.jf = phi i32 [ 2304, %crec_isnonzero.exit.thread.i ], [ 2048, %crec_isnonzero.exit.i ], [ 2048, %.split277.i ], [ 2048, %.split.i ], [ 2048, %.split268.i ], [ 2048, %.split271.i ], [ 2048, %.split274.i ], [ 2048, %bb.bm ]
  %5 = or i32 %i.jf, %.1.i237.i
  %i.jg = trunc nuw nsw i32 %5 to i16
  %i.jh = or i16 %i.jg, 128
  %i.ji = trunc i32 %.6 to i16
  %i.jj = trunc i32 %i.is to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.jh, ptr %i.jl, align 4, !tbaa !35
  store i16 %i.ji, ptr %i.jk, align 8, !tbaa !35
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.jj, ptr %i.jm, align 2, !tbaa !35
  %i.jn = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.jo = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %.0.i260.i) #8
  br label %bb.bx

bb.bq:                                            ; preds = %bb.ce, %bb.bf, %bb.bf
  %.0212.i = phi i32 [ %.1.i237.i, %bb.bf ], [ %.1.i237.i, %bb.bf ], [ 22, %bb.ce ] ; 4 uses
  %.0211.i = phi i32 [ %i.hy, %bb.bf ], [ %i.hy, %bb.bf ], [ 8, %bb.ce ] ; 3 uses
  %.0210.i = phi i32 [ %i.gv, %bb.bf ], [ %i.gv, %bb.bf ], [ 8388608, %bb.ce ]
  %i.jp = icmp eq i32 %.1.i.i, 10
  %i.jq = icmp eq i32 %.0212.i, 10
  %or.cond5.i = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %or.cond5.i, label %bb.cv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = icmp eq i32 %i.hw, 8
  %i.js = icmp ult i32 %.0211.i, 8
  %or.cond7.i = select i1 %i.jr, i1 %i.js, i1 false
  %i.jt = and i32 %.0210.i, 8388608
  %.not230.i = icmp eq i32 %i.jt, 0
  %or.cond234.i = and i1 %or.cond7.i, %.not230.i
  br i1 %or.cond234.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ju = trunc nuw nsw i32 %.1.i.i to i16
  %i.jv = or i16 %i.ju, 23296
  %i.jw = trunc i32 %.6 to i16
  %i.jx = icmp samesign ult i32 %.0211.i, 4
  %i.jy = select i1 %i.jx, i32 19, i32 %.0212.i
  %i.jz = shl nuw nsw i32 %.1.i.i, 5
  %i.ka = or i32 %i.jy, %i.jz
  %i.kb = trunc nuw nsw i32 %i.ka to i16
  %i.kc = or i16 %i.kb, 2048
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.jv, ptr %i.ke, align 4, !tbaa !35
  store i16 %i.jw, ptr %i.kd, align 8, !tbaa !35
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.kc, ptr %i.kf, align 2, !tbaa !35
  %i.kg = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bx

bb.bt:                                            ; preds = %bb.br
  %i.kh = icmp ult i32 %i.hw, 8
  %i.ki = icmp eq i32 %.0211.i, 8
  %or.cond9.i = select i1 %i.kh, i1 %i.ki, i1 false
  br i1 %or.cond9.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kj = icmp samesign ult i32 %i.hw, 4
  %i.kk = select i1 %i.kj, i32 19, i32 %.1.i.i    ; 2 uses
  %i.kl = trunc nuw nsw i32 %i.kk to i16
  %i.km = or i16 %i.kl, 23296
  %i.kn = trunc i32 %.6 to i16
  %i.ko = shl nuw nsw i32 %i.kk, 5
  %i.kp = or i32 %.0212.i, %i.ko
  %i.kq = trunc nuw nsw i32 %i.kp to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.km, ptr %i.ks, align 4, !tbaa !35
  store i16 %i.kn, ptr %i.kr, align 8, !tbaa !35
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.kq, ptr %i.kt, align 2, !tbaa !35
  %i.ku = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.kv = icmp eq i32 %.0212.i, 19
  br i1 %i.kv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kw = call i32 @lj_opt_narrow_toint(ptr noundef nonnull %0, i32 noundef %.6) #8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cq, %bb.cl, %bb.ck, %bb.ch, %bb.cf, %bb.cd, %bb.cc, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %crec_isnonzero.exit.thread262.i, %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %.0213.i = phi i32 [ %.1.i.i, %crec_isnonzero.exit.thread262.i ], [ %.1.i.i, %bb.bu ], [ %.1.i.i, %bb.bw ], [ %.1.i.i, %bb.bv ], [ %.1.i.i, %bb.bs ], [ %.1214.i, %bb.cc ], [ %.1214.i, %bb.cd ], [ %.1.i.i, %bb.cf ], [ %.1.i.i, %bb.ch ], [ %.1.i.i, %bb.cl ], [ %.1.i.i, %bb.ck ], [ %.1.i.i, %bb.cq ], [ %.1.i.i, %bb.bf ], [ %.1.i.i, %bb.bf ], [ %.1.i.i, %bb.bf ], [ %.1.i.i, %bb.bf ]
  %.0209.i = phi i32 [ %i.jo, %crec_isnonzero.exit.thread262.i ], [ %i.ku, %bb.bu ], [ %i.kw, %bb.bw ], [ %.6, %bb.bv ], [ %i.kg, %bb.bs ], [ %i.me, %bb.cc ], [ %i.mp, %bb.cd ], [ %i.mz, %bb.cf ], [ %i.nn, %bb.ch ], [ %i.og, %bb.cl ], [ %.3.i, %bb.ck ], [ %.6, %bb.cq ], [ %.6, %bb.bf ], [ %.6, %bb.bf ], [ %.6, %bb.bf ], [ %.6, %bb.bf ] ; 2 uses
  %i.kx = icmp eq i32 %2, 0
  br i1 %i.kx, label %crec_ct_ct.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ky = trunc nuw nsw i32 %.0213.i to i16
  %i.kz = or i16 %i.ky, 19968
  %i.la = trunc i32 %2 to i16
  %i.lb = trunc i32 %.0209.i to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.kz, ptr %i.ld, align 4, !tbaa !35
  store i16 %i.la, ptr %i.lc, align 8, !tbaa !35
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.lb, ptr %i.le, align 2, !tbaa !35
  %i.lf = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %crec_ct_ct.exit

bb.bz:                                            ; preds = %bb.bf
  %i.lg = trunc nuw nsw i32 %.1.i237.i to i16
  %i.lh = or i16 %i.lg, 17920
  %i.li = trunc i32 %.6 to i16
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.lh, ptr %i.lk, align 4, !tbaa !35
  store i16 %i.li, ptr %i.lj, align 8, !tbaa !35
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.ll, align 2, !tbaa !35
  %i.lm = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bf
  %.1.i = phi i32 [ %i.lm, %bb.bz ], [ %.6, %bb.bf ]
  %i.ln = icmp eq i32 %.1.i.i, 10
  %i.lo = icmp eq i32 %.1.i237.i, 10
  %or.cond13.i = select i1 %i.ln, i1 true, i1 %i.lo
  br i1 %or.cond13.i, label %bb.cv, label %bb.cb

bb.cb:                                            ; preds = %bb.cs, %bb.ca
  %.1214.i = phi i32 [ %.1.i.i, %bb.ca ], [ %i.qk, %bb.cs ] ; 5 uses
  %.2.i = phi i32 [ %.1.i, %bb.ca ], [ %.6, %bb.cs ] ; 2 uses
  %i.lp = icmp ult i32 %i.hw, 8
  br i1 %i.lp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lq = trunc i32 %.2.i to i16
  %i.lr = trunc nuw nsw i32 %.1.i237.i to i16
  %i.ls = or i16 %i.lr, 4768
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 23317, ptr %i.lu, align 4, !tbaa !35
  store i16 %i.lq, ptr %i.lt, align 8, !tbaa !35
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %i.ls, ptr %i.lv, align 2, !tbaa !35
  %i.lw = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.lx = icmp samesign ult i32 %i.hw, 4
  %i.ly = trunc nuw nsw i32 %.1214.i to i16
  %i.lz = select i1 %i.lx, i16 19, i16 %i.ly      ; 2 uses
  %i.ma = or i16 %i.lz, 23296
  %i.mb = trunc i32 %i.lw to i16
  %i.mc = shl nuw nsw i16 %i.lz, 5
  %i.md = or disjoint i16 %i.mc, 21
  store i16 %i.ma, ptr %i.lu, align 4, !tbaa !35
  store i16 %i.mb, ptr %i.lt, align 8, !tbaa !35
  store i16 %i.md, ptr %i.lv, align 2, !tbaa !35
  %i.me = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bx

bb.cd:                                            ; preds = %bb.cb
  %i.mf = trunc nuw nsw i32 %.1214.i to i16
  %i.mg = or i16 %i.mf, 23296
  %i.mh = trunc i32 %.2.i to i16
  %i.mi = shl nuw nsw i32 %.1214.i, 5
  %i.mj = or i32 %i.mi, %.1.i237.i
  %i.mk = trunc nuw nsw i32 %i.mj to i16
  %i.ml = or i16 %i.mk, 4096
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.mg, ptr %i.mn, align 4, !tbaa !35
  store i16 %i.mh, ptr %i.mm, align 8, !tbaa !35
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.ml, ptr %i.mo, align 2, !tbaa !35
  %i.mp = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bx

bb.ce:                                            ; preds = %bb.bf, %bb.bf
  %i.mq = and i32 %i.hw, 8
  %.not228.i = icmp eq i32 %i.mq, 0
  br i1 %.not228.i, label %bb.bq, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mr = trunc nuw nsw i32 %.1.i.i to i16        ; 2 uses
  %i.ms = or i16 %i.mr, 23296
  %i.mt = trunc i32 %.6 to i16
  %i.mu = shl nuw nsw i16 %i.mr, 5
  %i.mv = or disjoint i16 %i.mu, 9
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ms, ptr %i.mx, align 4, !tbaa !35
  store i16 %i.mt, ptr %i.mw, align 8, !tbaa !35
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.mv, ptr %i.my, align 2, !tbaa !35
  %i.mz = call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bx

bb.cg:                                            ; preds = %bb.cm, %bb.bf, %bb.bf
  %i.na = icmp eq i32 %.1.i.i, 10
  %i.nb = icmp eq i32 %.1.i237.i, 10
  %or.cond15.i = select i1 %i.na, i1 true, i1 %i.nb
  br i1 %or.cond15.i, label %bb.cv, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nc = trunc nuw nsw i32 %.1.i.i to i16
  %i.nd = or i16 %i.nc, 23296
  %i.ne = trunc i32 %.6 to i16
  %i.nf = icmp ult i32 %i.hy, 4
  %i.ng = select i1 %i.nf, i32 19, i32 %.1.i237.i
end_hunk_0
