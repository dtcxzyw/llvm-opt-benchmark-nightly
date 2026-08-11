inline.NumInlined: 129
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs8_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_7StealerINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1A_12TaskMetadataEEL_EE30steal_batch_with_limit_and_popB1C_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1149
  %i.at = load ptr, ptr %i.as, align 8, !dbg !1155, !noundef !12 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1155
  %i.av = load i64, ptr %i.au, align 8, !dbg !1155, !noundef !12 ; 4 uses
  %i.aw = load ptr, ptr %2, align 8, !dbg !1156, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 264, !dbg !1166
  %i.ay = load atomic i64, ptr %i.ax monotonic, align 8, !dbg !1172 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1174
  %i.az = load atomic i64, ptr %i.e acquire, align 8, !dbg !1176 ; 3 uses
  store i64 %i.az, ptr %i.a, align 8, !dbg !1183
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !1187 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !1189, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !1194
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !1194, !noundef !12
  %i.be = add i64 %i.bd, -1, !dbg !1195
  %i.bf = and i64 %i.be, %i.g, !dbg !1196
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bf, !dbg !1197
  %i.bh = load volatile { [2 x i64] }, ptr %i.bg, align 8, !dbg !1200 ; 2 uses
  %.fca.0.0.extract = extractvalue { [2 x i64] } %i.bh, 0, 0, !dbg !1200 ; 3 uses
  %.fca.0.1.extract = extractvalue { [2 x i64] } %i.bh, 0, 1, !dbg !1200 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1203
  %i.bj = load i8, ptr %i.bi, align 8, !dbg !1203, !range !455, !noundef !12
  %i.bk = trunc nuw i8 %i.bj to i1, !dbg !1203
  br i1 %i.bk, label %bb.v, label %bb.n, !dbg !1205

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !1206
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !1206, !range !455, !noundef !12
  %i.bn = trunc nuw i8 %i.bm to i1, !dbg !1206
  br i1 %i.bn, label %.preheader105, label %.preheader110, !dbg !1207

.preheader110:                                    ; preds = %bb.n
  br i1 %.not.i, label %.loopexit106, label %.lr.ph, !dbg !1208

.lr.ph:                                           ; preds = %.preheader110
  %i.bo = add i64 %i.av, -1
  br label %bb.o, !dbg !1208

.preheader105:                                    ; preds = %bb.n
  br i1 %.not.i, label %.loopexit106, label %.lr.ph119, !dbg !1219

.lr.ph119:                                        ; preds = %.preheader105
  %i.bp = add i64 %i.ay, %.sroa.0.0.i88
  %i.bq = add i64 %i.av, -1
  br label %bb.q, !dbg !1219

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.045.0117 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.p ] ; 2 uses
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !1225 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bs = add nuw nsw i64 %.sroa.045.0117, 1, !dbg !1227 ; 3 uses
  %i.bt = add i64 %i.bs, %i.g, !dbg !1239
  %i.bu = load ptr, ptr %i.br, align 8, !dbg !1242, !noundef !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !1246
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !1246, !noundef !12
  %i.bx = add i64 %i.bw, -1, !dbg !1247
  %i.by = and i64 %i.bx, %i.bt, !dbg !1248
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.by, !dbg !1249
  %i.ca = load volatile { [2 x i64] }, ptr %i.bz, align 8, !dbg !1252 ; 2 uses
  %.fca.0.0.extract55 = extractvalue { [2 x i64] } %i.ca, 0, 0, !dbg !1252
  %.fca.0.1.extract56 = extractvalue { [2 x i64] } %i.ca, 0, 1, !dbg !1252
  %i.cb = inttoptr i64 %.fca.0.0.extract55 to ptr, !dbg !1252
  %i.cc = inttoptr i64 %.fca.0.1.extract56 to ptr, !dbg !1252
  %i.cd = add i64 %.sroa.045.0117, %i.ay, !dbg !1254
  %i.ce = and i64 %i.cd, %i.bo, !dbg !1257
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ce, !dbg !1261 ; 2 uses
  store volatile ptr %i.cb, ptr %i.cf, align 8, !dbg !1264
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !1264
  store volatile ptr %i.cc, ptr %i.cg, align 8, !dbg !1264
  %exitcond.not = icmp eq i64 %i.bs, %.sroa.0.0.i88, !dbg !1267
  br i1 %exitcond.not, label %.loopexit106, label %bb.o, !dbg !1208

