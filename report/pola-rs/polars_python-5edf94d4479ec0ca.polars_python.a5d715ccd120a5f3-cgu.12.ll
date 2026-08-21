inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !153180, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !153180, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !153181           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !153181
  %i.o = add i64 %i.n, %i.m, !dbg !153182
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !153184
  %i.q = load ptr, ptr %i.p, align 8, !dbg !153184, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !153184, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !153185 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !153187 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !153189
  %i.u = load ptr, ptr %i.t, align 8, !dbg !153189, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !153189, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !153191
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !153191

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !153204
  %i.x = and i64 %i.v, 63, !dbg !153216
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !153218
  %i.y = zext i1 %.not10.i.i to i64, !dbg !153218
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !153218 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !153220

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !153231
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !153232
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !153233
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !153235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !153236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !153237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !153238
  store ptr %i.i, ptr %i.c, align 8, !dbg !153239
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !153239
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !153239
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !153239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !153220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153220, !noalias !153244
  br label %bb.a, !dbg !153220

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !153248, !noalias !153249
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !153252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153261, !noalias !153244
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !153264 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !153220
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !153220

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !153267
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !153271 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153272, !noalias !153244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153276
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !153191
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !153191

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !153277

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !153231
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !153232
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !153233
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !153235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !153236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !153237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !153238
  store ptr %i.i, ptr %i.c, align 8, !dbg !153239
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !153239
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !153239
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !153239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !153220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153220, !noalias !153244
  br label %bb.b, !dbg !153220

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !153248, !noalias !153249
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !153252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153261, !noalias !153244
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !153264 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !153220
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !153220

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !153267
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !153271 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153272, !noalias !153244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !153278, !noalias !153282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !153237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153275
  br label %.split213, !dbg !153283

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !153283
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !153283
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !153283

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153276
  %.not = icmp eq i64 %i.dc, 0, !dbg !153191
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !153191

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153292
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !153292 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153292
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !153292 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !153292
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !153296 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !153297, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !153297 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !153300, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !153302
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !153302

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !153310
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !153311
  %i.dk = lshr i64 %i.di, 5, !dbg !153313
  %i.dl = and i64 %i.di, 31, !dbg !153318
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !153319
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !153319
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !153319
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !153302

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !153320, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !153322
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !153324
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !153328 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !153320
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !153329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !153331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !153333
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !153334
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !153336

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !153336
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !153336
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !153336 ; 2 uses
  br label %bb.c, !dbg !153336

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !153346
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !153346

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !153353 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !153359 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !153361
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !153361

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !153368 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !153368
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !153368 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !153368

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !153368

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !153368
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !153376 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !153376
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !153376, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !153378
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !153378, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !153378 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !153379
  call void @llvm.assume(i1 %i.em), !dbg !153384
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !153376, !nonnull !11, !align !153385, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !153386
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !153387, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !153388
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !153388
  br label %..loopexit101_crit_edge, !dbg !153389

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !153389
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !153346

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !153392 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !153368 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !153368

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !153398

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !153398

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !153376 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !153376
  %i.eu = load i64, ptr %i.et, align 8, !dbg !153376, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !153378
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !153378, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !153378 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !153379
  call void @llvm.assume(i1 %i.ey), !dbg !153384
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !153404 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !153376, !nonnull !11, !align !153385, !noundef !11
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ex, !dbg !153386
  %i.fc = load i16, ptr %i.fb, align 2, !dbg !153387, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !153388
  store i16 %i.fc, ptr %gep472, align 2, !dbg !153388
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !153376 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !153376
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !153376, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !153378
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !153378, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !153378 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !153379
  call void @llvm.assume(i1 %i.fj), !dbg !153384
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !153404 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !153376, !nonnull !11, !align !153385, !noundef !11
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fi, !dbg !153386
  %i.fn = load i16, ptr %i.fm, align 2, !dbg !153387, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !153388
  store i16 %i.fn, ptr %gep472.1, align 2, !dbg !153388
  %niter.next.1 = add i64 %niter, 2, !dbg !153368 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !153368
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !153368

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !153410, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !153423 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !153424 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !153426
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !153426

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !153361
  unreachable, !dbg !153361

end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !153842, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !153842, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !153843           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !153843
  %i.o = add i64 %i.n, %i.m, !dbg !153844
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !153846
  %i.q = load ptr, ptr %i.p, align 8, !dbg !153846, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !153846, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !153847 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !153849 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !153851
  %i.u = load ptr, ptr %i.t, align 8, !dbg !153851, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !153851, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !153853
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !153853

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !153862
  %i.x = and i64 %i.v, 63, !dbg !153868
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !153869
  %i.y = zext i1 %.not10.i.i to i64, !dbg !153869
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !153869 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !153870

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !153881
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !153882
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !153883
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !153885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !153886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !153887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !153888
  store ptr %i.i, ptr %i.c, align 8, !dbg !153889
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !153889
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !153889
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !153889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !153870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153870, !noalias !153891
  br label %bb.a, !dbg !153870

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !153895, !noalias !153896
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !153899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153907, !noalias !153891
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !153910 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !153870
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !153870

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !153913
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !153917 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153918, !noalias !153891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153922
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !153853
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !153853

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !153923

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !153881
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !153882
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !153883
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !153885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !153886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !153887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !153888
  store ptr %i.i, ptr %i.c, align 8, !dbg !153889
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !153889
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !153889
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !153889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !153870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153870, !noalias !153891
  br label %bb.b, !dbg !153870

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !153895, !noalias !153896
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !153899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153907, !noalias !153891
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !153910 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !153870
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !153870

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !153913
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !153917 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153918, !noalias !153891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !153924, !noalias !153926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !153887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153921
  br label %.split213, !dbg !153927

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !153927
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !153927
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !153927

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153922
  %.not = icmp eq i64 %i.dc, 0, !dbg !153853
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !153853

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153936
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !153936 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153936
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !153936 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !153936
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !153940 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !153941, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !153941 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !153944, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !153946
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !153946

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !153954
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !153955
  %i.dk = lshr i64 %i.di, 5, !dbg !153957
  %i.dl = and i64 %i.di, 31, !dbg !153962
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !153963
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !153963
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !153963
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !153946

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !153964, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !153966
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !153968
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !153972 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !153964
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !153973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !153975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !153977
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !153978
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !153980

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !153980
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !153980
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !153980 ; 2 uses
  br label %bb.c, !dbg !153980

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153989
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !153990
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !153990

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !153997 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !154003 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !154005
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !154005

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !154012 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !154012
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !154012 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !154012

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !154012

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !154012
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !154020 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !154020
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !154020, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !154022
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !154022, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !154022 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !154023
  call void @llvm.assume(i1 %i.em), !dbg !154028
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !154020, !nonnull !11, !align !154029, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !154030
  %i.ep = load i32, ptr %i.eo, align 4, !dbg !154031, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !154032
  store i32 %i.ep, ptr %gep472.epil, align 4, !dbg !154032
  br label %..loopexit101_crit_edge, !dbg !154033

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !154033
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !153990

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !154036 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !154012 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !154012

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !154042

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !154042

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !154020 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !154020
  %i.eu = load i64, ptr %i.et, align 8, !dbg !154020, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !154022
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !154022, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !154022 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !154023
  call void @llvm.assume(i1 %i.ey), !dbg !154028
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !154048 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !154020, !nonnull !11, !align !154029, !noundef !11
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ex, !dbg !154030
  %i.fc = load i32, ptr %i.fb, align 4, !dbg !154031, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !154032
  store i32 %i.fc, ptr %gep472, align 4, !dbg !154032
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !154020 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !154020
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !154020, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !154022
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !154022, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !154022 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !154023
  call void @llvm.assume(i1 %i.fj), !dbg !154028
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !154048 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !154020, !nonnull !11, !align !154029, !noundef !11
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fi, !dbg !154030
  %i.fn = load i32, ptr %i.fm, align 4, !dbg !154031, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !154032
  store i32 %i.fn, ptr %gep472.1, align 4, !dbg !154032
  %niter.next.1 = add i64 %niter, 2, !dbg !154012 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !154012
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !154012

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !154054, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !154067 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !154068 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !154070
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !154070

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !154005
  unreachable, !dbg !154005

