inline.NumInlined: 3543
inline.NumDeleted: 1197
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodinguEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  store i64 %i.s, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1166, !noalias !1150
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1166 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1166, !noalias !1150
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1166 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1166, !noalias !1150
  %i.v = icmp eq i64 %i.e, 0, !dbg !1169
  br i1 %i.v, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1169

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !dbg !1176, !alias.scope !1181, !noalias !1182, !nonnull !13, !noundef !13 ; 2 uses
  %.val545 = load <16 x i8>, ptr %i.w, align 16, !dbg !1183
  %i.x = icmp sgt <16 x i8> %.val545, splat (i8 -1), !dbg !1187
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !1194
  %i.z = load i64, ptr %2, align 8, !alias.scope !1195, !noalias !1200, !noundef !13
  br label %.preheader, !dbg !1169

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %i.w, %.preheader.lr.ph ], [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.e, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.y, %.preheader.lr.ph ], [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1206
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1216

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.aa, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ad, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !1217 ; 3 uses
  %.val46 = load <16 x i8>, ptr %i.aa, align 16, !dbg !1220
  %i.ab = icmp sgt <16 x i8> %.val46, splat (i8 -1), !dbg !1223
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !1230 ; 2 uses
  %i.ad = add i64 %.sroa.5.156, 16, !dbg !1231    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ac, 0, !dbg !1206
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1216

._crit_edge64:                                    ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.f
  %i.ae = sub i64 %i.u, %i.e, !dbg !1232
  store i64 %i.ae, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1232, !noalias !1150
  store i64 %i.e, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1233, !noalias !1150
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.g, !dbg !1234, !noalias !1254

bb.g:                                             ; preds = %._crit_edge64
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #43, !dbg !1255, !noalias !1254
  unreachable, !dbg !1255

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !1256), !dbg !1163
  call void @llvm.experimental.noalias.scope.decl(metadata !1259), !dbg !1262, !noalias !1254
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1265, !alias.scope !1271, !noalias !1254 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1265, !alias.scope !1271, !noalias !1254, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1272), !dbg !1265, !noalias !1254
  %i.ag = icmp eq i64 %.val1.i.i, 0, !dbg !1275
  br i1 %i.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1275

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ah = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1280, !alias.scope !1281, !noalias !1254, !noundef !13
  %i.ai = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1280, !alias.scope !1281, !noalias !1254, !noundef !13 ; 5 uses
  %i.aj = add i64 %.val1.i.i, 1, !dbg !1282
  %i.ak = mul nuw i64 %i.ah, %i.aj, !dbg !1289    ; 2 uses
  %i.al = add i64 %i.ai, -1, !dbg !1298
  %i.am = add i64 %i.al, %i.ak, !dbg !1299        ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.ak, !dbg !1299
  call void @llvm.assume(i1 %i.an), !dbg !1302, !noalias !1254
  %i.ao = sub i64 0, %i.ai, !dbg !1305
  %i.ap = and i64 %i.am, %i.ao, !dbg !1306        ; 3 uses
  %i.aq = add i64 %.val1.i.i, 17, !dbg !1307
  %i.ar = add i64 %i.aq, %i.ap, !dbg !1309        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !1309
  %i.at = sub nuw i64 -9223372036854775808, %i.ai
  %i.au = icmp ule i64 %i.ar, %i.at
  call void @llvm.assume(i1 %i.as), !dbg !1311, !noalias !1254
  call void @llvm.assume(i1 %i.au), !dbg !1311, !noalias !1254
  %i.av = icmp ne i64 %i.ai, 0, !dbg !1314
  call void @llvm.assume(i1 %i.av), !dbg !1318, !noalias !1254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1254
  %i.aw = icmp eq i64 %i.ar, 0, !dbg !1319
  br i1 %i.aw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.h, !dbg !1319

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ax = sub nsw i64 0, %i.ap, !dbg !1329
  %i.ay = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ax, !dbg !1333
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #40, !dbg !1334, !noalias !1339
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1340

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1163, !noalias !1150
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1164

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1341 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !1341 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.aa, %.noexc4 ], !dbg !1341
  %i.az = add i16 %.sroa.13.1.lcssa, -1, !dbg !1342
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1349
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !1350
  %i.bc = and i16 %i.az, %.sroa.13.1.lcssa, !dbg !1351
  %i.bd = add i64 %.sroa.5.1.lcssa, %i.bb, !dbg !1355 ; 2 uses
  %i.be = add i64 %.sroa.9.061, -1, !dbg !1356    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358), !dbg !1359
  %i.bf = load ptr, ptr %0, align 8, !dbg !1361, !alias.scope !1358, !noalias !1369, !nonnull !13, !noundef !13
  %i.bg = sub nsw i64 0, %i.bd, !dbg !1370
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg, !dbg !1375
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4, !dbg !1376
  %.val2.i = load i32, ptr %i.bi, align 4, !dbg !1382, !alias.scope !1383, !noalias !1386, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390), !dbg !1391, !noalias !1254
  %i.bj = zext i32 %.val2.i to i64, !dbg !1397
  %i.bk = xor i64 %i.z, %i.bj, !dbg !1403
  %i.bl = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !1404, !noalias !1405, !noundef !13
  %i.bm = zext i64 %i.bk to i128, !dbg !1408
  %i.bn = zext i64 %i.bl to i128, !dbg !1410
  %i.bo = mul nuw i128 %i.bm, %i.bn, !dbg !1411   ; 2 uses
  %i.bp = lshr i128 %i.bo, 64, !dbg !1413
  %.masked.i.i.i = and i128 %i.bo, 18446744073709551615, !dbg !1414
  %i.bq = xor i128 %.masked.i.i.i, %i.bp, !dbg !1414
  %i.br = mul nuw nsw i128 %i.bq, 2611923443488327891, !dbg !1416 ; 2 uses
  %i.bs = lshr i128 %i.br, 64, !dbg !1418
  %i.bt = xor i128 %i.bs, %i.br, !dbg !1419
  %i.bu = trunc i128 %i.bt to i64, !dbg !1419     ; 2 uses
  %.sroa.0.07.i = and i64 %i.s, %i.bu, !dbg !1420 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07.i, !dbg !1426
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bv, align 1, !dbg !1432, !noalias !1437
  %i.bw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1440
  %i.bx = bitcast <16 x i1> %i.bw to i16, !dbg !1440 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bx, 0, !dbg !1448
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1452, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ], !dbg !1420
  %.lcssa.i = phi i16 [ %i.bx, %._crit_edge ], [ %i.co, %.lr.ph.i ], !dbg !1440
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1454
  %i.bz = zext nneg i16 %i.by to i64, !dbg !1459
  %i.ca = add i64 %.sroa.0.0.lcssa.i, %i.bz, !dbg !1460
  %i.cb = and i64 %i.ca, %i.s, !dbg !1460         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cb, !dbg !1462
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !1472, !noundef !13
  %i.ce = icmp sgt i8 %i.cd, -1, !dbg !1473
  br i1 %i.ce, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1473, !prof !307

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.p, align 16, !dbg !1476
  %i.cf = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1479
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !1479 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cg, 0, !dbg !1484
  %i.ch = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cg, i1 true), !dbg !1488
  %i.ci = zext nneg i16 %i.ch to i64, !dbg !1488
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1489
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1492

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cj = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ck = add i64 %i.cj, 16, !dbg !1493           ; 2 uses
  %i.cl = add i64 %i.ck, %.sroa.0.010.i, !dbg !1496
  %.sroa.0.0.i14 = and i64 %i.cl, %i.s, !dbg !1420 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0.i14, !dbg !1426
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cm, align 1, !dbg !1432, !noalias !1437
  %i.cn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1440
  %i.co = bitcast <16 x i1> %i.cn to i16, !dbg !1440 ; 2 uses
  %.not.i.i = icmp eq i16 %i.co, 0, !dbg !1448
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1452, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ci, %bb.i ], [ %i.cb, %._crit_edge.i ] ; 3 uses
  %i.cp = lshr i64 %i.bu, 57, !dbg !1498
  %i.cq = trunc nuw nsw i64 %i.cp to i8, !dbg !1505 ; 2 uses
  %i.cr = add i64 %.sroa.0.0.i5.i, -16, !dbg !1507
  %i.cs = and i64 %i.cr, %i.s, !dbg !1512
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0.i5.i, !dbg !1513
  store i8 %i.cq, ptr %i.ct, align 1, !dbg !1519, !noalias !1254
  %i.cu = getelementptr i8, ptr %i.p, i64 %i.cs, !dbg !1520
  %i.cv = getelementptr i8, ptr %i.cu, i64 16, !dbg !1520
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !1524, !noalias !1254
  %i.cw = load ptr, ptr %0, align 8, !dbg !1525, !alias.scope !1181, !noalias !1182, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bd, -1, !dbg !1531
  %.neg61.i.i = shl i64 %.neg.i.i, 2, !dbg !1531
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %.neg61.i.i, !dbg !1533
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1536
  %.neg63.i.i = shl i64 %.neg62.i.i, 2, !dbg !1536
  %i.cy = getelementptr inbounds i8, ptr %i.p, i64 %.neg63.i.i, !dbg !1539
  %i.cz = load i32, ptr %i.cx, align 1, !dbg !1542, !noalias !1254
  store i32 %i.cz, ptr %i.cy, align 1, !dbg !1542, !noalias !1254
  %i.da = icmp eq i64 %i.be, 0, !dbg !1169
  br i1 %i.da, label %._crit_edge64, label %.preheader, !dbg !1169

bb.j:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %0, align 8, !dbg !1545 ; 10 uses
  %.not6.i = icmp eq i64 %i.k, 0, !dbg !1548
  br i1 %.not6.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread97, label %.lr.ph.i15, !dbg !1548

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread97: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val11, i64 16, !dbg !1564
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %.val11, i64 %i.k, i1 false), !dbg !1569
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !1573

.lr.ph.i15:                                       ; preds = %bb.j
  %i.dc = lshr i64 %i.k, 4, !dbg !1581
  %i.dd = and i64 %i.k, 15, !dbg !1597
  %.not10.i.i.i = icmp ne i64 %i.dd, 0, !dbg !1599
  %i.de = zext i1 %.not10.i.i.i to i64, !dbg !1599
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.dc, %i.de, !dbg !1599 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1548
  %i.df = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1548
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i15.new, !dbg !1548

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1548
  br label %bb.k, !dbg !1548

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1548
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader, !dbg !1548

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.do, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1548
  tail call void @llvm.assume(i1 %lcmp.mod134), !dbg !1548
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1601 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.dg, align 16, !dbg !1605
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1608
  %i.dh = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1616
  %i.di = or <2 x i64> %i.dh, splat (i64 -9187201950435737472), !dbg !1616
  store <2 x i64> %i.di, ptr %i.dg, align 16, !dbg !1620
  br label %._crit_edge.i17, !dbg !1573

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !1573
  %.111 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !1573
  %i.dj = getelementptr inbounds nuw i8, ptr %.val11, i64 %., !dbg !1564
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr nonnull align 1 %.val11, i64 %.111, i1 false), !dbg !1569
  %i.dk = load i64, ptr %2, align 8
  br label %bb.l, !dbg !1573

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.do, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1601 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dl, align 16, !dbg !1605
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1608
  %i.dm = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1616
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472), !dbg !1616
  store <2 x i64> %i.dn, ptr %i.dl, align 16, !dbg !1620
  %i.do = add i64 %.sroa.01.08.i, 32, !dbg !1626  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1601
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16, !dbg !1601 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dq, align 16, !dbg !1605
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1608
  %i.dr = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1616
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472), !dbg !1616
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !dbg !1620
  %niter.next.1 = add i64 %niter, 2, !dbg !1548   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1548
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k, !dbg !1548

bb.l:                                             ; preds = %._crit_edge.i17, %bb.s
  %i.dt = phi ptr [ %.val11, %._crit_edge.i17 ], [ %i.gm, %bb.s ], !dbg !1630 ; 4 uses
  %.sroa.04.0.i54 = phi i64 [ 0, %._crit_edge.i17 ], [ %i.du, %bb.s ] ; 10 uses
  %i.du = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1634
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sroa.04.0.i54, !dbg !1640
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !1643, !noalias !1650, !noundef !13
  %.not.i2 = icmp eq i8 %i.dw, -128, !dbg !1643
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !1653

bb.m:                                             ; preds = %bb.l
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1634
  %.neg11.i = shl i64 %.neg.i, 2, !dbg !1654
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %.neg11.i, !dbg !1658 ; 3 uses
  %i.dy = sub nsw i64 0, %.sroa.04.0.i54
  br label %bb.n, !dbg !1661

