Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.03?download=true
inline.NumInlined: 937
inline.NumDeleted: 447
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYBW_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg:bb.a
  %i.u = icmp sgt i8 %i.t, -1, !dbg !1284
  %.sroa.0.0.i.i.not70.i = or i1 %.not.i.i.i, %i.u, !dbg !1285 ; 2 uses
  %.not43.i = icmp eq i64 %i.m, 2, !dbg !1285     ; 2 uses
  br i1 %.sroa.0.0.i.i.not70.i, label %.preheader32.i, label %.preheader.i, !dbg !1286

.preheader32.i:                                   ; preds = %bb.k
  br i1 %.not43.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !1287

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not43.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph38.i, !dbg !1288

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.l
  %.sroa.01.0.i34.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader32.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i34.i, !dbg !1289 ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8, !dbg !1290
  %.val10.i = load ptr, ptr %i.w, align 8, !dbg !1290, !alias.scope !1220, !noalias !1221, !nonnull !379, !noundef !379
  %i.x = getelementptr i8, ptr %i.v, i64 16, !dbg !1290
  %.val11.i = load i64, ptr %i.x, align 8, !dbg !1290, !alias.scope !1220, !noalias !1221, !noundef !379
  %i.y = getelementptr i8, ptr %i.v, i64 -16, !dbg !1290
  %.val12.i = load ptr, ptr %i.y, align 8, !dbg !1290, !alias.scope !1222, !noalias !1223, !nonnull !379, !noundef !379
  %i.z = getelementptr i8, ptr %i.v, i64 -8, !dbg !1290
  %.val13.i = load i64, ptr %i.z, align 8, !dbg !1290, !alias.scope !1222, !noalias !1223, !noundef !379
  %i.aa = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef range(i64 0, -9223372036854775808) %.val11.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef range(i64 0, -9223372036854775808) %.val13.i), !dbg !1291, !noalias !1234 ; 2 uses
  %.not.i.i18.i = icmp ne i8 %i.aa, -2, !dbg !1292
  %i.ab = icmp slt i8 %i.aa, 0, !dbg !1293
  %.sroa.0.0.i.i19.i = and i1 %.not.i.i18.i, %i.ab, !dbg !1293
  br i1 %.sroa.0.0.i.i19.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %bb.l, !dbg !1290

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i34.i, 1, !dbg !1294 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.m, !dbg !1287
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !1287

.lr.ph38.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i37.i = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i37.i, !dbg !1295 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8, !dbg !1296
  %.val.i = load ptr, ptr %i.ae, align 8, !dbg !1296, !alias.scope !1220, !noalias !1221, !nonnull !379, !noundef !379
  %i.af = getelementptr i8, ptr %i.ad, i64 16, !dbg !1296
  %.val7.i = load i64, ptr %i.af, align 8, !dbg !1296, !alias.scope !1220, !noalias !1221, !noundef !379
  %i.ag = getelementptr i8, ptr %i.ad, i64 -16, !dbg !1296
  %.val8.i = load ptr, ptr %i.ag, align 8, !dbg !1296, !alias.scope !1222, !noalias !1223, !nonnull !379, !noundef !379
  %i.ah = getelementptr i8, ptr %i.ad, i64 -8, !dbg !1296
  %.val9.i = load i64, ptr %i.ah, align 8, !dbg !1296, !alias.scope !1222, !noalias !1223, !noundef !379
  %i.ai = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef range(i64 0, -9223372036854775808) %.val7.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef range(i64 0, -9223372036854775808) %.val9.i), !dbg !1297, !noalias !1236 ; 2 uses
  %.not.i.i20.i = icmp ne i8 %i.ai, -2, !dbg !1298
  %i.aj = icmp slt i8 %i.ai, 0, !dbg !1299
  %.sroa.0.0.i.i21.i = and i1 %.not.i.i20.i, %i.aj, !dbg !1299
  br i1 %.sroa.0.0.i.i21.i, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, !dbg !1296

bb.m:                                             ; preds = %.lr.ph38.i
  %i.ak = add nuw nsw i64 %.sroa.01.1.i37.i, 1, !dbg !1300 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ak, %i.m, !dbg !1288
  br i1 %exitcond46.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph38.i, !dbg !1288

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.m, %.lr.ph38.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i34.i, %.lr.ph.i ], [ %.sroa.01.1.i37.i, %.lr.ph38.i ], [ %i.m, %bb.m ], !dbg !1301 ; 5 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !1302
  tail call void @llvm.assume(i1 %i.al), !dbg !1303
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1304
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1304

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i23.i = icmp eq i64 %i.am, 0
  %or.cond.i = or i1 %.sroa.0.0.i.i.not70.i, %.not.i.i23.i, !dbg !1305
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !1305

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0), !dbg !1306
  %i.an = shl nuw nsw i64 %..i.i, 1, !dbg !1307
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !1308

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32), !dbg !1309 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !1310
  %i.ao = shl nuw nsw i64 %..i22.i, 1, !dbg !1311
  %i.ap = or disjoint i64 %i.ao, 1, !dbg !1311
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !1308

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader32.i, %bb.n, %bb.j
  %.sroa.0.0.i29.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader32.i ], [ %.sroa.0.0.i556266.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i29.i, 1, !dbg !1312
  %i.ar = or disjoint i64 %i.aq, 1, !dbg !1312
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !1313

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.as = phi i64 [ %i.am, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i556266.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i556266.i, !dbg !1314
  br label %.lr.ph.i.i.i, !dbg !1315

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1316
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !1317
  %i.aw = getelementptr [24 x i8], ptr %i.at, i64 %i.au, !dbg !1318
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !1315, !noalias !1238

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1319, !noalias !1238
  unreachable, !dbg !1319

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1320 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as, !dbg !1321
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !1321

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.ap, %bb.p ], [ %i.an, %bb.o ], !dbg !1322 ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1, !dbg !1323
  %i.ba = lshr i64 %.sroa.0.0.i32, 1, !dbg !1324
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1325 ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az, !dbg !1325
  %i.bc = add nuw i64 %i.ba, %factor, !dbg !1326
  %i.bd = mul i64 %i.bb, %.sroa.0.0, !dbg !1327
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !1328
  %i.bf = xor i64 %i.be, %i.bd, !dbg !1329
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false), !dbg !1330
  %i.bh = trunc nuw nsw i64 %i.bg to i8, !dbg !1329
  br label %bb.g, !dbg !1331

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1, !dbg !1332   ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi, !dbg !1333
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !1334, !noundef !379
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0, !dbg !1334
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1334

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], !dbg !1269 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], !dbg !1271 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !1335
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8, !dbg !1336
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !1337
  store i8 %.sroa.021.0, ptr %i.bm, align 1, !dbg !1338
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !1339

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi, !dbg !1340
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !1341, !noundef !379 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1, !dbg !1342           ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1, !dbg !1343  ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq, !dbg !1344    ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br, !dbg !1345
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bs, !dbg !1346 ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3, !dbg !1347
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135, !dbg !1348
  %i.bx = trunc i64 %i.bw to i1, !dbg !1348
  %or.cond3.i = or i1 %i.bu, %i.bx, !dbg !1348
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1348

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v, !dbg !1349

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1, !dbg !1350
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !1351

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w, !dbg !1352

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1, !dbg !1353
  %i.cb = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true), !dbg !1354
  %i.cc = trunc nuw nsw i64 %i.cb to i32, !dbg !1354
  %i.cd = shl nuw nsw i32 %i.cc, 1, !dbg !1355
  %i.ce = xor i32 %i.cd, 126, !dbg !1355
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !1356
  br label %bb.u, !dbg !1357

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bp, !dbg !1358
  %i.cg = or i64 %i.bq, 1, !dbg !1359
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true), !dbg !1360
  %i.ci = trunc nuw nsw i64 %i.ch to i32, !dbg !1360
  %i.cj = shl nuw nsw i32 %i.ci, 1, !dbg !1361
  %i.ck = xor i32 %i.cj, 126, !dbg !1361
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 384307168202282326) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !1362
  br label %bb.x, !dbg !1363

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYBX_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull %5), !dbg !1364
  %i.cl = shl nuw nsw i64 %i.br, 1, !dbg !1365
  %i.cm = or disjoint i64 %i.cl, 1, !dbg !1365
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !1351

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ], !dbg !1366 ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1, !dbg !1274
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !dbg !1274

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !1367
  %i.cp = lshr i64 %.sroa.018.0, 1, !dbg !1368
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0, !dbg !1369
  br label %bb.f, !dbg !1268

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1, !dbg !1370
  %.not30 = icmp eq i64 %i.cr, 0, !dbg !1370
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1371

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1, !dbg !1372
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true), !dbg !1373
  %i.cu = trunc nuw nsw i64 %i.ct to i32, !dbg !1373
  %i.cv = shl nuw nsw i32 %i.cu, 1, !dbg !1374
  %i.cw = xor i32 %i.cv, 126, !dbg !1374
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !1375
  br label %bb.ab, !dbg !1376

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1378
  br label %bb.ac, !dbg !1379

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1379
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB10_5flags6hiargsNtB2p_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB10_5files0EE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1380 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2, !dbg !1573
  br i1 %i.i, label %bb.ac, label %bb.b, !dbg !1573

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1, !dbg !1574
  %i.k = urem i64 4611686018427387904, %1, !dbg !1575
  %.not = icmp ne i64 %i.k, 0, !dbg !1576
  %i.l = zext i1 %.not to i64, !dbg !1576
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l, !dbg !1576 ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097, !dbg !1577
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !1577

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1578
  br label %bb.e, !dbg !1578

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1, !dbg !1579
  %i.p = sub nuw nsw i64 %1, %i.o, !dbg !1580
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 64), !dbg !1581
  br label %bb.e, !dbg !1582

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.n, %bb.c ], !dbg !1583 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1585
  br label %bb.f, !dbg !1586

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1587 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ], !dbg !1588 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ], !dbg !1589 ; 3 uses
  %i.q = icmp ult i64 %.sroa.09.0, %1, !dbg !1590 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.g, !dbg !1590

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit ], [ 0, %bb.f ], !dbg !1591 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit ], [ 1, %bb.f ], !dbg !1591 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 1, !dbg !1592
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !dbg !1592

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1593 ; 11 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1594 ; 7 uses
  %.not.i31 = icmp ult i64 %i.s, %.sroa.01.0, !dbg !1595
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1595

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1596

