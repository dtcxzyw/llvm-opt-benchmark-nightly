Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nh, align 8, !tbaa !92
  br label %.thread586thread-pre-split

bb.cn:                                            ; preds = %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !138
  %.not418 = icmp eq i16 %i.nj, 0
  br i1 %.not418, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 ptrtoint (ptr @_ZN6LibRaw20panasonicC8_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread586thread-pre-split

bb.cp:                                            ; preds = %bb.cn
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.nk, align 8, !tbaa !92
  br label %.thread586thread-pre-split

.thread586thread-pre-split:                       ; preds = %bb.bv, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.ce, %bb.cm, %bb.cl, %bb.bx, %bb.bu, %bb.bt, %bb.bq
  %.pr636 = load i32, ptr %i.aq, align 4, !tbaa !110
  br label %.thread586

.thread586:                                       ; preds = %.thread586thread-pre-split, %bb.br
  %i.nl = phi i32 [ %.pr636, %.thread586thread-pre-split ], [ %i.ka, %bb.br ] ; 2 uses
  switch i32 %i.nl, label %.thread591 [
    i32 43, label %bb.cq
    i32 63, label %bb.cw
    i32 8, label %bb.cy
  ]

bb.cq:                                            ; preds = %.thread586
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.nn = tail call i32 @strncasecmp(ptr noundef nonnull %i.nm, ptr noundef nonnull @.str.36, i64 noundef 1) #20
  %.not424 = icmp eq i32 %i.nn, 0
  br i1 %.not424, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.no = tail call i32 @strcasecmp(ptr noundef nonnull %i.nm, ptr noundef nonnull @.str.37) #20
  %.not425 = icmp eq i32 %i.no, 0
  br i1 %.not425, label %bb.cs, label %.thread591.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !77
  %i.ns = zext i16 %i.nr to i32                   ; 2 uses
  %i.nt = mul nuw nsw i32 %i.ns, 7
  %i.nu = lshr i32 %i.nt, 2
  %i.nv = uitofp nneg i32 %i.nu to float
  %i.nw = fmul nnan float %i.nv, 6.250000e-02
  %i.nx = tail call float @llvm.ceil.f32(float %i.nw)
  %i.ny = fptoui float %i.nx to i32
  %i.nz = load i16, ptr %i.np, align 8, !tbaa !78 ; 2 uses
  %i.oa = zext i16 %i.nz to i32
  %i.ob = shl nuw nsw i32 %i.oa, 4
  %i.oc = mul i32 %i.ob, %i.ny
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !136 ; 2 uses
  %i.og = icmp eq i64 %i.of, %i.od
  br i1 %i.og, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.oh = mul nuw nsw i32 %i.ns, 21
  %i.oi = lshr i32 %i.oh, 2
  %i.oj = uitofp nneg i32 %i.oi to float
  %i.ok = fmul nnan float %i.oj, 6.250000e-02
  %i.ol = tail call nnan float @llvm.ceil.f32(float %i.ok)
  %i.om = fmul nnan float %i.ol, 1.600000e+01
  %i.on = uitofp i16 %i.nz to float
  %i.oo = fmul float %i.om, %i.on
  %i.op = sitofp i64 %i.of to float
  %i.oq = fcmp oeq float %i.oo, %i.op
  br i1 %i.oq, label %bb.cv, label %.thread591.thread

bb.cv:                                            ; preds = %bb.cu
  store i64 ptrtoint (ptr @_ZN6LibRaw20nikon_14bit_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.or, align 8, !tbaa !83
  br label %.thread591.thread

bb.cw:                                            ; preds = %.thread586
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !88 ; 3 uses
  %.not428 = icmp eq i32 %i.ot, 0
  br i1 %.not428, label %.thread591.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !134 ; 3 uses
  %i.ow = icmp ule i32 %i.ov, %i.ot
  %i.ox = shl i32 %i.ot, 2
  %.not429 = icmp ugt i32 %i.ov, %i.ox
  %or.cond563 = or i1 %i.ow, %.not429
  br i1 %or.cond563, label %.thread591.thread, label %.preheader689.preheader

.preheader689.preheader:                          ; preds = %bb.cx
  %i.oy = lshr i32 %i.ov, 2
  store i32 %i.oy, ptr %i.ou, align 4, !tbaa !134
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 153104 ; 2 uses
  %i.pa = load <2 x i32>, ptr %i.oz, align 8, !tbaa !134
  %i.pb = lshr <2 x i32> %i.pa, splat (i32 2)
  store <2 x i32> %i.pb, ptr %i.oz, align 8, !tbaa !134
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 153112 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !134
  %i.pe = lshr i32 %i.pd, 2
  store i32 %i.pe, ptr %i.pc, align 8, !tbaa !134
  br label %.thread591.thread

bb.cy:                                            ; preds = %.thread586
  %i.pf = load i32, ptr %i.in, align 4, !tbaa !109
  %.not430 = icmp eq i32 %i.pf, 0
  br i1 %.not430, label %bb.cz, label %..thread595_crit_edge

..thread595_crit_edge:                            ; preds = %bb.cy
  %.unpack437.pre = load i64, ptr %i.jr, align 8, !tbaa !87
  %.unpack439.pre = load i64, ptr %.elt407, align 8, !tbaa !87
  br label %.thread595

bb.cz:                                            ; preds = %bb.cy
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2060 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2062
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !139 ; 4 uses
  %.not431 = icmp eq i16 %i.pi, -1
  br i1 %.not431, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.pk = load i16, ptr %i.pj, align 4, !tbaa !140
  %.not432 = icmp eq i16 %i.pk, 0
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  br i1 %.not432, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pm = load i16, ptr %i.pg, align 4, !tbaa !141
  %i.pn = load <2 x i16>, ptr %i.pl, align 2, !tbaa !122
  %i.po = insertelement <2 x i16> poison, i16 %i.pi, i64 0
  %i.pp = insertelement <2 x i16> %i.po, i16 %i.pm, i64 1
  %i.pq = add <2 x i16> %i.pn, %i.pp
  store <2 x i16> %i.pq, ptr %i.pl, align 2, !tbaa !122
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i16 %i.pi, ptr %i.pl, align 2, !tbaa !129
  %i.pr = load i16, ptr %i.pg, align 4, !tbaa !141 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.pr, ptr %i.ps, align 8, !tbaa !130
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.pv = load <2 x i16>, ptr %i.pu, align 8, !tbaa !122
  %i.pw = insertelement <2 x i16> poison, i16 %i.pr, i64 0
  %i.px = insertelement <2 x i16> %i.pw, i16 %i.pi, i64 1
  %i.py = sub <2 x i16> %i.pv, %i.px
  %i.pz = add <2 x i16> %i.py, splat (i16 1)
  %i.qa = shufflevector <2 x i16> %i.pz, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.qa, ptr %i.pt, align 2, !tbaa !122
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 192676
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !142 ; 5 uses
  %i.qd = icmp ugt i32 %i.qc, 13
  %.unpack437.pre864 = load i64, ptr %i.jr, align 8, !tbaa !87 ; 4 uses
  %.unpack439.pre866 = load i64, ptr %.elt407, align 8, !tbaa !87 ; 4 uses
  br i1 %i.qd, label %.thread595, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qe = icmp ne i64 %.unpack437.pre864, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.qf = icmp ne i64 %.unpack439.pre866, 0
  %i.qg = or i1 %i.qe, %i.qf
  br i1 %i.qg, label %bb.df, label %.thread595

bb.df:                                            ; preds = %bb.de
  %notmask = shl nsw i32 -1, %i.qc
  %i.qh = xor i32 %notmask, -1
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !143 ; 2 uses
  %i.qk = icmp sgt i32 %i.qj, %i.qh
  br i1 %i.qk, label %.preheader688, label %.thread595

.preheader688:                                    ; preds = %bb.df
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.qm = sub nuw nsw i32 14, %i.qc
  %i.qn = load <4 x i32>, ptr %i.ql, align 4, !tbaa !134
  %i.qo = insertelement <4 x i32> poison, i32 %i.qm, i64 0
  %i.qp = shufflevector <4 x i32> %i.qo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qq = lshr <4 x i32> %i.qn, %i.qp
  store <4 x i32> %i.qq, ptr %i.ql, align 4, !tbaa !134
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !144
  %3 = sub nuw nsw i32 14, %i.qc
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %5 = load i32, ptr %4, align 4, !tbaa !145
  %6 = lshr exact i32 16384, %i.qc                ; 3 uses
  %7 = load <2 x i32>, ptr %i.qr, align 8, !tbaa !134
  %8 = load <2 x i32>, ptr %2, align 8, !tbaa !134
  %9 = insertelement <2 x i32> poison, i32 %6, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = sdiv <2 x i32> %8, %10
  store <2 x i32> %11, ptr %2, align 8, !tbaa !134
  %12 = sdiv i32 %i.qt, %6
  store i32 %12, ptr %i.qs, align 8, !tbaa !144
  %13 = lshr i32 %i.qj, %3
  %14 = insertelement <4 x i32> poison, i32 %13, i64 0
  %15 = insertelement <4 x i32> %14, i32 %5, i64 1
  %16 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x i32> %15, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %6, i64 1
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %20 = sdiv <4 x i32> %17, %19
  store <4 x i32> %20, ptr %i.qi, align 8, !tbaa !134
  br label %.thread595

.thread595:                                       ; preds = %..thread595_crit_edge, %.preheader688, %bb.dd, %bb.de, %bb.df
  %.unpack439 = phi i64 [ %.unpack439.pre, %..thread595_crit_edge ], [ %.unpack439.pre866, %.preheader688 ], [ %.unpack439.pre866, %bb.dd ], [ 0, %bb.de ], [ %.unpack439.pre866, %bb.df ]
  %.unpack437 = phi i64 [ %.unpack437.pre, %..thread595_crit_edge ], [ %.unpack437.pre864, %.preheader688 ], [ %.unpack437.pre864, %bb.dd ], [ ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64), %bb.de ], [ %.unpack437.pre864, %bb.df ]
  %i.qu = icmp eq i64 %.unpack437, ptrtoint (ptr @_ZN6LibRaw19canon_sraw_load_rawEv to i64)
  %i.qv = icmp eq i64 %.unpack439, 0
  %i.qw = and i1 %i.qu, %i.qv
  br i1 %i.qw, label %bb.dg, label %.thread591.thread

bb.dg:                                            ; preds = %.thread595
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !77 ; 3 uses
  %.not440 = icmp eq i16 %i.qz, 0
  br i1 %.not440, label %.thread591.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ra = load i16, ptr %i.qx, align 8, !tbaa !78 ; 2 uses
  %i.rb = uitofp i16 %i.ra to float
  %i.rc = uitofp i16 %i.qz to float
  %i.rd = fdiv float %i.rb, %i.rc                 ; 2 uses
  %i.re = fpext float %i.rd to double
  %i.rf = fcmp olt double %i.re, 5.700000e-01
  %i.rg = fcmp ogt float %i.rd, 7.500000e-01
  %or.cond564 = or i1 %i.rg, %i.rf
  br i1 %or.cond564, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 2018
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !146 ; 2 uses
  %i.rj = icmp sgt i16 %i.ri, 1
  br i1 %i.rj, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.rl = load i16, ptr %i.rk, align 8, !tbaa !147 ; 3 uses
  %i.rm = icmp sgt i16 %i.rl, 1
  br i1 %i.rm, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i16 %i.rl, ptr %i.qy, align 2, !tbaa !77
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 2060
  store i16 %i.ri, ptr %i.qx, align 8, !tbaa !78
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.rr = load <2 x i16>, ptr %i.rn, align 4, !tbaa !122 ; 2 uses
  %i.rs = load <2 x i16>, ptr %i.rp, align 8, !tbaa !122
  %i.rt = sub <2 x i16> %i.rs, %i.rr
  %i.ru = add <2 x i16> %i.rt, splat (i16 1)      ; 2 uses
  store <2 x i16> %i.rr, ptr %i.ro, align 8, !tbaa !122
  store <2 x i16> %i.ru, ptr %i.rq, align 4, !tbaa !122
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x i16> %i.ru, ptr %i.rv, align 4, !tbaa !122
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !85
  %i.ry = or i32 %i.rx, 256
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !85
  %i.rz = zext nneg i16 %i.rl to i32
  %i.sa = shl nuw nsw i32 %i.rz, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.sa, ptr %i.sb, align 8, !tbaa !148
  br label %.thread591.thread

bb.dl:                                            ; preds = %bb.dh, %bb.dj, %bb.di
  %i.sc = icmp eq i16 %i.qz, 4032
  %i.sd = icmp eq i16 %i.ra, 3402
  %or.cond656 = and i1 %i.sc, %i.sd
  br i1 %or.cond656, label %bb.dm, label %.thread591.thread

bb.dm:                                            ; preds = %bb.dl
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.sf = tail call i32 @strcasecmp(ptr noundef nonnull %i.se, ptr noundef nonnull @.str.38) #20
  %.not441 = icmp eq i32 %i.sf, 0
  br i1 %.not441, label %bb.dn, label %.thread591.thread

bb.dn:                                            ; preds = %bb.dm
  store <8 x i16> <i16 3024, i16 4536, i16 3016, i16 4508, i16 8, i16 28, i16 3016, i16 4508>, ptr %i.qx, align 8, !tbaa !122
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !85
  %i.si = or i32 %i.sh, 256
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !85
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 36288, ptr %i.sj, align 8, !tbaa !148
  br label %.thread591.thread

.thread591:                                       ; preds = %.thread586
  %i.sk = load i32, ptr %i.in, align 4, !tbaa !109
  %.not442 = icmp eq i32 %i.sk, 0
  %i.sl = icmp eq i32 %i.nl, 18
  %or.cond657 = and i1 %i.sl, %.not442
  br i1 %or.cond657, label %bb.do, label %.thread591.thread

bb.do:                                            ; preds = %.thread591
  %.unpack443 = load i64, ptr %i.jr, align 8, !tbaa !87
  %.unpack445 = load i64, ptr %.elt407, align 8, !tbaa !87
  %i.sm = icmp eq i64 %.unpack443, ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64)
  %i.sn = icmp eq i64 %.unpack445, 0
  %i.so = and i1 %i.sm, %i.sn
  br i1 %i.so, label %bb.dp, label %.thread591.thread

