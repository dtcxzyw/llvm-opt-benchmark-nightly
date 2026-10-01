Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt16TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !155012
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155012

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !154957
  ret void, !dbg !155013

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !155000
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !154957
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !154957

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !154928), !dbg !154957
  call void @llvm.experimental.noalias.scope.decl(metadata !154929), !dbg !155014
  call void @llvm.experimental.noalias.scope.decl(metadata !154930), !dbg !155015
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !155016, !alias.scope !154931, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !155017, !noalias !154931
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !155018
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155018

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !155019
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !155020
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155020

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !155021
  unreachable, !dbg !155021

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !155021

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154932), !dbg !154957
  call void @llvm.experimental.noalias.scope.decl(metadata !154933), !dbg !155022
  call void @llvm.experimental.noalias.scope.decl(metadata !154934), !dbg !155023
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !155024, !alias.scope !154935, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !155025, !noalias !154935
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !155026
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !155026

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !155027
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !155028
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt16TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !155029 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [2048 x i8], align 2              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !155331, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !155331, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !155332           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !155332
  %i.o = add i64 %i.n, %i.m, !dbg !155333
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155334
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155334, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !155334, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !155335 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !155336 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155337
  %i.u = load ptr, ptr %i.t, align 8, !dbg !155337, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !155337, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !155338
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !155338

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !155339
  %i.x = and i64 %i.v, 63, !dbg !155340
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !155341
  %i.y = zext i1 %.not10.i.i to i64, !dbg !155341
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !155341 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !155342

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !155343
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !155344
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !155345
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !155346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155170
  store ptr %i.i, ptr %i.c, align 8, !dbg !155349
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155349
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155349
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155342, !noalias !155171
  br label %bb.a, !dbg !155342

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !155350, !noalias !155172
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !155351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155352, !noalias !155171
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !155353 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !155342
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !155342

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !155354
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !155355 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155356, !noalias !155171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155360
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !155338
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !155338

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !155361

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !155343
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !155344
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !155345
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !155346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155170
  store ptr %i.i, ptr %i.c, align 8, !dbg !155349
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155349
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155349
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155342, !noalias !155171
  br label %bb.b, !dbg !155342

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155350, !noalias !155172
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155352, !noalias !155171
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !155353 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155342
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155342

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !155354
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !155355 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155356, !noalias !155171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !155362, !noalias !155174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155359
  br label %.split212, !dbg !155363

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !155363
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !155363
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !155363

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155360
  %.not = icmp eq i64 %i.dc, 0, !dbg !155338
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !155338

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !155364
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !155364 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !155364
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !155365 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !155366, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !155366 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !155367, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !155368
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !155368

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !155369
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !155370
  %i.dk = lshr i64 %i.di, 5, !dbg !155371
  %i.dl = and i64 %i.di, 31, !dbg !155372
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !155373
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !155373
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !155373
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !155368

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !155374, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !155375
  store ptr inttoptr (i64 2 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !155376
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !155377 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !155374
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !155378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !155379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !155380
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !155381
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !155191

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br label %.loopexit102, !dbg !155383

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !155191 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !155191
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !155191 ; 5 uses
  br label %bb.c, !dbg !155191

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !155383

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !155384 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !155385 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !155386
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !155386

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !155387

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !155387

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !155387
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !155388 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !155388
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !155388, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !155389
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !155389, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !155389 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !155390
  call void @llvm.assume(i1 %i.ei), !dbg !155391
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !155388, !nonnull !4270, !align !5567, !noundef !4270
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.eh, !dbg !155392
  %i.el = load i16, ptr %i.ek, align 2, !dbg !155393, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !155394
  store i16 %i.el, ptr %gep.epil, align 2, !dbg !155394
  br label %..loopexit101_crit_edge, !dbg !155395

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !155395 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !155396
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !155383

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !155387 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !155387

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !155397

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !155397

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !155388 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !155388
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !155388, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !155389
  %i.es = load i64, ptr %i.er, align 8, !dbg !155389, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !155389 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !155390
  call void @llvm.assume(i1 %i.eu), !dbg !155391
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !155398 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !155388, !nonnull !4270, !align !5567, !noundef !4270
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.et, !dbg !155392
  %i.ey = load i16, ptr %i.ex, align 2, !dbg !155393, !noundef !4270
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !155394
  store i16 %i.ey, ptr %gep, align 2, !dbg !155394
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !155388 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !155388
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !155388, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !155389
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !155389, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !155389 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !155390
  call void @llvm.assume(i1 %i.ff), !dbg !155391
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !155398 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !155388, !nonnull !4270, !align !5567, !noundef !4270
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fe, !dbg !155392
  %i.fj = load i16, ptr %i.fi, align 2, !dbg !155393, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !155394
  store i16 %i.fj, ptr %gep.1, align 2, !dbg !155394
  %niter.next.1 = add i64 %niter, 2, !dbg !155387 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !155387
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !155387

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !155399, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !155400 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !155401 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !155402
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !155402

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !155386
  unreachable, !dbg !155386

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !155403 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !155404
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !155404

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !155404  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !155405
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !155405

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !155406, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !155407
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !155408
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !155408, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !155409 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !155404
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !155404

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !155410  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !155405
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !155405

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !155402
  unreachable, !dbg !155402

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !155409
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !155410
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !155410
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !155411
  br label %bb.i, !dbg !155404

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !155412
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !155413
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !155413

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !155410      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !155405
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !155405, !llvm.loop !155140

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !155414

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !155415, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !155416
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !155416, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !155417
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !155417

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !155418
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !155414

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !155419 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !155420 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt32TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !155660
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155660

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !155605
  ret void, !dbg !155661

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !155648
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !155605
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155605

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !155576), !dbg !155605
  call void @llvm.experimental.noalias.scope.decl(metadata !155577), !dbg !155662
  call void @llvm.experimental.noalias.scope.decl(metadata !155578), !dbg !155663
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !155664, !alias.scope !155579, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !155665, !noalias !155579
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !155666
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155666

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !155667
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !155668
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !155668

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !155669
  unreachable, !dbg !155669

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !155669

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155580), !dbg !155605
  call void @llvm.experimental.noalias.scope.decl(metadata !155581), !dbg !155670
  call void @llvm.experimental.noalias.scope.decl(metadata !155582), !dbg !155671
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !155672, !alias.scope !155583, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !155673, !noalias !155583
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !155674
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !155674

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !155675
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !155676
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt32TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !155677 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [4096 x i8], align 4              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !155979, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !155979, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !155980           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !155980
  %i.o = add i64 %i.n, %i.m, !dbg !155981
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155982
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155982, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !155982, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !155983 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !155984 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155985
  %i.u = load ptr, ptr %i.t, align 8, !dbg !155985, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !155985, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !155986
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !155986

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !155987
  %i.x = and i64 %i.v, 63, !dbg !155988
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !155989
  %i.y = zext i1 %.not10.i.i to i64, !dbg !155989
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !155989 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !155990

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !155991
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !155992
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !155993
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !155994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155818
  store ptr %i.i, ptr %i.c, align 8, !dbg !155997
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155997
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155997
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155990, !noalias !155819
  br label %bb.a, !dbg !155990

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !155998, !noalias !155820
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !155999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156000, !noalias !155819
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !156001 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !155990
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !155990

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !156002
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !156003 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156004, !noalias !155819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156008
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !155986
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !155986

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !156009

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !155991
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !155992
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !155993
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !155994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155818
  store ptr %i.i, ptr %i.c, align 8, !dbg !155997
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155997
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155997
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155990, !noalias !155819
  br label %bb.b, !dbg !155990

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155998, !noalias !155820
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156000, !noalias !155819
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !156001 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155990
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155990

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !156002
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !156003 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156004, !noalias !155819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !156010, !noalias !155822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156007
  br label %.split212, !dbg !156011

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !156011
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !156011
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !156011

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156008
  %.not = icmp eq i64 %i.dc, 0, !dbg !155986
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !155986

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !156012
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !156012 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !156012
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !156013 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !156014, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !156014 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !156015, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !156016
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !156016

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !156017
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !156018
  %i.dk = lshr i64 %i.di, 5, !dbg !156019
  %i.dl = and i64 %i.di, 31, !dbg !156020
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !156021
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !156021
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !156021
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !156016

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !156022, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !156023
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !156024
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !156025 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !156022
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !156026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !156027
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !156028
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !156029
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !155839

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br label %.loopexit102, !dbg !156031

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !155839 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !155839
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !155839 ; 5 uses
  br label %bb.c, !dbg !155839

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !156031

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !156032 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !156033 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !156034
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !156034

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !156035

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !156035

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !156035
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !156036 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !156036
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !156036, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !156037
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !156037, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !156037 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !156038
  call void @llvm.assume(i1 %i.ei), !dbg !156039
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !156036, !nonnull !4270, !align !5569, !noundef !4270
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eh, !dbg !156040
  %i.el = load i32, ptr %i.ek, align 4, !dbg !156041, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !156042
  store i32 %i.el, ptr %gep.epil, align 4, !dbg !156042
  br label %..loopexit101_crit_edge, !dbg !156043

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !156043 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !156044
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !156031

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !156035 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !156035

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !156045

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !156045

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !156036 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !156036
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !156036, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !156037
  %i.es = load i64, ptr %i.er, align 8, !dbg !156037, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !156037 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !156038
  call void @llvm.assume(i1 %i.eu), !dbg !156039
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !156046 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !156036, !nonnull !4270, !align !5569, !noundef !4270
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et, !dbg !156040
  %i.ey = load i32, ptr %i.ex, align 4, !dbg !156041, !noundef !4270
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !156042
  store i32 %i.ey, ptr %gep, align 4, !dbg !156042
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !156036 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !156036
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !156036, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !156037
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !156037, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !156037 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !156038
  call void @llvm.assume(i1 %i.ff), !dbg !156039
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !156046 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !156036, !nonnull !4270, !align !5569, !noundef !4270
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fe, !dbg !156040
  %i.fj = load i32, ptr %i.fi, align 4, !dbg !156041, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !156042
  store i32 %i.fj, ptr %gep.1, align 4, !dbg !156042
  %niter.next.1 = add i64 %niter, 2, !dbg !156035 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !156035
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !156035

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !156047, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !156048 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !156049 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !156050
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !156050

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !156034
  unreachable, !dbg !156034

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !156051 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !156052
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !156052

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !156052  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !156053
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !156053

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !156054, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !156055
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !156056
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !156056, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !156057 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !156052
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !156052

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !156058  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !156053
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !156053

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !156050
  unreachable, !dbg !156050

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !156057
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !156058
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !156058
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !156059
  br label %bb.i, !dbg !156052

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !156060
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !156061
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !156061

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !156058      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !156053
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !156053, !llvm.loop !155788

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !156062

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !156063, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !156064
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !156064, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !156065
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !156065

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !156066
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !156062

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !156067 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !156068 ; 4 uses
end_hunk_1
begin_hunk_2_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt64TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !156308
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156308

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !156253
  ret void, !dbg !156309

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !156296
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !156253
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156253

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !156224), !dbg !156253
  call void @llvm.experimental.noalias.scope.decl(metadata !156225), !dbg !156310
  call void @llvm.experimental.noalias.scope.decl(metadata !156226), !dbg !156311
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !156312, !alias.scope !156227, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !156313, !noalias !156227
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !156314
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156314

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !156315
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !156316
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156316

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !156317
  unreachable, !dbg !156317

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !156317

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156228), !dbg !156253
  call void @llvm.experimental.noalias.scope.decl(metadata !156229), !dbg !156318
  call void @llvm.experimental.noalias.scope.decl(metadata !156230), !dbg !156319
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !156320, !alias.scope !156231, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !156321, !noalias !156231
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !156322
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !156322

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !156323
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !156324
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt64TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !156325 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [8192 x i8], align 8              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !156627, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !156627, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !156628           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !156628
  %i.o = add i64 %i.n, %i.m, !dbg !156629
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !156630
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156630, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !156630, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !156631 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !156632 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !156633
  %i.u = load ptr, ptr %i.t, align 8, !dbg !156633, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !156633, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !156634
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !156634

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !156635
  %i.x = and i64 %i.v, 63, !dbg !156636
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !156637
  %i.y = zext i1 %.not10.i.i to i64, !dbg !156637
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !156637 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !156638

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !156639
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !156640
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !156641
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !156642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !156643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !156644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !156466
  store ptr %i.i, ptr %i.c, align 8, !dbg !156645
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !156645
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !156645
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !156645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156638, !noalias !156467
  br label %bb.a, !dbg !156638

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !156646, !noalias !156468
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !156647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156648, !noalias !156467
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !156649 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !156638
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !156638

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !156650
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !156651 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156652, !noalias !156467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156656
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !156634
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !156634

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !156657

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !156639
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !156640
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !156641
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !156642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !156643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !156644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !156466
  store ptr %i.i, ptr %i.c, align 8, !dbg !156645
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !156645
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !156645
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !156645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156638, !noalias !156467
  br label %bb.b, !dbg !156638

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !156646, !noalias !156468
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !156647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156648, !noalias !156467
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !156649 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !156638
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !156638

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !156650
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !156651 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156652, !noalias !156467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !156658, !noalias !156470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !156644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156655
  br label %.split212, !dbg !156659

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !156659
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !156659
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !156659

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156656
  %.not = icmp eq i64 %i.dc, 0, !dbg !156634
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !156634

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !156660
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !156660 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !156660
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !156661 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !156662, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !156662 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !156663, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !156664
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !156664

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !156665
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !156666
  %i.dk = lshr i64 %i.di, 5, !dbg !156667
  %i.dl = and i64 %i.di, 31, !dbg !156668
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !156669
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !156669
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !156669
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !156664

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !156670, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !156671
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !156672
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !156673 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !156670
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !156674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !156675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !156676
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !156677
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !156487

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br label %.loopexit102, !dbg !156679

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !156487 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !156487
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !156487 ; 5 uses
  br label %bb.c, !dbg !156487

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !156679

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !156680 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !156681 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !156682
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !156682

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !156683

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !156683

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !156683
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !156684 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !156684
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !156684, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !156685
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !156685, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !156685 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !156686
  call void @llvm.assume(i1 %i.ei), !dbg !156687
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !156684, !nonnull !4270, !align !4488, !noundef !4270
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh, !dbg !156688
  %i.el = load i64, ptr %i.ek, align 8, !dbg !156689, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !156690
  store i64 %i.el, ptr %gep.epil, align 8, !dbg !156690
  br label %..loopexit101_crit_edge, !dbg !156691

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !156691 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !156692
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !156679

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !156683 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !156683

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !156693

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !156693

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !156684 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !156684
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !156684, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !156685
  %i.es = load i64, ptr %i.er, align 8, !dbg !156685, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !156685 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !156686
  call void @llvm.assume(i1 %i.eu), !dbg !156687
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !156694 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !156684, !nonnull !4270, !align !4488, !noundef !4270
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.et, !dbg !156688
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !156689, !noundef !4270
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !156690
  store i64 %i.ey, ptr %gep, align 8, !dbg !156690
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !156684 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !156684
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !156684, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !156685
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !156685, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !156685 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !156686
  call void @llvm.assume(i1 %i.ff), !dbg !156687
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !156694 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !156684, !nonnull !4270, !align !4488, !noundef !4270
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe, !dbg !156688
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !156689, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !156690
  store i64 %i.fj, ptr %gep.1, align 8, !dbg !156690
  %niter.next.1 = add i64 %niter, 2, !dbg !156683 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !156683
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !156683

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !156695, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !156696 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !156697 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !156698
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !156698

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !156682
  unreachable, !dbg !156682

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !156699 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !156700
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !156700

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !156700  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !156701
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !156701

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !156702, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !156703
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !156704
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !156704, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !156705 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !156700
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !156700

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !156706  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !156701
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !156701

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !156698
  unreachable, !dbg !156698

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !156705
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !156706
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !156706
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !156707
  br label %bb.i, !dbg !156700

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !156708
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !156709
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !156709

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !156706      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !156701
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !156701, !llvm.loop !156436

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !156710

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !156711, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !156712
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !156712, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !156713
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !156713

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !156714
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !156710

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !156715 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !156716 ; 4 uses
end_hunk_2
begin_hunk_3_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float16TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !156956
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156956

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !156901
  ret void, !dbg !156957

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !156944
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !156901
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156901

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !156872), !dbg !156901
  call void @llvm.experimental.noalias.scope.decl(metadata !156873), !dbg !156958
  call void @llvm.experimental.noalias.scope.decl(metadata !156874), !dbg !156959
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !156960, !alias.scope !156875, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !156961, !noalias !156875
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !156962
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156962

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !156963
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !156964
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !156964

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !156965
  unreachable, !dbg !156965

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !156965

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156876), !dbg !156901
  call void @llvm.experimental.noalias.scope.decl(metadata !156877), !dbg !156966
  call void @llvm.experimental.noalias.scope.decl(metadata !156878), !dbg !156967
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !156968, !alias.scope !156879, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !156969, !noalias !156879
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !156970
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !156970

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !156971
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !156972
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float16TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !156973 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [2048 x i8], align 2              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !157275, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !157275, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !157276           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !157276
  %i.o = add i64 %i.n, %i.m, !dbg !157277
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157278
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157278, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !157278, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !157279 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !157280 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !157281
  %i.u = load ptr, ptr %i.t, align 8, !dbg !157281, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !157281, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !157282
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !157282

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !157283
  %i.x = and i64 %i.v, 63, !dbg !157284
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !157285
  %i.y = zext i1 %.not10.i.i to i64, !dbg !157285
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !157285 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !157286

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !157287
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !157288
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !157289
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !157290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157114
  store ptr %i.i, ptr %i.c, align 8, !dbg !157293
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157293
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157293
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157286, !noalias !157115
  br label %bb.a, !dbg !157286

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !157294, !noalias !157116
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !157295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157296, !noalias !157115
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !157297 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !157286
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !157286

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !157298
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !157299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157300, !noalias !157115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157304
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !157282
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !157282

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !157305

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !157287
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !157288
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !157289
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !157290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157114
  store ptr %i.i, ptr %i.c, align 8, !dbg !157293
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157293
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157293
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157286, !noalias !157115
  br label %bb.b, !dbg !157286

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157294, !noalias !157116
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157296, !noalias !157115
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157297 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157286
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157286

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !157298
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !157299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157300, !noalias !157115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157306, !noalias !157118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157303
  br label %.split212, !dbg !157307

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !157307
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !157307
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !157307

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157304
  %.not = icmp eq i64 %i.dc, 0, !dbg !157282
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !157282

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !157308
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157308 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !157308
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !157309 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157310, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !157310 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157311, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !157312
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !157312

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !157313
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157314
  %i.dk = lshr i64 %i.di, 5, !dbg !157315
  %i.dl = and i64 %i.di, 31, !dbg !157316
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !157317
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !157317
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157317
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !157312

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !157318, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157319
  store ptr inttoptr (i64 2 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !157320
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !157321 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !157318
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !157322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157324
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !157325
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !157135

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br label %.loopexit102, !dbg !157327

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !157135 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !157135
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !157135 ; 5 uses
  br label %bb.c, !dbg !157135

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !157327

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !157328 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !157329 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !157330
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !157330

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !157331

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !157331

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !157331
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !157332 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !157332
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !157332, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !157333
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !157333, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !157333 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !157334
  call void @llvm.assume(i1 %i.ei), !dbg !157335
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !157332, !nonnull !4270, !align !5567, !noundef !4270
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.eh, !dbg !157336
  %i.el = load i16, ptr %i.ek, align 2, !dbg !157337, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !157338
  store i16 %i.el, ptr %gep.epil, align 2, !dbg !157338
  br label %..loopexit101_crit_edge, !dbg !157339

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !157339 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !157340
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !157327

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !157331 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !157331

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !157341

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !157341

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !157332 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !157332
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !157332, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !157333
  %i.es = load i64, ptr %i.er, align 8, !dbg !157333, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !157333 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !157334
  call void @llvm.assume(i1 %i.eu), !dbg !157335
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !157342 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !157332, !nonnull !4270, !align !5567, !noundef !4270
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.et, !dbg !157336
  %i.ey = load i16, ptr %i.ex, align 2, !dbg !157337, !noundef !4270
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !157338
  store i16 %i.ey, ptr %gep, align 2, !dbg !157338
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !157332 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !157332
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !157332, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !157333
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !157333, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !157333 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !157334
  call void @llvm.assume(i1 %i.ff), !dbg !157335
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !157342 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !157332, !nonnull !4270, !align !5567, !noundef !4270
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fe, !dbg !157336
  %i.fj = load i16, ptr %i.fi, align 2, !dbg !157337, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !157338
  store i16 %i.fj, ptr %gep.1, align 2, !dbg !157338
  %niter.next.1 = add i64 %niter, 2, !dbg !157331 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157331
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !157331

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !157343, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !157344 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !157345 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !157346
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !157346

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157330
  unreachable, !dbg !157330

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !157347 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !157348
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !157348

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !157348  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !157349
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !157349

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !157350, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !157351
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !157352
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !157352, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !157353 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !157348
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !157348

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !157354  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !157349
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !157349

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !157346
  unreachable, !dbg !157346

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !157353
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !157354
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !157354
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !157355
  br label %bb.i, !dbg !157348

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !157356
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !157357
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !157357

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !157354      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !157349
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !157349, !llvm.loop !157084

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !157358

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !157359, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !157360
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !157360, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !157361
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !157361

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !157362
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !157358

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !157363 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !157364 ; 4 uses
end_hunk_3
begin_hunk_4_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float32TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !157604
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !157604

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !157549
  ret void, !dbg !157605

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !157592
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !157549
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !157549

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !157520), !dbg !157549
  call void @llvm.experimental.noalias.scope.decl(metadata !157521), !dbg !157606
  call void @llvm.experimental.noalias.scope.decl(metadata !157522), !dbg !157607
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !157608, !alias.scope !157523, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !157609, !noalias !157523
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !157610
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !157610

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !157611
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !157612
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !157612

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !157613
  unreachable, !dbg !157613

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !157613

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157524), !dbg !157549
  call void @llvm.experimental.noalias.scope.decl(metadata !157525), !dbg !157614
  call void @llvm.experimental.noalias.scope.decl(metadata !157526), !dbg !157615
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !157616, !alias.scope !157527, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !157617, !noalias !157527
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !157618
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !157618

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !157619
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !157620
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float32TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !157621 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [4096 x i8], align 4              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !157923, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !157923, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !157924           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !157924
  %i.o = add i64 %i.n, %i.m, !dbg !157925
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157926
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157926, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !157926, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !157927 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !157928 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !157929
  %i.u = load ptr, ptr %i.t, align 8, !dbg !157929, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !157929, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !157930
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !157930

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !157931
  %i.x = and i64 %i.v, 63, !dbg !157932
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !157933
  %i.y = zext i1 %.not10.i.i to i64, !dbg !157933
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !157933 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !157934

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !157935
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !157936
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !157937
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !157938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157762
  store ptr %i.i, ptr %i.c, align 8, !dbg !157941
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157941
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157941
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157934, !noalias !157763
  br label %bb.a, !dbg !157934

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !157942, !noalias !157764
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !157943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157944, !noalias !157763
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !157945 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !157934
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !157934

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !157946
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !157947 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157948, !noalias !157763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157952
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !157930
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !157930

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !157953

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !157935
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !157936
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !157937
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !157938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157762
  store ptr %i.i, ptr %i.c, align 8, !dbg !157941
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157941
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157941
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157934, !noalias !157763
  br label %bb.b, !dbg !157934

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157942, !noalias !157764
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157944, !noalias !157763
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157945 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157934
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157934

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !157946
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !157947 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157948, !noalias !157763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157954, !noalias !157766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157951
  br label %.split212, !dbg !157955

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !157955
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !157955
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !157955

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157952
  %.not = icmp eq i64 %i.dc, 0, !dbg !157930
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !157930

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !157956
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157956 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !157956
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !157957 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157958, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !157958 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157959, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !157960
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !157960

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !157961
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157962
  %i.dk = lshr i64 %i.di, 5, !dbg !157963
  %i.dl = and i64 %i.di, 31, !dbg !157964
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !157965
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !157965
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157965
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !157960

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !157966, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157967
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !157968
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !157969 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !157966
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !157970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157972
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !157973
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !157783

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br label %.loopexit102, !dbg !157975

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !157783 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !157783
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !157783 ; 5 uses
  br label %bb.c, !dbg !157783

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !157975

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !157976 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !157977 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !157978
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !157978

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !157979

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !157979

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !157979
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !157980 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !157980
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !157980, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !157981
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !157981, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !157981 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !157982
  call void @llvm.assume(i1 %i.ei), !dbg !157983
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !157980, !nonnull !4270, !align !5569, !noundef !4270
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eh, !dbg !157984
  %i.el = load float, ptr %i.ek, align 4, !dbg !157985, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !157986
  store float %i.el, ptr %gep.epil, align 4, !dbg !157986
  br label %..loopexit101_crit_edge, !dbg !157987

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !157987 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !157988
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !157975

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !157979 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !157979

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !157989

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !157989

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !157980 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !157980
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !157980, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !157981
  %i.es = load i64, ptr %i.er, align 8, !dbg !157981, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !157981 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !157982
  call void @llvm.assume(i1 %i.eu), !dbg !157983
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !157990 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !157980, !nonnull !4270, !align !5569, !noundef !4270
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et, !dbg !157984
  %i.ey = load float, ptr %i.ex, align 4, !dbg !157985, !noundef !4270
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !157986
  store float %i.ey, ptr %gep, align 4, !dbg !157986
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !157980 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !157980
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !157980, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !157981
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !157981, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !157981 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !157982
  call void @llvm.assume(i1 %i.ff), !dbg !157983
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !157990 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !157980, !nonnull !4270, !align !5569, !noundef !4270
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fe, !dbg !157984
  %i.fj = load float, ptr %i.fi, align 4, !dbg !157985, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !157986
  store float %i.fj, ptr %gep.1, align 4, !dbg !157986
  %niter.next.1 = add i64 %niter, 2, !dbg !157979 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157979
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !157979

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !157991, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !157992 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !157993 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !157994
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !157994

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157978
  unreachable, !dbg !157978

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !157995 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !157996
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !157996

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !157996  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !157997
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !157997

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !157998, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !157999
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !158000
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !158000, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !158001 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !157996
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !157996

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !158002  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !157997
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !157997

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !157994
  unreachable, !dbg !157994

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !158001
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !158002
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !158002
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !158003
  br label %bb.i, !dbg !157996

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !158004
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !158005
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !158005

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !158002      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !157997
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !157997, !llvm.loop !157732

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !158006

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !158007, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !158008
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !158008, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !158009
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !158009

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !158010
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !158006

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !158011 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !158012 ; 4 uses
end_hunk_4
begin_hunk_5_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float64TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !158252
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !158197
  ret void, !dbg !158253

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !158240
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !158197
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158197

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !158168), !dbg !158197
  call void @llvm.experimental.noalias.scope.decl(metadata !158169), !dbg !158254
  call void @llvm.experimental.noalias.scope.decl(metadata !158170), !dbg !158255
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !158256, !alias.scope !158171, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !158257, !noalias !158171
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !158258
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158258

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !158259
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !158260
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158260

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !158261
  unreachable, !dbg !158261

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !158261

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158172), !dbg !158197
  call void @llvm.experimental.noalias.scope.decl(metadata !158173), !dbg !158262
  call void @llvm.experimental.noalias.scope.decl(metadata !158174), !dbg !158263
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !158264, !alias.scope !158175, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !158265, !noalias !158175
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !158266
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !158266

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !158267
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !158268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float64TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !158269 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [8192 x i8], align 8              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !158571, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !158571, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !158572           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !158572
  %i.o = add i64 %i.n, %i.m, !dbg !158573
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !158574
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158574, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !158574, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !158575 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !158576 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !158577
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158577, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !158577, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !158578
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !158578

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !158579
  %i.x = and i64 %i.v, 63, !dbg !158580
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !158581
  %i.y = zext i1 %.not10.i.i to i64, !dbg !158581
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !158581 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !158582

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !158583
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !158584
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !158585
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !158586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !158587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !158588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158410
  store ptr %i.i, ptr %i.c, align 8, !dbg !158589
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !158589
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !158589
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !158589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158582, !noalias !158411
  br label %bb.a, !dbg !158582

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !158590, !noalias !158412
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !158591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !158592, !noalias !158411
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !158593 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !158582
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !158582

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !158594
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !158595 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158596, !noalias !158411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !158599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !158600
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !158578
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !158578

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !158601

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !158583
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !158584
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !158585
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !158586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !158587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !158588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158410
  store ptr %i.i, ptr %i.c, align 8, !dbg !158589
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !158589
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !158589
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !158589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158582, !noalias !158411
  br label %bb.b, !dbg !158582

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !158590, !noalias !158412
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !158591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !158592, !noalias !158411
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !158593 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !158582
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !158582

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !158594
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !158595 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158596, !noalias !158411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !158602, !noalias !158414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !158588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !158599
  br label %.split212, !dbg !158603

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !158603
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !158603
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !158603

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !158600
  %.not = icmp eq i64 %i.dc, 0, !dbg !158578
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !158578

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !158604
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !158604 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !158604
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !158605 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !158606, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !158606 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !158607, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !158608
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !158608

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !158609
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !158610
  %i.dk = lshr i64 %i.di, 5, !dbg !158611
  %i.dl = and i64 %i.di, 31, !dbg !158612
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !158613
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !158613
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !158613
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !158608

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !158614, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !158615
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !158616
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !158617 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !158614
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !158618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !158619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !158620
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !158621
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !158431

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br label %.loopexit102, !dbg !158623

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !158431 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !158431
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !158431 ; 5 uses
  br label %bb.c, !dbg !158431

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !158623

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !158624 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !158625 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !158626
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !158626

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !158627

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !158627

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !158627
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !158628 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !158628
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !158628, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !158629
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !158629, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !158629 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !158630
  call void @llvm.assume(i1 %i.ei), !dbg !158631
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !158628, !nonnull !4270, !align !4488, !noundef !4270
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh, !dbg !158632
  %i.el = load double, ptr %i.ek, align 8, !dbg !158633, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !158634
  store double %i.el, ptr %gep.epil, align 8, !dbg !158634
  br label %..loopexit101_crit_edge, !dbg !158635

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !158635 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !158636
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !158623

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !158627 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !158627

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !158637

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !158637

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !158628 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !158628
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !158628, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !158629
  %i.es = load i64, ptr %i.er, align 8, !dbg !158629, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !158629 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !158630
  call void @llvm.assume(i1 %i.eu), !dbg !158631
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !158638 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !158628, !nonnull !4270, !align !4488, !noundef !4270
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.et, !dbg !158632
  %i.ey = load double, ptr %i.ex, align 8, !dbg !158633, !noundef !4270
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !158634
  store double %i.ey, ptr %gep, align 8, !dbg !158634
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !158628 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !158628
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !158628, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !158629
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !158629, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !158629 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !158630
  call void @llvm.assume(i1 %i.ff), !dbg !158631
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !158638 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !158628, !nonnull !4270, !align !4488, !noundef !4270
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe, !dbg !158632
  %i.fj = load double, ptr %i.fi, align 8, !dbg !158633, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !158634
  store double %i.fj, ptr %gep.1, align 8, !dbg !158634
  %niter.next.1 = add i64 %niter, 2, !dbg !158627 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !158627
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !158627

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !158639, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !158640 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !158641 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !158642
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !158642

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !158626
  unreachable, !dbg !158626

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !158643 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !158644
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !158644

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !158644  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !158645
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !158645

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !158646, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !158647
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !158648
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !158648, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !158649 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !158644
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !158644

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !158650  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !158645
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !158645

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !158642
  unreachable, !dbg !158642

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !158649
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !158650
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !158650
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !158651
  br label %bb.i, !dbg !158644

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !158652
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !158653
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !158653

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !158650      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !158645
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !158645, !llvm.loop !158380

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !158654

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !158655, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !158656
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !158656, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !158657
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !158657

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !158658
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !158654

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !158659 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !158660 ; 4 uses
end_hunk_5
begin_hunk_6_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes8Int8TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !158900
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !158845
  ret void, !dbg !158901

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !158888
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !158845
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158845

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !158816), !dbg !158845
  call void @llvm.experimental.noalias.scope.decl(metadata !158817), !dbg !158902
  call void @llvm.experimental.noalias.scope.decl(metadata !158818), !dbg !158903
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !158904, !alias.scope !158819, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !158905, !noalias !158819
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !158906
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158906

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !158907
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !158908
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !158908

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !158909
  unreachable, !dbg !158909

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !158909

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158820), !dbg !158845
  call void @llvm.experimental.noalias.scope.decl(metadata !158821), !dbg !158910
  call void @llvm.experimental.noalias.scope.decl(metadata !158822), !dbg !158911
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !158912, !alias.scope !158823, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !158913, !noalias !158823
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !158914
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !158914

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !158915
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !158916
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes8Int8TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !158917 {
.split220:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [1024 x i8], align 1              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !159219, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !159219, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !159220           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !159220
  %i.o = add i64 %i.n, %i.m, !dbg !159221
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !159222
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159222, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !159222, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !159223 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !159224 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !159225
  %i.u = load ptr, ptr %i.t, align 8, !dbg !159225, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !159225, !noundef !4270 ; 8 uses
  %.not221 = icmp eq i64 %i.v, 0, !dbg !159226
  br i1 %.not221, label %._crit_edge225, label %.lr.ph224, !dbg !159226

.lr.ph224:                                        ; preds = %.split220
  %i.w = lshr i64 %i.v, 6, !dbg !159227
  %i.x = and i64 %i.v, 63, !dbg !159228
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !159229
  %i.y = zext i1 %.not10.i.i to i64, !dbg !159229
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !159229 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i83 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i83 to i64
  %.sroa.05.0.i.i84 = add nuw nsw i64 %i.ab, %i.ad
  %.not77216 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not77216, label %.lr.ph224.split.us, label %.lr.ph224.split.preheader

.lr.ph224.split.preheader:                        ; preds = %.lr.ph224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph224.split, !dbg !159230

.lr.ph224.split.us:                               ; preds = %.lr.ph224, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0223.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph224 ]
  %.sroa.023.0222.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph224 ] ; 3 uses
  store i64 %.sroa.023.0222.us, ptr %i.j, align 8, !dbg !159231
  %i.ct = sub i64 %i.v, %.sroa.023.0222.us, !dbg !159232
  %.sroa.0.0.i82.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !159233
  store i64 %.sroa.0.0.i82.us, ptr %i.i, align 8, !dbg !159234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159058
  store ptr %i.i, ptr %i.c, align 8, !dbg !159237
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159237
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159237
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159230, !noalias !159059
  br label %bb.a, !dbg !159230

