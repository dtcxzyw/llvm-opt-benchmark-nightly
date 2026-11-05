Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_async-55d415d9d62fd1e1.polars_async.d42cb428d39527fe-cgu.00?download=true
inline.NumInlined: 129
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs8_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_7StealerINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1A_12TaskMetadataEEL_EE30steal_batch_with_limit_and_popB1C_:bb.a
  %i.v = getelementptr i8, ptr %.val.i.i, i64 2072, !dbg !1463
  %.val.val.i.i = load i64, ptr %i.v, align 8, !dbg !1463, !noundef !92
  %.not102 = icmp eq i64 %.val.val.i.i, 0, !dbg !1464
  br i1 %.not102, label %bb.g, label %bb.f, !dbg !1259

bb.e:                                             ; preds = %bb.c
  %i.w = tail call { ptr, ptr } @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1z_12TaskMetadataEEL_EE3popB1B_(ptr noundef nonnull align 8 %2), !dbg !1465 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0, !dbg !1465 ; 2 uses
  %.not84 = icmp eq ptr %i.x, null, !dbg !1466
  br i1 %.not84, label %bb.an, label %bb.am, !dbg !1467

bb.f:                                             ; preds = %_RNCINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0CsidoPH4Qgqxm_12polars_async.exit.i, %_RINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECsidoPH4Qgqxm_12polars_async.exit
  fence seq_cst, !dbg !1468
  br label %bb.g, !dbg !1469

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.x, %bb.o, %bb.k, %bb.l
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async(ptr %i.y) #20
          to label %bb.al unwind label %bb.ak, !dbg !1470

bb.g:                                             ; preds = %_RNCINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0CsidoPH4Qgqxm_12polars_async.exit.i.thread, %_RINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECsidoPH4Qgqxm_12polars_async.exit, %bb.f, %_RNCINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0CsidoPH4Qgqxm_12polars_async.exit.i
  %i.y = tail call fastcc noundef ptr @_RINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsidoPH4Qgqxm_12polars_async() #23, !dbg !1471 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 264, !dbg !1472 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !1473
  %i.ab = sub i64 %i.aa, %i.g, !dbg !1474         ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1, !dbg !1475
  br i1 %i.ac, label %bb.h, label %bb.i, !dbg !1475

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !dbg !1476
  br label %bb.ag, !dbg !1477

bb.i:                                             ; preds = %bb.g
  %i.ad = add nsw i64 %i.ab, -1, !dbg !1478
  %i.ae = lshr i64 %i.ad, 1, !dbg !1478
  %i.af = add i64 %3, -1, !dbg !1479
  %.sroa.0.0.i88 = tail call noundef range(i64 0, 4611686018427387904) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.af, i64 range(i64 0, 4611686018427387904) %i.ae), !dbg !1480 ; 10 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i88, 0, !dbg !1481 ; 4 uses
  br i1 %.not.i, label %bb.l, label %bb.j, !dbg !1481

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %2, align 8, !dbg !1482, !nonnull !92, !noundef !92 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 264, !dbg !1483
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8, !dbg !1484
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 256, !dbg !1485
  %i.ak = load atomic i64, ptr %i.aj seq_cst, align 8, !dbg !1486
  %i.al = sub i64 %i.ai, %i.ak, !dbg !1487        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1488
  %i.an = load i64, ptr %i.am, align 8, !dbg !1488, !noundef !92 ; 2 uses
  %i.ao = sub i64 %i.an, %i.al, !dbg !1489
  %i.ap = icmp ult i64 %i.ao, %.sroa.0.0.i88, !dbg !1489
  br i1 %i.ap, label %.preheader.i, label %bb.l, !dbg !1489

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.i89, %.preheader.i ], [ %i.an, %bb.j ]
  %.sroa.0.0.i89 = shl i64 %.sroa.0.0.in.i, 1, !dbg !1490 ; 3 uses
  %i.aq = sub i64 %.sroa.0.0.i89, %i.al, !dbg !1491
  %i.ar = icmp ult i64 %i.aq, %.sroa.0.0.i88, !dbg !1491
  br i1 %i.ar, label %.preheader.i, label %bb.k, !dbg !1491, !prof !119