bb.dp:                                            ; preds = %bb.do
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !77
  %i.ss = zext i16 %i.sr to i64                   ; 2 uses
  %i.st = load i16, ptr %i.sp, align 8, !tbaa !78
  %i.su = zext i16 %i.st to i64                   ; 2 uses
  %i.sv = shl nuw nsw i64 %i.ss, 1
  %i.sw = mul nuw nsw i64 %i.sv, %i.su
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 381800 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !136 ; 2 uses
  %.not446 = icmp eq i64 %i.sw, %i.sy
  br i1 %.not446, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sz = mul nuw nsw i64 %i.ss, 7
  %i.ta = mul nuw nsw i64 %i.sz, %i.su
  %i.tb = lshr i64 %i.ta, 2
  %i.tc = icmp eq i64 %i.tb, %i.sy
  br i1 %i.tc, label %bb.dr, label %.invoke

bb.dr:                                            ; preds = %bb.dq
  store i64 ptrtoint (ptr @_ZN6LibRaw19fuji_14bit_load_rawEv to i64), ptr %i.jr, align 8, !tbaa !87
  store i64 0, ptr %.elt407, align 8, !tbaa !87
  br label %.thread591.thread

bb.ds:                                            ; preds = %bb.dp
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.te = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.td, ptr noundef nonnull dereferenceable(6) @.str.39) #20
  %.not447 = icmp eq i32 %i.te, 0
  br i1 %.not447, label %bb.dt, label %.thread591.thread