bb.q:                                             ; preds = %.lr.ph119, %bb.u
  %.sroa.047.0118 = phi i64 [ 0, %.lr.ph119 ], [ %i.co, %bb.u ] ; 2 uses
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit, !dbg !1271 ; 2 uses

.loopexit106:                                     ; preds = %bb.p, %bb.u, %.preheader110, %.preheader105
  %i.ci = load atomic i64, ptr %i.e acquire, align 8, !dbg !1273
  %.not78 = icmp eq i64 %i.ci, %i.az, !dbg !1278
  br i1 %.not78, label %bb.r, label %bb.t, !dbg !1286

bb.r:                                             ; preds = %.loopexit106
  %i.cj = add i64 %i.g, 1, !dbg !1287
  %i.ck = add i64 %i.cj, %.sroa.0.0.i88, !dbg !1288
  %i.cl = cmpxchg ptr %i.f, i64 %i.g, i64 %i.ck seq_cst monotonic, align 8, !dbg !1290
  %i.cm = extractvalue { i64, i1 } %i.cl, 1, !dbg !1290
  br i1 %i.cm, label %bb.s, label %bb.t, !dbg !1294

bb.s:                                             ; preds = %bb.r
  %i.cn = add i64 %i.ay, %.sroa.0.0.i88, !dbg !1295
  br label %.loopexit, !dbg !1297

bb.t:                                             ; preds = %bb.v, %.loopexit106, %bb.r
  store i64 2, ptr %0, align 8, !dbg !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1299
  br label %bb.ag, !dbg !1094

bb.u:                                             ; preds = %bb.q
  %i.co = add nuw nsw i64 %.sroa.047.0118, 1, !dbg !1300 ; 3 uses
  %i.cp = add i64 %i.co, %i.g, !dbg !1311
  %i.cq = load ptr, ptr %i.ch, align 8, !dbg !1313, !noundef !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !1317
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !1317, !noundef !12
  %i.ct = add i64 %i.cs, -1, !dbg !1318
  %i.cu = and i64 %i.ct, %i.cp, !dbg !1319
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.cq, i64 %i.cu, !dbg !1320
  %i.cw = load volatile { [2 x i64] }, ptr %i.cv, align 8, !dbg !1323 ; 2 uses
  %.fca.0.0.extract59 = extractvalue { [2 x i64] } %i.cw, 0, 0, !dbg !1323
  %.fca.0.1.extract60 = extractvalue { [2 x i64] } %i.cw, 0, 1, !dbg !1323
  %i.cx = inttoptr i64 %.fca.0.0.extract59 to ptr, !dbg !1323
  %i.cy = inttoptr i64 %.fca.0.1.extract60 to ptr, !dbg !1323
  %i.cz = xor i64 %.sroa.047.0118, -1, !dbg !1325
  %i.da = add i64 %i.bp, %i.cz, !dbg !1327
  %i.db = and i64 %i.da, %i.bq, !dbg !1329
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.db, !dbg !1333 ; 2 uses
  store volatile ptr %i.cx, ptr %i.dc, align 8, !dbg !1336
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !1336
  store volatile ptr %i.cy, ptr %i.dd, align 8, !dbg !1336
  %exitcond151.not = icmp eq i64 %i.co, %.sroa.0.0.i88, !dbg !1338
  br i1 %exitcond151.not, label %.loopexit106, label %bb.q, !dbg !1219

bb.v:                                             ; preds = %bb.m
  %i.de = add i64 %i.g, 1, !dbg !1341             ; 2 uses
  %i.df = cmpxchg ptr %i.f, i64 %i.g, i64 %i.de seq_cst monotonic, align 8, !dbg !1343
  %i.dg = extractvalue { i64, i1 } %i.df, 1, !dbg !1343
  br i1 %i.dg, label %.preheader, label %bb.t, !dbg !1346

