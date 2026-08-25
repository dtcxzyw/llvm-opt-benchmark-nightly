Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
          to label %bb.ca unwind label %bb.cb, !call_target !2203

bb.ca:                                            ; preds = %bb.bz
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !2219
  %i.nd = sub nsw i64 %i.na, %i.nc
  %.pre875 = load i16, ptr %i.mn, align 2, !tbaa !2220
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jh

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %i.nf = phi i16 [ %i.mo, %bb.by ], [ %.pre875, %bb.ca ] ; 2 uses
  %.0321 = phi i64 [ %i.mv, %bb.by ], [ %i.nd, %bb.ca ] ; 2 uses
  %i.ng = urem i16 %i.nf, 11
  %i.nh = icmp eq i16 %i.ng, 0
  br i1 %i.nh, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ni = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.nj = zext i16 %i.ni to i64
  %i.nk = extractelement <2 x i32> %i.mt, i64 0
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = mul nuw nsw i64 %i.nl, %i.nj
  %i.nn = icmp eq i64 %i.nm, %.0321
  br i1 %i.nn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.no = urem i16 %i.nf, 14
  %i.np = icmp eq i16 %i.no, 0
  br i1 %i.np, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nq = load i16, ptr %i.mm, align 8, !tbaa !2221
  %i.nr = zext i16 %i.nq to i64
  %i.ns = extractelement <2 x i32> %i.mt, i64 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = mul nuw nsw i64 %i.nt, %i.nr
  %i.nv = icmp eq i64 %i.nu, %.0321
  br i1 %i.nv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC6_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nw, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cj:                                            ; preds = %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !2273
  %i.nz = icmp eq i32 %i.ny, 14
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !2220 ; 2 uses
  %.rhs.trunc651 = select i1 %i.nz, i16 9, i16 10 ; 2 uses
  %i.oc = urem i16 %i.ob, %.rhs.trunc651
  %i.od = udiv i16 %i.ob, %.rhs.trunc651
  %i.oe = icmp eq i16 %i.oc, 0
  br i1 %i.oe, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.zext655 = zext nneg i16 %i.od to i64
  %i.of = shl nuw nsw i64 %.zext655, 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load i16, ptr %i.og, align 8, !tbaa !2221
  %i.oi = zext i16 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.of, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !2272
  %i.om = icmp eq i64 %i.oj, %i.ol
  br i1 %i.om, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC7_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.on, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.op = load i16, ptr %i.oo, align 4, !tbaa !2274
  %.not420 = icmp eq i16 %i.op, 0
  br i1 %.not420, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread588thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.oq, align 8, !tbaa !2236
  br label %.thread588thread-pre-split

.thread588thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr638 = load i32, ptr %i.ar, align 4, !tbaa !2242
  br label %.thread588

.thread588:                                       ; preds = %.thread588thread-pre-split, %bb.br
  %i.or = phi i32 [ %.pr638, %.thread588thread-pre-split ], [ %i.lg, %bb.br ] ; 2 uses
  switch i32 %i.or, label %.thread593 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread588
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ot = tail call i32 @strncasecmp(ptr noundef nonnull %i.os, ptr noundef nonnull @.str.36, i64 noundef 1) #22
  %.not426 = icmp eq i32 %i.ot, 0
  br i1 %.not426, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ou = tail call i32 @strcasecmp(ptr noundef nonnull %i.os, ptr noundef nonnull @.str.37) #22
  %.not427 = icmp eq i32 %i.ou, 0
  br i1 %.not427, label %bb.cs, label %.thread593.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !2220
  %i.oy = zext i16 %i.ox to i32                   ; 2 uses
  %i.oz = mul nuw nsw i32 %i.oy, 7
  %i.pa = lshr i32 %i.oz, 2
  %i.pb = uitofp nneg i32 %i.pa to float
  %i.pc = fmul reassoc nnan nsz arcp contract afn float %i.pb, 6.250000e-02
  %i.pd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.pc)
  %i.pe = fptoui float %i.pd to i32
  %i.pf = load i16, ptr %i.ov, align 8, !tbaa !2221 ; 2 uses
  %i.pg = zext i16 %i.pf to i32
  %i.ph = shl nuw nsw i32 %i.pg, 4
  %i.pi = mul i32 %i.ph, %i.pe
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !2272 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, %i.pj
  br i1 %i.pm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pn = mul nuw nsw i32 %i.oy, 21
  %i.po = lshr i32 %i.pn, 2
  %i.pp = uitofp nneg i32 %i.po to float
  %i.pq = fmul reassoc nnan nsz arcp contract afn float %i.pp, 6.250000e-02
  %i.pr = tail call reassoc nnan nsz arcp contract afn float @llvm.ceil.f32(float %i.pq)
  %i.ps = uitofp i16 %i.pf to float
  %i.pt = fmul reassoc nnan nsz arcp contract afn float %i.ps, 1.600000e+01
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pt, %i.pr
  %i.pv = sitofp reassoc nsz arcp contract afn i64 %i.pl to float
  %i.pw = fcmp reassoc nsz arcp contract afn oeq float %i.pu, %i.pv
  br i1 %i.pw, label %bb.cv, label %.thread593.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.px, align 8, !tbaa !2226
  br label %.thread593.thread

bb.cw:                                            ; preds = %.thread588
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !2232 ; 3 uses
  %.not430 = icmp eq i32 %i.pz, 0
  br i1 %.not430, label %.thread593.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !2270 ; 3 uses
  %i.qc = icmp ule i32 %i.qb, %i.pz
  %i.qd = shl i32 %i.pz, 2
  %.not431 = icmp ugt i32 %i.qb, %i.qd
  %or.cond565 = or i1 %i.qc, %.not431
  br i1 %or.cond565, label %.thread593.thread, label %.preheader701.preheader

.preheader701.preheader:                          ; preds = %bb.cx
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !2270
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %2 = load <4 x i32>, ptr %i.qg, align 4
  %i.qh = insertelement <4 x i32> poison, i32 %i.qb, i64 0
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qf, i64 1
  %i.qj = shufflevector <4 x i32> %i.qi, <4 x i32> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qk = lshr <4 x i32> %i.qj, splat (i32 2)
  store <4 x i32> %i.qk, ptr %i.qa, align 4, !tbaa !2270
  br label %.thread593.thread

bb.cy:                                            ; preds = %.thread588
  %i.ql = load i32, ptr %i.jt, align 4, !tbaa !2241
  %.not432 = icmp eq i32 %i.ql, 0
  br i1 %.not432, label %bb.cz, label %..thread597_crit_edge

..thread597_crit_edge:                            ; preds = %bb.cy
  %.unpack439.pre = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack441.pre = load i64, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread597

bb.cz:                                            ; preds = %bb.cy
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !2275 ; 4 uses
  %.not433 = icmp eq i16 %i.qo, -1
  br i1 %.not433, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qq = load i16, ptr %i.qp, align 4, !tbaa !2276
  %.not434 = icmp eq i16 %i.qq, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not434, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qs = load i16, ptr %i.qm, align 4, !tbaa !2277
  %i.qt = load <2 x i16>, ptr %i.qr, align 2, !tbaa !2256
  %i.qu = insertelement <2 x i16> poison, i16 %i.qo, i64 0
  %i.qv = insertelement <2 x i16> %i.qu, i16 %i.qs, i64 1
  %i.qw = add <2 x i16> %i.qt, %i.qv
  store <2 x i16> %i.qw, ptr %i.qr, align 2, !tbaa !2256
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.qo, ptr %i.qr, align 2, !tbaa !2264
  %i.qx = load i16, ptr %i.qm, align 4, !tbaa !2277 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.qx, ptr %i.qy, align 8, !tbaa !2266
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rb = load <2 x i16>, ptr %i.ra, align 8, !tbaa !2256
  %i.rc = insertelement <2 x i16> poison, i16 %i.qx, i64 0
  %i.rd = insertelement <2 x i16> %i.rc, i16 %i.qo, i64 1
  %i.re = sub <2 x i16> %i.rb, %i.rd
  %i.rf = add <2 x i16> %i.re, splat (i16 1)
  %i.rg = shufflevector <2 x i16> %i.rf, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.rg, ptr %i.qz, align 2, !tbaa !2256
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !2278 ; 5 uses
  %i.rj = icmp ugt i32 %i.ri, 13
  %.unpack439.pre876 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 4 uses
  %.unpack441.pre878 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 4 uses
  br i1 %i.rj, label %.thread597, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rk = icmp ne i64 %.unpack439.pre876, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.rl = icmp ne i64 %.unpack441.pre878, 0
  %i.rm = or i1 %i.rk, %i.rl
  br i1 %i.rm, label %bb.df, label %.thread597

bb.df:                                            ; preds = %bb.de
  %notmask = shl nsw i32 -1, %i.ri
  %i.rn = xor i32 %notmask, -1
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !2279 ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, %i.rn
  br i1 %i.rq, label %.preheader700, label %.thread597

.preheader700:                                    ; preds = %bb.df
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.rs = sub nuw nsw i32 14, %i.ri
  %i.rt = load <4 x i32>, ptr %i.rr, align 4, !tbaa !2270
  %i.ru = insertelement <4 x i32> poison, i32 %i.rs, i64 0
  %i.rv = shufflevector <4 x i32> %i.ru, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rw = lshr <4 x i32> %i.rt, %i.rv
  store <4 x i32> %i.rw, ptr %i.rr, align 4, !tbaa !2270
  %i.rx = lshr exact i32 16384, %i.ri             ; 6 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !2270
  %i.sa = sdiv i32 %i.rz, %i.rx
  store i32 %i.sa, ptr %i.ry, align 8, !tbaa !2270
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 1956 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !2270
  %i.sd = sdiv i32 %i.sc, %i.rx
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !2270
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !2270
  %i.sg = sdiv i32 %i.sf, %i.rx
  store i32 %i.sg, ptr %i.se, align 8, !tbaa !2270
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1964 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !2270
  %i.sj = sdiv i32 %i.si, %i.rx
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !2270
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !2280
  %i.sm = sdiv i32 %i.sl, %i.rx
  store i32 %i.sm, ptr %i.sk, align 8, !tbaa !2280
  %i.sn = sub nuw nsw i32 14, %i.ri
  %i.so = lshr i32 %i.rp, %i.sn
  store i32 %i.so, ptr %i.ro, align 8, !tbaa !2279
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 1948 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !2281
  %i.sr = sdiv i32 %i.sq, %i.rx
  store i32 %i.sr, ptr %i.sp, align 4, !tbaa !2281
  br label %.thread597

.thread597:                                       ; preds = %..thread597_crit_edge, %.preheader700, %bb.dd, %bb.de, %bb.df
  %.unpack441 = phi i64 [ %.unpack441.pre, %..thread597_crit_edge ], [ %.unpack441.pre878, %.preheader700 ], [ %.unpack441.pre878, %bb.dd ], [ 0, %bb.de ], [ %.unpack441.pre878, %bb.df ]
  %.unpack439 = phi i64 [ %.unpack439.pre, %..thread597_crit_edge ], [ %.unpack439.pre876, %.preheader700 ], [ %.unpack439.pre876, %bb.dd ], [ ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64), %bb.de ], [ %.unpack439.pre876, %bb.df ]
  %i.ss = icmp eq i64 %.unpack439, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.st = icmp eq i64 %.unpack441, 0
  %i.su = and i1 %i.ss, %i.st
  br i1 %i.su, label %bb.dg, label %.thread593.thread

bb.dg:                                            ; preds = %.thread597
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !2220 ; 3 uses
  %.not442 = icmp eq i16 %i.sx, 0
  br i1 %.not442, label %.thread593.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sy = load i16, ptr %i.sv, align 8, !tbaa !2221 ; 2 uses
  %i.sz = uitofp reassoc nsz arcp contract afn i16 %i.sy to float
  %i.ta = uitofp reassoc nsz arcp contract afn i16 %i.sx to float
  %i.tb = fdiv reassoc nsz arcp contract afn float %i.sz, %i.ta ; 2 uses
  %i.tc = fpext reassoc nsz arcp contract afn float %i.tb to double
  %i.td = fcmp reassoc nsz arcp contract afn olt double %i.tc, 5.700000e-01
  %i.te = fcmp reassoc nsz arcp contract afn ogt float %i.tb, 7.500000e-01
  %or.cond566 = or i1 %i.te, %i.td
  br i1 %or.cond566, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2018
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !2282 ; 2 uses
  %i.th = icmp sgt i16 %i.tg, 1
  br i1 %i.th, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.tj = load i16, ptr %i.ti, align 8, !tbaa !2283 ; 3 uses
  %i.tk = icmp sgt i16 %i.tj, 1
  br i1 %i.tk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i16 %i.tj, ptr %i.sw, align 2, !tbaa !2220
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 2060
  store i16 %i.tg, ptr %i.sv, align 8, !tbaa !2221
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.tp = load <2 x i16>, ptr %i.tl, align 4, !tbaa !2256 ; 2 uses
  %i.tq = load <2 x i16>, ptr %i.tn, align 8, !tbaa !2256
  %i.tr = sub <2 x i16> %i.tq, %i.tp
  %i.ts = add <2 x i16> %i.tr, splat (i16 1)      ; 2 uses
  store <2 x i16> %i.tp, ptr %i.tm, align 8, !tbaa !2256
  store <2 x i16> %i.ts, ptr %i.to, align 4, !tbaa !2256
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x i16> %i.ts, ptr %i.tt, align 4, !tbaa !2256
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !2228
  %i.tw = or i32 %i.tv, 256
  store i32 %i.tw, ptr %i.tu, align 4, !tbaa !2228
  %i.tx = zext nneg i16 %i.tj to i32
  %i.ty = shl nuw nsw i32 %i.tx, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ty, ptr %i.tz, align 8, !tbaa !2284
  br label %.thread593.thread

