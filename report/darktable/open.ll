Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.om, align 8, !tbaa !2233
  br label %.thread587thread-pre-split

bb.cm:                                            ; preds = %bb.bx
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.oo = load i16, ptr %i.on, align 4, !tbaa !2278
  %.not418 = icmp eq i16 %i.oo, 0
  br i1 %.not418, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread587thread-pre-split

bb.co:                                            ; preds = %bb.cm
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.op, align 8, !tbaa !2233
  br label %.thread587thread-pre-split

.thread587thread-pre-split:                       ; preds = %bb.bv, %bb.cn, %bb.co, %bb.cg, %bb.ch, %bb.cd, %bb.cl, %bb.ck, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr637 = load i32, ptr %i.ar, align 4, !tbaa !2249
  br label %.thread587

.thread587:                                       ; preds = %.thread587thread-pre-split, %bb.br
  %i.oq = phi i32 [ %.pr637, %.thread587thread-pre-split ], [ %i.lg, %bb.br ] ; 2 uses
  switch i32 %i.oq, label %.thread592 [
    i32 43, label %bb.cp
    i32 63, label %bb.cv
    i32 8, label %bb.cx
  ]

bb.cp:                                            ; preds = %.thread587
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.os = tail call i32 @strncasecmp(ptr noundef nonnull %i.or, ptr noundef nonnull @.str.36, i64 noundef 1) #22
  %.not424 = icmp eq i32 %i.os, 0
  br i1 %.not424, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ot = tail call i32 @strcasecmp(ptr noundef nonnull %i.or, ptr noundef nonnull @.str.37) #22
  %.not425 = icmp eq i32 %i.ot, 0
  br i1 %.not425, label %bb.cr, label %.thread592.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !2218
  %i.ox = zext i16 %i.ow to i32                   ; 2 uses
  %i.oy = mul nuw nsw i32 %i.ox, 7
  %i.oz = lshr i32 %i.oy, 2
  %i.pa = uitofp nsz nneg i32 %i.oz to float
  %i.pb = fmul reassoc nnan nsz arcp contract afn float %i.pa, 6.250000e-02
  %i.pc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.pb)
  %i.pd = fptoui float %i.pc to i32
  %i.pe = load i16, ptr %i.ou, align 8, !tbaa !2219 ; 2 uses
  %i.pf = zext i16 %i.pe to i32
  %i.pg = shl nuw nsw i32 %i.pf, 4
  %i.ph = mul i32 %i.pg, %i.pd
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !2276 ; 2 uses
  %i.pl = icmp eq i64 %i.pk, %i.pi
  br i1 %i.pl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.pm = mul nuw nsw i32 %i.ox, 21
  %i.pn = lshr i32 %i.pm, 2
  %i.po = uitofp nsz nneg i32 %i.pn to float
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.po, 6.250000e-02
  %i.pq = tail call reassoc nnan nsz arcp contract afn float @llvm.ceil.f32(float %i.pp)
  %i.pr = uitofp i16 %i.pe to float
  %i.ps = fmul reassoc nnan nsz arcp contract afn float %i.pr, 1.600000e+01
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, %i.pq
  %i.pu = sitofp reassoc nsz arcp contract afn i64 %i.pk to float
  %i.pv = fcmp reassoc nsz arcp contract afn oeq float %i.pt, %i.pu
  br i1 %i.pv, label %bb.cu, label %.thread592.thread

bb.cu:                                            ; preds = %bb.ct
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.pw, align 8, !tbaa !2224
  br label %.thread592.thread

bb.cv:                                            ; preds = %.thread587
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.py = load i32, ptr %i.px, align 8, !tbaa !2229 ; 3 uses
  %.not428 = icmp eq i32 %i.py, 0
  br i1 %.not428, label %.thread592.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !2274 ; 3 uses
  %i.qb = icmp ule i32 %i.qa, %i.py
  %i.qc = shl i32 %i.py, 2
  %.not429 = icmp ugt i32 %i.qa, %i.qc
  %or.cond563 = or i1 %i.qb, %.not429
  br i1 %or.cond563, label %.thread592.thread, label %.preheader697.preheader