bb.n:                                             ; preds = %bb.m, %bb.t
  %i.dz = phi ptr [ %i.dt, %bb.m ], [ %.pre, %bb.t ], !dbg !1663 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667), !dbg !1670
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.dy, !dbg !1671
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4, !dbg !1674
  %.val2.i19 = load i32, ptr %i.eb, align 4, !dbg !1678, !alias.scope !1679, !noalias !1682, !noundef !13
  %i.ec = zext i32 %.val2.i19 to i64, !dbg !1687
  %i.ed = xor i64 %i.dk, %i.ec, !dbg !1693
  %i.ee = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !1694, !noalias !1695, !noundef !13
  %i.ef = zext i64 %i.ed to i128, !dbg !1701
  %i.eg = zext i64 %i.ee to i128, !dbg !1703
  %i.eh = mul nuw i128 %i.ef, %i.eg, !dbg !1704   ; 2 uses
  %i.ei = lshr i128 %i.eh, 64, !dbg !1706
  %.masked.i.i.i20 = and i128 %i.eh, 18446744073709551615, !dbg !1707
  %i.ej = xor i128 %.masked.i.i.i20, %i.ei, !dbg !1707
  %i.ek = mul nuw nsw i128 %i.ej, 2611923443488327891, !dbg !1709 ; 2 uses
  %i.el = lshr i128 %i.ek, 64, !dbg !1711
  %i.em = xor i128 %i.el, %i.ek, !dbg !1712
  %i.en = trunc i128 %i.em to i64, !dbg !1712     ; 3 uses
  %.val9 = load i64, ptr %i.h, align 8, !dbg !1713, !noundef !13 ; 6 uses
  %.sroa.0.07.i21 = and i64 %.val9, %i.en, !dbg !1715 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.07.i21, !dbg !1717
  %.sroa.0.0.copyload.i68.i22 = load <16 x i8>, ptr %i.eo, align 1, !dbg !1720, !noalias !1724
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i22, zeroinitializer, !dbg !1727
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !1727 ; 2 uses
  %.not.i9.i23 = icmp eq i16 %i.eq, 0, !dbg !1731
  br i1 %.not.i9.i23, label %.lr.ph.i30, label %._crit_edge.i24, !dbg !1733, !prof !1453

._crit_edge.i24:                                  ; preds = %.lr.ph.i30, %bb.n
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.07.i21, %bb.n ], [ %.sroa.0.0.i32, %.lr.ph.i30 ], !dbg !1715
  %.lcssa.i26 = phi i16 [ %i.eq, %bb.n ], [ %i.fh, %.lr.ph.i30 ], !dbg !1727
  %i.er = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i26, i1 true), !dbg !1734
  %i.es = zext nneg i16 %i.er to i64, !dbg !1737
  %i.et = add i64 %.sroa.0.0.lcssa.i25, %i.es, !dbg !1738
  %i.eu = and i64 %i.et, %.val9, !dbg !1738       ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eu, !dbg !1739
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !1744, !noundef !13
  %i.ex = icmp sgt i8 %i.ew, -1, !dbg !1745
  br i1 %i.ex, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !dbg !1745, !prof !307

bb.o:                                             ; preds = %._crit_edge.i24
  %.val2.i.i28 = load <16 x i8>, ptr %i.dz, align 16, !dbg !1747
  %i.ey = icmp slt <16 x i8> %.val2.i.i28, zeroinitializer, !dbg !1749
  %i.ez = bitcast <16 x i1> %i.ey to i16, !dbg !1749 ; 2 uses
  %.not.i6.i29 = icmp ne i16 %i.ez, 0, !dbg !1752
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true), !dbg !1754
  %i.fb = zext nneg i16 %i.fa to i64, !dbg !1754
  tail call void @llvm.assume(i1 %.not.i6.i29), !dbg !1755
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !dbg !1757

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30
  %.sroa.0.010.i31 = phi i64 [ %.sroa.0.0.i32, %.lr.ph.i30 ], [ %.sroa.0.07.i21, %bb.n ]
  %i.fc = phi i64 [ %i.fd, %.lr.ph.i30 ], [ 0, %bb.n ]
  %i.fd = add i64 %i.fc, 16, !dbg !1758           ; 2 uses
  %i.fe = add i64 %i.fd, %.sroa.0.010.i31, !dbg !1760
  %.sroa.0.0.i32 = and i64 %i.fe, %.val9, !dbg !1715 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.0.i32, !dbg !1717
  %.sroa.0.0.copyload.i6.i33 = load <16 x i8>, ptr %i.ff, align 1, !dbg !1720, !noalias !1724
  %i.fg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i33, zeroinitializer, !dbg !1727
  %i.fh = bitcast <16 x i1> %i.fg to i16, !dbg !1727 ; 2 uses
  %.not.i.i34 = icmp eq i16 %i.fh, 0, !dbg !1731
  br i1 %.not.i.i34, label %.lr.ph.i30, label %._crit_edge.i24, !dbg !1733, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35: ; preds = %bb.o, %._crit_edge.i24
  %.sroa.0.0.i5.i27 = phi i64 [ %i.fb, %bb.o ], [ %i.eu, %._crit_edge.i24 ] ; 4 uses
  %i.fi = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i21, !dbg !1761
  %i.fj = sub i64 %.sroa.0.0.i5.i27, %.sroa.0.07.i21, !dbg !1772
  %i.fk = xor i64 %i.fj, %i.fi, !dbg !1776
  %.unshifted.i = and i64 %i.fk, %.val9, !dbg !1776
  %i.fl = icmp ult i64 %.unshifted.i, 16, !dbg !1776
  br i1 %i.fl, label %bb.p, label %bb.q, !dbg !1777, !prof !341

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %i.fm = lshr i64 %i.en, 57, !dbg !1780
  %i.fn = trunc nuw nsw i64 %i.fm to i8, !dbg !1785 ; 2 uses
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !1787
  %i.fp = and i64 %.val9, %i.fo, !dbg !1791
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.04.0.i54, !dbg !1792
  store i8 %i.fn, ptr %i.fq, align 1, !dbg !1797, !noalias !1650
  %i.fr = load ptr, ptr %0, align 8, !dbg !1798, !noalias !1650, !nonnull !13, !noundef !13 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fp, !dbg !1800
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !1800
  store i8 %i.fn, ptr %i.ft, align 1, !dbg !1803, !noalias !1650
  br label %bb.s, !dbg !1804

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %.neg12.i = xor i64 %.sroa.0.0.i5.i27, -1, !dbg !1807
  %.neg13.i = shl i64 %.neg12.i, 2, !dbg !1807
  %i.fu = getelementptr inbounds i8, ptr %i.dz, i64 %.neg13.i, !dbg !1810 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.0.i5.i27, !dbg !1813 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !1820, !noalias !1650, !noundef !13
  %i.fx = lshr i64 %i.en, 57, !dbg !1821
  %i.fy = trunc nuw nsw i64 %i.fx to i8, !dbg !1826 ; 2 uses
  %i.fz = add i64 %.sroa.0.0.i5.i27, -16, !dbg !1828
  %i.ga = and i64 %i.fz, %.val9, !dbg !1832
  store i8 %i.fy, ptr %i.fv, align 1, !dbg !1833, !noalias !1650
  %i.gb = load ptr, ptr %0, align 8, !dbg !1835, !noalias !1650, !nonnull !13, !noundef !13 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.ga, !dbg !1838
  %i.gd = getelementptr i8, ptr %i.gc, i64 16, !dbg !1838
  store i8 %i.fy, ptr %i.gd, align 1, !dbg !1841, !noalias !1650
  %i.ge = icmp eq i8 %i.fw, -1, !dbg !1842
  br i1 %i.ge, label %bb.r, label %bb.t, !dbg !1842

bb.r:                                             ; preds = %bb.q
  %i.gf = add i64 %.sroa.04.0.i54, -16, !dbg !1844
  %i.gg = load i64, ptr %i.h, align 8, !dbg !1848, !noalias !1650, !noundef !13
  %i.gh = and i64 %i.gg, %i.gf, !dbg !1849
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.04.0.i54, !dbg !1850
  store i8 -1, ptr %i.gi, align 1, !dbg !1856, !noalias !1650
  %i.gj = getelementptr i8, ptr %i.gb, i64 %i.gh, !dbg !1857
  %i.gk = getelementptr i8, ptr %i.gj, i64 16, !dbg !1857
  store i8 -1, ptr %i.gk, align 1, !dbg !1861, !noalias !1650
  %i.gl = load i32, ptr %i.dx, align 1, !dbg !1862, !noalias !1650
  store i32 %i.gl, ptr %i.fu, align 1, !dbg !1862, !noalias !1650
  br label %bb.s, !dbg !1865

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.l
  %i.gm = phi ptr [ %i.gb, %bb.r ], [ %i.fr, %bb.p ], [ %i.dt, %bb.l ]
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.i, !dbg !1867
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %bb.l, !dbg !1573

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1870), !dbg !1873, !noalias !1650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891), !dbg !1873, !noalias !1650
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.dx, align 1, !dbg !1893, !alias.scope !1870, !noalias !1896
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.fu, align 1, !dbg !1897, !alias.scope !1891, !noalias !1899
  store i32 %.sroa.02.0.copyload.i.i.i, ptr %i.dx, align 1, !dbg !1900, !alias.scope !1870, !noalias !1896
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.fu, align 1, !dbg !1902, !alias.scope !1891, !noalias !1899
  %.pre = load ptr, ptr %0, align 8, !dbg !1663, !alias.scope !1667, !noalias !1903
  br label %bb.n, !dbg !1904

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.s
  %.pre75 = load i64, ptr %i.h, align 8, !dbg !1905, !noalias !1650 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBU_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1957, !noalias !1948
  store ptr %i.d, ptr %i.c, align 8, !dbg !1963, !noalias !1948
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1963 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1963 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1963 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1963 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1963 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1963 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1963, !noalias !1948
  %i.x = load i64, ptr %i.e, align 8, !dbg !1964, !alias.scope !1966, !noalias !1967, !noundef !13 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1968
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1968

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1970, !alias.scope !1966, !noalias !1967, !nonnull !13, !noundef !13 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1972
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1974
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1978
  br label %.preheader, !dbg !1968

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1979
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1983

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1984 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1986
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1988
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1992 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1993    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1979
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1983

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1994, !alias.scope !1966, !noalias !1967
  br label %._crit_edge64, !dbg !1994

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1994 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1995
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1995, !noalias !1948
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1996, !noalias !1948
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.h, !dbg !1997, !noalias !1960

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #43, !dbg !2003, !noalias !1960
  unreachable, !dbg !2003

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !2004), !dbg !1958
  call void @llvm.experimental.noalias.scope.decl(metadata !2007), !dbg !2010, !noalias !1960
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2012, !alias.scope !2014, !noalias !1960 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2012, !alias.scope !2014, !noalias !1960, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2015), !dbg !2012, !noalias !1960
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !2018
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2018

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2020, !alias.scope !2021, !noalias !1960, !noundef !13
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2020, !alias.scope !2021, !noalias !1960, !noundef !13 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !2022
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !2026    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !2030
  %i.ap = add i64 %i.ao, %i.an, !dbg !2031        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !2031
  call void @llvm.assume(i1 %i.aq), !dbg !2033, !noalias !1960
  %i.ar = sub i64 0, %i.al, !dbg !2035
  %i.as = and i64 %i.ap, %i.ar, !dbg !2036        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !2037
  %i.au = add i64 %i.at, %i.as, !dbg !2038        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !2038
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !2040, !noalias !1960
  call void @llvm.assume(i1 %i.ax), !dbg !2040, !noalias !1960
  %i.ay = icmp ne i64 %i.al, 0, !dbg !2042
  call void @llvm.assume(i1 %i.ay), !dbg !2044, !noalias !1960
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1960
  %i.az = icmp eq i64 %i.au, 0, !dbg !2045
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !2045

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !2047
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !2049
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #40, !dbg !2050, !noalias !2053
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !2054

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1958, !noalias !1948
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !1959

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2055 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2055 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2055
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !2056
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2060
  %i.be = zext nneg i16 %i.bd to i64, !dbg !2061
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !2062
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !2064 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !2065    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !2066, !alias.scope !2073, !noalias !2076, !nonnull !13, !noundef !13
  %i.bj = sub nsw i64 0, %i.bg, !dbg !2078
  %i.bk = getelementptr inbounds [40 x i8], ptr %i.bi, i64 %i.bj, !dbg !2083
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -40, !dbg !2084
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.f, !dbg !2090 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !2095 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2098
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !2101, !noalias !2105
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2108
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !2108 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !2112
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2114, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2095
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.cg, %.lr.ph.i ], !dbg !2108
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2115
  %i.br = zext nneg i16 %i.bq to i64, !dbg !2118
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !2119
  %i.bt = and i64 %i.bs, %i.t, !dbg !2119         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !2120
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !2125, !noundef !13
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !2126
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2126, !prof !307

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2128
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2130
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !2130 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !2133
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !2135
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !2135
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2136
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2138

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !2139           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !2141
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !2095 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2098
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !2101, !noalias !2105
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2108
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !2108 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !2112
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2114, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !2142
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !2145 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !2146
  %i.ck = and i64 %i.cj, %i.t, !dbg !2149
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2150
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !2153, !noalias !1960
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !2154
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !2154
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !2157, !noalias !1960
  %i.co = load ptr, ptr %0, align 8, !dbg !2158, !alias.scope !1966, !noalias !1967, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !2161
  %.neg61.i.i = mul i64 %.neg.i.i, 40, !dbg !2161
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !2162
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2164
  %.neg63.i.i = mul i64 %.neg62.i.i, 40, !dbg !2164
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cq, ptr noundef nonnull align 1 dereferenceable(40) %i.cp, i64 range(i64 1, 41) 40, i1 false), !dbg !2168, !noalias !1960
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !1968
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !1968

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !2170

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171), !dbg !2174
  %.val11 = load ptr, ptr %0, align 8, !dbg !2175 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2177
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2177

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !2181
  %i.ct = and i64 %i.l, 15, !dbg !2186
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !2187
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !2187
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !2187 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2177
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2177
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2177

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2177
  br label %bb.l, !dbg !2177

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2177
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2177

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2177
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !2177
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2188 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !2191
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2193
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2196
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !2196
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !2198
  br label %._crit_edge.i18, !dbg !2201

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !2201
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2202, !prof !2205

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2188 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !2191
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2193
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2196
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2196
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2198
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !2206  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2188
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !2188 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !2191
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2193
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2196
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !2196
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !2198
  %niter.next.1 = add i64 %niter, 2, !dbg !2177   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2177
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !2177

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2208

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2209
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2214, !noalias !2215
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2217
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBZ_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCsfISxE4fmY1Y_14polars_parquet, ptr %i.dj, align 8, !dbg !2217, !noalias !2215
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2217
  store i64 40, ptr %i.dk, align 8, !dbg !2217, !noalias !2215
  store ptr %0, ptr %i.a, align 8, !dbg !2217, !noalias !2215
  %i.dl = load i64, ptr %i.i, align 8, !dbg !2220, !alias.scope !2171, !noalias !2223, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !2224
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2228

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2229
  %i.dn = load ptr, ptr %0, align 8, !dbg !2232, !noalias !2223, !nonnull !13, !noundef !13 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !2234
  %i.dp = load i8, ptr %i.do, align 1, !dbg !2236, !noalias !2223, !noundef !13
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !2236
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !2239

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2229
  %.neg11.i = mul i64 %.neg.i, 40, !dbg !2240
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !2242 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2244

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !2245, !alias.scope !2249, !noalias !2252, !nonnull !13, !noundef !13
  %i.dt = getelementptr inbounds [40 x i8], ptr %i.ds, i64 %i.dr, !dbg !2254
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -40, !dbg !2257
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21 unwind label %bb.n, !dbg !2261 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.u, !dbg !2264, !noalias !2223

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2265, !nonnull !13, !noundef !13 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2265, !noundef !13 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !2266 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2268
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !2271, !noalias !2275
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2278
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !2278 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !2282
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2284, !prof !1453

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2266
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !2278
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2285
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !2288
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !2289
  %i.ed = and i64 %i.ec, %.val9, !dbg !2289       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !2290
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !2295, !noundef !13
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !2296
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2296, !prof !307

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2298
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !2300
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !2300 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !2303
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !2305
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !2305
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2306
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2308

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBW_7idx_vec7UnitVecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CsfISxE4fmY1Y_14polars_parquet.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !2309           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !2311
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !2266 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2268
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !2271, !noalias !2275
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2278
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !2278 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !2282
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2284, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2312
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2316
  %i.et = xor i64 %i.es, %i.er, !dbg !2319
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !2319
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !2319
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !2320, !prof !341

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !2322
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !2325 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !2326
  %i.ey = and i64 %.val9, %i.ex, !dbg !2329
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2330
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !2333, !noalias !2223
  %i.fa = load ptr, ptr %0, align 8, !dbg !2334, !noalias !2223, !nonnull !13, !noundef !13
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !2336
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !2336
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !2338, !noalias !2223
  br label %bb.s, !dbg !2339

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2340
  %.neg13.i = mul i64 %.neg12.i, 40, !dbg !2340
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2342 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2344 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !2348, !noalias !2223, !noundef !13
  %i.fg = lshr i64 %i.dv, 57, !dbg !2349
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !2352 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2353
  %i.fj = and i64 %i.fi, %.val9, !dbg !2356
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !2357, !noalias !2223
  %i.fk = load ptr, ptr %0, align 8, !dbg !2358, !noalias !2223, !nonnull !13, !noundef !13
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !2360
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !2360
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !2362, !noalias !2223
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !2363
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !2363

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !2364
  %i.fp = load i64, ptr %i.i, align 8, !dbg !2367, !noalias !2223, !noundef !13
  %i.fq = and i64 %i.fp, %i.fo, !dbg !2368
  %i.fr = load ptr, ptr %0, align 8, !dbg !2369, !noalias !2223, !nonnull !13, !noundef !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !2371
  store i8 -1, ptr %i.fs, align 1, !dbg !2373, !noalias !2223
  %i.ft = load ptr, ptr %0, align 8, !dbg !2374, !noalias !2223, !nonnull !13, !noundef !13
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !2376
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !2376
  store i8 -1, ptr %i.fv, align 1, !dbg !2378, !noalias !2223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.fd, ptr noundef nonnull align 1 dereferenceable(40) %i.dq, i64 40, i1 false), !dbg !2379, !noalias !2223
  br label %bb.s, !dbg !2381

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !2224
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !2228

