Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_18backward_fill_null0NCB28_s_0E00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_:bb.a
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.aa, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4, !dbg !144234 ; 3 uses
  %.val8.i.i.i = load i32, ptr %i.p, align 4, !dbg !144239, !noalias !144240, !noundef !14
  %i.q = zext i32 %.val8.i.i.i to i64, !dbg !144248
  %i.r = add i64 %.sroa.5.0.copyload.i, %i.q, !dbg !144257 ; 2 uses
  %i.s = lshr i64 %i.r, 3, !dbg !144257           ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.43.0.copyload.i, !dbg !144260
  tail call void @llvm.assume(i1 %i.t), !dbg !144267
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 %i.s, !dbg !144268
  %i.v = load i8, ptr %i.u, align 1, !dbg !144269, !noalias !144270, !noundef !14
  %i.w = trunc i64 %i.r to i8, !dbg !144271
  %i.x = and i8 %i.w, 7, !dbg !144271
  %i.y = lshr i8 %i.v, %i.x, !dbg !144271
  %i.z = trunc i8 %i.y to i1, !dbg !144271
  br i1 %i.z, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i, !dbg !144273

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i: ; preds = %bb.b
  %i.aa = add nuw nsw i64 %i.o, 1, !dbg !144274
  %i.ab = icmp eq ptr %.sroa.03.0.i, %i.p, !dbg !144216
  br i1 %i.ab, label %.loopexit.i.i, label %bb.b, !dbg !144233

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144275, !noalias !144277
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.l), !dbg !144278, !noalias !144279
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ac = load i32, ptr %.val.i, align 4, !dbg !144280, !noalias !144279, !noundef !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144282
  %i.ae = load i32, ptr %i.ad, align 4, !dbg !144282, !range !111390, !noalias !144277, !noundef !14
  %i.af = icmp eq i32 %i.ae, 1, !dbg !144294
  %i.ag = load ptr, ptr %i.a, align 8, !dbg !144294, !noalias !144277
  %.sroa.011.0.i.i = select i1 %i.af, ptr %i.a, ptr %i.ag, !dbg !144294 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144295
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !144295, !noalias !144277, !noundef !14
  %i.aj = zext i32 %i.ai to i64, !dbg !144295     ; 4 uses
  %i.ak = sub nsw i64 %i.k, %i.o, !dbg !144296    ; 4 uses
  %i.al = add nsw i64 %i.ak, -1, !dbg !144296     ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.aj, !dbg !144297
  br i1 %i.am, label %bb.d, label %bb.e, !dbg !144297

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.l), !dbg !144298, !noalias !144180
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, !dbg !144298

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ugt i64 %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !144301, !prof !83614

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #55
          to label %bb.g unwind label %bb.f, !dbg !144297, !noalias !144279

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.o, !dbg !144312, !noalias !144279

bb.g:                                             ; preds = %bb.h, %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ak, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #55
          to label %bb.g unwind label %bb.f, !dbg !144314, !noalias !144279

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0.i.i) ], !dbg !144315
  %i.ao = icmp eq i64 %i.o, %i.k, !dbg !144324
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !144336