end_hunk_1
begin_hunk_2_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !154485, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !154485, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !154486           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !154486
  %i.o = add i64 %i.n, %i.m, !dbg !154487
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !154489
  %i.q = load ptr, ptr %i.p, align 8, !dbg !154489, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !154489, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !154490 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !154492 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !154494
  %i.u = load ptr, ptr %i.t, align 8, !dbg !154494, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !154494, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !154496
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !154496

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !154505
  %i.x = and i64 %i.v, 63, !dbg !154511
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !154512
  %i.y = zext i1 %.not10.i.i to i64, !dbg !154512
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !154512 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !154513

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !154524
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !154525
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !154526
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !154528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !154529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !154530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !154531
  store ptr %i.i, ptr %i.c, align 8, !dbg !154532
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !154532
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !154532
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !154532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !154513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !154513, !noalias !154534
  br label %bb.a, !dbg !154513

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !154538, !noalias !154539
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !154542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !154550, !noalias !154534
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !154553 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !154513
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !154513

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !154556
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !154560 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !154561, !noalias !154534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !154562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !154563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !154564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !154565
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !154496
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !154496

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !154566

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !154524
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !154525
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !154526
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !154528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !154529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !154530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !154531
  store ptr %i.i, ptr %i.c, align 8, !dbg !154532
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !154532
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !154532
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !154532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !154513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !154513, !noalias !154534
  br label %bb.b, !dbg !154513

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !154538, !noalias !154539
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !154542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !154550, !noalias !154534
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !154553 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !154513
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !154513

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !154556
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !154560 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !154561, !noalias !154534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !154567, !noalias !154569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !154562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !154563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !154530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !154564
  br label %.split213, !dbg !154570

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !154570
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !154570
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !154570

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !154565
  %.not = icmp eq i64 %i.dc, 0, !dbg !154496
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !154496

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !154579
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !154579 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !154579
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !154579 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !154579
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !154583 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !154584, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !154584 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !154587, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !154589
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !154589

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !154597
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !154598
  %i.dk = lshr i64 %i.di, 5, !dbg !154600
  %i.dl = and i64 %i.di, 31, !dbg !154605
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !154606
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !154606
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !154606
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !154589

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !154607, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !154609
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !154611
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !154615 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !154607
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !154616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !154618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !154620
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !154621
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !154623

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !154623
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !154623
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !154623 ; 2 uses
  br label %bb.c, !dbg !154623

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !154632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !154633
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !154633

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !154640 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !154646 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !154648
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !154648

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !154655 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !154655
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !154655 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !154655

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !154655

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !154655
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !154663 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !154663
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !154663, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !154665
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !154665, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !154665 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !154666
  call void @llvm.assume(i1 %i.em), !dbg !154671
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !154663, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !154672
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !154673, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !154674
  store i64 %i.ep, ptr %gep472.epil, align 8, !dbg !154674
  br label %..loopexit101_crit_edge, !dbg !154675

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !154675
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !154633

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !154678 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !154655 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !154655

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !154684

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !154684

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !154663 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !154663
  %i.eu = load i64, ptr %i.et, align 8, !dbg !154663, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !154665
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !154665, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !154665 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !154666
  call void @llvm.assume(i1 %i.ey), !dbg !154671
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !154690 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !154663, !nonnull !11, !align !2013, !noundef !11
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ex, !dbg !154672
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !154673, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !154674
  store i64 %i.fc, ptr %gep472, align 8, !dbg !154674
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !154663 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !154663
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !154663, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !154665
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !154665, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !154665 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !154666
  call void @llvm.assume(i1 %i.fj), !dbg !154671
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !154690 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !154663, !nonnull !11, !align !2013, !noundef !11
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fi, !dbg !154672
  %i.fn = load i64, ptr %i.fm, align 8, !dbg !154673, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !154674
  store i64 %i.fn, ptr %gep472.1, align 8, !dbg !154674
  %niter.next.1 = add i64 %niter, 2, !dbg !154655 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !154655
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !154655

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !154696, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !154709 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !154710 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !154712
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !154712

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !154648
  unreachable, !dbg !154648

end_hunk_2
begin_hunk_3_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !155127, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !155127, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !155128           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !155128
  %i.o = add i64 %i.n, %i.m, !dbg !155129
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155131
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155131, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !155131, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !155132 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !155134 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155136
  %i.u = load ptr, ptr %i.t, align 8, !dbg !155136, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !155136, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !155138
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !155138

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !155147
  %i.x = and i64 %i.v, 63, !dbg !155153
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !155154
  %i.y = zext i1 %.not10.i.i to i64, !dbg !155154
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !155154 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !155155

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !155166
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !155167
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !155168
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !155170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155173
  store ptr %i.i, ptr %i.c, align 8, !dbg !155174
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155174
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155174
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155155, !noalias !155176
  br label %bb.a, !dbg !155155

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !155180, !noalias !155181
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !155184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155192, !noalias !155176
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !155195 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !155155
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !155155

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !155198
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !155202 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155203, !noalias !155176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155207
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !155138
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !155138

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !155208

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !155166
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !155167
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !155168
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !155170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155173
  store ptr %i.i, ptr %i.c, align 8, !dbg !155174
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155174
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155174
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155155, !noalias !155176
  br label %bb.b, !dbg !155155

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155180, !noalias !155181
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155192, !noalias !155176
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !155195 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155155
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155155

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !155198
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !155202 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155203, !noalias !155176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !155209, !noalias !155211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155206
  br label %.split213, !dbg !155212

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !155212
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !155212
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !155212

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155207
  %.not = icmp eq i64 %i.dc, 0, !dbg !155138
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !155138

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155221
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !155221 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155221
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !155221 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !155221
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !155225 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !155226, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !155226 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !155229, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !155231
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !155231

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !155239
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !155240
  %i.dk = lshr i64 %i.di, 5, !dbg !155242
  %i.dl = and i64 %i.di, 31, !dbg !155247
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !155248
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !155248
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !155248
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !155231

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !155249, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !155251
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !155253
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !155257 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !155249
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !155258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !155260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !155262
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !155263
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !155265

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !155265
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !155265
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !155265 ; 2 uses
  br label %bb.c, !dbg !155265

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !155275
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !155275

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !155282 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !155288 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !155290
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !155290

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !155297 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !155297
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !155297 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !155297

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !155297

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !155297
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !155305 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !155305
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !155305, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !155307
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !155307, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !155307 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !155308
  call void @llvm.assume(i1 %i.em), !dbg !155313
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !155305, !nonnull !11, !align !153385, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !155314
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !155315, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !155316
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !155316
  br label %..loopexit101_crit_edge, !dbg !155317

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !155317
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !155275

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !155320 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !155297 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !155297

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !155326

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !155326

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !155305 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !155305
  %i.eu = load i64, ptr %i.et, align 8, !dbg !155305, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !155307
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !155307, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !155307 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !155308
  call void @llvm.assume(i1 %i.ey), !dbg !155313
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !155332 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !155305, !nonnull !11, !align !153385, !noundef !11
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ex, !dbg !155314
  %i.fc = load i16, ptr %i.fb, align 2, !dbg !155315, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !155316
  store i16 %i.fc, ptr %gep472, align 2, !dbg !155316
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !155305 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !155305
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !155305, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !155307
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !155307, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !155307 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !155308
  call void @llvm.assume(i1 %i.fj), !dbg !155313
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !155332 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !155305, !nonnull !11, !align !153385, !noundef !11
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fi, !dbg !155314
  %i.fn = load i16, ptr %i.fm, align 2, !dbg !155315, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !155316
  store i16 %i.fn, ptr %gep472.1, align 2, !dbg !155316
  %niter.next.1 = add i64 %niter, 2, !dbg !155297 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !155297
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !155297

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !155338, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !155351 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !155352 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !155354
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !155354

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !155290
  unreachable, !dbg !155290