bb.a:                                             ; preds = %bb.a, %.lr.ph224.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph224.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes8Int8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !159238, !noalias !159060
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !159239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159240, !noalias !159059
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !159241 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !159230
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !159230

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0222.us, 64, !dbg !159242
  %i.cx = add i64 %.sroa.044.0223.us, -1, !dbg !159243 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159244, !noalias !159059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159248
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !159226
  br i1 %.not.us, label %._crit_edge225, label %.lr.ph224.split.us, !dbg !159226

._crit_edge225:                                   ; preds = %._crit_edge219, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split220
  ret void, !dbg !159249

.lr.ph224.split:                                  ; preds = %.lr.ph224.split.preheader, %._crit_edge219
  %.sroa.044.0223 = phi i64 [ %i.dc, %._crit_edge219 ], [ %.sroa.05.0.i.i, %.lr.ph224.split.preheader ]
  %.sroa.023.0222 = phi i64 [ %i.db, %._crit_edge219 ], [ 0, %.lr.ph224.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0222, ptr %i.j, align 8, !dbg !159231
  %i.cy = sub i64 %i.v, %.sroa.023.0222, !dbg !159232
  %.sroa.0.0.i82 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !159233
  store i64 %.sroa.0.0.i82, ptr %i.i, align 8, !dbg !159234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159058
  store ptr %i.i, ptr %i.c, align 8, !dbg !159237
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159237
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159237
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159230, !noalias !159059
  br label %bb.b, !dbg !159230

bb.b:                                             ; preds = %bb.b, %.lr.ph224.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph224.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes8Int8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159238, !noalias !159060
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159240, !noalias !159059
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159241 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159230
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159230

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0222, 64, !dbg !159242
  %i.dc = add i64 %.sroa.044.0223, -1, !dbg !159243 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159244, !noalias !159059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159250, !noalias !159062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159247
  br label %.split211, !dbg !159251

.loopexit102:                                     ; preds = %._crit_edge210, %.split211
  %.not77 = icmp eq i64 %i.df, 0, !dbg !159251
  %indvars.iv.next339 = add i64 %indvars.iv338, -32, !dbg !159251
  br i1 %.not77, label %._crit_edge219, label %.split211, !dbg !159251

._crit_edge219:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159248
  %.not = icmp eq i64 %i.dc, 0, !dbg !159226
  br i1 %.not, label %._crit_edge225, label %.lr.ph224.split, !dbg !159226

.split211:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv338 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next339, %.loopexit102 ] ; 3 uses
  %.sroa.045.0218 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0217 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv338, i64 1), !dbg !159252
  %umax350 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159252 ; 5 uses
  %i.de = add i64 %.sroa.026.0217, 32, !dbg !159252
  %i.df = add i64 %.sroa.045.0218, -1, !dbg !159253 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159254, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0217, !dbg !159254 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159255, !noundef !4270 ; 3 uses
  %.not78212 = icmp eq i64 %i.di, 0, !dbg !159256
  br i1 %.not78212, label %.loopexit102, label %.lr.ph215, !dbg !159256