bb.dl:                                            ; preds = %bb.dh, %bb.dj, %bb.di
  %i.ua = icmp eq i16 %i.sx, 4032
  %i.ub = icmp eq i16 %i.sy, 3402
  %or.cond658 = and i1 %i.ua, %i.ub
  br i1 %or.cond658, label %bb.dm, label %.thread593.thread

bb.dm:                                            ; preds = %bb.dl
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ud = tail call i32 @strcasecmp(ptr noundef nonnull %i.uc, ptr noundef nonnull @.str.38) #22
  %.not443 = icmp eq i32 %i.ud, 0
  br i1 %.not443, label %bb.dn, label %.thread593.thread

bb.dn:                                            ; preds = %bb.dm
  store <8 x i16> <i16 3024, i16 4536, i16 3016, i16 4508, i16 8, i16 28, i16 3016, i16 4508>, ptr %i.sv, align 8, !tbaa !2256
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !2228
  %i.ug = or i32 %i.uf, 256
  store i32 %i.ug, ptr %i.ue, align 4, !tbaa !2228
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 36288, ptr %i.uh, align 8, !tbaa !2284
  br label %.thread593.thread

.thread593:                                       ; preds = %.thread588
  %i.ui = load i32, ptr %i.jt, align 4, !tbaa !2241
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %.0311 = phi i32 [ 2, %bb.em ], [ 2, %bb.el ], [ 6, %bb.eh ], [ 6, %.loopexit699.loopexit ] ; 13 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc644 = trunc nuw nsw i32 %.0311 to i16 ; 4 uses
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !2264 ; 5 uses
  %.not546 = icmp eq i16 %i.abp, 0
  br i1 %.not546, label %bb.es, label %bb.en

bb.en:                                            ; preds = %.loopexit699
  %i.abq = zext i16 %i.abp to i32
  %.not547 = icmp eq i16 %i.abp, -1
  br i1 %.not547, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !2267 ; 3 uses
  %.off670 = add i16 %i.abs, -1
  %switch671 = icmp ult i16 %.off670, -2
  br i1 %switch671, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.abt = zext i16 %i.abs to i32
  %.rhs.trunc958 = trunc nuw nsw i32 %.0311 to i16
  %i.abu = urem i16 %i.abp, %.rhs.trunc958
  %.not550 = icmp ne i16 %i.abu, 0
  %i.abv = icmp samesign ult i32 %.0311, %i.abt
  %or.cond573 = select i1 %.not550, i1 %i.abv, i1 false
  br i1 %or.cond573, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.abw = udiv i16 %i.abp, %.rhs.trunc644
  %narrow668 = add nuw i16 %i.abw, 1
  %i.abx = zext i16 %narrow668 to i32
  %i.aby = mul nuw nsw i32 %.0311, %i.abx         ; 2 uses
  %i.abz = sub nsw i32 %i.aby, %i.abq             ; 2 uses
  %i.aca = icmp sgt i32 %i.abz, 0
  br i1 %i.aca, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.acb = trunc i32 %i.aby to i16
  store i16 %i.acb, ptr %i.abo, align 2, !tbaa !2264
  %i.acc = trunc i32 %i.abz to i16
  %i.acd = sub i16 %i.abs, %i.acc
  store i16 %i.acd, ptr %i.abr, align 2, !tbaa !2267
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.eq, %bb.er, %bb.ep, %bb.en, %.loopexit699
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.acf = load i16, ptr %i.ace, align 8, !tbaa !2266 ; 5 uses
  %.not551 = icmp eq i16 %i.acf, 0
  br i1 %.not551, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.acg = zext i16 %i.acf to i32
  %.not552 = icmp eq i16 %i.acf, -1
  br i1 %.not552, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aci = load i16, ptr %i.ach, align 4, !tbaa !2285 ; 3 uses
  %.off672 = add i16 %i.aci, -1
  %switch673 = icmp ult i16 %.off672, -2
  br i1 %switch673, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.acj = zext i16 %i.aci to i32
  %.rhs.trunc955 = trunc nuw nsw i32 %.0311 to i16
  %i.ack = urem i16 %i.acf, %.rhs.trunc955
  %.not555 = icmp ne i16 %i.ack, 0
  %i.acl = icmp samesign ult i32 %.0311, %i.acj
  %or.cond574 = select i1 %.not555, i1 %i.acl, i1 false
  br i1 %or.cond574, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.acm = udiv i16 %i.acf, %.rhs.trunc644
  %narrow669 = add nuw i16 %i.acm, 1
  %i.acn = zext i16 %narrow669 to i32
  %i.aco = mul nuw nsw i32 %.0311, %i.acn         ; 2 uses
  %i.acp = sub nsw i32 %i.aco, %i.acg             ; 2 uses
  %i.acq = icmp sgt i32 %i.acp, 0
  br i1 %i.acq, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.acr = trunc i32 %i.aco to i16
  store i16 %i.acr, ptr %i.ace, align 8, !tbaa !2266
  %i.acs = trunc i32 %i.acp to i16
  %i.act = sub i16 %i.aci, %i.acs
  store i16 %i.act, ptr %i.ach, align 4, !tbaa !2285
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.ev
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.acv = load i16, ptr %i.acu, align 2, !tbaa !2264 ; 5 uses
  %.not546.1 = icmp eq i16 %i.acv, 0
  br i1 %.not546.1, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.acw = zext i16 %i.acv to i32
  %.not547.1 = icmp eq i16 %i.acv, -1
  br i1 %.not547.1, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !2267 ; 3 uses
  %.off670.1 = add i16 %i.acy, -1
  %switch671.1 = icmp ult i16 %.off670.1, -2
  br i1 %switch671.1, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.acz = zext i16 %i.acy to i32
  %.rhs.trunc952 = trunc nuw nsw i32 %.0311 to i16
  %i.ada = urem i16 %i.acv, %.rhs.trunc952
  %.not550.1 = icmp ne i16 %i.ada, 0
  %i.adb = icmp samesign ult i32 %.0311, %i.acz
  %or.cond573.1 = select i1 %.not550.1, i1 %i.adb, i1 false
  br i1 %or.cond573.1, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.adc = udiv i16 %i.acv, %.rhs.trunc644
  %narrow668.1 = add nuw i16 %i.adc, 1
  %i.add = zext i16 %narrow668.1 to i32
  %i.ade = mul nuw nsw i32 %.0311, %i.add         ; 2 uses
  %i.adf = sub nsw i32 %i.ade, %i.acw             ; 2 uses
  %i.adg = icmp sgt i32 %i.adf, 0
  br i1 %i.adg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.adh = trunc i32 %i.ade to i16
  store i16 %i.adh, ptr %i.acu, align 2, !tbaa !2264
  %i.adi = trunc i32 %i.adf to i16
  %i.adj = sub i16 %i.acy, %i.adi
  store i16 %i.adj, ptr %i.acx, align 2, !tbaa !2267
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.adl = load i16, ptr %i.adk, align 8, !tbaa !2266 ; 5 uses
  %.not551.1 = icmp eq i16 %i.adl, 0
  br i1 %.not551.1, label %.critedge572, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.adm = zext i16 %i.adl to i32
  %.not552.1 = icmp eq i16 %i.adl, -1
  br i1 %.not552.1, label %.critedge572, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ado = load i16, ptr %i.adn, align 4, !tbaa !2285 ; 3 uses
  %.off672.1 = add i16 %i.ado, -1
  %switch673.1 = icmp ult i16 %.off672.1, -2
  br i1 %switch673.1, label %bb.fh, label %.critedge572

bb.fh:                                            ; preds = %bb.fg
  %i.adp = zext i16 %i.ado to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0311 to i16
  %i.adq = urem i16 %i.adl, %.rhs.trunc
  %.not555.1 = icmp ne i16 %i.adq, 0
  %i.adr = icmp samesign ult i32 %.0311, %i.adp
  %or.cond574.1 = select i1 %.not555.1, i1 %i.adr, i1 false
  br i1 %or.cond574.1, label %bb.fi, label %.critedge572

bb.fi:                                            ; preds = %bb.fh
  %i.ads = udiv i16 %i.adl, %.rhs.trunc644
  %narrow669.1 = add nuw i16 %i.ads, 1
  %i.adt = zext i16 %narrow669.1 to i32
  %i.adu = mul nuw nsw i32 %.0311, %i.adt         ; 2 uses
  %i.adv = sub nsw i32 %i.adu, %i.adm             ; 2 uses
  %i.adw = icmp sgt i32 %i.adv, 0
  br i1 %i.adw, label %bb.fj, label %.critedge572

bb.fj:                                            ; preds = %bb.fi
  %i.adx = trunc i32 %i.adu to i16
  store i16 %i.adx, ptr %i.adk, align 8, !tbaa !2266
  %i.ady = trunc i32 %i.adv to i16
  %i.adz = sub i16 %i.ado, %i.ady
  store i16 %i.adz, ptr %i.adn, align 4, !tbaa !2285
  br label %.critedge572

.critedge572:                                     ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.ej, %bb.ei
  %i.aea = load i32, ptr %i.jt, align 4, !tbaa !2241
  %.not469 = icmp eq i32 %i.aea, 0
  br i1 %.not469, label %.thread602, label %bb.fk

bb.fk:                                            ; preds = %.critedge572
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aec = load i32, ptr %i.aeb, align 8, !tbaa !2226
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.fl, label %.thread601

bb.fl:                                            ; preds = %bb.fk
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !2227 ; 4 uses
  %i.aeg = add i32 %i.aef, -2
  %or.cond575 = icmp ult i32 %i.aeg, 3
  br i1 %or.cond575, label %.lr.ph731, label %.thread601

.lr.ph731:                                        ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 170668
  %3 = load <4 x i32>, ptr %i.aeh, align 4
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 154252
  %i.aej = load <4 x i32>, ptr %i.aei, align 4, !tbaa !2270
  %i.aek = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ael = add <4 x i32> %i.aej, %i.aek
  store <4 x i32> %i.ael, ptr %i.b, align 16, !tbaa !2270
  %wide.trip.count811 = zext nneg i32 %i.aef to i64 ; 3 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count811, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 187092
  %i.aen = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.aem, <4 x i1> %i.aen, <4 x i32> poison), !tbaa !2270
  %unmaskedload = load <4 x i32>, ptr %i.b, align 16, !tbaa !2270
  %i.aeo = sub <4 x i32> %wide.masked.load, %unmaskedload
  %i.aep = uitofp <4 x i32> %i.aeo to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.aep, ptr align 16 %i.a, <4 x i1> %i.aen), !tbaa !2237
  %.pre882 = load float, ptr %i.a, align 16, !tbaa !2237 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !2237 ; 4 uses
  %i.aes = fcmp reassoc nsz arcp contract afn ogt float %.pre882, %i.aer
  %.1303 = select nsz i1 %i.aes, float %i.aer, float %.pre882 ; 3 uses
  %i.aet = fcmp reassoc nsz arcp contract afn olt float %.pre882, %i.aer
  %.1301 = select nsz i1 %i.aet, float %i.aer, float %.pre882 ; 3 uses
  %exitcond817.not = icmp eq i32 %i.aef, 2
  br i1 %exitcond817.not, label %._crit_edge738, label %.lr.ph737.1

._crit_edge738:                                   ; preds = %.lr.ph737.2, %.lr.ph737.1, %.lr.ph731
  %.1303.lcssa = phi float [ %.1303, %.lr.ph731 ], [ %.1303.1, %.lr.ph737.1 ], [ %.1303.2, %.lr.ph737.2 ] ; 2 uses
  %.1301.lcssa = phi float [ %.1301, %.lr.ph731 ], [ %.1301.1, %.lr.ph737.1 ], [ %.1301.2, %.lr.ph737.2 ] ; 3 uses
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt float %.1303.lcssa, 1.000000e+00
  %i.aev = fmul reassoc nnan nsz arcp contract afn float %.1303.lcssa, 2.000000e+01
  %i.aew = fcmp reassoc nsz arcp contract afn olt float %.1301.lcssa, %i.aev
  %or.cond577 = select i1 %i.aeu, i1 %i.aew, i1 false
  br i1 %or.cond577, label %.lr.ph742, label %bb.fm