bb.k:                                             ; preds = %.preheader.i
  invoke fastcc void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1z_12TaskMetadataEEL_EE6resizeB1B_(ptr noundef nonnull align 8 %2, i64 noundef %.sroa.0.0.i89)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1492

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1493
  %i.at = load ptr, ptr %i.as, align 8, !dbg !1494, !noundef !92 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1494
  %i.av = load i64, ptr %i.au, align 8, !dbg !1494, !noundef !92 ; 4 uses
  %i.aw = load ptr, ptr %2, align 8, !dbg !1495, !nonnull !92, !noundef !92
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 264, !dbg !1496
  %i.ay = load atomic i64, ptr %i.ax monotonic, align 8, !dbg !1497 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1498
  %i.az = load atomic i64, ptr %i.e acquire, align 8, !dbg !1499 ; 3 uses
  store i64 %i.az, ptr %i.a, align 8, !dbg !1500
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1501 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !1502, !noundef !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !1503
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !1503, !noundef !92
  %i.be = add i64 %i.bd, -1, !dbg !1504
  %i.bf = and i64 %i.be, %i.g, !dbg !1505
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bf, !dbg !1506
  %i.bh = load volatile { [2 x i64] }, ptr %i.bg, align 8, !dbg !1507 ; 2 uses
  %.fca.0.0.extract = extractvalue { [2 x i64] } %i.bh, 0, 0, !dbg !1507 ; 3 uses
  %.fca.0.1.extract = extractvalue { [2 x i64] } %i.bh, 0, 1, !dbg !1507 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1508
  %i.bj = load i8, ptr %i.bi, align 8, !dbg !1508, !range !172, !noundef !92
  %i.bk = trunc nuw i8 %i.bj to i1, !dbg !1508
  br i1 %i.bk, label %bb.v, label %bb.n, !dbg !1509

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !1510
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !1510, !range !172, !noundef !92
  %i.bn = trunc nuw i8 %i.bm to i1, !dbg !1510
  br i1 %i.bn, label %.preheader104, label %.preheader109, !dbg !1511

.preheader109:                                    ; preds = %bb.n
  br i1 %.not.i, label %.loopexit105, label %.lr.ph, !dbg !1318

.lr.ph:                                           ; preds = %.preheader109
  %i.bo = add i64 %i.av, -1
  br label %bb.o, !dbg !1318

.preheader104:                                    ; preds = %bb.n
  br i1 %.not.i, label %.loopexit105, label %.lr.ph118, !dbg !1512

.lr.ph118:                                        ; preds = %.preheader104
  %i.bp = add i64 %i.ay, %.sroa.0.0.i88
  %i.bq = add i64 %i.av, -1
  br label %bb.q, !dbg !1512

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.045.0116 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.p ] ; 2 uses
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1513 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bs = add nuw nsw i64 %.sroa.045.0116, 1, !dbg !1514 ; 3 uses
  %i.bt = add i64 %i.bs, %i.g, !dbg !1515
  %i.bu = load ptr, ptr %i.br, align 8, !dbg !1516, !noundef !92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !1517
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !1517, !noundef !92
  %i.bx = add i64 %i.bw, -1, !dbg !1518
  %i.by = and i64 %i.bx, %i.bt, !dbg !1519
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.by, !dbg !1520
  %i.ca = load volatile { [2 x i64] }, ptr %i.bz, align 8, !dbg !1521 ; 2 uses
  %.fca.0.0.extract55 = extractvalue { [2 x i64] } %i.ca, 0, 0, !dbg !1521
  %.fca.0.1.extract56 = extractvalue { [2 x i64] } %i.ca, 0, 1, !dbg !1521
  %i.cb = inttoptr i64 %.fca.0.0.extract55 to ptr, !dbg !1521
  %i.cc = inttoptr i64 %.fca.0.1.extract56 to ptr, !dbg !1521
  %i.cd = add i64 %.sroa.045.0116, %i.ay, !dbg !1522
  %i.ce = and i64 %i.cd, %i.bo, !dbg !1523
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ce, !dbg !1524 ; 2 uses
  store volatile ptr %i.cb, ptr %i.cf, align 8, !dbg !1525
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !1525
  store volatile ptr %i.cc, ptr %i.cg, align 8, !dbg !1525
  %exitcond.not = icmp eq i64 %i.bs, %.sroa.0.0.i88, !dbg !1526
  br i1 %exitcond.not, label %.loopexit105, label %bb.o, !dbg !1318