bb.j:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i64 %i.s, 2, !dbg !1597
  br i1 %i.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %bb.k, !dbg !1597

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120, !dbg !1598
  %i.w = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.v), !dbg !1599, !noalias !1546 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0, !dbg !1599
  %i.y = extractvalue { ptr, i64 } %i.w, 1, !dbg !1599
  %i.z = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t), !dbg !1600, !noalias !1547 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0, !dbg !1600
  %i.ab = extractvalue { ptr, i64 } %i.z, 1, !dbg !1600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1601, !noalias !1548
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y), !dbg !1602, !noalias !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1603, !noalias !1548
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !dbg !1604, !noalias !1547
  %i.ac = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !dbg !1605, !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1606, !noalias !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1606, !noalias !1548
  %i.ad = icmp ne i8 %i.ac, 1, !dbg !1607         ; 2 uses
  %.not27.i = icmp eq i64 %i.s, 2, !dbg !1608     ; 2 uses
  br i1 %i.ad, label %.preheader16.i, label %.preheader.i, !dbg !1609

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i, !dbg !1610

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i, !dbg !1611

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.ao, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.0.i18.i, !dbg !1612 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -120, !dbg !1613
  %i.ag = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae), !dbg !1614, !noalias !1551 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !1614
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !1614
  %i.aj = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af), !dbg !1615, !noalias !1547 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0, !dbg !1615
  %i.al = extractvalue { ptr, i64 } %i.aj, 1, !dbg !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1616, !noalias !1552
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai), !dbg !1617, !noalias !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1618, !noalias !1552
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al), !dbg !1619, !noalias !1547
  %i.am = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !1620, !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1621, !noalias !1552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1621, !noalias !1552
  %i.an = icmp eq i8 %i.am, 1, !dbg !1622
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %bb.l, !dbg !1623

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = add nuw nsw i64 %.sroa.01.0.i18.i, 1, !dbg !1624 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.s, !dbg !1610
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %.lr.ph.i, !dbg !1610

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.1.i21.i, !dbg !1625 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -120, !dbg !1626
  %i.ar = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap), !dbg !1627, !noalias !1555 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0, !dbg !1627
  %i.at = extractvalue { ptr, i64 } %i.ar, 1, !dbg !1627
  %i.au = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq), !dbg !1628, !noalias !1547 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0, !dbg !1628
  %i.aw = extractvalue { ptr, i64 } %i.au, 1, !dbg !1628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1629, !noalias !1556
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at), !dbg !1630, !noalias !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1631, !noalias !1556
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw), !dbg !1632, !noalias !1547
  %i.ax = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !1633, !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1634, !noalias !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1634, !noalias !1556
  %i.ay = icmp eq i8 %i.ax, 1, !dbg !1635
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, !dbg !1636

bb.m:                                             ; preds = %.lr.ph22.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i21.i, 1, !dbg !1637 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.az, %i.s, !dbg !1611
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %.lr.ph22.i, !dbg !1611

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph22.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.l ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %i.s, %bb.m ], !dbg !1638 ; 5 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.s, !dbg !1639
  call void @llvm.assume(i1 %i.ba), !dbg !1640
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1641
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1641

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i = or i1 %i.ad, %.not.i.i.i, !dbg !1642
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !1642

bb.o:                                             ; preds = %bb.i
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 %.sroa.01.0), !dbg !1643
  %i.bc = shl nuw nsw i64 %..i.i, 1, !dbg !1644
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1645

bb.p:                                             ; preds = %bb.i
  %..i7.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 32), !dbg !1646 ; 2 uses
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1647
  %i.bd = shl nuw nsw i64 %..i7.i, 1, !dbg !1648
  %i.be = or disjoint i64 %i.bd, 1, !dbg !1648
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1645

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i13.i, 1, !dbg !1649
  %i.bg = or disjoint i64 %i.bf, 1, !dbg !1649
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1650

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bh = phi i64 [ %i.bb, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.0.i394650.i, !dbg !1651
  br label %.lr.ph.i.i.i, !dbg !1652

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1653
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i, !dbg !1654
  %i.bl = getelementptr [120 x i8], ptr %i.bi, i64 %i.bj, !dbg !1655
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 15)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i unwind label %bb.q, !dbg !1652, !noalias !1547

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1656, !noalias !1547
  unreachable, !dbg !1656

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1657 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh, !dbg !1658
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i.i.i, !dbg !1658

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ], !dbg !1659 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1660
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1661
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1662 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1662
  %i.br = add nuw i64 %i.bp, %factor, !dbg !1663
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1664
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1665
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1666
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1667
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1666
  br label %bb.g, !dbg !1668

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1, !dbg !1669   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx, !dbg !1670
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1671, !noundef !379
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1671
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1671

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], !dbg !1587 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], !dbg !1589 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa, !dbg !1672
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1673
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa, !dbg !1674
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1675
  br i1 %i.q, label %bb.y, label %bb.z, !dbg !1676

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx, !dbg !1677
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1678, !noundef !379 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1679           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1, !dbg !1680  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1681    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1682
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.ch, !dbg !1683 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1684
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135, !dbg !1685
  %i.cm = trunc i64 %i.cl to i1, !dbg !1685
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1685
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1685

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1686

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1687
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, !dbg !1688

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1689

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1690
  %i.cq = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1691
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1691
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1692
  %i.ct = xor i32 %i.cs, 126, !dbg !1692
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1693
  br label %bb.u, !dbg !1694

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.ci, i64 %i.ce, !dbg !1695
  %i.cv = or i64 %i.cf, 1, !dbg !1696
  %i.cw = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1697
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1697
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1698
  %i.cz = xor i32 %i.cy, 126, !dbg !1698
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 76861433640456466) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1699
  br label %bb.x, !dbg !1700

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB11_5flags6hiargsNtB2q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_5files0EE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1701
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1702
  %i.db = or disjoint i64 %i.da, 1, !dbg !1702
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, !dbg !1688

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1703 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !1592
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !dbg !1592

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !1704
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1705
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1706
  br label %bb.f, !dbg !1586

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1, !dbg !1707
  %.not30 = icmp eq i64 %i.dg, 0, !dbg !1707
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1708

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1, !dbg !1709
  %i.di = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true), !dbg !1710
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !1710
  %i.dk = shl nuw nsw i32 %i.dj, 1, !dbg !1711
  %i.dl = xor i32 %i.dk, 126, !dbg !1711
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1712
  br label %bb.ab, !dbg !1713

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1715
  br label %bb.ac, !dbg !1716

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1716
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB10_5flags6hiargsNtB2p_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB10_6search0EE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1717 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2, !dbg !1910
  br i1 %i.i, label %bb.ac, label %bb.b, !dbg !1910

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1, !dbg !1911
  %i.k = urem i64 4611686018427387904, %1, !dbg !1912
  %.not = icmp ne i64 %i.k, 0, !dbg !1913
  %i.l = zext i1 %.not to i64, !dbg !1913
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l, !dbg !1913 ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097, !dbg !1914
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !1914

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1915
  br label %bb.e, !dbg !1915

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1, !dbg !1916
  %i.p = sub nuw nsw i64 %1, %i.o, !dbg !1917
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 64), !dbg !1918
  br label %bb.e, !dbg !1919

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.n, %bb.c ], !dbg !1920 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1922
  br label %bb.f, !dbg !1923

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1924 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ], !dbg !1925 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ], !dbg !1926 ; 3 uses
  %i.q = icmp ult i64 %.sroa.09.0, %1, !dbg !1927 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.g, !dbg !1927

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit ], [ 0, %bb.f ], !dbg !1928 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit ], [ 1, %bb.f ], !dbg !1928 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 1, !dbg !1929
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !dbg !1929

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1930 ; 11 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1931 ; 7 uses
  %.not.i31 = icmp ult i64 %i.s, %.sroa.01.0, !dbg !1932
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1932

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1933

bb.j:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i64 %i.s, 2, !dbg !1934
  br i1 %i.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %bb.k, !dbg !1934

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120, !dbg !1935
  %i.w = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.v), !dbg !1936, !noalias !1883 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0, !dbg !1936
  %i.y = extractvalue { ptr, i64 } %i.w, 1, !dbg !1936
  %i.z = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t), !dbg !1937, !noalias !1884 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0, !dbg !1937
  %i.ab = extractvalue { ptr, i64 } %i.z, 1, !dbg !1937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1938, !noalias !1885
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y), !dbg !1939, !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1940, !noalias !1885
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !dbg !1941, !noalias !1884
  %i.ac = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !dbg !1942, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1943, !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1943, !noalias !1885
  %i.ad = icmp ne i8 %i.ac, 1, !dbg !1944         ; 2 uses
  %.not27.i = icmp eq i64 %i.s, 2, !dbg !1945     ; 2 uses
  br i1 %i.ad, label %.preheader16.i, label %.preheader.i, !dbg !1946

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i, !dbg !1947

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i, !dbg !1948

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.ao, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.0.i18.i, !dbg !1949 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -120, !dbg !1950
  %i.ag = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae), !dbg !1951, !noalias !1888 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !1951
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !1951
  %i.aj = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af), !dbg !1952, !noalias !1884 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0, !dbg !1952
  %i.al = extractvalue { ptr, i64 } %i.aj, 1, !dbg !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1953, !noalias !1889
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai), !dbg !1954, !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1955, !noalias !1889
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al), !dbg !1956, !noalias !1884
  %i.am = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !1957, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1958, !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1958, !noalias !1889
  %i.an = icmp eq i8 %i.am, 1, !dbg !1959
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %bb.l, !dbg !1960

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = add nuw nsw i64 %.sroa.01.0.i18.i, 1, !dbg !1961 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.s, !dbg !1947
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %.lr.ph.i, !dbg !1947

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.1.i21.i, !dbg !1962 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -120, !dbg !1963
  %i.ar = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap), !dbg !1964, !noalias !1892 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0, !dbg !1964
  %i.at = extractvalue { ptr, i64 } %i.ar, 1, !dbg !1964
  %i.au = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq), !dbg !1965, !noalias !1884 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0, !dbg !1965
  %i.aw = extractvalue { ptr, i64 } %i.au, 1, !dbg !1965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1966, !noalias !1893
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at), !dbg !1967, !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1968, !noalias !1893
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw), !dbg !1969, !noalias !1884
  %i.ax = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !1970, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1971, !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1971, !noalias !1893
  %i.ay = icmp eq i8 %i.ax, 1, !dbg !1972
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, !dbg !1973

bb.m:                                             ; preds = %.lr.ph22.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i21.i, 1, !dbg !1974 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.az, %i.s, !dbg !1948
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %.lr.ph22.i, !dbg !1948

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph22.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.l ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %i.s, %bb.m ], !dbg !1975 ; 5 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.s, !dbg !1976
  call void @llvm.assume(i1 %i.ba), !dbg !1977
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1978
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1978

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i = or i1 %i.ad, %.not.i.i.i, !dbg !1979
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !1979