bb.t:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBW_:bb.a
  store ptr %i.p, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2442, !noalias !2429
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2442 ; 2 uses
  store i64 %i.s, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2442, !noalias !2429
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2442 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2442, !noalias !2429
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2442 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2442, !noalias !2429
  %i.v = icmp eq i64 %i.e, 0, !dbg !2443
  br i1 %i.v, label %._crit_edge64, label %.preheader.lr.ph, !dbg !2443

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !dbg !2445, !alias.scope !2448, !noalias !2449, !nonnull !13, !noundef !13 ; 2 uses
  %.val545 = load <16 x i8>, ptr %i.w, align 16, !dbg !2450
  %i.x = icmp sgt <16 x i8> %.val545, splat (i8 -1), !dbg !2452
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !2456
  %i.z = load i64, ptr %2, align 8, !alias.scope !2457, !noalias !2462, !noundef !13
  br label %.preheader, !dbg !2443

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %i.w, %.preheader.lr.ph ], [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.e, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.y, %.preheader.lr.ph ], [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2468
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2472

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.aa, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ad, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !2473 ; 3 uses
  %.val46 = load <16 x i8>, ptr %i.aa, align 16, !dbg !2475
  %i.ab = icmp sgt <16 x i8> %.val46, splat (i8 -1), !dbg !2477
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !2481 ; 2 uses
  %i.ad = add i64 %.sroa.5.156, 16, !dbg !2482    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ac, 0, !dbg !2468
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2472

._crit_edge64:                                    ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.f
  %i.ae = sub i64 %i.u, %i.e, !dbg !2483
  store i64 %i.ae, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2483, !noalias !2429
  store i64 %i.e, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2484, !noalias !2429
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.g, !dbg !2485, !noalias !2491

bb.g:                                             ; preds = %._crit_edge64
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #43, !dbg !2492, !noalias !2491
  unreachable, !dbg !2492

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !2493), !dbg !2439
  call void @llvm.experimental.noalias.scope.decl(metadata !2496), !dbg !2499, !noalias !2491
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2501, !alias.scope !2503, !noalias !2491 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2501, !alias.scope !2503, !noalias !2491, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2504), !dbg !2501, !noalias !2491
  %i.ag = icmp eq i64 %.val1.i.i, 0, !dbg !2507
  br i1 %i.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2507

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ah = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2509, !alias.scope !2510, !noalias !2491, !noundef !13
  %i.ai = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2509, !alias.scope !2510, !noalias !2491, !noundef !13 ; 5 uses
  %i.aj = add i64 %.val1.i.i, 1, !dbg !2511
  %i.ak = mul nuw i64 %i.ah, %i.aj, !dbg !2515    ; 2 uses
  %i.al = add i64 %i.ai, -1, !dbg !2519
  %i.am = add i64 %i.al, %i.ak, !dbg !2520        ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.ak, !dbg !2520
  call void @llvm.assume(i1 %i.an), !dbg !2522, !noalias !2491
  %i.ao = sub i64 0, %i.ai, !dbg !2524
  %i.ap = and i64 %i.am, %i.ao, !dbg !2525        ; 3 uses
  %i.aq = add i64 %.val1.i.i, 17, !dbg !2526
  %i.ar = add i64 %i.aq, %i.ap, !dbg !2527        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !2527
  %i.at = sub nuw i64 -9223372036854775808, %i.ai
  %i.au = icmp ule i64 %i.ar, %i.at
  call void @llvm.assume(i1 %i.as), !dbg !2529, !noalias !2491
  call void @llvm.assume(i1 %i.au), !dbg !2529, !noalias !2491
  %i.av = icmp ne i64 %i.ai, 0, !dbg !2531
  call void @llvm.assume(i1 %i.av), !dbg !2533, !noalias !2491
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2491
  %i.aw = icmp eq i64 %i.ar, 0, !dbg !2534
  br i1 %i.aw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.h, !dbg !2534

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ax = sub nsw i64 0, %i.ap, !dbg !2536
  %i.ay = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ax, !dbg !2538
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #40, !dbg !2539, !noalias !2542
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !2543

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2439, !noalias !2429
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !2440

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2544 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !2544 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.aa, %.noexc4 ], !dbg !2544
  %i.az = add i16 %.sroa.13.1.lcssa, -1, !dbg !2545
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2549
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !2550
  %i.bc = and i16 %i.az, %.sroa.13.1.lcssa, !dbg !2551
  %i.bd = add i64 %.sroa.5.1.lcssa, %i.bb, !dbg !2553 ; 2 uses
  %i.be = add i64 %.sroa.9.061, -1, !dbg !2554    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555), !dbg !2556
  %i.bf = load ptr, ptr %0, align 8, !dbg !2557, !alias.scope !2555, !noalias !2564, !nonnull !13, !noundef !13
  %i.bg = sub nsw i64 0, %i.bd, !dbg !2565
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg, !dbg !2570
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -1, !dbg !2571
  %.val2.i = load i8, ptr %i.bi, align 1, !dbg !2577, !range !2578, !alias.scope !2579, !noalias !2582, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586), !dbg !2587, !noalias !2491
  %i.bj = zext nneg i8 %.val2.i to i64, !dbg !2592
  %i.bk = xor i64 %i.z, %i.bj, !dbg !2598
  %i.bl = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !2599, !noalias !2600, !noundef !13
  %i.bm = zext i64 %i.bk to i128, !dbg !2603
  %i.bn = zext i64 %i.bl to i128, !dbg !2605
  %i.bo = mul nuw i128 %i.bm, %i.bn, !dbg !2606   ; 2 uses
  %i.bp = lshr i128 %i.bo, 64, !dbg !2608
  %.masked.i.i.i = and i128 %i.bo, 18446744073709551615, !dbg !2609
  %i.bq = xor i128 %.masked.i.i.i, %i.bp, !dbg !2609
  %i.br = mul nuw nsw i128 %i.bq, 2611923443488327891, !dbg !2611 ; 2 uses
  %i.bs = lshr i128 %i.br, 64, !dbg !2613
  %i.bt = xor i128 %i.bs, %i.br, !dbg !2614
  %i.bu = trunc i128 %i.bt to i64, !dbg !2614     ; 2 uses
  %.sroa.0.07.i = and i64 %i.s, %i.bu, !dbg !2615 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07.i, !dbg !2618
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bv, align 1, !dbg !2621, !noalias !2625
  %i.bw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2628
  %i.bx = bitcast <16 x i1> %i.bw to i16, !dbg !2628 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bx, 0, !dbg !2632
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2634, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ], !dbg !2615
  %.lcssa.i = phi i16 [ %i.bx, %._crit_edge ], [ %i.co, %.lr.ph.i ], !dbg !2628
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2635
  %i.bz = zext nneg i16 %i.by to i64, !dbg !2638
  %i.ca = add i64 %.sroa.0.0.lcssa.i, %i.bz, !dbg !2639
  %i.cb = and i64 %i.ca, %i.s, !dbg !2639         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cb, !dbg !2640
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !2645, !noundef !13
  %i.ce = icmp sgt i8 %i.cd, -1, !dbg !2646
  br i1 %i.ce, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2646, !prof !307

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.p, align 16, !dbg !2648
  %i.cf = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2650
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !2650 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cg, 0, !dbg !2653
  %i.ch = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cg, i1 true), !dbg !2655
  %i.ci = zext nneg i16 %i.ch to i64, !dbg !2655
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2656
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2658

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cj = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ck = add i64 %i.cj, 16, !dbg !2659           ; 2 uses
  %i.cl = add i64 %i.ck, %.sroa.0.010.i, !dbg !2661
  %.sroa.0.0.i14 = and i64 %i.cl, %i.s, !dbg !2615 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0.i14, !dbg !2618
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cm, align 1, !dbg !2621, !noalias !2625
  %i.cn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2628
  %i.co = bitcast <16 x i1> %i.cn to i16, !dbg !2628 ; 2 uses
  %.not.i.i = icmp eq i16 %i.co, 0, !dbg !2632
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2634, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ci, %bb.i ], [ %i.cb, %._crit_edge.i ] ; 3 uses
  %i.cp = lshr i64 %i.bu, 57, !dbg !2662
  %i.cq = trunc nuw nsw i64 %i.cp to i8, !dbg !2665 ; 2 uses
  %i.cr = add i64 %.sroa.0.0.i5.i, -16, !dbg !2666
  %i.cs = and i64 %i.cr, %i.s, !dbg !2669
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0.i5.i, !dbg !2670
  store i8 %i.cq, ptr %i.ct, align 1, !dbg !2673, !noalias !2491
  %i.cu = getelementptr i8, ptr %i.p, i64 %i.cs, !dbg !2674
  %i.cv = getelementptr i8, ptr %i.cu, i64 16, !dbg !2674
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !2677, !noalias !2491
  %i.cw = load ptr, ptr %0, align 8, !dbg !2678, !alias.scope !2448, !noalias !2449, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bd, -1, !dbg !2681
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %.neg.i.i, !dbg !2682
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2684
  %i.cy = getelementptr inbounds i8, ptr %i.p, i64 %.neg62.i.i, !dbg !2686
  %i.cz = load i8, ptr %i.cx, align 1, !dbg !2688, !noalias !2491
  store i8 %i.cz, ptr %i.cy, align 1, !dbg !2688, !noalias !2491
  %i.da = icmp eq i64 %i.be, 0, !dbg !2443
  br i1 %i.da, label %._crit_edge64, label %.preheader, !dbg !2443