bb.q:                                             ; preds = %.lr.ph118, %bb.u
  %.sroa.047.0117 = phi i64 [ 0, %.lr.ph118 ], [ %i.co, %bb.u ] ; 2 uses
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1527 ; 2 uses

.loopexit105:                                     ; preds = %bb.p, %bb.u, %.preheader109, %.preheader104
  %i.ci = load atomic i64, ptr %i.e acquire, align 8, !dbg !1528
  %.not78 = icmp eq i64 %i.ci, %i.az, !dbg !1529
  br i1 %.not78, label %bb.r, label %bb.t, !dbg !1530

bb.r:                                             ; preds = %.loopexit105
  %i.cj = add i64 %i.g, 1, !dbg !1531
  %i.ck = add i64 %i.cj, %.sroa.0.0.i88, !dbg !1532
  %i.cl = cmpxchg ptr %i.f, i64 %i.g, i64 %i.ck seq_cst monotonic, align 8, !dbg !1533
  %i.cm = extractvalue { i64, i1 } %i.cl, 1, !dbg !1533
  br i1 %i.cm, label %bb.s, label %bb.t, !dbg !1534

bb.s:                                             ; preds = %bb.r
  %i.cn = add i64 %i.ay, %.sroa.0.0.i88, !dbg !1535
  br label %.loopexit, !dbg !1536

bb.t:                                             ; preds = %bb.v, %.loopexit105, %bb.r
  store i64 2, ptr %0, align 8, !dbg !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1538
  br label %bb.ag, !dbg !1477

bb.u:                                             ; preds = %bb.q
  %i.co = add nuw nsw i64 %.sroa.047.0117, 1, !dbg !1539 ; 3 uses
  %i.cp = add i64 %i.co, %i.g, !dbg !1540
  %i.cq = load ptr, ptr %i.ch, align 8, !dbg !1541, !noundef !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !1542
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !1542, !noundef !92
  %i.ct = add i64 %i.cs, -1, !dbg !1543
  %i.cu = and i64 %i.ct, %i.cp, !dbg !1544
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.cq, i64 %i.cu, !dbg !1545
  %i.cw = load volatile { [2 x i64] }, ptr %i.cv, align 8, !dbg !1546 ; 2 uses
  %.fca.0.0.extract59 = extractvalue { [2 x i64] } %i.cw, 0, 0, !dbg !1546
  %.fca.0.1.extract60 = extractvalue { [2 x i64] } %i.cw, 0, 1, !dbg !1546
  %i.cx = inttoptr i64 %.fca.0.0.extract59 to ptr, !dbg !1546
  %i.cy = inttoptr i64 %.fca.0.1.extract60 to ptr, !dbg !1546
  %i.cz = xor i64 %.sroa.047.0117, -1, !dbg !1547
  %i.da = add i64 %i.bp, %i.cz, !dbg !1548
  %i.db = and i64 %i.da, %i.bq, !dbg !1549
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.db, !dbg !1550 ; 2 uses
  store volatile ptr %i.cx, ptr %i.dc, align 8, !dbg !1551
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !1551
  store volatile ptr %i.cy, ptr %i.dd, align 8, !dbg !1551
  %exitcond156.not = icmp eq i64 %i.co, %.sroa.0.0.i88, !dbg !1552
  br i1 %exitcond156.not, label %.loopexit105, label %bb.q, !dbg !1512