bb.o:                                             ; preds = %bb.i
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 %.sroa.01.0), !dbg !1980
  %i.bc = shl nuw nsw i64 %..i.i, 1, !dbg !1981
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1982

bb.p:                                             ; preds = %bb.i
  %..i7.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 32), !dbg !1983 ; 2 uses
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1984
  %i.bd = shl nuw nsw i64 %..i7.i, 1, !dbg !1985
  %i.be = or disjoint i64 %i.bd, 1, !dbg !1985
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1982

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i13.i, 1, !dbg !1986
  %i.bg = or disjoint i64 %i.bf, 1, !dbg !1986
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1987

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bh = phi i64 [ %i.bb, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.0.i394650.i, !dbg !1988
  br label %.lr.ph.i.i.i, !dbg !1989

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1990
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i, !dbg !1991
  %i.bl = getelementptr [120 x i8], ptr %i.bi, i64 %i.bj, !dbg !1992
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 15)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i unwind label %bb.q, !dbg !1989, !noalias !1884

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1993, !noalias !1884
  unreachable, !dbg !1993

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1994 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh, !dbg !1995
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i.i.i, !dbg !1995

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ], !dbg !1996 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1997
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1998
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1999 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1999
  %i.br = add nuw i64 %i.bp, %factor, !dbg !2000
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !2001
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !2002
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !2003
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !2004
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !2003
  br label %bb.g, !dbg !2005

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1, !dbg !2006   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx, !dbg !2007
  %i.bz = load i8, ptr %i.by, align 1, !dbg !2008, !noundef !379
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !2008
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !2008

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], !dbg !1924 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], !dbg !1926 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa, !dbg !2009
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !2010
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa, !dbg !2011
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !2012
  br i1 %i.q, label %bb.y, label %bb.z, !dbg !2013

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx, !dbg !2014
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !2015, !noundef !379 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !2016           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1, !dbg !2017  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !2018    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !2019
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.ch, !dbg !2020 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !2021
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135, !dbg !2022
  %i.cm = trunc i64 %i.cl to i1, !dbg !2022
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !2022
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !2022

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !2023

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !2024
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, !dbg !2025

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !2026

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !2027
  %i.cq = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !2028
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !2028
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !2029
  %i.ct = xor i32 %i.cs, 126, !dbg !2029
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2030
  br label %bb.u, !dbg !2031

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.ci, i64 %i.ce, !dbg !2032
  %i.cv = or i64 %i.cf, 1, !dbg !2033
  %i.cw = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !2034
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !2034
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !2035
  %i.cz = xor i32 %i.cy, 126, !dbg !2035
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 76861433640456466) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2036
  br label %bb.x, !dbg !2037

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB11_5flags6hiargsNtB2q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_6search0EE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2038
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !2039
  %i.db = or disjoint i64 %i.da, 1, !dbg !2039
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, !dbg !2025

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !2040 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !1929
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !dbg !1929

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !2041
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !2042
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !2043
  br label %bb.f, !dbg !1923

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1, !dbg !2044
  %.not30 = icmp eq i64 %i.dg, 0, !dbg !2044
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !2045

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1, !dbg !2046
  %i.di = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true), !dbg !2047
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !2047
  %i.dk = shl nuw nsw i32 %i.dj, 1, !dbg !2048
  %i.dl = xor i32 %i.dk, 126, !dbg !2048
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2049
  br label %bb.ab, !dbg !2050

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2052
  br label %bb.ac, !dbg !2053

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !2053
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2U_15HyperlinkFormatNtB2W_4Flag11doc_choices7CHOICES00E0EB2Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2054 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !2219
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !2219

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !2220
  %i.e = urem i64 4611686018427387904, %1, !dbg !2221
  %.not = icmp ne i64 %i.e, 0, !dbg !2222
  %i.f = zext i1 %.not to i64, !dbg !2222
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !2222 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !2223
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !2223

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !2224
  br label %bb.e, !dbg !2224

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !2225
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !2226
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !2227
  br label %bb.e, !dbg !2228

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !2229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2231
  br label %bb.f, !dbg !2232

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !2233 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.y ], !dbg !2234 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ], !dbg !2235 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !2236 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !2236

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit ], [ 0, %bb.f ], !dbg !2237 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit ], [ 1, %bb.f ], !dbg !2237 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !2238
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !2238

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !2239 ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !2240 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !2241
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !2241

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !2242

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !2243
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %bb.k, !dbg !2243

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104, !dbg !2244
  %.val14.i = load i16, ptr %i.p, align 8, !dbg !2244, !range !492, !alias.scope !2196, !noalias !2197, !noundef !379 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 106, !dbg !2244
  %.val15.i = load i16, ptr %i.q, align 2, !dbg !2244, !alias.scope !2196, !noalias !2197 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 48, !dbg !2244
  %.val16.i = load i16, ptr %i.r, align 8, !dbg !2244, !range !492, !alias.scope !2196, !noalias !2197, !noundef !379
  %i.s = getelementptr i8, ptr %i.n, i64 50, !dbg !2244
  %.val17.i = load i16, ptr %i.s, align 2, !dbg !2244, !alias.scope !2196, !noalias !2197
  %i.t = trunc nuw i16 %.val14.i to i1, !dbg !2245
  %i.u = trunc nuw i16 %.val16.i to i1, !dbg !2246
  %.sroa.0.0.i4.i.i = select i1 %i.u, i16 %.val17.i, i16 32767, !dbg !2246
  %i.v = icmp slt i16 %.val15.i, %.sroa.0.0.i4.i.i, !dbg !2247
  %i.w = select i1 %i.t, i1 %i.v, i1 false, !dbg !2245 ; 2 uses
  %.not40.i = icmp eq i64 %i.m, 2, !dbg !2248     ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader29.i, !dbg !2249

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !2250

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph35.i, !dbg !2251

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val13.i = phi i16 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader29.i ], !dbg !2252
  %.val12.i = phi i16 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader29.i ], !dbg !2252
  %.sroa.01.0.i31.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i, !dbg !2253 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !2252
  %.val10.i = load i16, ptr %i.y, align 8, !dbg !2252, !range !492, !alias.scope !2196, !noalias !2197, !noundef !379 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 50, !dbg !2252
  %.val11.i = load i16, ptr %i.z, align 2, !dbg !2252, !alias.scope !2196, !noalias !2197 ; 2 uses
  %i.aa = trunc nuw i16 %.val10.i to i1, !dbg !2254
  %i.ab = trunc nuw i16 %.val12.i to i1, !dbg !2255
  %.sroa.0.0.i4.i18.i = select i1 %i.ab, i16 %.val13.i, i16 32767, !dbg !2255
  %i.ac = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i18.i, !dbg !2256
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !2254
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %bb.l, !dbg !2252

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i31.i, 1, !dbg !2257 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m, !dbg !2250
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %.lr.ph.i, !dbg !2250

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ], !dbg !2258
  %.sroa.01.1.i34.i = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i, !dbg !2259 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !2258
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !2258, !range !492, !alias.scope !2196, !noalias !2197, !noundef !379
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !2258
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !2258, !alias.scope !2196, !noalias !2197 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !2260
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !2261
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !2260
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, !dbg !2258

bb.m:                                             ; preds = %.lr.ph35.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i34.i, 1, !dbg !2262 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.al, %i.m, !dbg !2251
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %.lr.ph35.i, !dbg !2251

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.m, %bb.l ], !dbg !2263 ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2264
  tail call void @llvm.assume(i1 %i.am), !dbg !2265
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2266
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !2266

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  %or.cond.not.i = and i1 %i.w, %.not.i.i.i, !dbg !2267
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, !dbg !2267

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !2268
  %i.ao = shl nuw nsw i64 %..i.i, 1, !dbg !2269
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !2270

bb.p:                                             ; preds = %bb.i
  %..i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !2271 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i20.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2272
  %i.ap = shl nuw nsw i64 %..i20.i, 1, !dbg !2273
  %i.aq = or disjoint i64 %i.ap, 1, !dbg !2273
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !2270

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader29.i, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i616872.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i26.i, 1, !dbg !2274
  %i.as = or disjoint i64 %i.ar, 1, !dbg !2274
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !2275

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.at = phi i64 [ %i.an, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i616872.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i616872.i, !dbg !2276
  br label %.lr.ph.i.i.i, !dbg !2277

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.az, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2278
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2279
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !2280
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !2277, !noalias !2197

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2281, !noalias !2197
  unreachable, !dbg !2281

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2282 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %i.at, !dbg !2283
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !2283

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.as, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ], !dbg !2284 ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1, !dbg !2285
  %i.bb = lshr i64 %.sroa.0.0.i32, 1, !dbg !2286
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2287 ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba, !dbg !2287
  %i.bd = add nuw nsw i64 %i.bb, %factor, !dbg !2288
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !2289
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !2290
  %i.bg = xor i64 %i.bf, %i.be, !dbg !2291
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !2292
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !2291
  br label %bb.g, !dbg !2293

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit
  %.sroa.02.136 = phi i64 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bj = add i64 %.sroa.02.136, -1, !dbg !2294   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj, !dbg !2295
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !2296, !noundef !379
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0, !dbg !2296
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !2296

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], !dbg !2233 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], !dbg !2235 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2297
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8, !dbg !2298
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2299
  store i8 %.sroa.021.0, ptr %i.bn, align 1, !dbg !2300
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !2301

bb.r:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj, !dbg !2302
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !2303, !noundef !379 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !2304           ; 5 uses
  %i.br = lshr i64 %.sroa.023.135, 1, !dbg !2305  ; 3 uses
  %i.bs = add nuw i64 %i.bq, %i.br, !dbg !2306    ; 5 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs, !dbg !2307
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bt, !dbg !2308 ; 3 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3, !dbg !2309
  %i.bw = trunc i64 %.sroa.023.135 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.135, !dbg !2310
  %i.by = trunc i64 %i.bx to i1, !dbg !2310
  %or.cond3.i = or i1 %i.bv, %i.by, !dbg !2310
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !2310

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !2311

bb.t:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bs, 1, !dbg !2312
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, !dbg !2313

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bw, label %bb.x, label %bb.w, !dbg !2314

