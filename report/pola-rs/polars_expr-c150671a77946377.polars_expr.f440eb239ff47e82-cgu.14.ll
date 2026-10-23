Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.14?download=true
inline.NumInlined: 8258
inline.NumDeleted: 2356
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by19rolling_quantile_by:bb.a
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr.exit170.i, !dbg !154008

bb.be:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr.exit170.i
  call void @llvm.experimental.noalias.scope.decl(metadata !153911), !dbg !154009
  %i.df = load i8, ptr %i.n, align 16, !dbg !154069, !range !872, !alias.scope !153911, !noalias !153874, !noundef !860
  %i.dg = icmp eq i8 %i.df, 31, !dbg !154069
  br i1 %i.dg, label %bb.bf, label %bb.bh, !dbg !154069

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !153912), !dbg !154069
  call void @llvm.experimental.noalias.scope.decl(metadata !153913), !dbg !154070
  call void @llvm.experimental.noalias.scope.decl(metadata !153914), !dbg !154071
  call void @llvm.experimental.noalias.scope.decl(metadata !153915), !dbg !154072
  %i.dh = load ptr, ptr %.sroa.08.0.sroa.gep174.i, align 8, !dbg !154073, !alias.scope !153916, !noalias !153874, !nonnull !860, !noundef !860
  %i.di = atomicrmw add ptr %i.dh, i64 -1 release, align 8, !dbg !154074, !noalias !153917
  %i.dj = icmp eq i64 %i.di, 1, !dbg !154075
  br i1 %i.dj, label %bb.bg, label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154075

bb.bg:                                            ; preds = %bb.bf
  fence acquire, !dbg !154076
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.08.0.sroa.gep174.i) #36, !dbg !154077, !noalias !153874
  br label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154077

bb.bh:                                            ; preds = %bb.be
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.n), !dbg !154069, !noalias !153874
  br label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154069

.thread.i:                                        ; preds = %bb.ar, %bb.aq, %bb.am
  %.pn156177.i = phi { ptr, i32 } [ %i.cf, %bb.aq ], [ %i.ce, %bb.am ], [ %i.cf, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153918), !dbg !154008
  call void @llvm.experimental.noalias.scope.decl(metadata !153919), !dbg !154078
  call void @llvm.experimental.noalias.scope.decl(metadata !153920), !dbg !154079
  %i.dk = load ptr, ptr %i.m, align 8, !dbg !154080, !alias.scope !153921, !noalias !153874, !nonnull !860, !noundef !860
  %i.dl = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !dbg !154081, !noalias !153922
  %i.dm = icmp eq i64 %i.dl, 1, !dbg !154082
  br i1 %i.dm, label %bb.bi, label %.thread178.i, !dbg !154082

bb.bi:                                            ; preds = %.thread.i
  fence acquire, !dbg !154083
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #36
          to label %.thread178.i unwind label %bb.ad, !dbg !154084, !noalias !153874

bb.bj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr.exit168.i
  call void @llvm.experimental.noalias.scope.decl(metadata !153923), !dbg !154009
  %i.dn = load i8, ptr %i.n, align 16, !dbg !154085, !range !872, !alias.scope !153923, !noalias !153874, !noundef !860
  %i.do = icmp eq i8 %i.dn, 31, !dbg !154085
  br i1 %i.do, label %bb.bk, label %bb.bm, !dbg !154085

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !153924), !dbg !154085
  call void @llvm.experimental.noalias.scope.decl(metadata !153925), !dbg !154086
  call void @llvm.experimental.noalias.scope.decl(metadata !153926), !dbg !154087
  call void @llvm.experimental.noalias.scope.decl(metadata !153927), !dbg !154088
  %i.dp = load ptr, ptr %.sroa.08.0.sroa.gep174.i, align 8, !dbg !154089, !alias.scope !153928, !noalias !153874, !nonnull !860, !noundef !860
  %i.dq = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !dbg !154090, !noalias !153929
  %i.dr = icmp eq i64 %i.dq, 1, !dbg !154091
  br i1 %i.dr, label %bb.bl, label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154091

bb.bl:                                            ; preds = %bb.bk
  fence acquire, !dbg !154092
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.08.0.sroa.gep174.i) #36, !dbg !154093, !noalias !153874
  br label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154093