bb.dt:                                            ; preds = %bb.ds
  %i.tf = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !9
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  %i.ti = load ptr, ptr %i.th, align 8
  %i.tj = invoke noundef i64 %i.ti(ptr noundef nonnull align 8 dereferenceable(8) %i.tf)
          to label %bb.du unwind label %bb.m

bb.du:                                            ; preds = %bb.dt
  %i.tk = load i64, ptr %i.sx, align 8, !tbaa !136
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !76
  %i.tn = add nsw i64 %i.tm, %i.tk
  %i.to = icmp slt i64 %i.tj, %i.tn
  br i1 %i.to, label %.invoke, label %.thread591.thread

.invoke:                                          ; preds = %bb.du, %bb.dq
  invoke void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.thread591.thread unwind label %bb.m

.thread591.thread:                                ; preds = %.invoke, %.thread595, %bb.dg, %bb.dl, %bb.dm, %bb.dn, %bb.dk, %bb.cx, %bb.cw, %bb.cu, %bb.cv, %bb.cr, %.preheader689.preheader, %bb.dr, %bb.du, %bb.ds, %bb.do, %.thread591
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.tr = load i16, ptr %i.tq, align 4, !tbaa !140 ; 2 uses
  %i.ts = add i16 %i.tr, -99
  %or.cond565 = icmp ult i16 %i.ts, 9902
  br i1 %or.cond565, label %bb.dv, label %bb.ef