bb.j:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %0, align 8, !dbg !2690 ; 10 uses
  %.not6.i = icmp eq i64 %i.k, 0, !dbg !2692
  br i1 %.not6.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread97, label %.lr.ph.i15, !dbg !2692

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread97: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val11, i64 16, !dbg !2696
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %.val11, i64 %i.k, i1 false), !dbg !2699
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !2701

.lr.ph.i15:                                       ; preds = %bb.j
  %i.dc = lshr i64 %i.k, 4, !dbg !2704
  %i.dd = and i64 %i.k, 15, !dbg !2709
  %.not10.i.i.i = icmp ne i64 %i.dd, 0, !dbg !2710
  %i.de = zext i1 %.not10.i.i.i to i64, !dbg !2710
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.dc, %i.de, !dbg !2710 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2692
  %i.df = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2692
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i15.new, !dbg !2692

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2692
  br label %bb.k, !dbg !2692

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2692
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader, !dbg !2692

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.do, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2692
  tail call void @llvm.assume(i1 %lcmp.mod134), !dbg !2692
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2711 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.dg, align 16, !dbg !2714
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2716
  %i.dh = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2719
  %i.di = or <2 x i64> %i.dh, splat (i64 -9187201950435737472), !dbg !2719
  store <2 x i64> %i.di, ptr %i.dg, align 16, !dbg !2721
  br label %._crit_edge.i17, !dbg !2701

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !2701
  %.111 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !2701
  %i.dj = getelementptr inbounds nuw i8, ptr %.val11, i64 %., !dbg !2696
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr nonnull align 1 %.val11, i64 %.111, i1 false), !dbg !2699
  %i.dk = load i64, ptr %2, align 8
  br label %bb.l, !dbg !2701

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.do, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2711 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dl, align 16, !dbg !2714
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2716
  %i.dm = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2719
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472), !dbg !2719
  store <2 x i64> %i.dn, ptr %i.dl, align 16, !dbg !2721
  %i.do = add i64 %.sroa.01.08.i, 32, !dbg !2724  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2711
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16, !dbg !2711 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dq, align 16, !dbg !2714
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2716
  %i.dr = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2719
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472), !dbg !2719
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !dbg !2721
  %niter.next.1 = add i64 %niter, 2, !dbg !2692   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2692
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k, !dbg !2692

bb.l:                                             ; preds = %._crit_edge.i17, %bb.s
  %i.dt = phi ptr [ %.val11, %._crit_edge.i17 ], [ %i.gm, %bb.s ], !dbg !2726 ; 4 uses
  %.sroa.04.0.i54 = phi i64 [ 0, %._crit_edge.i17 ], [ %i.du, %bb.s ] ; 10 uses
  %i.du = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2728
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sroa.04.0.i54, !dbg !2731
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !2733, !noalias !2736, !noundef !13
  %.not.i2 = icmp eq i8 %i.dw, -128, !dbg !2733
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !2739

bb.m:                                             ; preds = %bb.l
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2728
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %.neg.i, !dbg !2740 ; 3 uses
  %i.dy = sub nsw i64 0, %.sroa.04.0.i54
  br label %bb.n, !dbg !2743

bb.n:                                             ; preds = %bb.m, %bb.t
  %i.dz = phi ptr [ %i.dt, %bb.m ], [ %.pre, %bb.t ], !dbg !2744 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748), !dbg !2751
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy, !dbg !2752
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -1, !dbg !2755
  %.val2.i19 = load i8, ptr %i.eb, align 1, !dbg !2759, !range !2578, !alias.scope !2760, !noalias !2763, !noundef !13
  %i.ec = zext nneg i8 %.val2.i19 to i64, !dbg !2768
  %i.ed = xor i64 %i.dk, %i.ec, !dbg !2774
  %i.ee = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !2775, !noalias !2776, !noundef !13
  %i.ef = zext i64 %i.ed to i128, !dbg !2782
  %i.eg = zext i64 %i.ee to i128, !dbg !2784
  %i.eh = mul nuw i128 %i.ef, %i.eg, !dbg !2785   ; 2 uses
  %i.ei = lshr i128 %i.eh, 64, !dbg !2787
  %.masked.i.i.i20 = and i128 %i.eh, 18446744073709551615, !dbg !2788
  %i.ej = xor i128 %.masked.i.i.i20, %i.ei, !dbg !2788
  %i.ek = mul nuw nsw i128 %i.ej, 2611923443488327891, !dbg !2790 ; 2 uses
  %i.el = lshr i128 %i.ek, 64, !dbg !2792
  %i.em = xor i128 %i.el, %i.ek, !dbg !2793
  %i.en = trunc i128 %i.em to i64, !dbg !2793     ; 3 uses
  %.val9 = load i64, ptr %i.h, align 8, !dbg !2794, !noundef !13 ; 6 uses
  %.sroa.0.07.i21 = and i64 %.val9, %i.en, !dbg !2795 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.07.i21, !dbg !2797
  %.sroa.0.0.copyload.i68.i22 = load <16 x i8>, ptr %i.eo, align 1, !dbg !2800, !noalias !2804
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i22, zeroinitializer, !dbg !2807
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !2807 ; 2 uses
  %.not.i9.i23 = icmp eq i16 %i.eq, 0, !dbg !2811
  br i1 %.not.i9.i23, label %.lr.ph.i30, label %._crit_edge.i24, !dbg !2813, !prof !1453

._crit_edge.i24:                                  ; preds = %.lr.ph.i30, %bb.n
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.07.i21, %bb.n ], [ %.sroa.0.0.i32, %.lr.ph.i30 ], !dbg !2795
  %.lcssa.i26 = phi i16 [ %i.eq, %bb.n ], [ %i.fh, %.lr.ph.i30 ], !dbg !2807
  %i.er = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i26, i1 true), !dbg !2814
  %i.es = zext nneg i16 %i.er to i64, !dbg !2817
  %i.et = add i64 %.sroa.0.0.lcssa.i25, %i.es, !dbg !2818
  %i.eu = and i64 %i.et, %.val9, !dbg !2818       ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eu, !dbg !2819
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !2824, !noundef !13
  %i.ex = icmp sgt i8 %i.ew, -1, !dbg !2825
  br i1 %i.ex, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !dbg !2825, !prof !307

bb.o:                                             ; preds = %._crit_edge.i24
  %.val2.i.i28 = load <16 x i8>, ptr %i.dz, align 16, !dbg !2827
  %i.ey = icmp slt <16 x i8> %.val2.i.i28, zeroinitializer, !dbg !2829
  %i.ez = bitcast <16 x i1> %i.ey to i16, !dbg !2829 ; 2 uses
  %.not.i6.i29 = icmp ne i16 %i.ez, 0, !dbg !2832
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true), !dbg !2834
  %i.fb = zext nneg i16 %i.fa to i64, !dbg !2834
  tail call void @llvm.assume(i1 %.not.i6.i29), !dbg !2835
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !dbg !2837

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30
  %.sroa.0.010.i31 = phi i64 [ %.sroa.0.0.i32, %.lr.ph.i30 ], [ %.sroa.0.07.i21, %bb.n ]
  %i.fc = phi i64 [ %i.fd, %.lr.ph.i30 ], [ 0, %bb.n ]
  %i.fd = add i64 %i.fc, 16, !dbg !2838           ; 2 uses
  %i.fe = add i64 %i.fd, %.sroa.0.010.i31, !dbg !2840
  %.sroa.0.0.i32 = and i64 %i.fe, %.val9, !dbg !2795 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.0.i32, !dbg !2797
  %.sroa.0.0.copyload.i6.i33 = load <16 x i8>, ptr %i.ff, align 1, !dbg !2800, !noalias !2804
  %i.fg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i33, zeroinitializer, !dbg !2807
  %i.fh = bitcast <16 x i1> %i.fg to i16, !dbg !2807 ; 2 uses
  %.not.i.i34 = icmp eq i16 %i.fh, 0, !dbg !2811
  br i1 %.not.i.i34, label %.lr.ph.i30, label %._crit_edge.i24, !dbg !2813, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35: ; preds = %bb.o, %._crit_edge.i24
  %.sroa.0.0.i5.i27 = phi i64 [ %i.fb, %bb.o ], [ %i.eu, %._crit_edge.i24 ] ; 4 uses
  %i.fi = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i21, !dbg !2841
  %i.fj = sub i64 %.sroa.0.0.i5.i27, %.sroa.0.07.i21, !dbg !2845
  %i.fk = xor i64 %i.fj, %i.fi, !dbg !2848
  %.unshifted.i = and i64 %i.fk, %.val9, !dbg !2848
  %i.fl = icmp ult i64 %.unshifted.i, 16, !dbg !2848
  br i1 %i.fl, label %bb.p, label %bb.q, !dbg !2849, !prof !341

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %i.fm = lshr i64 %i.en, 57, !dbg !2851
  %i.fn = trunc nuw nsw i64 %i.fm to i8, !dbg !2854 ; 2 uses
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !2855
  %i.fp = and i64 %.val9, %i.fo, !dbg !2858
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.04.0.i54, !dbg !2859
  store i8 %i.fn, ptr %i.fq, align 1, !dbg !2862, !noalias !2736
  %i.fr = load ptr, ptr %0, align 8, !dbg !2863, !noalias !2736, !nonnull !13, !noundef !13 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fp, !dbg !2865
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !2865
  store i8 %i.fn, ptr %i.ft, align 1, !dbg !2867, !noalias !2736
  br label %bb.s, !dbg !2868

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %.neg12.i = xor i64 %.sroa.0.0.i5.i27, -1, !dbg !2869
  %i.fu = getelementptr inbounds i8, ptr %i.dz, i64 %.neg12.i, !dbg !2871 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.0.0.i5.i27, !dbg !2873 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !2877, !noalias !2736, !noundef !13
  %i.fx = lshr i64 %i.en, 57, !dbg !2878
  %i.fy = trunc nuw nsw i64 %i.fx to i8, !dbg !2881 ; 2 uses
  %i.fz = add i64 %.sroa.0.0.i5.i27, -16, !dbg !2882
  %i.ga = and i64 %i.fz, %.val9, !dbg !2885
  store i8 %i.fy, ptr %i.fv, align 1, !dbg !2886, !noalias !2736
  %i.gb = load ptr, ptr %0, align 8, !dbg !2887, !noalias !2736, !nonnull !13, !noundef !13 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.ga, !dbg !2889
  %i.gd = getelementptr i8, ptr %i.gc, i64 16, !dbg !2889
  store i8 %i.fy, ptr %i.gd, align 1, !dbg !2891, !noalias !2736
  %i.ge = icmp eq i8 %i.fw, -1, !dbg !2892
  br i1 %i.ge, label %bb.r, label %bb.t, !dbg !2892

bb.r:                                             ; preds = %bb.q
  %i.gf = add i64 %.sroa.04.0.i54, -16, !dbg !2893
  %i.gg = load i64, ptr %i.h, align 8, !dbg !2896, !noalias !2736, !noundef !13
  %i.gh = and i64 %i.gg, %i.gf, !dbg !2897
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.04.0.i54, !dbg !2898
  store i8 -1, ptr %i.gi, align 1, !dbg !2901, !noalias !2736
  %i.gj = getelementptr i8, ptr %i.gb, i64 %i.gh, !dbg !2902
  %i.gk = getelementptr i8, ptr %i.gj, i64 16, !dbg !2902
  store i8 -1, ptr %i.gk, align 1, !dbg !2905, !noalias !2736
  %i.gl = load i8, ptr %i.dx, align 1, !dbg !2906, !noalias !2736
  store i8 %i.gl, ptr %i.fu, align 1, !dbg !2906, !noalias !2736
  br label %bb.s, !dbg !2908

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.l
  %i.gm = phi ptr [ %i.gb, %bb.r ], [ %i.fr, %bb.p ], [ %i.dt, %bb.l ]
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.i, !dbg !2909
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %bb.l, !dbg !2701

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2911), !dbg !2914, !noalias !2736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2919), !dbg !2914, !noalias !2736
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.dx, align 1, !dbg !2921, !alias.scope !2911, !noalias !2924
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.fu, align 1, !dbg !2925, !alias.scope !2919, !noalias !2927
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.dx, align 1, !dbg !2928, !alias.scope !2911, !noalias !2924
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.fu, align 1, !dbg !2930, !alias.scope !2919, !noalias !2927
  %.pre = load ptr, ptr %0, align 8, !dbg !2744, !alias.scope !2748, !noalias !2931
  br label %bb.n, !dbg !2932

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.s
  %.pre75 = load i64, ptr %i.h, align 8, !dbg !2933, !noalias !2736 ; 2 uses
  %.pre76 = load i64, ptr %i.d, align 8, !dbg !2934, !noalias !2736
  %.pre79 = add i64 %.pre75, 1, !dbg !2935
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_:bb.a
  %i.az = icmp ne i64 %i.am, 0, !dbg !3080
  call void @llvm.assume(i1 %i.az), !dbg !3082, !noalias !2987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2987
  %i.ba = icmp eq i64 %i.av, 0, !dbg !3083
  br i1 %i.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !3083

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at, !dbg !3085
  %i.bc = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bb, !dbg !3087
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.am) #40, !dbg !3088, !noalias !3091
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !3092

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2985, !noalias !2975
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !2986

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3093 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.076, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !3093 ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.077, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !3093
  %i.bd = add i16 %.sroa.13.1.lcssa, -1, !dbg !3094
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3098
  %i.bf = zext nneg i16 %i.be to i64, !dbg !3099
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa, !dbg !3100
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf, !dbg !3102 ; 2 uses
  %i.bi = add i64 %.sroa.9.075, -1, !dbg !3103    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104), !dbg !3105
  %i.bj = load ptr, ptr %0, align 8, !dbg !3106, !alias.scope !3104, !noalias !3113, !nonnull !13, !noundef !13
  %i.bk = sub nsw i64 0, %i.bh, !dbg !3114
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk, !dbg !3119 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24, !dbg !3120
  %.val2.i = load ptr, ptr %i.bm, align 8, !dbg !3126, !alias.scope !3127, !noalias !3130, !nonnull !13, !noundef !13 ; 8 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 -16, !dbg !3126
  %.val3.i = load i64, ptr %i.bn, align 8, !dbg !3126, !alias.scope !3127, !noalias !3130, !noundef !13 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134), !dbg !3135, !noalias !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140), !dbg !3143, !noalias !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150), !dbg !3153, !noalias !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3155), !dbg !3158, !noalias !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160), !dbg !3163, !noalias !2987
  %i.bo = tail call noundef i64 @llvm.fshr.i64(i64 %i.ac, i64 %i.ac, i64 %.val3.i), !dbg !3165 ; 5 uses
  %i.bp = icmp samesign ult i64 %.val3.i, 17, !dbg !3170
  br i1 %i.bp, label %bb.k, label %bb.j, !dbg !3170, !prof !341