.lr.ph215:                                        ; preds = %.split211
  %i.dj = sub i64 %i.s, %.sroa.026.0217, !dbg !159257
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159258
  %i.dk = lshr i64 %i.di, 5, !dbg !159259
  %i.dl = and i64 %i.di, 31, !dbg !159260
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !159261
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !159261
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159261
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %.not468 = icmp eq i64 %i.s, %.sroa.026.0217    ; 3 uses
  %xtraiter619 = and i64 %umax350, 1
  %i.do = icmp ult i64 %indvars.iv338, 2
  %unroll_iter622 = and i64 %umax350, 62
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  %lcmp.mod621 = trunc i64 %umax350 to i1
  br label %.split, !dbg !159256

.split:                                           ; preds = %.lr.ph215, %._crit_edge210
  %indvars.iv = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next, %._crit_edge210 ] ; 2 uses
  %.sroa.046.0214 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph215 ], [ %i.dr, %._crit_edge210 ]
  %.sroa.029.0213 = phi i64 [ 0, %.lr.ph215 ], [ %i.dq, %._crit_edge210 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !159262, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159263
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0213, 32, !dbg !159264
  %i.dr = add i64 %.sroa.046.0214, -1, !dbg !159265 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0213, !dbg !159262
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !159266 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159268
  %.not229.not = icmp eq i64 %i.dp, %.sroa.029.0213, !dbg !159269
  br i1 %.not229.not, label %.split185.thread, label %.lr.ph180, !dbg !159079

.split185.thread:                                 ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159271
  br label %.loopexit100, !dbg !159272

.lr.ph180:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0213          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !159079 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !159079
  %umax322 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !159079 ; 5 uses
  br label %bb.c, !dbg !159079

.split185:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159271
  br i1 %.not468, label %._crit_edge210, label %.split182.preheader, !dbg !159272

.split182.preheader:                              ; preds = %.split185
  %xtraiter = and i64 %umax322, 1
  %i.dy = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax322, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod617 = trunc i64 %umax322 to i1
  br label %.split182, !dbg !159273

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.dz, %bb.u ] ; 5 uses
  %i.dz = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !159274 ; 2 uses
  %i.ea = add nuw i64 %i.du, %.sroa.032.0179, !dbg !159275 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.dv, !dbg !159276
  br i1 %i.eb, label %bb.d, label %bb.e, !dbg !159276

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.split182.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !159273

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.split182
  %.sroa.036.0183.epil.init = phi i64 [ 0, %.split182 ], [ %i.fg, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod617), !dbg !159273
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0183.epil.init, !dbg !159277 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !159277
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !159277, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0183.epil.init, !dbg !159278
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !159278, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0186, !dbg !159278 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !159279
  call void @llvm.assume(i1 %i.ei), !dbg !159280
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !159277, !nonnull !4270, !noundef !4270
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh, !dbg !159281
  %i.el = load i8, ptr %i.ek, align 1, !dbg !159282, !noundef !4270
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.sroa.036.0183.epil.init, !dbg !159283
  store i8 %i.el, ptr %gep.epil, align 1, !dbg !159283
  br label %..loopexit99_crit_edge, !dbg !159284

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0186, 1, !dbg !159284 ; 2 uses
  %exitcond348.not = icmp eq i64 %i.em, %umax350, !dbg !159285
  br i1 %exitcond348.not, label %.loopexit100, label %.split182, !dbg !159272