end_hunk_3
begin_hunk_4_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !155769, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !155769, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !155770           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !155770
  %i.o = add i64 %i.n, %i.m, !dbg !155771
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155773
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155773, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !155773, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !155774 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !155776 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155778
  %i.u = load ptr, ptr %i.t, align 8, !dbg !155778, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !155778, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !155780
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !155780

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !155789
  %i.x = and i64 %i.v, 63, !dbg !155795
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !155796
  %i.y = zext i1 %.not10.i.i to i64, !dbg !155796
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !155796 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !155797

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !155808
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !155809
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !155810
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !155812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155815
  store ptr %i.i, ptr %i.c, align 8, !dbg !155816
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155816
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155816
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155797, !noalias !155818
  br label %bb.a, !dbg !155797

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !155822, !noalias !155823
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !155826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155834, !noalias !155818
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !155837 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !155797
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !155797

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !155840
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !155844 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155845, !noalias !155818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155849
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !155780
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !155780

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !155850

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !155808
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !155809
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !155810
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !155812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !155813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !155814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155815
  store ptr %i.i, ptr %i.c, align 8, !dbg !155816
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !155816
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !155816
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !155816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155797, !noalias !155818
  br label %bb.b, !dbg !155797

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155822, !noalias !155823
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155834, !noalias !155818
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !155837 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155797
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155797

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !155840
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !155844 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155845, !noalias !155818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !155851, !noalias !155853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155848
  br label %.split213, !dbg !155854

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !155854
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !155854
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !155854

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155849
  %.not = icmp eq i64 %i.dc, 0, !dbg !155780
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !155780

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155863
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !155863 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155863
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !155863 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !155863
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !155867 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !155868, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !155868 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !155871, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !155873
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !155873

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !155881
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !155882
  %i.dk = lshr i64 %i.di, 5, !dbg !155884
  %i.dl = and i64 %i.di, 31, !dbg !155889
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !155890
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !155890
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !155890
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !155873

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !155891, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !155893
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !155895
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !155899 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !155891
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !155900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !155902
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !155904
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !155905
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !155907

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !155907
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !155907
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !155907 ; 2 uses
  br label %bb.c, !dbg !155907

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155916
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !155917
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !155917

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !155924 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !155930 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !155932
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !155932

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !155939 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !155939
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !155939 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !155939

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !155939

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !155939
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !155947 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !155947
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !155947, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !155949
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !155949, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !155949 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !155950
  call void @llvm.assume(i1 %i.em), !dbg !155955
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !155947, !nonnull !11, !align !154029, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !155956
  %i.ep = load float, ptr %i.eo, align 4, !dbg !155957, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !155958
  store float %i.ep, ptr %gep472.epil, align 4, !dbg !155958
  br label %..loopexit101_crit_edge, !dbg !155959

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !155959
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !155917

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !155962 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !155939 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !155939

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !155968

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !155968

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !155947 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !155947
  %i.eu = load i64, ptr %i.et, align 8, !dbg !155947, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !155949
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !155949, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !155949 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !155950
  call void @llvm.assume(i1 %i.ey), !dbg !155955
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !155974 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !155947, !nonnull !11, !align !154029, !noundef !11
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ex, !dbg !155956
  %i.fc = load float, ptr %i.fb, align 4, !dbg !155957, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !155958
  store float %i.fc, ptr %gep472, align 4, !dbg !155958
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !155947 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !155947
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !155947, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !155949
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !155949, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !155949 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !155950
  call void @llvm.assume(i1 %i.fj), !dbg !155955
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !155974 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !155947, !nonnull !11, !align !154029, !noundef !11
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fi, !dbg !155956
  %i.fn = load float, ptr %i.fm, align 4, !dbg !155957, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !155958
  store float %i.fn, ptr %gep472.1, align 4, !dbg !155958
  %niter.next.1 = add i64 %niter, 2, !dbg !155939 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !155939
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !155939

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !155980, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !155993 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !155994 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !155996
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !155996

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !155932
  unreachable, !dbg !155932

end_hunk_4
begin_hunk_5_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !156411, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !156411, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !156412           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !156412
  %i.o = add i64 %i.n, %i.m, !dbg !156413
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !156415
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156415, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !156415, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !156416 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !156418 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !156420
  %i.u = load ptr, ptr %i.t, align 8, !dbg !156420, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !156420, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !156422
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !156422

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !156431
  %i.x = and i64 %i.v, 63, !dbg !156437
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !156438
  %i.y = zext i1 %.not10.i.i to i64, !dbg !156438
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !156438 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !156439

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !156450
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !156451
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !156452
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !156454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !156455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !156456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !156457
  store ptr %i.i, ptr %i.c, align 8, !dbg !156458
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !156458
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !156458
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !156458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156439, !noalias !156460
  br label %bb.a, !dbg !156439

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !156464, !noalias !156465
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !156468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156476, !noalias !156460
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !156479 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !156439
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !156439

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !156482
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !156486 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156487, !noalias !156460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156491
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !156422
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !156422

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !156492

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !156450
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !156451
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !156452
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !156454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !156455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !156456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !156457
  store ptr %i.i, ptr %i.c, align 8, !dbg !156458
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !156458
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !156458
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !156458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156439, !noalias !156460
  br label %bb.b, !dbg !156439

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !156464, !noalias !156465
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !156468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156476, !noalias !156460
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !156479 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !156439
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !156439

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !156482
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !156486 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156487, !noalias !156460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !156493, !noalias !156495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !156456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156490
  br label %.split213, !dbg !156496

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !156496
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !156496
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !156496

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156491
  %.not = icmp eq i64 %i.dc, 0, !dbg !156422
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !156422

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !156505
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !156505 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !156505
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !156505 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !156505
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !156509 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !156510, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !156510 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !156513, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !156515
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !156515

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !156523
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !156524
  %i.dk = lshr i64 %i.di, 5, !dbg !156526
  %i.dl = and i64 %i.di, 31, !dbg !156531
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !156532
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !156532
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !156532
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !156515

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !156533, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !156535
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !156537
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !156541 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !156533
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !156542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !156544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !156546
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !156547
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !156549

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !156549
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !156549
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !156549 ; 2 uses
  br label %bb.c, !dbg !156549

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !156559
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !156559

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !156566 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !156572 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !156574
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !156574

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !156581 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !156581
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !156581 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !156581

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !156581

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !156581
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !156589 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !156589
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !156589, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !156591
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !156591, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !156591 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !156592
  call void @llvm.assume(i1 %i.em), !dbg !156597
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !156589, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !156598
  %i.ep = load double, ptr %i.eo, align 8, !dbg !156599, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !156600
  store double %i.ep, ptr %gep472.epil, align 8, !dbg !156600
  br label %..loopexit101_crit_edge, !dbg !156601

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !156601
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !156559

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !156604 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !156581 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !156581

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !156610

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !156610

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !156589 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !156589
  %i.eu = load i64, ptr %i.et, align 8, !dbg !156589, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !156591
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !156591, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !156591 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !156592
  call void @llvm.assume(i1 %i.ey), !dbg !156597
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !156616 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !156589, !nonnull !11, !align !2013, !noundef !11
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ex, !dbg !156598
  %i.fc = load double, ptr %i.fb, align 8, !dbg !156599, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !156600
  store double %i.fc, ptr %gep472, align 8, !dbg !156600
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !156589 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !156589
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !156589, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !156591
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !156591, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !156591 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !156592
  call void @llvm.assume(i1 %i.fj), !dbg !156597
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !156616 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !156589, !nonnull !11, !align !2013, !noundef !11
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fi, !dbg !156598
  %i.fn = load double, ptr %i.fm, align 8, !dbg !156599, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !156600
  store double %i.fn, ptr %gep472.1, align 8, !dbg !156600
  %niter.next.1 = add i64 %niter, 2, !dbg !156581 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !156581
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !156581

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !156622, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !156635 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !156636 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !156638
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !156638

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !156574
  unreachable, !dbg !156574