bb.v:                                             ; preds = %bb.m
  %i.de = add i64 %i.g, 1, !dbg !1553             ; 2 uses
  %i.df = cmpxchg ptr %i.f, i64 %i.g, i64 %i.de seq_cst monotonic, align 8, !dbg !1554
  %i.dg = extractvalue { i64, i1 } %i.df, 1, !dbg !1554
  br i1 %i.dg, label %.preheader, label %bb.t, !dbg !1555

.preheader:                                       ; preds = %bb.v
  br i1 %.not.i, label %._crit_edge, label %.lr.ph124, !dbg !1556

.lr.ph124:                                        ; preds = %.preheader
  %i.dh = add i64 %i.av, -1
  br label %bb.w, !dbg !1556

._crit_edge:                                      ; preds = %bb.aa, %bb.w, %bb.z, %bb.y, %.preheader
  %.sroa.7.1.lcssa = phi i64 [ %.fca.0.1.extract, %.preheader ], [ %.sroa.7.1120, %bb.y ], [ %.sroa.7.1120, %bb.z ], [ %.sroa.7.1120, %bb.w ], [ %.fca.0.1.extract64, %bb.aa ], !dbg !1557 ; 3 uses
  %.sroa.033.1.lcssa = phi i64 [ %.fca.0.0.extract, %.preheader ], [ %.sroa.033.1121, %bb.y ], [ %.sroa.033.1121, %bb.z ], [ %.sroa.033.1121, %bb.w ], [ %.fca.0.0.extract63, %bb.aa ], !dbg !1557 ; 3 uses
  %.sroa.025.1.lcssa = phi i64 [ %i.ay, %.preheader ], [ %.sroa.025.1122, %bb.y ], [ %.sroa.025.1122, %bb.z ], [ %.sroa.025.1122, %bb.w ], [ %i.eg, %bb.aa ], !dbg !1558 ; 5 uses
  %.sroa.017.0 = phi i64 [ 0, %.preheader ], [ %.sroa.049.0119, %bb.y ], [ %.sroa.049.0119, %bb.z ], [ %.sroa.049.0119, %bb.w ], [ %.sroa.0.0.i88, %bb.aa ], !dbg !1559 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !1560
  %i.dj = load i8, ptr %i.di, align 8, !dbg !1560, !range !172, !noundef !92
  %i.dk = icmp eq i8 %i.dj, 0, !dbg !1361
  br i1 %i.dk, label %bb.ab, label %.loopexit, !dbg !1361

bb.w:                                             ; preds = %.lr.ph124, %bb.aa
  %.sroa.03.0123 = phi i64 [ %i.de, %.lr.ph124 ], [ %i.dy, %bb.aa ] ; 4 uses
  %.sroa.025.1122 = phi i64 [ %i.ay, %.lr.ph124 ], [ %i.eg, %bb.aa ] ; 5 uses
  %.sroa.033.1121 = phi i64 [ %.fca.0.0.extract, %.lr.ph124 ], [ %.fca.0.0.extract63, %bb.aa ] ; 4 uses
  %.sroa.7.1120 = phi i64 [ %.fca.0.1.extract, %.lr.ph124 ], [ %.fca.0.1.extract64, %bb.aa ] ; 4 uses
  %.sroa.049.0119 = phi i64 [ 0, %.lr.ph124 ], [ %i.dl, %bb.aa ] ; 4 uses
  %i.dl = add nuw nsw i64 %.sroa.049.0119, 1, !dbg !1561 ; 2 uses
  fence seq_cst, !dbg !1562
  %i.dm = load atomic i64, ptr %i.z acquire, align 8, !dbg !1563
  %i.dn = sub i64 %i.dm, %.sroa.03.0123, !dbg !1564
  %i.do = icmp slt i64 %i.dn, 1, !dbg !1565
  br i1 %i.do, label %._crit_edge, label %bb.x, !dbg !1565