.lr.ph742:                                        ; preds = %._crit_edge738
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %n.rnd.up968 = add nuw nsw i64 %wide.trip.count811, 3
  %n.vec969 = and i64 %n.rnd.up968, 12
  %trip.count.minus.1970 = add nsw i64 %wide.trip.count811, -1
  %broadcast.splatinsert971 = insertelement <4 x i64> poison, i64 %trip.count.minus.1970, i64 0
  %broadcast.splat972 = shufflevector <4 x i64> %broadcast.splatinsert971, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert973 = insertelement <4 x float> poison, float %.1301.lcssa, i64 0
  %broadcast.splat974 = shufflevector <4 x float> %broadcast.splatinsert973, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %.lr.ph742
  %index976 = phi i64 [ 0, %.lr.ph742 ], [ %index.next981, %vector.body975 ] ; 4 uses
  %vec.ind977 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph742 ], [ %vec.ind.next982, %vector.body975 ] ; 2 uses
  %i.aez = icmp ule <4 x i64> %vec.ind977, %broadcast.splat972 ; 5 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index976
  %wide.masked.load978 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.afa, <4 x i1> %i.aez, <4 x float> poison), !tbaa !2237 ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %index976 ; 2 uses
  %wide.masked.load979 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.afb, <4 x i1> %i.aez, <4 x float> poison), !tbaa !2237
  %i.afc = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.load979, %broadcast.splat974
  %i.afd = fdiv reassoc nsz arcp contract afn <4 x float> %i.afc, %wide.masked.load978
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.afd, ptr align 4 %i.afb, <4 x i1> %i.aez), !tbaa !2237
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %index976 ; 2 uses
  %wide.masked.load980 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.afe, <4 x i1> %i.aez, <4 x float> poison), !tbaa !2237
  %i.aff = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.load980, %broadcast.splat974
  %i.afg = fdiv reassoc nsz arcp contract afn <4 x float> %i.aff, %wide.masked.load978
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.afg, ptr align 4 %i.afe, <4 x i1> %i.aez), !tbaa !2237
  %index.next981 = add nuw i64 %index976, 4       ; 2 uses
  %vec.ind.next982 = add nuw <4 x i64> %vec.ind977, splat (i64 4)
  %i.afh = icmp eq i64 %index.next981, %n.vec969
  br i1 %i.afh, label %._crit_edge743, label %vector.body975, !llvm.loop !2286

.lr.ph737.1:                                      ; preds = %.lr.ph731
  %i.afi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.afj = load float, ptr %i.afi, align 8, !tbaa !2237 ; 4 uses
  %i.afk = fcmp reassoc nsz arcp contract afn ogt float %.1303, %i.afj
  %.1303.1 = select nsz i1 %i.afk, float %i.afj, float %.1303 ; 3 uses
  %i.afl = fcmp reassoc nsz arcp contract afn olt float %.1301, %i.afj
  %.1301.1 = select nsz i1 %i.afl, float %i.afj, float %.1301 ; 3 uses
  %exitcond817.not.1 = icmp eq i32 %i.aef, 3
  br i1 %exitcond817.not.1, label %._crit_edge738, label %.lr.ph737.2

.lr.ph737.2:                                      ; preds = %.lr.ph737.1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !2237 ; 4 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt float %.1303.1, %i.afn
  %.1303.2 = select nsz i1 %i.afo, float %i.afn, float %.1303.1
  %i.afp = fcmp reassoc nsz arcp contract afn olt float %.1301.1, %i.afn
  %.1301.2 = select nsz i1 %i.afp, float %i.afn, float %.1301.1
  br label %._crit_edge738

._crit_edge743:                                   ; preds = %vector.body975
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !2270
  %i.afs = uitofp reassoc nsz arcp contract afn i32 %i.afr to float
  %i.aft = fadd reassoc nsz arcp contract afn float %.1301.lcssa, %i.afs
  %i.afu = fptoui float %i.aft to i32
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.afu, ptr %i.afv, align 8, !tbaa !2232
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge738, %._crit_edge743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread601

.thread601:                                       ; preds = %bb.fm, %bb.fk, %bb.fl
  switch i32 %i.xr, label %.thread626 [
    i32 47, label %bb.fn
    i32 32, label %bb.fp
    i32 63, label %.thread610
    i32 49, label %bb.gq
  ]

bb.fn:                                            ; preds = %.thread601
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.afx = tail call i32 @strcasecmp(ptr noundef nonnull %i.afw, ptr noundef nonnull @.str.40) #22
  %.not471 = icmp eq i32 %i.afx, 0
  br i1 %.not471, label %bb.fo, label %.thread626

bb.fo:                                            ; preds = %bb.fn
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4288, ptr %i.afy, align 2, !tbaa !2224
  br label %.thread626

bb.fp:                                            ; preds = %.thread601
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.aga = tail call i32 @strcasecmp(ptr noundef nonnull %i.afz, ptr noundef nonnull @.str.41) #22
  %.not473 = icmp eq i32 %i.aga, 0
  br i1 %.not473, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.agc = load i16, ptr %i.agb, align 4, !tbaa !2225
  %i.agd = add i16 %i.agc, -16
  store i16 %i.agd, ptr %i.agb, align 4, !tbaa !2225
  br label %.thread626

bb.fr:                                            ; preds = %bb.fp
  %i.age = tail call i32 @strcasecmp(ptr noundef nonnull %i.afz, ptr noundef nonnull @.str.42) #22
  %.not474 = icmp eq i32 %i.age, 0
  br i1 %.not474, label %bb.fs, label %.thread626

bb.fs:                                            ; preds = %bb.fr
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !2220
  switch i16 %i.agg, label %.thread626 [
    i16 9536, label %bb.ft
    i16 7424, label %bb.fu
    i16 5312, label %bb.fv
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !2224
  %i.agj = add i16 %i.agi, -12
  store i16 %i.agj, ptr %i.agh, align 2, !tbaa !2224
  br label %.thread626

bb.fu:                                            ; preds = %bb.fs
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !2224
  %i.agm = add i16 %i.agl, -14
  store i16 %i.agm, ptr %i.agk, align 2, !tbaa !2224
  br label %.thread626

bb.fv:                                            ; preds = %bb.fs
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !2224
  %i.agp = add i16 %i.ago, -18
  store i16 %i.agp, ptr %i.agn, align 2, !tbaa !2224
  br label %.thread626

.thread602:                                       ; preds = %.critedge572
  switch i32 %i.xr, label %bb.gv [
    i32 63, label %bb.gb
    i32 49, label %bb.gq
    i32 31, label %bb.gt
  ]

.thread610:                                       ; preds = %.thread601
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.agr = load i16, ptr %i.agq, align 2, !tbaa !2220
  switch i16 %i.agr, label %.thread626 [
    i16 3984, label %bb.fw
    i16 4288, label %bb.fx
    i16 4928, label %bb.fy
    i16 5504, label %bb.ga
  ]

bb.fw:                                            ; preds = %.thread610
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 3925, ptr %i.ags, align 2, !tbaa !2224
  br label %.thread626

bb.fx:                                            ; preds = %.thread610
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4256, ptr %i.agt, align 2, !tbaa !2224
  br label %.thread626

bb.fy:                                            ; preds = %.thread610
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.agv = load i16, ptr %i.agu, align 4, !tbaa !2225
  %i.agw = icmp ult i16 %i.agv, 3280
  br i1 %i.agw, label %bb.fz, label %.thread626

bb.fz:                                            ; preds = %bb.fy
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4920, ptr %i.agx, align 2, !tbaa !2224
  br label %.thread626

bb.ga:                                            ; preds = %.thread610
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.agz = load i16, ptr %i.agy, align 4, !tbaa !2225
  %i.aha = icmp ugt i16 %i.agz, 3664
  %i.ahb = select i1 %i.aha, i16 5496, i16 5472
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ahb, ptr %i.ahc, align 2, !tbaa !2224
  br label %.thread626

bb.gb:                                            ; preds = %.thread602
  %.unpack477 = load i64, ptr %i.kx, align 8, !tbaa !2231
  %.unpack479 = load i64, ptr %.elt409, align 8, !tbaa !2231
  %i.ahd = icmp eq i64 %.unpack477, ptrtoint (ptr @_ZN6LibRaw17sony_arq_load_rawEv to i64)
  %i.ahe = icmp eq i64 %.unpack479, 0
  %i.ahf = and i1 %i.ahd, %i.ahe
  br i1 %i.ahf, label %.sink.split962, label %bb.gc

.sink.split962:                                   ; preds = %bb.gb
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !2220 ; 2 uses
  %i.ahi = icmp ugt i16 %i.ahh, 12000
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 22
  %. = select i1 %i.ahi, i16 -64, i16 -32
  %i.ahk = add i16 %i.ahh, %.
  store i16 %i.ahk, ptr %i.ahj, align 2, !tbaa !2224
  br label %bb.gc

bb.gc:                                            ; preds = %.sink.split962, %bb.gb
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 7 uses
  %i.ahm = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.43, i64 noundef 8) #22
  %.not480 = icmp eq i32 %i.ahm, 0
  br i1 %.not480, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ahn = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.44) #22
  %.not481 = icmp eq i32 %i.ahn, 0
  br i1 %.not481, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aho = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !2220 ; 3 uses
  switch i16 %i.ahp, label %bb.gf [
    i16 5216, label %bb.gp
    i16 6304, label %bb.gp
  ]

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.ahq = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.45) #22
  %.not482 = icmp eq i32 %i.ahq, 0
  br i1 %.not482, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !2220 ; 2 uses
  %i.aht = add i16 %i.ahs, -4580
  %or.cond578 = icmp ult i16 %i.aht, 440
  br i1 %or.cond578, label %bb.gp, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ahu = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.46) #22
  %.not483 = icmp eq i32 %i.ahu, 0
  br i1 %.not483, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !2220
  %i.ahx = icmp eq i16 %i.ahw, 3968
  br i1 %i.ahx, label %bb.gp, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.ahy = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.47, i64 noundef 7) #22
  %.not484 = icmp eq i32 %i.ahy, 0
  br i1 %.not484, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ahz = tail call i32 @strcasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.48) #22
  %.not485 = icmp eq i32 %i.ahz, 0
  br i1 %.not485, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !2289
  %i.aic = icmp eq i64 %i.aib, 294
  br i1 %i.aic, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %bb.gj
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !2220 ; 2 uses
  %i.aif = add i16 %i.aie, -3751
  %or.cond579 = icmp ult i16 %i.aif, 369
  br i1 %or.cond579, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.aig = tail call i32 @strncasecmp(ptr noundef nonnull %i.ahl, ptr noundef nonnull @.str.49, i64 noundef 7) #22
  %.not486 = icmp eq i32 %i.aig, 0
  br i1 %.not486, label %bb.go, label %.thread626

bb.go:                                            ; preds = %bb.gn
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aii = load i16, ptr %i.aih, align 2, !tbaa !2220
  %i.aij = icmp eq i16 %i.aii, 2816
  br i1 %i.aij, label %bb.gp, label %.thread626

bb.gp:                                            ; preds = %bb.gm, %bb.gg, %bb.ge, %bb.ge, %bb.go, %bb.gi
  %i.aik = phi i16 [ %i.aie, %bb.gm ], [ %i.ahs, %bb.gg ], [ %i.ahp, %bb.ge ], [ %i.ahp, %bb.ge ], [ 2816, %bb.go ], [ 3968, %bb.gi ]
  %i.ail = add nsw i16 %i.aik, -32
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ail, ptr %i.aim, align 2, !tbaa !2224
  br label %.thread626

bb.gq:                                            ; preds = %.thread602, %.thread601
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !2236
  %i.aip = icmp eq i32 %i.aio, 4
  br i1 %i.aip, label %bb.gr, label %.thread626

bb.gr:                                            ; preds = %bb.gq
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !2268
  %i.ais = and i32 %i.air, 1
  %.not487 = icmp eq i32 %i.ais, 0
  br i1 %.not487, label %.thread626, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 1, ptr %i.ain, align 8, !tbaa !2236
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.ait, align 8, !tbaa !2226
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.aiu, align 4, !tbaa !2227
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aiw = load <4 x i16>, ptr %i.aiv, align 4, !tbaa !2256
  %i.aix = add <4 x i16> %i.aiw, <i16 -4, i16 -4, i16 2, i16 2>
  store <4 x i16> %i.aix, ptr %i.aiv, align 4, !tbaa !2256
  store i32 1, ptr %i.ad, align 8, !tbaa !2290
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 768432
  %i.aiz = load <2 x i64>, ptr %i.kx, align 8, !tbaa !2231
  store <2 x i64> %i.aiz, ptr %i.aiy, align 8, !tbaa !2291
  store i64 ptrtoint (ptr @_ZN6LibRaw21pentax_4shot_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

bb.gt:                                            ; preds = %.thread602
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ajb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aja, ptr noundef nonnull dereferenceable(9) @.str.50) #22
  %.not495 = icmp eq i32 %i.ajb, 0
  br i1 %.not495, label %bb.gu, label %.thread626

bb.gu:                                            ; preds = %bb.gt
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> <float 2.510040e+00, float 1.000000e+00, float f0x3FA6F896, float 1.000000e+00>, ptr %i.ajc, align 4, !tbaa !2237
  br label %.thread626

bb.gv:                                            ; preds = %.thread602
  br i1 %i.xs, label %bb.gw, label %.thread626