end_hunk_5
begin_hunk_6_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes8Int8TypeEs2_0CseeLknQCOKOd_13polars_python:.split221
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !157053, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !157053, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !157054           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !157054
  %i.o = add i64 %i.n, %i.m, !dbg !157055
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157057
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157057, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !157057, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !157058 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !157060 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !157062
  %i.u = load ptr, ptr %i.t, align 8, !dbg !157062, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !157062, !noundef !11 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !157064
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !157064

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !157073
  %i.x = and i64 %i.v, 63, !dbg !157079
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !157080
  %i.y = zext i1 %.not10.i.i to i64, !dbg !157080
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !157080 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i83 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i83 to i64
  %.sroa.05.0.i.i84 = add nuw nsw i64 %i.ab, %i.ad
  %.not77217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not77217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

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
  br label %.lr.ph225.split, !dbg !157081

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !157092
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !157093
  %.sroa.0.0.i82.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !157094
  store i64 %.sroa.0.0.i82.us, ptr %i.i, align 8, !dbg !157096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157099
  store ptr %i.i, ptr %i.c, align 8, !dbg !157100
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157100
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157100
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157081, !noalias !157102
  br label %bb.a, !dbg !157081

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes8Int8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !157106, !noalias !157107
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !157110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157118, !noalias !157102
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !157121 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !157081
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !157081

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !157124
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !157128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157129, !noalias !157102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157133
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !157064
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !157064

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !157134

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !157092
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !157093
  %.sroa.0.0.i82 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !157094
  store i64 %.sroa.0.0.i82, ptr %i.i, align 8, !dbg !157096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157099
  store ptr %i.i, ptr %i.c, align 8, !dbg !157100
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157100
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157100
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157081, !noalias !157102
  br label %bb.b, !dbg !157081

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes8Int8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157106, !noalias !157107
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157118, !noalias !157102
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157121 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157081
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157081

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !157124
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !157128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157129, !noalias !157102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157135, !noalias !157137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157132
  br label %.split212, !dbg !157138

.loopexit102:                                     ; preds = %._crit_edge211, %.split212
  %.not77 = icmp eq i64 %i.df, 0, !dbg !157138
  %indvars.iv.next342 = add i64 %indvars.iv341, -32, !dbg !157138
  br i1 %.not77, label %._crit_edge220, label %.split212, !dbg !157138