bb.x:                                             ; preds = %bb.w
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1566 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !1567, !noundef !92
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !1568
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !1568, !noundef !92
  %i.dt = add i64 %i.ds, -1, !dbg !1569
  %i.du = and i64 %i.dt, %.sroa.03.0123, !dbg !1570
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.du, !dbg !1571
  %i.dw = load volatile { [2 x i64] }, ptr %i.dv, align 8, !dbg !1572 ; 2 uses
  %.fca.0.0.extract63 = extractvalue { [2 x i64] } %i.dw, 0, 0, !dbg !1572 ; 2 uses
  %.fca.0.1.extract64 = extractvalue { [2 x i64] } %i.dw, 0, 1, !dbg !1572 ; 2 uses
  %i.dx = load atomic i64, ptr %i.e acquire, align 8, !dbg !1573
  %.not81 = icmp eq i64 %i.dx, %i.az, !dbg !1574
  br i1 %.not81, label %bb.z, label %._crit_edge, !dbg !1575

bb.z:                                             ; preds = %bb.y
  %i.dy = add i64 %.sroa.03.0123, 1, !dbg !1576   ; 2 uses
  %i.dz = cmpxchg ptr %i.f, i64 %.sroa.03.0123, i64 %i.dy seq_cst monotonic, align 8, !dbg !1577
  %i.ea = extractvalue { i64, i1 } %i.dz, 1, !dbg !1577
  br i1 %i.ea, label %bb.aa, label %._crit_edge, !dbg !1578

bb.aa:                                            ; preds = %bb.z
  %i.eb = inttoptr i64 %.sroa.033.1121 to ptr, !dbg !1579
  %i.ec = inttoptr i64 %.sroa.7.1120 to ptr, !dbg !1579
  %i.ed = and i64 %.sroa.025.1122, %i.dh, !dbg !1580
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ed, !dbg !1581 ; 2 uses
  store volatile ptr %i.eb, ptr %i.ee, align 8, !dbg !1582
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !1582
  store volatile ptr %i.ec, ptr %i.ef, align 8, !dbg !1582
  %i.eg = add i64 %.sroa.025.1122, 1, !dbg !1583  ; 2 uses
  %exitcond157.not = icmp eq i64 %i.dl, %.sroa.0.0.i88, !dbg !1584
  br i1 %exitcond157.not, label %._crit_edge, label %bb.w, !dbg !1556

bb.ab:                                            ; preds = %._crit_edge
  %i.eh = lshr i64 %.sroa.017.0, 1, !dbg !1585    ; 2 uses
  %.not149 = icmp eq i64 %i.eh, 0, !dbg !1586
  br i1 %.not149, label %.loopexit, label %.lr.ph145, !dbg !1587

.lr.ph145:                                        ; preds = %bb.ab
  %.neg = sub i64 %.sroa.025.1.lcssa, %.sroa.017.0
  %i.ei = add i64 %i.av, -1                       ; 2 uses
  br label %bb.ac, !dbg !1587