bb.v:                                             ; preds = %bb.s
  %i.cb = or i64 %i.bq, 1, !dbg !2315
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !2316
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !2316
  %i.ce = shl nuw nsw i32 %i.cd, 1, !dbg !2317
  %i.cf = xor i32 %i.ce, 126, !dbg !2317
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2318
  br label %bb.u, !dbg !2319

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bq, !dbg !2320
  %i.ch = or i64 %i.br, 1, !dbg !2321
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true), !dbg !2322
  %i.cj = trunc nuw nsw i64 %i.ci to i32, !dbg !2322
  %i.ck = shl nuw nsw i32 %i.cj, 1, !dbg !2323
  %i.cl = xor i32 %i.ck, 126, !dbg !2323
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 164703072086692426) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2324
  br label %bb.x, !dbg !2325

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag11doc_choices7CHOICES00E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2326
  %i.cm = shl nuw nsw i64 %i.bs, 1, !dbg !2327
  %i.cn = or disjoint i64 %i.cm, 1, !dbg !2327
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, !dbg !2313

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cn, %bb.x ], [ %i.ca, %bb.t ], !dbg !2328 ; 2 uses
  %i.co = icmp ugt i64 %i.bj, 1, !dbg !2238
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !dbg !2238

bb.y:                                             ; preds = %._crit_edge
  %i.cp = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !2329
  %i.cq = lshr i64 %.sroa.018.0, 1, !dbg !2330
  %i.cr = add nuw i64 %i.cq, %.sroa.09.0, !dbg !2331
  br label %bb.f, !dbg !2232

bb.z:                                             ; preds = %._crit_edge
  %i.cs = and i64 %.sroa.023.1.lcssa, 1, !dbg !2332
  %.not30 = icmp eq i64 %i.cs, 0, !dbg !2332
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !2333

bb.aa:                                            ; preds = %bb.z
  %i.ct = or i64 %1, 1, !dbg !2334
  %i.cu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true), !dbg !2335
  %i.cv = trunc nuw nsw i64 %i.cu to i32, !dbg !2335
  %i.cw = shl nuw nsw i32 %i.cv, 1, !dbg !2336
  %i.cx = xor i32 %i.cw, 126, !dbg !2336
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2337
  br label %bb.ab, !dbg !2338

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2340
  br label %bb.ac, !dbg !2341

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !2341
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2U_15HyperlinkFormatNtB2W_4Flag8doc_long3DOC00E0EB2Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2342 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !2507
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !2507

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !2508
  %i.e = urem i64 4611686018427387904, %1, !dbg !2509
  %.not = icmp ne i64 %i.e, 0, !dbg !2510
  %i.f = zext i1 %.not to i64, !dbg !2510
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !2510 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !2511
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !2511

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !2512
  br label %bb.e, !dbg !2512

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !2513
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !2514
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !2515
  br label %bb.e, !dbg !2516

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !2517 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2519
  br label %bb.f, !dbg !2520

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !2521 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.y ], !dbg !2522 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ], !dbg !2523 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !2524 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !2524

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit ], [ 0, %bb.f ], !dbg !2525 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit ], [ 1, %bb.f ], !dbg !2525 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !2526
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !2526

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !2527 ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !2528 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !2529
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !2529

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !2530

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !2531
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %bb.k, !dbg !2531

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104, !dbg !2532
  %.val14.i = load i16, ptr %i.p, align 8, !dbg !2532, !range !492, !alias.scope !2484, !noalias !2485, !noundef !379 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 106, !dbg !2532
  %.val15.i = load i16, ptr %i.q, align 2, !dbg !2532, !alias.scope !2484, !noalias !2485 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 48, !dbg !2532
  %.val16.i = load i16, ptr %i.r, align 8, !dbg !2532, !range !492, !alias.scope !2484, !noalias !2485, !noundef !379
  %i.s = getelementptr i8, ptr %i.n, i64 50, !dbg !2532
  %.val17.i = load i16, ptr %i.s, align 2, !dbg !2532, !alias.scope !2484, !noalias !2485
  %i.t = trunc nuw i16 %.val14.i to i1, !dbg !2533
  %i.u = trunc nuw i16 %.val16.i to i1, !dbg !2534
  %.sroa.0.0.i4.i.i = select i1 %i.u, i16 %.val17.i, i16 32767, !dbg !2534
  %i.v = icmp slt i16 %.val15.i, %.sroa.0.0.i4.i.i, !dbg !2535
  %i.w = select i1 %i.t, i1 %i.v, i1 false, !dbg !2533 ; 2 uses
  %.not40.i = icmp eq i64 %i.m, 2, !dbg !2536     ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader29.i, !dbg !2537

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !2538

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph35.i, !dbg !2539

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val13.i = phi i16 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader29.i ], !dbg !2540
  %.val12.i = phi i16 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader29.i ], !dbg !2540
  %.sroa.01.0.i31.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i, !dbg !2541 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !2540
  %.val10.i = load i16, ptr %i.y, align 8, !dbg !2540, !range !492, !alias.scope !2484, !noalias !2485, !noundef !379 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 50, !dbg !2540
  %.val11.i = load i16, ptr %i.z, align 2, !dbg !2540, !alias.scope !2484, !noalias !2485 ; 2 uses
  %i.aa = trunc nuw i16 %.val10.i to i1, !dbg !2542
  %i.ab = trunc nuw i16 %.val12.i to i1, !dbg !2543
  %.sroa.0.0.i4.i18.i = select i1 %i.ab, i16 %.val13.i, i16 32767, !dbg !2543
  %i.ac = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i18.i, !dbg !2544
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !2542
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %bb.l, !dbg !2540

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i31.i, 1, !dbg !2545 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m, !dbg !2538
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %.lr.ph.i, !dbg !2538

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ], !dbg !2546
  %.sroa.01.1.i34.i = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i, !dbg !2547 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !2546
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !2546, !range !492, !alias.scope !2484, !noalias !2485, !noundef !379
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !2546
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !2546, !alias.scope !2484, !noalias !2485 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !2548
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !2549
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !2548
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, !dbg !2546

bb.m:                                             ; preds = %.lr.ph35.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i34.i, 1, !dbg !2550 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.al, %i.m, !dbg !2539
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %.lr.ph35.i, !dbg !2539

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.m, %bb.l ], !dbg !2551 ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2552
  tail call void @llvm.assume(i1 %i.am), !dbg !2553
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2554
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !2554

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  %or.cond.not.i = and i1 %i.w, %.not.i.i.i, !dbg !2555
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, !dbg !2555

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !2556
  %i.ao = shl nuw nsw i64 %..i.i, 1, !dbg !2557
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2558

bb.p:                                             ; preds = %bb.i
  %..i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !2559 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i20.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2560
  %i.ap = shl nuw nsw i64 %..i20.i, 1, !dbg !2561
  %i.aq = or disjoint i64 %i.ap, 1, !dbg !2561
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2558

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader29.i, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i616872.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i26.i, 1, !dbg !2562
  %i.as = or disjoint i64 %i.ar, 1, !dbg !2562
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2563

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.at = phi i64 [ %i.an, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i616872.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i616872.i, !dbg !2564
  br label %.lr.ph.i.i.i, !dbg !2565

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.az, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2566
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2567
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !2568
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !2565, !noalias !2485

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2569, !noalias !2485
  unreachable, !dbg !2569

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2570 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %i.at, !dbg !2571
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !2571

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.as, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ], !dbg !2572 ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1, !dbg !2573
  %i.bb = lshr i64 %.sroa.0.0.i32, 1, !dbg !2574
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2575 ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba, !dbg !2575
  %i.bd = add nuw nsw i64 %i.bb, %factor, !dbg !2576
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !2577
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !2578
  %i.bg = xor i64 %i.bf, %i.be, !dbg !2579
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !2580
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !2579
  br label %bb.g, !dbg !2581

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit
  %.sroa.02.136 = phi i64 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bj = add i64 %.sroa.02.136, -1, !dbg !2582   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj, !dbg !2583
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !2584, !noundef !379
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0, !dbg !2584
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !2584

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], !dbg !2521 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], !dbg !2523 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2585
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8, !dbg !2586
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2587
  store i8 %.sroa.021.0, ptr %i.bn, align 1, !dbg !2588
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !2589

bb.r:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj, !dbg !2590
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !2591, !noundef !379 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !2592           ; 5 uses
  %i.br = lshr i64 %.sroa.023.135, 1, !dbg !2593  ; 3 uses
  %i.bs = add nuw i64 %i.bq, %i.br, !dbg !2594    ; 5 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs, !dbg !2595
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bt, !dbg !2596 ; 3 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3, !dbg !2597
  %i.bw = trunc i64 %.sroa.023.135 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.135, !dbg !2598
  %i.by = trunc i64 %i.bx to i1, !dbg !2598
  %or.cond3.i = or i1 %i.bv, %i.by, !dbg !2598
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !2598

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !2599

bb.t:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bs, 1, !dbg !2600
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, !dbg !2601

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bw, label %bb.x, label %bb.w, !dbg !2602

bb.v:                                             ; preds = %bb.s
  %i.cb = or i64 %i.bq, 1, !dbg !2603
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !2604
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !2604
  %i.ce = shl nuw nsw i32 %i.cd, 1, !dbg !2605
  %i.cf = xor i32 %i.ce, 126, !dbg !2605
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2606
  br label %bb.u, !dbg !2607

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bq, !dbg !2608
  %i.ch = or i64 %i.br, 1, !dbg !2609
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true), !dbg !2610
  %i.cj = trunc nuw nsw i64 %i.ci to i32, !dbg !2610
  %i.ck = shl nuw nsw i32 %i.cj, 1, !dbg !2611
  %i.cl = xor i32 %i.ck, 126, !dbg !2611
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 164703072086692426) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2612
  br label %bb.x, !dbg !2613

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag8doc_long3DOC00E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2614
  %i.cm = shl nuw nsw i64 %i.bs, 1, !dbg !2615
  %i.cn = or disjoint i64 %i.cm, 1, !dbg !2615
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, !dbg !2601

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cn, %bb.x ], [ %i.ca, %bb.t ], !dbg !2616 ; 2 uses
  %i.co = icmp ugt i64 %i.bj, 1, !dbg !2526
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !dbg !2526

bb.y:                                             ; preds = %._crit_edge
  %i.cp = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !2617
  %i.cq = lshr i64 %.sroa.018.0, 1, !dbg !2618
  %i.cr = add nuw i64 %i.cq, %.sroa.09.0, !dbg !2619
  br label %bb.f, !dbg !2520

bb.z:                                             ; preds = %._crit_edge
  %i.cs = and i64 %.sroa.023.1.lcssa, 1, !dbg !2620
  %.not30 = icmp eq i64 %i.cs, 0, !dbg !2620
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !2621