._crit_edge220:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157133
  %.not = icmp eq i64 %i.dc, 0, !dbg !157064
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !157064

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv341 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next342, %.loopexit102 ] ; 4 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 5 uses
  %umax619 = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !157147
  %umin = call i64 @llvm.umin.i64(i64 %umax619, i64 32), !dbg !157147 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !157147
  %umax353 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157147 ; 2 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !157147
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !157151 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157152, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !157152 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157155, !noundef !11 ; 3 uses
  %.not78213 = icmp eq i64 %i.di, 0, !dbg !157157
  br i1 %.not78213, label %.loopexit102, label %.lr.ph216, !dbg !157157

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !157165
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157166
  %i.dk = lshr i64 %i.di, 5, !dbg !157168
  %i.dl = and i64 %i.di, 31, !dbg !157173
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !157174
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !157174
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157174
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %i.do = icmp ne i64 %i.s, %.sroa.026.0218
  %.not228 = icmp eq i64 %i.s, %.sroa.026.0218    ; 2 uses
  %xtraiter620 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv341, 2
  %unroll_iter623 = and i64 %umin, 62
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod622 = trunc i64 %umin to i1
  br label %.split, !dbg !157157

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 3 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph216 ], [ %i.ds, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !157175, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157177
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
  %i.dr = add i64 %.sroa.029.0214, 32, !dbg !157179
  %i.ds = add i64 %.sroa.046.0215, -1, !dbg !157183 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0214, !dbg !157175
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !157184 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157188
  %.not230 = icmp eq i64 %i.dq, %.sroa.029.0214, !dbg !157189
  br i1 %.not230, label %._crit_edge181, label %.lr.ph180, !dbg !157191

.lr.ph180:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0214          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !157191
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !157191
  %umax325 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !157191 ; 2 uses
  br label %bb.c, !dbg !157191

._crit_edge181:                                   ; preds = %bb.u, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !157201
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0214
  %or.cond227 = and i1 %i.do, %i.dz, !dbg !157202
  br i1 %or.cond227, label %.lr.ph184.preheader, label %.loopexit100, !dbg !157202

.lr.ph184.preheader:                              ; preds = %._crit_edge181
  %i.ea = add i64 %i.dq, %indvars.iv, !dbg !157209 ; 2 uses
  %i.eb = call i64 @llvm.umax.i64(i64 %i.ea, i64 1), !dbg !157209
  %umax347 = call i64 @llvm.umin.i64(i64 %i.eb, i64 32), !dbg !157209 ; 3 uses
  %xtraiter = and i64 %umax347, 1
  %i.ec = icmp ult i64 %i.ea, 2
  %unroll_iter = and i64 %umax347, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod618 = trunc i64 %umax347 to i1
  br label %.lr.ph184, !dbg !157209

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.ed, %bb.u ] ; 5 uses
  %i.ed = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !157217 ; 2 uses
  %i.ee = add nuw i64 %i.dv, %.sroa.032.0179, !dbg !157223 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dw, !dbg !157225
  br i1 %i.ef, label %bb.d, label %bb.e, !dbg !157225

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.lr.ph184.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !157209

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.lr.ph184
  %.sroa.036.0182.epil.init = phi i64 [ 0, %.lr.ph184 ], [ %i.fk, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod618), !dbg !157209
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182.epil.init, !dbg !157232 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !157232
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !157232, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182.epil.init, !dbg !157234
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !157234, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0185, !dbg !157234 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !157235
  call void @llvm.assume(i1 %i.em), !dbg !157240
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !157232, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !157241
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !157242, !noundef !11
  %gep469.epil = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182.epil.init, !dbg !157243
  store i8 %i.ep, ptr %gep469.epil, align 1, !dbg !157243
  br label %..loopexit99_crit_edge, !dbg !157244

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond351.not = icmp eq i64 %i.eq, %umax353, !dbg !157244
  br i1 %exitcond351.not, label %.loopexit100, label %.lr.ph184, !dbg !157202

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %..loopexit99_crit_edge
  %.sroa.034.0185 = phi i64 [ %i.eq, %..loopexit99_crit_edge ], [ 0, %.lr.ph184.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0185, 1, !dbg !157247 ; 2 uses
  %i.er = shl nuw nsw i64 %.sroa.034.0185, 5, !dbg !157253
  %invariant.gep468 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.er, !dbg !157209 ; 3 uses
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph184.new, !dbg !157209

.loopexit100:                                     ; preds = %.loopexit, %..loopexit99_crit_edge, %._crit_edge181
  br i1 %.not228, label %._crit_edge211, label %.lr.ph210.preheader.preheader, !dbg !157254

.lr.ph210.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.dp, label %.lr.ph210.preheader.epil.preheader, label %.lr.ph210.preheader, !dbg !157254

.lr.ph184.new:                                    ; preds = %.lr.ph184, %.lr.ph184.new
  %.sroa.036.0182 = phi i64 [ %i.fk, %.lr.ph184.new ], [ 0, %.lr.ph184 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph184.new ], [ 0, %.lr.ph184 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182, !dbg !157232 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !157232
  %i.eu = load i64, ptr %i.et, align 8, !dbg !157232, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182, !dbg !157234
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !157234, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0185, !dbg !157234 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !157235
  call void @llvm.assume(i1 %i.ey), !dbg !157240
  %i.ez = or disjoint i64 %.sroa.036.0182, 1, !dbg !157260 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !157232, !nonnull !11, !noundef !11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex, !dbg !157241
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !157242, !noundef !11
  %gep469 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182, !dbg !157243
  store i8 %i.fc, ptr %gep469, align 1, !dbg !157243
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !157232 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !157232
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !157232, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !157234
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !157234, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0185, !dbg !157234 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !157235
  call void @llvm.assume(i1 %i.fj), !dbg !157240
  %i.fk = add nuw nsw i64 %.sroa.036.0182, 2, !dbg !157260 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !157232, !nonnull !11, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi, !dbg !157241
  %i.fn = load i8, ptr %i.fm, align 1, !dbg !157242, !noundef !11
  %gep469.1 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %i.ez, !dbg !157243
  store i8 %i.fn, ptr %gep469.1, align 1, !dbg !157243
  %niter.next.1 = add i64 %niter, 2, !dbg !157209 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157209
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.lr.ph184.new, !dbg !157209

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !157266, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.ee, !dbg !157279 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0214, !dbg !157280 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !157282
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !157282

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157225
  unreachable, !dbg !157225

bb.f:                                             ; preds = %bb.d
end_hunk_6
begin_hunk_7_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !157699, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !157699, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !157700           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !157700
  %i.o = add i64 %i.n, %i.m, !dbg !157701
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157703
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157703, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !157703, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !157704 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !157706 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !157708
  %i.u = load ptr, ptr %i.t, align 8, !dbg !157708, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !157708, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !157710
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !157710

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !157719
  %i.x = and i64 %i.v, 63, !dbg !157725
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !157726
  %i.y = zext i1 %.not10.i.i to i64, !dbg !157726
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !157726 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !157727

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !157738
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !157739
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !157740
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !157742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157745
  store ptr %i.i, ptr %i.c, align 8, !dbg !157746
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157746
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157746
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157727, !noalias !157748
  br label %bb.a, !dbg !157727

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !157752, !noalias !157753
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !157756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157764, !noalias !157748
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !157767 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !157727
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !157727

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !157770
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !157774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157775, !noalias !157748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157779
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !157710
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !157710

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !157780

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !157738
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !157739
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !157740
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !157742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !157743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !157744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !157745
  store ptr %i.i, ptr %i.c, align 8, !dbg !157746
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !157746
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157746
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !157746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157727, !noalias !157748
  br label %bb.b, !dbg !157727

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157752, !noalias !157753
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157764, !noalias !157748
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157767 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157727
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157727

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !157770
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !157774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157775, !noalias !157748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157781, !noalias !157783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157778
  br label %.split213, !dbg !157784

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !157784
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !157784
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !157784

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157779
  %.not = icmp eq i64 %i.dc, 0, !dbg !157710
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !157710

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !157793
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !157793 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !157793
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157793 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !157793
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !157797 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157798, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !157798 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157801, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !157803
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !157803

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !157811
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157812
  %i.dk = lshr i64 %i.di, 5, !dbg !157814
  %i.dl = and i64 %i.di, 31, !dbg !157819
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !157820
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !157820
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157820
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !157803

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !157821, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157823
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !157825
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !157829 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !157821
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !157830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157834
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !157835
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !157837

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !157837
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !157837
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !157837 ; 2 uses
  br label %bb.c, !dbg !157837

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157846
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !157847
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !157847

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !157854 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !157860 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !157862
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !157862

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !157869 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !157869
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !157869 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !157869

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !157869

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !157869
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !157877 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !157877
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !157877, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !157879
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !157879, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !157879 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !157880
  call void @llvm.assume(i1 %i.em), !dbg !157885
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !157877, !nonnull !11, !align !153385, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !157886
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !157887, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !157888
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !157888
  br label %..loopexit101_crit_edge, !dbg !157889

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !157889
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !157847

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !157892 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !157869 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !157869

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !157898

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !157898

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !157877 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !157877
  %i.eu = load i64, ptr %i.et, align 8, !dbg !157877, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !157879
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !157879, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !157879 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !157880
  call void @llvm.assume(i1 %i.ey), !dbg !157885
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !157904 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !157877, !nonnull !11, !align !153385, !noundef !11
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ex, !dbg !157886
  %i.fc = load i16, ptr %i.fb, align 2, !dbg !157887, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !157888
  store i16 %i.fc, ptr %gep472, align 2, !dbg !157888
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !157877 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !157877
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !157877, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !157879
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !157879, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !157879 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !157880
  call void @llvm.assume(i1 %i.fj), !dbg !157885
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !157904 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !157877, !nonnull !11, !align !153385, !noundef !11
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fi, !dbg !157886
  %i.fn = load i16, ptr %i.fm, align 2, !dbg !157887, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !157888
  store i16 %i.fn, ptr %gep472.1, align 2, !dbg !157888
  %niter.next.1 = add i64 %niter, 2, !dbg !157869 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157869
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !157869

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !157910, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !157923 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !157924 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !157926
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !157926

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157862
  unreachable, !dbg !157862

end_hunk_7
begin_hunk_8_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !158341, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !158341, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !158342           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !158342
  %i.o = add i64 %i.n, %i.m, !dbg !158343
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !158345
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158345, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !158345, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !158346 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !158348 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !158350
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158350, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !158350, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !158352
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !158352

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !158361
  %i.x = and i64 %i.v, 63, !dbg !158367
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !158368
  %i.y = zext i1 %.not10.i.i to i64, !dbg !158368
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !158368 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !158369

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !158380
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !158381
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !158382
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !158384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !158385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !158386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158387
  store ptr %i.i, ptr %i.c, align 8, !dbg !158388
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !158388
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !158388
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !158388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158369, !noalias !158390
  br label %bb.a, !dbg !158369

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !158394, !noalias !158395
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !158398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !158406, !noalias !158390
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !158409 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !158369
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !158369

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !158412
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !158416 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158417, !noalias !158390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !158420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !158421
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !158352
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !158352

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !158422

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !158380
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !158381
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !158382
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !158384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !158385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !158386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158387
  store ptr %i.i, ptr %i.c, align 8, !dbg !158388
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !158388
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !158388
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !158388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158369, !noalias !158390
  br label %bb.b, !dbg !158369

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !158394, !noalias !158395
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !158398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !158406, !noalias !158390
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !158409 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !158369
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !158369

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !158412
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !158416 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158417, !noalias !158390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !158423, !noalias !158425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !158386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !158420
  br label %.split213, !dbg !158426

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !158426
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !158426
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !158426

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !158421
  %.not = icmp eq i64 %i.dc, 0, !dbg !158352
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !158352

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !158435
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !158435 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !158435
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !158435 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !158435
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !158439 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !158440, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !158440 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !158443, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !158445
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !158445

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !158453
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !158454
  %i.dk = lshr i64 %i.di, 5, !dbg !158456
  %i.dl = and i64 %i.di, 31, !dbg !158461
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !158462
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !158462
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !158462
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !158445

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !158463, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !158465
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !158467
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !158471 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !158463
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !158472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !158474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !158476
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !158477
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !158479

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !158479
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !158479
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !158479 ; 2 uses
  br label %bb.c, !dbg !158479

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !158489
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !158489

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !158496 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !158502 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !158504
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !158504

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !158511 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !158511
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !158511 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !158511

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !158511

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !158511
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !158519 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !158519
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !158519, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !158521
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !158521, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !158521 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !158522
  call void @llvm.assume(i1 %i.em), !dbg !158527
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !158519, !nonnull !11, !align !154029, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !158528
  %i.ep = load i32, ptr %i.eo, align 4, !dbg !158529, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !158530
  store i32 %i.ep, ptr %gep472.epil, align 4, !dbg !158530
  br label %..loopexit101_crit_edge, !dbg !158531

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !158531
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !158489

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !158534 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !158511 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !158511

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !158540

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !158540

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !158519 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !158519
  %i.eu = load i64, ptr %i.et, align 8, !dbg !158519, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !158521
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !158521, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !158521 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !158522
  call void @llvm.assume(i1 %i.ey), !dbg !158527
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !158546 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !158519, !nonnull !11, !align !154029, !noundef !11
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ex, !dbg !158528
  %i.fc = load i32, ptr %i.fb, align 4, !dbg !158529, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !158530
  store i32 %i.fc, ptr %gep472, align 4, !dbg !158530
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !158519 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !158519
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !158519, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !158521
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !158521, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !158521 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !158522
  call void @llvm.assume(i1 %i.fj), !dbg !158527
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !158546 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !158519, !nonnull !11, !align !154029, !noundef !11
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fi, !dbg !158528
  %i.fn = load i32, ptr %i.fm, align 4, !dbg !158529, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !158530
  store i32 %i.fn, ptr %gep472.1, align 4, !dbg !158530
  %niter.next.1 = add i64 %niter, 2, !dbg !158511 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !158511
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !158511

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !158552, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !158565 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !158566 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !158568
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !158568

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !158504
  unreachable, !dbg !158504

end_hunk_8
begin_hunk_9_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !158983, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !158983, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !158984           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !158984
  %i.o = add i64 %i.n, %i.m, !dbg !158985
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !158987
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158987, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !158987, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !158988 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !158990 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !158992
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158992, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !158992, !noundef !11 ; 8 uses
  %.not223 = icmp eq i64 %i.v, 0, !dbg !158994
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226, !dbg !158994

.lr.ph226:                                        ; preds = %.split222
  %i.w = lshr i64 %i.v, 6, !dbg !159003
  %i.x = and i64 %i.v, 63, !dbg !159009
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !159010
  %i.y = zext i1 %.not10.i.i to i64, !dbg !159010
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !159010 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i85 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i85 to i64
  %.sroa.05.0.i.i86 = add nuw nsw i64 %i.ab, %i.ad
  %.not79218 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not79218, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
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
  br label %.lr.ph226.split, !dbg !159011

.lr.ph226.split.us:                               ; preds = %.lr.ph226, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0225.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph226 ]
  %.sroa.023.0224.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph226 ] ; 3 uses
  store i64 %.sroa.023.0224.us, ptr %i.j, align 8, !dbg !159022
  %i.ct = sub i64 %i.v, %.sroa.023.0224.us, !dbg !159023
  %.sroa.0.0.i84.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !159024
  store i64 %.sroa.0.0.i84.us, ptr %i.i, align 8, !dbg !159026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159029
  store ptr %i.i, ptr %i.c, align 8, !dbg !159030
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159030
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159030
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159011, !noalias !159032
  br label %bb.a, !dbg !159011