bb.ac:                                            ; preds = %.lr.ph145, %bb.ac
  %.sroa.051.0143 = phi i64 [ 0, %.lr.ph145 ], [ %i.ej, %bb.ac ] ; 3 uses
  %i.ej = add nuw nsw i64 %.sroa.051.0143, 1, !dbg !1588 ; 2 uses
  %i.ek = add i64 %.neg, %.sroa.051.0143, !dbg !1589
  %.neg83 = xor i64 %.sroa.051.0143, -1, !dbg !1590
  %i.el = add i64 %.sroa.025.1.lcssa, %.neg83, !dbg !1591
  %i.em = and i64 %i.ek, %i.ei, !dbg !1592
  %i.en = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.em, !dbg !1593 ; 3 uses
  %i.eo = load volatile { [2 x i64] }, ptr %i.en, align 8, !dbg !1594 ; 2 uses
  %.fca.0.0.extract67 = extractvalue { [2 x i64] } %i.eo, 0, 0, !dbg !1594
  %.fca.0.1.extract68 = extractvalue { [2 x i64] } %i.eo, 0, 1, !dbg !1594
  %i.ep = inttoptr i64 %.fca.0.0.extract67 to ptr, !dbg !1594
  %i.eq = inttoptr i64 %.fca.0.1.extract68 to ptr, !dbg !1594
  %i.er = and i64 %i.el, %i.ei, !dbg !1595
  %i.es = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.er, !dbg !1596 ; 3 uses
  %i.et = load volatile { [2 x i64] }, ptr %i.es, align 8, !dbg !1597 ; 2 uses
  %.fca.0.0.extract71 = extractvalue { [2 x i64] } %i.et, 0, 0, !dbg !1597
  %.fca.0.1.extract72 = extractvalue { [2 x i64] } %i.et, 0, 1, !dbg !1597
  %i.eu = inttoptr i64 %.fca.0.0.extract71 to ptr, !dbg !1597
  %i.ev = inttoptr i64 %.fca.0.1.extract72 to ptr, !dbg !1597
  store volatile ptr %i.eu, ptr %i.en, align 8, !dbg !1598
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 8, !dbg !1598
  store volatile ptr %i.ev, ptr %i.ew, align 8, !dbg !1598
  store volatile ptr %i.ep, ptr %i.es, align 8, !dbg !1599
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !1599
  store volatile ptr %i.eq, ptr %i.ex, align 8, !dbg !1599
  %exitcond158.not = icmp eq i64 %i.ej, %i.eh, !dbg !1586
  br i1 %exitcond158.not, label %.loopexit, label %bb.ac, !dbg !1587

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %._crit_edge, %bb.s
  %.sroa.7.0 = phi i64 [ %.fca.0.1.extract, %bb.s ], [ %.sroa.7.1.lcssa, %._crit_edge ], [ %.sroa.7.1.lcssa, %bb.ab ], [ %.sroa.7.1.lcssa, %bb.ac ], !dbg !1507 ; 2 uses
  %.sroa.033.0 = phi i64 [ %.fca.0.0.extract, %bb.s ], [ %.sroa.033.1.lcssa, %._crit_edge ], [ %.sroa.033.1.lcssa, %bb.ab ], [ %.sroa.033.1.lcssa, %bb.ac ], !dbg !1507 ; 2 uses
  %.sroa.025.0 = phi i64 [ %i.cn, %bb.s ], [ %.sroa.025.1.lcssa, %._crit_edge ], [ %.sroa.025.1.lcssa, %bb.ab ], [ %.sroa.025.1.lcssa, %bb.ac ], !dbg !1558
  fence release, !dbg !1600
  %i.ey = load ptr, ptr %2, align 8, !dbg !1601, !nonnull !92, !noundef !92
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 264, !dbg !1602
  store atomic i64 %.sroa.025.0, ptr %i.ez release, align 8, !dbg !1603
  %i.fa = inttoptr i64 %.sroa.033.0 to ptr, !dbg !1604
  %i.fb = inttoptr i64 %.sroa.7.0 to ptr, !dbg !1604
  %i.fc = icmp ne i64 %.sroa.033.0, 0
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ne i64 %.sroa.7.0, 0
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1605
  store ptr %i.fa, ptr %i.fe, align 8, !dbg !1605
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1605
  store ptr %i.fb, ptr %i.ff, align 8, !dbg !1605
  store i64 1, ptr %0, align 8, !dbg !1605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1538
  %i.fg = icmp eq ptr %i.y, null, !dbg !1606
  br i1 %i.fg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, label %bb.ad, !dbg !1606