.preheader:                                       ; preds = %bb.v
  br i1 %.not.i, label %.loopexit, label %.lr.ph125, !dbg !1347

.lr.ph125:                                        ; preds = %.preheader
  %i.dh = add i64 %i.av, -1
  br label %bb.w, !dbg !1347

._crit_edge:                                      ; preds = %bb.aa, %bb.w, %bb.z, %bb.y
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.1120, %bb.y ], [ %.fca.0.1.extract64, %bb.aa ], [ %.sroa.7.1120, %bb.w ], [ %.sroa.7.1120, %bb.z ], !dbg !1354 ; 3 uses
  %.sroa.033.1.lcssa = phi i64 [ %.sroa.033.1121, %bb.y ], [ %.fca.0.0.extract63, %bb.aa ], [ %.sroa.033.1121, %bb.w ], [ %.sroa.033.1121, %bb.z ], !dbg !1354 ; 3 uses
  %.sroa.025.1.lcssa = phi i64 [ %.sroa.025.1122, %bb.y ], [ %i.eg, %bb.aa ], [ %.sroa.025.1122, %bb.w ], [ %.sroa.025.1122, %bb.z ], !dbg !1355 ; 5 uses
  %.sroa.017.0 = phi i64 [ %.sroa.049.0124, %bb.y ], [ %.sroa.0.0.i88, %bb.aa ], [ %.sroa.049.0124, %bb.w ], [ %.sroa.049.0124, %bb.z ], !dbg !1356 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !1357
  %i.dj = load i8, ptr %i.di, align 8, !dbg !1357, !range !455, !noundef !12
  %i.dk = icmp eq i8 %i.dj, 0, !dbg !1360
  br i1 %i.dk, label %bb.ab, label %.loopexit, !dbg !1360

bb.w:                                             ; preds = %.lr.ph125, %bb.aa
  %.sroa.049.0124 = phi i64 [ 0, %.lr.ph125 ], [ %i.dl, %bb.aa ] ; 4 uses
  %.sroa.03.0123 = phi i64 [ %i.de, %.lr.ph125 ], [ %i.dy, %bb.aa ] ; 4 uses
  %.sroa.025.1122 = phi i64 [ %i.ay, %.lr.ph125 ], [ %i.eg, %bb.aa ] ; 5 uses
  %.sroa.033.1121 = phi i64 [ %.fca.0.0.extract, %.lr.ph125 ], [ %.fca.0.0.extract63, %bb.aa ] ; 4 uses
  %.sroa.7.1120 = phi i64 [ %.fca.0.1.extract, %.lr.ph125 ], [ %.fca.0.1.extract64, %bb.aa ] ; 4 uses
  %i.dl = add nuw nsw i64 %.sroa.049.0124, 1, !dbg !1361 ; 2 uses
  fence seq_cst, !dbg !1372
  %i.dm = load atomic i64, ptr %i.z acquire, align 8, !dbg !1375
  %i.dn = sub i64 %i.dm, %.sroa.03.0123, !dbg !1378
  %i.do = icmp slt i64 %i.dn, 1, !dbg !1381
  br i1 %i.do, label %._crit_edge, label %bb.x, !dbg !1381

bb.x:                                             ; preds = %bb.w
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB2m_12TaskMetadataEEL_EEE5derefB2o_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.y unwind label %.loopexit104, !dbg !1382 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !1383, !noundef !12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !1387
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !1387, !noundef !12
  %i.dt = add i64 %i.ds, -1, !dbg !1388
  %i.du = and i64 %i.dt, %.sroa.03.0123, !dbg !1389
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.du, !dbg !1390
  %i.dw = load volatile { [2 x i64] }, ptr %i.dv, align 8, !dbg !1393 ; 2 uses
  %.fca.0.0.extract63 = extractvalue { [2 x i64] } %i.dw, 0, 0, !dbg !1393 ; 2 uses
  %.fca.0.1.extract64 = extractvalue { [2 x i64] } %i.dw, 0, 1, !dbg !1393 ; 2 uses
  %i.dx = load atomic i64, ptr %i.e acquire, align 8, !dbg !1395
  %.not81 = icmp eq i64 %i.dx, %i.az, !dbg !1401
  br i1 %.not81, label %bb.z, label %._crit_edge, !dbg !1406