bb.aa:                                            ; preds = %bb.z
  %i.ct = or i64 %1, 1, !dbg !2622
  %i.cu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true), !dbg !2623
  %i.cv = trunc nuw nsw i64 %i.cu to i32, !dbg !2623
  %i.cw = shl nuw nsw i32 %i.cv, 1, !dbg !2624
  %i.cx = xor i32 %i.cw, 126, !dbg !2624
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2625
  br label %bb.ab, !dbg !2626

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2628
  br label %bb.ac, !dbg !2629

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !2629
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB11_5flags6hiargsNtB3q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_5files0EEs2_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2630 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !2815
  br i1 %i.c, label %bb.an, label %bb.b, !dbg !2815

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !2816
  %i.e = urem i64 4611686018427387904, %1, !dbg !2817
  %.not = icmp ne i64 %i.e, 0, !dbg !2818
  %i.f = zext i1 %.not to i64, !dbg !2818
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !2818 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !2819
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !2819

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !2820
  br label %bb.e, !dbg !2820

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !2821
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !2822
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !2823
  br label %bb.e, !dbg !2824

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !2825 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2827
  br label %bb.f, !dbg !2828

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aj ], !dbg !2829 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aj ], !dbg !2830 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aj ], !dbg !2831 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !2832 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !2832

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit ], [ 0, %bb.f ], !dbg !2833 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit ], [ 1, %bb.f ], !dbg !2833 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !2834
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !2834

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !2835 ; 14 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0, !dbg !2836 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790), !dbg !2837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791), !dbg !2837
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !2838
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !2838

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.z, label %bb.y, !dbg !2839

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !2840
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %bb.k, !dbg !2840

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !dbg !2841, !alias.scope !2791, !noalias !2792, !nonnull !379, !align !381, !noundef !379
  %i.p = getelementptr i8, ptr %i.n, i64 256, !dbg !2841
  %.val17.i = load i64, ptr %i.p, align 8, !dbg !2841, !alias.scope !2790, !noalias !2793 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 264, !dbg !2841
  %.val18.i = load i32, ptr %i.q, align 8, !dbg !2841, !range !500, !alias.scope !2790, !noalias !2793, !noundef !379 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 120, !dbg !2841
  %.val19.i = load i64, ptr %i.r, align 8, !dbg !2841, !alias.scope !2790, !noalias !2793 ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 128, !dbg !2841
  %.val20.i = load i32, ptr %i.s, align 8, !dbg !2841, !range !500, !alias.scope !2790, !noalias !2793, !noundef !379 ; 2 uses
  %.val.i.i = load ptr, ptr %.val16.i, align 8, !dbg !2842, !noalias !2794 ; 15 uses
  %.not.i.i.i = icmp eq i32 %.val18.i, -1, !dbg !2843
  %.not19.i.i.i = icmp eq i32 %.val20.i, -1, !dbg !2843 ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !dbg !2844

bb.l:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, !dbg !2844

bb.m:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %.preheader65.i, label %bb.n, !dbg !2844

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = load i8, ptr %.val.i.i, align 1, !dbg !2845, !range !501, !noalias !2794, !noundef !379
  %i.u = trunc nuw i8 %i.t to i1, !dbg !2845
  br i1 %i.u, label %.preheader.i, label %.preheader65.i, !dbg !2845

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i: ; preds = %bb.l
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %.val17.i, i64 %.val19.i), !dbg !2846
  %i.w = icmp eq i64 %.val17.i, %.val19.i, !dbg !2847
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %.val18.i, i32 %.val20.i), !dbg !2847
  %.sroa.0.0.i.i.i = select i1 %i.w, i8 %i.x, i8 %i.v, !dbg !2847 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !2845, !range !501, !noalias !2794, !noundef !379 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1, !dbg !2845
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.z, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !2845
  %i.aa = icmp eq i8 %spec.select.i.i, -1, !dbg !2848
  br i1 %i.aa, label %.preheader.i, label %.preheader65.i, !dbg !2849

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = load i8, ptr %.val.i.i, align 1, !dbg !2845, !range !501, !noalias !2794, !noundef !379
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !2845
  br i1 %i.ac, label %.preheader65.i, label %.preheader.i, !dbg !2845

.preheader65.i:                                   ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, %bb.n, %bb.m
  %.not83.i = icmp eq i64 %i.m, 2, !dbg !2850
  br i1 %.not83.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2850

.preheader.i:                                     ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, %bb.n
  %i.ad = phi i8 [ 0, %bb.o ], [ %i.y, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ 1, %bb.n ] ; 3 uses
  %.not84.i = icmp eq i64 %i.m, 2, !dbg !2851
  br i1 %.not84.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i.preheader, !dbg !2851

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %.lr.ph74.i, !dbg !2852

.lr.ph.i:                                         ; preds = %.preheader65.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i
  %.val15.i = phi i32 [ %.val13.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.val18.i, %.preheader65.i ], !dbg !2853 ; 2 uses
  %.val14.i = phi i64 [ %.val12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.val17.i, %.preheader65.i ], !dbg !2853 ; 2 uses
  %.sroa.01.0.i67.i = phi i64 [ %i.au, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ 2, %.preheader65.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.0.i67.i, !dbg !2854 ; 2 uses
  %i.ag = add nsw i64 %.sroa.01.0.i67.i, -1, !dbg !2855
  %i.ah = icmp samesign ult i64 %i.ag, %i.m, !dbg !2856
  tail call void @llvm.assume(i1 %i.ah), !dbg !2857
  %i.ai = getelementptr i8, ptr %i.af, i64 120, !dbg !2853
  %.val12.i = load i64, ptr %i.ai, align 8, !dbg !2853, !alias.scope !2790, !noalias !2793 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 128, !dbg !2853
  %.val13.i = load i32, ptr %i.aj, align 8, !dbg !2853, !range !500, !alias.scope !2790, !noalias !2793, !noundef !379 ; 3 uses
  %.not.i.i22.i = icmp eq i32 %.val13.i, -1, !dbg !2858
  %.not19.i.i23.i = icmp eq i32 %.val15.i, -1, !dbg !2858 ; 2 uses
  br i1 %.not.i.i22.i, label %bb.q, label %bb.p, !dbg !2859

bb.p:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %bb.s, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, !dbg !2859

bb.q:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, label %bb.r, !dbg !2859

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ak = load i8, ptr %.val.i.i, align 1, !dbg !2860, !range !501, !noalias !2794, !noundef !379
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !2860
  br i1 %i.al, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, !dbg !2860

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i: ; preds = %bb.p
  %i.am = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !2861
  %i.an = icmp eq i64 %.val12.i, %.val14.i, !dbg !2862
  %i.ao = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !2862
  %.sroa.0.0.i.i24.i = select i1 %i.an, i8 %i.ao, i8 %i.am, !dbg !2862 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ap = load i8, ptr %.val.i.i, align 1, !dbg !2860, !range !501, !noalias !2794, !noundef !379
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !2860
  %switch.offset.i.i25.i = sub nsw i8 0, %.sroa.0.0.i.i24.i
  %spec.select.i26.i = select i1 %i.aq, i8 %switch.offset.i.i25.i, i8 %.sroa.0.0.i.i24.i, !dbg !2860
  %i.ar = icmp eq i8 %spec.select.i26.i, -1, !dbg !2863
  br i1 %i.ar, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, !dbg !2853

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.as = load i8, ptr %.val.i.i, align 1, !dbg !2860, !range !501, !noalias !2794, !noundef !379
  %i.at = trunc nuw i8 %i.as to i1, !dbg !2860
  br i1 %i.at, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2860

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i: ; preds = %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, %bb.r, %bb.q
  %i.au = add nuw nsw i64 %.sroa.01.0.i67.i, 1, !dbg !2864 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.m, !dbg !2850
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2850

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i
  %i.av = phi i8 [ %i.bi, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %i.aw = phi i8 [ %i.bj, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %.val10.i = phi i32 [ %.val8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.val18.i, %.lr.ph74.i.preheader ], !dbg !2865 ; 2 uses
  %.val9.i = phi i64 [ %.val7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.val17.i, %.lr.ph74.i.preheader ], !dbg !2865 ; 2 uses
  %.sroa.01.1.i73.i = phi i64 [ %i.bk, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ 2, %.lr.ph74.i.preheader ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.1.i73.i, !dbg !2866 ; 2 uses
  %i.ay = add nsw i64 %.sroa.01.1.i73.i, -1, !dbg !2867
  %i.az = icmp samesign ult i64 %i.ay, %i.m, !dbg !2868
  tail call void @llvm.assume(i1 %i.az), !dbg !2869
  %i.ba = getelementptr i8, ptr %i.ax, i64 120, !dbg !2865
  %.val7.i = load i64, ptr %i.ba, align 8, !dbg !2865, !alias.scope !2790, !noalias !2793 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 128, !dbg !2865
  %.val8.i = load i32, ptr %i.bb, align 8, !dbg !2865, !range !500, !alias.scope !2790, !noalias !2793, !noundef !379 ; 3 uses
  %.not.i.i32.i = icmp eq i32 %.val8.i, -1, !dbg !2870
  %.not19.i.i33.i = icmp eq i32 %.val10.i, -1, !dbg !2870 ; 2 uses
  br i1 %.not.i.i32.i, label %bb.u, label %bb.t, !dbg !2852

bb.t:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %bb.w, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, !dbg !2852

bb.u:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %bb.v, !dbg !2852

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %i.ae, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2871

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i: ; preds = %bb.t
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %.val7.i, i64 %.val9.i), !dbg !2872
  %i.bd = icmp eq i64 %.val7.i, %.val9.i, !dbg !2873
  %i.be = tail call i8 @llvm.ucmp.i8.i32(i32 %.val8.i, i32 %.val10.i), !dbg !2873
  %.sroa.0.0.i.i34.i = select i1 %i.bd, i8 %i.be, i8 %i.bc, !dbg !2873 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bf = trunc nuw i8 %i.aw to i1, !dbg !2871
  %switch.offset.i.i35.i = sub nsw i8 0, %.sroa.0.0.i.i34.i
  %spec.select.i36.i = select i1 %i.bf, i8 %switch.offset.i.i35.i, i8 %.sroa.0.0.i.i34.i, !dbg !2871
  %i.bg = icmp eq i8 %spec.select.i36.i, -1, !dbg !2874
  br i1 %i.bg, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2865

bb.w:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bh = trunc nuw i8 %i.av to i1, !dbg !2871
  br i1 %i.bh, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, !dbg !2871

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i: ; preds = %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, %bb.v
  %i.bi = phi i8 [ 0, %bb.w ], [ %i.av, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bj = phi i8 [ 0, %bb.w ], [ %i.aw, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bk = add nuw nsw i64 %.sroa.01.1.i73.i, 1, !dbg !2875 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.bk, %i.m, !dbg !2851
  br i1 %exitcond88.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i, !dbg !2851

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, %bb.v, %bb.u, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, %bb.r, %.preheader.i, %.preheader65.i
  %i.bl = phi i1 [ false, %.preheader65.i ], [ true, %.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ false, %bb.r ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ true, %bb.w ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader65.i ], [ 2, %.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.sroa.01.0.i67.i, %bb.s ], [ %.sroa.01.0.i67.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i ], [ %.sroa.01.0.i67.i, %bb.r ], [ %.sroa.01.1.i73.i, %bb.u ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.sroa.01.1.i73.i, %bb.w ], [ %.sroa.01.1.i73.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ %.sroa.01.1.i73.i, %bb.v ], !dbg !2876 ; 7 uses
  %i.bm = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2877
  tail call void @llvm.assume(i1 %i.bm), !dbg !2878
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2879
  br i1 %.not5.i, label %bb.i, label %bb.x, !dbg !2879

bb.x:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i
  br i1 %i.bl, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, !dbg !2880

bb.y:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 %.sroa.01.0), !dbg !2881
  %i.bn = shl nuw nsw i64 %..i.i, 1, !dbg !2882
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2883

bb.z:                                             ; preds = %bb.i
  %..i41.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 32), !dbg !2884 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i41.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2885
  %i.bo = shl nuw nsw i64 %..i41.i, 1, !dbg !2886
  %i.bp = or disjoint i64 %i.bo, 1, !dbg !2886
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2883

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %bb.aa, %bb.x, %bb.j
  %.sroa.0.0.i61.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %bb.aa ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ]
  %i.bq = shl nuw nsw i64 %.sroa.0.0.i61.i, 1, !dbg !2887
  %i.br = or disjoint i64 %i.bq, 1, !dbg !2887
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2888

bb.aa:                                            ; preds = %bb.x
  %i.bs = lshr i64 %.sroa.0.0.i.i, 1, !dbg !2889  ; 2 uses
  %.not.i.i42.i = icmp eq i64 %i.bs, 0, !dbg !2890
  br i1 %.not.i.i42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !2890

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.0.i.i, !dbg !2891
  br label %.lr.ph.i.i.i, !dbg !2892

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.by, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bu = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2893
  %i.bv = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2894
  %i.bw = getelementptr [136 x i8], ptr %i.bt, i64 %i.bu, !dbg !2895
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i64 noundef 17)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i unwind label %bb.ab, !dbg !2892, !noalias !2793

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2896, !noalias !2793
  unreachable, !dbg !2896

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2897 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs, !dbg !2890
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.i.i.i, !dbg !2890

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit: ; preds = %bb.y, %bb.z, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.br, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i ], [ %i.bp, %bb.z ], [ %i.bn, %bb.y ], !dbg !2898 ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1, !dbg !2899
  %i.ca = lshr i64 %.sroa.0.0.i32, 1, !dbg !2900
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2901 ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz, !dbg !2901
  %i.cc = add nuw nsw i64 %i.ca, %factor, !dbg !2902
  %i.cd = mul i64 %i.cb, %.sroa.0.0, !dbg !2903
  %i.ce = mul i64 %i.cc, %.sroa.0.0, !dbg !2904
  %i.cf = xor i64 %i.ce, %i.cd, !dbg !2905
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false), !dbg !2906
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !2905
  br label %bb.g, !dbg !2907

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit
  %.sroa.02.136 = phi i64 [ %i.ci, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.136, -1, !dbg !2908   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci, !dbg !2909
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !2910, !noundef !379
  %.not28 = icmp ult i8 %i.ck, %.sroa.021.0, !dbg !2910
  br i1 %.not28, label %._crit_edge, label %bb.ac, !dbg !2910

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], !dbg !2829 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], !dbg !2831 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2911
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8, !dbg !2912
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2913
  store i8 %.sroa.021.0, ptr %i.cm, align 1, !dbg !2914
  br i1 %i.k, label %bb.aj, label %bb.ak, !dbg !2915

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci, !dbg !2916
  %i.co = load i64, ptr %i.cn, align 8, !dbg !2917, !noundef !379 ; 3 uses
  %i.cp = lshr i64 %i.co, 1, !dbg !2918           ; 5 uses
  %i.cq = lshr i64 %.sroa.023.135, 1, !dbg !2919  ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq, !dbg !2920    ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr, !dbg !2921
  %i.ct = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.cs, !dbg !2922 ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3, !dbg !2923
  %i.cv = trunc i64 %.sroa.023.135 to i1
  %i.cw = or i64 %i.co, %.sroa.023.135, !dbg !2924
  %i.cx = trunc i64 %i.cw to i1, !dbg !2924
  %or.cond3.i = or i1 %i.cu, %i.cx, !dbg !2924
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae, !dbg !2924

