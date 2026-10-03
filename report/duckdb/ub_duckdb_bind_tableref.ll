Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_bind_tableref?download=true
inline.NumInlined: 9358
inline.NumDeleted: 4125
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6duckdb6Binder27BindTableFunctionParametersERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERNS3_INS_11LogicalTypeELb1ESaISC_EEERNS3_INS_5ValueELb1ESaISG_EEERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSQ_SG_EEERNS_14BoundStatementERNS_9ErrorDataE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !742
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !743
  %.not41.i = icmp eq ptr %i.n, %i.o
  br i1 %.not41.i, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %.lr.ph35.i

._crit_edge36.i:                                  ; preds = %bb.j
  br i1 %.145.lcssa.i, label %bb.k, label %bb.p

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.j
  %.04334.i = phi i64 [ %i.gv, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %.04433.i = phi i1 [ %.145.lcssa.i, %bb.j ], [ false, %.preheader.i ] ; 6 uses
  %.04732.i = phi i1 [ %.148.i, %bb.j ], [ false, %.preheader.i ]
  %.04931.i = phi i8 [ %.150.i, %bb.j ], [ 0, %.preheader.i ] ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(544) ptr @_ZN6duckdb6vectorINS_13TableFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.04334.i) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !332  ; 53 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !332  ; 3 uses
  %.not1827.i = icmp eq ptr %i.r, %i.t
  br i1 %.not1827.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph35.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = add i64 %i.u, -24
  %i.x = sub i64 %i.w, %i.v                       ; 3 uses
  %i.y = udiv i64 %i.x, 24
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 360
  br i1 %min.iters.check, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check415 = icmp ult i64 %i.x, 744
  br i1 %min.iters.check415, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 16
  %n.vec = and i64 %i.z, 2305843009213693920      ; 4 uses
  %i.ab = mul i64 %n.vec, 24
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dx, %vector.body ]
  %vec.phi416 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dy, %vector.body ]
  %i.ad = mul i64 %index, 24                      ; 32 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep417 = getelementptr i8, ptr %i.ae, i64 24
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep418 = getelementptr i8, ptr %i.af, i64 48
  %i.ag = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep419 = getelementptr i8, ptr %i.ag, i64 72
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep420 = getelementptr i8, ptr %i.ah, i64 96
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep421 = getelementptr i8, ptr %i.ai, i64 120
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep422 = getelementptr i8, ptr %i.aj, i64 144
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep423 = getelementptr i8, ptr %i.ak, i64 168
  %i.al = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep424 = getelementptr i8, ptr %i.al, i64 192
  %i.am = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep425 = getelementptr i8, ptr %i.am, i64 216
  %i.an = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep426 = getelementptr i8, ptr %i.an, i64 240
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep427 = getelementptr i8, ptr %i.ao, i64 264
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep428 = getelementptr i8, ptr %i.ap, i64 288
  %i.aq = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep429 = getelementptr i8, ptr %i.aq, i64 312
  %i.ar = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep430 = getelementptr i8, ptr %i.ar, i64 336
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep431 = getelementptr i8, ptr %i.as, i64 360
  %i.at = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep432 = getelementptr i8, ptr %i.at, i64 384
  %i.au = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep433 = getelementptr i8, ptr %i.au, i64 408
  %i.av = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep434 = getelementptr i8, ptr %i.av, i64 432
  %i.aw = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep435 = getelementptr i8, ptr %i.aw, i64 456
  %i.ax = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep436 = getelementptr i8, ptr %i.ax, i64 480
  %i.ay = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep437 = getelementptr i8, ptr %i.ay, i64 504
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep438 = getelementptr i8, ptr %i.az, i64 528
  %i.ba = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep439 = getelementptr i8, ptr %i.ba, i64 552
  %i.bb = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep440 = getelementptr i8, ptr %i.bb, i64 576
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep441 = getelementptr i8, ptr %i.bc, i64 600
  %i.bd = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep442 = getelementptr i8, ptr %i.bd, i64 624
  %i.be = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep443 = getelementptr i8, ptr %i.be, i64 648
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep444 = getelementptr i8, ptr %i.bf, i64 672
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep445 = getelementptr i8, ptr %i.bg, i64 696
  %i.bh = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep446 = getelementptr i8, ptr %i.bh, i64 720
  %i.bi = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep447 = getelementptr i8, ptr %i.bi, i64 744
  %i.bj = load i8, ptr %next.gep, align 8, !tbaa !473
  %i.bk = load i8, ptr %next.gep417, align 8, !tbaa !473
  %i.bl = load i8, ptr %next.gep418, align 8, !tbaa !473
  %i.bm = load i8, ptr %next.gep419, align 8, !tbaa !473
  %i.bn = load i8, ptr %next.gep420, align 8, !tbaa !473
  %i.bo = load i8, ptr %next.gep421, align 8, !tbaa !473
  %i.bp = load i8, ptr %next.gep422, align 8, !tbaa !473
  %i.bq = load i8, ptr %next.gep423, align 8, !tbaa !473
  %i.br = load i8, ptr %next.gep424, align 8, !tbaa !473
  %i.bs = load i8, ptr %next.gep425, align 8, !tbaa !473
  %i.bt = load i8, ptr %next.gep426, align 8, !tbaa !473
  %i.bu = load i8, ptr %next.gep427, align 8, !tbaa !473
  %i.bv = load i8, ptr %next.gep428, align 8, !tbaa !473
  %i.bw = load i8, ptr %next.gep429, align 8, !tbaa !473
  %i.bx = load i8, ptr %next.gep430, align 8, !tbaa !473
  %i.by = load i8, ptr %next.gep431, align 8, !tbaa !473
  %i.bz = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 1
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 2
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 3
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 4
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 5
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 6
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 7
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 8
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 9
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 10
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 11
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 12
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 13
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 14
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 15
  %i.cp = load i8, ptr %next.gep432, align 8, !tbaa !473
  %i.cq = load i8, ptr %next.gep433, align 8, !tbaa !473
  %i.cr = load i8, ptr %next.gep434, align 8, !tbaa !473
  %i.cs = load i8, ptr %next.gep435, align 8, !tbaa !473
  %i.ct = load i8, ptr %next.gep436, align 8, !tbaa !473
  %i.cu = load i8, ptr %next.gep437, align 8, !tbaa !473
  %i.cv = load i8, ptr %next.gep438, align 8, !tbaa !473
  %i.cw = load i8, ptr %next.gep439, align 8, !tbaa !473
  %i.cx = load i8, ptr %next.gep440, align 8, !tbaa !473
  %i.cy = load i8, ptr %next.gep441, align 8, !tbaa !473
  %i.cz = load i8, ptr %next.gep442, align 8, !tbaa !473
  %i.da = load i8, ptr %next.gep443, align 8, !tbaa !473
  %i.db = load i8, ptr %next.gep444, align 8, !tbaa !473
  %i.dc = load i8, ptr %next.gep445, align 8, !tbaa !473
  %i.dd = load i8, ptr %next.gep446, align 8, !tbaa !473
  %i.de = load i8, ptr %next.gep447, align 8, !tbaa !473
  %i.df = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 1
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 2
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 3
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 4
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 5
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 6
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 7
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 8
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 9
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 10
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 11
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 12
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 13
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 14
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 15
  %i.dv = icmp eq <16 x i8> %i.co, splat (i8 103)
  %i.dw = icmp eq <16 x i8> %i.du, splat (i8 103)
  %i.dx = or <16 x i1> %vec.phi, %i.dv            ; 2 uses
  %i.dy = or <16 x i1> %vec.phi416, %i.dw         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1884

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dy, %i.dx
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ea = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.eb = icmp ne i16 %i.ea, 0
  %rdx.select = select i1 %i.eb, i1 true, i1 %.04433.i ; 3 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !1890

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %.04433.i, %vector.main.loop.iter.check ]
  %n.vec448 = and i64 %i.z, 2305843009213693936   ; 3 uses
  %34 = xor i1 %bc.merge.rdx, %.04433.i
  %broadcast.splatinsert = insertelement <16 x i1> poison, i1 %34, i64 0
  %broadcast.splat = shufflevector <16 x i1> %broadcast.splatinsert, <16 x i1> poison, <16 x i32> zeroinitializer
  %35 = mul i64 %n.vec448, 24
  %36 = getelementptr i8, ptr %i.r, i64 %35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index449 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next467, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi450 = phi <16 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr472, %vec.epilog.vector.body ]
  %i.ec = mul i64 %index449, 24                   ; 16 uses
  %next.gep451 = getelementptr i8, ptr %i.r, i64 %i.ec
  %i.ed = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep452 = getelementptr i8, ptr %i.ed, i64 24
  %i.ee = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep453 = getelementptr i8, ptr %i.ee, i64 48
  %i.ef = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep454 = getelementptr i8, ptr %i.ef, i64 72
  %i.eg = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep455 = getelementptr i8, ptr %i.eg, i64 96
  %i.eh = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep456 = getelementptr i8, ptr %i.eh, i64 120
  %i.ei = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep457 = getelementptr i8, ptr %i.ei, i64 144
  %i.ej = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep458 = getelementptr i8, ptr %i.ej, i64 168
  %i.ek = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep459 = getelementptr i8, ptr %i.ek, i64 192
  %i.el = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep460 = getelementptr i8, ptr %i.el, i64 216
  %i.em = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep461 = getelementptr i8, ptr %i.em, i64 240
  %i.en = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep462 = getelementptr i8, ptr %i.en, i64 264
  %i.eo = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep463 = getelementptr i8, ptr %i.eo, i64 288
  %i.ep = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep464 = getelementptr i8, ptr %i.ep, i64 312
  %i.eq = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep465 = getelementptr i8, ptr %i.eq, i64 336
  %i.er = getelementptr i8, ptr %i.r, i64 %i.ec
  %next.gep466 = getelementptr i8, ptr %i.er, i64 360
  %i.es = load i8, ptr %next.gep451, align 8, !tbaa !473
  %i.et = load i8, ptr %next.gep452, align 8, !tbaa !473
  %i.eu = load i8, ptr %next.gep453, align 8, !tbaa !473
  %i.ev = load i8, ptr %next.gep454, align 8, !tbaa !473
  %i.ew = load i8, ptr %next.gep455, align 8, !tbaa !473
  %i.ex = load i8, ptr %next.gep456, align 8, !tbaa !473
  %i.ey = load i8, ptr %next.gep457, align 8, !tbaa !473
  %i.ez = load i8, ptr %next.gep458, align 8, !tbaa !473
  %i.fa = load i8, ptr %next.gep459, align 8, !tbaa !473
  %i.fb = load i8, ptr %next.gep460, align 8, !tbaa !473
  %i.fc = load i8, ptr %next.gep461, align 8, !tbaa !473
  %i.fd = load i8, ptr %next.gep462, align 8, !tbaa !473
  %i.fe = load i8, ptr %next.gep463, align 8, !tbaa !473
  %i.ff = load i8, ptr %next.gep464, align 8, !tbaa !473
  %i.fg = load i8, ptr %next.gep465, align 8, !tbaa !473
  %i.fh = load i8, ptr %next.gep466, align 8, !tbaa !473
  %i.fi = insertelement <16 x i8> poison, i8 %i.es, i64 0
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 1
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 2
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 3
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 4
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 5
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 6
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 7
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 8
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 9
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 10
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 11
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 12
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 13
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 14
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 15
  %i.fy = icmp eq <16 x i8> %i.fx, splat (i8 103)
  %i.fz = or <16 x i1> %vec.phi450, %i.fy
  %.fr472 = freeze <16 x i1> %i.fz                ; 2 uses
  %index.next467 = add nuw i64 %index449, 16      ; 2 uses
  %i.ga = icmp eq i64 %index.next467, %n.vec448
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1885

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gb = bitcast <16 x i1> %.fr472 to i16
  %i.gc = icmp ne i16 %i.gb, 0
  %rdx.select468 = select i1 %i.gc, i1 true, i1 %.04433.i ; 2 uses
  %cmp.n469 = icmp eq i64 %i.z, %n.vec448
  br i1 %cmp.n469, label %._crit_edge.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14529.i.ph = phi i1 [ %.04433.i, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select468, %vec.epilog.middle.block ]
  %.sroa.01.028.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %36, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