bb.bm:                                            ; preds = %bb.bj
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.n), !dbg !154085, !noalias !153874
  br label %_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit, !dbg !154085

bb.bn:                                            ; preds = %.thread178.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.n) #34
          to label %bb.bo unwind label %bb.ad, !dbg !154009, !noalias !153874

bb.bo:                                            ; preds = %bb.bn, %.thread178.i
  resume { ptr, i32 } %.pn156.pn.i, !dbg !154010

_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch10rolling_by32roll_by_with_temporal_conversionNCNvB2_19rolling_quantile_by0EB6_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr.exit168.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr.exit170.i, %bb.bf, %bb.bg, %bb.bh, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !154009, !noalias !153874
  ret void, !dbg !154094
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7struct_11with_fields(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 0, 57646075230342349) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !154095 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [160 x i8], align 16              ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.617 = alloca [56 x i8], align 8          ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [64 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %.not = icmp eq i64 %2, 0, !dbg !154301
  br i1 %.not, label %bb.c, label %bb.b, !dbg !154301

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !154204
  call void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column7struct_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.n, ptr noundef nonnull align 16 %1), !dbg !154302
  %i.o = load i64, ptr %i.n, align 8, !dbg !154303, !range !920, !noundef !860 ; 2 uses
  %.not44 = icmp eq i64 %i.o, 18, !dbg !154303
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !154304
  %i.q = load ptr, ptr %i.p, align 8, !dbg !154304 ; 5 uses
  br i1 %.not44, label %bb.e, label %bb.d, !dbg !154305

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #38, !dbg !154301
  unreachable, !dbg !154301

bb.d:                                             ; preds = %bb.b
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !154306
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !154307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.630.0..sroa_idx, i64 56, i1 false), !dbg !154306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !154308
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !154307
  store i64 %i.o, ptr %i.r, align 8, !dbg !154307
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !154307
  store ptr %i.q, ptr %.sroa.232.0..sroa_idx, align 16, !dbg !154307
  store i8 32, ptr %0, align 16, !dbg !154307
  br label %bb.an, !dbg !154309

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !154308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !154310
  call void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE16fields_as_series(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.q), !dbg !154311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !154312
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !154313 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !154313, !noundef !860 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488, !dbg !154314
  call void @llvm.assume(i1 %i.u), !dbg !154315
  %i.v = load i8, ptr %1, align 16, !dbg !154316, !range !872, !noundef !860
  %.not45 = icmp eq i8 %i.v, 31, !dbg !154316
  br i1 %.not45, label %bb.g, label %bb.f, !dbg !154317

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !154318
  %i.x = load i64, ptr %i.w, align 8, !dbg !154318, !noundef !860
  br label %bb.h, !dbg !154319

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !154320
  %i.z = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.h unwind label %bb.k, !dbg !154321

.thread:                                          ; preds = %bb.ai, %bb.ab, %bb.x, %bb.k, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn51.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.cn, %bb.ai ], [ %i.ci, %bb.ab ], [ %.pn49, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.m) #34
          to label %common.resume unwind label %bb.ap, !dbg !154322

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0 = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.g ], !dbg !154323
  %i.aa = add nsw i64 %i.t, -1, !dbg !154324
  %i.ab = add i64 %i.aa, %.sroa.06.0, !dbg !154324
  invoke void @_RNvXs6_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapRNtNtB7_6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, i64 noundef %i.ab)
          to label %bb.i unwind label %bb.k, !dbg !154325

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !154326
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !154326, !nonnull !860, !noundef !860 ; 2 uses
  %i.ae = load i64, ptr %i.s, align 8, !dbg !154327, !noundef !860 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ae, 4, !dbg !154328
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx, !dbg !154328
  %i.ag = icmp eq i64 %i.ae, 0, !dbg !154329
  br i1 %i.ag, label %._crit_edge, label %.lr.ph, !dbg !154223