.split182:                                        ; preds = %.split182.preheader, %..loopexit99_crit_edge
  %.sroa.034.0186 = phi i64 [ %i.em, %..loopexit99_crit_edge ], [ 0, %.split182.preheader ] ; 5 uses
  %i.en = shl nuw nsw i64 %.sroa.034.0186, 5, !dbg !159286
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.en, !dbg !159273 ; 3 uses
  br i1 %i.dy, label %.epil.preheader, label %.split182.new, !dbg !159273

.loopexit100:                                     ; preds = %..loopexit99_crit_edge, %.loopexit, %.split185.thread
  br i1 %.not468, label %._crit_edge210, label %.lr.ph209.preheader.preheader, !dbg !159287

.lr.ph209.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.do, label %.lr.ph209.preheader.epil.preheader, label %.lr.ph209.preheader, !dbg !159287

.split182.new:                                    ; preds = %.split182, %.split182.new
  %.sroa.036.0183 = phi i64 [ %i.fg, %.split182.new ], [ 0, %.split182 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split182.new ], [ 0, %.split182 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0183, !dbg !159277 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !159277
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !159277, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0183, !dbg !159278
  %i.es = load i64, ptr %i.er, align 8, !dbg !159278, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0186, !dbg !159278 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !159279
  call void @llvm.assume(i1 %i.eu), !dbg !159280
  %i.ev = or disjoint i64 %.sroa.036.0183, 1, !dbg !159288 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !159277, !nonnull !4270, !noundef !4270
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et, !dbg !159281
  %i.ey = load i8, ptr %i.ex, align 1, !dbg !159282, !noundef !4270
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.sroa.036.0183, !dbg !159283
  store i8 %i.ey, ptr %gep, align 1, !dbg !159283
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !159277 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !159277
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !159277, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !159278
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !159278, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0186, !dbg !159278 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !159279
  call void @llvm.assume(i1 %i.ff), !dbg !159280
  %i.fg = add nuw nsw i64 %.sroa.036.0183, 2, !dbg !159288 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !159277, !nonnull !4270, !noundef !4270
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe, !dbg !159281
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !159282, !noundef !4270
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ev, !dbg !159283
  store i8 %i.fj, ptr %gep.1, align 1, !dbg !159283
  %niter.next.1 = add i64 %niter, 2, !dbg !159273 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159273
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.split182.new, !dbg !159273

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !159289, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.ea, !dbg !159290 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0213, !dbg !159291 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !159292
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !159292

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159276
  unreachable, !dbg !159276

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !159293 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not79170 = icmp ult i64 %i.dh, %.promoted, !dbg !159294
  br i1 %.not79170, label %bb.i, label %.lr.ph, !dbg !159294

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted172 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted172, 1, !dbg !159294  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !159295
  br i1 %i.fu, label %bb.g, label %.loopexit314, !dbg !159295

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !159296, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !159297
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !159298
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !159298, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !159299 ; 3 uses
  %.not79.peel = icmp ult i64 %i.dh, %i.ga, !dbg !159294
  br i1 %.not79.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !159294

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted172, 2, !dbg !159300  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !159295
  br i1 %i.gc, label %.lr.ph537, label %.loopexit314, !dbg !159295

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !159292
  unreachable, !dbg !159292

._crit_edge:                                      ; preds = %.lr.ph537, %bb.g
  %.lcssa235 = phi i64 [ %i.ga, %bb.g ], [ %i.jy, %.lr.ph537 ], !dbg !159299
  %.lcssa234 = phi i64 [ %.promoted, %bb.g ], [ %i.ju, %.lr.ph537 ]
  %.lcssa232 = phi i64 [ %i.ft, %bb.g ], [ %i.jt, %.lr.ph537 ], !dbg !159300
  store i64 %.lcssa232, ptr %i.fo, align 8, !dbg !159300
  store i64 %.lcssa234, ptr %i.fq, align 8, !dbg !159301
  br label %bb.i, !dbg !159294

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa167 = phi i64 [ %.lcssa235, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa167, ptr %i.fp, align 8, !dbg !159302
  %.not80 = icmp ugt i64 %i.dn, %.lcssa167, !dbg !159303
  br i1 %.not80, label %bb.j, label %bb.k, !dbg !159303

.peel.next:                                       ; preds = %.lr.ph537
  %i.gd = add nuw i64 %i.jt, 1, !dbg !159300      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !159295
  br i1 %i.ge, label %.lr.ph537, label %.loopexit314, !dbg !159295, !llvm.loop !159028

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159271
  br i1 %.not468, label %._crit_edge210, label %.lr.ph206, !dbg !159304

bb.k:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !159305, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !159306
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !159306, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !159307
  br i1 %i.gi, label %bb.u, label %bb.v, !dbg !159307

.loopexit:                                        ; preds = %bb.t
  %exitcond342.not = icmp eq i64 %i.gj, %umax350, !dbg !159308
  br i1 %exitcond342.not, label %.loopexit100, label %.lr.ph206, !dbg !159304

.lr.ph206:                                        ; preds = %bb.j, %.loopexit
  %.sroa.038.0204 = phi i64 [ %i.gj, %.loopexit ], [ 0, %bb.j ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0204, 1, !dbg !159309 ; 2 uses
  %i.gk = add i64 %.sroa.038.0204, %i.dh, !dbg !159310 ; 4 uses
  %i.gl = shl nuw nsw i64 %.sroa.038.0204, 5, !dbg !159311
end_hunk_6
begin_hunk_7_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int16TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !159552
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !159552

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !159497
  ret void, !dbg !159553

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !159540
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !159497
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !159497

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !159468), !dbg !159497
  call void @llvm.experimental.noalias.scope.decl(metadata !159469), !dbg !159554
  call void @llvm.experimental.noalias.scope.decl(metadata !159470), !dbg !159555
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !159556, !alias.scope !159471, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !159557, !noalias !159471
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !159558
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !159558

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !159559
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !159560
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !159560

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !159561
  unreachable, !dbg !159561

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !159561

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159472), !dbg !159497
  call void @llvm.experimental.noalias.scope.decl(metadata !159473), !dbg !159562
  call void @llvm.experimental.noalias.scope.decl(metadata !159474), !dbg !159563
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !159564, !alias.scope !159475, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !159565, !noalias !159475
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !159566
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !159566

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !159567
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !159568
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int16TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !159569 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [2048 x i8], align 2              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !159871, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !159871, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !159872           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !159872
  %i.o = add i64 %i.n, %i.m, !dbg !159873
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !159874
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159874, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !159874, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !159875 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !159876 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !159877
  %i.u = load ptr, ptr %i.t, align 8, !dbg !159877, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !159877, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !159878
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !159878

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !159879
  %i.x = and i64 %i.v, 63, !dbg !159880
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !159881
  %i.y = zext i1 %.not10.i.i to i64, !dbg !159881
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !159881 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !159882

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !159883
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !159884
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !159885
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !159886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159710
  store ptr %i.i, ptr %i.c, align 8, !dbg !159889
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159889
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159889
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159882, !noalias !159711
  br label %bb.a, !dbg !159882

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !159890, !noalias !159712
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !159891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159892, !noalias !159711
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !159893 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !159882
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !159882

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !159894
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !159895 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159896, !noalias !159711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159900
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !159878
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !159878

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !159901

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !159883
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !159884
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !159885
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !159886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159710
  store ptr %i.i, ptr %i.c, align 8, !dbg !159889
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159889
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159889
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159882, !noalias !159711
  br label %bb.b, !dbg !159882

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159890, !noalias !159712
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159892, !noalias !159711
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159893 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159882
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159882

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !159894
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !159895 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159896, !noalias !159711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159902, !noalias !159714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159899
  br label %.split212, !dbg !159903

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !159903
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !159903
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !159903

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159900
  %.not = icmp eq i64 %i.dc, 0, !dbg !159878
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !159878

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !159904
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159904 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !159904
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !159905 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159906, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !159906 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159907, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !159908
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !159908

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !159909
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159910
  %i.dk = lshr i64 %i.di, 5, !dbg !159911
  %i.dl = and i64 %i.di, 31, !dbg !159912
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !159913
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !159913
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159913
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !159908

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !159914, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159915
  store ptr inttoptr (i64 2 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !159916
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !159917 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !159914
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !159918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159920
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !159921
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !159731

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br label %.loopexit102, !dbg !159923

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !159731 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !159731
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !159731 ; 5 uses
  br label %bb.c, !dbg !159731

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !159923

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !159924 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !159925 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !159926
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !159926

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !159927

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !159927

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !159927
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !159928 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !159928
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !159928, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !159929
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !159929, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !159929 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !159930
  call void @llvm.assume(i1 %i.ei), !dbg !159931
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !159928, !nonnull !4270, !align !5567, !noundef !4270
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.eh, !dbg !159932
  %i.el = load i16, ptr %i.ek, align 2, !dbg !159933, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !159934
  store i16 %i.el, ptr %gep.epil, align 2, !dbg !159934
  br label %..loopexit101_crit_edge, !dbg !159935

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !159935 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !159936
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !159923

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !159927 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !159927

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !159937

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !159937

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !159928 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !159928
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !159928, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !159929
  %i.es = load i64, ptr %i.er, align 8, !dbg !159929, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !159929 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !159930
  call void @llvm.assume(i1 %i.eu), !dbg !159931
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !159938 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !159928, !nonnull !4270, !align !5567, !noundef !4270
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.et, !dbg !159932
  %i.ey = load i16, ptr %i.ex, align 2, !dbg !159933, !noundef !4270
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !159934
  store i16 %i.ey, ptr %gep, align 2, !dbg !159934
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !159928 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !159928
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !159928, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !159929
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !159929, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !159929 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !159930
  call void @llvm.assume(i1 %i.ff), !dbg !159931
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !159938 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !159928, !nonnull !4270, !align !5567, !noundef !4270
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fe, !dbg !159932
  %i.fj = load i16, ptr %i.fi, align 2, !dbg !159933, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !159934
  store i16 %i.fj, ptr %gep.1, align 2, !dbg !159934
  %niter.next.1 = add i64 %niter, 2, !dbg !159927 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159927
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !159927

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !159939, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !159940 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !159941 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !159942
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !159942

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159926
  unreachable, !dbg !159926

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !159943 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !159944
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !159944

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !159944  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !159945
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !159945

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !159946, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !159947
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !159948
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !159948, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !159949 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !159944
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !159944

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !159950  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !159945
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !159945

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !159942
  unreachable, !dbg !159942

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !159949
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !159950
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !159950
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !159951
  br label %bb.i, !dbg !159944

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !159952
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !159953
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !159953

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !159950      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !159945
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !159945, !llvm.loop !159680

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !159954

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !159955, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !159956
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !159956, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !159957
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !159957

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !159958
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !159954

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !159959 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !159960 ; 4 uses
end_hunk_7
begin_hunk_8_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int32TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !160200
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160200

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !160145
  ret void, !dbg !160201

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !160188
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !160145
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160145

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !160116), !dbg !160145
  call void @llvm.experimental.noalias.scope.decl(metadata !160117), !dbg !160202
  call void @llvm.experimental.noalias.scope.decl(metadata !160118), !dbg !160203
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !160204, !alias.scope !160119, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !160205, !noalias !160119
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !160206
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160206

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !160207
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !160208
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160208

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !160209
  unreachable, !dbg !160209

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !160209

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160120), !dbg !160145
  call void @llvm.experimental.noalias.scope.decl(metadata !160121), !dbg !160210
  call void @llvm.experimental.noalias.scope.decl(metadata !160122), !dbg !160211
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !160212, !alias.scope !160123, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !160213, !noalias !160123
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !160214
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !160214

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !160215
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !160216
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int32TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !160217 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [4096 x i8], align 4              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !160519, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !160519, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !160520           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !160520
  %i.o = add i64 %i.n, %i.m, !dbg !160521
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160522
  %i.q = load ptr, ptr %i.p, align 8, !dbg !160522, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !160522, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !160523 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !160524 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160525
  %i.u = load ptr, ptr %i.t, align 8, !dbg !160525, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !160525, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !160526
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !160526

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !160527
  %i.x = and i64 %i.v, 63, !dbg !160528
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !160529
  %i.y = zext i1 %.not10.i.i to i64, !dbg !160529
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !160529 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !160530

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !160531
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !160532
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !160533
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !160534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !160535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160358
  store ptr %i.i, ptr %i.c, align 8, !dbg !160537
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !160537
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160537
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !160537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160530, !noalias !160359
  br label %bb.a, !dbg !160530

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !160538, !noalias !160360
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !160539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !160540, !noalias !160359
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !160541 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !160530
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !160530

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !160542
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !160543 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160544, !noalias !160359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !160548
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !160526
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !160526

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !160549

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !160531
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !160532
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !160533
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !160534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !160535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160358
  store ptr %i.i, ptr %i.c, align 8, !dbg !160537
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !160537
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160537
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !160537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160530, !noalias !160359
  br label %bb.b, !dbg !160530

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !160538, !noalias !160360
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !160539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !160540, !noalias !160359
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !160541 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !160530
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !160530

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !160542
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !160543 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160544, !noalias !160359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !160550, !noalias !160362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !160536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160547
  br label %.split212, !dbg !160551

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !160551
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !160551
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !160551

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !160548
  %.not = icmp eq i64 %i.dc, 0, !dbg !160526
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !160526

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !160552
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !160552 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !160552
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !160553 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !160554, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !160554 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !160555, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !160556
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !160556

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !160557
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !160558
  %i.dk = lshr i64 %i.di, 5, !dbg !160559
  %i.dl = and i64 %i.di, 31, !dbg !160560
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !160561
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !160561
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !160561
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !160556

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !160562, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !160563
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !160564
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !160565 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !160562
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !160566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !160567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !160568
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !160569
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !160379

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !160570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br label %.loopexit102, !dbg !160571

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !160379 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !160379
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !160379 ; 5 uses
  br label %bb.c, !dbg !160379

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !160570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !160571

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !160572 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !160573 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !160574
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !160574

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !160575

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !160575

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !160575
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !160576 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !160576
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !160576, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !160577
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !160577, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !160577 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !160578
  call void @llvm.assume(i1 %i.ei), !dbg !160579
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !160576, !nonnull !4270, !align !5569, !noundef !4270
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eh, !dbg !160580
  %i.el = load i32, ptr %i.ek, align 4, !dbg !160581, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !160582
  store i32 %i.el, ptr %gep.epil, align 4, !dbg !160582
  br label %..loopexit101_crit_edge, !dbg !160583

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !160583 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !160584
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !160571

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !160575 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !160575

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !160585

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !160585

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !160576 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !160576
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !160576, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !160577
  %i.es = load i64, ptr %i.er, align 8, !dbg !160577, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !160577 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !160578
  call void @llvm.assume(i1 %i.eu), !dbg !160579
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !160586 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !160576, !nonnull !4270, !align !5569, !noundef !4270
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et, !dbg !160580
  %i.ey = load i32, ptr %i.ex, align 4, !dbg !160581, !noundef !4270
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !160582
  store i32 %i.ey, ptr %gep, align 4, !dbg !160582
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !160576 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !160576
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !160576, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !160577
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !160577, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !160577 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !160578
  call void @llvm.assume(i1 %i.ff), !dbg !160579
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !160586 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !160576, !nonnull !4270, !align !5569, !noundef !4270
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fe, !dbg !160580
  %i.fj = load i32, ptr %i.fi, align 4, !dbg !160581, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !160582
  store i32 %i.fj, ptr %gep.1, align 4, !dbg !160582
  %niter.next.1 = add i64 %niter, 2, !dbg !160575 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !160575
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !160575

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !160587, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !160588 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !160589 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !160590
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !160590

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !160574
  unreachable, !dbg !160574

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !160591 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !160592
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !160592

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !160592  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !160593
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !160593

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !160594, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !160595
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !160596
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !160596, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !160597 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !160592
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !160592

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !160598  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !160593
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !160593

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !160590
  unreachable, !dbg !160590

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !160597
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !160598
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !160598
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !160599
  br label %bb.i, !dbg !160592

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !160600
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !160601
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !160601

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !160598      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !160593
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !160593, !llvm.loop !160328

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !160570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !160602

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !160603, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !160604
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !160604, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !160605
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !160605

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !160606
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !160602

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !160607 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !160608 ; 4 uses
end_hunk_8
begin_hunk_9_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int64TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !160848
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !160793
  ret void, !dbg !160849

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !160836
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !160793
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160793

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !160764), !dbg !160793
  call void @llvm.experimental.noalias.scope.decl(metadata !160765), !dbg !160850
  call void @llvm.experimental.noalias.scope.decl(metadata !160766), !dbg !160851
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !160852, !alias.scope !160767, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !160853, !noalias !160767
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !160854
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160854

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !160855
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !160856
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !160856

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !160857
  unreachable, !dbg !160857

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !160857

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160768), !dbg !160793
  call void @llvm.experimental.noalias.scope.decl(metadata !160769), !dbg !160858
  call void @llvm.experimental.noalias.scope.decl(metadata !160770), !dbg !160859
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !160860, !alias.scope !160771, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !160861, !noalias !160771
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !160862
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !160862

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !160863
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !160864
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int64TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !160865 {
.split221:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [8192 x i8], align 8              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !161167, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !161167, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !161168           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !161168
  %i.o = add i64 %i.n, %i.m, !dbg !161169
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161170
  %i.q = load ptr, ptr %i.p, align 8, !dbg !161170, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !161170, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !161171 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !161172 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161173
  %i.u = load ptr, ptr %i.t, align 8, !dbg !161173, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !161173, !noundef !4270 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !161174
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !161174

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !161175
  %i.x = and i64 %i.v, 63, !dbg !161176
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !161177
  %i.y = zext i1 %.not10.i.i to i64, !dbg !161177
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !161177 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not79217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph225.split, !dbg !161178

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !161179
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !161180
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !161181
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !161182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !161183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !161006
  store ptr %i.i, ptr %i.c, align 8, !dbg !161185
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !161185
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !161185
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !161185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !161178, !noalias !161007
  br label %bb.a, !dbg !161178

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !161186, !noalias !161008
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !161187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !161188, !noalias !161007
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !161189 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !161178
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !161178

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !161190
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !161191 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161192, !noalias !161007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !161196
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !161174
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !161174

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !161197

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !161179
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !161180
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !161181
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !161182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !161183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !161006
  store ptr %i.i, ptr %i.c, align 8, !dbg !161185
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !161185
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !161185
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !161185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !161178, !noalias !161007
  br label %bb.b, !dbg !161178

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !161186, !noalias !161008
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !161187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !161188, !noalias !161007
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !161189 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !161178
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !161178

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !161190
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !161191 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161192, !noalias !161007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !161198, !noalias !161010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !161184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161195
  br label %.split212, !dbg !161199

.loopexit105:                                     ; preds = %._crit_edge211, %.split212
  %.not79 = icmp eq i64 %i.df, 0, !dbg !161199
  %indvars.iv.next340 = add i64 %indvars.iv339, -32, !dbg !161199
  br i1 %.not79, label %._crit_edge220, label %.split212, !dbg !161199

._crit_edge220:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !161196
  %.not = icmp eq i64 %i.dc, 0, !dbg !161174
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !161174

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv339 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next340, %.loopexit105 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv339, i64 1), !dbg !161200
  %umax351 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !161200 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !161200
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !161201 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !161202, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !161202 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !161203, !noundef !4270 ; 3 uses
  %.not80213 = icmp eq i64 %i.di, 0, !dbg !161204
  br i1 %.not80213, label %.loopexit105, label %.lr.ph216, !dbg !161204

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !161205
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !161206
  %i.dk = lshr i64 %i.di, 5, !dbg !161207
  %i.dl = and i64 %i.di, 31, !dbg !161208
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !161209
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !161209
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !161209
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %.not471 = icmp eq i64 %i.s, %.sroa.026.0218    ; 3 uses
  %xtraiter623 = and i64 %umax351, 1
  %i.do = icmp ult i64 %indvars.iv339, 2
  %unroll_iter626 = and i64 %umax351, 62
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %lcmp.mod625 = trunc i64 %umax351 to i1
  br label %.split, !dbg !161204

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 2 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dq, %._crit_edge211 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !161210, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !161211
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0214, 32, !dbg !161212
  %i.dr = add i64 %.sroa.046.0215, -1, !dbg !161213 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0214, !dbg !161210
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !161214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !161215
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !161216
  %.not230.not = icmp eq i64 %i.dp, %.sroa.029.0214, !dbg !161217
  br i1 %.not230.not, label %._crit_edge184.thread, label %.lr.ph183, !dbg !161027