bb.z:                                             ; preds = %bb.y
  %i.dy = add i64 %.sroa.03.0123, 1, !dbg !1407   ; 2 uses
  %i.dz = cmpxchg ptr %i.f, i64 %.sroa.03.0123, i64 %i.dy seq_cst monotonic, align 8, !dbg !1409
  %i.ea = extractvalue { i64, i1 } %i.dz, 1, !dbg !1409
  br i1 %i.ea, label %bb.aa, label %._crit_edge, !dbg !1412

bb.aa:                                            ; preds = %bb.z
  %i.eb = inttoptr i64 %.sroa.033.1121 to ptr, !dbg !1413
  %i.ec = inttoptr i64 %.sroa.7.1120 to ptr, !dbg !1413
  %i.ed = and i64 %.sroa.025.1122, %i.dh, !dbg !1416
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ed, !dbg !1420 ; 2 uses
  store volatile ptr %i.eb, ptr %i.ee, align 8, !dbg !1423
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !1423
  store volatile ptr %i.ec, ptr %i.ef, align 8, !dbg !1423
  %i.eg = add i64 %.sroa.025.1122, 1, !dbg !1425  ; 2 uses
  %exitcond152.not = icmp eq i64 %i.dl, %.sroa.0.0.i88, !dbg !1427
  br i1 %exitcond152.not, label %._crit_edge, label %bb.w, !dbg !1347

bb.ab:                                            ; preds = %._crit_edge
  %4 = sdiv i64 %.sroa.017.0, 2, !dbg !1430
  %i.eh = icmp sgt i64 %.sroa.017.0, 1, !dbg !1431
  br i1 %i.eh, label %.lr.ph146, label %.loopexit, !dbg !1439

.lr.ph146:                                        ; preds = %bb.ab
  %.neg = sub i64 %.sroa.025.1.lcssa, %.sroa.017.0
  %i.ei = add i64 %i.av, -1                       ; 2 uses
  br label %bb.ac, !dbg !1439

bb.ac:                                            ; preds = %.lr.ph146, %bb.ac
  %.sroa.051.0144 = phi i64 [ 0, %.lr.ph146 ], [ %i.ej, %bb.ac ] ; 3 uses
  %i.ej = add nuw nsw i64 %.sroa.051.0144, 1, !dbg !1440 ; 2 uses
  %i.ek = add i64 %.neg, %.sroa.051.0144, !dbg !1451
  %.neg83 = xor i64 %.sroa.051.0144, -1, !dbg !1454
  %i.el = add i64 %.sroa.025.1.lcssa, %.neg83, !dbg !1456
  %i.em = and i64 %i.ek, %i.ei, !dbg !1458
  %i.en = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.em, !dbg !1463 ; 3 uses
  %i.eo = load volatile { [2 x i64] }, ptr %i.en, align 8, !dbg !1466 ; 2 uses
  %.fca.0.0.extract67 = extractvalue { [2 x i64] } %i.eo, 0, 0, !dbg !1466
  %.fca.0.1.extract68 = extractvalue { [2 x i64] } %i.eo, 0, 1, !dbg !1466
  %i.ep = inttoptr i64 %.fca.0.0.extract67 to ptr, !dbg !1466
  %i.eq = inttoptr i64 %.fca.0.1.extract68 to ptr, !dbg !1466
  %i.er = and i64 %i.el, %i.ei, !dbg !1468
  %i.es = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.er, !dbg !1473 ; 3 uses
  %i.et = load volatile { [2 x i64] }, ptr %i.es, align 8, !dbg !1476 ; 2 uses
  %.fca.0.0.extract71 = extractvalue { [2 x i64] } %i.et, 0, 0, !dbg !1476
  %.fca.0.1.extract72 = extractvalue { [2 x i64] } %i.et, 0, 1, !dbg !1476
  %i.eu = inttoptr i64 %.fca.0.0.extract71 to ptr, !dbg !1476
  %i.ev = inttoptr i64 %.fca.0.1.extract72 to ptr, !dbg !1476
  store volatile ptr %i.eu, ptr %i.en, align 8, !dbg !1478
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 8, !dbg !1478
  store volatile ptr %i.ev, ptr %i.ew, align 8, !dbg !1478
  store volatile ptr %i.ep, ptr %i.es, align 8, !dbg !1483
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !1483
  store volatile ptr %i.eq, ptr %i.ex, align 8, !dbg !1483
  %exitcond153.not = icmp eq i64 %i.ej, %4, !dbg !1431
  br i1 %exitcond153.not, label %.loopexit, label %bb.ac, !dbg !1439