bb.j:                                             ; preds = %._crit_edge
  %i.bq = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #41
          to label %bb.o unwind label %bb.f, !dbg !3171

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172), !dbg !3175, !noalias !2987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176), !dbg !3175, !noalias !2987
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !dbg !3178, !alias.scope !3176, !noalias !3180, !noundef !13 ; 4 uses
  %i.bs = icmp samesign ugt i64 %.val3.i, 7, !dbg !3189
  br i1 %i.bs, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, label %bb.l, !dbg !3189

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp samesign ugt i64 %.val3.i, 3, !dbg !3190
  br i1 %i.bt, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, label %bb.m, !dbg !3190

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !dbg !3191, !alias.scope !3195, !noalias !3196
  %i.bu = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.bo, !dbg !3197
  %i.bv = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3198
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8, !dbg !3198
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 1, !dbg !3202, !alias.scope !3195, !noalias !3196
  %i.bx = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.br, !dbg !3206
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3207

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0, !dbg !3208
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, label %bb.n, !dbg !3208

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.by = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3209
  %i.bz = getelementptr i8, ptr %i.by, i64 -4, !dbg !3209
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bz, align 1, !dbg !3213, !alias.scope !3195, !noalias !3196
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !dbg !3217, !alias.scope !3195, !noalias !3196
  %i.ca = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i to i64, !dbg !3221
  %i.cb = xor i64 %i.bo, %i.ca, !dbg !3222
  %i.cc = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i to i64, !dbg !3223
  %i.cd = xor i64 %i.br, %i.cc, !dbg !3224
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3225

bb.n:                                             ; preds = %bb.m
  %i.ce = load i8, ptr %.val2.i, align 1, !dbg !3226, !alias.scope !3195, !noalias !3196, !noundef !13
  %i.cf = lshr i64 %.val3.i, 1, !dbg !3227
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.cf, !dbg !3228
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !3228, !alias.scope !3195, !noalias !3196, !noundef !13
  %i.ci = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3229
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1, !dbg !3229
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !3229, !alias.scope !3195, !noalias !3196, !noundef !13
  %i.cl = zext i8 %i.ce to i64, !dbg !3230
  %i.cm = xor i64 %i.bo, %i.cl, !dbg !3231
  %i.cn = zext i8 %i.ck to i64, !dbg !3232
  %i.co = shl nuw nsw i64 %i.cn, 8, !dbg !3233
  %i.cp = zext i8 %i.ch to i64, !dbg !3234
  %i.cq = or disjoint i64 %i.co, %i.cp, !dbg !3233
  %i.cr = xor i64 %i.cq, %i.br, !dbg !3235
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3236

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.n ], [ %i.br, %bb.m ], !dbg !3237
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.n ], [ %i.bo, %bb.m ]
  %i.cs = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i128, !dbg !3238
  %i.ct = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i to i128, !dbg !3240
  %i.cu = mul nuw i128 %i.cs, %i.ct, !dbg !3241   ; 2 uses
  %i.cv = lshr i128 %i.cu, 64, !dbg !3243
  %i.cw = xor i128 %i.cv, %i.cu, !dbg !3244
  %i.cx = trunc i128 %i.cw to i64, !dbg !3244
  br label %bb.o, !dbg !3245

bb.o:                                             ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, %bb.j
  %storemerge.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.j ], !dbg !3246
  %i.cy = xor i64 %storemerge.i.i.i.i.i.i.i.i.i, 255, !dbg !3247
  %i.cz = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !3250, !noalias !3251, !noundef !13
  %i.da = zext i64 %i.cy to i128, !dbg !3254
  %i.db = zext i64 %i.cz to i128, !dbg !3256
  %i.dc = mul nuw i128 %i.db, %i.da, !dbg !3257   ; 2 uses
  %i.dd = lshr i128 %i.dc, 64, !dbg !3259
  %.masked.i.i.i = and i128 %i.dc, 18446744073709551615, !dbg !3260
  %i.de = xor i128 %.masked.i.i.i, %i.dd, !dbg !3260
  %i.df = mul nuw nsw i128 %i.de, 2611923443488327891, !dbg !3262 ; 2 uses
  %i.dg = lshr i128 %i.df, 64, !dbg !3264
  %i.dh = xor i128 %i.dg, %i.df, !dbg !3265
  %i.di = trunc i128 %i.dh to i64, !dbg !3265     ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.di, !dbg !3266 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3269
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.dj, align 1, !dbg !3272, !noalias !3276
  %i.dk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3279
  %i.dl = bitcast <16 x i1> %i.dk to i16, !dbg !3279 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dl, 0, !dbg !3283
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3285, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.o
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.o ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3266
  %.lcssa.i = phi i16 [ %i.dl, %bb.o ], [ %i.ec, %.lr.ph.i ], !dbg !3279
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3286
  %i.dn = zext nneg i16 %i.dm to i64, !dbg !3289
  %i.do = add i64 %.sroa.0.0.lcssa.i, %i.dn, !dbg !3290
  %i.dp = and i64 %i.do, %i.t, !dbg !3290         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dp, !dbg !3291
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !3296, !noundef !13
  %i.ds = icmp sgt i8 %i.dr, -1, !dbg !3297
  br i1 %i.ds, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3297, !prof !307

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3299
  %i.dt = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3301
  %i.du = bitcast <16 x i1> %i.dt to i16, !dbg !3301 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.du, 0, !dbg !3304
  %i.dv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.du, i1 true), !dbg !3306
  %i.dw = zext nneg i16 %i.dv to i64, !dbg !3306
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3307
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3309

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.o ]
  %i.dx = phi i64 [ %i.dy, %.lr.ph.i ], [ 0, %bb.o ]
  %i.dy = add i64 %i.dx, 16, !dbg !3310           ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.0.010.i, !dbg !3312
  %.sroa.0.0.i15 = and i64 %i.dz, %i.t, !dbg !3266 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3269
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ea, align 1, !dbg !3272, !noalias !3276
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3279
  %i.ec = bitcast <16 x i1> %i.eb to i16, !dbg !3279 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ec, 0, !dbg !3283
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3285, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.dw, %bb.p ], [ %i.dp, %._crit_edge.i ] ; 3 uses
  %i.ed = lshr i64 %i.di, 57, !dbg !3313
  %i.ee = trunc nuw nsw i64 %i.ed to i8, !dbg !3316 ; 2 uses
  %i.ef = add i64 %.sroa.0.0.i5.i, -16, !dbg !3317
  %i.eg = and i64 %i.ef, %i.t, !dbg !3320
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3321
  store i8 %i.ee, ptr %i.eh, align 1, !dbg !3324, !noalias !2987
  %i.ei = getelementptr i8, ptr %i.q, i64 %i.eg, !dbg !3325
  %i.ej = getelementptr i8, ptr %i.ei, i64 16, !dbg !3325
  store i8 %i.ee, ptr %i.ej, align 1, !dbg !3328, !noalias !2987
  %i.ek = load ptr, ptr %0, align 8, !dbg !3329, !alias.scope !2993, !noalias !2994, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bh, -1, !dbg !3332
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !3332
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.neg61.i.i, !dbg !3333
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3335
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !3335
  %i.em = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.em, ptr noundef nonnull align 1 dereferenceable(24) %i.el, i64 range(i64 1, 41) 24, i1 false), !dbg !3339, !noalias !2987
  %i.en = icmp eq i64 %i.bi, 0, !dbg !2995
  br i1 %i.en, label %._crit_edge78.loopexit, label %.preheader, !dbg !2995

common.resume:                                    ; preds = %bb.z, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.hd, %bb.z ]
  resume { ptr, i32 } %common.resume.op, !dbg !3341

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3342), !dbg !3345
  %.val11 = load ptr, ptr %0, align 8, !dbg !3346 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3348
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3348

.lr.ph.i16:                                       ; preds = %bb.q
  %i.eo = lshr i64 %i.l, 4, !dbg !3352
  %i.ep = and i64 %i.l, 15, !dbg !3357
  %.not10.i.i.i = icmp ne i64 %i.ep, 0, !dbg !3358
  %i.eq = zext i1 %.not10.i.i.i to i64, !dbg !3358
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eo, %i.eq, !dbg !3358 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3348
  %i.er = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !3348
  br i1 %i.er, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !3348

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3348
  br label %bb.r, !dbg !3348

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3348
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !3348

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.ez, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3348
  tail call void @llvm.assume(i1 %lcmp.mod133), !dbg !3348
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3359 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.es, align 16, !dbg !3362
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3364
  %i.et = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3367
  %i.eu = or <2 x i64> %i.et, splat (i64 -9187201950435737472), !dbg !3367
  store <2 x i64> %i.eu, ptr %i.es, align 16, !dbg !3369
  br label %._crit_edge.i18, !dbg !3372

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.ev = icmp ult i64 %i.l, 16, !dbg !3372
  br i1 %i.ev, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3373, !prof !2205

bb.r:                                             ; preds = %bb.r, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.ez, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.r ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3359 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.ew, align 16, !dbg !3362
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3364
  %i.ex = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3367
  %i.ey = or <2 x i64> %i.ex, splat (i64 -9187201950435737472), !dbg !3367
  store <2 x i64> %i.ey, ptr %i.ew, align 16, !dbg !3369
  %i.ez = add i64 %.sroa.01.08.i, 32, !dbg !3375  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3359
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16, !dbg !3359 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.fb, align 16, !dbg !3362
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3364
  %i.fc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3367
  %i.fd = or <2 x i64> %i.fc, splat (i64 -9187201950435737472), !dbg !3367
  store <2 x i64> %i.fd, ptr %i.fb, align 16, !dbg !3369
  %niter.next.1 = add i64 %niter, 2, !dbg !3348   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3348
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.r, !dbg !3348

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.q
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3377

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3378
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3383, !noalias !3384
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3386
  store ptr null, ptr %i.ff, align 8, !dbg !3386, !noalias !3384
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3386
  store i64 24, ptr %i.fg, align 8, !dbg !3386, !noalias !3384
  store ptr %0, ptr %i.a, align 8, !dbg !3386, !noalias !3384
  %i.fh = load i64, ptr %i.i, align 8, !dbg !3388, !alias.scope !3342, !noalias !3390, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.fh, -1, !dbg !3391
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3395

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.fi = load i64, ptr %2, align 8               ; 2 uses
  br label %bb.s, !dbg !3395

bb.s:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.04.0.i68 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.af ] ; 10 uses
  %i.fj = add nuw i64 %.sroa.04.0.i68, 1, !dbg !3396
  %i.fk = load ptr, ptr %0, align 8, !dbg !3399, !noalias !3390, !nonnull !13, !noundef !13 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.04.0.i68, !dbg !3401
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !3403, !noalias !3390, !noundef !13
  %.not.i2 = icmp eq i8 %i.fm, -128, !dbg !3403
  br i1 %.not.i2, label %bb.t, label %bb.af, !dbg !3406

bb.t:                                             ; preds = %bb.s
  %.neg.i = xor i64 %.sroa.04.0.i68, -1, !dbg !3396
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !3407
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %.neg11.i, !dbg !3409 ; 2 uses
  %i.fo = sub nsw i64 0, %.sroa.04.0.i68
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3411

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ag, %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412), !dbg !3415
  %i.fp = load ptr, ptr %0, align 8, !dbg !3416, !alias.scope !3412, !noalias !3420, !nonnull !13, !noundef !13 ; 2 uses
  %i.fq = getelementptr inbounds [24 x i8], ptr %i.fp, i64 %i.fo, !dbg !3422 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -24, !dbg !3425
  %.val2.i20 = load ptr, ptr %i.fr, align 8, !dbg !3429, !alias.scope !3430, !noalias !3433, !nonnull !13, !noundef !13 ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 -16, !dbg !3429
  %.val3.i21 = load i64, ptr %i.fs, align 8, !dbg !3429, !alias.scope !3430, !noalias !3433, !noundef !13 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437), !dbg !3440, !noalias !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446), !dbg !3449, !noalias !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451), !dbg !3454, !noalias !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3456), !dbg !3459, !noalias !3390
  %i.ft = tail call noundef i64 @llvm.fshr.i64(i64 %i.fi, i64 %i.fi, i64 %.val3.i21), !dbg !3461 ; 5 uses
  %i.fu = icmp samesign ult i64 %.val3.i21, 17, !dbg !3466
  br i1 %i.fu, label %bb.v, label %bb.u, !dbg !3466, !prof !341