bb.gw:                                            ; preds = %bb.gv
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aje = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajd, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #22
  %.not497 = icmp eq i32 %i.aje, 0
  br i1 %.not497, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajd, ptr noundef nonnull dereferenceable(5) @.str.52, i64 noundef 4) #22
  %.not498 = icmp eq i32 %i.ajf, 0
  br i1 %.not498, label %bb.gy, label %.thread626

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !2220
  %i.aji = lshr i16 %i.ajh, 1
  store i16 %i.aji, ptr %i.ajg, align 2, !tbaa !2220
  store i64 ptrtoint (ptr @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

.thread626:                                       ; preds = %bb.gq, %bb.gr, %bb.gs, %bb.gn, %bb.go, %bb.gp, %.thread610, %bb.fr, %bb.fu, %bb.fv, %bb.ft, %bb.fq, %bb.fs, %bb.fo, %bb.fn, %bb.fw, %bb.fz, %bb.ga, %bb.fx, %bb.fy, %.thread601, %bb.gt, %bb.gu, %bb.gy, %bb.gx, %bb.gv
  %i.ajj = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ true, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ true, %bb.fy ], [ true, %bb.fx ], [ true, %bb.ga ], [ true, %bb.fz ], [ true, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ true, %.thread610 ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.gs ], [ false, %bb.gr ], [ false, %bb.gq ] ; 3 uses
  %i.ajk = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ false, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %bb.fy ], [ false, %bb.fx ], [ false, %bb.ga ], [ false, %bb.fz ], [ false, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ false, %.thread610 ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.gs ], [ true, %bb.gr ], [ true, %bb.gq ] ; 2 uses
  %.unpack500 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 3 uses
  %.unpack502 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 2 uses
  %i.ajl = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.ajm = icmp eq i64 %.unpack502, 0             ; 2 uses
  %i.ajn = and i1 %i.ajl, %i.ajm
  br i1 %i.ajn, label %bb.gz, label %.loopexit695

bb.gz:                                            ; preds = %.thread626
  %i.ajo = icmp eq i32 %i.xr, 43
  br i1 %i.ajo, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !2228
  %.not503 = icmp eq i32 %i.ajq, 0
  br i1 %.not503, label %bb.hb, label %bb.hf

bb.hb:                                            ; preds = %bb.ha
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ajs = tail call i32 @strncasecmp(ptr noundef nonnull %i.ajr, ptr noundef nonnull @.str.53, i64 noundef 4) #22
  %.not504 = icmp eq i32 %i.ajs, 0
  br i1 %.not504, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ajt = tail call i32 @strcasecmp(ptr noundef nonnull %i.ajr, ptr noundef nonnull @.str.54) #22
  %.not505 = icmp eq i32 %i.ajt, 0
  br i1 %.not505, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ajv = load i64, ptr %i.aju, align 8, !tbaa !2272
  %i.ajw = shl nsw i64 %i.ajv, 1
  %i.ajx = load i16, ptr %i.vn, align 8, !tbaa !2221
  %i.ajy = zext i16 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aka = load i16, ptr %i.ajz, align 2, !tbaa !2220
  %i.akb = zext i16 %i.aka to i64
  %i.akc = mul nuw nsw i64 %i.ajy, 3
  %i.akd = mul nuw nsw i64 %i.akc, %i.akb
  %i.ake = and i64 %i.akd, 4294967295
  %i.akf = icmp eq i64 %i.ajw, %i.ake
  br i1 %i.akf, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i32 80, ptr %i.ajp, align 4, !tbaa !2228
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.ha, %bb.gz
  br i1 %i.ajj, label %bb.hg, label %.thread630

bb.hg:                                            ; preds = %bb.hf
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 8, !tbaa !2232
  %i.aki = icmp ugt i32 %i.akh, 4095
  br i1 %i.aki, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 4095, ptr %i.akg, align 8, !tbaa !2232
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !2233 ; 2 uses
  %i.akl = icmp ugt i32 %i.akk, 256
  %.phi.trans.insert883 = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %.pre884 = load i32, ptr %.phi.trans.insert883, align 8, !tbaa !2270 ; 2 uses
  %i.akm = icmp ugt i32 %.pre884, 256
  %or.cond1002 = select i1 %i.akl, i1 true, i1 %i.akm
  br i1 %or.cond1002, label %.preheader694, label %.thread630

.preheader694:                                    ; preds = %bb.hi
  %i.akn = lshr i32 %i.akk, 2
  store i32 %i.akn, ptr %i.akj, align 8, !tbaa !2233
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !2270
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %4 = load <4 x i32>, ptr %i.akr, align 8
  %i.aks = insertelement <4 x i32> poison, i32 %.pre884, i64 0
  %i.akt = insertelement <4 x i32> %i.aks, i32 %i.akq, i64 1
  %i.aku = shufflevector <4 x i32> %i.akt, <4 x i32> %4, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akv = lshr <4 x i32> %i.aku, splat (i32 2)
  store <4 x i32> %i.akv, ptr %i.ako, align 8, !tbaa !2270
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.aky = load i32, ptr %i.akw, align 8, !tbaa !2270
  %i.akz = load i32, ptr %i.akx, align 4, !tbaa !2270
  %i.ala = mul i32 %i.akz, %i.aky
  %.not762 = icmp eq i32 %i.ala, 0
  br i1 %.not762, label %.thread630, label %.lr.ph746

.lr.ph746:                                        ; preds = %.preheader694, %.lr.ph746
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %.lr.ph746 ], [ 0, %.preheader694 ] ; 2 uses
  %i.alb = add nuw nsw i64 %indvars.iv827, 6
  %i.alc = and i64 %i.alb, 4294967295
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.alc ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !2270
  %i.alf = lshr i32 %i.ale, 2
  store i32 %i.alf, ptr %i.ald, align 4, !tbaa !2270
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1 ; 2 uses
  %i.alg = load i32, ptr %i.akw, align 8, !tbaa !2270
  %i.alh = load i32, ptr %i.akx, align 4, !tbaa !2270
  %i.ali = mul i32 %i.alh, %i.alg
  %i.alj = zext i32 %i.ali to i64
  %i.alk = icmp samesign ult i64 %indvars.iv.next828, %i.alj
  br i1 %i.alk, label %.lr.ph746, label %.thread630, !llvm.loop !2292

.loopexit695:                                     ; preds = %.thread626
  %i.all = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw18nikon_yuv_load_rawEv to i64)
  %i.alm = and i1 %i.all, %i.ajm
  br i1 %i.alm, label %vector.ph984, label %.thread630

vector.ph984:                                     ; preds = %.loopexit695
  store i64 ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.alp, align 8, !tbaa !2226
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 381832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.alo, i8 0, i64 16420, i1 false)
  store i32 3, ptr %i.alq, align 8, !tbaa !2293
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.alr, align 4, !tbaa !2227
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %vector.ph984
  %index986 = phi i64 [ 0, %vector.ph984 ], [ %index.next988, %vector.body985 ] ; 2 uses
  %vec.ind987 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph984 ], [ %vec.ind.next989, %vector.body985 ] ; 2 uses
  %i.als = uitofp nneg <16 x i32> %vec.ind987 to <16 x double> ; 2 uses
  %i.alt = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.als, splat (double f0x3F35555555555555) ; 3 uses
  %i.alu = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alt, %i.alt ; 2 uses
  %i.alv = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alu, splat (double f0x3F667BCEF737735E)
  %i.alw = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alu, splat (double f0xBF6B9BDD7EBBB5E0)
  %i.alx = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.alw, splat (double f0xBF518086BF1A92FA)
  %i.aly = fmul reassoc nsz arcp contract afn <16 x double> %i.alx, %i.alt
  %i.alz = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.alv, splat (double f0x3EF3C65EA647FFF0)
  %i.ama = fadd reassoc nsz arcp contract afn <16 x double> %i.alz, %i.aly
  %i.amb = fmul reassoc nsz arcp contract afn <16 x double> %i.ama, %i.als
  %i.amc = tail call reassoc nsz arcp contract afn <16 x double> @llvm.exp.v16f64(<16 x double> %i.amb)
  %i.amd = fsub reassoc nsz arcp contract afn <16 x double> splat (double 1.000000e+00), %i.amc ; 2 uses
  %i.ame = fcmp reassoc nsz arcp contract afn olt <16 x double> %i.amd, zeroinitializer
  %i.amf = select nsz <16 x i1> %i.ame, <16 x double> zeroinitializer, <16 x double> %i.amd
  %i.amg = fmul reassoc nsz arcp contract afn <16 x double> %i.amf, splat (double 1.638300e+04)
  %i.amh = fptoui <16 x double> %i.amg to <16 x i16>
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.aln, i64 %index986
  store <16 x i16> %i.amh, ptr %i.ami, align 8, !tbaa !2256
  %index.next988 = add nuw i64 %index986, 16      ; 2 uses
  %vec.ind.next989 = add <16 x i32> %vec.ind987, splat (i32 16)
  %i.amj = icmp eq i64 %index.next988, 3072
  br i1 %i.amj, label %scalar.ph, label %vector.body985, !llvm.loop !2294

scalar.ph:                                        ; preds = %vector.body985
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 11744
  store i16 16287, ptr %i.amk, align 8, !tbaa !2256
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 153380
  store float 1.000000e+00, ptr %i.aml, align 4, !tbaa !2237
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 153384
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 153400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.amn, align 8, !tbaa !2237
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 153404
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 153420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amo, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.amp, align 4, !tbaa !2237
  br label %.thread630

.thread630:                                       ; preds = %.lr.ph746, %bb.hi, %.preheader694, %scalar.ph, %bb.hf, %.loopexit695
  %i.amq = phi i1 [ %i.ajj, %scalar.ph ], [ false, %bb.hf ], [ true, %bb.hi ], [ %i.ajj, %.loopexit695 ], [ true, %.preheader694 ], [ true, %.lr.ph746 ]
  %.unpack515 = phi i64 [ 0, %scalar.ph ], [ 0, %bb.hf ], [ 0, %bb.hi ], [ %.unpack502, %.loopexit695 ], [ 0, %.preheader694 ], [ 0, %.lr.ph746 ] ; 2 uses
  %.unpack513 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), %scalar.ph ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hf ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hi ], [ %.unpack500, %.loopexit695 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.preheader694 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.lr.ph746 ] ; 7 uses
  %i.amr = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.ams = icmp eq i64 %.unpack515, 0             ; 4 uses
  %i.amt = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.amu = or i1 %i.amr, %i.amt
  %i.amv = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw28nikon_load_padded_packed_rawEv to i64)
  %or.cond581667 = or i1 %i.amv, %i.amu
  %i.amw = icmp eq i32 %i.xr, 43                  ; 2 uses
  %i.amx = and i1 %i.amw, %or.cond581667
  %or.cond661 = and i1 %i.ams, %i.amx
  br i1 %or.cond661, label %bb.hj, label %.loopexit691

bb.hj:                                            ; preds = %.thread630
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.amz = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.amy, ptr noundef nonnull dereferenceable(8) @.str.55, i64 noundef 7) #22
  %.not516 = icmp eq i32 %i.amz, 0
  br i1 %.not516, label %.loopexit691, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !2229
  %i.anc = icmp eq i32 %i.anb, 12
  br i1 %i.anc, label %.preheader690, label %.loopexit691

.preheader690:                                    ; preds = %bb.hk
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.and, align 8, !tbaa !2232
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.anf = load i32, ptr %i.ane, align 8, !tbaa !2233
  %i.ang = lshr i32 %i.anf, 2
  store i32 %i.ang, ptr %i.ane, align 8, !tbaa !2233
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 3 uses
  %i.ani = load <4 x i32>, ptr %i.anh, align 8, !tbaa !2270
  %i.anj = lshr <4 x i32> %i.ani, splat (i32 2)
  store <4 x i32> %i.anj, ptr %i.anh, align 8, !tbaa !2270
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.anm = load i32, ptr %i.ank, align 8, !tbaa !2270
  %i.ann = load i32, ptr %i.anl, align 4, !tbaa !2270
  %i.ano = mul i32 %i.ann, %i.anm
  %.not763 = icmp eq i32 %i.ano, 0
  br i1 %.not763, label %.loopexit691, label %.lr.ph752

.lr.ph752:                                        ; preds = %.preheader690, %.lr.ph752
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %.lr.ph752 ], [ 0, %.preheader690 ] ; 2 uses
  %i.anp = add nuw nsw i64 %indvars.iv846, 6
  %i.anq = and i64 %i.anp, 4294967295
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %i.anq ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !2270
  %i.ant = lshr i32 %i.ans, 2
  store i32 %i.ant, ptr %i.anr, align 4, !tbaa !2270
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.anu = load i32, ptr %i.ank, align 8, !tbaa !2270
  %i.anv = load i32, ptr %i.anl, align 4, !tbaa !2270
  %i.anw = mul i32 %i.anv, %i.anu
  %i.anx = zext i32 %i.anw to i64
  %i.any = icmp samesign ult i64 %indvars.iv.next847, %i.anx
  br i1 %i.any, label %.lr.ph752, label %.loopexit691, !llvm.loop !2295