._crit_edge184.thread:                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br label %.loopexit102, !dbg !161219

.lr.ph183:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0214          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !161027 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !161027
  %umax323 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !161027 ; 5 uses
  br label %bb.c, !dbg !161027

._crit_edge184:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.split185.preheader, !dbg !161219

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.dy, %bb.t ] ; 5 uses
  %i.dy = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !161220 ; 2 uses
  %i.dz = add nuw i64 %i.du, %.sroa.032.0182, !dbg !161221 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv, !dbg !161222
  br i1 %i.ea, label %bb.d, label %bb.e, !dbg !161222

.split185.preheader:                              ; preds = %._crit_edge184
  %xtraiter = and i64 %umax323, 1
  %i.eb = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax323, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod620 = trunc i64 %umax323 to i1
  br label %.split185, !dbg !161223

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.split185.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !161223

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.split185
  %.sroa.036.0186.epil.init = phi i64 [ 0, %.split185 ], [ %i.fg, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod620), !dbg !161223
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186.epil.init, !dbg !161224 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !161224
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !161224, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186.epil.init, !dbg !161225
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !161225, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0188, !dbg !161225 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !161226
  call void @llvm.assume(i1 %i.ei), !dbg !161227
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !161224, !nonnull !4270, !align !4488, !noundef !4270
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh, !dbg !161228
  %i.el = load i64, ptr %i.ek, align 8, !dbg !161229, !noundef !4270
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186.epil.init, !dbg !161230
  store i64 %i.el, ptr %gep.epil, align 8, !dbg !161230
  br label %..loopexit101_crit_edge, !dbg !161231

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !161231 ; 2 uses
  %exitcond349.not = icmp eq i64 %i.em, %umax351, !dbg !161232
  br i1 %exitcond349.not, label %.loopexit102, label %.split185, !dbg !161219