bb.ad:                                            ; preds = %.loopexit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 2072, !dbg !1607 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !1608, !noundef !92 ; 2 uses
  %i.fj = add i64 %i.fi, -1, !dbg !1609
  store i64 %i.fj, ptr %i.fh, align 8, !dbg !1610
  %i.fk = icmp eq i64 %i.fi, 1, !dbg !1611
  br i1 %i.fk, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1611

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 2176, !dbg !1612
  store atomic i64 0, ptr %i.fl release, align 8, !dbg !1613
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 2080, !dbg !1614
  %i.fn = load i64, ptr %i.fm, align 8, !dbg !1615, !noundef !92
  %i.fo = icmp eq i64 %i.fn, 0, !dbg !1616
  br i1 %i.fo, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1616, !prof !134

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.y), !dbg !1617
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1617

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.loopexit, %bb.an
  ret void, !dbg !1618

bb.ag:                                            ; preds = %bb.t, %bb.h
  %i.fp = icmp eq ptr %i.y, null, !dbg !1619
  br i1 %i.fp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, label %bb.ah, !dbg !1619

bb.ah:                                            ; preds = %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 2072, !dbg !1620 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !1621, !noundef !92 ; 2 uses
  %i.fs = add i64 %i.fr, -1, !dbg !1622
  store i64 %i.fs, ptr %i.fq, align 8, !dbg !1623
  %i.ft = icmp eq i64 %i.fr, 1, !dbg !1624
  br i1 %i.ft, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1624

bb.ai:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 2176, !dbg !1625
  store atomic i64 0, ptr %i.fu release, align 8, !dbg !1626
  %i.fv = getelementptr inbounds nuw i8, ptr %i.y, i64 2080, !dbg !1627
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !1628, !noundef !92
  %i.fx = icmp eq i64 %i.fw, 0, !dbg !1629
  br i1 %i.fx, label %bb.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1629, !prof !134

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.y), !dbg !1630
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1630

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !1631
  unreachable, !dbg !1631

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp190, !dbg !1631

bb.am:                                            ; preds = %bb.e
  %i.fz = extractvalue { ptr, ptr } %i.w, 1, !dbg !1465 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1632
  store ptr %i.x, ptr %i.ga, align 8, !dbg !1632
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1632
  store ptr %i.fz, ptr %i.gb, align 8, !dbg !1632
  br label %bb.an, !dbg !1633

bb.an:                                            ; preds = %bb.e, %bb.am
  %storemerge = phi i64 [ 1, %bb.am ], [ 0, %bb.e ], !dbg !1634
  store i64 %storemerge, ptr %0, align 8, !dbg !1634
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1633
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1y_12TaskMetadataEEL_EE3newB1A_() unnamed_addr #1 !dbg !54 !guid !1635 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !1637
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #11, !dbg !1638 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1639
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1639, !prof !134

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #19, !dbg !1640
  unreachable, !dbg !1640

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !1641
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_8InjectorINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1B_12TaskMetadataEEL_EE4pushB1D_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1642 !guid !1742 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  store ptr %1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1772 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 128, !dbg !1773
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1774 ; 4 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8, !dbg !1775
  br label %.outer, !dbg !1776

