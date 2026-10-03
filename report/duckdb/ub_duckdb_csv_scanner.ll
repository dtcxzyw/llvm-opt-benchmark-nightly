Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_scanner?download=true
inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN6duckdb9LineError12HandleErrorsERNS_17StringValueResultE:bb.a
  %16 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %17 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %20 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 2 uses
  %21 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %22 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %23 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 2 uses
  %24 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %25 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %26 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %27 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %28 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %29 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !597    ; 56 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !597  ; 5 uses
  %.not312439 = icmp eq ptr %i.c, %i.e            ; 3 uses
  br i1 %.not312439, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = ptrtoaddr ptr %i.c to i64
  %i.h = add i64 %i.f, -88
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %i.j = udiv i64 %i.i, 88
  %i.k = add nuw nsw i64 %i.j, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 1320
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check542 = icmp ult i64 %i.i, 2728
  br i1 %min.iters.check542, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.k, 16
  %n.vec = and i64 %i.k, 576460752303423456       ; 4 uses
  %i.m = mul i64 %n.vec, 88
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi543 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.o = mul i64 %index, 88                       ; 32 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep544 = getelementptr i8, ptr %i.p, i64 88
  %i.q = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep545 = getelementptr i8, ptr %i.q, i64 176
  %i.r = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep546 = getelementptr i8, ptr %i.r, i64 264
  %i.s = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep547 = getelementptr i8, ptr %i.s, i64 352
  %i.t = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep548 = getelementptr i8, ptr %i.t, i64 440
  %i.u = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep549 = getelementptr i8, ptr %i.u, i64 528
  %i.v = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep550 = getelementptr i8, ptr %i.v, i64 616
  %i.w = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep551 = getelementptr i8, ptr %i.w, i64 704
  %i.x = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep552 = getelementptr i8, ptr %i.x, i64 792
  %i.y = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep553 = getelementptr i8, ptr %i.y, i64 880
  %i.z = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep554 = getelementptr i8, ptr %i.z, i64 968
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep555 = getelementptr i8, ptr %i.aa, i64 1056
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep556 = getelementptr i8, ptr %i.ab, i64 1144
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep557 = getelementptr i8, ptr %i.ac, i64 1232
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep558 = getelementptr i8, ptr %i.ad, i64 1320
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep559 = getelementptr i8, ptr %i.ae, i64 1408
  %i.af = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep560 = getelementptr i8, ptr %i.af, i64 1496
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep561 = getelementptr i8, ptr %i.ag, i64 1584
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep562 = getelementptr i8, ptr %i.ah, i64 1672
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep563 = getelementptr i8, ptr %i.ai, i64 1760
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep564 = getelementptr i8, ptr %i.aj, i64 1848
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep565 = getelementptr i8, ptr %i.ak, i64 1936
  %i.al = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep566 = getelementptr i8, ptr %i.al, i64 2024
  %i.am = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep567 = getelementptr i8, ptr %i.am, i64 2112
  %i.an = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep568 = getelementptr i8, ptr %i.an, i64 2200
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep569 = getelementptr i8, ptr %i.ao, i64 2288
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep570 = getelementptr i8, ptr %i.ap, i64 2376
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep571 = getelementptr i8, ptr %i.aq, i64 2464
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep572 = getelementptr i8, ptr %i.ar, i64 2552
  %i.as = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep573 = getelementptr i8, ptr %i.as, i64 2640
  %i.at = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep574 = getelementptr i8, ptr %i.at, i64 2728
  %i.au = load i8, ptr %next.gep, align 8, !tbaa !583
  %i.av = load i8, ptr %next.gep544, align 8, !tbaa !583
  %i.aw = load i8, ptr %next.gep545, align 8, !tbaa !583
  %i.ax = load i8, ptr %next.gep546, align 8, !tbaa !583
  %i.ay = load i8, ptr %next.gep547, align 8, !tbaa !583
  %i.az = load i8, ptr %next.gep548, align 8, !tbaa !583
  %i.ba = load i8, ptr %next.gep549, align 8, !tbaa !583
  %i.bb = load i8, ptr %next.gep550, align 8, !tbaa !583
  %i.bc = load i8, ptr %next.gep551, align 8, !tbaa !583
  %i.bd = load i8, ptr %next.gep552, align 8, !tbaa !583
  %i.be = load i8, ptr %next.gep553, align 8, !tbaa !583
  %i.bf = load i8, ptr %next.gep554, align 8, !tbaa !583
  %i.bg = load i8, ptr %next.gep555, align 8, !tbaa !583
  %i.bh = load i8, ptr %next.gep556, align 8, !tbaa !583
  %i.bi = load i8, ptr %next.gep557, align 8, !tbaa !583
  %i.bj = load i8, ptr %next.gep558, align 8, !tbaa !583
  %i.bk = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 1
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 2
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 3
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 4
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 5
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 6
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 7
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 8
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 9
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 10
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 11
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 12
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 13
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 14
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 15
  %i.ca = load i8, ptr %next.gep559, align 8, !tbaa !583
  %i.cb = load i8, ptr %next.gep560, align 8, !tbaa !583
  %i.cc = load i8, ptr %next.gep561, align 8, !tbaa !583
  %i.cd = load i8, ptr %next.gep562, align 8, !tbaa !583
  %i.ce = load i8, ptr %next.gep563, align 8, !tbaa !583
  %i.cf = load i8, ptr %next.gep564, align 8, !tbaa !583
  %i.cg = load i8, ptr %next.gep565, align 8, !tbaa !583
  %i.ch = load i8, ptr %next.gep566, align 8, !tbaa !583
  %i.ci = load i8, ptr %next.gep567, align 8, !tbaa !583
  %i.cj = load i8, ptr %next.gep568, align 8, !tbaa !583
  %i.ck = load i8, ptr %next.gep569, align 8, !tbaa !583
  %i.cl = load i8, ptr %next.gep570, align 8, !tbaa !583
  %i.cm = load i8, ptr %next.gep571, align 8, !tbaa !583
  %i.cn = load i8, ptr %next.gep572, align 8, !tbaa !583
  %i.co = load i8, ptr %next.gep573, align 8, !tbaa !583
  %i.cp = load i8, ptr %next.gep574, align 8, !tbaa !583
  %i.cq = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 1
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 2
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 3
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 4
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 5
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 6
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 7
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 8
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 9
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 10
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 11
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 12
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 13
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 14
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 15
  %i.dg = icmp eq <16 x i8> %i.bz, splat (i8 8)
  %i.dh = icmp eq <16 x i8> %i.df, splat (i8 8)
  %i.di = or <16 x i1> %vec.phi, %i.dg            ; 2 uses
  %i.dj = or <16 x i1> %vec.phi543, %i.dh         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1035

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dj, %i.di
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dl = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.dm = icmp ne i16 %i.dl, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1038

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.dm, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec575 = and i64 %i.k, 576460752303423472    ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <16 x i1> %broadcast.splatinsert, <16 x i1> poison, <16 x i32> zeroinitializer
  %32 = mul i64 %n.vec575, 88
  %33 = getelementptr i8, ptr %i.c, i64 %32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index576 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next594, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi577 = phi <16 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.fk, %vec.epilog.vector.body ]
  %i.dn = mul i64 %index576, 88                   ; 16 uses
  %next.gep578 = getelementptr i8, ptr %i.c, i64 %i.dn
  %i.do = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep579 = getelementptr i8, ptr %i.do, i64 88
  %i.dp = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep580 = getelementptr i8, ptr %i.dp, i64 176
  %i.dq = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep581 = getelementptr i8, ptr %i.dq, i64 264
  %i.dr = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep582 = getelementptr i8, ptr %i.dr, i64 352
  %i.ds = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep583 = getelementptr i8, ptr %i.ds, i64 440
  %i.dt = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep584 = getelementptr i8, ptr %i.dt, i64 528
  %i.du = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep585 = getelementptr i8, ptr %i.du, i64 616
  %i.dv = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep586 = getelementptr i8, ptr %i.dv, i64 704
  %i.dw = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep587 = getelementptr i8, ptr %i.dw, i64 792
  %i.dx = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep588 = getelementptr i8, ptr %i.dx, i64 880
  %i.dy = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep589 = getelementptr i8, ptr %i.dy, i64 968
  %i.dz = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep590 = getelementptr i8, ptr %i.dz, i64 1056
  %i.ea = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep591 = getelementptr i8, ptr %i.ea, i64 1144
  %i.eb = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep592 = getelementptr i8, ptr %i.eb, i64 1232
  %i.ec = getelementptr i8, ptr %i.c, i64 %i.dn
  %next.gep593 = getelementptr i8, ptr %i.ec, i64 1320
  %i.ed = load i8, ptr %next.gep578, align 8, !tbaa !583
  %i.ee = load i8, ptr %next.gep579, align 8, !tbaa !583
  %i.ef = load i8, ptr %next.gep580, align 8, !tbaa !583
  %i.eg = load i8, ptr %next.gep581, align 8, !tbaa !583
  %i.eh = load i8, ptr %next.gep582, align 8, !tbaa !583
  %i.ei = load i8, ptr %next.gep583, align 8, !tbaa !583
  %i.ej = load i8, ptr %next.gep584, align 8, !tbaa !583
  %i.ek = load i8, ptr %next.gep585, align 8, !tbaa !583
  %i.el = load i8, ptr %next.gep586, align 8, !tbaa !583
  %i.em = load i8, ptr %next.gep587, align 8, !tbaa !583
  %i.en = load i8, ptr %next.gep588, align 8, !tbaa !583
  %i.eo = load i8, ptr %next.gep589, align 8, !tbaa !583
  %i.ep = load i8, ptr %next.gep590, align 8, !tbaa !583
  %i.eq = load i8, ptr %next.gep591, align 8, !tbaa !583
  %i.er = load i8, ptr %next.gep592, align 8, !tbaa !583
  %i.es = load i8, ptr %next.gep593, align 8, !tbaa !583
  %i.et = insertelement <16 x i8> poison, i8 %i.ed, i64 0
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 1
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 2
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 3
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 4
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 5
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 6
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 7
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 8
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 9
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 10
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 11
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 12
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 13
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 14
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 15
  %.fr599 = freeze <16 x i8> %i.fi
  %i.fj = icmp eq <16 x i8> %.fr599, splat (i8 8)
  %i.fk = or <16 x i1> %vec.phi577, %i.fj         ; 2 uses
  %index.next594 = add nuw i64 %index576, 16      ; 2 uses
  %i.fl = icmp eq i64 %index.next594, %n.vec575
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1036

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fm = bitcast <16 x i1> %i.fk to i16
  %i.fn = icmp ne i16 %i.fm, 0                    ; 2 uses
  %cmp.n595 = icmp eq i64 %i.k, %n.vec575
  br i1 %cmp.n595, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148441.ph = phi i1 [ false, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ]
  %.sroa.0303.0440.ph = phi ptr [ %i.c, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %33, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0148.lcssa = phi i1 [ false, %bb.a ], [ %i.fn, %vec.epilog.middle.block ], [ %i.dm, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !493, !range !171, !noundef !172
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = select i1 %i.fq, i1 %.0148.lcssa, i1 false
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !491, !range !171, !noundef !172
  %i.fu = trunc nuw i8 %i.ft to i1
  %or.cond = select i1 %i.fu, i1 true, i1 %i.fr
  br i1 %or.cond, label %bb.b, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0148441 = phi i1 [ %spec.select, %.lr.ph ], [ %.0148441.ph, %.lr.ph.preheader ]
  %.sroa.0303.0440 = phi ptr [ %i.fx, %.lr.ph ], [ %.sroa.0303.0440.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fv = load i8, ptr %.sroa.0303.0440, align 8, !tbaa !583
  %i.fw = icmp eq i8 %i.fv, 8
  %spec.select = select i1 %i.fw, i1 true, i1 %.0148441 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0303.0440, i64 88 ; 2 uses
  %.not312 = icmp eq ptr %i.fx, %i.e
  br i1 %.not312, label %._crit_edge, label %.lr.ph, !llvm.loop !1037

bb.b:                                             ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !581, !range !171, !noundef !172
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !1039, !range !171, !noundef !172
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !487 ; 2 uses
  %.not.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i, label %_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !560
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i, %.lr.ph.i
  %i.gj = phi i64 [ %i.gf, %.lr.ph.i ], [ %i.gu, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i ]
  %.03.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gv, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.03.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !559
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !592 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gn = load i64, ptr %i.gi, align 8, !tbaa !589 ; 2 uses
  %i.go = lshr i64 %i.gn, 6
  %i.gp = and i64 %i.gn, 63
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !137
  %i.gt = or i64 %i.gq, %i.gs
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !137
  %.pre.i = load i64, ptr %i.ge, align 8, !tbaa !487
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i: ; preds = %bb.f, %bb.e
  %i.gu = phi i64 [ %i.gj, %bb.e ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.gv = add nuw i64 %.03.i, 1                   ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gu
  br i1 %i.gw, label %bb.e, label %_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit, !llvm.loop !23

_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit.i, %bb.d
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 0, ptr %i.gx, align 8, !tbaa !576
  store i64 0, ptr %i.ge, align 8, !tbaa !487
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !589
  %i.ha = add nsw i64 %i.gz, -1
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !589
  br i1 %.not312439, label %_ZN6duckdb9LineError5ResetEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit, %_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.hf, %_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i ], [ %i.c, %_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !157 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.hc) #35
  br label %_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hf, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12CurrentErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb12CurrentErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb12CurrentErrorEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !573
  br label %_ZN6duckdb9LineError5ResetEv.exit

_ZN6duckdb9LineError5ResetEv.exit:                ; preds = %_ZN6duckdb17StringValueResult14RemoveLastLineEv.exit, %_ZSt8_DestroyIPN6duckdb12CurrentErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  store i8 0, ptr %i.fy, align 8, !tbaa !581
  br label %bb.cd

bb.g:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  br i1 %.not312439, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %bb.g
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 288
end_hunk_0