.loopexit691:                                     ; preds = %.lr.ph752, %.preheader690, %.thread630, %bb.hk, %bb.hj
  %i.anz = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.aoa = and i1 %i.anz, %i.ams
  br i1 %i.aoa, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.loopexit691
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 9, ptr %i.aob, align 8, !tbaa !2296
  br label %bb.hv

bb.hm:                                            ; preds = %.loopexit691
  switch i32 %i.xr, label %.thread632 [
    i32 8, label %bb.hn
    i32 43, label %bb.hp
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !2270
  %i.aoe = icmp ugt i32 %i.aod, 7
  br i1 %i.aoe, label %bb.ho, label %.thread632

bb.ho:                                            ; preds = %bb.hn
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.aog = load i32, ptr %i.aof, align 8, !tbaa !2270
  %.not520 = icmp eq i32 %i.aog, 0
  br i1 %.not520, label %.thread632, label %.thread634

.thread634:                                       ; preds = %bb.ho
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 3, ptr %i.aoh, align 8, !tbaa !2296
  br label %bb.ia

bb.hp:                                            ; preds = %bb.hm
  %i.aoi = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !2297
  %i.aok = icmp eq i32 %i.aoj, 1
  br i1 %i.aok, label %.thread633, label %.thread632

.thread633:                                       ; preds = %bb.hp
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 5, ptr %i.aol, align 8, !tbaa !2296
  br label %bb.hw

.thread632:                                       ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.hp
  br i1 %i.ajk, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.thread632
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 4129
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !2298
  %i.aoo = and i8 %i.aon, 1
  %.not521 = icmp eq i8 %i.aoo, 0
  br i1 %.not521, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 17, ptr %i.aop, align 8, !tbaa !2296
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %.thread632
  %i.aoq = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw19sony_ycbcr_load_rawEv to i64)
  %i.aor = and i1 %i.aoq, %i.amq
  %or.cond663 = and i1 %i.aor, %i.ams
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 192600 ; 2 uses
  br i1 %or.cond663, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 33, ptr %i.aos, align 8, !tbaa !2296
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i32 0, ptr %i.aos, align 8, !tbaa !2296
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hr, %bb.hu, %bb.ht, %bb.hl
  br i1 %i.amw, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %.thread633, %bb.hv
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !2270
  %.not525 = icmp eq i32 %i.aou, 0
  br i1 %.not525, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !2232 ; 2 uses
  %i.aox = icmp ugt i32 %i.aow, 1024
  br i1 %i.aox, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.aoy = icmp ne i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.aoz = icmp ne i64 %.unpack515, 0
  %i.apa = or i1 %i.aoy, %i.aoz
  br i1 %i.apa, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.apb = uitofp reassoc nsz arcp contract afn i32 %i.aow to float
  %i.apc = fmul reassoc nnan nsz arcp contract afn float %i.apb, f0x3F6F4098
  %i.apd = fptosi float %i.apc to i64
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = insertelement <4 x i32> poison, i32 %i.ape, i64 0
  %i.apg = shufflevector <4 x i32> %i.apf, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.apg, ptr %i.aot, align 4, !tbaa !2270
  br label %bb.ia

bb.ia:                                            ; preds = %.thread634, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  br i1 %i.ajk, label %bb.ib, label %.loopexit

bb.ib:                                            ; preds = %bb.ia
  %i.aph = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.api = load i64, ptr %i.aph, align 8, !tbaa !2289
  %i.apj = icmp eq i64 %i.api, 77012
  br i1 %i.apj, label %vector.body993, label %.loopexit

vector.body993:                                   ; preds = %bb.ib
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 3 uses
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.apk, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %i.apl = extractelement <8 x ptr> %wide.gep, i64 0
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %wide.vec = load <32 x i32>, ptr %i.apm, align 4, !tbaa !2270
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.apn = icmp ne <8 x i32> %strided.vec, zeroinitializer ; 4 uses
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> %i.apn, <8 x i32> poison), !tbaa !2270
  %i.apo = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather to <8 x float>
  %i.app = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.apo, splat (float 1.050300e+00)
  %i.apq = fptosi <8 x float> %i.app to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.apq, <8 x ptr> align 8 %wide.gep, <8 x i1> %i.apn), !tbaa !2270
  %wide.gep996 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  %wide.masked.gather997 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep996, <8 x i1> %i.apn, <8 x i32> poison), !tbaa !2270
  %i.apr = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather997 to <8 x float>
  %i.aps = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.apr, splat (float 2.286700e+00)
  %i.apt = fptosi <8 x float> %i.aps to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.apt, <8 x ptr> align 8 %wide.gep996, <8 x i1> %i.apn), !tbaa !2270
  %wide.gep.1 = getelementptr inbounds nuw [16 x i8], ptr %i.apk, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 4 uses
  %i.apu = extractelement <8 x ptr> %wide.gep.1, i64 0
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 4
  %wide.vec.1 = load <32 x i32>, ptr %i.apv, align 4, !tbaa !2270
  %strided.vec.1 = shufflevector <32 x i32> %wide.vec.1, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.apw = icmp ne <8 x i32> %strided.vec.1, zeroinitializer ; 4 uses
  %wide.masked.gather.1 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep.1, <8 x i1> %i.apw, <8 x i32> poison), !tbaa !2270
  %i.apx = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather.1 to <8 x float>
  %i.apy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.apx, splat (float 1.050300e+00)
  %i.apz = fptosi <8 x float> %i.apy to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.apz, <8 x ptr> align 8 %wide.gep.1, <8 x i1> %i.apw), !tbaa !2270
  %wide.gep996.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 8 ; 2 uses
  %wide.masked.gather997.1 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep996.1, <8 x i1> %i.apw, <8 x i32> poison), !tbaa !2270
  %i.aqa = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather997.1 to <8 x float>
  %i.aqb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqa, splat (float 2.286700e+00)
  %i.aqc = fptosi <8 x float> %i.aqb to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqc, <8 x ptr> align 8 %wide.gep996.1, <8 x i1> %i.apw), !tbaa !2270
  %wide.gep.2 = getelementptr inbounds nuw [16 x i8], ptr %i.apk, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 4 uses
  %i.aqd = extractelement <8 x ptr> %wide.gep.2, i64 0
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %wide.vec.2 = load <32 x i32>, ptr %i.aqe, align 4, !tbaa !2270
  %strided.vec.2 = shufflevector <32 x i32> %wide.vec.2, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aqf = icmp ne <8 x i32> %strided.vec.2, zeroinitializer ; 4 uses
  %wide.masked.gather.2 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep.2, <8 x i1> %i.aqf, <8 x i32> poison), !tbaa !2270
  %i.aqg = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather.2 to <8 x float>
  %i.aqh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqg, splat (float 1.050300e+00)
  %i.aqi = fptosi <8 x float> %i.aqh to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aqi, <8 x ptr> align 8 %wide.gep.2, <8 x i1> %i.aqf), !tbaa !2270
  %wide.gep996.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 8 ; 2 uses
  %wide.masked.gather997.2 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep996.2, <8 x i1> %i.aqf, <8 x i32> poison), !tbaa !2270
  %i.aqj = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.masked.gather997.2 to <8 x float>
  %i.aqk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqj, splat (float 2.286700e+00)
  %i.aql = fptosi <8 x float> %i.aqk to <8 x i32>
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aql, <8 x ptr> align 8 %wide.gep996.2, <8 x i1> %i.aqf), !tbaa !2270
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 187612
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !2270
  %.not545 = icmp eq i32 %i.aqn, 0
  br i1 %.not545, label %.preheader688, label %bb.ic

bb.ic:                                            ; preds = %vector.body993
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 187608 ; 2 uses
  %i.aqp = tail call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 8 %i.aqo, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !2270
  %i.aqq = shufflevector <3 x i32> %i.aqp, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.aqr = sitofp <2 x i32> %i.aqq to <2 x float>
  %i.aqs = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.aqr, <float 1.050300e+00, float 2.286700e+00>
  %i.aqt = shufflevector <2 x float> %i.aqs, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.aqu = fptosi <3 x float> %i.aqt to <3 x i32>
  tail call void @llvm.masked.store.v3i32.p0(<3 x i32> %i.aqu, ptr align 8 %i.aqo, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !2270
  br label %.preheader688

.preheader688:                                    ; preds = %vector.body993, %bb.ic
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 191320 ; 4 uses
  br label %bb.id

.preheader687:                                    ; preds = %bb.il
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 187240
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.aqy = load <4 x i32>, ptr %i.aqw, align 8, !tbaa !2270
  %i.aqz = sitofp <4 x i32> %i.aqy to <4 x float>
  store <4 x float> %i.aqz, ptr %i.aqx, align 4, !tbaa !2237
  br label %.loopexit

bb.id:                                            ; preds = %bb.il, %.preheader688
  %indvars.iv853 = phi i64 [ 0, %.preheader688 ], [ %indvars.iv.next854.3, %bb.il ] ; 5 uses
  %i.ara = getelementptr inbounds nuw [20 x i8], ptr %i.aqv, i64 %indvars.iv853 ; 3 uses
  %i.arb = load float, ptr %i.ara, align 8, !tbaa !2237
  %i.arc = fcmp reassoc nsz arcp contract afn ogt float %i.arb, 0.000000e+00
  br i1 %i.arc, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 4 ; 2 uses
  %i.are = load float, ptr %i.ard, align 4, !tbaa !2237
  %i.arf = fmul reassoc nsz arcp contract afn float %i.are, 1.050300e+00
  store float %i.arf, ptr %i.ard, align 4, !tbaa !2237
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ara, i64 12 ; 2 uses
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !2237
  %i.ari = fmul reassoc nsz arcp contract afn float %i.arh, 2.286700e+00
  store float %i.ari, ptr %i.arg, align 4, !tbaa !2237
  br label %bb.if

bb.if:                                            ; preds = %bb.id, %bb.ie
  %i.arj = getelementptr inbounds nuw [20 x i8], ptr %i.aqv, i64 %indvars.iv853 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 20
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !2237
  %i.arm = fcmp reassoc nsz arcp contract afn ogt float %i.arl, 0.000000e+00
  br i1 %i.arm, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arj, i64 24 ; 2 uses
  %i.aro = load float, ptr %i.arn, align 8, !tbaa !2237
  %i.arp = fmul reassoc nsz arcp contract afn float %i.aro, 1.050300e+00
  store float %i.arp, ptr %i.arn, align 8, !tbaa !2237
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arj, i64 32 ; 2 uses
  %i.arr = load float, ptr %i.arq, align 8, !tbaa !2237
  %i.ars = fmul reassoc nsz arcp contract afn float %i.arr, 2.286700e+00
  store float %i.ars, ptr %i.arq, align 8, !tbaa !2237
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.art = getelementptr inbounds nuw [20 x i8], ptr %i.aqv, i64 %indvars.iv853 ; 3 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 40
  %i.arv = load float, ptr %i.aru, align 8, !tbaa !2237
  %i.arw = fcmp reassoc nsz arcp contract afn ogt float %i.arv, 0.000000e+00
  br i1 %i.arw, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.arx = getelementptr inbounds nuw i8, ptr %i.art, i64 44 ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !2237
  %i.arz = fmul reassoc nsz arcp contract afn float %i.ary, 1.050300e+00
  store float %i.arz, ptr %i.arx, align 4, !tbaa !2237
  %i.asa = getelementptr inbounds nuw i8, ptr %i.art, i64 52 ; 2 uses
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !2237
  %i.asc = fmul reassoc nsz arcp contract afn float %i.asb, 2.286700e+00
  store float %i.asc, ptr %i.asa, align 4, !tbaa !2237
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.asd = getelementptr inbounds nuw [20 x i8], ptr %i.aqv, i64 %indvars.iv853 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 60
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !2237
  %i.asg = fcmp reassoc nsz arcp contract afn ogt float %i.asf, 0.000000e+00
  br i1 %i.asg, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asd, i64 64 ; 2 uses
  %i.asi = load float, ptr %i.ash, align 8, !tbaa !2237
  %i.asj = fmul reassoc nsz arcp contract afn float %i.asi, 1.050300e+00
  store float %i.asj, ptr %i.ash, align 8, !tbaa !2237
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asd, i64 72 ; 2 uses
  %i.asl = load float, ptr %i.ask, align 8, !tbaa !2237
  %i.asm = fmul reassoc nsz arcp contract afn float %i.asl, 2.286700e+00
  store float %i.asm, ptr %i.ask, align 8, !tbaa !2237
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %indvars.iv.next854.3 = add nuw nsw i64 %indvars.iv853, 4 ; 2 uses
  %exitcond856.not.3 = icmp eq i64 %indvars.iv.next854.3, 64
  br i1 %exitcond856.not.3, label %.preheader687, label %bb.id, !llvm.loop !2299

.loopexit:                                        ; preds = %.preheader687, %bb.ib, %bb.ia
  %i.asn = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw18panasonic_load_rawEv to i64)
  %i.aso = icmp eq i32 %i.xr, 47
  %i.asp = and i1 %i.aso, %i.asn
  %or.cond664 = and i1 %i.asp, %i.ams
  br i1 %or.cond664, label %bb.im, label %bb.ir