._crit_edge.i:                                    ; preds = %.lr.ph30.i, %middle.block, %vec.epilog.middle.block, %.lr.ph35.i
  %.145.lcssa.i = phi i1 [ %.04433.i, %.lr.ph35.i ], [ %rdx.select468, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select.i, %.lr.ph30.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !744
  %.not60.i = icmp eq ptr %i.ge, null
  br i1 %.not60.i, label %bb.c, label %bb.j

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.14529.i = phi i1 [ %spec.select.i, %.lr.ph30.i ], [ %.14529.i.ph, %.lr.ph30.i.preheader ]
  %.sroa.01.028.i = phi ptr [ %i.gh, %.lr.ph30.i ], [ %.sroa.01.028.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %i.gf = load i8, ptr %.sroa.01.028.i, align 8, !tbaa !473
  %i.gg = icmp eq i8 %i.gf, 103
  %spec.select.i = select i1 %i.gg, i1 true, i1 %.14529.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %i.gh, %i.t
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph30.i, !llvm.loop !1886

bb.c:                                             ; preds = %._crit_edge.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1891
  %.not61.i = icmp eq ptr %i.gj, null
  br i1 %.not61.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.gk = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !745
  %.not62.i = icmp eq ptr %i.gl, null
  br i1 %.not62.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.gm = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !746
  %.not63.i = icmp eq ptr %i.gn, null
  br i1 %.not63.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.go = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.gp)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.go, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gs = load ptr, ptr %9, align 8, !tbaa !205   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.gs) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.035.i, label %.sink.split.i, label %common.resume

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.150.i = phi i8 [ 1, %._crit_edge.i ], [ %.04931.i, %bb.e ], [ %.04931.i, %bb.d ], [ %.04931.i, %bb.c ] ; 3 uses
  %.148.i = phi i1 [ %.04732.i, %._crit_edge.i ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.gv = add nuw i64 %.04334.i, 1                ; 2 uses
  %i.gw = load ptr, ptr %i.m, align 8, !tbaa !742
  %i.gx = load ptr, ptr %i.l, align 8, !tbaa !743
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = sdiv exact i64 %i.ha, 544
  %i.hc = icmp ult i64 %i.gv, %i.hb
  br i1 %i.hc, label %.lr.ph35.i, label %._crit_edge36.i, !llvm.loop !1887

bb.k:                                             ; preds = %._crit_edge36.i
  %i.hd = icmp eq i64 %i.ha, 544
  br i1 %i.hd, label %_ZN6duckdbL24GetTableFunctionBindTypeERNS_25TableFunctionCatalogEntryERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE.exit.thread213, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.he = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.128, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i

bb.m:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.hf)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.u unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread.i: ; preds = %bb.l
end_hunk_0