.lr.ph.i.i:                                       ; preds = %bb.i
  %.idx.i.i = shl nuw nsw i64 %i.ak, 2, !dbg !144337
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.idx.i.i, !dbg !144337
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.0.i.i, i64 %i.al, !dbg !144297
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !144297, !noalias !144279, !noundef !14
  br label %bb.j, !dbg !144336

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.42.07.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.as, %bb.m ]
  %.sroa.06.06.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %.sroa.06.1.i.i, %bb.m ] ; 2 uses
  %.sroa.08.05.i.i = phi i32 [ %i.ar, %.lr.ph.i.i ], [ %.sroa.08.1.i.i, %bb.m ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.42.07.i.i, i64 -4, !dbg !144340 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4, !dbg !144351, !noalias !144279, !noundef !14 ; 2 uses
  %i.au = zext i32 %i.at to i64, !dbg !144351
  %i.av = add i64 %.sroa.5.0.copyload.i, %i.au, !dbg !144353 ; 2 uses
  %i.aw = lshr i64 %i.av, 3, !dbg !144353         ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.43.0.copyload.i, !dbg !144356
  call void @llvm.assume(i1 %i.ax), !dbg !144363
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 %i.aw, !dbg !144364
  %i.az = load i8, ptr %i.ay, align 1, !dbg !144365, !noalias !144279, !noundef !14
  %i.ba = trunc i64 %i.av to i8, !dbg !144366
  %i.bb = and i8 %i.ba, 7, !dbg !144366
  %i.bc = shl nuw i8 1, %i.bb, !dbg !144368
  %i.bd = and i8 %i.bc, %i.az, !dbg !144368
  %.not21.i.i = icmp eq i8 %i.bd, 0, !dbg !144368
  br i1 %.not21.i.i, label %bb.l, label %bb.k, !dbg !144368

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144369, !noalias !144214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144370, !noalias !144277
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, !dbg !144371

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %.val.i, align 4, !dbg !144372, !noalias !144279, !noundef !14
  br label %bb.m, !dbg !144373

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp eq i32 %.sroa.06.06.i.i, 0, !dbg !144374
  br i1 %i.bf, label %bb.m, label %bb.n, !dbg !144374

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.08.1.i.i = phi i32 [ %i.at, %bb.k ], [ %.sroa.08.05.i.i, %bb.l ], [ %.sroa.08.05.i.i, %bb.n ], !dbg !144375
  %.sroa.06.1.i.i = phi i32 [ %i.be, %bb.k ], [ 0, %bb.l ], [ %i.bh, %bb.n ], !dbg !144376
  %i.bg = icmp eq ptr %.sroa.011.0.i.i, %i.as, !dbg !144324
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.j, !dbg !144336

bb.n:                                             ; preds = %bb.l
  %i.bh = add i32 %.sroa.06.06.i.i, -1, !dbg !144377
  store i32 %.sroa.08.05.i.i, ptr %i.as, align 4, !dbg !144378, !noalias !144279
  br label %bb.m, !dbg !144379

bb.o:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144380, !noalias !144279
  unreachable, !dbg !144380

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.an, !dbg !144380

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i: ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144381
  %i.bk = load i32, ptr %i.bj, align 8, !dbg !144381, !noalias !144214, !noundef !14
  %.not.i = icmp eq i32 %i.bk, 0, !dbg !144388
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit, label %bb.p, !dbg !144388

bb.p:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !144392
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !144392, !range !111390, !noalias !144214, !noundef !14
  %i.bn = icmp eq i32 %i.bm, 1, !dbg !144397
  %i.bo = load ptr, ptr %i.b, align 8, !dbg !144397, !noalias !144214
  %.sroa.04.0.i = select i1 %i.bn, ptr %i.b, ptr %i.bo, !dbg !144397
  %i.bp = load i32, ptr %.sroa.04.0.i, align 4, !dbg !144398, !noalias !144180, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit, !dbg !144401

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, %bb.p
  %.sroa.0.0.i = phi i32 [ %i.bp, %bb.p ], [ %2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i ], !dbg !144404
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144405, !alias.scope !144180, !noalias !144183
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !144405, !noalias !144183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144406
  ret void, !dbg !144407
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_18backward_fill_null0NCB28_s_0E0s_0INtB6_5FnMutTRAmj2_EE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144408 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !144409, !nonnull !14, !align !4162, !noundef !14 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !144410, !nonnull !14, !align !4162, !noundef !14
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !144410
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !144410, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  %.val2 = load i32, ptr %2, align 4, !dbg !144410, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !144410
  %.val3 = load i32, ptr %i.e, align 4, !dbg !144410, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144411), !dbg !144410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i32 %.val3, %.val2, !dbg !144414     ; 4 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %.val1, align 8, !dbg !144418, !noalias !144411 ; 3 uses
  %.sroa.45.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !144418
  %.sroa.45.0.copyload.i = load i64, ptr %.sroa.45.0..8.val.sroa_idx.i, align 8, !dbg !144418, !noalias !144411 ; 2 uses
  %.sroa.56.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !144418
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..8.val.sroa_idx.i, align 8, !dbg !144418, !noalias !144411 ; 2 uses
  %i.g = zext i32 %.val3 to i64, !dbg !144419     ; 3 uses
  %.val.i = load ptr, ptr %.val, align 8, !dbg !144420, !noalias !144411 ; 3 uses
  %i.h = icmp ult i32 %.val2, %i.f, !dbg !144421
  br i1 %i.h, label %.lr.ph.i.i.i, label %.loopexit.i.i, !dbg !144438