bb.j:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.07.090, i64 16, !dbg !154330 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af, !dbg !154329
  br i1 %i.ai, label %._crit_edge, label %.lr.ph, !dbg !154223

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.07.090 = phi ptr [ %i.ah, %bb.j ], [ %i.ad, %bb.i ] ; 4 uses
  %i.aj = load ptr, ptr %.sroa.07.090, align 8, !dbg !154331, !nonnull !860, !noundef !860
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.090, i64 8, !dbg !154331
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !154331, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !154332
  %i.an = load i64, ptr %i.am, align 8, !dbg !154332, !range !982, !invariant.load !860
  %i.ao = add nsw i64 %i.an, -1, !dbg !154332
  %i.ap = and i64 %i.ao, -16, !dbg !154332
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap, !dbg !154332
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !154332
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 288, !dbg !154225
  %i.at = load ptr, ptr %i.as, align 8, !dbg !154225, !invariant.load !860, !nonnull !860
  %i.au = invoke noundef nonnull align 8 ptr %i.at(ptr noundef nonnull %i.ar)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !154333

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.s, %bb.t, %._crit_edge96, %bb.ac, %bb.aj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !154334

bb.l:                                             ; preds = %.lr.ph
  %i.av = invoke { i64, ptr } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.07.090)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !154335 ; 0 uses

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.idx97 = mul nuw i64 %2, 160, !dbg !154336
  %i.aw = getelementptr i8, ptr %1, i64 %.idx97, !dbg !154336
  %i.ax = icmp eq i64 %2, 1, !dbg !154337
  br i1 %i.ax, label %._crit_edge96, label %.lr.ph95, !dbg !154338

.lr.ph95:                                         ; preds = %._crit_edge
  %.sroa.010.091 = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !154339
  br label %bb.n, !dbg !154338

bb.m:                                             ; preds = %bb.r
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.093, i64 160, !dbg !154339 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.010.0, %i.aw, !dbg !154337
  br i1 %i.ay, label %._crit_edge96, label %bb.n, !dbg !154338

bb.n:                                             ; preds = %.lr.ph95, %bb.m
  %.sroa.010.093 = phi ptr [ %.sroa.010.091, %.lr.ph95 ], [ %.sroa.010.0, %bb.m ] ; 5 uses
  %.pn92 = phi ptr [ %1, %.lr.ph95 ], [ %.sroa.010.093, %bb.m ] ; 3 uses
  %i.az = load i8, ptr %.sroa.010.093, align 16, !dbg !154340, !range !872, !noundef !860
  %.not46 = icmp eq i8 %i.az, 31, !dbg !154340
  br i1 %.not46, label %bb.o, label %.thread75, !dbg !154341

._crit_edge96:                                    ; preds = %bb.m, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !154342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !154343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !154344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !154345, !noalias !154243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !dbg !154345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !154346
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !154347
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !154348
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 8, i64 noundef 16)
          to label %bb.s unwind label %bb.k, !dbg !154349

.thread75:                                        ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn92, i64 256, !dbg !154350
  br label %bb.q, !dbg !154351

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn92, i64 168, !dbg !154352 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !154352, !nonnull !860, !noundef !860
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn92, i64 176, !dbg !154352
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !154352, !nonnull !860, !align !884, !noundef !860 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !154353
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !154353, !range !982, !invariant.load !860
  %i.bj = add nsw i64 %i.bi, -1, !dbg !154353
  %i.bk = and i64 %i.bj, -16, !dbg !154353
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk, !dbg !154353
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16, !dbg !154353
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 288, !dbg !154354
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !154354, !invariant.load !860, !nonnull !860
  %i.bp = invoke noundef nonnull align 8 ptr %i.bo(ptr noundef nonnull %i.bm)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !154355 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.pr = load i8, ptr %.sroa.010.093, align 16, !dbg !154356
  %.not47 = icmp eq i8 %.pr, 31, !dbg !154356
  br i1 %.not47, label %bb.r, label %bb.q, !dbg !154351

bb.q:                                             ; preds = %.thread75, %bb.p
  %.sroa.013.079 = phi ptr [ %i.bc, %.thread75 ], [ %i.bp, %bb.p ]
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %.sroa.010.093)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !154357

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.013.078 = phi ptr [ %.sroa.013.079, %bb.q ], [ %i.bp, %bb.p ]
  %.sroa.014.0 = phi ptr [ %i.bq, %bb.q ], [ %i.bd, %bb.p ], !dbg !154358
  %i.br = invoke { i64, ptr } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.013.078, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.014.0)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !154359 ; 0 uses