bb.a:                                             ; preds = %bb.a, %.lr.ph226.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph226.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !159036, !noalias !159037
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !159040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159048, !noalias !159032
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !159051 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !159011
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !159011

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0224.us, 64, !dbg !159054
  %i.cx = add i64 %.sroa.044.0225.us, -1, !dbg !159058 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159059, !noalias !159032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159063
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !158994
  br i1 %.not.us, label %._crit_edge227, label %.lr.ph226.split.us, !dbg !158994

._crit_edge227:                                   ; preds = %._crit_edge221, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split222
  ret void, !dbg !159064

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %._crit_edge221
  %.sroa.044.0225 = phi i64 [ %i.dc, %._crit_edge221 ], [ %.sroa.05.0.i.i, %.lr.ph226.split.preheader ]
  %.sroa.023.0224 = phi i64 [ %i.db, %._crit_edge221 ], [ 0, %.lr.ph226.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0224, ptr %i.j, align 8, !dbg !159022
  %i.cy = sub i64 %i.v, %.sroa.023.0224, !dbg !159023
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !159024
  store i64 %.sroa.0.0.i84, ptr %i.i, align 8, !dbg !159026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159029
  store ptr %i.i, ptr %i.c, align 8, !dbg !159030
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159030
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159030
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159011, !noalias !159032
  br label %bb.b, !dbg !159011

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159036, !noalias !159037
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159048, !noalias !159032
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159051 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159011
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159011

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !159054
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !159058 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159059, !noalias !159032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159065, !noalias !159067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159062
  br label %.split213, !dbg !159068

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !159068
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !159068
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !159068

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159063
  %.not = icmp eq i64 %i.dc, 0, !dbg !158994
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !158994

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 4 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %umax623 = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !159077
  %umin = call i64 @llvm.umin.i64(i64 %umax623, i64 32), !dbg !159077 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !159077
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159077 ; 2 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !159077
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !159081 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159082, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !159082 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159085, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !159087
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !159087

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !159095
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159096
  %i.dk = lshr i64 %i.di, 5, !dbg !159098
  %i.dl = and i64 %i.di, 31, !dbg !159103
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !159104
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !159104
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159104
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umin, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umin to i1
  br label %.split, !dbg !159087

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !159105, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159107
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !159109
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !159113 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !159105
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !159114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159118
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !159119
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !159121

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !159121
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !159121
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !159121 ; 2 uses
  br label %bb.c, !dbg !159121

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !159131
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !159131

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !159138 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !159144 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !159146
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !159146

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !159153 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !159153
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !159153 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !159153

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !159153

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fk, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !159153
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !159161 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !159161
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !159161, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !159163
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !159163, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !159163 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !159164
  call void @llvm.assume(i1 %i.em), !dbg !159169
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !159161, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !159170
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !159171, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !159172
  store i64 %i.ep, ptr %gep472.epil, align 8, !dbg !159172
  br label %..loopexit101_crit_edge, !dbg !159173

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond352.not = icmp eq i64 %i.eq, %umax354, !dbg !159173
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !159131

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %i.eq, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !159176 ; 2 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !159153 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !159153

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !159182

.lr.ph211:                                        ; preds = %.loopexit102
  %i.er = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !159182

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fk, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !159161 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !159161
  %i.eu = load i64, ptr %i.et, align 8, !dbg !159161, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !159163
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !159163, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0188, !dbg !159163 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !159164
  call void @llvm.assume(i1 %i.ey), !dbg !159169
  %i.ez = or disjoint i64 %.sroa.036.0185, 1, !dbg !159188 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !159161, !nonnull !11, !align !2013, !noundef !11
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ex, !dbg !159170
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !159171, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !159172
  store i64 %i.fc, ptr %gep472, align 8, !dbg !159172
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !159161 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !159161
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !159161, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !159163
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !159163, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0188, !dbg !159163 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !159164
  call void @llvm.assume(i1 %i.fj), !dbg !159169
  %i.fk = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !159188 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !159161, !nonnull !11, !align !2013, !noundef !11
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fi, !dbg !159170
  %i.fn = load i64, ptr %i.fm, align 8, !dbg !159171, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ez, !dbg !159172
  store i64 %i.fn, ptr %gep472.1, align 8, !dbg !159172
  %niter.next.1 = add i64 %niter, 2, !dbg !159153 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159153
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !159153

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !159194, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.eb, !dbg !159207 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !159208 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !159210
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !159210

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159146
  unreachable, !dbg !159146

end_hunk_9
begin_hunk_10_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeEs2_0CseeLknQCOKOd_13polars_python:.split221
  %i.g = alloca [512 x i8], align 8               ; 70 uses
  %i.h = alloca [1536 x i8], align 8              ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !dbg !159625, !nonnull !11, !align !2013, !noundef !11
  %i.m = load i64, ptr %i.l, align 8, !dbg !159625, !noundef !11 ; 2 uses
  %i.n = mul i64 %i.m, %1, !dbg !159626           ; 4 uses
  store i64 %i.n, ptr %i.k, align 8, !dbg !159626
  %i.o = add i64 %i.n, %i.m, !dbg !159627
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !159629
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159629, !nonnull !11, !align !2013, !noundef !11
  %i.r = load i64, ptr %i.q, align 8, !dbg !159629, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.o), !dbg !159630 ; 2 uses
  %i.s = sub i64 %.sroa.0.0.i, %i.n, !dbg !159632 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !159634
  %i.u = load ptr, ptr %i.t, align 8, !dbg !159634, !nonnull !11, !align !2013, !noundef !11
  %i.v = load i64, ptr %i.u, align 8, !dbg !159634, !noundef !11 ; 8 uses
  %.not222 = icmp eq i64 %i.v, 0, !dbg !159636
  br i1 %.not222, label %._crit_edge226, label %.lr.ph225, !dbg !159636