bb.ad:                                            ; preds = %bb.ac
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.af, label %bb.ag, !dbg !2925

bb.ae:                                            ; preds = %bb.ac
  %i.cz = shl nuw nsw i64 %i.cr, 1, !dbg !2926
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, !dbg !2927

bb.af:                                            ; preds = %bb.ag, %bb.ad
  br i1 %i.cv, label %bb.ai, label %bb.ah, !dbg !2928

bb.ag:                                            ; preds = %bb.ad
  %i.da = or i64 %i.cp, 1, !dbg !2929
  %i.db = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !2930
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !2930
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !2931
  %i.de = xor i32 %i.dd, 126, !dbg !2931
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2932
  br label %bb.af, !dbg !2933

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %i.cp, !dbg !2934
  %i.dg = or i64 %i.cq, 1, !dbg !2935
  %i.dh = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !2936
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !2936
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !2937
  %i.dk = xor i32 %i.dj, 126, !dbg !2937
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef range(i64 0, 67818912035696881) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2938
  br label %bb.ai, !dbg !2939

bb.ai:                                            ; preds = %bb.ah, %bb.af
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_5files0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2940
  %i.dl = shl nuw nsw i64 %i.cr, 1, !dbg !2941
  %i.dm = or disjoint i64 %i.dl, 1, !dbg !2941
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, !dbg !2927

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit: ; preds = %bb.ae, %bb.ai
  %.sroa.0.0.i = phi i64 [ %i.dm, %bb.ai ], [ %i.cz, %bb.ae ], !dbg !2942 ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1, !dbg !2834
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !dbg !2834

bb.aj:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !2943
  %i.dp = lshr i64 %.sroa.018.0, 1, !dbg !2944
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0, !dbg !2945
  br label %bb.f, !dbg !2828

bb.ak:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1, !dbg !2946
  %.not30 = icmp eq i64 %i.dr, 0, !dbg !2946
  br i1 %.not30, label %bb.al, label %bb.am, !dbg !2947

bb.al:                                            ; preds = %bb.ak
  %i.ds = or i64 %1, 1, !dbg !2948
  %i.dt = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true), !dbg !2949
  %i.du = trunc nuw nsw i64 %i.dt to i32, !dbg !2949
  %i.dv = shl nuw nsw i32 %i.du, 1, !dbg !2950
  %i.dw = xor i32 %i.dv, 126, !dbg !2950
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2951
  br label %bb.am, !dbg !2952

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2954
  br label %bb.an, !dbg !2955

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void, !dbg !2955
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB11_5flags6hiargsNtB3q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_6search0EEs2_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2956 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !3141
  br i1 %i.c, label %bb.an, label %bb.b, !dbg !3141

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !3142
  %i.e = urem i64 4611686018427387904, %1, !dbg !3143
  %.not = icmp ne i64 %i.e, 0, !dbg !3144
  %i.f = zext i1 %.not to i64, !dbg !3144
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !3144 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !3145
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !3145

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !3146
  br label %bb.e, !dbg !3146

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !3147
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !3148
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !3149
  br label %bb.e, !dbg !3150

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !3151 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3153
  br label %bb.f, !dbg !3154

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aj ], !dbg !3155 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aj ], !dbg !3156 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aj ], !dbg !3157 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !3158 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !3158

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit ], [ 0, %bb.f ], !dbg !3159 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit ], [ 1, %bb.f ], !dbg !3159 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !3160
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !3160

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !3161 ; 14 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0, !dbg !3162 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116), !dbg !3163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3117), !dbg !3163
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !3164
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !3164

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.z, label %bb.y, !dbg !3165

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !3166
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %bb.k, !dbg !3166

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !dbg !3167, !alias.scope !3117, !noalias !3118, !nonnull !379, !align !381, !noundef !379
  %i.p = getelementptr i8, ptr %i.n, i64 256, !dbg !3167
  %.val17.i = load i64, ptr %i.p, align 8, !dbg !3167, !alias.scope !3116, !noalias !3119 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 264, !dbg !3167
  %.val18.i = load i32, ptr %i.q, align 8, !dbg !3167, !range !500, !alias.scope !3116, !noalias !3119, !noundef !379 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 120, !dbg !3167
  %.val19.i = load i64, ptr %i.r, align 8, !dbg !3167, !alias.scope !3116, !noalias !3119 ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 128, !dbg !3167
  %.val20.i = load i32, ptr %i.s, align 8, !dbg !3167, !range !500, !alias.scope !3116, !noalias !3119, !noundef !379 ; 2 uses
  %.val.i.i = load ptr, ptr %.val16.i, align 8, !dbg !3168, !noalias !3120 ; 15 uses
  %.not.i.i.i = icmp eq i32 %.val18.i, -1, !dbg !3169
  %.not19.i.i.i = icmp eq i32 %.val20.i, -1, !dbg !3169 ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !dbg !3170

bb.l:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, !dbg !3170

bb.m:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %.preheader65.i, label %bb.n, !dbg !3170

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = load i8, ptr %.val.i.i, align 1, !dbg !3171, !range !501, !noalias !3120, !noundef !379
  %i.u = trunc nuw i8 %i.t to i1, !dbg !3171
  br i1 %i.u, label %.preheader.i, label %.preheader65.i, !dbg !3171

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i: ; preds = %bb.l
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %.val17.i, i64 %.val19.i), !dbg !3172
  %i.w = icmp eq i64 %.val17.i, %.val19.i, !dbg !3173
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %.val18.i, i32 %.val20.i), !dbg !3173
  %.sroa.0.0.i.i.i = select i1 %i.w, i8 %i.x, i8 %i.v, !dbg !3173 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !3171, !range !501, !noalias !3120, !noundef !379 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1, !dbg !3171
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.z, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !3171
  %i.aa = icmp eq i8 %spec.select.i.i, -1, !dbg !3174
  br i1 %i.aa, label %.preheader.i, label %.preheader65.i, !dbg !3175

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = load i8, ptr %.val.i.i, align 1, !dbg !3171, !range !501, !noalias !3120, !noundef !379
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !3171
  br i1 %i.ac, label %.preheader65.i, label %.preheader.i, !dbg !3171

.preheader65.i:                                   ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, %bb.n, %bb.m
  %.not83.i = icmp eq i64 %i.m, 2, !dbg !3176
  br i1 %.not83.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !3176