bb.s:                                             ; preds = %._crit_edge96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !154360, !noalias !154243
  invoke void @_RNvMs16_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB6_10IntoValuesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.k, !dbg !154361

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !154362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !154363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !154364
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter10IntoValuesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRB11_EEE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.u unwind label %bb.k, !dbg !154365

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !154366
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617), !dbg !154294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !154294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !154367
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !154368
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !154368, !nonnull !860, !noundef !860 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !154369
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64, !dbg !154369 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 87, !dbg !154370
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !154370, !range !971, !noundef !860
  %i.bx = icmp eq i8 %i.bw, -40, !dbg !154371
  br i1 %i.bx, label %bb.v, label %bb.w, !dbg !154371

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu)
          to label %bb.y unwind label %.thread84, !dbg !154372

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.bu, i64 24, i1 false), !dbg !154373
  br label %bb.y, !dbg !154374

bb.x:                                             ; preds = %.thread84, %bb.ao
  %.pn49 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp83, %bb.ao ], [ %lpad.thr_comm82, %.thread84 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.k) #34
          to label %.thread unwind label %bb.ap, !dbg !154375

bb.y:                                             ; preds = %bb.v, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !154376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !154377
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !154378
  %i.bz = load i64, ptr %i.by, align 8, !dbg !154378, !noundef !860
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !154379
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !154379, !nonnull !860, !noundef !860 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !154380
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !154380, !noundef !860
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.cd, !dbg !154381
  invoke void @_RINvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB5_12ChunkedArrayNtNtB7_9datatypes10StructTypeE11from_seriesINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtB7_6series6SeriesEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.bz, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ce)
          to label %bb.z unwind label %.thread84, !dbg !154294

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !154382
  %i.cf = load i64, ptr %i.g, align 8, !dbg !154383, !range !920, !noundef !860 ; 2 uses
  %.not48 = icmp eq i64 %i.cf, 18, !dbg !154383
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !154384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i64 56, i1 false), !dbg !154384
  br i1 %.not48, label %bb.ae, label %bb.aa, !dbg !154385

bb.aa:                                            ; preds = %bb.z
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !154386
  %.sroa.639.0.copyload = load i64, ptr %.sroa.639.0..sroa_idx, align 8, !dbg !154386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !154387
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !154388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false), !dbg !154387
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !154388
  store i64 %i.cf, ptr %i.ch, align 8, !dbg !154388
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !154388
  store i64 %.sroa.639.0.copyload, ptr %.sroa.342.0..sroa_idx, align 8, !dbg !154388
  store i8 32, ptr %0, align 16, !dbg !154388
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617), !dbg !154389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !154390
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ac unwind label %bb.ab, !dbg !154391

bb.ab:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.ad, !dbg !154392

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.k, !dbg !154393

bb.ad:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !154391
  unreachable, !dbg !154391

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !154387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false), !dbg !154294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617), !dbg !154389
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE18zip_outer_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.q)
          to label %bb.af unwind label %bb.ao, !dbg !154394

.thread84:                                        ; preds = %bb.v, %bb.y, %bb.ag, %bb.af
  %lpad.thr_comm82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x, !dbg !154390

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !154395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !154395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !154395
  %i.ck = invoke { ptr, ptr } @_RNvXs2I_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10StructTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d)
          to label %bb.ag unwind label %.thread84, !dbg !154396 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cl = extractvalue { ptr, ptr } %i.ck, 0, !dbg !154396
  %i.cm = extractvalue { ptr, ptr } %i.ck, 1, !dbg !154396
  invoke fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.e, ptr noundef nonnull %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.cm)
          to label %bb.ah unwind label %.thread84, !dbg !154397

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !154398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.e, i64 160, i1 false), !dbg !154399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !154400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !154390
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.aj unwind label %bb.ai, !dbg !154401

bb.ai:                                            ; preds = %bb.ah
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.ak, !dbg !154402

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit58 unwind label %bb.k, !dbg !154403
end_hunk_0