.lr.ph225:                                        ; preds = %.split221
  %i.w = lshr i64 %i.v, 6, !dbg !159645
  %i.x = and i64 %i.v, 63, !dbg !159651
  %.not10.i.i = icmp ne i64 %i.x, 0, !dbg !159652
  %i.y = zext i1 %.not10.i.i to i64, !dbg !159652
  %.sroa.05.0.i.i = add nuw nsw i64 %i.w, %i.y, !dbg !159652 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !2013, !noundef !11 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ab = lshr i64 %i.s, 5
  %i.ac = and i64 %i.s, 31
  %.not10.i.i83 = icmp ne i64 %i.ac, 0
  %i.ad = zext i1 %.not10.i.i83 to i64
  %.sroa.05.0.i.i84 = add nuw nsw i64 %i.ab, %i.ad
  %.not77217 = icmp eq i64 %.sroa.0.0.i, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !2013 ; 3 uses
  br i1 %.not77217, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

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
  br label %.lr.ph225.split, !dbg !159653

.lr.ph225.split.us:                               ; preds = %.lr.ph225, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us
  %.sroa.044.0224.us = phi i64 [ %i.cx, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ %.sroa.05.0.i.i, %.lr.ph225 ]
  %.sroa.023.0223.us = phi i64 [ %i.cw, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us ], [ 0, %.lr.ph225 ] ; 3 uses
  store i64 %.sroa.023.0223.us, ptr %i.j, align 8, !dbg !159664
  %i.ct = sub i64 %i.v, %.sroa.023.0223.us, !dbg !159665
  %.sroa.0.0.i82.us = call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 64), !dbg !159666
  store i64 %.sroa.0.0.i82.us, ptr %i.i, align 8, !dbg !159668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159671
  store ptr %i.i, ptr %i.c, align 8, !dbg !159672
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159672
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159672
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159653, !noalias !159674
  br label %bb.a, !dbg !159653

bb.a:                                             ; preds = %bb.a, %.lr.ph225.split.us
  %storemerge3.i.i.us = phi i64 [ 0, %.lr.ph225.split.us ], [ %i.cv, %bb.a ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9UInt8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i.us), !dbg !159678, !noalias !159679
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i.us, !dbg !159682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159690, !noalias !159674
  %i.cv = add nuw nsw i64 %storemerge3.i.i.us, 1, !dbg !159693 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.cv, 64, !dbg !159653
  br i1 %exitcond.not.i.i.us, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, label %bb.a, !dbg !159653

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us: ; preds = %bb.a
  %i.cw = add i64 %.sroa.023.0223.us, 64, !dbg !159696
  %i.cx = add i64 %.sroa.044.0224.us, -1, !dbg !159700 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159701, !noalias !159674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159705
  %.not.us = icmp eq i64 %i.cx, 0, !dbg !159636
  br i1 %.not.us, label %._crit_edge226, label %.lr.ph225.split.us, !dbg !159636

._crit_edge226:                                   ; preds = %._crit_edge220, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit.us, %.split221
  ret void, !dbg !159706

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.preheader, %._crit_edge220
  %.sroa.044.0224 = phi i64 [ %i.dc, %._crit_edge220 ], [ %.sroa.05.0.i.i, %.lr.ph225.split.preheader ]
  %.sroa.023.0223 = phi i64 [ %i.db, %._crit_edge220 ], [ 0, %.lr.ph225.split.preheader ] ; 3 uses
  store i64 %.sroa.023.0223, ptr %i.j, align 8, !dbg !159664
  %i.cy = sub i64 %i.v, %.sroa.023.0223, !dbg !159665
  %.sroa.0.0.i82 = call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 64), !dbg !159666
  store i64 %.sroa.0.0.i82, ptr %i.i, align 8, !dbg !159668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !159669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !159670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !159671
  store ptr %i.i, ptr %i.c, align 8, !dbg !159672
  store ptr %i.aa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !159672
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159672
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !159672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159653, !noalias !159674
  br label %bb.b, !dbg !159653

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9UInt8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159678, !noalias !159679
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159690, !noalias !159674
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159693 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159653
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159653

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !159696
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !159700 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159701, !noalias !159674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159707, !noalias !159709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159704
  br label %.split212, !dbg !159710