.split185:                                        ; preds = %.split185.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.em, %..loopexit101_crit_edge ], [ 0, %.split185.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !161223 ; 3 uses
  br i1 %i.eb, label %.epil.preheader, label %.split185.new, !dbg !161223

.loopexit102:                                     ; preds = %..loopexit101_crit_edge, %.loopexit, %._crit_edge184.thread
  br i1 %.not471, label %._crit_edge211, label %.lr.ph210, !dbg !161233

.lr.ph210:                                        ; preds = %.loopexit102
  %i.en = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.do, label %.epil.preheader621, label %.lr.ph210.new, !dbg !161233

.split185.new:                                    ; preds = %.split185, %.split185.new
  %.sroa.036.0186 = phi i64 [ %i.fg, %.split185.new ], [ 0, %.split185 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split185.new ], [ 0, %.split185 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0186, !dbg !161224 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !161224
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !161224, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0186, !dbg !161225
  %i.es = load i64, ptr %i.er, align 8, !dbg !161225, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0188, !dbg !161225 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !161226
  call void @llvm.assume(i1 %i.eu), !dbg !161227
  %i.ev = or disjoint i64 %.sroa.036.0186, 1, !dbg !161234 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !161224, !nonnull !4270, !align !4488, !noundef !4270
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.et, !dbg !161228
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !161229, !noundef !4270
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.sroa.036.0186, !dbg !161230
  store i64 %i.ey, ptr %gep, align 8, !dbg !161230
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !161224 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !161224
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !161224, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !161225
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !161225, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0188, !dbg !161225 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !161226
  call void @llvm.assume(i1 %i.ff), !dbg !161227
  %i.fg = add nuw nsw i64 %.sroa.036.0186, 2, !dbg !161234 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !161224, !nonnull !4270, !align !4488, !noundef !4270
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe, !dbg !161228
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !161229, !noundef !4270
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ev, !dbg !161230
  store i64 %i.fj, ptr %gep.1, align 8, !dbg !161230
  %niter.next.1 = add i64 %niter, 2, !dbg !161223 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !161223
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.split185.new, !dbg !161223

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !161235, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.dz, !dbg !161236 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0214, !dbg !161237 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !161238
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !161238

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !161222
  unreachable, !dbg !161222

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !161239 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !161240
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !161240

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted175 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted175, 1, !dbg !161240  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !161241
  br i1 %i.fu, label %bb.g, label %.loopexit315, !dbg !161241

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !161242, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !161243
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !161244
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !161244, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !161245 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.ga, !dbg !161240
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !161240

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted175, 2, !dbg !161246  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !161241
  br i1 %i.gc, label %.lr.ph540, label %.loopexit315, !dbg !161241

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !161238
  unreachable, !dbg !161238

._crit_edge:                                      ; preds = %.lr.ph540, %bb.g
  %.lcssa236 = phi i64 [ %i.ga, %bb.g ], [ %i.ju, %.lr.ph540 ], !dbg !161245
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jq, %.lr.ph540 ]
  %.lcssa233 = phi i64 [ %i.ft, %bb.g ], [ %i.jp, %.lr.ph540 ], !dbg !161246
  store i64 %.lcssa233, ptr %i.fo, align 8, !dbg !161246
  store i64 %.lcssa235, ptr %i.fq, align 8, !dbg !161247
  br label %bb.i, !dbg !161240

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fp, align 8, !dbg !161248
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !161249
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !161249

.peel.next:                                       ; preds = %.lr.ph540
  %i.gd = add nuw i64 %i.jp, 1, !dbg !161246      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !161241
  br i1 %i.ge, label %.lr.ph540, label %.loopexit315, !dbg !161241, !llvm.loop !160976

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not471, label %._crit_edge211, label %.lr.ph207, !dbg !161250

bb.j:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !161251, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !161252
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !161252, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !161253
  br i1 %i.gi, label %bb.t, label %bb.u, !dbg !161253

.loopexit:                                        ; preds = %bb.s
  %exitcond343.not = icmp eq i64 %i.gj, %umax351, !dbg !161254
  br i1 %exitcond343.not, label %.loopexit102, label %.lr.ph207, !dbg !161250

.lr.ph207:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0206 = phi i64 [ %i.gj, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0206, 1, !dbg !161255 ; 2 uses
  %i.gk = add i64 %.sroa.038.0206, %i.dh, !dbg !161256 ; 4 uses
end_hunk_9
begin_hunk_10_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeE0CseeLknQCOKOd_13polars_python:bb.a
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !161496
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !161496

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36: ; preds = %bb.ah, %bb.ak, %bb.al, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !161441
  ret void, !dbg !161497

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !161484
  %i.by = trunc nuw i8 %.sroa.08.2 to i1, !dbg !161441
  br i1 %i.by, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !161441

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit34
  call void @llvm.experimental.noalias.scope.decl(metadata !161412), !dbg !161441
  call void @llvm.experimental.noalias.scope.decl(metadata !161413), !dbg !161498
  call void @llvm.experimental.noalias.scope.decl(metadata !161414), !dbg !161499
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !161500, !alias.scope !161415, !nonnull !4270, !noundef !4270
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !161501, !noalias !161415
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !161502
  br i1 %i.cb, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !161502

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !161503
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54, !dbg !161504
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit36, !dbg !161504

bb.ao:                                            ; preds = %bb.ap, %bb.ae, %bb.d
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !161505
  unreachable, !dbg !161505

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38: ; preds = %.body.thread, %bb.ap, %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn, %.body ], [ %.pn3, %bb.ap ], [ %.pn3, %.body.thread ]
  resume { ptr, i32 } %.pn.pn, !dbg !161505

.body.thread:                                     ; preds = %bb.p, %bb.x, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.p ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161416), !dbg !161441
  call void @llvm.experimental.noalias.scope.decl(metadata !161417), !dbg !161506
  call void @llvm.experimental.noalias.scope.decl(metadata !161418), !dbg !161507
  %i.cd = load ptr, ptr %i.j, align 8, !dbg !161508, !alias.scope !161419, !nonnull !4270, !noundef !4270
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !dbg !161509, !noalias !161419
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !161510
  br i1 %i.cf, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38, !dbg !161510