.preheader697.preheader:                          ; preds = %bb.cw
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !2274
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.qg = load <4 x i32>, ptr %i.qf, align 4
  %i.qh = insertelement <4 x i32> poison, i32 %i.qa, i64 0
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qe, i64 1
  %i.qj = shufflevector <4 x i32> %i.qi, <4 x i32> %i.qg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qk = lshr <4 x i32> %i.qj, splat (i32 2)
  store <4 x i32> %i.qk, ptr %i.pz, align 4, !tbaa !2274
  br label %.thread592.thread

bb.cx:                                            ; preds = %.thread587
  %i.ql = load i32, ptr %i.jt, align 4, !tbaa !2248
  %.not430 = icmp eq i32 %i.ql, 0
  br i1 %.not430, label %bb.cy, label %..thread596_crit_edge

..thread596_crit_edge:                            ; preds = %bb.cx
  %.unpack437.pre = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack439.pre = load i64, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread596

bb.cy:                                            ; preds = %bb.cx
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !2279 ; 4 uses
  %.not431 = icmp eq i16 %i.qo, -1
  br i1 %.not431, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qq = load i16, ptr %i.qp, align 4, !tbaa !2280
  %.not432 = icmp eq i16 %i.qq, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not432, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qs = load i16, ptr %i.qm, align 4, !tbaa !2281
  %i.qt = load <2 x i16>, ptr %i.qr, align 2, !tbaa !2262
  %i.qu = insertelement <2 x i16> poison, i16 %i.qo, i64 0
  %i.qv = insertelement <2 x i16> %i.qu, i16 %i.qs, i64 1
  %i.qw = add <2 x i16> %i.qt, %i.qv
  store <2 x i16> %i.qw, ptr %i.qr, align 2, !tbaa !2262
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  store i16 %i.qo, ptr %i.qr, align 2, !tbaa !2269
  %i.qx = load i16, ptr %i.qm, align 4, !tbaa !2281 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.qx, ptr %i.qy, align 8, !tbaa !2270
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rb = load <2 x i16>, ptr %i.ra, align 8, !tbaa !2262
  %i.rc = insertelement <2 x i16> poison, i16 %i.qx, i64 0
  %i.rd = insertelement <2 x i16> %i.rc, i16 %i.qo, i64 1
  %i.re = sub <2 x i16> %i.rb, %i.rd
  %i.rf = add <2 x i16> %i.re, splat (i16 1)
  %i.rg = shufflevector <2 x i16> %i.rf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.rg, ptr %i.qz, align 2, !tbaa !2262
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cy, %bb.da, %bb.db
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !2282 ; 6 uses
  %i.rj = icmp ugt i32 %i.ri, 13
  %.unpack437.pre872 = load i64, ptr %i.kx, align 8, !tbaa !2228 ; 4 uses
  %.unpack439.pre874 = load i64, ptr %.elt407, align 8, !tbaa !2228 ; 4 uses
  br i1 %i.rj, label %.thread596, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rk = icmp ne i64 %.unpack437.pre872, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.rl = icmp ne i64 %.unpack439.pre874, 0
  %i.rm = or i1 %i.rk, %i.rl
  br i1 %i.rm, label %bb.de, label %.thread596

bb.de:                                            ; preds = %bb.dd
  %notmask = shl nsw i32 -1, %i.ri
  %i.rn = xor i32 %notmask, -1
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !2283 ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, %i.rn
  br i1 %i.rq, label %.preheader696, label %.thread596