.loopexit102:                                     ; preds = %._crit_edge211, %.split212
  %.not77 = icmp eq i64 %i.df, 0, !dbg !159710
  %indvars.iv.next342 = add i64 %indvars.iv341, -32, !dbg !159710
  br i1 %.not77, label %._crit_edge220, label %.split212, !dbg !159710

._crit_edge220:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159705
  %.not = icmp eq i64 %i.dc, 0, !dbg !159636
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !159636

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv341 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next342, %.loopexit102 ] ; 4 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 5 uses
  %umax619 = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !159719
  %umin = call i64 @llvm.umin.i64(i64 %umax619, i64 32), !dbg !159719 ; 3 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !159719
  %umax353 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159719 ; 2 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !159719
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !159723 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159724, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !159724 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159727, !noundef !11 ; 3 uses
  %.not78213 = icmp eq i64 %i.di, 0, !dbg !159729
  br i1 %.not78213, label %.loopexit102, label %.lr.ph216, !dbg !159729

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !159737
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159738
  %i.dk = lshr i64 %i.di, 5, !dbg !159740
  %i.dl = and i64 %i.di, 31, !dbg !159745
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !159746
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !159746
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159746
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %i.do = icmp ne i64 %i.s, %.sroa.026.0218
  %.not228 = icmp eq i64 %i.s, %.sroa.026.0218    ; 2 uses
  %xtraiter620 = and i64 %umin, 1
  %i.dp = icmp ult i64 %indvars.iv341, 2
  %unroll_iter623 = and i64 %umin, 62
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod622 = trunc i64 %umin to i1
  br label %.split, !dbg !159729

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 3 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph216 ], [ %i.ds, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !159747, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159749
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
  %i.dr = add i64 %.sroa.029.0214, 32, !dbg !159751
  %i.ds = add i64 %.sroa.046.0215, -1, !dbg !159755 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0214, !dbg !159747
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !159756 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159758
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159760
  %.not230 = icmp eq i64 %i.dq, %.sroa.029.0214, !dbg !159761
  br i1 %.not230, label %._crit_edge181, label %.lr.ph180, !dbg !159763

.lr.ph180:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0214          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !159763
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !159763
  %umax325 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !159763 ; 2 uses
  br label %bb.c, !dbg !159763

._crit_edge181:                                   ; preds = %bb.u, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159772
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159773
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0214
  %or.cond227 = and i1 %i.do, %i.dz, !dbg !159774
  br i1 %or.cond227, label %.lr.ph184.preheader, label %.loopexit100, !dbg !159774

.lr.ph184.preheader:                              ; preds = %._crit_edge181
  %i.ea = add i64 %i.dq, %indvars.iv, !dbg !159781 ; 2 uses
  %i.eb = call i64 @llvm.umax.i64(i64 %i.ea, i64 1), !dbg !159781
  %umax347 = call i64 @llvm.umin.i64(i64 %i.eb, i64 32), !dbg !159781 ; 3 uses
  %xtraiter = and i64 %umax347, 1
  %i.ec = icmp ult i64 %i.ea, 2
  %unroll_iter = and i64 %umax347, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod618 = trunc i64 %umax347 to i1
  br label %.lr.ph184, !dbg !159781

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.ed, %bb.u ] ; 5 uses
  %i.ed = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !159789 ; 2 uses
  %i.ee = add nuw i64 %i.dv, %.sroa.032.0179, !dbg !159795 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dw, !dbg !159797
  br i1 %i.ef, label %bb.d, label %bb.e, !dbg !159797

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.lr.ph184.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !159781

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.lr.ph184
  %.sroa.036.0182.epil.init = phi i64 [ 0, %.lr.ph184 ], [ %i.fk, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod618), !dbg !159781
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182.epil.init, !dbg !159804 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !159804
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !159804, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182.epil.init, !dbg !159806
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !159806, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0185, !dbg !159806 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !159807
  call void @llvm.assume(i1 %i.em), !dbg !159812
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !159804, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !159813
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !159814, !noundef !11
  %gep469.epil = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182.epil.init, !dbg !159815
  store i8 %i.ep, ptr %gep469.epil, align 1, !dbg !159815
  br label %..loopexit99_crit_edge, !dbg !159816

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %exitcond351.not = icmp eq i64 %i.eq, %umax353, !dbg !159816
  br i1 %exitcond351.not, label %.loopexit100, label %.lr.ph184, !dbg !159774

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %..loopexit99_crit_edge
  %.sroa.034.0185 = phi i64 [ %i.eq, %..loopexit99_crit_edge ], [ 0, %.lr.ph184.preheader ] ; 5 uses
  %i.eq = add nuw nsw i64 %.sroa.034.0185, 1, !dbg !159819 ; 2 uses
  %i.er = shl nuw nsw i64 %.sroa.034.0185, 5, !dbg !159825
  %invariant.gep468 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.er, !dbg !159781 ; 3 uses
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph184.new, !dbg !159781

.loopexit100:                                     ; preds = %.loopexit, %..loopexit99_crit_edge, %._crit_edge181
  br i1 %.not228, label %._crit_edge211, label %.lr.ph210.preheader.preheader, !dbg !159826

.lr.ph210.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.dp, label %.lr.ph210.preheader.epil.preheader, label %.lr.ph210.preheader, !dbg !159826

.lr.ph184.new:                                    ; preds = %.lr.ph184, %.lr.ph184.new
  %.sroa.036.0182 = phi i64 [ %i.fk, %.lr.ph184.new ], [ 0, %.lr.ph184 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph184.new ], [ 0, %.lr.ph184 ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182, !dbg !159804 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !159804
  %i.eu = load i64, ptr %i.et, align 8, !dbg !159804, !noundef !11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182, !dbg !159806
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !159806, !noundef !11
  %i.ex = add i64 %i.ew, %.sroa.034.0185, !dbg !159806 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu, !dbg !159807
  call void @llvm.assume(i1 %i.ey), !dbg !159812
  %i.ez = or disjoint i64 %.sroa.036.0182, 1, !dbg !159832 ; 3 uses
  %i.fa = load ptr, ptr %i.es, align 8, !dbg !159804, !nonnull !11, !noundef !11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex, !dbg !159813
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !159814, !noundef !11
  %gep469 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182, !dbg !159815
  store i8 %i.fc, ptr %gep469, align 1, !dbg !159815
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ez, !dbg !159804 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !159804
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !159804, !noundef !11
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ez, !dbg !159806
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !159806, !noundef !11
  %i.fi = add i64 %i.fh, %.sroa.034.0185, !dbg !159806 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ff, !dbg !159807
  call void @llvm.assume(i1 %i.fj), !dbg !159812
  %i.fk = add nuw nsw i64 %.sroa.036.0182, 2, !dbg !159832 ; 2 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !dbg !159804, !nonnull !11, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi, !dbg !159813
  %i.fn = load i8, ptr %i.fm, align 1, !dbg !159814, !noundef !11
  %gep469.1 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %i.ez, !dbg !159815
  store i8 %i.fn, ptr %gep469.1, align 1, !dbg !159815
  %niter.next.1 = add i64 %niter, 2, !dbg !159781 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159781
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.lr.ph184.new, !dbg !159781

bb.d:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.af, align 8, !dbg !159838, !nonnull !11, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.ee, !dbg !159851 ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0214, !dbg !159852 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 64, !dbg !159854
  br i1 %i.fr, label %bb.f, label %bb.h, !dbg !159854

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159797
  unreachable, !dbg !159797

bb.f:                                             ; preds = %bb.d
end_hunk_10