.preheader.i:                                     ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, %bb.n
  %i.ad = phi i8 [ 0, %bb.o ], [ %i.y, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ 1, %bb.n ] ; 3 uses
  %.not84.i = icmp eq i64 %i.m, 2, !dbg !3177
  br i1 %.not84.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i.preheader, !dbg !3177

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %.lr.ph74.i, !dbg !3178

.lr.ph.i:                                         ; preds = %.preheader65.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i
  %.val15.i = phi i32 [ %.val13.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.val18.i, %.preheader65.i ], !dbg !3179 ; 2 uses
  %.val14.i = phi i64 [ %.val12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.val17.i, %.preheader65.i ], !dbg !3179 ; 2 uses
  %.sroa.01.0.i67.i = phi i64 [ %i.au, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ 2, %.preheader65.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.0.i67.i, !dbg !3180 ; 2 uses
  %i.ag = add nsw i64 %.sroa.01.0.i67.i, -1, !dbg !3181
  %i.ah = icmp samesign ult i64 %i.ag, %i.m, !dbg !3182
  tail call void @llvm.assume(i1 %i.ah), !dbg !3183
  %i.ai = getelementptr i8, ptr %i.af, i64 120, !dbg !3179
  %.val12.i = load i64, ptr %i.ai, align 8, !dbg !3179, !alias.scope !3116, !noalias !3119 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 128, !dbg !3179
  %.val13.i = load i32, ptr %i.aj, align 8, !dbg !3179, !range !500, !alias.scope !3116, !noalias !3119, !noundef !379 ; 3 uses
  %.not.i.i22.i = icmp eq i32 %.val13.i, -1, !dbg !3184
  %.not19.i.i23.i = icmp eq i32 %.val15.i, -1, !dbg !3184 ; 2 uses
  br i1 %.not.i.i22.i, label %bb.q, label %bb.p, !dbg !3185

bb.p:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %bb.s, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, !dbg !3185

bb.q:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, label %bb.r, !dbg !3185

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ak = load i8, ptr %.val.i.i, align 1, !dbg !3186, !range !501, !noalias !3120, !noundef !379
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !3186
  br i1 %i.al, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, !dbg !3186

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i: ; preds = %bb.p
  %i.am = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !3187
  %i.an = icmp eq i64 %.val12.i, %.val14.i, !dbg !3188
  %i.ao = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !3188
  %.sroa.0.0.i.i24.i = select i1 %i.an, i8 %i.ao, i8 %i.am, !dbg !3188 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ap = load i8, ptr %.val.i.i, align 1, !dbg !3186, !range !501, !noalias !3120, !noundef !379
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !3186
  %switch.offset.i.i25.i = sub nsw i8 0, %.sroa.0.0.i.i24.i
  %spec.select.i26.i = select i1 %i.aq, i8 %switch.offset.i.i25.i, i8 %.sroa.0.0.i.i24.i, !dbg !3186
  %i.ar = icmp eq i8 %spec.select.i26.i, -1, !dbg !3189
  br i1 %i.ar, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, !dbg !3179

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.as = load i8, ptr %.val.i.i, align 1, !dbg !3186, !range !501, !noalias !3120, !noundef !379
  %i.at = trunc nuw i8 %i.as to i1, !dbg !3186
  br i1 %i.at, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !3186

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i: ; preds = %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, %bb.r, %bb.q
  %i.au = add nuw nsw i64 %.sroa.01.0.i67.i, 1, !dbg !3190 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.m, !dbg !3176
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !3176

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i
  %i.av = phi i8 [ %i.bi, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %i.aw = phi i8 [ %i.bj, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %.val10.i = phi i32 [ %.val8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.val18.i, %.lr.ph74.i.preheader ], !dbg !3191 ; 2 uses
  %.val9.i = phi i64 [ %.val7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.val17.i, %.lr.ph74.i.preheader ], !dbg !3191 ; 2 uses
  %.sroa.01.1.i73.i = phi i64 [ %i.bk, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ 2, %.lr.ph74.i.preheader ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.1.i73.i, !dbg !3192 ; 2 uses
  %i.ay = add nsw i64 %.sroa.01.1.i73.i, -1, !dbg !3193
  %i.az = icmp samesign ult i64 %i.ay, %i.m, !dbg !3194
  tail call void @llvm.assume(i1 %i.az), !dbg !3195
  %i.ba = getelementptr i8, ptr %i.ax, i64 120, !dbg !3191
  %.val7.i = load i64, ptr %i.ba, align 8, !dbg !3191, !alias.scope !3116, !noalias !3119 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 128, !dbg !3191
  %.val8.i = load i32, ptr %i.bb, align 8, !dbg !3191, !range !500, !alias.scope !3116, !noalias !3119, !noundef !379 ; 3 uses
  %.not.i.i32.i = icmp eq i32 %.val8.i, -1, !dbg !3196
  %.not19.i.i33.i = icmp eq i32 %.val10.i, -1, !dbg !3196 ; 2 uses
  br i1 %.not.i.i32.i, label %bb.u, label %bb.t, !dbg !3178

bb.t:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %bb.w, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, !dbg !3178

bb.u:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %bb.v, !dbg !3178

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %i.ae, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !3197

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i: ; preds = %bb.t
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %.val7.i, i64 %.val9.i), !dbg !3198
  %i.bd = icmp eq i64 %.val7.i, %.val9.i, !dbg !3199
  %i.be = tail call i8 @llvm.ucmp.i8.i32(i32 %.val8.i, i32 %.val10.i), !dbg !3199
  %.sroa.0.0.i.i34.i = select i1 %i.bd, i8 %i.be, i8 %i.bc, !dbg !3199 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bf = trunc nuw i8 %i.aw to i1, !dbg !3197
  %switch.offset.i.i35.i = sub nsw i8 0, %.sroa.0.0.i.i34.i
  %spec.select.i36.i = select i1 %i.bf, i8 %switch.offset.i.i35.i, i8 %.sroa.0.0.i.i34.i, !dbg !3197
  %i.bg = icmp eq i8 %spec.select.i36.i, -1, !dbg !3200
  br i1 %i.bg, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !3191

bb.w:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bh = trunc nuw i8 %i.av to i1, !dbg !3197
  br i1 %i.bh, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, !dbg !3197

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i: ; preds = %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, %bb.v
  %i.bi = phi i8 [ 0, %bb.w ], [ %i.av, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bj = phi i8 [ 0, %bb.w ], [ %i.aw, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bk = add nuw nsw i64 %.sroa.01.1.i73.i, 1, !dbg !3201 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.bk, %i.m, !dbg !3177
  br i1 %exitcond88.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i, !dbg !3177

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, %bb.v, %bb.u, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, %bb.r, %.preheader.i, %.preheader65.i
  %i.bl = phi i1 [ false, %.preheader65.i ], [ true, %.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ false, %bb.r ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ true, %bb.w ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader65.i ], [ 2, %.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.sroa.01.0.i67.i, %bb.s ], [ %.sroa.01.0.i67.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i ], [ %.sroa.01.0.i67.i, %bb.r ], [ %.sroa.01.1.i73.i, %bb.u ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.sroa.01.1.i73.i, %bb.w ], [ %.sroa.01.1.i73.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ %.sroa.01.1.i73.i, %bb.v ], !dbg !3202 ; 7 uses
  %i.bm = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !3203
  tail call void @llvm.assume(i1 %i.bm), !dbg !3204
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !3205
  br i1 %.not5.i, label %bb.i, label %bb.x, !dbg !3205

bb.x:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i
  br i1 %i.bl, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, !dbg !3206

bb.y:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 %.sroa.01.0), !dbg !3207
  %i.bn = shl nuw nsw i64 %..i.i, 1, !dbg !3208
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !3209

bb.z:                                             ; preds = %bb.i
  %..i41.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 32), !dbg !3210 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i41.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !3211
  %i.bo = shl nuw nsw i64 %..i41.i, 1, !dbg !3212
  %i.bp = or disjoint i64 %i.bo, 1, !dbg !3212
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !3209

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %bb.aa, %bb.x, %bb.j
  %.sroa.0.0.i61.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %bb.aa ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ]
  %i.bq = shl nuw nsw i64 %.sroa.0.0.i61.i, 1, !dbg !3213
  %i.br = or disjoint i64 %i.bq, 1, !dbg !3213
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !3214

bb.aa:                                            ; preds = %bb.x
  %i.bs = lshr i64 %.sroa.0.0.i.i, 1, !dbg !3215  ; 2 uses
  %.not.i.i42.i = icmp eq i64 %i.bs, 0, !dbg !3216
  br i1 %.not.i.i42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !3216

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.0.i.i, !dbg !3217
  br label %.lr.ph.i.i.i, !dbg !3218

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.by, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bu = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !3219
  %i.bv = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !3220
  %i.bw = getelementptr [136 x i8], ptr %i.bt, i64 %i.bu, !dbg !3221
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i64 noundef 17)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i unwind label %bb.ab, !dbg !3218, !noalias !3119

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !3222, !noalias !3119
  unreachable, !dbg !3222

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !3223 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs, !dbg !3216
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.i.i.i, !dbg !3216

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit: ; preds = %bb.y, %bb.z, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.br, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i ], [ %i.bp, %bb.z ], [ %i.bn, %bb.y ], !dbg !3224 ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1, !dbg !3225
  %i.ca = lshr i64 %.sroa.0.0.i32, 1, !dbg !3226
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !3227 ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz, !dbg !3227
  %i.cc = add nuw nsw i64 %i.ca, %factor, !dbg !3228
  %i.cd = mul i64 %i.cb, %.sroa.0.0, !dbg !3229
  %i.ce = mul i64 %i.cc, %.sroa.0.0, !dbg !3230
  %i.cf = xor i64 %i.ce, %i.cd, !dbg !3231
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false), !dbg !3232
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !3231
  br label %bb.g, !dbg !3233

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit
  %.sroa.02.136 = phi i64 [ %i.ci, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.136, -1, !dbg !3234   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci, !dbg !3235
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !3236, !noundef !379
  %.not28 = icmp ult i8 %i.ck, %.sroa.021.0, !dbg !3236
  br i1 %.not28, label %._crit_edge, label %bb.ac, !dbg !3236

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], !dbg !3155 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], !dbg !3157 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !3237
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8, !dbg !3238
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !3239
  store i8 %.sroa.021.0, ptr %i.cm, align 1, !dbg !3240
  br i1 %i.k, label %bb.aj, label %bb.ak, !dbg !3241

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci, !dbg !3242
  %i.co = load i64, ptr %i.cn, align 8, !dbg !3243, !noundef !379 ; 3 uses
  %i.cp = lshr i64 %i.co, 1, !dbg !3244           ; 5 uses
  %i.cq = lshr i64 %.sroa.023.135, 1, !dbg !3245  ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq, !dbg !3246    ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr, !dbg !3247
  %i.ct = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.cs, !dbg !3248 ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3, !dbg !3249
  %i.cv = trunc i64 %.sroa.023.135 to i1
  %i.cw = or i64 %i.co, %.sroa.023.135, !dbg !3250
  %i.cx = trunc i64 %i.cw to i1, !dbg !3250
  %or.cond3.i = or i1 %i.cu, %i.cx, !dbg !3250
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae, !dbg !3250