bb.im:                                            ; preds = %.loopexit
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 381640
  %i.asr = load i32, ptr %i.asq, align 8, !tbaa !2270 ; 2 uses
  %.not532 = icmp eq i32 %i.asr, 0
  br i1 %.not532, label %bb.ir, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 381644
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !2270 ; 2 uses
  %.not533 = icmp eq i32 %i.ast, 0
  br i1 %.not533, label %bb.ir, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 381648
  %i.asv = load i32, ptr %i.asu, align 8, !tbaa !2270 ; 2 uses
  %.not534 = icmp eq i32 %i.asv, 0
  br i1 %.not534, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !2271 ; 2 uses
  %i.asy = icmp eq i32 %i.asx, 5
  br i1 %i.asy, label %bb.iq, label %.preheader

bb.iq:                                            ; preds = %bb.ip
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 381664
  store i32 0, ptr %i.asz, align 8, !tbaa !2218
  br label %.preheader

.preheader:                                       ; preds = %bb.iq, %bb.ip
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.atb = icmp eq i32 %i.asx, 4
  %i.atc = select i1 %i.atb, i32 15, i32 0        ; 3 uses
  %i.atd = add i32 %i.atc, %i.asr                 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.atf = add i32 %i.atc, %i.ast                 ; 2 uses
  %i.atg = add i32 %i.atc, %i.asv                 ; 2 uses
  %spec.select584 = tail call i32 @llvm.umin.i32(i32 %i.atf, i32 %i.atd)
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %spec.select584.2 = tail call i32 @llvm.umin.i32(i32 %spec.select584, i32 %i.atg) ; 4 uses
  %i.atj = sub i32 %i.atd, %spec.select584.2
  store i32 %i.atj, ptr %i.ate, align 8, !tbaa !2270
  %i.atk = sub i32 %i.atf, %spec.select584.2      ; 2 uses
  store i32 %i.atk, ptr %i.ath, align 4, !tbaa !2270
  %i.atl = sub i32 %i.atg, %spec.select584.2
  store i32 %i.atl, ptr %i.ati, align 8, !tbaa !2270
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.atk, ptr %i.atm, align 4, !tbaa !2270
  store i32 %spec.select584.2, ptr %i.ata, align 8, !tbaa !2233
  br label %bb.ir

bb.ir:                                            ; preds = %.preheader, %bb.io, %bb.in, %bb.im, %.loopexit
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 153872 ; 4 uses
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !2300 ; 2 uses
  %.not535 = icmp eq i32 %i.ato, 0
  br i1 %.not535, label %bb.jg, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 153864 ; 4 uses
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !2301 ; 2 uses
  %.not536 = icmp eq ptr %i.atq, null
  br i1 %.not536, label %bb.iv, label %bb.it

bb.it:                                            ; preds = %bb.is
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.atq)
          to label %._crit_edge887 unwind label %bb.iu

._crit_edge887:                                   ; preds = %bb.it
  %.pre888 = load i32, ptr %i.atn, align 8, !tbaa !2300
  br label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.atr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jh

bb.iv:                                            ; preds = %._crit_edge887, %bb.is
  %i.ats = phi i32 [ %.pre888, %._crit_edge887 ], [ %i.ato, %bb.is ]
  %i.att = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !11
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 48
  %i.atw = load ptr, ptr %i.atv, align 8
  %i.atx = invoke noundef i64 %i.atw(ptr noundef nonnull align 8 dereferenceable(8) %i.att)
          to label %bb.iw unwind label %bb.je, !call_target !2203

bb.iw:                                            ; preds = %bb.iv
  %i.aty = zext i32 %i.ats to i64
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 381624 ; 3 uses
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !2302
  %i.aub = sub nsw i64 %i.atx, %i.aua
  %i.auc = icmp sgt i64 %i.aub, %i.aty
  br i1 %i.auc, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.aud = load i32, ptr %i.atn, align 8, !tbaa !2300
  %i.aue = zext i32 %i.aud to i64
  br label %bb.ja

bb.iy:                                            ; preds = %bb.iw
  %i.auf = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !11
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 48
  %i.aui = load ptr, ptr %i.auh, align 8
  %i.auj = invoke noundef i64 %i.aui(ptr noundef nonnull align 8 dereferenceable(8) %i.auf)
          to label %bb.iz unwind label %bb.je, !call_target !2203

bb.iz:                                            ; preds = %bb.iy
  %i.auk = load i64, ptr %i.atz, align 8, !tbaa !2302
  %i.aul = sub nsw i64 %i.auj, %i.auk
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.ix
  %i.aum = phi i64 [ %i.aue, %bb.ix ], [ %i.aul, %bb.iz ] ; 4 uses
  %i.aun = add i64 %i.aum, -1
  %or.cond = icmp ult i64 %i.aun, 268435455
  br i1 %or.cond, label %bb.jb, label %bb.jf

bb.jb:                                            ; preds = %bb.ja
  %i.auo = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.aum, i64 noundef 1)
          to label %bb.jc unwind label %bb.je

bb.jc:                                            ; preds = %bb.jb
  store ptr %i.auo, ptr %i.atp, align 8, !tbaa !2301
  %i.aup = trunc nuw nsw i64 %i.aum to i32
  store i32 %i.aup, ptr %i.atn, align 8, !tbaa !2300
  %i.auq = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.aur = load i64, ptr %i.atz, align 8, !tbaa !2302
  %i.aus = load ptr, ptr %i.auq, align 8, !tbaa !11
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 32
  %i.auu = load ptr, ptr %i.aut, align 8
  %i.auv = invoke noundef i32 %i.auu(ptr noundef nonnull align 8 dereferenceable(8) %i.auq, i64 noundef %i.aur, i32 noundef 0)
          to label %bb.jd unwind label %bb.je, !call_target !2303 ; 0 uses

bb.jd:                                            ; preds = %bb.jc
  %i.auw = load ptr, ptr %i.z, align 8, !tbaa !2215 ; 2 uses
  %i.aux = load ptr, ptr %i.atp, align 8, !tbaa !2301
  %i.auy = load ptr, ptr %i.auw, align 8, !tbaa !11
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 24
  %i.ava = load ptr, ptr %i.auz, align 8
  %i.avb = invoke noundef i32 %i.ava(ptr noundef nonnull align 8 dereferenceable(8) %i.auw, ptr noundef %i.aux, i64 noundef %i.aum, i64 noundef 1)
          to label %bb.jg unwind label %bb.je, !call_target !2306 ; 0 uses

bb.je:                                            ; preds = %bb.jd, %bb.jc, %bb.jb, %bb.iy, %bb.iv
  %i.avc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
          catch ptr @_ZTISt9exception
  br label %bb.jh

bb.jf:                                            ; preds = %bb.ja
  store ptr null, ptr %i.atp, align 8, !tbaa !2301
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.jd, %bb.ir
  %i.avd = load i32, ptr %i.aa, align 8, !tbaa !2216
  %i.ave = or i32 %i.avd, 2
  store i32 %i.ave, ptr %i.aa, align 8, !tbaa !2216
  br label %bb.ka

bb.jh:                                            ; preds = %bb.iu, %bb.je, %bb.cb, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ne, %bb.cb ], [ %i.aq, %bb.m ], [ %i.avc, %bb.je ], [ %i.atr, %bb.iu ] ; 3 uses
  %.1317 = extractvalue { ptr, i32 } %.pn.pn, 0   ; 3 uses
  %.1325 = extractvalue { ptr, i32 } %.pn.pn, 1   ; 3 uses
  %i.avf = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #18
  %i.avg = icmp eq i32 %.1325, %i.avf
  br i1 %i.avg, label %bb.ji, label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  %i.avh = tail call ptr @__cxa_begin_catch(ptr %.1317) #18 ; 0 uses
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jj unwind label %bb.jz

bb.jj:                                            ; preds = %bb.ji
  tail call void @__cxa_end_catch()
  br label %bb.kl

bb.jk:                                            ; preds = %bb.jh
  %i.avi = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17LibRaw_exceptions) #18
  %i.avj = icmp eq i32 %.1325, %i.avi
  br i1 %i.avj, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.avk = tail call ptr @__cxa_begin_catch(ptr %.1317) #18
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !2309
  switch i32 %i.avl, label %bb.jy [
    i32 11, label %bb.jq
    i32 1, label %bb.js
    i32 10, label %bb.jt
    i32 2, label %.invoke965
    i32 3, label %.invoke965
    i32 9, label %.invoke965
    i32 4, label %bb.ju
    i32 5, label %bb.ju
    i32 6, label %bb.jv
    i32 7, label %bb.jw
    i32 12, label %bb.jx
  ]

bb.jm:                                            ; preds = %bb.jk
  %i.avm = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.avn = icmp eq i32 %.1325, %i.avm
  br i1 %i.avn, label %bb.jn, label %bb.km

bb.jn:                                            ; preds = %bb.jm
  %i.avo = tail call ptr @__cxa_begin_catch(ptr %.1317) #18 ; 0 uses
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  tail call void @__cxa_end_catch()
  br label %bb.kl

bb.jp:                                            ; preds = %bb.jn
  %i.avp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.km unwind label %bb.kn

bb.jq:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jr:                                            ; preds = %.invoke965, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jq
  %i.avq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #18
  br label %bb.km

bb.js:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jt:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

.invoke965:                                       ; preds = %bb.jl, %bb.jl, %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.ju:                                            ; preds = %bb.jl, %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jv:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jw:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jx:                                            ; preds = %bb.jl
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.jy unwind label %bb.jr

bb.jy:                                            ; preds = %.invoke965, %bb.jl, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jq
  %.0312 = phi i32 [ -2, %bb.jx ], [ -100011, %bb.jw ], [ -100013, %bb.jq ], [ -100007, %bb.js ], [ -100012, %bb.jt ], [ -1, %bb.jl ], [ -100008, %.invoke965 ], [ -100009, %bb.ju ], [ -100010, %bb.jv ]
  tail call void @__cxa_end_catch() #18
  br label %bb.kl

bb.jz:                                            ; preds = %bb.ji
  %i.avr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.km unwind label %bb.kn

bb.ka:                                            ; preds = %bb.g, %bb.jg
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.avu = load i32, ptr %i.avt, align 8, !tbaa !2236
  %i.avv = icmp eq i32 %i.avu, 0
  br i1 %i.avv, label %bb.kl, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 768400
  store i64 ptrtoint (ptr @_ZN6LibRaw14write_ppm_tiffEv to i64), ptr %i.avw, align 8, !tbaa !2311
  %.repack539 = getelementptr inbounds nuw i8, ptr %0, i64 768408
  store i64 0, ptr %.repack539, align 8, !tbaa !2311
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack540 = load i64, ptr %i.avx, align 8, !tbaa !2231
  %.elt541 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack542 = load i64, ptr %.elt541, align 8, !tbaa !2231
  %i.avy = icmp eq i64 %.unpack540, ptrtoint (ptr @_ZN6LibRaw20kodak_ycbcr_load_rawEv to i64)
  %i.avz = icmp eq i64 %.unpack542, 0
  %i.awa = and i1 %i.avy, %i.avz
  br i1 %i.awa, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.awc = load <2 x i16>, ptr %i.awb, align 4, !tbaa !2256 ; 2 uses
  %i.awd = and <2 x i16> %i.awc, splat (i16 1)
  %i.awe = add <2 x i16> %i.awd, %i.awc
  store <2 x i16> %i.awe, ptr %i.awb, align 4, !tbaa !2256
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.awg = load i32, ptr %i.awf, align 8, !tbaa !2226 ; 2 uses
  %.not543 = icmp eq i32 %i.awg, 0
  br i1 %.not543, label %.thread637, label %bb.ke

.thread637:                                       ; preds = %bb.kd
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 381656
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 381668
  store i16 0, ptr %i.awi, align 4, !tbaa !2312
  br label %bb.kk

bb.ke:                                            ; preds = %bb.kd
  %i.awj = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.awk = load i32, ptr %i.awj, align 8, !tbaa !2313
  %.not544 = icmp eq i32 %i.awk, 0
  br i1 %.not544, label %bb.kf, label %.thread636

bb.kf:                                            ; preds = %bb.ke
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !2314
  %i.awn = fcmp reassoc nsz arcp contract afn une float %i.awm, 0.000000e+00
  br i1 %i.awn, label %.thread636, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !2315
  %i.awq = fcmp reassoc nsz arcp contract afn une double %i.awp, 1.000000e+00
  br i1 %i.awq, label %.thread636, label %bb.kh

.thread636:                                       ; preds = %bb.ke, %bb.kg, %bb.kf
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 381656
  %i.aws = getelementptr inbounds nuw i8, ptr %0, i64 381668
  store i16 1, ptr %i.aws, align 4, !tbaa !2312
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !2315
  %i.awv = fcmp reassoc nsz arcp contract afn une double %i.awu, 1.000000e+00 ; 2 uses
  %i.aww = zext i1 %i.awv to i16
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 381656 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 381668
  store i16 %i.aww, ptr %i.awy, align 4, !tbaa !2312
  br i1 %i.awv, label %bb.ki, label %bb.kk