bb.u:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.fv = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i20, i64 noundef range(i64 0, -9223372036854775808) %.val3.i21, i64 noundef %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #41
          to label %._crit_edge88 unwind label %bb.z, !dbg !3467

._crit_edge88:                                    ; preds = %bb.u
  %.val8.pre = load ptr, ptr %0, align 8, !dbg !3468
  br label %bb.aa, !dbg !3467

bb.v:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469), !dbg !3472, !noalias !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473), !dbg !3472, !noalias !3390
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !dbg !3475, !alias.scope !3473, !noalias !3477, !noundef !13 ; 4 uses
  %i.fx = icmp samesign ugt i64 %.val3.i21, 7, !dbg !3489
  br i1 %i.fx, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31, label %bb.w, !dbg !3489

bb.w:                                             ; preds = %bb.v
  %i.fy = icmp samesign ugt i64 %.val3.i21, 3, !dbg !3490
  br i1 %i.fy, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28, label %bb.x, !dbg !3490

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31: ; preds = %bb.v
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i32 = load i64, ptr %.val2.i20, align 1, !dbg !3491, !alias.scope !3495, !noalias !3496
  %i.fz = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i32, %i.ft, !dbg !3497
  %i.ga = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !3498
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8, !dbg !3498
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i33 = load i64, ptr %i.gb, align 1, !dbg !3502, !alias.scope !3495, !noalias !3496
  %i.gc = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i33, %i.fw, !dbg !3506
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !3507

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq i64 %.val3.i21, 0, !dbg !3508
  br i1 %.not.i.i.i.i.i.i.i.i.i.i24, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, label %bb.y, !dbg !3508

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28: ; preds = %bb.w
  %i.gd = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !3509
  %i.ge = getelementptr i8, ptr %i.gd, i64 -4, !dbg !3509
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i29 = load i32, ptr %i.ge, align 1, !dbg !3513, !alias.scope !3495, !noalias !3496
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i30 = load i32, ptr %.val2.i20, align 1, !dbg !3517, !alias.scope !3495, !noalias !3496
  %i.gf = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i30 to i64, !dbg !3521
  %i.gg = xor i64 %i.ft, %i.gf, !dbg !3522
  %i.gh = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i29 to i64, !dbg !3523
  %i.gi = xor i64 %i.fw, %i.gh, !dbg !3524
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !3525

bb.y:                                             ; preds = %bb.x
  %i.gj = load i8, ptr %.val2.i20, align 1, !dbg !3526, !alias.scope !3495, !noalias !3496, !noundef !13
  %i.gk = lshr i64 %.val3.i21, 1, !dbg !3527
  %i.gl = getelementptr inbounds nuw i8, ptr %.val2.i20, i64 %i.gk, !dbg !3528
  %i.gm = load i8, ptr %i.gl, align 1, !dbg !3528, !alias.scope !3495, !noalias !3496, !noundef !13
  %i.gn = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !3529
  %i.go = getelementptr i8, ptr %i.gn, i64 -1, !dbg !3529
  %i.gp = load i8, ptr %i.go, align 1, !dbg !3529, !alias.scope !3495, !noalias !3496, !noundef !13
  %i.gq = zext i8 %i.gj to i64, !dbg !3530
  %i.gr = xor i64 %i.ft, %i.gq, !dbg !3531
  %i.gs = zext i8 %i.gp to i64, !dbg !3532
  %i.gt = shl nuw nsw i64 %i.gs, 8, !dbg !3533
  %i.gu = zext i8 %i.gm to i64, !dbg !3534
  %i.gv = or disjoint i64 %i.gt, %i.gu, !dbg !3533
  %i.gw = xor i64 %i.gv, %i.fw, !dbg !3535
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !3536

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25: ; preds = %bb.y, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28, %bb.x, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i26 = phi i64 [ %i.gc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.gi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28 ], [ %i.gw, %bb.y ], [ %i.fw, %bb.x ], !dbg !3537
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.fz, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.gg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28 ], [ %i.gr, %bb.y ], [ %i.ft, %bb.x ]
  %i.gx = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i27 to i128, !dbg !3538
  %i.gy = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i26 to i128, !dbg !3540
  %i.gz = mul nuw i128 %i.gx, %i.gy, !dbg !3541   ; 2 uses
  %i.ha = lshr i128 %i.gz, 64, !dbg !3543
  %i.hb = xor i128 %i.ha, %i.gz, !dbg !3544
  %i.hc = trunc i128 %i.hb to i64, !dbg !3544
  br label %bb.aa, !dbg !3545

bb.z:                                             ; preds = %bb.ag, %bb.u
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.ah, !dbg !3546, !noalias !3390

bb.aa:                                            ; preds = %._crit_edge88, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25
  %.val8 = phi ptr [ %i.fp, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25 ], [ %.val8.pre, %._crit_edge88 ], !dbg !3468 ; 7 uses
  %storemerge.i.i.i.i.i.i.i.i.i22 = phi i64 [ %i.hc, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25 ], [ %i.fv, %._crit_edge88 ], !dbg !3547
  %i.he = xor i64 %storemerge.i.i.i.i.i.i.i.i.i22, 255, !dbg !3548
  %i.hf = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !3551, !noalias !3552, !noundef !13
  %i.hg = zext i64 %i.he to i128, !dbg !3555
  %i.hh = zext i64 %i.hf to i128, !dbg !3557
  %i.hi = mul nuw i128 %i.hh, %i.hg, !dbg !3558   ; 2 uses
  %i.hj = lshr i128 %i.hi, 64, !dbg !3560
  %.masked.i.i.i23 = and i128 %i.hi, 18446744073709551615, !dbg !3561
  %i.hk = xor i128 %.masked.i.i.i23, %i.hj, !dbg !3561
  %i.hl = mul nuw nsw i128 %i.hk, 2611923443488327891, !dbg !3563 ; 2 uses
  %i.hm = lshr i128 %i.hl, 64, !dbg !3565
  %i.hn = xor i128 %i.hm, %i.hl, !dbg !3566
  %i.ho = trunc i128 %i.hn to i64, !dbg !3566     ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3468, !noundef !13 ; 6 uses
  %.sroa.0.07.i36 = and i64 %.val9, %i.ho, !dbg !3567 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i36, !dbg !3569
  %.sroa.0.0.copyload.i68.i37 = load <16 x i8>, ptr %i.hp, align 1, !dbg !3572, !noalias !3576
  %i.hq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i37, zeroinitializer, !dbg !3579
  %i.hr = bitcast <16 x i1> %i.hq to i16, !dbg !3579 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRebEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.az = icmp ne i64 %i.am, 0, !dbg !3835
  call void @llvm.assume(i1 %i.az), !dbg !3837, !noalias !3742
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !3742
  %i.ba = icmp eq i64 %i.av, 0, !dbg !3838
  br i1 %i.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !3838

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at, !dbg !3840
  %i.bc = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bb, !dbg !3842
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.am) #40, !dbg !3843, !noalias !3846
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !3847

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3740, !noalias !3730
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !3741

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3848 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.076, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !3848 ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.077, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !3848
  %i.bd = add i16 %.sroa.13.1.lcssa, -1, !dbg !3849
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3853
  %i.bf = zext nneg i16 %i.be to i64, !dbg !3854
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa, !dbg !3855
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf, !dbg !3857 ; 2 uses
  %i.bi = add i64 %.sroa.9.075, -1, !dbg !3858    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859), !dbg !3860
  %i.bj = load ptr, ptr %0, align 8, !dbg !3861, !alias.scope !3859, !noalias !3868, !nonnull !13, !noundef !13
  %i.bk = sub nsw i64 0, %i.bh, !dbg !3869
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk, !dbg !3874 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24, !dbg !3875
  %.val2.i = load ptr, ptr %i.bm, align 8, !dbg !3881, !alias.scope !3882, !noalias !3885, !nonnull !13, !noundef !13 ; 8 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 -16, !dbg !3881
  %.val3.i = load i64, ptr %i.bn, align 8, !dbg !3881, !alias.scope !3882, !noalias !3885, !noundef !13 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889), !dbg !3890, !noalias !3742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895), !dbg !3898, !noalias !3742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3902), !dbg !3905, !noalias !3742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907), !dbg !3910, !noalias !3742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912), !dbg !3915, !noalias !3742
  %i.bo = tail call noundef i64 @llvm.fshr.i64(i64 %i.ac, i64 %i.ac, i64 %.val3.i), !dbg !3917 ; 5 uses
  %i.bp = icmp samesign ult i64 %.val3.i, 17, !dbg !3922
  br i1 %i.bp, label %bb.k, label %bb.j, !dbg !3922, !prof !341

bb.j:                                             ; preds = %._crit_edge
  %i.bq = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #41
          to label %bb.o unwind label %bb.f, !dbg !3923

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3924), !dbg !3927, !noalias !3742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928), !dbg !3927, !noalias !3742
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !dbg !3930, !alias.scope !3928, !noalias !3932, !noundef !13 ; 4 uses
  %i.bs = icmp samesign ugt i64 %.val3.i, 7, !dbg !3941
  br i1 %i.bs, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, label %bb.l, !dbg !3941

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp samesign ugt i64 %.val3.i, 3, !dbg !3942
  br i1 %i.bt, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, label %bb.m, !dbg !3942

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !dbg !3943, !alias.scope !3947, !noalias !3948
  %i.bu = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.bo, !dbg !3949
  %i.bv = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3950
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8, !dbg !3950
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 1, !dbg !3954, !alias.scope !3947, !noalias !3948
  %i.bx = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.br, !dbg !3958
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3959

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0, !dbg !3960
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, label %bb.n, !dbg !3960

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.by = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3961
  %i.bz = getelementptr i8, ptr %i.by, i64 -4, !dbg !3961
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bz, align 1, !dbg !3965, !alias.scope !3947, !noalias !3948
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !dbg !3969, !alias.scope !3947, !noalias !3948
  %i.ca = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i to i64, !dbg !3973
  %i.cb = xor i64 %i.bo, %i.ca, !dbg !3974
  %i.cc = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i to i64, !dbg !3975
  %i.cd = xor i64 %i.br, %i.cc, !dbg !3976
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3977

bb.n:                                             ; preds = %bb.m
  %i.ce = load i8, ptr %.val2.i, align 1, !dbg !3978, !alias.scope !3947, !noalias !3948, !noundef !13
  %i.cf = lshr i64 %.val3.i, 1, !dbg !3979
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.cf, !dbg !3980
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !3980, !alias.scope !3947, !noalias !3948, !noundef !13
  %i.ci = getelementptr i8, ptr %.val2.i, i64 %.val3.i, !dbg !3981
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1, !dbg !3981
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !3981, !alias.scope !3947, !noalias !3948, !noundef !13
  %i.cl = zext i8 %i.ce to i64, !dbg !3982
  %i.cm = xor i64 %i.bo, %i.cl, !dbg !3983
  %i.cn = zext i8 %i.ck to i64, !dbg !3984
  %i.co = shl nuw nsw i64 %i.cn, 8, !dbg !3985
  %i.cp = zext i8 %i.ch to i64, !dbg !3986
  %i.cq = or disjoint i64 %i.co, %i.cp, !dbg !3985
  %i.cr = xor i64 %i.cq, %i.br, !dbg !3987
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, !dbg !3988

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i, %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.n ], [ %i.br, %bb.m ], !dbg !3989
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.n ], [ %i.bo, %bb.m ]
  %i.cs = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i128, !dbg !3990
  %i.ct = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i to i128, !dbg !3992
  %i.cu = mul nuw i128 %i.cs, %i.ct, !dbg !3993   ; 2 uses
  %i.cv = lshr i128 %i.cu, 64, !dbg !3995
  %i.cw = xor i128 %i.cv, %i.cu, !dbg !3996
  %i.cx = trunc i128 %i.cw to i64, !dbg !3996
  br label %bb.o, !dbg !3997