.preheader696:                                    ; preds = %bb.de
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.rs = sub nuw nsw i32 14, %i.ri
  %i.rt = load <4 x i32>, ptr %i.rr, align 4, !tbaa !2274
  %i.ru = insertelement <4 x i32> poison, i32 %i.rs, i64 0
  %i.rv = shufflevector <4 x i32> %i.ru, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rw = lshr <4 x i32> %i.rt, %i.rv
  store <4 x i32> %i.rw, ptr %i.rr, align 4, !tbaa !2274
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !2284
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.sc = lshr exact i32 16384, %i.ri             ; 2 uses
  %i.sd = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.ri, i64 1
  %i.se = lshr exact <4 x i32> <i32 1, i32 16384, i32 poison, i32 poison>, %i.sd
  %i.sf = shufflevector <4 x i32> %i.se, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sg = load <4 x i32>, ptr %i.rx, align 8
  %i.sh = load <2 x i32>, ptr %i.ry, align 8, !tbaa !2274
  %i.si = insertelement <2 x i32> poison, i32 %i.sc, i64 0
  %i.sj = shufflevector <2 x i32> %i.si, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.sk = sdiv <2 x i32> %i.sh, %i.sj
  store <2 x i32> %i.sk, ptr %i.ry, align 8, !tbaa !2274
  %i.sl = sdiv i32 %i.sa, %i.sc
  store i32 %i.sl, ptr %i.rz, align 8, !tbaa !2284
  %.scalar = sub nsw i32 14, %i.ri
  %2 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar, i64 0
  %3 = load i32, ptr %i.sb, align 4, !tbaa !2285
  %i.sm = insertelement <4 x i32> poison, i32 %i.rp, i64 0
  %i.sn = insertelement <4 x i32> %i.sm, i32 %3, i64 1
  %i.so = shufflevector <4 x i32> %i.sn, <4 x i32> %i.sg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %4 = lshr <4 x i32> %i.so, %2
  %i.sp = sdiv <4 x i32> %4, %i.sf
  store <4 x i32> %i.sp, ptr %i.ro, align 8, !tbaa !2274
  br label %.thread596

.thread596:                                       ; preds = %..thread596_crit_edge, %.preheader696, %bb.dc, %bb.dd, %bb.de
  %.unpack439 = phi i64 [ %.unpack439.pre, %..thread596_crit_edge ], [ %.unpack439.pre874, %.preheader696 ], [ %.unpack439.pre874, %bb.dc ], [ 0, %bb.dd ], [ %.unpack439.pre874, %bb.de ]
  %.unpack437 = phi i64 [ %.unpack437.pre, %..thread596_crit_edge ], [ %.unpack437.pre872, %.preheader696 ], [ %.unpack437.pre872, %bb.dc ], [ ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64), %bb.dd ], [ %.unpack437.pre872, %bb.de ]
  %i.sq = icmp eq i64 %.unpack437, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.sr = icmp eq i64 %.unpack439, 0
  %i.ss = and i1 %i.sq, %i.sr
  br i1 %i.ss, label %bb.df, label %.thread592.thread