bb.dv:                                            ; preds = %.thread591.thread
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !129 ; 4 uses
  %.not449 = icmp eq i16 %i.tu, -1
  br i1 %.not449, label %bb.ef, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tv = zext i16 %i.tu to i32
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !131 ; 4 uses
  %i.ty = zext i16 %i.tx to i32                   ; 2 uses
  %i.tz = add nuw nsw i32 %i.ty, %i.tv
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !77
  %i.uc = zext i16 %i.ub to i32
  %.not450 = icmp samesign ugt i32 %i.tz, %i.uc
  br i1 %.not450, label %bb.ef, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ue = load i16, ptr %i.ud, align 8, !tbaa !130 ; 4 uses
  %.not451 = icmp eq i16 %i.ue, -1
  br i1 %.not451, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uf = zext i16 %i.ue to i32
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.uh = load i16, ptr %i.ug, align 4, !tbaa !149 ; 4 uses
  %i.ui = zext i16 %i.uh to i32                   ; 2 uses
  %i.uj = add nuw nsw i32 %i.ui, %i.uf
  %i.uk = load i16, ptr %i.tp, align 8, !tbaa !78
  %i.ul = zext i16 %i.uk to i32
  %.not452 = icmp samesign ugt i32 %i.uj, %i.ul
  %.not453 = icmp eq i16 %i.tx, 0
  %or.cond566 = or i1 %.not453, %.not452
  %.not454 = icmp eq i16 %i.uh, 0
  %or.cond567 = or i1 %.not454, %or.cond566
  br i1 %or.cond567, label %bb.ef, label %bb.dz
end_hunk_0