.outer:                                           ; preds = %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit, %bb.a
  %.sroa.064.0.ph = phi ptr [ %.sroa.064.2, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.066.ph = phi i32 [ %spec.select, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.022.0.ph = phi ptr [ %i.al, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.f, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.z, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.0.0.ph, 1, !dbg !1777
  %i.h = and i64 %i.g, 63, !dbg !1777             ; 2 uses
  %i.i = icmp eq i64 %i.h, 63, !dbg !1778
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !dbg !1778

.lr.ph:                                           ; preds = %.outer, %bb.c
  %.sroa.0.06699 = phi i32 [ %.sroa.0.1, %bb.c ], [ %.sroa.0.066.ph, %.outer ] ; 5 uses
  %i.j = icmp ult i32 %.sroa.0.06699, 7, !dbg !1779
  br i1 %i.j, label %.preheader.i, label %bb.b, !dbg !1779

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.thread71, !dbg !1780

.loopexit.i:                                      ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.06699, 11, !dbg !1781
  br i1 %i.k, label %.loopexit.i.thread, label %bb.c, !dbg !1781

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.l, %.preheader.i ], [ 0, %.lr.ph ]
  %i.l = add nuw nsw i32 %.sroa.0.03.i, 1, !dbg !1782 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !1783
  %.sroa.0.0.highbits.i = lshr i32 %i.l, %.sroa.0.06699, !dbg !1784
  %i.m = icmp eq i32 %.sroa.0.0.highbits.i, 0, !dbg !1784
  br i1 %i.m, label %.preheader.i, label %.loopexit.i.thread, !dbg !1785

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.n = add nuw nsw i32 %.sroa.0.06699, 1, !dbg !1786
  br label %bb.c, !dbg !1787

._crit_edge:                                      ; preds = %bb.c, %.outer
  %.sroa.0.066.lcssa = phi i32 [ %.sroa.0.066.ph, %.outer ], [ %.sroa.0.1, %bb.c ], !dbg !1788 ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.022.0.ph, %.outer ], [ %i.q, %bb.c ], !dbg !1789 ; 4 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.ph, %.outer ], [ %i.p, %bb.c ], !dbg !1790 ; 3 uses
  %.lcssa = phi i64 [ %i.h, %.outer ], [ %i.s, %bb.c ], !dbg !1777 ; 2 uses
  %i.o = icmp eq i64 %.lcssa, 62, !dbg !1791      ; 2 uses
  %.not = icmp eq ptr %.sroa.064.0.ph, null
  %or.cond = select i1 %i.o, i1 %.not, i1 false, !dbg !1791
  br i1 %or.cond, label %bb.d, label %bb.f, !dbg !1791

bb.c:                                             ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.n, %.loopexit.i.thread ], [ %.sroa.0.06699, %.loopexit.i ], !dbg !1788 ; 2 uses
  %i.p = load atomic i64, ptr %i.c acquire, align 128, !dbg !1792 ; 2 uses
  %i.q = load atomic ptr, ptr %i.e acquire, align 8, !dbg !1793
  %i.r = lshr i64 %i.p, 1, !dbg !1777
  %i.s = and i64 %i.r, 63, !dbg !1777             ; 2 uses
  %i.t = icmp eq i64 %i.s, 63, !dbg !1778
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !dbg !1778

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !1794
  %i.u = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #11, !dbg !1795 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !1796
  br i1 %i.v, label %bb.e, label %bb.f, !dbg !1796, !prof !134

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #19
          to label %.noexc55 unwind label %.thread71.thread86, !dbg !1797

.thread71.thread86:                               ; preds = %bb.k, %bb.e
  %lpad.thr_comm87 = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !1798

.noexc55:                                         ; preds = %bb.e
  unreachable, !dbg !1797

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.064.2 = phi ptr [ %.sroa.064.0.ph, %._crit_edge ], [ %i.u, %bb.d ], !dbg !1799 ; 6 uses
  %i.w = add i64 %.sroa.0.0.lcssa, 2, !dbg !1800
  %i.x = cmpxchg weak ptr %i.c, i64 %.sroa.0.0.lcssa, i64 %i.w seq_cst acquire, align 8, !dbg !1801 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !1801
  %i.z = extractvalue { i64, i1 } %i.x, 0, !dbg !1801
  br i1 %i.y, label %bb.g, label %bb.n, !dbg !1802

bb.g:                                             ; preds = %bb.f
end_hunk_0