bb.ap:                                            ; preds = %.body.thread
  fence acquire, !dbg !161511
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit38 unwind label %bb.ao, !dbg !161512
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeEs2_0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !161513 {
.split220:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [1536 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [1536 x i8], align 8              ; 6 uses
  %i.e = alloca [1024 x i8], align 1              ; 12 uses
  %i.f = alloca [256 x i8], align 8               ; 7 uses
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !161815, !nonnull !4270, !align !4488, !noundef !4270
  %i.m = load i64, ptr %i.l, align 8, !dbg !161815, !noundef !4270 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !161816           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !161816
  %i.o = add i64 %i.n, %i.m, !dbg !161817
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161818
  %i.q = load ptr, ptr %i.p, align 8, !dbg !161818, !nonnull !4270, !align !4488, !noundef !4270
  %i.r = load i64, ptr %i.q, align 8, !dbg !161818, !noundef !4270
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !161819 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !161820 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161821
  %i.u = load ptr, ptr %i.t, align 8, !dbg !161821, !nonnull !4270, !align !4488, !noundef !4270
  %i.v = load i64, ptr %i.u, align 8, !dbg !161821, !noundef !4270 ; 8 uses
  %.not221 = icmp eq i64 %i.v, 0, !dbg !161822
  br i1 %.not221, label %._crit_edge225, label %.lr.ph224, !dbg !161822

.lr.ph224:                                        ; preds = %.split220
  %i.w = lshr i64 %i.v, 6, !dbg !161823
  %i.x = and i64 %i.v, 63, !dbg !161824
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !161825
  %i.y = zext i1 %.not10.i.i to i64, !dbg !161825
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !161825 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4270, !align !4488, !noundef !4270 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i83 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i83 to i64
  %.sroa.05.0.i.i84 = add nuw nsw i64 %i.ab, %i.ad
  %.not77216 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4270, !align !4488 ; 3 uses
  br i1 %.not77216, label %.lr.ph224.split.us, label %.lr.ph224.split.preheader

.lr.ph224.split.preheader:                        ; preds = %.lr.ph224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  br label %.lr.ph224.split, !dbg !161826

.lr.ph224.split.us:                               ; preds = %.lr.ph224, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0223.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph224 ]
  %.sroa.023.0222.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph224 ] ; 3 uses
  store i64 %.sroa.023.0222.us, ptr %i.j, align 8, !dbg !161827
  %i.ct = sub i64 %i.v, %.sroa.023.0222.us, !dbg !161828
  %.sroa.0.0.i82.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !161829
  store i64 %.sroa.0.0.i82.us, ptr %i.i, align 8, !dbg !161830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !161831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !161654
  store ptr %i.i, ptr %i.c, align 8, !dbg !161833
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !161833
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !161833
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !161833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !161826, !noalias !161655
  br label %bb.a, !dbg !161826

bb.a:                                             ; preds = %bb.a, %.lr.ph224.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph224.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9UInt8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !161834, !noalias !161656
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !161835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !161836, !noalias !161655
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !161837 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !161826
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !161826

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0222.us, 64, !dbg !161838
  %i.cx = add i64 %.sroa.044.0223.us, -1, !dbg !161839 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161840, !noalias !161655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !161844
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !161822
  br i1 %.not.us, label %._crit_edge225, label %.lr.ph224.split.us, !dbg !161822

._crit_edge225:                                   ; preds = %._crit_edge219, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split220
  ret void, !dbg !161845

.lr.ph224.split:                                  ; preds = %.lr.ph224.split.preheader, %._crit_edge219
  %.sroa.044.0223 = phi i64 [ %i.dc, %._crit_edge219 ], [ %.sroa.05.0.i.i, %.lr.ph224.split.preheader ]
  %.sroa.023.0222 = phi i64 [ %i.db, %._crit_edge219 ], [ 0, %.lr.ph224.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0222, ptr %i.j, align 8, !dbg !161827
  %i.cy = sub i64 %i.v, %.sroa.023.0222, !dbg !161828
  %.sroa.0.0.i82 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !161829
  store i64 %.sroa.0.0.i82, ptr %i.i, align 8, !dbg !161830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !161831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !161654
  store ptr %i.i, ptr %i.c, align 8, !dbg !161833
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !161833
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !161833
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !161833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !161826, !noalias !161655
  br label %bb.b, !dbg !161826

bb.b:                                             ; preds = %bb.b, %.lr.ph224.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph224.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9UInt8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !161834, !noalias !161656
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !161835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !161836, !noalias !161655
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !161837 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !161826
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !161826

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0222, 64, !dbg !161838
  %i.dc = add i64 %.sroa.044.0223, -1, !dbg !161839 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161840, !noalias !161655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !161846, !noalias !161658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !161832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161843
  br label %.split211, !dbg !161847

.loopexit102:                                     ; preds = %._crit_edge210, %.split211
  %.not77 = icmp eq i64 %i.df, 0, !dbg !161847
  %indvars.iv.next339 = add i64 %indvars.iv338, -32, !dbg !161847
  br i1 %.not77, label %._crit_edge219, label %.split211, !dbg !161847

._crit_edge219:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !161844
  %.not = icmp eq i64 %i.dc, 0, !dbg !161822
  br i1 %.not, label %._crit_edge225, label %.lr.ph224.split, !dbg !161822

.split211:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv338 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next339, %.loopexit102 ] ; 3 uses
  %.sroa.045.0218 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0217 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 4 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv338, i64 1), !dbg !161848
  %umax350 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !161848 ; 5 uses
  %i.de = add i64 %.sroa.026.0217, 32, !dbg !161848
  %i.df = add i64 %.sroa.045.0218, -1, !dbg !161849 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !161850, !noundef !4270
  %i.dh = add i64 %i.dg, %.sroa.026.0217, !dbg !161850 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !161851, !noundef !4270 ; 3 uses
  %.not78212 = icmp eq i64 %i.di, 0, !dbg !161852
  br i1 %.not78212, label %.loopexit102, label %.lr.ph215, !dbg !161852

.lr.ph215:                                        ; preds = %.split211
  %i.dj = sub i64 %i.s, %.sroa.026.0217, !dbg !161853
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !161854
  %i.dk = lshr i64 %i.di, 5, !dbg !161855
  %i.dl = and i64 %i.di, 31, !dbg !161856
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !161857
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !161857
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !161857
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %.not468 = icmp eq i64 %i.s, %.sroa.026.0217    ; 3 uses
  %xtraiter619 = and i64 %umax350, 1
  %i.do = icmp ult i64 %indvars.iv338, 2
  %unroll_iter622 = and i64 %umax350, 62
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  %lcmp.mod621 = trunc i64 %umax350 to i1
  br label %.split, !dbg !161852