.lr.ph.i.i.i:                                     ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i) ]
  %i.i = zext i32 %i.f to i64, !dbg !144438
  br label %bb.b, !dbg !144438

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i ]
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.u, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv.i.i.i, -1, !dbg !144439 ; 2 uses
  %i.l = add i64 %i.k, %.sroa.56.0.copyload.i, !dbg !144444 ; 2 uses
  %i.m = lshr i64 %i.l, 3, !dbg !144444           ; 2 uses
  %i.n = icmp ult i64 %i.m, %.sroa.45.0.copyload.i, !dbg !144452
  tail call void @llvm.assume(i1 %i.n), !dbg !144459
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %i.m, !dbg !144460
  %i.p = load i8, ptr %i.o, align 1, !dbg !144461, !noalias !144462, !noundef !14
  %i.q = trunc i64 %i.l to i8, !dbg !144470
  %i.r = and i8 %i.q, 7, !dbg !144470
  %i.s = lshr i8 %i.p, %i.r, !dbg !144470
  %i.t = trunc i8 %i.s to i1, !dbg !144470
  br i1 %i.t, label %bb.c, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, !dbg !144472

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i: ; preds = %bb.b
  %i.u = add nuw nsw i64 %i.j, 1, !dbg !144473    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.g, !dbg !144421
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.b, !dbg !144438

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144474, !noalias !144476
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, i32 noundef %.val2, i32 noundef %i.f), !dbg !144477, !noalias !144476
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.v = load i32, ptr %.val.i, align 4, !dbg !144478, !noalias !144476, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144480
  %i.x = load i32, ptr %i.w, align 4, !dbg !144480, !range !111390, !noalias !144476, !noundef !14
  %i.y = icmp eq i32 %i.x, 1, !dbg !144492
  %i.z = load ptr, ptr %i.a, align 8, !dbg !144492, !noalias !144476
  %.sroa.011.0.i.i = select i1 %i.y, ptr %i.a, ptr %i.z, !dbg !144492 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144493
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !144493, !noalias !144476, !noundef !14
  %i.ac = zext i32 %i.ab to i64, !dbg !144493     ; 4 uses
  %i.ad = sub nsw i64 %i.g, %i.j, !dbg !144494    ; 4 uses
  %i.ae = add nsw i64 %i.ad, -1, !dbg !144494     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.ac, !dbg !144495
  br i1 %i.af, label %bb.d, label %bb.e, !dbg !144495

.loopexit.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef %.val2, i32 noundef %i.f), !dbg !144496, !noalias !144411
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, !dbg !144496

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ugt i64 %i.ad, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !144499, !prof !83614

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #55
          to label %bb.g unwind label %bb.f, !dbg !144495, !noalias !144476

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.o, !dbg !144509, !noalias !144476

bb.g:                                             ; preds = %bb.h, %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #55
          to label %bb.g unwind label %bb.f, !dbg !144511, !noalias !144476

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0.i.i) ], !dbg !144512
  %i.ah = icmp eq i64 %i.j, %i.g, !dbg !144521
  br i1 %i.ah, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !144532