.loopexit:                                        ; preds = %bb.ac, %.preheader, %bb.ab, %._crit_edge, %bb.s
  %.sroa.7.0 = phi i64 [ %.fca.0.1.extract, %bb.s ], [ %.sroa.7.1.lcssa, %._crit_edge ], [ %.sroa.7.1.lcssa, %bb.ab ], [ %.fca.0.1.extract, %.preheader ], [ %.sroa.7.1.lcssa, %bb.ac ], !dbg !1200 ; 2 uses
  %.sroa.033.0 = phi i64 [ %.fca.0.0.extract, %bb.s ], [ %.sroa.033.1.lcssa, %._crit_edge ], [ %.sroa.033.1.lcssa, %bb.ab ], [ %.fca.0.0.extract, %.preheader ], [ %.sroa.033.1.lcssa, %bb.ac ], !dbg !1200 ; 2 uses
  %.sroa.025.0 = phi i64 [ %i.cn, %bb.s ], [ %.sroa.025.1.lcssa, %._crit_edge ], [ %.sroa.025.1.lcssa, %bb.ab ], [ %i.ay, %.preheader ], [ %.sroa.025.1.lcssa, %bb.ac ], !dbg !1355
  fence release, !dbg !1487
  %i.ey = load ptr, ptr %2, align 8, !dbg !1489, !nonnull !12, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 264, !dbg !1495
  store atomic i64 %.sroa.025.0, ptr %i.ez release, align 8, !dbg !1501
  %i.fa = inttoptr i64 %.sroa.033.0 to ptr, !dbg !1503
  %i.fb = inttoptr i64 %.sroa.7.0 to ptr, !dbg !1503
  %i.fc = icmp ne i64 %.sroa.033.0, 0
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ne i64 %.sroa.7.0, 0
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1504
  store ptr %i.fa, ptr %i.fe, align 8, !dbg !1504
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1504
  store ptr %i.fb, ptr %i.ff, align 8, !dbg !1504
  store i64 1, ptr %0, align 8, !dbg !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1299
  %i.fg = icmp eq ptr %i.y, null, !dbg !1505
  br i1 %i.fg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, label %bb.ad, !dbg !1505

bb.ad:                                            ; preds = %.loopexit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 2072, !dbg !1509 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !1513, !noundef !12 ; 2 uses
  %i.fj = add i64 %i.fi, -1, !dbg !1514
  store i64 %i.fj, ptr %i.fh, align 8, !dbg !1515
  %i.fk = icmp eq i64 %i.fi, 1, !dbg !1519
  br i1 %i.fk, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1519

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 2176, !dbg !1520
  store atomic i64 0, ptr %i.fl release, align 8, !dbg !1525
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 2080, !dbg !1527
  %i.fn = load i64, ptr %i.fm, align 8, !dbg !1530, !noundef !12
  %i.fo = icmp eq i64 %i.fn, 0, !dbg !1531
  br i1 %i.fo, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1531, !prof !110

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.y), !dbg !1532
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1532

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.loopexit, %bb.an
  ret void, !dbg !1533

bb.ag:                                            ; preds = %bb.t, %bb.h
  %i.fp = icmp eq ptr %i.y, null, !dbg !1534
  br i1 %i.fp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, label %bb.ah, !dbg !1534

bb.ah:                                            ; preds = %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 2072, !dbg !1538 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !1542, !noundef !12 ; 2 uses
  %i.fs = add i64 %i.fr, -1, !dbg !1543
  store i64 %i.fs, ptr %i.fq, align 8, !dbg !1544
  %i.ft = icmp eq i64 %i.fr, 1, !dbg !1548
  br i1 %i.ft, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1548