bb.df:                                            ; preds = %.thread596
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !2218 ; 3 uses
  %.not440 = icmp eq i16 %i.sv, 0
  br i1 %.not440, label %.thread592.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sw = load i16, ptr %i.st, align 8, !tbaa !2219 ; 2 uses
  %i.sx = uitofp reassoc nsz arcp contract afn i16 %i.sw to float
  %i.sy = uitofp reassoc nsz arcp contract afn i16 %i.sv to float
  %i.sz = fdiv reassoc nsz arcp contract afn float %i.sx, %i.sy ; 2 uses
  %i.ta = fpext reassoc nsz arcp contract afn float %i.sz to double
  %i.tb = fcmp reassoc nsz arcp contract afn olt double %i.ta, 5.700000e-01
  %i.tc = fcmp reassoc nsz arcp contract afn ogt float %i.sz, 7.500000e-01
  %or.cond564 = or i1 %i.tc, %i.tb
  br i1 %or.cond564, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 2018
  %i.te = load i16, ptr %i.td, align 2, !tbaa !2286 ; 2 uses
  %i.tf = icmp sgt i16 %i.te, 1
  br i1 %i.tf, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.th = load i16, ptr %i.tg, align 8, !tbaa !2287 ; 3 uses
  %i.ti = icmp sgt i16 %i.th, 1
  br i1 %i.ti, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i16 %i.th, ptr %i.su, align 2, !tbaa !2218
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 2060
  store i16 %i.te, ptr %i.st, align 8, !tbaa !2219
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.tn = load <2 x i16>, ptr %i.tj, align 4, !tbaa !2262 ; 2 uses
  %i.to = load <2 x i16>, ptr %i.tl, align 8, !tbaa !2262
  %i.tp = sub <2 x i16> %i.to, %i.tn
  %i.tq = add <2 x i16> %i.tp, splat (i16 1)      ; 2 uses
  store <2 x i16> %i.tn, ptr %i.tk, align 8, !tbaa !2262
  store <2 x i16> %i.tq, ptr %i.tm, align 4, !tbaa !2262
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x i16> %i.tq, ptr %i.tr, align 4, !tbaa !2262
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !2226
  %i.tu = or i32 %i.tt, 256
  store i32 %i.tu, ptr %i.ts, align 4, !tbaa !2226
  %i.tv = zext nneg i16 %i.th to i32
  %i.tw = shl nuw nsw i32 %i.tv, 3
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.tw, ptr %i.tx, align 8, !tbaa !2288
  br label %.thread592.thread

bb.dk:                                            ; preds = %bb.dg, %bb.di, %bb.dh
  %i.ty = icmp eq i16 %i.sv, 4032
  %i.tz = icmp eq i16 %i.sw, 3402
  %or.cond657 = and i1 %i.ty, %i.tz
  br i1 %or.cond657, label %bb.dl, label %.thread592.thread

bb.dl:                                            ; preds = %bb.dk
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ub = tail call i32 @strcasecmp(ptr noundef nonnull %i.ua, ptr noundef nonnull @.str.38) #22
  %.not441 = icmp eq i32 %i.ub, 0
  br i1 %.not441, label %bb.dm, label %.thread592.thread

bb.dm:                                            ; preds = %bb.dl
  store <8 x i16> <i16 3024, i16 4536, i16 3016, i16 4508, i16 8, i16 28, i16 3016, i16 4508>, ptr %i.st, align 8, !tbaa !2262
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !2226
  %i.ue = or i32 %i.ud, 256
  store i32 %i.ue, ptr %i.uc, align 4, !tbaa !2226
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 36288, ptr %i.uf, align 8, !tbaa !2288
  br label %.thread592.thread

.thread592:                                       ; preds = %.thread587
  %i.ug = load i32, ptr %i.jt, align 4, !tbaa !2248
  %.not442 = icmp eq i32 %i.ug, 0
  %i.uh = icmp eq i32 %i.oq, 18
  %or.cond658 = and i1 %i.uh, %.not442
  br i1 %or.cond658, label %bb.dn, label %.thread592.thread

bb.dn:                                            ; preds = %.thread592
  %.unpack443 = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack445 = load i64, ptr %.elt407, align 8, !tbaa !2228
  %i.ui = icmp eq i64 %.unpack443, ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64)
  %i.uj = icmp eq i64 %.unpack445, 0
  %i.uk = and i1 %i.ui, %i.uj
  br i1 %i.uk, label %bb.do, label %.thread592.thread