.lr.ph.i.i:                                       ; preds = %bb.i
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2, !dbg !144533
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.idx.i.i, !dbg !144533
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.0.i.i, i64 %i.ae, !dbg !144495
  %i.ak = load i32, ptr %i.aj, align 4, !dbg !144495, !noalias !144476, !noundef !14
  br label %bb.j, !dbg !144532

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.42.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.al, %bb.m ]
  %.sroa.06.07.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ %.sroa.06.1.i.i, %bb.m ] ; 2 uses
  %.sroa.08.06.i.i = phi i32 [ %i.ak, %.lr.ph.i.i ], [ %.sroa.08.1.i.i, %bb.m ] ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.42.08.i.i, i64 -4, !dbg !144536 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !dbg !144547, !noalias !144476, !noundef !14 ; 2 uses
  %i.an = zext i32 %i.am to i64, !dbg !144547
  %i.ao = add i64 %.sroa.56.0.copyload.i, %i.an, !dbg !144549 ; 2 uses
  %i.ap = lshr i64 %i.ao, 3, !dbg !144549         ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.45.0.copyload.i, !dbg !144552
  call void @llvm.assume(i1 %i.aq), !dbg !144559
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %i.ap, !dbg !144560
  %i.as = load i8, ptr %i.ar, align 1, !dbg !144561, !noalias !144476, !noundef !14
  %i.at = trunc i64 %i.ao to i8, !dbg !144562
  %i.au = and i8 %i.at, 7, !dbg !144562
  %i.av = shl nuw i8 1, %i.au, !dbg !144564
  %i.aw = and i8 %i.av, %i.as, !dbg !144564
  %.not21.i.i = icmp eq i8 %i.aw, 0, !dbg !144564
  br i1 %.not21.i.i, label %bb.l, label %bb.k, !dbg !144564

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144565, !noalias !144411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144566, !noalias !144476
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, !dbg !144567

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %.val.i, align 4, !dbg !144568, !noalias !144476, !noundef !14
  br label %bb.m, !dbg !144569

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %.sroa.06.07.i.i, 0, !dbg !144570
  br i1 %i.ay, label %bb.m, label %bb.n, !dbg !144570

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.08.1.i.i = phi i32 [ %i.am, %bb.k ], [ %.sroa.08.06.i.i, %bb.l ], [ %.sroa.08.06.i.i, %bb.n ], !dbg !144571
  %.sroa.06.1.i.i = phi i32 [ %i.ax, %bb.k ], [ 0, %bb.l ], [ %i.ba, %bb.n ], !dbg !144572
  %i.az = icmp eq ptr %.sroa.011.0.i.i, %i.al, !dbg !144521
  br i1 %i.az, label %._crit_edge.i.i, label %bb.j, !dbg !144532

bb.n:                                             ; preds = %bb.l
  %i.ba = add i32 %.sroa.06.07.i.i, -1, !dbg !144573
  store i32 %.sroa.08.06.i.i, ptr %i.al, align 4, !dbg !144574, !noalias !144476
  br label %bb.m, !dbg !144575

bb.o:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144576, !noalias !144476
  unreachable, !dbg !144576

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.ag, !dbg !144576

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i: ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144577
  %i.bd = load i32, ptr %i.bc, align 8, !dbg !144577, !noalias !144411, !noundef !14
  %.not.i = icmp eq i32 %i.bd, 0, !dbg !144585
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit, label %bb.p, !dbg !144585