bb.ad:                                            ; preds = %bb.ac
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.af, label %bb.ag, !dbg !3251

bb.ae:                                            ; preds = %bb.ac
  %i.cz = shl nuw nsw i64 %i.cr, 1, !dbg !3252
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, !dbg !3253

bb.af:                                            ; preds = %bb.ag, %bb.ad
  br i1 %i.cv, label %bb.ai, label %bb.ah, !dbg !3254

bb.ag:                                            ; preds = %bb.ad
  %i.da = or i64 %i.cp, 1, !dbg !3255
  %i.db = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !3256
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !3256
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !3257
  %i.de = xor i32 %i.dd, 126, !dbg !3257
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !3258
  br label %bb.af, !dbg !3259

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %i.cp, !dbg !3260
  %i.dg = or i64 %i.cq, 1, !dbg !3261
  %i.dh = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !3262
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !3262
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !3263
  %i.dk = xor i32 %i.dj, 126, !dbg !3263
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef range(i64 0, 67818912035696881) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !3264
  br label %bb.ai, !dbg !3265

bb.ai:                                            ; preds = %bb.ah, %bb.af
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_6search0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !3266
  %i.dl = shl nuw nsw i64 %i.cr, 1, !dbg !3267
  %i.dm = or disjoint i64 %i.dl, 1, !dbg !3267
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, !dbg !3253

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit: ; preds = %bb.ae, %bb.ai
  %.sroa.0.0.i = phi i64 [ %i.dm, %bb.ai ], [ %i.cz, %bb.ae ], !dbg !3268 ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1, !dbg !3160
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !dbg !3160

bb.aj:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !3269
  %i.dp = lshr i64 %.sroa.018.0, 1, !dbg !3270
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0, !dbg !3271
  br label %bb.f, !dbg !3154

bb.ak:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1, !dbg !3272
  %.not30 = icmp eq i64 %i.dr, 0, !dbg !3272
  br i1 %.not30, label %bb.al, label %bb.am, !dbg !3273

bb.al:                                            ; preds = %bb.ak
  %i.ds = or i64 %1, 1, !dbg !3274
  %i.dt = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true), !dbg !3275
  %i.du = trunc nuw nsw i64 %i.dt to i32, !dbg !3275
  %i.dv = shl nuw nsw i32 %i.du, 1, !dbg !3276
  %i.dw = xor i32 %i.dv, 126, !dbg !3276
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !3277
  br label %bb.am, !dbg !3278

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3280
  br label %bb.an, !dbg !3281

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void, !dbg !3281
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNtNtCsgixc6xHyZOO_10serde_json5value3serNtB5_5ValueNtNtCs696aDvbrEFJ_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3282 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = load i8, ptr %0, align 8, !dbg !3403, !range !520, !noundef !379
  switch i8 %i.c, label %default.unreachable63 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.i
    i8 5, label %bb.j
  ], !dbg !3404

default.unreachable63:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !3405, !nonnull !379, !align !381, !noundef !379
  %.val.i.i.i = load ptr, ptr %.val, align 8, !dbg !3406, !noalias !3378, !nonnull !379, !align !381, !noundef !379
  %i.d = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !3407 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !3408
  br i1 %.not.i, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !3409, !prof !525

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.d), !dbg !3410
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3411

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !3412
  %i.g = load i8, ptr %i.f, align 1, !dbg !3412, !range !501, !noundef !379
  %i.h = trunc nuw i8 %i.g to i1, !dbg !3412
  %.val41 = load ptr, ptr %1, align 8, !dbg !3413, !nonnull !379, !noundef !379
  %.val.i4.i.i = load ptr, ptr %.val41, align 8, !dbg !3414, !noalias !379, !nonnull !379, !align !381, !noundef !379 ; 2 uses
  br i1 %i.h, label %.split.i.i, label %.split2.i.i, !dbg !3415

.split2.i.i:                                      ; preds = %bb.d
  %i.i = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i4.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 5), !dbg !3416
  br label %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, !dbg !3417

.split.i.i:                                       ; preds = %bb.d
  %i.j = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i4.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !3418
  br label %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, !dbg !3417

_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i: ; preds = %.split.i.i, %.split2.i.i
  %phi.call.i.i = phi ptr [ %i.j, %.split.i.i ], [ %i.i, %.split2.i.i ], !dbg !3419 ; 2 uses
  %.not.i43 = icmp eq ptr %phi.call.i.i, null, !dbg !3420
  br i1 %.not.i43, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !3421, !prof !525

bb.e:                                             ; preds = %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %phi.call.i.i), !dbg !3422
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3423

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3424
  %i.m = tail call noundef align 8 ptr @_RINvXs4_NtCsgixc6xHyZOO_10serde_json6numberNtB6_6NumberNtNtCs696aDvbrEFJ_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !dbg !3425
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3426

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3427
  %i.o = load ptr, ptr %i.n, align 8, !dbg !3427, !nonnull !379, !noundef !379
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3428
  %i.q = load i64, ptr %i.p, align 8, !dbg !3428, !noundef !379
  %i.r = tail call noundef ptr @_RINvNtCsgixc6xHyZOO_10serde_json3ser18format_escaped_strQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB2_16CompactFormatterECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q), !dbg !3429 ; 2 uses
  %.not.i45 = icmp eq ptr %i.r, null, !dbg !3430
  br i1 %.not.i45, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.h, !dbg !3431, !prof !525

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !dbg !3432, !noalias !3386
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3433

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3434
  %i.u = tail call noundef align 8 ptr @_RINvYQINtNtCsgixc6xHyZOO_10serde_json3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB9_5value5ValueEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !dbg !3435
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3436

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3437
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3438
  %i.w = load i64, ptr %i.v, align 8, !dbg !3438, !noundef !379 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390), !dbg !3439
  %.val.i = load ptr, ptr %1, align 8, !dbg !3440, !alias.scope !3390, !noalias !3391, !nonnull !379, !align !381, !noundef !379 ; 2 uses
  %.val.i.i.i47 = load ptr, ptr %.val.i, align 8, !dbg !3441, !noalias !3392, !nonnull !379, !align !381, !noundef !379
  %i.x = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3442, !noalias !3393 ; 2 uses
  %.not.i48 = icmp eq ptr %i.x, null, !dbg !3443
  br i1 %.not.i48, label %bb.k, label %bb.m, !dbg !3444, !prof !525

bb.k:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.l, label %bb.n, !dbg !3445

bb.l:                                             ; preds = %bb.k
  %.val.i.i12.i = load ptr, ptr %.val.i, align 8, !dbg !3446, !noalias !3394, !nonnull !379, !align !381, !noundef !379
  %i.z = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i12.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3447, !noalias !3393 ; 2 uses
  %.not10.i = icmp eq ptr %i.z, null, !dbg !3448
  br i1 %.not10.i, label %bb.n, label %bb.m, !dbg !3449, !prof !525

_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.h, %bb.g, %bb.e, %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, %bb.c, %bb.b, %bb.u, %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, %bb.i, %bb.f
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i51, %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit ], [ null, %bb.b ], [ %i.m, %bb.f ], [ null, %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i ], [ %i.u, %bb.i ], [ %.sroa.0.1, %bb.u ], [ %i.e, %bb.c ], [ %i.k, %bb.e ], [ %i.s, %bb.h ], [ null, %bb.g ], !dbg !3450
  ret ptr %.sroa.0.0, !dbg !3451

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sink16.i = phi ptr [ %i.x, %bb.j ], [ %i.z, %bb.l ]
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink16.i), !dbg !3452, !noalias !3393
  br label %bb.u, !dbg !3453

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sink.i.ph = phi i8 [ 1, %bb.k ], [ 0, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3438
  store ptr %1, ptr %i.b, align 8, !dbg !3454
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3454 ; 2 uses
  store i8 %.sink.i.ph, ptr %i.ac, align 8, !dbg !3454
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !3455, !noundef !379 ; 3 uses
  %.not = icmp ne ptr %i.ad, null, !dbg !3455     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3456
  %i.af = load i64, ptr %i.ae, align 8, !dbg !3456
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.af, i64 undef, !dbg !3456 ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not to i64, !dbg !3456 ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.w, i64 0, !dbg !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3396
  store i64 %.sroa.07.sroa.0.0, ptr %i.a, align 8, !dbg !3396
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3396
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3396
  store ptr %i.ad, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3396
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3396
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3396
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !3396
  store ptr %i.ad, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !3396
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !3396
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !3396
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !3396
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !3396
  br label %bb.o, !dbg !3457

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ag = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !dbg !3458 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0, !dbg !3458 ; 2 uses
  %.not39 = icmp eq ptr %i.ah, null, !dbg !3459
  br i1 %.not39, label %bb.q, label %bb.p, !dbg !3459

bb.p:                                             ; preds = %bb.o
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1, !dbg !3458 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = call noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai), !dbg !3460 ; 2 uses
  %.not40 = icmp eq ptr %i.aj, null, !dbg !3461
  br i1 %.not40, label %bb.o, label %bb.t, !dbg !3462

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3463
  %i.ak = load i8, ptr %i.ac, align 8, !dbg !3464, !range !555, !noundef !379
  %i.al = icmp eq i8 %i.ak, 0, !dbg !3465
  br i1 %i.al, label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, label %bb.r, !dbg !3465

bb.r:                                             ; preds = %bb.q
  %i.am = load ptr, ptr %i.b, align 8, !dbg !3464, !nonnull !379, !align !381, !noundef !379
  %.val42 = load ptr, ptr %i.am, align 8, !dbg !3466, !nonnull !379, !noundef !379
  %.val.i.i.i49 = load ptr, ptr %.val42, align 8, !dbg !3467, !noalias !3401, !nonnull !379, !align !381, !noundef !379
  %i.an = call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i49, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3468 ; 2 uses
  %.not.i50 = icmp eq ptr %i.an, null, !dbg !3469
  br i1 %.not.i50, label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, label %bb.s, !dbg !3470, !prof !525

bb.s:                                             ; preds = %bb.r
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.an), !dbg !3471
  br label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, !dbg !3472

_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i51 = phi ptr [ null, %bb.q ], [ %i.ao, %bb.s ], [ null, %bb.r ], !dbg !3473
end_hunk_0