bb.do:                                            ; preds = %bb.dn
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.un = load i16, ptr %i.um, align 2, !tbaa !2218
  %i.uo = zext i16 %i.un to i64                   ; 2 uses
  %i.up = load i16, ptr %i.ul, align 8, !tbaa !2219
  %i.uq = zext i16 %i.up to i64                   ; 2 uses
  %i.ur = shl nuw nsw i64 %i.uo, 1
  %i.us = mul nuw nsw i64 %i.ur, %i.uq
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 381800 ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !2276 ; 2 uses
  %.not446 = icmp eq i64 %i.us, %i.uu
  br i1 %.not446, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uv = mul nuw nsw i64 %i.uo, 7
  %i.uw = mul nuw nsw i64 %i.uv, %i.uq
  %i.ux = lshr i64 %i.uw, 2
  %i.uy = icmp eq i64 %i.ux, %i.uu
  br i1 %i.uy, label %bb.dq, label %.invoke

bb.dq:                                            ; preds = %bb.dp
  store i64 ptrtoint (ptr @_ZN6LibRaw19fuji_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread592.thread

bb.dr:                                            ; preds = %bb.do
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.va = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.uz, ptr noundef nonnull dereferenceable(6) @.str.39) #22
  %.not447 = icmp eq i32 %i.va, 0
  br i1 %.not447, label %bb.ds, label %.thread592.thread

bb.ds:                                            ; preds = %bb.dr
  %i.vb = load ptr, ptr %i.z, align 8, !tbaa !2214 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !84
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = invoke noundef i64 %i.ve(ptr noundef nonnull align 8 dereferenceable(8) %i.vb)
          to label %bb.dt unwind label %bb.m, !call_target !2206

bb.dt:                                            ; preds = %bb.ds
  %i.vg = load i64, ptr %i.ut, align 8, !tbaa !2276
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !2217
  %i.vj = add nsw i64 %i.vi, %i.vg
  %i.vk = icmp slt i64 %i.vf, %i.vj
  br i1 %i.vk, label %.invoke, label %.thread592.thread

.invoke:                                          ; preds = %bb.dt, %bb.dp
  invoke void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.thread592.thread unwind label %bb.m

.thread592.thread:                                ; preds = %.invoke, %.thread596, %bb.df, %bb.dk, %bb.dl, %bb.dm, %bb.dj, %bb.cw, %bb.cv, %bb.ct, %bb.cu, %bb.cq, %.preheader697.preheader, %bb.dq, %bb.dt, %bb.dr, %bb.dn, %.thread592
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.vn = load i16, ptr %i.vm, align 4, !tbaa !2280 ; 2 uses
  %i.vo = add i16 %i.vn, -99
  %or.cond565 = icmp ult i16 %i.vo, 9902
  br i1 %or.cond565, label %bb.du, label %bb.ee

bb.du:                                            ; preds = %.thread592.thread
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !2269 ; 4 uses
  %.not449 = icmp eq i16 %i.vq, -1
  br i1 %.not449, label %bb.ee, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vr = zext i16 %i.vq to i32
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !2271 ; 4 uses
  %i.vu = zext i16 %i.vt to i32                   ; 2 uses
  %i.vv = add nuw nsw i32 %i.vu, %i.vr
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !2218
  %i.vy = zext i16 %i.vx to i32
  %.not450 = icmp samesign ugt i32 %i.vv, %i.vy
  br i1 %.not450, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.wa = load i16, ptr %i.vz, align 8, !tbaa !2270 ; 4 uses
  %.not451 = icmp eq i16 %i.wa, -1
  br i1 %.not451, label %bb.ee, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wb = zext i16 %i.wa to i32
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.wd = load i16, ptr %i.wc, align 4, !tbaa !2289 ; 4 uses
  %i.we = zext i16 %i.wd to i32                   ; 2 uses
  %i.wf = add nuw nsw i32 %i.we, %i.wb
  %i.wg = load i16, ptr %i.vl, align 8, !tbaa !2219
  %i.wh = zext i16 %i.wg to i32
  %.not452 = icmp samesign ugt i32 %i.wf, %i.wh
  %.not453 = icmp eq i16 %i.vt, 0
  %or.cond566 = or i1 %.not453, %.not452
  %.not454 = icmp eq i16 %i.wd, 0
  %or.cond567 = or i1 %.not454, %or.cond566
end_hunk_0
