Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.10?download=true
inline.NumInlined: 1291
inline.NumDeleted: 424
begin_hunk_0_@_RNvMs2_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc:bb.a
_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i36 = phi i8 [ %i.z, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i34 = phi i8 [ %i.aa, %.thread43.i.i.thread ], [ %i.s, %.thread43.i.i ]
  %.sroa.04.040.i.i2733 = phi i32 [ %.sroa.04.040.i.i28, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.ab = add nsw i8 %.sroa.016.051.i.i34, 60, !dbg !6310
  %i.ac = icmp ugt i64 %i.j, 185542587187199, !dbg !6311
  br i1 %i.ac, label %bb.p, label %bb.h, !dbg !6312

_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i: ; preds = %.thread43.i.i
  %.not65 = icmp eq i64 %i.u, 0, !dbg !6313
  %i.ad = icmp ugt i64 %i.j, 185542587187199, !dbg !6311 ; 2 uses
  br i1 %.not65, label %bb.c, label %bb.g, !dbg !6314

bb.c:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i
  br i1 %i.ad, label %bb.l, label %bb.d, !dbg !6315

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp samesign ult i64 %i.j, 86400, !dbg !6316
  br i1 %i.ae, label %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, label %bb.e, !dbg !6316

bb.e:                                             ; preds = %bb.d
  %i.af = icmp samesign ugt i64 %i.j, 377705203199, !dbg !6317
  br i1 %i.af, label %bb.l, label %bb.f, !dbg !6317, !prof !581

bb.f:                                             ; preds = %bb.e
  %i.ag = udiv i64 %i.j, 86400, !dbg !6318
  %i.ah = trunc nuw nsw i64 %i.ag to i32, !dbg !6319
  %i.ai = sub nuw nsw i32 869850581, %i.ah, !dbg !6320 ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64, !dbg !6321
  %i.ak = mul nuw nsw i64 %i.aj, 3853261555, !dbg !6322 ; 2 uses
  %i.al = lshr i64 %i.ak, 15, !dbg !6322
  %i.am = lshr i64 %i.ak, 47, !dbg !6323
  %i.an = trunc nuw nsw i64 %i.am to i32, !dbg !6323 ; 3 uses
  %i.ao = trunc i64 %i.al to i32, !dbg !6324
  %i.ap = icmp ugt i32 %i.ao, 42920275, !dbg !6325
  %i.aq = and i32 %i.an, 3, !dbg !6325
  %i.ar = icmp eq i32 %i.aq, 0, !dbg !6325
  %.sroa.0.0.i.i.i.i = or i1 %i.ap, %i.ar, !dbg !6325 ; 2 uses
  %i.as = lshr i32 %i.an, 2, !dbg !6326
  %i.at = add nuw nsw i32 %i.ai, %i.an, !dbg !6327
  %i.au = sub nuw nsw i32 %i.at, %i.as, !dbg !6327
  %i.av = zext nneg i32 %i.au to i64, !dbg !6328
  %i.aw = mul nuw nsw i64 %i.av, 3010298776, !dbg !6329 ; 2 uses
  %i.ax = lshr i64 %i.aw, 8, !dbg !6329
  %i.ay = lshr i64 %i.aw, 40, !dbg !6330
  %i.az = trunc nuw nsw i64 %i.ay to i32, !dbg !6330 ; 2 uses
  %i.ba = and i64 %i.ax, 4294967295, !dbg !6331
  %i.bb = mul nuw nsw i64 %i.ba, 1461, !dbg !6332
  %i.bc = lshr i64 %i.bb, 34, !dbg !6333
  %i.bd = trunc nuw nsw i64 %i.bc to i32, !dbg !6333
  %i.be = zext i1 %.sroa.0.0.i.i.i.i to i32, !dbg !6334
  %i.bf = add nuw nsw i32 %i.bd, %i.be, !dbg !6333
  %i.bg = and i32 %i.az, 3, !dbg !6335
  %i.bh = icmp eq i32 %i.bg, 0, !dbg !6335
  %i.bi = and i1 %.sroa.0.0.i.i.i.i, %i.bh, !dbg !6336
  %i.bj = shl nuw i32 %i.az, 10, !dbg !6337
  %i.bk = add nsw i32 %i.bj, 1858256896, !dbg !6337
  %i.bl = select i1 %i.bi, i32 512, i32 0, !dbg !6338
  %i.bm = or disjoint i32 %i.bl, %i.bk, !dbg !6337
  %i.bn = or i32 %i.bm, %i.bf, !dbg !6337         ; 2 uses
  %i.bo = icmp ne i32 %i.bn, 0, !dbg !6339
  call void @llvm.assume(i1 %i.bo), !dbg !6340
  br label %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, !dbg !6341

bb.g:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i
  br i1 %i.ad, label %bb.p, label %bb.h, !dbg !6312

bb.h:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, %bb.g
  %.sroa.09.150.i.i354353 = phi i8 [ %.sroa.09.150.i.i36, %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.sroa.04.040.i.i27324552 = phi i32 [ %.sroa.04.040.i.i2733, %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.sroa.016.1.i.i4751 = phi i8 [ %i.ab, %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.pn = phi i8 [ 23, %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 24, %bb.g ] ; 2 uses
  %i.bp = udiv i64 %i.j, 86400, !dbg !6342
  %i.bq = trunc nuw nsw i64 %i.bp to i32, !dbg !6343 ; 3 uses
  %i.br = icmp samesign ult i64 %i.j, 86400, !dbg !6344
  br i1 %i.br, label %bb.i, label %bb.j, !dbg !6344

bb.i:                                             ; preds = %bb.h
  %i.bs = sub nuw nsw i32 2017281, %i.bq, !dbg !6345
  br label %_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date15checked_sub_std.exit22.i, !dbg !6346

bb.j:                                             ; preds = %bb.h
  %i.bt = add i32 %i.bq, -4371588, !dbg !6347
  %or.cond.i.i19.i = icmp ult i32 %i.bt, -7304484, !dbg !6347
  br i1 %or.cond.i.i19.i, label %bb.p, label %bb.k, !dbg !6347, !prof !581

bb.k:                                             ; preds = %bb.j
  %i.bu = sub i32 869850581, %i.bq, !dbg !6348    ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64, !dbg !6349
  %i.bw = mul nuw nsw i64 %i.bv, 3853261555, !dbg !6350 ; 2 uses
  %i.bx = lshr i64 %i.bw, 15, !dbg !6350
  %i.by = lshr i64 %i.bw, 47, !dbg !6351
  %i.bz = trunc nuw nsw i64 %i.by to i32, !dbg !6351 ; 3 uses
  %i.ca = trunc i64 %i.bx to i32, !dbg !6352
  %i.cb = icmp ugt i32 %i.ca, 42920275, !dbg !6353
  %i.cc = and i32 %i.bz, 3, !dbg !6353
  %i.cd = icmp eq i32 %i.cc, 0, !dbg !6353
  %.sroa.0.0.i.i.i20.i = or i1 %i.cb, %i.cd, !dbg !6353 ; 2 uses
  %i.ce = lshr i32 %i.bz, 2, !dbg !6354
  %i.cf = add nuw nsw i32 %i.bu, %i.bz, !dbg !6355
  %i.cg = sub nuw nsw i32 %i.cf, %i.ce, !dbg !6355
  %i.ch = zext nneg i32 %i.cg to i64, !dbg !6356
  %i.ci = mul nuw nsw i64 %i.ch, 3010298776, !dbg !6357 ; 2 uses
  %i.cj = lshr i64 %i.ci, 8, !dbg !6357
  %i.ck = lshr i64 %i.ci, 40, !dbg !6358
  %i.cl = trunc nuw nsw i64 %i.ck to i32, !dbg !6358 ; 2 uses
  %i.cm = and i64 %i.cj, 4294967295, !dbg !6359
  %i.cn = mul nuw nsw i64 %i.cm, 1461, !dbg !6360
  %i.co = lshr i64 %i.cn, 34, !dbg !6361
  %i.cp = trunc nuw nsw i64 %i.co to i32, !dbg !6361
  %i.cq = zext i1 %.sroa.0.0.i.i.i20.i to i32, !dbg !6362
  %i.cr = add nuw nsw i32 %i.cp, %i.cq, !dbg !6361
  %i.cs = and i32 %i.cl, 3, !dbg !6363
  %i.ct = icmp eq i32 %i.cs, 0, !dbg !6363
  %i.cu = and i1 %.sroa.0.0.i.i.i20.i, %i.ct, !dbg !6364
  %i.cv = shl nuw i32 %i.cl, 10, !dbg !6365
  %i.cw = add nsw i32 %i.cv, 1858256896, !dbg !6365
  %i.cx = select i1 %i.cu, i32 512, i32 0, !dbg !6366
  %i.cy = or disjoint i32 %i.cx, %i.cw, !dbg !6365
  %i.cz = or i32 %i.cy, %i.cr, !dbg !6365         ; 2 uses
  %i.da = icmp ne i32 %i.cz, 0, !dbg !6367
  call void @llvm.assume(i1 %i.da), !dbg !6368
  br label %_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date15checked_sub_std.exit22.i, !dbg !6369

bb.l:                                             ; preds = %bb.e, %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #36, !dbg !6370, !noalias !6273
  unreachable, !dbg !6370

_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date15checked_sub_std.exit22.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i21.i = phi i32 [ %i.bs, %bb.i ], [ %i.cz, %bb.k ], !dbg !6371 ; 4 uses
  %i.db = and i32 %.sroa.0.0.i21.i, 511, !dbg !6372
  %.not.i.i = icmp eq i32 %i.db, 1, !dbg !6372
  br i1 %.not.i.i, label %bb.m, label %bb.n, !dbg !6373, !prof !416

bb.m:                                             ; preds = %_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date15checked_sub_std.exit22.i
  %i.dc = icmp eq i32 %.sroa.0.0.i21.i, -10238975, !dbg !6374
  br i1 %i.dc, label %_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date12previous_day.exit.i, label %bb.o, !dbg !6374

bb.n:                                             ; preds = %_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date15checked_sub_std.exit22.i
  %i.dd = add i32 %.sroa.0.0.i21.i, -1, !dbg !6375 ; 2 uses
  %i.de = icmp ne i32 %i.dd, 0, !dbg !6376
  call void @llvm.assume(i1 %i.de), !dbg !6377
  br label %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, !dbg !6378

bb.o:                                             ; preds = %bb.m
  %i.df = ashr i32 %.sroa.0.0.i21.i, 10, !dbg !6379 ; 3 uses
  %i.dg = add nsw i32 %i.df, -1, !dbg !6380       ; 2 uses
  %i.dh = icmp slt i32 %i.df, 1, !dbg !6381
  %i.di = sub nsw i32 1, %i.df, !dbg !6382
  %.sroa.07.0.i.i = select i1 %i.dh, i32 %i.di, i32 %i.dg, !dbg !6382
  %i.dj = mul i32 %.sroa.07.0.i.i, 33555415, !dbg !6383
  %i.dk = and i32 %i.dj, 100695055, !dbg !6384
  %i.dl = icmp samesign ult i32 %i.dk, 31745, !dbg !6384 ; 2 uses
  %i.dm = select i1 %i.dl, i32 512, i32 0, !dbg !6385
  %.sroa.04.0.i.i = select i1 %i.dl, i32 366, i32 365, !dbg !6385
  %i.dn = shl i32 %i.dg, 10, !dbg !6386
  %i.do = or disjoint i32 %i.dm, %i.dn, !dbg !6386
  %i.dp = or disjoint i32 %i.do, %.sroa.04.0.i.i, !dbg !6386
  br label %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, !dbg !6387

bb.p:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, %bb.j, %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #36, !dbg !6388, !noalias !6273
  unreachable, !dbg !6388

_RNvMNtCs7BKkw3QFn1J_4time4dateNtB2_4Date12previous_day.exit.i: ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #36, !dbg !6389, !noalias !6273
  unreachable, !dbg !6389

_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit: ; preds = %bb.d, %bb.f, %bb.n, %bb.o
  %.pn66 = phi i8 [ 0, %bb.f ], [ %.pn, %bb.n ], [ %.pn, %bb.o ], [ 0, %bb.d ]
  %.sroa.016.1.i.i46 = phi i8 [ 0, %bb.f ], [ %.sroa.016.1.i.i4751, %bb.n ], [ %.sroa.016.1.i.i4751, %bb.o ], [ 0, %bb.d ]
  %.sroa.04.040.i.i273244 = phi i32 [ 0, %bb.f ], [ %.sroa.04.040.i.i27324552, %bb.n ], [ %.sroa.04.040.i.i27324552, %bb.o ], [ 0, %bb.d ]
  %.sroa.09.150.i.i3542 = phi i8 [ 0, %bb.f ], [ %.sroa.09.150.i.i354353, %bb.n ], [ %.sroa.09.150.i.i354353, %bb.o ], [ 0, %bb.d ]
  %.sroa.02.0.i = phi i32 [ %i.bn, %bb.f ], [ %i.dd, %bb.n ], [ %i.dp, %bb.o ], [ 2017281, %bb.d ], !dbg !6390
  %spec.select.i.i48 = sub nsw i8 %.pn66, %i.v
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i8 %spec.select.i.i48 to i64, !dbg !6391
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 48, !dbg !6391
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i8 %.sroa.016.1.i.i46 to i64, !dbg !6391
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 40, !dbg !6391
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i, !dbg !6391
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i8 %.sroa.09.150.i.i3542 to i64, !dbg !6391
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32, !dbg !6391
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.3.0.insert.insert.i.i.i, !dbg !6391
  br label %bb.w, !dbg !6392

_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread: ; preds = %bb.a
  %i.dq = urem i64 %i.n, 60, !dbg !6393
  %i.dr = udiv i64 %i.j, 3600, !dbg !6394
  %i.ds = urem i64 %i.dr, 24, !dbg !6395
  %i.dt = icmp ugt i64 %i.j, 185542587187199, !dbg !6396
  br i1 %i.dt, label %bb.v, label %bb.q, !dbg !6397

bb.q:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread
  %i.du = udiv i64 %i.j, 86400, !dbg !6398
  %i.dv = trunc nuw nsw i64 %i.du to i32, !dbg !6399 ; 2 uses
  %i.dw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dv, i32 1), !dbg !6400 ; 2 uses
  %i.dx = extractvalue { i32, i1 } %i.dw, 0, !dbg !6400 ; 2 uses
  %i.dy = extractvalue { i32, i1 } %i.dw, 1, !dbg !6400
  %i.dz = add i32 %i.dx, -366
  %or.cond.i.i5 = icmp ult i32 %i.dz, -365
  %or.cond.not = or i1 %i.dy, %or.cond.i.i5, !dbg !6401
  br i1 %or.cond.not, label %bb.s, label %bb.r, !dbg !6401, !prof !554

bb.r:                                             ; preds = %bb.q
  %i.ea = or disjoint i32 %i.dx, 2017280, !dbg !6402
  br label %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit, !dbg !6403

bb.s:                                             ; preds = %bb.q
  %i.eb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dv, i32 2440588), !dbg !6404 ; 2 uses
  %i.ec = extractvalue { i32, i1 } %i.eb, 1, !dbg !6404
  br i1 %i.ec, label %bb.v, label %bb.t, !dbg !6405, !prof !416

bb.t:                                             ; preds = %bb.s
  %i.ed = extractvalue { i32, i1 } %i.eb, 0, !dbg !6404 ; 2 uses
  %i.ee = add nsw i32 %i.ed, -5373485, !dbg !6406
  %or.cond.i.i.i6 = icmp ult i32 %i.ee, -7304484, !dbg !6406
  br i1 %or.cond.i.i.i6, label %bb.v, label %bb.u, !dbg !6406, !prof !581

bb.u:                                             ; preds = %bb.t
  %i.ef = add nuw nsw i32 %i.ed, 867409993, !dbg !6407 ; 2 uses
  %i.eg = zext nneg i32 %i.ef to i64, !dbg !6408
  %i.eh = mul nuw nsw i64 %i.eg, 3853261555, !dbg !6409 ; 2 uses
  %i.ei = lshr i64 %i.eh, 15, !dbg !6409
  %i.ej = lshr i64 %i.eh, 47, !dbg !6410
  %i.ek = trunc nuw nsw i64 %i.ej to i32, !dbg !6410 ; 3 uses
  %i.el = trunc i64 %i.ei to i32, !dbg !6411
  %i.em = icmp ugt i32 %i.el, 42920275, !dbg !6412
  %i.en = and i32 %i.ek, 3, !dbg !6412
  %i.eo = icmp eq i32 %i.en, 0, !dbg !6412
  %.sroa.0.0.i.i.i.i7 = or i1 %i.em, %i.eo, !dbg !6412 ; 2 uses
  %i.ep = lshr i32 %i.ek, 2, !dbg !6413
  %i.eq = add nuw nsw i32 %i.ef, %i.ek, !dbg !6414
  %i.er = sub nuw nsw i32 %i.eq, %i.ep, !dbg !6414
  %i.es = zext nneg i32 %i.er to i64, !dbg !6415
  %i.et = mul nuw nsw i64 %i.es, 3010298776, !dbg !6416 ; 2 uses
  %i.eu = lshr i64 %i.et, 8, !dbg !6416
  %i.ev = lshr i64 %i.et, 40, !dbg !6417
  %i.ew = trunc nuw nsw i64 %i.ev to i32, !dbg !6417 ; 2 uses
  %i.ex = and i64 %i.eu, 4294967295, !dbg !6418
  %i.ey = mul nuw nsw i64 %i.ex, 1461, !dbg !6419
  %i.ez = lshr i64 %i.ey, 34, !dbg !6420
  %i.fa = trunc nuw nsw i64 %i.ez to i32, !dbg !6420
  %i.fb = zext i1 %.sroa.0.0.i.i.i.i7 to i32, !dbg !6421
  %i.fc = add nuw nsw i32 %i.fa, %i.fb, !dbg !6420
  %i.fd = and i32 %i.ew, 3, !dbg !6422
  %i.fe = icmp eq i32 %i.fd, 0, !dbg !6422
  %i.ff = and i1 %.sroa.0.0.i.i.i.i7, %i.fe, !dbg !6423
  %i.fg = shl nuw i32 %i.ew, 10, !dbg !6424
  %i.fh = add nsw i32 %i.fg, 1858256896, !dbg !6424
  %i.fi = select i1 %i.ff, i32 512, i32 0, !dbg !6425
  %i.fj = or disjoint i32 %i.fi, %i.fh, !dbg !6424
  %i.fk = or i32 %i.fj, %i.fc, !dbg !6424
  br label %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit, !dbg !6426

bb.v:                                             ; preds = %_RNvMs2_NtCs7BKkw3QFn1J_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread, %bb.t, %bb.s
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #36, !dbg !6427, !noalias !6285
  unreachable, !dbg !6427

_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit: ; preds = %bb.r, %bb.u
  %.sroa.02.0.i8 = phi i32 [ %i.fk, %bb.u ], [ %i.ea, %bb.r ], !dbg !6428
  %.sroa.4.0.insert.shift.i.i.i10 = shl nuw nsw i64 %i.ds, 48, !dbg !6429
  %.sroa.3.0.insert.shift.i.i.i12 = shl nuw nsw i64 %i.dq, 40, !dbg !6429
  %.sroa.3.0.insert.insert.i.i.i13 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i10, %.sroa.3.0.insert.shift.i.i.i12, !dbg !6429
  %.sroa.2.0.insert.shift.i.i.i15 = shl nuw nsw i64 %i.m, 32, !dbg !6429
  %.sroa.2.0.insert.insert.i.i.i16 = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i13, %.sroa.2.0.insert.shift.i.i.i15, !dbg !6429
  br label %bb.w, !dbg !6430

bb.w:                                             ; preds = %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit, %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit
  %.sink = phi i32 [ %i.l, %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.04.040.i.i273244, %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.2.0.insert.insert.i.i.i16.sink = phi i64 [ %.sroa.2.0.insert.insert.i.i.i16, %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.2.0.insert.insert.i.i.i, %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.02.0.i8.sink = phi i32 [ %.sroa.02.0.i8, %_RNvXsb_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.02.0.i, %_RNvXsf_NtCs7BKkw3QFn1J_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.0.0.insert.ext.i.i.i17 = zext nneg i32 %.sink to i64, !dbg !6291
  %.sroa.0.0.insert.insert.i.i.i18 = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i16.sink, %.sroa.0.0.insert.ext.i.i.i17, !dbg !6291
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !6291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.fl, ptr noundef nonnull readonly align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @48, i64 12), i64 3, i1 false), !dbg !6291
  store i64 %.sroa.0.0.insert.insert.i.i.i18, ptr %0, align 4, !dbg !6291, !noalias !349
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6291
  store i32 %.sroa.02.0.i8.sink, ptr %.sroa.4.0..sroa_idx.i19, align 4, !dbg !6291, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6432
  ret void, !dbg !6433
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2f_5boxed3BoxDNtNtB1E_5error5ErrorNtNtB1E_6marker4SendNtB3t_4SyncEL_EEEE4sendCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6434 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8, !dbg !6446, !range !433, !noundef !349
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6446
  %i.d = load ptr, ptr %i.c, align 8, !dbg !6447, !noundef !349 ; 3 uses
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !6448

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE4sendCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 128 %i.d, ptr noundef %1, i64 undef, i32 noundef -1), !dbg !6449
  br label %bb.e, !dbg !6449

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE4sendCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 128 %i.d, ptr noundef %1, i64 undef, i32 noundef -1), !dbg !6450
  br label %bb.e, !dbg !6450

bb.d:                                             ; preds = %bb.a
  %i.g = tail call { i64, ptr } @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE4sendCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.d, ptr noundef %1, i64 undef, i32 noundef -1), !dbg !6451
  br label %bb.e, !dbg !6451

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.pn = phi { i64, ptr } [ %i.f, %bb.c ], [ %i.e, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn, 0, !dbg !6447 ; 3 uses
  %.not = icmp eq i64 %.sroa.01.0, 2, !dbg !6452
  br i1 %.not, label %bb.l, label %bb.f, !dbg !6453

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0 = extractvalue { i64, ptr } %.pn, 1, !dbg !6447 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.01.0, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.7.0, ptr %i.h, align 8
  %i.i = trunc nuw i64 %.sroa.01.0 to i1, !dbg !6454
  br i1 %i.i, label %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations.exit, label %bb.g, !dbg !6454, !prof !479

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #32
          to label %bb.h unwind label %bb.j, !dbg !6455

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.j, !dbg !6456

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5error16SendTimeoutErrorINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2L_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Y_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #35
          to label %bb.i unwind label %bb.k, !dbg !6457

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !6456
  unreachable, !dbg !6456

_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6458
  br label %bb.l, !dbg !6459

bb.l:                                             ; preds = %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations.exit, %bb.e
  %.sroa.3.0 = phi ptr [ undef, %bb.e ], [ %.sroa.7.0, %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations.exit ], !dbg !6460
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !6461
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1, !dbg !6461
  ret { i64, ptr } %i.m, !dbg !6461
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCscSdvgEqW7C0_4slab5EntryINtNtB7_4sync4WeakINtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4live18live_reference_set19LiveReferenceHandleINtB1h_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEEEEE8grow_oneB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !6462 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !6475, !range !427, !noundef !349 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6474), !dbg !6476
  %i.c = shl nuw i64 %i.b, 1, !dbg !6477
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !6478 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6479, !noalias !6474
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6480 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !6480, !alias.scope !6474
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !6480, !noalias !6474
  %i.f = load i64, ptr %i.a, align 8, !dbg !6481, !range !432, !noalias !6474, !noundef !349
  %i.g = trunc nuw i64 %i.f to i1, !dbg !6482
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6483 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !6482

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !6484, !range !485, !noalias !6474, !noundef !349
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6484
  %i.k = load i64, ptr %i.j, align 8, !dbg !6484, !noalias !6474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6485, !noalias !6474
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !dbg !6486
  unreachable, !dbg !6486

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !6487, !noalias !6474, !nonnull !349, !noundef !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6485, !noalias !6474
  store ptr %i.l, ptr %i.e, align 8, !dbg !6488, !alias.scope !6474
  %i.m = icmp sgt i64 %i.d, -1, !dbg !6489
  tail call void @llvm.assume(i1 %i.m), !dbg !6489
  store i64 %i.d, ptr %0, align 8, !dbg !6490, !alias.scope !6474
  ret void, !dbg !6491
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE8grow_oneB2H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !6492 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !6505, !range !427, !noundef !349 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6504), !dbg !6506
end_hunk_0
