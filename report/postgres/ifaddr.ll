Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ifaddr?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_sockaddr_cidr_mask:bb.a
  %i.ba = trunc i16 %i.az to i8
  br label %.thread402

bb.ad:                                            ; preds = %bb.ab
  %i.bb = icmp eq i64 %.033, 56
  br i1 %i.bb, label %.thread402, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = icmp samesign ugt i64 %.033, 63
  br i1 %i.bc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = trunc nuw nsw i64 %.033 to i16
  %i.be = add nsw i16 %i.bd, -56
  %i.bf = lshr exact i16 -256, %i.be
  %i.bg = trunc i16 %i.bf to i8
  br label %.thread402

bb.ag:                                            ; preds = %bb.ae
  %i.bh = icmp eq i64 %.033, 64
  br i1 %i.bh, label %.thread402, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = icmp samesign ugt i64 %.033, 71
  br i1 %i.bi, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = trunc nuw nsw i64 %.033 to i16
  %i.bk = add nsw i16 %i.bj, -64
  %i.bl = lshr exact i16 -256, %i.bk
  %i.bm = trunc i16 %i.bl to i8
  br label %.thread402

bb.aj:                                            ; preds = %bb.ah
  %i.bn = icmp eq i64 %.033, 72
  br i1 %i.bn, label %.thread402, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bo = icmp samesign ugt i64 %.033, 79
  br i1 %i.bo, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = trunc nuw nsw i64 %.033 to i16
  %i.bq = add nsw i16 %i.bp, -72
  %i.br = lshr exact i16 -256, %i.bq
  %i.bs = trunc i16 %i.br to i8
  br label %.thread402

bb.am:                                            ; preds = %bb.ak
  %i.bt = icmp eq i64 %.033, 80
  br i1 %i.bt, label %.thread402, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bu = icmp samesign ugt i64 %.033, 87
  br i1 %i.bu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bv = trunc nuw nsw i64 %.033 to i16
  %i.bw = add nsw i16 %i.bv, -80
  %i.bx = lshr exact i16 -256, %i.bw
  %i.by = trunc i16 %i.bx to i8
  br label %.thread402

bb.ap:                                            ; preds = %bb.an
  %i.bz = icmp eq i64 %.033, 88
  br i1 %i.bz, label %.thread402, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = icmp samesign ugt i64 %.033, 95
  br i1 %i.ca, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cb = trunc nuw nsw i64 %.033 to i16
  %i.cc = add nsw i16 %i.cb, -88
  %i.cd = lshr exact i16 -256, %i.cc
  %i.ce = trunc i16 %i.cd to i8
  br label %.thread402

bb.as:                                            ; preds = %bb.aq
  %i.cf = icmp eq i64 %.033, 96
  br i1 %i.cf, label %.thread402, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cg = icmp samesign ugt i64 %.033, 103
  br i1 %i.cg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = trunc nuw nsw i64 %.033 to i16
  %i.ci = add nsw i16 %i.ch, -96
  %i.cj = lshr exact i16 -256, %i.ci
  %i.ck = trunc i16 %i.cj to i8
  br label %.thread402

bb.av:                                            ; preds = %bb.at
  %i.cl = icmp eq i64 %.033, 104
  br i1 %i.cl, label %.thread402, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cm = icmp samesign ugt i64 %.033, 111
  br i1 %i.cm, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cn = trunc nuw nsw i64 %.033 to i16
  %i.co = add nsw i16 %i.cn, -104
  %i.cp = lshr exact i16 -256, %i.co
  %i.cq = trunc i16 %i.cp to i8
  br label %.thread402

bb.ay:                                            ; preds = %bb.aw
  %i.cr = icmp eq i64 %.033, 112
  br i1 %i.cr, label %.thread402, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cs = icmp samesign ugt i64 %.033, 119
  br i1 %i.cs, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ct = trunc nuw nsw i64 %.033 to i16
  %i.cu = add nsw i16 %i.ct, -112
  %i.cv = lshr exact i16 -256, %i.cu
  %i.cw = trunc i16 %i.cv to i8
  br label %.thread402