.split:                                           ; preds = %.lr.ph215, %._crit_edge210
  %indvars.iv = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next, %._crit_edge210 ] ; 2 uses
  %.sroa.046.0214 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph215 ], [ %i.dr, %._crit_edge210 ]
  %.sroa.029.0213 = phi i64 [ 0, %.lr.ph215 ], [ %i.dq, %._crit_edge210 ] ; 9 uses
  %i.dp = load i64, ptr %i.i, align 8, !dbg !161858, !noundef !4270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !161859
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  store i64 0, ptr %i.ai, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.al, align 8
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.aq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8
  store i64 0, ptr %i.aw, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ax, align 8
  store i64 0, ptr %i.ay, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bd, align 8
  store i64 0, ptr %i.be, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bf, align 8
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bh, align 8
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bn, align 8
  store i64 0, ptr %i.bo, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.br, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bt, align 8
  store i64 0, ptr %i.bu, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bv, align 8
  store i64 0, ptr %i.bw, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bx, align 8
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bz, align 8
  store i64 0, ptr %i.ca, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ch, align 8
  store i64 0, ptr %i.ci, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cp, align 8
  store i64 0, ptr %i.cq, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cr, align 8
  store i64 0, ptr %i.cs, align 8
  %i.dq = add i64 %.sroa.029.0213, 32, !dbg !161860
  %i.dr = add i64 %.sroa.046.0214, -1, !dbg !161861 ; 2 uses
  %i.ds = sub i64 %i.dp, %.sroa.029.0213, !dbg !161858
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 32), !dbg !161862 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !161863
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !161864
  %.not229.not = icmp eq i64 %i.dp, %.sroa.029.0213, !dbg !161865
  br i1 %.not229.not, label %.split185.thread, label %.lr.ph180, !dbg !161675

.split185.thread:                                 ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !161867
  br label %.loopexit100, !dbg !161868

.lr.ph180:                                        ; preds = %.split
  %i.dt = load i64, ptr %i.j, align 8, !noundef !4270
  %i.du = add i64 %i.dt, %.sroa.029.0213          ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !noundef !4270 ; 4 uses
  %i.dw = add i64 %i.dp, %indvars.iv, !dbg !161675 ; 2 uses
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dw, i64 1), !dbg !161675
  %umax322 = call i64 @llvm.umin.i64(i64 %i.dx, i64 32), !dbg !161675 ; 5 uses
  br label %bb.c, !dbg !161675

.split185:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !161867
  br i1 %.not468, label %._crit_edge210, label %.split182.preheader, !dbg !161868

.split182.preheader:                              ; preds = %.split185
  %xtraiter = and i64 %umax322, 1
  %i.dy = icmp ult i64 %i.dw, 2
  %unroll_iter = and i64 %umax322, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod617 = trunc i64 %umax322 to i1
  br label %.split182, !dbg !161869

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.dz, %bb.u ] ; 5 uses
  %i.dz = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !161870 ; 2 uses
  %i.ea = add nuw i64 %i.du, %.sroa.032.0179, !dbg !161871 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.dv, !dbg !161872
  br i1 %i.eb, label %bb.d, label %bb.e, !dbg !161872

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.split182.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !161869

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.split182
  %.sroa.036.0183.epil.init = phi i64 [ 0, %.split182 ], [ %i.fg, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod617), !dbg !161869
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0183.epil.init, !dbg !161873 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !161873
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !161873, !noundef !4270
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0183.epil.init, !dbg !161874
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !161874, !noundef !4270
  %i.eh = add i64 %i.eg, %.sroa.034.0186, !dbg !161874 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee, !dbg !161875
  call void @llvm.assume(i1 %i.ei), !dbg !161876
  %i.ej = load ptr, ptr %i.ec, align 8, !dbg !161873, !nonnull !4270, !noundef !4270
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh, !dbg !161877
  %i.el = load i8, ptr %i.ek, align 1, !dbg !161878, !noundef !4270
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.sroa.036.0183.epil.init, !dbg !161879
  store i8 %i.el, ptr %gep.epil, align 1, !dbg !161879
  br label %..loopexit99_crit_edge, !dbg !161880

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %i.em = add nuw nsw i64 %.sroa.034.0186, 1, !dbg !161880 ; 2 uses
  %exitcond348.not = icmp eq i64 %i.em, %umax350, !dbg !161881
  br i1 %exitcond348.not, label %.loopexit100, label %.split182, !dbg !161868

.split182:                                        ; preds = %.split182.preheader, %..loopexit99_crit_edge
  %.sroa.034.0186 = phi i64 [ %i.em, %..loopexit99_crit_edge ], [ 0, %.split182.preheader ] ; 5 uses
  %i.en = shl nuw nsw i64 %.sroa.034.0186, 5, !dbg !161882
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.en, !dbg !161869 ; 3 uses
  br i1 %i.dy, label %.epil.preheader, label %.split182.new, !dbg !161869

.loopexit100:                                     ; preds = %..loopexit99_crit_edge, %.loopexit, %.split185.thread
  br i1 %.not468, label %._crit_edge210, label %.lr.ph209.preheader.preheader, !dbg !161883

.lr.ph209.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.do, label %.lr.ph209.preheader.epil.preheader, label %.lr.ph209.preheader, !dbg !161883

.split182.new:                                    ; preds = %.split182, %.split182.new
  %.sroa.036.0183 = phi i64 [ %i.fg, %.split182.new ], [ 0, %.split182 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.split182.new ], [ 0, %.split182 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0183, !dbg !161873 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !161873
  %i.eq = load i64, ptr %i.ep, align 8, !dbg !161873, !noundef !4270
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0183, !dbg !161874
  %i.es = load i64, ptr %i.er, align 8, !dbg !161874, !noundef !4270
  %i.et = add i64 %i.es, %.sroa.034.0186, !dbg !161874 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eq, !dbg !161875
  call void @llvm.assume(i1 %i.eu), !dbg !161876
  %i.ev = or disjoint i64 %.sroa.036.0183, 1, !dbg !161884 ; 3 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !dbg !161873, !nonnull !4270, !noundef !4270
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et, !dbg !161877
  %i.ey = load i8, ptr %i.ex, align 1, !dbg !161878, !noundef !4270
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.sroa.036.0183, !dbg !161879
  store i8 %i.ey, ptr %gep, align 1, !dbg !161879
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ev, !dbg !161873 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !161873
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !161873, !noundef !4270
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev, !dbg !161874
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !161874, !noundef !4270
  %i.fe = add i64 %i.fd, %.sroa.034.0186, !dbg !161874 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb, !dbg !161875
  call void @llvm.assume(i1 %i.ff), !dbg !161876
  %i.fg = add nuw nsw i64 %.sroa.036.0183, 2, !dbg !161884 ; 2 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !dbg !161873, !nonnull !4270, !noundef !4270
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe, !dbg !161877
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !161878, !noundef !4270
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ev, !dbg !161879
  store i8 %i.fj, ptr %gep.1, align 1, !dbg !161879
  %niter.next.1 = add i64 %niter, 2, !dbg !161869 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !161869
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.split182.new, !dbg !161869

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.af, align 8, !dbg !161885, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.ea, !dbg !161886 ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0213, !dbg !161887 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 64, !dbg !161888
  br i1 %i.fn, label %bb.f, label %bb.h, !dbg !161888

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !161872
  unreachable, !dbg !161872

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fm, !dbg !161889 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fp, align 8       ; 4 uses
  %.not79170 = icmp ult i64 %i.dh, %.promoted, !dbg !161890
  br i1 %.not79170, label %bb.i, label %.lr.ph, !dbg !161890

.lr.ph:                                           ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4270 ; 5 uses
  %.promoted172 = load i64, ptr %i.fo, align 8    ; 2 uses
  %i.ft = add i64 %.promoted172, 1, !dbg !161890  ; 4 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs, !dbg !161891
  br i1 %i.fu, label %bb.g, label %.loopexit314, !dbg !161891

bb.g:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !161892, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft, !dbg !161893
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !161894
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !161894, !noundef !4270
  %i.ga = add i64 %i.fz, %.promoted, !dbg !161895 ; 3 uses
  %.not79.peel = icmp ult i64 %i.dh, %i.ga, !dbg !161890
  br i1 %.not79.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !161890

.peel.next.preheader:                             ; preds = %bb.g
  %i.gb = add i64 %.promoted172, 2, !dbg !161896  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fs, !dbg !161891
  br i1 %i.gc, label %.lr.ph537, label %.loopexit314, !dbg !161891

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !161888
  unreachable, !dbg !161888

._crit_edge:                                      ; preds = %.lr.ph537, %bb.g
  %.lcssa235 = phi i64 [ %i.ga, %bb.g ], [ %i.jy, %.lr.ph537 ], !dbg !161895
  %.lcssa234 = phi i64 [ %.promoted, %bb.g ], [ %i.ju, %.lr.ph537 ]
  %.lcssa232 = phi i64 [ %i.ft, %bb.g ], [ %i.jt, %.lr.ph537 ], !dbg !161896
  store i64 %.lcssa232, ptr %i.fo, align 8, !dbg !161896
  store i64 %.lcssa234, ptr %i.fq, align 8, !dbg !161897
  br label %bb.i, !dbg !161890

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa167 = phi i64 [ %.lcssa235, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa167, ptr %i.fp, align 8, !dbg !161898
  %.not80 = icmp ugt i64 %i.dn, %.lcssa167, !dbg !161899
  br i1 %.not80, label %bb.j, label %bb.k, !dbg !161899

.peel.next:                                       ; preds = %.lr.ph537
  %i.gd = add nuw i64 %i.jt, 1, !dbg !161896      ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.fs, !dbg !161891
  br i1 %i.ge, label %.lr.ph537, label %.loopexit314, !dbg !161891, !llvm.loop !161624

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !161866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !161867
  br i1 %.not468, label %._crit_edge210, label %.lr.ph206, !dbg !161900

bb.k:                                             ; preds = %bb.i
  %i.gf = load i64, ptr %i.fo, align 8, !dbg !161901, !noundef !4270 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !161902
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !161902, !noundef !4270 ; 2 uses
  %i.gi = icmp ult i64 %i.gf, %i.gh, !dbg !161903
  br i1 %i.gi, label %bb.u, label %bb.v, !dbg !161903

.loopexit:                                        ; preds = %bb.t
  %exitcond342.not = icmp eq i64 %i.gj, %umax350, !dbg !161904
  br i1 %exitcond342.not, label %.loopexit100, label %.lr.ph206, !dbg !161900

.lr.ph206:                                        ; preds = %bb.j, %.loopexit
  %.sroa.038.0204 = phi i64 [ %i.gj, %.loopexit ], [ 0, %bb.j ] ; 3 uses
  %i.gj = add nuw nsw i64 %.sroa.038.0204, 1, !dbg !161905 ; 2 uses
  %i.gk = add i64 %.sroa.038.0204, %i.dh, !dbg !161906 ; 4 uses
  %i.gl = shl nuw nsw i64 %.sroa.038.0204, 5, !dbg !161907
end_hunk_10