bb.ai:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 2176, !dbg !1549
  store atomic i64 0, ptr %i.fu release, align 8, !dbg !1554
  %i.fv = getelementptr inbounds nuw i8, ptr %i.y, i64 2080, !dbg !1556
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !1559, !noundef !12
  %i.fx = icmp eq i64 %i.fw, 0, !dbg !1560
  br i1 %i.fx, label %bb.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1560, !prof !110

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.y), !dbg !1561
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1561

bb.ak:                                            ; preds = %.loopexit.split-lp
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !1562
  unreachable, !dbg !1562

bb.al:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !1562

bb.am:                                            ; preds = %bb.e
  %i.fz = extractvalue { ptr, ptr } %i.w, 1, !dbg !1068 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1563
  store ptr %i.x, ptr %i.ga, align 8, !dbg !1563
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1563
  store ptr %i.fz, ptr %i.gb, align 8, !dbg !1563
  br label %bb.an, !dbg !1565

bb.an:                                            ; preds = %bb.e, %bb.am
  %storemerge = phi i64 [ 1, %bb.am ], [ 0, %bb.e ], !dbg !1567
  store i64 %storemerge, ptr %0, align 8, !dbg !1567
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECsidoPH4Qgqxm_12polars_async.exit, !dbg !1565
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1y_12TaskMetadataEEL_EE3newB1A_() unnamed_addr #1 !dbg !1568 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !1570
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #11, !dbg !1573 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1574
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1574, !prof !110

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #19, !dbg !1576
  unreachable, !dbg !1576

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !1577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_8InjectorINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8RunnableNtB1B_12TaskMetadataEEL_EE4pushB1D_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1578 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  store ptr %1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1580 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 128, !dbg !1588
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1590 ; 4 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8, !dbg !1598
  br label %.outer, !dbg !1601

.outer:                                           ; preds = %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit, %bb.a
  %.sroa.064.0.ph = phi ptr [ %.sroa.064.2, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.066.ph = phi i32 [ %spec.select, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.022.0.ph = phi ptr [ %i.al, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.f, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.z, %_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.0.0.ph, 1, !dbg !1604
  %i.h = and i64 %i.g, 63, !dbg !1604             ; 2 uses
  %i.i = icmp eq i64 %i.h, 63, !dbg !1605
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !dbg !1605

.lr.ph:                                           ; preds = %.outer, %bb.d
  %.sroa.0.06699 = phi i32 [ %.sroa.0.1, %bb.d ], [ %.sroa.0.066.ph, %.outer ] ; 5 uses
  %i.j = icmp ult i32 %.sroa.0.06699, 7, !dbg !1607
  br i1 %i.j, label %.preheader.i, label %bb.b, !dbg !1607

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.thread71, !dbg !1613

.loopexit.i:                                      ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.06699, 11, !dbg !1614
  br i1 %i.k, label %.loopexit.i.thread, label %bb.d, !dbg !1614

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.l, %.preheader.i ], [ 0, %.lr.ph ]
  %i.l = add nuw nsw i32 %.sroa.0.03.i, 1, !dbg !1615 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !1634
  %.sroa.0.0.highbits.i = lshr i32 %i.l, %.sroa.0.06699, !dbg !1645
  %i.m = icmp eq i32 %.sroa.0.0.highbits.i, 0, !dbg !1645
  br i1 %i.m, label %.preheader.i, label %.loopexit.i.thread, !dbg !1649

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.n = add nuw nsw i32 %.sroa.0.06699, 1, !dbg !1650
  br label %bb.d, !dbg !1651

._crit_edge:                                      ; preds = %bb.d, %.outer
  %.sroa.0.066.lcssa = phi i32 [ %.sroa.0.066.ph, %.outer ], [ %.sroa.0.1, %bb.d ], !dbg !1652 ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.022.0.ph, %.outer ], [ %i.q, %bb.d ], !dbg !1653 ; 4 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.ph, %.outer ], [ %i.p, %bb.d ], !dbg !1655 ; 3 uses
  %.lcssa = phi i64 [ %i.h, %.outer ], [ %i.s, %bb.d ], !dbg !1604 ; 2 uses
end_hunk_0