bb.o:                                             ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i, %bb.j
  %storemerge.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.j ], !dbg !3998
  %i.cy = xor i64 %storemerge.i.i.i.i.i.i.i.i.i, 255, !dbg !3999
  %i.cz = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !4002, !noalias !4003, !noundef !13
  %i.da = zext i64 %i.cy to i128, !dbg !4006
  %i.db = zext i64 %i.cz to i128, !dbg !4008
  %i.dc = mul nuw i128 %i.db, %i.da, !dbg !4009   ; 2 uses
  %i.dd = lshr i128 %i.dc, 64, !dbg !4011
  %.masked.i.i.i = and i128 %i.dc, 18446744073709551615, !dbg !4012
  %i.de = xor i128 %.masked.i.i.i, %i.dd, !dbg !4012
  %i.df = mul nuw nsw i128 %i.de, 2611923443488327891, !dbg !4014 ; 2 uses
  %i.dg = lshr i128 %i.df, 64, !dbg !4016
  %i.dh = xor i128 %i.dg, %i.df, !dbg !4017
  %i.di = trunc i128 %i.dh to i64, !dbg !4017     ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.di, !dbg !4018 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4021
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.dj, align 1, !dbg !4024, !noalias !4028
  %i.dk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4031
  %i.dl = bitcast <16 x i1> %i.dk to i16, !dbg !4031 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dl, 0, !dbg !4035
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4037, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.o
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.o ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4018
  %.lcssa.i = phi i16 [ %i.dl, %bb.o ], [ %i.ec, %.lr.ph.i ], !dbg !4031
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4038
  %i.dn = zext nneg i16 %i.dm to i64, !dbg !4041
  %i.do = add i64 %.sroa.0.0.lcssa.i, %i.dn, !dbg !4042
  %i.dp = and i64 %i.do, %i.t, !dbg !4042         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dp, !dbg !4043
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !4048, !noundef !13
  %i.ds = icmp sgt i8 %i.dr, -1, !dbg !4049
  br i1 %i.ds, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4049, !prof !307

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4051
  %i.dt = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4053
  %i.du = bitcast <16 x i1> %i.dt to i16, !dbg !4053 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.du, 0, !dbg !4056
  %i.dv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.du, i1 true), !dbg !4058
  %i.dw = zext nneg i16 %i.dv to i64, !dbg !4058
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4059
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4061

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.o ]
  %i.dx = phi i64 [ %i.dy, %.lr.ph.i ], [ 0, %bb.o ]
  %i.dy = add i64 %i.dx, 16, !dbg !4062           ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.0.010.i, !dbg !4064
  %.sroa.0.0.i15 = and i64 %i.dz, %i.t, !dbg !4018 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4021
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ea, align 1, !dbg !4024, !noalias !4028
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4031
  %i.ec = bitcast <16 x i1> %i.eb to i16, !dbg !4031 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ec, 0, !dbg !4035
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4037, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.dw, %bb.p ], [ %i.dp, %._crit_edge.i ] ; 3 uses
  %i.ed = lshr i64 %i.di, 57, !dbg !4065
  %i.ee = trunc nuw nsw i64 %i.ed to i8, !dbg !4068 ; 2 uses
  %i.ef = add i64 %.sroa.0.0.i5.i, -16, !dbg !4069
  %i.eg = and i64 %i.ef, %i.t, !dbg !4072
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4073
  store i8 %i.ee, ptr %i.eh, align 1, !dbg !4076, !noalias !3742
  %i.ei = getelementptr i8, ptr %i.q, i64 %i.eg, !dbg !4077
  %i.ej = getelementptr i8, ptr %i.ei, i64 16, !dbg !4077
  store i8 %i.ee, ptr %i.ej, align 1, !dbg !4080, !noalias !3742
  %i.ek = load ptr, ptr %0, align 8, !dbg !4081, !alias.scope !3748, !noalias !3749, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bh, -1, !dbg !4084
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !4084
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.neg61.i.i, !dbg !4085
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4087
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !4087
  %i.em = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4089
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.em, ptr noundef nonnull align 1 dereferenceable(24) %i.el, i64 range(i64 1, 41) 24, i1 false), !dbg !4091, !noalias !3742
  %i.en = icmp eq i64 %i.bi, 0, !dbg !3750
  br i1 %i.en, label %._crit_edge78.loopexit, label %.preheader, !dbg !3750

common.resume:                                    ; preds = %bb.z, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.hd, %bb.z ]
  resume { ptr, i32 } %common.resume.op, !dbg !4093

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4094), !dbg !4097
  %.val11 = load ptr, ptr %0, align 8, !dbg !4098 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4100
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4100

.lr.ph.i16:                                       ; preds = %bb.q
  %i.eo = lshr i64 %i.l, 4, !dbg !4104
  %i.ep = and i64 %i.l, 15, !dbg !4109
  %.not10.i.i.i = icmp ne i64 %i.ep, 0, !dbg !4110
  %i.eq = zext i1 %.not10.i.i.i to i64, !dbg !4110
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eo, %i.eq, !dbg !4110 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4100
  %i.er = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4100
  br i1 %i.er, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !4100

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4100
  br label %bb.r, !dbg !4100

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4100
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !4100

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.ez, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4100
  tail call void @llvm.assume(i1 %lcmp.mod133), !dbg !4100
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4111 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.es, align 16, !dbg !4114
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4116
  %i.et = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4119
  %i.eu = or <2 x i64> %i.et, splat (i64 -9187201950435737472), !dbg !4119
  store <2 x i64> %i.eu, ptr %i.es, align 16, !dbg !4121
  br label %._crit_edge.i18, !dbg !4124

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.ev = icmp ult i64 %i.l, 16, !dbg !4124
  br i1 %i.ev, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4125, !prof !2205

bb.r:                                             ; preds = %bb.r, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.ez, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.r ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4111 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.ew, align 16, !dbg !4114
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4116
  %i.ex = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4119
  %i.ey = or <2 x i64> %i.ex, splat (i64 -9187201950435737472), !dbg !4119
  store <2 x i64> %i.ey, ptr %i.ew, align 16, !dbg !4121
  %i.ez = add i64 %.sroa.01.08.i, 32, !dbg !4127  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4111
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16, !dbg !4111 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.fb, align 16, !dbg !4114
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4116
  %i.fc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4119
  %i.fd = or <2 x i64> %i.fc, splat (i64 -9187201950435737472), !dbg !4119
  store <2 x i64> %i.fd, ptr %i.fb, align 16, !dbg !4121
  %niter.next.1 = add i64 %niter, 2, !dbg !4100   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4100
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.r, !dbg !4100

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.q
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4129

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4130
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4135, !noalias !4136
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4138
  store ptr null, ptr %i.ff, align 8, !dbg !4138, !noalias !4136
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4138
  store i64 24, ptr %i.fg, align 8, !dbg !4138, !noalias !4136
  store ptr %0, ptr %i.a, align 8, !dbg !4138, !noalias !4136
  %i.fh = load i64, ptr %i.i, align 8, !dbg !4140, !alias.scope !4094, !noalias !4142, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.fh, -1, !dbg !4143
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4147

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.fi = load i64, ptr %2, align 8               ; 2 uses
  br label %bb.s, !dbg !4147

bb.s:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.04.0.i68 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.af ] ; 10 uses
  %i.fj = add nuw i64 %.sroa.04.0.i68, 1, !dbg !4148
  %i.fk = load ptr, ptr %0, align 8, !dbg !4151, !noalias !4142, !nonnull !13, !noundef !13 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.04.0.i68, !dbg !4153
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !4155, !noalias !4142, !noundef !13
  %.not.i2 = icmp eq i8 %i.fm, -128, !dbg !4155
  br i1 %.not.i2, label %bb.t, label %bb.af, !dbg !4158

bb.t:                                             ; preds = %bb.s
  %.neg.i = xor i64 %.sroa.04.0.i68, -1, !dbg !4148
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !4159
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %.neg11.i, !dbg !4161 ; 2 uses
  %i.fo = sub nsw i64 0, %.sroa.04.0.i68
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4163

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ag, %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4164), !dbg !4167
  %i.fp = load ptr, ptr %0, align 8, !dbg !4168, !alias.scope !4164, !noalias !4172, !nonnull !13, !noundef !13 ; 2 uses
  %i.fq = getelementptr inbounds [24 x i8], ptr %i.fp, i64 %i.fo, !dbg !4174 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -24, !dbg !4177
  %.val2.i20 = load ptr, ptr %i.fr, align 8, !dbg !4181, !alias.scope !4182, !noalias !4185, !nonnull !13, !noundef !13 ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 -16, !dbg !4181
  %.val3.i21 = load i64, ptr %i.fs, align 8, !dbg !4181, !alias.scope !4182, !noalias !4185, !noundef !13 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4189), !dbg !4192, !noalias !4142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198), !dbg !4201, !noalias !4142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4203), !dbg !4206, !noalias !4142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4208), !dbg !4211, !noalias !4142
  %i.ft = tail call noundef i64 @llvm.fshr.i64(i64 %i.fi, i64 %i.fi, i64 %.val3.i21), !dbg !4213 ; 5 uses
  %i.fu = icmp samesign ult i64 %.val3.i21, 17, !dbg !4218
  br i1 %i.fu, label %bb.v, label %bb.u, !dbg !4218, !prof !341

bb.u:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.fv = invoke noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i20, i64 noundef range(i64 0, -9223372036854775808) %.val3.i21, i64 noundef %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #41
          to label %._crit_edge88 unwind label %bb.z, !dbg !4219

._crit_edge88:                                    ; preds = %bb.u
  %.val8.pre = load ptr, ptr %0, align 8, !dbg !4220
  br label %bb.aa, !dbg !4219

bb.v:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4221), !dbg !4224, !noalias !4142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4225), !dbg !4224, !noalias !4142
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !dbg !4227, !alias.scope !4225, !noalias !4229, !noundef !13 ; 4 uses
  %i.fx = icmp samesign ugt i64 %.val3.i21, 7, !dbg !4241
  br i1 %i.fx, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31, label %bb.w, !dbg !4241

bb.w:                                             ; preds = %bb.v
  %i.fy = icmp samesign ugt i64 %.val3.i21, 3, !dbg !4242
  br i1 %i.fy, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28, label %bb.x, !dbg !4242

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31: ; preds = %bb.v
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i32 = load i64, ptr %.val2.i20, align 1, !dbg !4243, !alias.scope !4247, !noalias !4248
  %i.fz = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i.i32, %i.ft, !dbg !4249
  %i.ga = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !4250
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8, !dbg !4250
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i33 = load i64, ptr %i.gb, align 1, !dbg !4254, !alias.scope !4247, !noalias !4248
  %i.gc = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i33, %i.fw, !dbg !4258
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !4259

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq i64 %.val3.i21, 0, !dbg !4260
  br i1 %.not.i.i.i.i.i.i.i.i.i.i24, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, label %bb.y, !dbg !4260

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28: ; preds = %bb.w
  %i.gd = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !4261
  %i.ge = getelementptr i8, ptr %i.gd, i64 -4, !dbg !4261
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i29 = load i32, ptr %i.ge, align 1, !dbg !4265, !alias.scope !4247, !noalias !4248
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i30 = load i32, ptr %.val2.i20, align 1, !dbg !4269, !alias.scope !4247, !noalias !4248
  %i.gf = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i.i30 to i64, !dbg !4273
  %i.gg = xor i64 %i.ft, %i.gf, !dbg !4274
  %i.gh = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i.i29 to i64, !dbg !4275
  %i.gi = xor i64 %i.fw, %i.gh, !dbg !4276
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !4277

bb.y:                                             ; preds = %bb.x
  %i.gj = load i8, ptr %.val2.i20, align 1, !dbg !4278, !alias.scope !4247, !noalias !4248, !noundef !13
  %i.gk = lshr i64 %.val3.i21, 1, !dbg !4279
  %i.gl = getelementptr inbounds nuw i8, ptr %.val2.i20, i64 %i.gk, !dbg !4280
  %i.gm = load i8, ptr %i.gl, align 1, !dbg !4280, !alias.scope !4247, !noalias !4248, !noundef !13
  %i.gn = getelementptr i8, ptr %.val2.i20, i64 %.val3.i21, !dbg !4281
  %i.go = getelementptr i8, ptr %i.gn, i64 -1, !dbg !4281
  %i.gp = load i8, ptr %i.go, align 1, !dbg !4281, !alias.scope !4247, !noalias !4248, !noundef !13
  %i.gq = zext i8 %i.gj to i64, !dbg !4282
  %i.gr = xor i64 %i.ft, %i.gq, !dbg !4283
  %i.gs = zext i8 %i.gp to i64, !dbg !4284
  %i.gt = shl nuw nsw i64 %i.gs, 8, !dbg !4285
  %i.gu = zext i8 %i.gm to i64, !dbg !4286
  %i.gv = or disjoint i64 %i.gt, %i.gu, !dbg !4285
  %i.gw = xor i64 %i.gv, %i.fw, !dbg !4287
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25, !dbg !4288

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25: ; preds = %bb.y, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28, %bb.x, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i26 = phi i64 [ %i.gc, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.gi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28 ], [ %i.gw, %bb.y ], [ %i.fw, %bb.x ], !dbg !4289
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.fz, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.gg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.i.i.i28 ], [ %i.gr, %bb.y ], [ %i.ft, %bb.x ]
  %i.gx = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i27 to i128, !dbg !4290
  %i.gy = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i26 to i128, !dbg !4292
  %i.gz = mul nuw i128 %i.gx, %i.gy, !dbg !4293   ; 2 uses
  %i.ha = lshr i128 %i.gz, 64, !dbg !4295
  %i.hb = xor i128 %i.ha, %i.gz, !dbg !4296
  %i.hc = trunc i128 %i.hb to i64, !dbg !4296
  br label %bb.aa, !dbg !4297

bb.z:                                             ; preds = %bb.ag, %bb.u
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.ah, !dbg !4298, !noalias !4142