bb.bb:                                            ; preds = %bb.az
  %trunc = trunc nuw i64 %.033 to i8
  switch i8 %trunc, label %bb.bc [
    i8 120, label %.thread402
    i8 -128, label %.thread402.fold.split
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.cx = trunc nuw nsw i64 %.033 to i16
  %i.cy = add nsw i16 %i.cx, -120
  %i.cz = lshr exact i16 -256, %i.cy
  %i.da = trunc i16 %i.cz to i8
  br label %.thread402

.thread402.fold.split:                            ; preds = %bb.bb
  br label %.thread402

.thread402:                                       ; preds = %bb.bb, %.thread402.fold.split, %bb.k, %bb.i, %bb.n, %bb.l, %bb.q, %bb.o, %bb.t, %bb.r, %bb.w, %bb.u, %bb.z, %bb.x, %bb.ac, %bb.aa, %bb.af, %bb.ad, %bb.ai, %bb.ag, %bb.al, %bb.aj, %bb.ao, %bb.am, %bb.ar, %bb.ap, %bb.au, %bb.as, %bb.ax, %bb.av, %bb.ba, %bb.ay, %bb.bc
  %.sroa.47.0446 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ 0, %bb.ay ], [ %i.cw, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.41.0355373444 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ 0, %bb.as ], [ %i.ck, %bb.au ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.35.0276292353375442 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ 0, %bb.am ], [ %i.by, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.29.0209223274294351377440 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ 0, %bb.ag ], [ %i.bm, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.23.0154166207225272296349379438 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ 0, %bb.aa ], [ %i.ba, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.17.0111121152168205227270298347381436 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.x ], [ -1, %bb.z ], [ 0, %bb.u ], [ %i.ao, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.11.08088109123150170203229268300345383434 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.r ], [ -1, %bb.t ], [ 0, %bb.o ], [ %i.ac, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.5.061677890107125148172201231266302343385432 = phi i8 [ %i.q, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %bb.l ], [ -1, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.8.0697692105127146174199233264304341387430 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.o ], [ -1, %bb.q ], [ 0, %bb.l ], [ %i.w, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.14.094103129144176197235262306339389428 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.u ], [ -1, %bb.w ], [ 0, %bb.r ], [ %i.ai, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.20.0131142178195237260308337391426 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ 0, %bb.x ], [ %i.au, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.26.0180193239258310335393424 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ 0, %bb.ad ], [ %i.bg, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.32.0241256312333395422 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.am ], [ -1, %bb.ao ], [ 0, %bb.aj ], [ %i.bs, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.38.0314331397420 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %bb.as ], [ -1, %bb.au ], [ 0, %bb.ap ], [ %i.ce, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.44.0399418 = phi i8 [ 0, %bb.k ], [ -1, %bb.bc ], [ -1, %bb.bb ], [ -1, %bb.ay ], [ -1, %bb.ba ], [ 0, %bb.av ], [ %i.cq, %bb.ax ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  %.sroa.50.0 = phi i8 [ 0, %bb.k ], [ %i.da, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.i ], [ -1, %.thread402.fold.split ]
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.061677890107125148172201231266302343385432, ptr %.sroa.5.0..sroa_idx44, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0697692105127146174199233264304341387430, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.11.08088109123150170203229268300345383434, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.14.094103129144176197235262306339389428, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.17.0111121152168205227270298347381436, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.20.0131142178195237260308337391426, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.23.0154166207225272296349379438, ptr %.sroa.23.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sroa.26.0180193239258310335393424, ptr %.sroa.26.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.29.0209223274294351377440, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.32.0241256312333395422, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.35.0276292353375442, ptr %.sroa.35.0..sroa_idx, align 2
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.38.0314331397420, ptr %.sroa.38.0..sroa_idx, align 1
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.41.0355373444, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.44.0399418, ptr %.sroa.44.0..sroa_idx, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %.sroa.47.0446, ptr %.sroa.47.0..sroa_idx, align 2
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.50.0, ptr %.sroa.50.0..sroa_idx, align 1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %.thread402, %bb.g
  %i.db = trunc nuw nsw i32 %2 to i16
  store i16 %i.db, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %bb.e, %bb.c, %bb.d, %bb.bd
  %.2 = phi i32 [ -1, %bb.f ], [ 0, %bb.bd ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @pg_foreach_ifaddr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.sockaddr_storage, align 8   ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call i32 @getifaddrs(ptr noundef nonnull %i.a) #5
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.07 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %run_ifaddr_callback.exit
  %.09 = phi ptr [ %.0, %run_ifaddr_callback.exit ], [ %.07, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %run_ifaddr_callback.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not22.i = icmp eq ptr %i.g, null
  %.pre.i = load i16, ptr %i.e, align 2           ; 3 uses
  br i1 %.not22.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.g, align 2
  %.not23.i = icmp eq i16 %i.h, %.pre.i
  br i1 %.not23.i, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %bb.c
  switch i16 %.pre.i, label %.thread.i [
    i16 2, label %bb.e
    i16 10, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %select.unfold.i, label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %.fr.i = freeze i32 %i.v
  %i.w = icmp eq i32 %.fr.i, 0
  br i1 %i.w, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.i, %bb.e, %bb.c, %bb.b
  %i.x = zext i16 %.pre.i to i32
  %i.y = call i32 @pg_sockaddr_cidr_mask(ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.x) ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1.i = phi ptr [ %2, %select.unfold.i ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.i ], [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.g, %bb.f ]
  call void %0(ptr noundef nonnull %i.e, ptr noundef nonnull %.1.i, ptr noundef %1) #5, !inline_history !4
  br label %run_ifaddr_callback.exit

run_ifaddr_callback.exit:                         ; preds = %.lr.ph, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.0 = load ptr, ptr %.09, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %run_ifaddr_callback.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.z = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %.preheader ]
  call void @freeifaddrs(ptr noundef %i.z) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge
  %.06 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.06
}

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{null}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_0