bb.p:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !144589
  %i.bf = load i32, ptr %i.be, align 4, !dbg !144589, !range !111390, !noalias !144411, !noundef !14
  %i.bg = icmp eq i32 %i.bf, 1, !dbg !144594
  %i.bh = load ptr, ptr %i.b, align 8, !dbg !144594, !noalias !144411
  %.sroa.05.0.i = select i1 %i.bg, ptr %i.b, ptr %i.bh, !dbg !144594
  %i.bi = load i32, ptr %.sroa.05.0.i, align 4, !dbg !144595, !noalias !144411, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit, !dbg !144598

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, %bb.p
  %.sroa.0.0.i = phi i32 [ %i.bi, %bb.p ], [ %.val2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i ], !dbg !144601
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144602, !alias.scope !144411
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !144602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144603
  ret void, !dbg !144604
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #2 !dbg !144605 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !144606, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.c, align 8, !dbg !144607, !nonnull !14, !align !4162, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144608), !dbg !144607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144611), !dbg !144607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !144613, !noalias !144617
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !144618
  %i.e = load i32, ptr %i.d, align 4, !dbg !144618, !range !111390, !alias.scope !144611, !noalias !144608, !noundef !14
  %i.f = icmp eq i32 %i.e, 1, !dbg !144629
  %i.g = load ptr, ptr %3, align 8, !dbg !144629, !alias.scope !144611, !noalias !144608
  %.sroa.03.0.i = select i1 %i.f, ptr %3, ptr %i.g, !dbg !144629 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !144630
  %i.i = load i32, ptr %i.h, align 8, !dbg !144630, !alias.scope !144611, !noalias !144608, !noundef !14
  %i.j = zext i32 %i.i to i64, !dbg !144630
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !dbg !144631
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i, i64 %i.j, !dbg !144640
  store ptr %.sroa.03.0.i, ptr %i.b, align 8, !dbg !144643, !noalias !144617
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144643
  store ptr %i.k, ptr %i.l, align 8, !dbg !144643, !noalias !144617
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !144643
  store ptr %.val, ptr %i.m, align 8, !dbg !144643, !noalias !144617
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6filter6FilterINtNtB2f_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000EEB3L_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !144651, !noalias !144608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144654, !noalias !144617
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144655
  %i.o = load i32, ptr %i.n, align 8, !dbg !144655, !noalias !144617, !noundef !14
  %.not.i = icmp eq i32 %i.o, 0, !dbg !144662
  br i1 %.not.i, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit, label %bb.b, !dbg !144662

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144666
  %i.q = load i32, ptr %i.p, align 4, !dbg !144666, !range !111390, !noalias !144617, !noundef !14
  %i.r = icmp eq i32 %i.q, 1, !dbg !144671
  %i.s = load ptr, ptr %i.a, align 8, !dbg !144671, !noalias !144617
  %.sroa.04.0.i = select i1 %i.r, ptr %i.a, ptr %i.s, !dbg !144671
  %i.t = load i32, ptr %.sroa.04.0.i, align 4, !dbg !144672, !noalias !144608, !noundef !14
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit, !dbg !144675

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.b ], [ %2, %bb.a ], !dbg !144678
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144679, !alias.scope !144608, !noalias !144611
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144679, !noalias !144611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144680
  ret void, !dbg !144681
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144682 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = load ptr, ptr %1, align 8, !dbg !144683, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.f, align 8, !dbg !144684, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144685), !dbg !144684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144688), !dbg !144684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load i32, ptr %2, align 4, !dbg !144690, !alias.scope !144688, !noalias !144685, !noundef !14 ; 6 uses
  %i.h = zext i32 %i.g to i64, !dbg !144690
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !144694
  %i.j = load i32, ptr %i.i, align 4, !dbg !144694, !alias.scope !144688, !noalias !144685, !noundef !14 ; 3 uses
  %i.k = zext i32 %i.j to i64, !dbg !144694       ; 2 uses
  %i.l = load ptr, ptr %.val, align 8, !dbg !144695, !noalias !144698, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !144695
  %i.n = load i64, ptr %i.m, align 8, !dbg !144695, !noalias !144698, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !144699
  %i.p = load i64, ptr %i.o, align 8, !dbg !144699, !noalias !144698, !noundef !14
  %i.q = add i64 %i.p, %i.h, !dbg !144699
  store ptr %i.l, ptr %i.e, align 8, !dbg !144700, !noalias !144698
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !144700
  store i64 %i.n, ptr %i.r, align 8, !dbg !144700, !noalias !144698
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !144700
  store i64 %i.q, ptr %i.s, align 8, !dbg !144700, !noalias !144698
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !144700
  store i64 %i.k, ptr %i.t, align 8, !dbg !144700, !noalias !144698
end_hunk_0