bb.aa:                                            ; preds = %._crit_edge88, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25
  %.val8 = phi ptr [ %i.fp, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25 ], [ %.val8.pre, %._crit_edge88 ], !dbg !4220 ; 7 uses
  %storemerge.i.i.i.i.i.i.i.i.i22 = phi i64 [ %i.hc, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i.i.i25 ], [ %i.fv, %._crit_edge88 ], !dbg !4299
  %i.he = xor i64 %storemerge.i.i.i.i.i.i.i.i.i22, 255, !dbg !4300
  %i.hf = load i64, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !dbg !4303, !noalias !4304, !noundef !13
  %i.hg = zext i64 %i.he to i128, !dbg !4307
  %i.hh = zext i64 %i.hf to i128, !dbg !4309
  %i.hi = mul nuw i128 %i.hh, %i.hg, !dbg !4310   ; 2 uses
  %i.hj = lshr i128 %i.hi, 64, !dbg !4312
  %.masked.i.i.i23 = and i128 %i.hi, 18446744073709551615, !dbg !4313
  %i.hk = xor i128 %.masked.i.i.i23, %i.hj, !dbg !4313
  %i.hl = mul nuw nsw i128 %i.hk, 2611923443488327891, !dbg !4315 ; 2 uses
  %i.hm = lshr i128 %i.hl, 64, !dbg !4317
  %i.hn = xor i128 %i.hm, %i.hl, !dbg !4318
  %i.ho = trunc i128 %i.hn to i64, !dbg !4318     ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4220, !noundef !13 ; 6 uses
  %.sroa.0.07.i36 = and i64 %.val9, %i.ho, !dbg !4319 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i36, !dbg !4321
  %.sroa.0.0.copyload.i68.i37 = load <16 x i8>, ptr %i.hp, align 1, !dbg !4324, !noalias !4328
  %i.hq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i37, zeroinitializer, !dbg !4331
  %i.hr = bitcast <16 x i1> %i.hq to i16, !dbg !4331 ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEuE0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %i.x = load i64, ptr %i.e, align 8, !dbg !4498, !alias.scope !4500, !noalias !4501, !noundef !13 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !4502
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph, !dbg !4502

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !4504, !alias.scope !4500, !noalias !4501, !nonnull !13, !noundef !13 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16, !dbg !4506
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1), !dbg !4508
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !4512
  br label %.preheader, !dbg !4502

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0, !dbg !4513
  br i1 %.not.i367, label %.noexc4, label %._crit_edge, !dbg !4517

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16, !dbg !4518 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16, !dbg !4520
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1), !dbg !4522
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !4526 ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16, !dbg !4527    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !4513
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4517

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !dbg !4528, !alias.scope !4500, !noalias !4501
  br label %._crit_edge76, !dbg !4528

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ], !dbg !4528 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !4529
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4529, !noalias !4482
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4530, !noalias !4482
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.h, !dbg !4531, !noalias !4494

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #43, !dbg !4537, !noalias !4494
  unreachable, !dbg !4537

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !4538), !dbg !4492
  call void @llvm.experimental.noalias.scope.decl(metadata !4541), !dbg !4544, !noalias !4494
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4546, !alias.scope !4548, !noalias !4494 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4546, !alias.scope !4548, !noalias !4494, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4549), !dbg !4546, !noalias !4494
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !4552
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !4552

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4554, !alias.scope !4555, !noalias !4494, !noundef !13
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4554, !alias.scope !4555, !noalias !4494, !noundef !13 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !4556
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !4560    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !4564
  %i.ap = add i64 %i.ao, %i.an, !dbg !4565        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !4565
  call void @llvm.assume(i1 %i.aq), !dbg !4567, !noalias !4494
  %i.ar = sub i64 0, %i.al, !dbg !4569
  %i.as = and i64 %i.ap, %i.ar, !dbg !4570        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !4571
  %i.au = add i64 %i.at, %i.as, !dbg !4572        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !4572
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !4574, !noalias !4494
  call void @llvm.assume(i1 %i.ax), !dbg !4574, !noalias !4494
  %i.ay = icmp ne i64 %i.al, 0, !dbg !4576
  call void @llvm.assume(i1 %i.ay), !dbg !4578, !noalias !4494
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !4494
  %i.az = icmp eq i64 %i.au, 0, !dbg !4579
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !4579

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !4581
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !4583
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #40, !dbg !4584, !noalias !4587
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !4588

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4492, !noalias !4482
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !4493

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4589 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4589 ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4589
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !4590
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4594
  %i.be = zext nneg i16 %i.bd to i64, !dbg !4595
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !4596
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !4598 ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1, !dbg !4599    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4600), !dbg !4603
  %i.bi = load ptr, ptr %0, align 8, !dbg !4604, !alias.scope !4600, !noalias !4611, !nonnull !13, !noundef !13
  %i.bj = sub nsw i64 0, %i.bg, !dbg !4613
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !4618
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !4619
  %.val3.i = load i64, ptr %i.bl, align 8, !dbg !4625, !noalias !4626, !noundef !13 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3, !dbg !4627
  br i1 %i.bm, label %bb.k, label %bb.j, !dbg !4627

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44
          to label %.noexc14 unwind label %bb.f, !dbg !4627

.noexc14:                                         ; preds = %bb.j
  unreachable, !dbg !4627

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i, !dbg !4627
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !4627
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !4627, !noalias !4626, !noundef !13 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !4635 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4638
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !4641, !noalias !4645
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4648
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !4648 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !4652
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4654, !prof !1453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4635
  %.lcssa.i = phi i16 [ %i.bs, %bb.k ], [ %i.cj, %.lr.ph.i ], !dbg !4648
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4655
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !4658
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !4659
  %i.bw = and i64 %i.bv, %i.t, !dbg !4659         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !4660
  %i.by = load i8, ptr %i.bx, align 1, !dbg !4665, !noundef !13
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !4666
  br i1 %i.bz, label %bb.l, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4666, !prof !307

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4668
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4670
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !4670 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !4673
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !4675
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !4675
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4676
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4678

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %bb.k ]
  %i.cf = add i64 %i.ce, 16, !dbg !4679           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !4681
  %.sroa.0.0.i15 = and i64 %i.cg, %i.t, !dbg !4635 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4638
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !4641, !noalias !4645
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4648
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !4648 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !4652
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4654, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.l ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !4682
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !4685 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !4686
  %i.cn = and i64 %i.cm, %i.t, !dbg !4689
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4690
  store i8 %i.cl, ptr %i.co, align 1, !dbg !4693, !noalias !4494
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !4694
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !4694
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !4697, !noalias !4494
  %i.cr = load ptr, ptr %0, align 8, !dbg !4698, !alias.scope !4500, !noalias !4501, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !4701
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !4701
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !4702
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4704
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !4704
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4706
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !4708, !noalias !4494
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !4708, !noalias !4494
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !4502
  br i1 %i.cv, label %._crit_edge76.loopexit, label %.preheader, !dbg !4502

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !4710

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711), !dbg !4714
  %.val11 = load ptr, ptr %0, align 8, !dbg !4715 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4717
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4717

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cw = lshr i64 %i.l, 4, !dbg !4721
  %i.cx = and i64 %i.l, 15, !dbg !4726
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !4727
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !4727
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !4727 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4717
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4717
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !4717

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4717
  br label %bb.n, !dbg !4717

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4717
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !4717

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dh, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4717
  tail call void @llvm.assume(i1 %lcmp.mod171), !dbg !4717
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4728 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !4731
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4733
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4736
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !4736
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !4738
  br label %._crit_edge.i18, !dbg !4741

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !4741
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4742, !prof !2205

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dh, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4728 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !4731
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4733
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4736
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !4736
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !4738
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !4744  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4728
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !4728 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !4731
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4733
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4736
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !4736
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !4738
  %niter.next.1 = add i64 %niter, 2, !dbg !4717   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4717
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n, !dbg !4717

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4746

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4747
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4752, !noalias !4753
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4755
  store ptr null, ptr %i.dn, align 8, !dbg !4755, !noalias !4753
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4755
  store i64 8, ptr %i.do, align 8, !dbg !4755, !noalias !4753
  store ptr %0, ptr %i.a, align 8, !dbg !4755, !noalias !4753
  %i.dp = load i64, ptr %i.i, align 8, !dbg !4757, !alias.scope !4711, !noalias !4759, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !4760
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4764

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i66 = phi i64 [ %i.dq, %bb.w ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i66, 1, !dbg !4765
  %i.dr = load ptr, ptr %0, align 8, !dbg !4768, !noalias !4759, !nonnull !13, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i66, !dbg !4770
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !4772, !noalias !4759, !noundef !13
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !4772
  br i1 %.not.i2, label %bb.o, label %bb.w, !dbg !4775

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1, !dbg !4765
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !4776
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !4778 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4780

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.x, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4781), !dbg !4784
  %i.dw = load ptr, ptr %0, align 8, !dbg !4785, !alias.scope !4781, !noalias !4789, !nonnull !13, !noundef !13 ; 8 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !4791
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !4794
  %.val3.i20 = load i64, ptr %i.dy, align 8, !dbg !4798, !noalias !4799, !noundef !13 ; 3 uses
  %i.dz = icmp ult i64 %.val3.i20, %3, !dbg !4800
  br i1 %i.dz, label %bb.r, label %bb.p, !dbg !4800

bb.p:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44
          to label %.noexc22 unwind label %.loopexit.split-lp, !dbg !4800

.noexc22:                                         ; preds = %bb.p
  unreachable, !dbg !4800

.loopexit:                                        ; preds = %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.y, !dbg !4802, !noalias !4759

bb.r:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i20, !dbg !4800
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !4800
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !4800, !noalias !4799, !noundef !13 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4803, !noundef !13 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ec, !dbg !4804 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.07.i24, !dbg !4806
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.ed, align 1, !dbg !4809, !noalias !4813
  %i.ee = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !4816
  %i.ef = bitcast <16 x i1> %i.ee to i16, !dbg !4816 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ef, 0, !dbg !4820
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !4822, !prof !1453

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !4804
  %.lcssa.i29 = phi i16 [ %i.ef, %bb.r ], [ %i.ew, %.lr.ph.i33 ], !dbg !4816
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !4823
  %i.eh = zext nneg i16 %i.eg to i64, !dbg !4826
  %i.ei = add i64 %.sroa.0.0.lcssa.i28, %i.eh, !dbg !4827
  %i.ej = and i64 %i.ei, %.val9, !dbg !4827       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ej, !dbg !4828
  %i.el = load i8, ptr %i.ek, align 1, !dbg !4833, !noundef !13
  %i.em = icmp sgt i8 %i.el, -1, !dbg !4834
  br i1 %i.em, label %bb.s, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !4834, !prof !307

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dw, align 16, !dbg !4836
  %i.en = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer, !dbg !4838
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !4838 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.eo, 0, !dbg !4841
  %i.ep = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eo, i1 true), !dbg !4843
  %i.eq = zext nneg i16 %i.ep to i64, !dbg !4843
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !4844
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !4846

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.er = phi i64 [ %i.es, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.es = add i64 %i.er, 16, !dbg !4847           ; 2 uses
  %i.et = add i64 %i.es, %.sroa.0.010.i34, !dbg !4849
  %.sroa.0.0.i35 = and i64 %i.et, %.val9, !dbg !4804 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i35, !dbg !4806
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eu, align 1, !dbg !4809, !noalias !4813
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !4816
  %i.ew = bitcast <16 x i1> %i.ev to i16, !dbg !4816 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.ew, 0, !dbg !4820
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !4822, !prof !1497

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eq, %bb.s ], [ %i.ej, %._crit_edge.i27 ] ; 4 uses
  %i.ex = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24, !dbg !4850
  %i.ey = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !4854
  %i.ez = xor i64 %i.ey, %i.ex, !dbg !4857
  %.unshifted.i = and i64 %i.ez, %.val9, !dbg !4857
  %i.fa = icmp ult i64 %.unshifted.i, 16, !dbg !4857
  br i1 %i.fa, label %bb.t, label %bb.u, !dbg !4858, !prof !341

bb.t:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.fb = lshr i64 %i.ec, 57, !dbg !4860
  %i.fc = trunc nuw nsw i64 %i.fb to i8, !dbg !4863 ; 2 uses
  %i.fd = add i64 %.sroa.04.0.i66, -16, !dbg !4864
  %i.fe = and i64 %.val9, %i.fd, !dbg !4867
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.04.0.i66, !dbg !4868
  store i8 %i.fc, ptr %i.ff, align 1, !dbg !4871, !noalias !4759
  %i.fg = load ptr, ptr %0, align 8, !dbg !4872, !noalias !4759, !nonnull !13, !noundef !13
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe, !dbg !4874
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !4874
  store i8 %i.fc, ptr %i.fi, align 1, !dbg !4876, !noalias !4759
  br label %bb.w, !dbg !4877

bb.u:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !4878
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !4878
  %i.fj = getelementptr inbounds i8, ptr %i.dw, i64 %.neg13.i, !dbg !4880 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i5.i30, !dbg !4882 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !4886, !noalias !4759, !noundef !13
  %i.fm = lshr i64 %i.ec, 57, !dbg !4887
  %i.fn = trunc nuw nsw i64 %i.fm to i8, !dbg !4890 ; 2 uses
  %i.fo = add i64 %.sroa.0.0.i5.i30, -16, !dbg !4891
  %i.fp = and i64 %i.fo, %.val9, !dbg !4894
  store i8 %i.fn, ptr %i.fk, align 1, !dbg !4895, !noalias !4759
  %i.fq = load ptr, ptr %0, align 8, !dbg !4896, !noalias !4759, !nonnull !13, !noundef !13
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp, !dbg !4898
  %i.fs = getelementptr i8, ptr %i.fr, i64 16, !dbg !4898
  store i8 %i.fn, ptr %i.fs, align 1, !dbg !4900, !noalias !4759
  %i.ft = icmp eq i8 %i.fl, -1, !dbg !4901
  br i1 %i.ft, label %bb.v, label %bb.x, !dbg !4901
end_hunk_5