bb.ki:                                            ; preds = %.thread636, %bb.kh
  %i.awz = phi ptr [ %i.awr, %.thread636 ], [ %i.awx, %bb.kh ] ; 2 uses
  %i.axa = icmp ugt i32 %i.awg, 999
  br i1 %i.axa, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.axc = load <2 x i16>, ptr %i.axb, align 4, !tbaa !2256
  %i.axd = and <2 x i16> %i.axc, splat (i16 -2)
  store <2 x i16> %i.axd, ptr %i.axb, align 4, !tbaa !2256
  br label %bb.kk

bb.kk:                                            ; preds = %.thread637, %bb.kj, %bb.ki, %bb.kh
  %i.axe = phi ptr [ %i.awz, %bb.kj ], [ %i.awz, %bb.ki ], [ %i.awx, %bb.kh ], [ %i.awh, %.thread637 ]
  %i.axf = phi i32 [ 1, %bb.kj ], [ 1, %bb.ki ], [ 0, %bb.kh ], [ 0, %.thread637 ] ; 4 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.axi = load i16, ptr %i.axh, align 4, !tbaa !2225
  %i.axj = zext i16 %i.axi to i32
  %i.axk = add nuw nsw i32 %i.axf, %i.axj
  %i.axl = lshr i32 %i.axk, %i.axf
  %i.axm = trunc i32 %i.axl to i16
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.axm, ptr %i.axn, align 4, !tbaa !2235
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !2224
  %i.axq = zext i16 %i.axp to i32
  %i.axr = add nuw nsw i32 %i.axf, %i.axq
  %i.axs = lshr i32 %i.axr, %i.axf
  %i.axt = trunc i32 %i.axs to i16
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.axt, ptr %i.axu, align 2, !tbaa !2234
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 194488
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(187088) %i.axv, ptr noundef nonnull align 8 dereferenceable(187088) %i.axw, i64 187088, i1 false)
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 194288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.axx, ptr noundef nonnull align 8 dereferenceable(184) %i.axg, i64 184, i1 false)
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 193848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.axy, ptr noundef nonnull align 8 dereferenceable(440) %i.avs, i64 440, i1 false)
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 194472
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axz, ptr noundef nonnull align 8 dereferenceable(16) %i.axe, i64 16, i1 false)
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 8, !tbaa !2216
  %i.ayc = or i32 %i.ayb, 4
  store i32 %i.ayc, ptr %i.aya, align 8, !tbaa !2216
  br label %bb.kl

bb.kl:                                            ; preds = %bb.ka, %bb.l, %bb.e, %bb.b, %bb.a, %bb.jy, %bb.jo, %bb.jj, %bb.kk
  %.1313 = phi i32 [ -100009, %bb.b ], [ -2, %bb.l ], [ 0, %bb.kk ], [ -100007, %bb.jj ], [ %.0312, %bb.jy ], [ -100009, %bb.jo ], [ -100012, %bb.e ], [ 2, %bb.a ], [ -2, %bb.ka ]
  ret i32 %.1313

bb.km:                                            ; preds = %bb.jz, %bb.jp, %bb.jr, %bb.jm
  %.merged = phi { ptr, i32 } [ %i.avp, %bb.jp ], [ %i.avq, %bb.jr ], [ %.pn.pn, %bb.jm ], [ %i.avr, %bb.jz ]
  resume { ptr, i32 } %.merged

bb.kn:                                            ; preds = %bb.jz, %bb.jp
  %i.ayd = landingpad { ptr, i32 }
          catch ptr null
  %i.aye = extractvalue { ptr, i32 } %i.ayd, 0
  tail call void @__clang_call_terminate(ptr %i.aye) #21
  unreachable
}

declare void @_ZN6LibRaw8identifyEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare void @_ZN6LibRaw25unpacked_load_raw_FujiDBPEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN6LibRaw14nikon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw16nikon_read_curveEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare void @_ZN6LibRaw22lossless_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw18panasonic_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20panasonicC6_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20panasonicC7_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20panasonicC8_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

declare void @_ZN6LibRaw20nikon_14bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw19canon_sraw_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw19fuji_14bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare void @_ZN6LibRaw17sony_arq_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw21pentax_4shot_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare void @_ZN6LibRaw18nikon_yuv_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw15nikon_load_srawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw28nikon_load_padded_packed_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw19sony_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw14write_ppm_tiffEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare void @_ZN6LibRaw20kodak_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #3

declare noundef ptr @_ZN6LibRaw20dcraw_make_mem_imageEPi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN6LibRaw20dcraw_make_mem_thumbEPi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6LibRawD0Ev(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #13

declare noundef i32 @_ZN6LibRaw16get_decoder_infoEP21libraw_decoder_info_t(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw13setCancelFlagEv(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #3

declare void @_ZN6LibRaw15clearCancelFlagEv(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #3

declare noundef i32 @_ZN6LibRaw11adobe_coeffEjPKci(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #3

declare noundef i32 @_ZN6LibRaw22is_phaseone_compressedEv(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #3

declare noundef i32 @_ZN6LibRaw12is_canon_600Ev(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #3

declare void @_ZN6LibRaw19copy_fuji_uncroppedEPtS0_(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw10copy_bayerEPtS0_(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw11fuji_rotateEv(ptr noundef nonnull align 8 dereferenceable(768512)) unnamed_addr #3

declare void @_ZN6LibRaw19convert_to_rgb_loopEPA4_f(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw20lin_interpolate_loopEPii(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6LibRaw17scale_colors_loopEPf(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw16fuji_decode_loopEP22fuji_compressed_paramsiPxPjPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6LibRaw17crxLoadDecodeLoopEPvi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6LibRaw21crxLoadFinalizeLoopE3EPvi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6LibRaw17pana8_decode_loopEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.exp.v16f64(<16 x double>) #12

end_hunk_1
begin_hunk_2_@llvm.assume
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !1397, !18, !120, !18}
!2088 = !DISubprogram(name: "Kodak_KDC_WBtags", linkageName: "_ZN6LibRaw16Kodak_KDC_WBtagsEii", scope: !88, file: !1409, line: 341, type: !1687, scopeLine: 341, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DISubprogram(name: "KodakIllumMatrix", linkageName: "_ZN6LibRaw16KodakIllumMatrixEjPf", scope: !88, file: !1409, line: 342, type: !2090, scopeLine: 342, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!225, !1397, !120, !1028}
!2092 = !DISubprogram(name: "parse_kodak_ifd", linkageName: "_ZN6LibRaw15parse_kodak_ifdEx", scope: !88, file: !1409, line: 343, type: !1956, scopeLine: 343, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2093 = !DISubprogram(name: "parse_tiff_ifd", linkageName: "_ZN6LibRaw14parse_tiff_ifdEx", scope: !88, file: !1409, line: 344, type: !1457, scopeLine: 344, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2094 = !DISubprogram(name: "parse_tiff", linkageName: "_ZN6LibRaw10parse_tiffEx", scope: !88, file: !1409, line: 345, type: !1457, scopeLine: 345, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2095 = !DISubprogram(name: "apply_tiff", linkageName: "_ZN6LibRaw10apply_tiffEv", scope: !88, file: !1409, line: 346, type: !1395, scopeLine: 346, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2096 = !DISubprogram(name: "parse_gps", linkageName: "_ZN6LibRaw9parse_gpsEx", scope: !88, file: !1409, line: 347, type: !1956, scopeLine: 347, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2097 = !DISubprogram(name: "parse_gps_libraw", linkageName: "_ZN6LibRaw16parse_gps_librawEx", scope: !88, file: !1409, line: 348, type: !1956, scopeLine: 348, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = !DISubprogram(name: "aRGB_coeff", linkageName: "_ZN6LibRaw10aRGB_coeffEPA3_d", scope: !88, file: !1409, line: 349, type: !2099, scopeLine: 349, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !1397, !1601}
!2101 = !DISubprogram(name: "romm_coeff", linkageName: "_ZN6LibRaw10romm_coeffEPA3_f", scope: !88, file: !1409, line: 350, type: !2102, scopeLine: 350, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !1397, !1030}
!2104 = !DISubprogram(name: "parse_mos", linkageName: "_ZN6LibRaw9parse_mosEx", scope: !88, file: !1409, line: 351, type: !1956, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DISubprogram(name: "parse_qt", linkageName: "_ZN6LibRaw8parse_qtEx", scope: !88, file: !1409, line: 352, type: !1956, scopeLine: 352, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2106 = !DISubprogram(name: "get_timestamp", linkageName: "_ZN6LibRaw13get_timestampEi", scope: !88, file: !1409, line: 353, type: !1673, scopeLine: 353, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DISubprogram(name: "guess_byte_order", linkageName: "_ZN6LibRaw16guess_byte_orderEi", scope: !88, file: !1409, line: 356, type: !2108, scopeLine: 356, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!225, !1397, !18}
!2110 = !DISubprogram(name: "identify_process_dng_fields", linkageName: "_ZN6LibRaw27identify_process_dng_fieldsEv", scope: !88, file: !1409, line: 357, type: !1395, scopeLine: 357, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2111 = !DISubprogram(name: "identify_finetune_pentax", linkageName: "_ZN6LibRaw24identify_finetune_pentaxEv", scope: !88, file: !1409, line: 358, type: !1395, scopeLine: 358, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2112 = !DISubprogram(name: "identify_finetune_by_filesize", linkageName: "_ZN6LibRaw29identify_finetune_by_filesizeEx", scope: !88, file: !1409, line: 359, type: !1956, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DISubprogram(name: "identify_finetune_dcr", linkageName: "_ZN6LibRaw21identify_finetune_dcrEPcxx", scope: !88, file: !1409, line: 360, type: !2114, scopeLine: 360, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !1397, !172, !1015, !1015}
!2116 = !DISubprogram(name: "tiff_set", linkageName: "_ZN6LibRaw8tiff_setEP8tiff_hdrPtttii", scope: !88, file: !1409, line: 362, type: !2117, scopeLine: 362, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !1397, !2119, !1023, !103, !103, !18, !18}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff_hdr", file: !1052, line: 269, size: 11008, flags: DIFlagFwdDecl, identifier: "_ZTS8tiff_hdr")
!2121 = !DISubprogram(name: "tiff_head", linkageName: "_ZN6LibRaw9tiff_headEP8tiff_hdri", scope: !88, file: !1409, line: 363, type: !2122, scopeLine: 363, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !1397, !2119, !18}
!2124 = !DISubprogram(name: "ahd_interpolate_green_h_and_v", linkageName: "_ZN6LibRaw29ahd_interpolate_green_h_and_vEiiPA512_A512_A3_t", scope: !88, file: !1409, line: 366, type: !2125, scopeLine: 366, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !1397, !18, !18, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 12582912, elements: !2129)
!2129 = !{!960, !960, !430}
!2130 = !DISubprogram(name: "ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielab", linkageName: "_ZN6LibRaw52ahd_interpolate_r_and_b_in_rgb_and_convert_to_cielabEiiPA512_A3_tPA512_A3_s", scope: !88, file: !1409, line: 367, type: !2131, scopeLine: 367, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !1397, !18, !18, !2133, !2136}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24576, elements: !2135)
!2135 = !{!960, !430}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 24576, elements: !2135)
!2138 = !DISubprogram(name: "ahd_interpolate_r_and_b_and_convert_to_cielab", linkageName: "_ZN6LibRaw45ahd_interpolate_r_and_b_and_convert_to_cielabEiiPA512_A512_A3_tPA512_A512_A3_s", scope: !88, file: !1409, line: 368, type: !2139, scopeLine: 368, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !1397, !18, !18, !2127, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 12582912, elements: !2129)
!2143 = !DISubprogram(name: "ahd_interpolate_build_homogeneity_map", linkageName: "_ZN6LibRaw37ahd_interpolate_build_homogeneity_mapEiiPA512_A512_A3_sPA512_A2_c", scope: !88, file: !1409, line: 369, type: !2144, scopeLine: 369, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !1397, !18, !18, !2141, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 8192, elements: !2148)
!2148 = !{!960, !139}
!2149 = !DISubprogram(name: "ahd_interpolate_combine_homogeneous_pixels", linkageName: "_ZN6LibRaw42ahd_interpolate_combine_homogeneous_pixelsEiiPA512_A512_A3_tPA512_A2_c", scope: !88, file: !1409, line: 370, type: !2150, scopeLine: 370, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !1397, !18, !18, !2127, !2146}
!2152 = !DISubprogram(name: "init_fuji_compr", linkageName: "_ZN6LibRaw15init_fuji_comprEP22fuji_compressed_params", scope: !88, file: !1409, line: 372, type: !2153, scopeLine: 372, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !1397, !1625}
!2155 = !DISubprogram(name: "init_fuji_block", linkageName: "_ZN6LibRaw15init_fuji_blockEP21fuji_compressed_blockPK22fuji_compressed_paramsxj", scope: !88, file: !1409, line: 373, type: !2156, scopeLine: 373, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !1397, !2158, !2160, !1015, !120}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuji_compressed_block", file: !1409, line: 373, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS21fuji_compressed_block")
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!2162 = !DISubprogram(name: "copy_line_to_xtrans", linkageName: "_ZN6LibRaw19copy_line_to_xtransEP21fuji_compressed_blockiii", scope: !88, file: !1409, line: 374, type: !2163, scopeLine: 374, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !1397, !2158, !18, !18, !18}
!2165 = !DISubprogram(name: "copy_line_to_bayer", linkageName: "_ZN6LibRaw18copy_line_to_bayerEP21fuji_compressed_blockiii", scope: !88, file: !1409, line: 375, type: !2163, scopeLine: 375, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DISubprogram(name: "xtrans_decode_block", linkageName: "_ZN6LibRaw19xtrans_decode_blockEP21fuji_compressed_blockPK22fuji_compressed_paramsi", scope: !88, file: !1409, line: 376, type: !2167, scopeLine: 376, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !1397, !2158, !2160, !18}
!2169 = !DISubprogram(name: "fuji_bayer_decode_block", linkageName: "_ZN6LibRaw23fuji_bayer_decode_blockEP21fuji_compressed_blockPK22fuji_compressed_paramsi", scope: !88, file: !1409, line: 377, type: !2167, scopeLine: 377, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2170 = !DISubprogram(name: "fuji_compressed_load_raw", linkageName: "_ZN6LibRaw24fuji_compressed_load_rawEv", scope: !88, file: !1409, line: 378, type: !1395, scopeLine: 378, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2171 = !DISubprogram(name: "fuji_14bit_load_raw", linkageName: "_ZN6LibRaw19fuji_14bit_load_rawEv", scope: !88, file: !1409, line: 379, type: !1395, scopeLine: 379, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DISubprogram(name: "parse_fuji_compressed_header", linkageName: "_ZN6LibRaw28parse_fuji_compressed_headerEv", scope: !88, file: !1409, line: 380, type: !1395, scopeLine: 380, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2173 = !DISubprogram(name: "crxLoadRaw", linkageName: "_ZN6LibRaw10crxLoadRawEv", scope: !88, file: !1409, line: 381, type: !1395, scopeLine: 381, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2174 = !DISubprogram(name: "crxParseImageHeader", linkageName: "_ZN6LibRaw19crxParseImageHeaderEPhix", scope: !88, file: !1409, line: 382, type: !2175, scopeLine: 382, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!18, !1397, !395, !18, !1015}
!2177 = !DISubprogram(name: "panasonicC6_load_raw", linkageName: "_ZN6LibRaw20panasonicC6_load_rawEv", scope: !88, file: !1409, line: 383, type: !1395, scopeLine: 383, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2178 = !DISubprogram(name: "panasonicC7_load_raw", linkageName: "_ZN6LibRaw20panasonicC7_load_rawEv", scope: !88, file: !1409, line: 384, type: !1395, scopeLine: 384, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2179 = !DISubprogram(name: "panasonicC8_load_raw", linkageName: "_ZN6LibRaw20panasonicC8_load_rawEv", scope: !88, file: !1409, line: 385, type: !1395, scopeLine: 385, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2180 = !DISubprogram(name: "nikon_14bit_load_raw", linkageName: "_ZN6LibRaw20nikon_14bit_load_rawEv", scope: !88, file: !1409, line: 387, type: !1395, scopeLine: 387, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2181 = !DISubprogram(name: "dcb_pp", linkageName: "_ZN6LibRaw6dcb_ppEv", scope: !88, file: !1409, line: 390, type: !1395, scopeLine: 390, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2182 = !DISubprogram(name: "dcb_copy_to_buffer", linkageName: "_ZN6LibRaw18dcb_copy_to_bufferEPA3_f", scope: !88, file: !1409, line: 391, type: !2102, scopeLine: 391, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2183 = !DISubprogram(name: "dcb_restore_from_buffer", linkageName: "_ZN6LibRaw23dcb_restore_from_bufferEPA3_f", scope: !88, file: !1409, line: 392, type: !2102, scopeLine: 392, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2184 = !DISubprogram(name: "dcb_color", linkageName: "_ZN6LibRaw9dcb_colorEv", scope: !88, file: !1409, line: 393, type: !1395, scopeLine: 393, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2185 = !DISubprogram(name: "dcb_color_full", linkageName: "_ZN6LibRaw14dcb_color_fullEv", scope: !88, file: !1409, line: 394, type: !1395, scopeLine: 394, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DISubprogram(name: "dcb_map", linkageName: "_ZN6LibRaw7dcb_mapEv", scope: !88, file: !1409, line: 395, type: !1395, scopeLine: 395, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubprogram(name: "dcb_correction", linkageName: "_ZN6LibRaw14dcb_correctionEv", scope: !88, file: !1409, line: 396, type: !1395, scopeLine: 396, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2188 = !DISubprogram(name: "dcb_correction2", linkageName: "_ZN6LibRaw15dcb_correction2Ev", scope: !88, file: !1409, line: 397, type: !1395, scopeLine: 397, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubprogram(name: "dcb_refinement", linkageName: "_ZN6LibRaw14dcb_refinementEv", scope: !88, file: !1409, line: 398, type: !1395, scopeLine: 398, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2190 = !DISubprogram(name: "rgb_to_lch", linkageName: "_ZN6LibRaw10rgb_to_lchEPA3_d", scope: !88, file: !1409, line: 399, type: !2099, scopeLine: 399, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2191 = !DISubprogram(name: "lch_to_rgb", linkageName: "_ZN6LibRaw10lch_to_rgbEPA3_d", scope: !88, file: !1409, line: 400, type: !2099, scopeLine: 400, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DISubprogram(name: "fbdd_correction", linkageName: "_ZN6LibRaw15fbdd_correctionEv", scope: !88, file: !1409, line: 401, type: !1395, scopeLine: 401, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2193 = !DISubprogram(name: "fbdd_correction2", linkageName: "_ZN6LibRaw16fbdd_correction2EPA3_d", scope: !88, file: !1409, line: 402, type: !2099, scopeLine: 402, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2194 = !DISubprogram(name: "fbdd_green", linkageName: "_ZN6LibRaw10fbdd_greenEv", scope: !88, file: !1409, line: 403, type: !1395, scopeLine: 403, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubprogram(name: "dcb_ver", linkageName: "_ZN6LibRaw7dcb_verEPA3_f", scope: !88, file: !1409, line: 404, type: !2102, scopeLine: 404, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2196 = !DISubprogram(name: "dcb_hor", linkageName: "_ZN6LibRaw7dcb_horEPA3_f", scope: !88, file: !1409, line: 405, type: !2102, scopeLine: 405, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubprogram(name: "dcb_color2", linkageName: "_ZN6LibRaw10dcb_color2EPA3_f", scope: !88, file: !1409, line: 406, type: !2102, scopeLine: 406, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2198 = !DISubprogram(name: "dcb_color3", linkageName: "_ZN6LibRaw10dcb_color3EPA3_f", scope: !88, file: !1409, line: 407, type: !2102, scopeLine: 407, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2199 = !DISubprogram(name: "dcb_decide", linkageName: "_ZN6LibRaw10dcb_decideEPA3_fS1_", scope: !88, file: !1409, line: 408, type: !2200, scopeLine: 408, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !1397, !1030, !1030}
!2202 = !DISubprogram(name: "dcb_nyquist", linkageName: "_ZN6LibRaw11dcb_nyquistEv", scope: !88, file: !1409, line: 409, type: !1395, scopeLine: 409, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2203 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !15, file: !14, line: 104, type: !2204, scopeLine: 104, containingType: !15, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!1015, !19}
!2206 = !{ptr @_ZN6LibRaw20libraw_openfile_tailEP26LibRaw_abstract_datastream}
!2207 = !DISubprogram(name: "valid", linkageName: "_ZN24LibRaw_buffer_datastream5validEv", scope: !2208, file: !14, line: 273, type: !2209, scopeLine: 273, containingType: !2208, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2208 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_buffer_datastream", file: !14, line: 268, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS24LibRaw_buffer_datastream")
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!18, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2212 = !DISubprogram(name: "~LibRaw_buffer_datastream", linkageName: "_ZN24LibRaw_buffer_datastreamD4Ev", scope: !2208, file: !14, line: 272, type: !2213, scopeLine: 272, containingType: !2208, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2211}
!2215 = !{!24, !75, i64 381592}
!2216 = !{!24, !8, i64 5592}
!2217 = !{!24, !8, i64 48}
!2218 = !{!24, !8, i64 381664}
!2219 = !{!24, !38, i64 381760}
!2220 = !{!24, !29, i64 18}
!2221 = !{!24, !29, i64 16}
!2222 = !{!24, !29, i64 26}
!2223 = !{!24, !29, i64 24}
!2224 = !{!24, !29, i64 22}
!2225 = !{!24, !29, i64 20}
!2226 = !{!24, !8, i64 544}
!2227 = !{!24, !8, i64 540}
!2228 = !{!24, !8, i64 381860}
!2229 = !{!24, !8, i64 381836}
!2230 = !{!24, !29, i64 381728}
!2231 = !{!24, !9, i64 768416}
!2232 = !{!24, !8, i64 153096}
!2233 = !{!24, !8, i64 153088}
!2234 = !{!24, !29, i64 30}
!2235 = !{!24, !29, i64 28}
!2236 = !{!24, !8, i64 528}
!2237 = !{!34, !34, i64 0}
!2238 = !{!24, !27, i64 768312}
!2239 = !{!24, !29, i64 381670}
!2240 = !{!24, !8, i64 381828}
!2241 = !{!24, !8, i64 532}
!2242 = !{!24, !8, i64 524}
!2243 = !{!24, !8, i64 193512}
!2244 = !{!2245, !8, i64 16}
!2245 = !{!"_ZTS23libraw_thumbnail_item_t", !81, i64 0, !29, i64 4, !29, i64 6, !29, i64 8, !8, i64 12, !8, i64 16, !38, i64 24}
!2246 = !{!2245, !29, i64 6}
!2247 = !{!2245, !29, i64 4}
!2248 = distinct !{!2248, !2249}
!2249 = !{!"llvm.loop.unroll.disable"}
!2250 = !{!2245, !38, i64 24}
!2251 = !{!24, !38, i64 381632}
!2252 = !{!2245, !8, i64 12}
!2253 = !{!24, !8, i64 193496}
!2254 = !{!2245, !81, i64 0}
!2255 = !{!24, !81, i64 381824}
!2256 = !{!29, !29, i64 0}
!2257 = !{!24, !8, i64 381820}
!2258 = distinct !{!2258, !2259}
!2259 = !{!"llvm.loop.mustprogress"}
!2260 = distinct !{!2260, !2259}
!2261 = !{!2245, !29, i64 8}
!2262 = !{!9, !9, i64 0}
!2263 = !{!24, !27, i64 768320}
!2264 = !{!2265, !29, i64 0}
!2265 = !{!"_ZTS23libraw_raw_inset_crop_t", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6}
!2266 = !{!2265, !29, i64 2}
!2267 = !{!2265, !29, i64 4}
!2268 = !{!24, !8, i64 5552}
!2269 = !{!24, !29, i64 2032}
!2270 = !{!8, !8, i64 0}
!2271 = !{!24, !8, i64 381908}
!2272 = !{!24, !38, i64 381800}
!2273 = !{!24, !8, i64 381912}
!2274 = !{!24, !29, i64 382068}
!2275 = !{!24, !29, i64 2062}
!2276 = !{!24, !29, i64 180}
!2277 = !{!24, !29, i64 2060}
!2278 = !{!24, !8, i64 192676}
!2279 = !{!24, !8, i64 1944}
!2280 = !{!24, !8, i64 1968}
!2281 = !{!24, !8, i64 1948}
!2282 = !{!24, !29, i64 2018}
!2283 = !{!24, !29, i64 2016}
!2284 = !{!24, !8, i64 32}
!2285 = !{!2265, !29, i64 6}
!2286 = distinct !{!2286, !2259, !2287, !2288}
!2287 = !{!"llvm.loop.isvectorized", i32 1}
!2288 = !{!"llvm.loop.unroll.runtime.disable"}
!2289 = !{!24, !38, i64 1344}
!2290 = !{!24, !8, i64 381656}
!2291 = !{!24, !9, i64 768432}
!2292 = distinct !{!2292, !2259}
!2293 = !{!24, !8, i64 381832}
!2294 = distinct !{!2294, !2259, !2287, !2288}
!2295 = distinct !{!2295, !2259}
!2296 = !{!24, !8, i64 192600}
!2297 = !{!24, !8, i64 2196}
!2298 = !{!24, !9, i64 4129}
!2299 = distinct !{!2299, !2259}
!2300 = !{!24, !8, i64 153872}
!2301 = !{!24, !27, i64 153864}
!2302 = !{!24, !38, i64 381624}
!2303 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !15, file: !14, line: 102, type: !2304, scopeLine: 102, containingType: !15, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!18, !19, !1015, !18}
!2306 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !15, file: !14, line: 101, type: !2307, scopeLine: 101, containingType: !15, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!18, !19, !871, !1111, !1111}
!2309 = !{!2310, !2310, i64 0}
!2310 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!2311 = !{!24, !9, i64 768400}
!2312 = !{!24, !29, i64 381668}
!2313 = !{!24, !8, i64 5376}
!2314 = !{!24, !34, i64 5372}
!2315 = !{!30, !30, i64 0}
end_hunk_2
