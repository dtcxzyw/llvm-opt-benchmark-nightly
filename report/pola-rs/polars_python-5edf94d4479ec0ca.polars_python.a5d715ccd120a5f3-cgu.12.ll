Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153203, !noalias !153227
  br label %bb.b, !dbg !153203

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !153231, !noalias !153232
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !153235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153244, !noalias !153227
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !153253 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !153203
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !153203

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !153256
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !153260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153261, !noalias !153227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !153267, !noalias !153271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !153220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153264
  br label %.split213, !dbg !153272

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !153272
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !153272
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !153272

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153265
  %.not = icmp eq i64 %i.dc, 0, !dbg !153174
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !153174

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153281
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !153281 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !153281
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !153285 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !153286, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !153286 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !153289, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !153291
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !153291

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !153299
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !153300
  %i.dk = lshr i64 %i.di, 5, !dbg !153302
  %i.dl = and i64 %i.di, 31, !dbg !153307
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !153308
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !153308
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !153308
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !153291

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !153309, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !153311
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !153313
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !153317 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !153309
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !153318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !153320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !153322
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !153323
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !153325

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !153325
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !153325
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !153325 ; 2 uses
  br label %bb.c, !dbg !153325

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !153335
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !153335

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !153342 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !153348 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !153350
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !153350

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !153357 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !153357
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !153357 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !153357

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !153357

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !153357
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !153365 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !153365
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !153365, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !153367
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !153367, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !153367 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !153368
  call void @llvm.assume(i1 %i.em), !dbg !153373
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !153365, !nonnull !11, !align !153374, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !153375
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !153376, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !153377
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !153377
  br label %..loopexit101_crit_edge, !dbg !153378

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !153378 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !153384
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !153335

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !153357 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !153357

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !153387

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !153387

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !153365 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !153365
  %i.et = load i64, ptr %i.es, align 8, !dbg !153365, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !153367
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !153367, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !153367 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !153368
  call void @llvm.assume(i1 %i.ex), !dbg !153373
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !153393 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !153365, !nonnull !11, !align !153374, !noundef !11
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.ew, !dbg !153375
  %i.fb = load i16, ptr %i.fa, align 2, !dbg !153376, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !153377
  store i16 %i.fb, ptr %gep472, align 2, !dbg !153377
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !153365 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !153365
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !153365, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !153367
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !153367, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !153367 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !153368
  call void @llvm.assume(i1 %i.fi), !dbg !153373
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !153393 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !153365, !nonnull !11, !align !153374, !noundef !11
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fh, !dbg !153375
  %i.fm = load i16, ptr %i.fl, align 2, !dbg !153376, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !153377
  store i16 %i.fm, ptr %gep472.1, align 2, !dbg !153377
  %niter.next.1 = add i64 %niter, 2, !dbg !153357 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !153357
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !153357

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !153399, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !153412 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !153413 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !153415
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !153415

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !153350
  unreachable, !dbg !153350

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !153416 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !153417
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !153417

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !153417  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !153419
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !153419

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !153428, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !153446
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !153447
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !153447, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !153448 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !153417
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !153417

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !153449  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !153419
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !153419

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !153415
  unreachable, !dbg !153415

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !153448
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !153449
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !153449
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !153450
  br label %bb.i, !dbg !153417

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !153451
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !153452
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !153452

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !153449      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !153419
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !153419, !llvm.loop !153453

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !153455

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !153461, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !153462
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !153462, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !153468
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !153468

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !153472
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !153455

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !153475 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !153481 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !153483
  br label %bb.k, !dbg !153483

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !153387

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !153387
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !153491
  %i.gp = mul i64 %i.go, %i.v, !dbg !153493
  %i.gq = load i64, ptr %i.j, align 8, !dbg !153493, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 6, !dbg !153495
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !153495
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !153507, !noundef !11
  %i.gt = getelementptr [2 x i8], ptr %i.gs, i64 %i.gp, !dbg !153511
  %i.gu = getelementptr [2 x i8], ptr %i.gt, i64 %i.gq, !dbg !153511
  %i.gv = getelementptr [2 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !153511
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gv, ptr nonnull align 2 %i.gr, i64 %i.eq, i1 false), !dbg !153514
  br label %._crit_edge212, !dbg !153517

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !153517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !153518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !153519
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !153291
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !153291
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !153291

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !153491
  %i.gx = mul i64 %i.gw, %i.v, !dbg !153493
  %i.gy = load i64, ptr %i.j, align 8, !dbg !153493, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !153520 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 6, !dbg !153495
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !153495
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !153507, !noundef !11
  %i.hc = getelementptr [2 x i8], ptr %i.hb, i64 %i.gx, !dbg !153511
  %i.hd = getelementptr [2 x i8], ptr %i.hc, i64 %i.gy, !dbg !153511
  %i.he = getelementptr [2 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !153511
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.he, ptr nonnull align 2 %i.ha, i64 %i.eq, i1 false), !dbg !153514
  %i.hf = add i64 %i.gz, %i.dh, !dbg !153491
  %i.hg = mul i64 %i.hf, %i.v, !dbg !153493
  %i.hh = load i64, ptr %i.j, align 8, !dbg !153493, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !153520 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 6, !dbg !153495
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !153495
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !153507, !noundef !11
  %i.hl = getelementptr [2 x i8], ptr %i.hk, i64 %i.hg, !dbg !153511
  %i.hm = getelementptr [2 x i8], ptr %i.hl, i64 %i.hh, !dbg !153511
  %i.hn = getelementptr [2 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !153511
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hn, ptr nonnull align 2 %i.hj, i64 %i.eq, i1 false), !dbg !153514
  %niter628.next.1 = add i64 %niter628, 2, !dbg !153387 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !153387
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !153387

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !153526 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !153532 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !153534
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !153534

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !153540 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !153541 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !153859, !noalias !153880
  br label %bb.b, !dbg !153859

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !153884, !noalias !153885
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !153888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153896, !noalias !153880
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !153905 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !153859
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !153859

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !153908
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !153912 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153913, !noalias !153880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !153919, !noalias !153921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !153914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !153876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153916
  br label %.split213, !dbg !153922

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !153922
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !153922
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !153922

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153917
  %.not = icmp eq i64 %i.dc, 0, !dbg !153842
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !153842

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !153931
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !153931 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !153931
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !153935 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !153936, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !153936 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !153939, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !153941
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !153941

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !153949
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !153950
  %i.dk = lshr i64 %i.di, 5, !dbg !153952
  %i.dl = and i64 %i.di, 31, !dbg !153957
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !153958
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !153958
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !153958
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !153941

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !153959, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !153961
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !153963
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !153967 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !153959
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !153968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !153970
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !153972
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !153973
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !153975

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !153975
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !153975
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !153975 ; 2 uses
  br label %bb.c, !dbg !153975

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !153985
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !153985

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !153992 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !153998 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !154000
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !154000

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !154007 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !154007
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !154007 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !154007

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !154007

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !154007
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !154015 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !154015
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !154015, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !154017
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !154017, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !154017 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !154018
  call void @llvm.assume(i1 %i.em), !dbg !154023
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !154015, !nonnull !11, !align !154024, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !154025
  %i.ep = load i32, ptr %i.eo, align 4, !dbg !154026, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !154027
  store i32 %i.ep, ptr %gep472.epil, align 4, !dbg !154027
  br label %..loopexit101_crit_edge, !dbg !154028

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !154028 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !154034
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !153985

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !154007 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !154007

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !154037

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !154037

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !154015 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !154015
  %i.et = load i64, ptr %i.es, align 8, !dbg !154015, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !154017
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !154017, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !154017 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !154018
  call void @llvm.assume(i1 %i.ex), !dbg !154023
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !154043 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !154015, !nonnull !11, !align !154024, !noundef !11
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew, !dbg !154025
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !154026, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !154027
  store i32 %i.fb, ptr %gep472, align 4, !dbg !154027
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !154015 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !154015
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !154015, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !154017
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !154017, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !154017 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !154018
  call void @llvm.assume(i1 %i.fi), !dbg !154023
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !154043 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !154015, !nonnull !11, !align !154024, !noundef !11
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh, !dbg !154025
  %i.fm = load i32, ptr %i.fl, align 4, !dbg !154026, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !154027
  store i32 %i.fm, ptr %gep472.1, align 4, !dbg !154027
  %niter.next.1 = add i64 %niter, 2, !dbg !154007 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !154007
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !154007

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !154049, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !154062 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !154063 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !154065
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !154065

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !154000
  unreachable, !dbg !154000

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !154066 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !154067
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !154067

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !154067  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !154069
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !154069

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !154078, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !154096
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !154097
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !154097, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !154098 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !154067
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !154067

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !154099  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !154069
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !154069

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !154065
  unreachable, !dbg !154065

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !154098
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !154099
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !154099
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !154100
  br label %bb.i, !dbg !154067

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !154101
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !154102
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !154102

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !154099      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !154069
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !154069, !llvm.loop !154103

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !153984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !154104

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !154110, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !154111
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !154111, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !154117
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !154117

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !154121
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !154104

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !154124 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !154130 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !154132
  br label %bb.k, !dbg !154132

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !154037

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !154037
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !154140
  %i.gp = mul i64 %i.go, %i.v, !dbg !154142
  %i.gq = load i64, ptr %i.j, align 8, !dbg !154142, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 7, !dbg !154144
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !154144
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !154156, !noundef !11
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %i.gp, !dbg !154160
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.gq, !dbg !154160
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !154160
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gv, ptr nonnull align 4 %i.gr, i64 %i.eq, i1 false), !dbg !154163
  br label %._crit_edge212, !dbg !154166

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !154166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !154167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !154168
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !153941
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !153941
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !153941

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !154140
  %i.gx = mul i64 %i.gw, %i.v, !dbg !154142
  %i.gy = load i64, ptr %i.j, align 8, !dbg !154142, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !154169 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 7, !dbg !154144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !154144
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !154156, !noundef !11
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.gx, !dbg !154160
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gy, !dbg !154160
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !154160
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.he, ptr nonnull align 4 %i.ha, i64 %i.eq, i1 false), !dbg !154163
  %i.hf = add i64 %i.gz, %i.dh, !dbg !154140
  %i.hg = mul i64 %i.hf, %i.v, !dbg !154142
  %i.hh = load i64, ptr %i.j, align 8, !dbg !154142, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !154169 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 7, !dbg !154144
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !154144
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !154156, !noundef !11
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.hg, !dbg !154160
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.hh, !dbg !154160
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !154160
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hn, ptr nonnull align 4 %i.hj, i64 %i.eq, i1 false), !dbg !154163
  %niter628.next.1 = add i64 %niter628, 2, !dbg !154037 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !154037
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !154037

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !154175 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !154181 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !154183
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !154183

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !154189 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !154190 ; 3 uses
end_hunk_1
begin_hunk_2_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !154508, !noalias !154529
  br label %bb.b, !dbg !154508

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes10UInt64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !154533, !noalias !154534
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !154537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !154545, !noalias !154529
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !154554 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !154508
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !154508

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !154557
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !154561 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !154562, !noalias !154529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !154568, !noalias !154570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !154563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !154564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !154525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !154565
  br label %.split213, !dbg !154571

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !154571
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !154571
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !154571

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !154566
  %.not = icmp eq i64 %i.dc, 0, !dbg !154491
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !154491

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !154580
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !154580 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !154580
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !154584 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !154585, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !154585 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !154588, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !154590
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !154590

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !154598
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !154599
  %i.dk = lshr i64 %i.di, 5, !dbg !154601
  %i.dl = and i64 %i.di, 31, !dbg !154606
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !154607
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !154607
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !154607
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !154590

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !154608, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !154610
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !154612
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !154616 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !154608
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !154617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !154619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !154621
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !154622
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !154624

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !154624
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !154624
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !154624 ; 2 uses
  br label %bb.c, !dbg !154624

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !154633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !154634
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !154634

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !154641 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !154647 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !154649
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !154649

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !154656 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !154656
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !154656 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !154656

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !154656

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !154656
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !154664 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !154664
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !154664, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !154666
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !154666, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !154666 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !154667
  call void @llvm.assume(i1 %i.em), !dbg !154672
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !154664, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !154673
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !154674, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !154675
  store i64 %i.ep, ptr %gep472.epil, align 8, !dbg !154675
  br label %..loopexit101_crit_edge, !dbg !154676

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !154676 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !154682
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !154634

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !154656 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !154656

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !154685

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !154685

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !154664 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !154664
  %i.et = load i64, ptr %i.es, align 8, !dbg !154664, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !154666
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !154666, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !154666 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !154667
  call void @llvm.assume(i1 %i.ex), !dbg !154672
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !154691 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !154664, !nonnull !11, !align !2013, !noundef !11
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew, !dbg !154673
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !154674, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !154675
  store i64 %i.fb, ptr %gep472, align 8, !dbg !154675
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !154664 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !154664
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !154664, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !154666
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !154666, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !154666 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !154667
  call void @llvm.assume(i1 %i.fi), !dbg !154672
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !154691 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !154664, !nonnull !11, !align !2013, !noundef !11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fh, !dbg !154673
  %i.fm = load i64, ptr %i.fl, align 8, !dbg !154674, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !154675
  store i64 %i.fm, ptr %gep472.1, align 8, !dbg !154675
  %niter.next.1 = add i64 %niter, 2, !dbg !154656 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !154656
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !154656

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !154697, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !154710 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !154711 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !154713
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !154713

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !154649
  unreachable, !dbg !154649

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !154714 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !154715
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !154715

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !154715  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !154717
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !154717

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !154726, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !154744
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !154745
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !154745, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !154746 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !154715
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !154715

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !154747  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !154717
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !154717

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !154713
  unreachable, !dbg !154713

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !154746
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !154747
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !154747
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !154748
  br label %bb.i, !dbg !154715

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !154749
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !154750
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !154750

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !154747      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !154717
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !154717, !llvm.loop !154751

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !154633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !154752

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !154758, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !154759
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !154759, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !154765
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !154765

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !154769
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !154752

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !154772 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !154778 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !154780
  br label %bb.k, !dbg !154780

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !154685

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !154685
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !154788
  %i.gp = mul i64 %i.go, %i.v, !dbg !154790
  %i.gq = load i64, ptr %i.j, align 8, !dbg !154790, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 8, !dbg !154792
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !154792
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !154804, !noundef !11
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %i.gp, !dbg !154808
  %i.gu = getelementptr [8 x i8], ptr %i.gt, i64 %i.gq, !dbg !154808
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !154808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gv, ptr nonnull align 8 %i.gr, i64 %i.eq, i1 false), !dbg !154811
  br label %._crit_edge212, !dbg !154814

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !154814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !154815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !154816
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !154590
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !154590
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !154590

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !154788
  %i.gx = mul i64 %i.gw, %i.v, !dbg !154790
  %i.gy = load i64, ptr %i.j, align 8, !dbg !154790, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !154817 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 8, !dbg !154792
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !154792
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !154804, !noundef !11
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.gx, !dbg !154808
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.gy, !dbg !154808
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !154808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.he, ptr nonnull align 8 %i.ha, i64 %i.eq, i1 false), !dbg !154811
  %i.hf = add i64 %i.gz, %i.dh, !dbg !154788
  %i.hg = mul i64 %i.hf, %i.v, !dbg !154790
  %i.hh = load i64, ptr %i.j, align 8, !dbg !154790, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !154817 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 8, !dbg !154792
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !154792
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !154804, !noundef !11
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hg, !dbg !154808
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.hh, !dbg !154808
  %i.hn = getelementptr [8 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !154808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hn, ptr nonnull align 8 %i.hj, i64 %i.eq, i1 false), !dbg !154811
  %niter628.next.1 = add i64 %niter628, 2, !dbg !154685 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !154685
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !154685

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !154823 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !154829 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !154831
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !154831

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !154837 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !154838 ; 3 uses
end_hunk_2
begin_hunk_3_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155156, !noalias !155177
  br label %bb.b, !dbg !155156

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155181, !noalias !155182
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155193, !noalias !155177
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !155202 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155156
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155156

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !155205
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !155209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155210, !noalias !155177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !155216, !noalias !155218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155213
  br label %.split213, !dbg !155219

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !155219
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !155219
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !155219

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155214
  %.not = icmp eq i64 %i.dc, 0, !dbg !155139
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !155139

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155228
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !155228 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !155228
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !155232 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !155233, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !155233 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !155236, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !155238
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !155238

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !155246
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !155247
  %i.dk = lshr i64 %i.di, 5, !dbg !155249
  %i.dl = and i64 %i.di, 31, !dbg !155254
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !155255
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !155255
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !155255
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !155238

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !155256, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !155258
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !155260
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !155264 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !155256
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !155265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !155267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !155269
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !155270
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !155272

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !155272
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !155272
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !155272 ; 2 uses
  br label %bb.c, !dbg !155272

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !155282
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !155282

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !155289 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !155295 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !155297
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !155297

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !155304 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !155304
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !155304 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !155304

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !155304

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !155304
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !155312 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !155312
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !155312, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !155314
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !155314, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !155314 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !155315
  call void @llvm.assume(i1 %i.em), !dbg !155320
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !155312, !nonnull !11, !align !153374, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !155321
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !155322, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !155323
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !155323
  br label %..loopexit101_crit_edge, !dbg !155324

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !155324 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !155330
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !155282

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !155304 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !155304

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !155333

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !155333

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !155312 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !155312
  %i.et = load i64, ptr %i.es, align 8, !dbg !155312, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !155314
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !155314, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !155314 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !155315
  call void @llvm.assume(i1 %i.ex), !dbg !155320
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !155339 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !155312, !nonnull !11, !align !153374, !noundef !11
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.ew, !dbg !155321
  %i.fb = load i16, ptr %i.fa, align 2, !dbg !155322, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !155323
  store i16 %i.fb, ptr %gep472, align 2, !dbg !155323
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !155312 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !155312
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !155312, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !155314
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !155314, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !155314 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !155315
  call void @llvm.assume(i1 %i.fi), !dbg !155320
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !155339 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !155312, !nonnull !11, !align !153374, !noundef !11
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fh, !dbg !155321
  %i.fm = load i16, ptr %i.fl, align 2, !dbg !155322, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !155323
  store i16 %i.fm, ptr %gep472.1, align 2, !dbg !155323
  %niter.next.1 = add i64 %niter, 2, !dbg !155304 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !155304
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !155304

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !155345, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !155358 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !155359 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !155361
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !155361

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !155297
  unreachable, !dbg !155297

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !155362 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !155363
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !155363

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !155363  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !155365
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !155365

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !155374, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !155392
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !155393
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !155393, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !155394 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !155363
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !155363

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !155395  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !155365
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !155365

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !155361
  unreachable, !dbg !155361

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !155394
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !155395
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !155395
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !155396
  br label %bb.i, !dbg !155363

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !155397
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !155398
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !155398

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !155395      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !155365
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !155365, !llvm.loop !155399

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !155400

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !155406, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !155407
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !155407, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !155413
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !155413

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !155417
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !155400

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !155420 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !155426 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !155428
  br label %bb.k, !dbg !155428

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !155333

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !155333
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !155436
  %i.gp = mul i64 %i.go, %i.v, !dbg !155438
  %i.gq = load i64, ptr %i.j, align 8, !dbg !155438, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 6, !dbg !155440
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !155440
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !155452, !noundef !11
  %i.gt = getelementptr [2 x i8], ptr %i.gs, i64 %i.gp, !dbg !155456
  %i.gu = getelementptr [2 x i8], ptr %i.gt, i64 %i.gq, !dbg !155456
  %i.gv = getelementptr [2 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !155456
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gv, ptr nonnull align 2 %i.gr, i64 %i.eq, i1 false), !dbg !155459
  br label %._crit_edge212, !dbg !155462

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !155462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !155463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !155464
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !155238
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !155238
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !155238

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !155436
  %i.gx = mul i64 %i.gw, %i.v, !dbg !155438
  %i.gy = load i64, ptr %i.j, align 8, !dbg !155438, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !155465 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 6, !dbg !155440
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !155440
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !155452, !noundef !11
  %i.hc = getelementptr [2 x i8], ptr %i.hb, i64 %i.gx, !dbg !155456
  %i.hd = getelementptr [2 x i8], ptr %i.hc, i64 %i.gy, !dbg !155456
  %i.he = getelementptr [2 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !155456
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.he, ptr nonnull align 2 %i.ha, i64 %i.eq, i1 false), !dbg !155459
  %i.hf = add i64 %i.gz, %i.dh, !dbg !155436
  %i.hg = mul i64 %i.hf, %i.v, !dbg !155438
  %i.hh = load i64, ptr %i.j, align 8, !dbg !155438, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !155465 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 6, !dbg !155440
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !155440
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !155452, !noundef !11
  %i.hl = getelementptr [2 x i8], ptr %i.hk, i64 %i.hg, !dbg !155456
  %i.hm = getelementptr [2 x i8], ptr %i.hl, i64 %i.hh, !dbg !155456
  %i.hn = getelementptr [2 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !155456
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hn, ptr nonnull align 2 %i.hj, i64 %i.eq, i1 false), !dbg !155459
  %niter628.next.1 = add i64 %niter628, 2, !dbg !155333 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !155333
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !155333

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !155471 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !155477 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !155479
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !155479

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !155485 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !155486 ; 3 uses
end_hunk_3
begin_hunk_4_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155804, !noalias !155825
  br label %bb.b, !dbg !155804

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !155829, !noalias !155830
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !155833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !155841, !noalias !155825
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !155850 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !155804
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !155804

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !155853
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !155857 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155858, !noalias !155825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !155864, !noalias !155866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !155821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !155861
  br label %.split213, !dbg !155867

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !155867
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !155867
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !155867

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !155862
  %.not = icmp eq i64 %i.dc, 0, !dbg !155787
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !155787

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !155876
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !155876 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !155876
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !155880 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !155881, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !155881 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !155884, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !155886
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !155886

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !155894
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !155895
  %i.dk = lshr i64 %i.di, 5, !dbg !155897
  %i.dl = and i64 %i.di, 31, !dbg !155902
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !155903
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !155903
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !155903
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !155886

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !155904, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !155906
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !155908
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !155912 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !155904
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !155913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !155915
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !155917
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !155918
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !155920

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !155920
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !155920
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !155920 ; 2 uses
  br label %bb.c, !dbg !155920

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !155930
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !155930

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !155937 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !155943 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !155945
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !155945

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !155952 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !155952
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !155952 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !155952

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !155952

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !155952
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !155960 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !155960
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !155960, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !155962
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !155962, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !155962 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !155963
  call void @llvm.assume(i1 %i.em), !dbg !155968
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !155960, !nonnull !11, !align !154024, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !155969
  %i.ep = load float, ptr %i.eo, align 4, !dbg !155970, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !155971
  store float %i.ep, ptr %gep472.epil, align 4, !dbg !155971
  br label %..loopexit101_crit_edge, !dbg !155972

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !155972 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !155978
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !155930

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !155952 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !155952

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !155981

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !155981

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !155960 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !155960
  %i.et = load i64, ptr %i.es, align 8, !dbg !155960, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !155962
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !155962, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !155962 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !155963
  call void @llvm.assume(i1 %i.ex), !dbg !155968
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !155987 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !155960, !nonnull !11, !align !154024, !noundef !11
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew, !dbg !155969
  %i.fb = load float, ptr %i.fa, align 4, !dbg !155970, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !155971
  store float %i.fb, ptr %gep472, align 4, !dbg !155971
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !155960 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !155960
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !155960, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !155962
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !155962, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !155962 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !155963
  call void @llvm.assume(i1 %i.fi), !dbg !155968
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !155987 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !155960, !nonnull !11, !align !154024, !noundef !11
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh, !dbg !155969
  %i.fm = load float, ptr %i.fl, align 4, !dbg !155970, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !155971
  store float %i.fm, ptr %gep472.1, align 4, !dbg !155971
  %niter.next.1 = add i64 %niter, 2, !dbg !155952 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !155952
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !155952

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !155993, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !156006 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !156007 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !156009
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !156009

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !155945
  unreachable, !dbg !155945

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !156010 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !156011
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !156011

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !156011  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !156013
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !156013

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !156022, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !156040
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !156041
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !156041, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !156042 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !156011
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !156011

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !156043  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !156013
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !156013

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !156009
  unreachable, !dbg !156009

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !156042
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !156043
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !156043
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !156044
  br label %bb.i, !dbg !156011

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !156045
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !156046
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !156046

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !156043      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !156013
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !156013, !llvm.loop !156047

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !155929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !156048

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !156054, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !156055
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !156055, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !156061
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !156061

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !156065
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !156048

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !156068 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !156074 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !156076
  br label %bb.k, !dbg !156076

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !155981

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !155981
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !156084
  %i.gp = mul i64 %i.go, %i.v, !dbg !156086
  %i.gq = load i64, ptr %i.j, align 8, !dbg !156086, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 7, !dbg !156088
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !156088
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !156100, !noundef !11
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %i.gp, !dbg !156104
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.gq, !dbg !156104
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !156104
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gv, ptr nonnull align 4 %i.gr, i64 %i.eq, i1 false), !dbg !156107
  br label %._crit_edge212, !dbg !156110

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !156110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !156111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !156112
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !155886
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !155886
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !155886

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !156084
  %i.gx = mul i64 %i.gw, %i.v, !dbg !156086
  %i.gy = load i64, ptr %i.j, align 8, !dbg !156086, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !156113 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 7, !dbg !156088
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !156088
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !156100, !noundef !11
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.gx, !dbg !156104
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gy, !dbg !156104
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !156104
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.he, ptr nonnull align 4 %i.ha, i64 %i.eq, i1 false), !dbg !156107
  %i.hf = add i64 %i.gz, %i.dh, !dbg !156084
  %i.hg = mul i64 %i.hf, %i.v, !dbg !156086
  %i.hh = load i64, ptr %i.j, align 8, !dbg !156086, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !156113 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 7, !dbg !156088
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !156088
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !156100, !noundef !11
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.hg, !dbg !156104
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.hh, !dbg !156104
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !156104
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hn, ptr nonnull align 4 %i.hj, i64 %i.eq, i1 false), !dbg !156107
  %niter628.next.1 = add i64 %niter628, 2, !dbg !155981 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !155981
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !155981

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !156119 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !156125 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !156127
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !156127

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !156133 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !156134 ; 3 uses
end_hunk_4
begin_hunk_5_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156452, !noalias !156473
  br label %bb.b, !dbg !156452

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes11Float64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !156477, !noalias !156478
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !156481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !156489, !noalias !156473
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !156498 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !156452
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !156452

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !156501
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !156505 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156506, !noalias !156473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !156512, !noalias !156514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !156508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !156469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !156509
  br label %.split213, !dbg !156515

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !156515
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !156515
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !156515

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !156510
  %.not = icmp eq i64 %i.dc, 0, !dbg !156435
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !156435

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !156524
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !156524 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !156524
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !156528 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !156529, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !156529 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !156532, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !156534
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !156534

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !156542
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !156543
  %i.dk = lshr i64 %i.di, 5, !dbg !156545
  %i.dl = and i64 %i.di, 31, !dbg !156550
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !156551
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !156551
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !156551
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !156534

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !156552, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !156554
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !156556
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !156560 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !156552
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !156561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !156563
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !156565
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !156566
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !156568

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !156568
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !156568
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !156568 ; 2 uses
  br label %bb.c, !dbg !156568

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !156578
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !156578

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !156585 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !156591 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !156593
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !156593

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !156600 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !156600
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !156600 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !156600

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !156600

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !156600
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !156608 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !156608
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !156608, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !156610
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !156610, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !156610 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !156611
  call void @llvm.assume(i1 %i.em), !dbg !156616
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !156608, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !156617
  %i.ep = load double, ptr %i.eo, align 8, !dbg !156618, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !156619
  store double %i.ep, ptr %gep472.epil, align 8, !dbg !156619
  br label %..loopexit101_crit_edge, !dbg !156620

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !156620 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !156626
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !156578

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !156600 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !156600

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !156629

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !156629

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !156608 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !156608
  %i.et = load i64, ptr %i.es, align 8, !dbg !156608, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !156610
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !156610, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !156610 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !156611
  call void @llvm.assume(i1 %i.ex), !dbg !156616
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !156635 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !156608, !nonnull !11, !align !2013, !noundef !11
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew, !dbg !156617
  %i.fb = load double, ptr %i.fa, align 8, !dbg !156618, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !156619
  store double %i.fb, ptr %gep472, align 8, !dbg !156619
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !156608 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !156608
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !156608, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !156610
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !156610, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !156610 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !156611
  call void @llvm.assume(i1 %i.fi), !dbg !156616
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !156635 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !156608, !nonnull !11, !align !2013, !noundef !11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fh, !dbg !156617
  %i.fm = load double, ptr %i.fl, align 8, !dbg !156618, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !156619
  store double %i.fm, ptr %gep472.1, align 8, !dbg !156619
  %niter.next.1 = add i64 %niter, 2, !dbg !156600 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !156600
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !156600

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !156641, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !156654 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !156655 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !156657
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !156657

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !156593
  unreachable, !dbg !156593

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !156658 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !156659
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !156659

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !156659  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !156661
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !156661

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !156670, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !156688
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !156689
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !156689, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !156690 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !156659
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !156659

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !156691  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !156661
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !156661

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !156657
  unreachable, !dbg !156657

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !156690
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !156691
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !156691
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !156692
  br label %bb.i, !dbg !156659

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !156693
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !156694
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !156694

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !156691      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !156661
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !156661, !llvm.loop !156695

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !156696

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !156702, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !156703
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !156703, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !156709
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !156709

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !156713
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !156696

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !156716 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !156722 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !156724
  br label %bb.k, !dbg !156724

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !156629

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !156629
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !156732
  %i.gp = mul i64 %i.go, %i.v, !dbg !156734
  %i.gq = load i64, ptr %i.j, align 8, !dbg !156734, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 8, !dbg !156736
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !156736
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !156748, !noundef !11
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %i.gp, !dbg !156752
  %i.gu = getelementptr [8 x i8], ptr %i.gt, i64 %i.gq, !dbg !156752
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !156752
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gv, ptr nonnull align 8 %i.gr, i64 %i.eq, i1 false), !dbg !156755
  br label %._crit_edge212, !dbg !156758

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !156758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !156759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !156760
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !156534
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !156534
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !156534

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !156732
  %i.gx = mul i64 %i.gw, %i.v, !dbg !156734
  %i.gy = load i64, ptr %i.j, align 8, !dbg !156734, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !156761 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 8, !dbg !156736
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !156736
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !156748, !noundef !11
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.gx, !dbg !156752
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.gy, !dbg !156752
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !156752
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.he, ptr nonnull align 8 %i.ha, i64 %i.eq, i1 false), !dbg !156755
  %i.hf = add i64 %i.gz, %i.dh, !dbg !156732
  %i.hg = mul i64 %i.hf, %i.v, !dbg !156734
  %i.hh = load i64, ptr %i.j, align 8, !dbg !156734, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !156761 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 8, !dbg !156736
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !156736
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !156748, !noundef !11
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hg, !dbg !156752
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.hh, !dbg !156752
  %i.hn = getelementptr [8 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !156752
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hn, ptr nonnull align 8 %i.hj, i64 %i.eq, i1 false), !dbg !156755
  %niter628.next.1 = add i64 %niter628, 2, !dbg !156629 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !156629
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !156629

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !156767 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !156773 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !156775
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !156775

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !156781 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !156782 ; 3 uses
end_hunk_5
begin_hunk_6_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes8Int8TypeEs2_0CseeLknQCOKOd_13polars_python:.split221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157100, !noalias !157121
  br label %bb.b, !dbg !157100

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes8Int8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157125, !noalias !157126
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157137, !noalias !157121
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157146 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157100
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157100

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !157149
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !157153 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157154, !noalias !157121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157160, !noalias !157162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157157
  br label %.split212, !dbg !157163

.loopexit102:                                     ; preds = %._crit_edge211, %.split212
  %.not77 = icmp eq i64 %i.df, 0, !dbg !157163
  %indvars.iv.next342 = add i64 %indvars.iv341, -32, !dbg !157163
  br i1 %.not77, label %._crit_edge220, label %.split212, !dbg !157163

._crit_edge220:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157158
  %.not = icmp eq i64 %i.dc, 0, !dbg !157083
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !157083

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv341 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next342, %.loopexit102 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !157172
  %umax353 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157172 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !157172
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !157176 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157177, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !157177 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157180, !noundef !11 ; 3 uses
  %.not78213 = icmp eq i64 %i.di, 0, !dbg !157182
  br i1 %.not78213, label %.loopexit102, label %.lr.ph216, !dbg !157182

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !157190
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157191
  %i.dk = lshr i64 %i.di, 5, !dbg !157193
  %i.dl = and i64 %i.di, 31, !dbg !157198
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !157199
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !157199
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157199
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %i.do = icmp ne i64 %i.s, %.sroa.026.0218
  %.not228 = icmp eq i64 %i.s, %.sroa.026.0218    ; 2 uses
  %xtraiter620 = and i64 %umax353, 1
  %i.dp = icmp ult i64 %indvars.iv341, 2
  %unroll_iter623 = and i64 %umax353, 62
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod622 = trunc i64 %umax353 to i1
  br label %.split, !dbg !157182

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 3 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph216 ], [ %i.ds, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !157200, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157202
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
  %i.dr = add i64 %.sroa.029.0214, 32, !dbg !157204
  %i.ds = add i64 %.sroa.046.0215, -1, !dbg !157208 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0214, !dbg !157200
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !157209 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157213
  %.not230 = icmp eq i64 %i.dq, %.sroa.029.0214, !dbg !157214
  br i1 %.not230, label %._crit_edge181, label %.lr.ph180, !dbg !157216

.lr.ph180:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0214          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !157216
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !157216
  %umax325 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !157216 ; 2 uses
  br label %bb.c, !dbg !157216

._crit_edge181:                                   ; preds = %bb.u, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !157226
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0214
  %or.cond227 = and i1 %i.do, %i.dz, !dbg !157227
  br i1 %or.cond227, label %.lr.ph184.preheader, label %.loopexit100, !dbg !157227

.lr.ph184.preheader:                              ; preds = %._crit_edge181
  %i.ea = add i64 %i.dq, %indvars.iv, !dbg !157234 ; 2 uses
  %i.eb = call i64 @llvm.umax.i64(i64 %i.ea, i64 1), !dbg !157234
  %umax347 = call i64 @llvm.umin.i64(i64 %i.eb, i64 32), !dbg !157234 ; 3 uses
  %xtraiter = and i64 %umax347, 1
  %i.ec = icmp ult i64 %i.ea, 2
  %unroll_iter = and i64 %umax347, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod618 = trunc i64 %umax347 to i1
  br label %.lr.ph184, !dbg !157234

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.ed, %bb.u ] ; 5 uses
  %i.ed = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !157242 ; 2 uses
  %i.ee = add nuw i64 %i.dv, %.sroa.032.0179, !dbg !157248 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dw, !dbg !157250
  br i1 %i.ef, label %bb.d, label %bb.e, !dbg !157250

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.lr.ph184.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !157234

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.lr.ph184
  %.sroa.036.0182.epil.init = phi i64 [ 0, %.lr.ph184 ], [ %i.fj, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod618), !dbg !157234
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182.epil.init, !dbg !157257 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !157257
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !157257, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182.epil.init, !dbg !157259
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !157259, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0185, !dbg !157259 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !157260
  call void @llvm.assume(i1 %i.em), !dbg !157265
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !157257, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !157266
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !157267, !noundef !11
  %gep469.epil = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182.epil.init, !dbg !157268
  store i8 %i.ep, ptr %gep469.epil, align 1, !dbg !157268
  br label %..loopexit99_crit_edge, !dbg !157269

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0185, 1, !dbg !157269 ; 2 uses
  %exitcond351.not = icmp eq i64 %2, %umax353, !dbg !157275
  br i1 %exitcond351.not, label %.loopexit100, label %.lr.ph184, !dbg !157227

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %..loopexit99_crit_edge
  %.sroa.034.0185 = phi i64 [ %2, %..loopexit99_crit_edge ], [ 0, %.lr.ph184.preheader ] ; 5 uses
  %i.eq = shl nuw nsw i64 %.sroa.034.0185, 5, !dbg !157278
  %invariant.gep468 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eq, !dbg !157234 ; 3 uses
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph184.new, !dbg !157234

.loopexit100:                                     ; preds = %.loopexit, %..loopexit99_crit_edge, %._crit_edge181
  br i1 %.not228, label %._crit_edge211, label %.lr.ph210.preheader.preheader, !dbg !157279

.lr.ph210.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.dp, label %.lr.ph210.preheader.epil.preheader, label %.lr.ph210.preheader, !dbg !157279

.lr.ph184.new:                                    ; preds = %.lr.ph184, %.lr.ph184.new
  %.sroa.036.0182 = phi i64 [ %i.fj, %.lr.ph184.new ], [ 0, %.lr.ph184 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph184.new ], [ 0, %.lr.ph184 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182, !dbg !157257 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !157257
  %i.et = load i64, ptr %i.es, align 8, !dbg !157257, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182, !dbg !157259
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !157259, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0185, !dbg !157259 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !157260
  call void @llvm.assume(i1 %i.ex), !dbg !157265
  %i.ey = or disjoint i64 %.sroa.036.0182, 1, !dbg !157285 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !157257, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew, !dbg !157266
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !157267, !noundef !11
  %gep469 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182, !dbg !157268
  store i8 %i.fb, ptr %gep469, align 1, !dbg !157268
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !157257 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !157257
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !157257, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !157259
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !157259, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0185, !dbg !157259 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !157260
  call void @llvm.assume(i1 %i.fi), !dbg !157265
  %i.fj = add nuw nsw i64 %.sroa.036.0182, 2, !dbg !157285 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !157257, !nonnull !11, !noundef !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fh, !dbg !157266
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !157267, !noundef !11
  %gep469.1 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %i.ey, !dbg !157268
  store i8 %i.fm, ptr %gep469.1, align 1, !dbg !157268
  %niter.next.1 = add i64 %niter, 2, !dbg !157234 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157234
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.lr.ph184.new, !dbg !157234

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !157291, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.ee, !dbg !157304 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0214, !dbg !157305 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !157307
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !157307

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157250
  unreachable, !dbg !157250

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !157308 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not79170 = icmp ult i64 %i.dh, %.promoted, !dbg !157309
  br i1 %.not79170, label %bb.i, label %.lr.ph, !dbg !157309

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted172 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted172, 1, !dbg !157309  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !157311
  br i1 %i.fx, label %bb.g, label %.loopexit317, !dbg !157311

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !157320, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !157338
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !157339
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !157339, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !157340 ; 3 uses
  %.not79.peel = icmp ult i64 %i.dh, %i.gd, !dbg !157309
  br i1 %.not79.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !157309

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted172, 2, !dbg !157341  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !157311
  br i1 %i.gf, label %.lr.ph538, label %.loopexit317, !dbg !157311

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !157307
  unreachable, !dbg !157307

._crit_edge:                                      ; preds = %.lr.ph538, %bb.g
  %.lcssa236 = phi i64 [ %i.gd, %bb.g ], [ %i.kb, %.lr.ph538 ], !dbg !157340
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jx, %.lr.ph538 ]
  %.lcssa233 = phi i64 [ %i.fw, %bb.g ], [ %i.jw, %.lr.ph538 ], !dbg !157341
  store i64 %.lcssa233, ptr %i.fr, align 8, !dbg !157341
  store i64 %.lcssa235, ptr %i.ft, align 8, !dbg !157342
  br label %bb.i, !dbg !157309

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa167 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa167, ptr %i.fs, align 8, !dbg !157343
  %.not80 = icmp ugt i64 %i.dn, %.lcssa167, !dbg !157344
  br i1 %.not80, label %bb.j, label %bb.k, !dbg !157344

.peel.next:                                       ; preds = %.lr.ph538
  %i.gg = add nuw i64 %i.jw, 1, !dbg !157341      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !157311
  br i1 %i.gh, label %.lr.ph538, label %.loopexit317, !dbg !157311, !llvm.loop !157345

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !157226
  br i1 %.not228, label %._crit_edge211, label %.lr.ph207, !dbg !157346

bb.k:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !157352, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !157353
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !157353, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !157359
  br i1 %i.gl, label %bb.u, label %bb.v, !dbg !157359

.loopexit:                                        ; preds = %bb.t
  %exitcond345.not = icmp eq i64 %i.gm, %umax353, !dbg !157363
  br i1 %exitcond345.not, label %.loopexit100, label %.lr.ph207, !dbg !157346

.lr.ph207:                                        ; preds = %bb.j, %.loopexit
  %.sroa.038.0205 = phi i64 [ %i.gm, %.loopexit ], [ 0, %bb.j ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0205, 1, !dbg !157366 ; 2 uses
  %i.gn = add i64 %.sroa.038.0205, %i.dh, !dbg !157372 ; 4 uses
  %i.go = shl nuw nsw i64 %.sroa.038.0205, 5, !dbg !157374
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.go, !dbg !157376
  br label %bb.l, !dbg !157376

._crit_edge211.loopexit.unr-lcssa:                ; preds = %.lr.ph210.preheader
  br i1 %lcmp.mod621.not, label %._crit_edge211, label %.lr.ph210.preheader.epil.preheader, !dbg !157279

.lr.ph210.preheader.epil.preheader:               ; preds = %._crit_edge211.loopexit.unr-lcssa, %.lr.ph210.preheader.preheader
  %.sroa.042.0208.epil.init = phi i64 [ 0, %.lr.ph210.preheader.preheader ], [ %i.hm, %._crit_edge211.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod622), !dbg !157279
  %i.gp = shl nuw nsw i64 %.sroa.042.0208.epil.init, 5, !dbg !157383
  %i.gq = add i64 %.sroa.042.0208.epil.init, %i.dh, !dbg !157387
  %i.gr = mul i64 %i.gq, %i.v, !dbg !157388
  %i.gs = load i64, ptr %i.j, align 8, !dbg !157388, !noundef !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp, !dbg !157389
  %i.gu = load ptr, ptr %i.ah, align 8, !dbg !157400, !noundef !11
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gr, !dbg !157404
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gs, !dbg !157404
  %i.gx = getelementptr i8, ptr %i.gw, i64 %.sroa.029.0214, !dbg !157404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr nonnull align 1 %i.gt, i64 %.sroa.0.0.i88, i1 false), !dbg !157407
  br label %._crit_edge211, !dbg !157410

._crit_edge211:                                   ; preds = %.lr.ph210.preheader.epil.preheader, %._crit_edge211.loopexit.unr-lcssa, %bb.j, %.loopexit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !157410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !157411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !157412
  %.not78 = icmp eq i64 %i.ds, 0, !dbg !157182
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !157182
  br i1 %.not78, label %.loopexit102, label %.split, !dbg !157182

.lr.ph210.preheader:                              ; preds = %.lr.ph210.preheader.preheader, %.lr.ph210.preheader
  %.sroa.042.0208 = phi i64 [ %i.hm, %.lr.ph210.preheader ], [ 0, %.lr.ph210.preheader.preheader ] ; 4 uses
  %niter624 = phi i64 [ %niter624.next.1, %.lr.ph210.preheader ], [ 0, %.lr.ph210.preheader.preheader ]
  %i.gy = shl nuw nsw i64 %.sroa.042.0208, 5, !dbg !157383
  %i.gz = add i64 %.sroa.042.0208, %i.dh, !dbg !157387
  %i.ha = mul i64 %i.gz, %i.v, !dbg !157388
  %i.hb = load i64, ptr %i.j, align 8, !dbg !157388, !noundef !11
  %i.hc = or disjoint i64 %.sroa.042.0208, 1, !dbg !157413 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gy, !dbg !157389
  %i.he = load ptr, ptr %i.ah, align 8, !dbg !157400, !noundef !11
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.ha, !dbg !157404
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.hb, !dbg !157404
  %i.hh = getelementptr i8, ptr %i.hg, i64 %.sroa.029.0214, !dbg !157404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr nonnull align 1 %i.hd, i64 %.sroa.0.0.i88, i1 false), !dbg !157407
  %i.hi = shl nuw nsw i64 %i.hc, 5, !dbg !157383
  %i.hj = add i64 %i.hc, %i.dh, !dbg !157387
  %i.hk = mul i64 %i.hj, %i.v, !dbg !157388
  %i.hl = load i64, ptr %i.j, align 8, !dbg !157388, !noundef !11
  %i.hm = add nuw nsw i64 %.sroa.042.0208, 2, !dbg !157413 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hi, !dbg !157389
  %i.ho = load ptr, ptr %i.ah, align 8, !dbg !157400, !noundef !11
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hk, !dbg !157404
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hl, !dbg !157404
  %i.hr = getelementptr i8, ptr %i.hq, i64 %.sroa.029.0214, !dbg !157404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr nonnull align 1 %i.hn, i64 %.sroa.0.0.i88, i1 false), !dbg !157407
  %niter624.next.1 = add i64 %niter624, 2, !dbg !157279 ; 2 uses
  %niter624.ncmp.1 = icmp eq i64 %niter624.next.1, %unroll_iter623, !dbg !157279
  br i1 %niter624.ncmp.1, label %._crit_edge211.loopexit.unr-lcssa, label %.lr.ph210.preheader, !dbg !157279

bb.l:                                             ; preds = %.lr.ph207, %bb.t
  %.sroa.040.0204 = phi i64 [ 0, %.lr.ph207 ], [ %i.hs, %bb.t ] ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0204, 1, !dbg !157419 ; 2 uses
  %i.ht = add nuw i64 %.sroa.040.0204, %i.dv, !dbg !157425 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, %i.dw, !dbg !157427
  br i1 %i.hu, label %bb.m, label %bb.n, !dbg !157427

bb.m:                                             ; preds = %bb.l
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.ht, !dbg !157433 ; 4 uses
  %i.hw = add nuw nsw i64 %.sroa.040.0204, %.sroa.029.0214, !dbg !157434 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 64, !dbg !157436
end_hunk_6
begin_hunk_7_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int16TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157752, !noalias !157773
  br label %bb.b, !dbg !157752

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int16TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !157777, !noalias !157778
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !157781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !157789, !noalias !157773
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !157798 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !157752
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !157752

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !157801
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !157805 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157806, !noalias !157773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !157812, !noalias !157814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !157769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !157809
  br label %.split213, !dbg !157815

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !157815
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !157815
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !157815

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !157810
  %.not = icmp eq i64 %i.dc, 0, !dbg !157735
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !157735

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !157824
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !157824 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !157824
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !157828 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !157829, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !157829 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !157832, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !157834
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !157834

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !157842
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !157843
  %i.dk = lshr i64 %i.di, 5, !dbg !157845
  %i.dl = and i64 %i.di, 31, !dbg !157850
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !157851
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !157851
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !157851
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !157834

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !157852, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !157854
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !157856
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !157860 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !157852
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !157861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !157863
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !157865
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !157866
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !157868

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !157868
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !157868
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !157868 ; 2 uses
  br label %bb.c, !dbg !157868

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157877
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !157878
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !157878

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !157885 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !157891 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !157893
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !157893

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !157900 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !157900
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !157900 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !157900

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !157900

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !157900
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !157908 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !157908
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !157908, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !157910
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !157910, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !157910 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !157911
  call void @llvm.assume(i1 %i.em), !dbg !157916
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !157908, !nonnull !11, !align !153374, !noundef !11
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.el, !dbg !157917
  %i.ep = load i16, ptr %i.eo, align 2, !dbg !157918, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !157919
  store i16 %i.ep, ptr %gep472.epil, align 2, !dbg !157919
  br label %..loopexit101_crit_edge, !dbg !157920

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !157920 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !157926
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !157878

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 6
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !157900 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !157900

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !157929

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 1       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !157929

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !157908 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !157908
  %i.et = load i64, ptr %i.es, align 8, !dbg !157908, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !157910
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !157910, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !157910 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !157911
  call void @llvm.assume(i1 %i.ex), !dbg !157916
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !157935 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !157908, !nonnull !11, !align !153374, !noundef !11
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.ew, !dbg !157917
  %i.fb = load i16, ptr %i.fa, align 2, !dbg !157918, !noundef !11
  %gep472 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !157919
  store i16 %i.fb, ptr %gep472, align 2, !dbg !157919
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !157908 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !157908
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !157908, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !157910
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !157910, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !157910 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !157911
  call void @llvm.assume(i1 %i.fi), !dbg !157916
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !157935 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !157908, !nonnull !11, !align !153374, !noundef !11
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fh, !dbg !157917
  %i.fm = load i16, ptr %i.fl, align 2, !dbg !157918, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !157919
  store i16 %i.fm, ptr %gep472.1, align 2, !dbg !157919
  %niter.next.1 = add i64 %niter, 2, !dbg !157900 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !157900
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !157900

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !157941, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !157954 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !157955 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !157957
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !157957

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !157893
  unreachable, !dbg !157893

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !157958 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !157959
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !157959

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !157959  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !157961
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !157961

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !157970, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !157988
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !157989
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !157989, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !157990 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !157959
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !157959

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !157991  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !157961
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !157961

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !157957
  unreachable, !dbg !157957

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !157990
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !157991
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !157991
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !157992
  br label %bb.i, !dbg !157959

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !157993
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !157994
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !157994

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !157991      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !157961
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !157961, !llvm.loop !157995

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !157877
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !157996

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !158002, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !158003
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !158003, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !158009
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !158009

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !158013
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !157996

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !158016 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !158022 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !158024
  br label %bb.k, !dbg !158024

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !157929

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !157929
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !158032
  %i.gp = mul i64 %i.go, %i.v, !dbg !158034
  %i.gq = load i64, ptr %i.j, align 8, !dbg !158034, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 6, !dbg !158036
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !158036
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !158048, !noundef !11
  %i.gt = getelementptr [2 x i8], ptr %i.gs, i64 %i.gp, !dbg !158052
  %i.gu = getelementptr [2 x i8], ptr %i.gt, i64 %i.gq, !dbg !158052
  %i.gv = getelementptr [2 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !158052
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gv, ptr nonnull align 2 %i.gr, i64 %i.eq, i1 false), !dbg !158055
  br label %._crit_edge212, !dbg !158058

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !158058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !158059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !158060
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !157834
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !157834
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !157834

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !158032
  %i.gx = mul i64 %i.gw, %i.v, !dbg !158034
  %i.gy = load i64, ptr %i.j, align 8, !dbg !158034, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !158061 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 6, !dbg !158036
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !158036
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !158048, !noundef !11
  %i.hc = getelementptr [2 x i8], ptr %i.hb, i64 %i.gx, !dbg !158052
  %i.hd = getelementptr [2 x i8], ptr %i.hc, i64 %i.gy, !dbg !158052
  %i.he = getelementptr [2 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !158052
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.he, ptr nonnull align 2 %i.ha, i64 %i.eq, i1 false), !dbg !158055
  %i.hf = add i64 %i.gz, %i.dh, !dbg !158032
  %i.hg = mul i64 %i.hf, %i.v, !dbg !158034
  %i.hh = load i64, ptr %i.j, align 8, !dbg !158034, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !158061 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 6, !dbg !158036
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !158036
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !158048, !noundef !11
  %i.hl = getelementptr [2 x i8], ptr %i.hk, i64 %i.hg, !dbg !158052
  %i.hm = getelementptr [2 x i8], ptr %i.hl, i64 %i.hh, !dbg !158052
  %i.hn = getelementptr [2 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !158052
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hn, ptr nonnull align 2 %i.hj, i64 %i.eq, i1 false), !dbg !158055
  %niter628.next.1 = add i64 %niter628, 2, !dbg !157929 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !157929
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !157929

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !158067 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !158073 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !158075
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !158075

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !158081 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !158082 ; 3 uses
end_hunk_7
begin_hunk_8_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int32TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158400, !noalias !158421
  br label %bb.b, !dbg !158400

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int32TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !158425, !noalias !158426
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !158429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !158437, !noalias !158421
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !158446 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !158400
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !158400

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !158449
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !158453 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158454, !noalias !158421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !158460, !noalias !158462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !158417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !158457
  br label %.split213, !dbg !158463

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !158463
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !158463
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !158463

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !158458
  %.not = icmp eq i64 %i.dc, 0, !dbg !158383
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !158383

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !158472
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !158472 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !158472
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !158476 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !158477, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !158477 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !158480, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !158482
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !158482

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !158490
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !158491
  %i.dk = lshr i64 %i.di, 5, !dbg !158493
  %i.dl = and i64 %i.di, 31, !dbg !158498
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !158499
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !158499
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !158499
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !158482

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !158500, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !158502
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !158504
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !158508 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !158500
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !158509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !158511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !158513
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !158514
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !158516

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !158516
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !158516
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !158516 ; 2 uses
  br label %bb.c, !dbg !158516

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !158526
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !158526

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !158533 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !158539 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !158541
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !158541

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !158548 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !158548
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !158548 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !158548

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !158548

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !158548
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !158556 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !158556
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !158556, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !158558
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !158558, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !158558 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !158559
  call void @llvm.assume(i1 %i.em), !dbg !158564
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !158556, !nonnull !11, !align !154024, !noundef !11
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el, !dbg !158565
  %i.ep = load i32, ptr %i.eo, align 4, !dbg !158566, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !158567
  store i32 %i.ep, ptr %gep472.epil, align 4, !dbg !158567
  br label %..loopexit101_crit_edge, !dbg !158568

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !158568 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !158574
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !158526

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 7
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !158548 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !158548

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !158577

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 2       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !158577

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !158556 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !158556
  %i.et = load i64, ptr %i.es, align 8, !dbg !158556, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !158558
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !158558, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !158558 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !158559
  call void @llvm.assume(i1 %i.ex), !dbg !158564
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !158583 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !158556, !nonnull !11, !align !154024, !noundef !11
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew, !dbg !158565
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !158566, !noundef !11
  %gep472 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !158567
  store i32 %i.fb, ptr %gep472, align 4, !dbg !158567
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !158556 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !158556
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !158556, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !158558
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !158558, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !158558 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !158559
  call void @llvm.assume(i1 %i.fi), !dbg !158564
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !158583 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !158556, !nonnull !11, !align !154024, !noundef !11
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh, !dbg !158565
  %i.fm = load i32, ptr %i.fl, align 4, !dbg !158566, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !158567
  store i32 %i.fm, ptr %gep472.1, align 4, !dbg !158567
  %niter.next.1 = add i64 %niter, 2, !dbg !158548 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !158548
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !158548

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !158589, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !158602 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !158603 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !158605
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !158605

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !158541
  unreachable, !dbg !158541

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !158606 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !158607
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !158607

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !158607  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !158609
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !158609

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !158618, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !158636
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !158637
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !158637, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !158638 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !158607
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !158607

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !158639  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !158609
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !158609

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !158605
  unreachable, !dbg !158605

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !158638
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !158639
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !158639
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !158640
  br label %bb.i, !dbg !158607

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !158641
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !158642
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !158642

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !158639      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !158609
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !158609, !llvm.loop !158643

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !158525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !158644

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !158650, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !158651
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !158651, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !158657
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !158657

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !158661
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !158644

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !158664 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !158670 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !158672
  br label %bb.k, !dbg !158672

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !158577

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !158577
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !158680
  %i.gp = mul i64 %i.go, %i.v, !dbg !158682
  %i.gq = load i64, ptr %i.j, align 8, !dbg !158682, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 7, !dbg !158684
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !158684
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !158696, !noundef !11
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %i.gp, !dbg !158700
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.gq, !dbg !158700
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !158700
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gv, ptr nonnull align 4 %i.gr, i64 %i.eq, i1 false), !dbg !158703
  br label %._crit_edge212, !dbg !158706

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !158706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !158707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !158708
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !158482
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !158482
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !158482

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !158680
  %i.gx = mul i64 %i.gw, %i.v, !dbg !158682
  %i.gy = load i64, ptr %i.j, align 8, !dbg !158682, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !158709 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 7, !dbg !158684
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !158684
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !158696, !noundef !11
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.gx, !dbg !158700
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gy, !dbg !158700
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !158700
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.he, ptr nonnull align 4 %i.ha, i64 %i.eq, i1 false), !dbg !158703
  %i.hf = add i64 %i.gz, %i.dh, !dbg !158680
  %i.hg = mul i64 %i.hf, %i.v, !dbg !158682
  %i.hh = load i64, ptr %i.j, align 8, !dbg !158682, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !158709 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 7, !dbg !158684
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !158684
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !158696, !noundef !11
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.hg, !dbg !158700
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.hh, !dbg !158700
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !158700
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hn, ptr nonnull align 4 %i.hj, i64 %i.eq, i1 false), !dbg !158703
  %niter628.next.1 = add i64 %niter628, 2, !dbg !158577 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !158577
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !158577

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !158715 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !158721 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !158723
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !158723

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !158729 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !158730 ; 3 uses
end_hunk_8
begin_hunk_9_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int64TypeEs2_0CseeLknQCOKOd_13polars_python:.split222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159048, !noalias !159069
  br label %bb.b, !dbg !159048

bb.b:                                             ; preds = %bb.b, %.lr.ph226.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph226.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9Int64TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159073, !noalias !159074
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159085, !noalias !159069
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159094 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159048
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159048

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0224, 64, !dbg !159097
  %i.dc = add i64 %.sroa.044.0225, -1, !dbg !159101 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159102, !noalias !159069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159108, !noalias !159110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159105
  br label %.split213, !dbg !159111

.loopexit105:                                     ; preds = %._crit_edge212, %.split213
  %.not79 = icmp eq i64 %i.df, 0, !dbg !159111
  %indvars.iv.next343 = add i64 %indvars.iv342, -32, !dbg !159111
  br i1 %.not79, label %._crit_edge221, label %.split213, !dbg !159111

._crit_edge221:                                   ; preds = %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159106
  %.not = icmp eq i64 %i.dc, 0, !dbg !159031
  br i1 %.not, label %._crit_edge227, label %.lr.ph226.split, !dbg !159031

.split213:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit105
  %indvars.iv342 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next343, %.loopexit105 ] ; 3 uses
  %.sroa.045.0220 = phi i64 [ %.sroa.05.0.i.i86, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit105 ]
  %.sroa.026.0219 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit105 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv342, i64 1), !dbg !159120
  %umax354 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159120 ; 5 uses
  %i.de = add i64 %.sroa.026.0219, 32, !dbg !159120
  %i.df = add i64 %.sroa.045.0220, -1, !dbg !159124 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159125, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0219, !dbg !159125 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159128, !noundef !11 ; 3 uses
  %.not80214 = icmp eq i64 %i.di, 0, !dbg !159130
  br i1 %.not80214, label %.loopexit105, label %.lr.ph217, !dbg !159130

.lr.ph217:                                        ; preds = %.split213
  %i.dj = sub i64 %i.s, %.sroa.026.0219, !dbg !159138
  %.sroa.0.0.i87 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159139
  %i.dk = lshr i64 %i.di, 5, !dbg !159141
  %i.dl = and i64 %i.di, 31, !dbg !159146
  %.not10.i.i88 = icmp ne i64 %i.dl, 0, !dbg !159147
  %i.dm = zext i1 %.not10.i.i88 to i64, !dbg !159147
  %.sroa.05.0.i.i89 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159147
  %i.dn = add i64 %i.dh, %.sroa.0.0.i87
  %i.do = icmp ne i64 %i.s, %.sroa.026.0219
  %.not229 = icmp eq i64 %i.s, %.sroa.026.0219    ; 2 uses
  %xtraiter624 = and i64 %umax354, 1
  %i.dp = icmp ult i64 %indvars.iv342, 2
  %unroll_iter627 = and i64 %umax354, 62
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod626 = trunc i64 %umax354 to i1
  br label %.split, !dbg !159130

.split:                                           ; preds = %.lr.ph217, %._crit_edge212
  %indvars.iv = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next, %._crit_edge212 ] ; 3 uses
  %.sroa.046.0216 = phi i64 [ %.sroa.05.0.i.i89, %.lr.ph217 ], [ %i.ds, %._crit_edge212 ]
  %.sroa.029.0215 = phi i64 [ 0, %.lr.ph217 ], [ %i.dr, %._crit_edge212 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !159148, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159150
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
  %i.dr = add i64 %.sroa.029.0215, 32, !dbg !159152
  %i.ds = add i64 %.sroa.046.0216, -1, !dbg !159156 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0215, !dbg !159148
  %.sroa.0.0.i90 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !159157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159161
  %.not231 = icmp eq i64 %i.dq, %.sroa.029.0215, !dbg !159162
  br i1 %.not231, label %._crit_edge184, label %.lr.ph183, !dbg !159164

.lr.ph183:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0215          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !159164
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !159164
  %umax326 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !159164 ; 2 uses
  br label %bb.c, !dbg !159164

._crit_edge184:                                   ; preds = %bb.t, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0215
  %or.cond228 = and i1 %i.do, %i.dz, !dbg !159174
  br i1 %or.cond228, label %.lr.ph187.preheader, label %.loopexit102, !dbg !159174

bb.c:                                             ; preds = %.lr.ph183, %bb.t
  %.sroa.032.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.ea, %bb.t ] ; 5 uses
  %i.ea = add nuw nsw i64 %.sroa.032.0182, 1, !dbg !159181 ; 2 uses
  %i.eb = add nuw i64 %i.dv, %.sroa.032.0182, !dbg !159187 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.dw, !dbg !159189
  br i1 %i.ec, label %bb.d, label %bb.e, !dbg !159189

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.ed = add i64 %i.dq, %indvars.iv, !dbg !159196 ; 2 uses
  %i.ee = call i64 @llvm.umax.i64(i64 %i.ed, i64 1), !dbg !159196
  %umax348 = call i64 @llvm.umin.i64(i64 %i.ee, i64 32), !dbg !159196 ; 3 uses
  %xtraiter = and i64 %umax348, 1
  %i.ef = icmp ult i64 %i.ed, 2
  %unroll_iter = and i64 %umax348, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod621 = trunc i64 %umax348 to i1
  br label %.lr.ph187, !dbg !159196

..loopexit101_crit_edge.unr-lcssa:                ; preds = %.lr.ph187.new
  br i1 %lcmp.mod.not, label %..loopexit101_crit_edge, label %.epil.preheader, !dbg !159196

.epil.preheader:                                  ; preds = %..loopexit101_crit_edge.unr-lcssa, %.lr.ph187
  %.sroa.036.0185.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %i.fj, %..loopexit101_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod621), !dbg !159196
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185.epil.init, !dbg !159204 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !159204
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !159204, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185.epil.init, !dbg !159206
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !159206, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0188, !dbg !159206 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !159207
  call void @llvm.assume(i1 %i.em), !dbg !159212
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !159204, !nonnull !11, !align !2013, !noundef !11
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el, !dbg !159213
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !159214, !noundef !11
  %gep472.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185.epil.init, !dbg !159215
  store i64 %i.ep, ptr %gep472.epil, align 8, !dbg !159215
  br label %..loopexit101_crit_edge, !dbg !159216

..loopexit101_crit_edge:                          ; preds = %..loopexit101_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0188, 1, !dbg !159216 ; 2 uses
  %exitcond352.not = icmp eq i64 %2, %umax354, !dbg !159222
  br i1 %exitcond352.not, label %.loopexit102, label %.lr.ph187, !dbg !159174

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %..loopexit101_crit_edge
  %.sroa.034.0188 = phi i64 [ %2, %..loopexit101_crit_edge ], [ 0, %.lr.ph187.preheader ] ; 5 uses
  %.idx401 = shl nuw nsw i64 %.sroa.034.0188, 8
  %invariant.gep471 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx401, !dbg !159196 ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph187.new, !dbg !159196

.loopexit102:                                     ; preds = %.loopexit, %..loopexit101_crit_edge, %._crit_edge184
  br i1 %.not229, label %._crit_edge212, label %.lr.ph211, !dbg !159225

.lr.ph211:                                        ; preds = %.loopexit102
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i90, 3       ; 3 uses
  br i1 %i.dp, label %.epil.preheader622, label %.lr.ph211.new, !dbg !159225

.lr.ph187.new:                                    ; preds = %.lr.ph187, %.lr.ph187.new
  %.sroa.036.0185 = phi i64 [ %i.fj, %.lr.ph187.new ], [ 0, %.lr.ph187 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph187.new ], [ 0, %.lr.ph187 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0185, !dbg !159204 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !159204
  %i.et = load i64, ptr %i.es, align 8, !dbg !159204, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0185, !dbg !159206
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !159206, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0188, !dbg !159206 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !159207
  call void @llvm.assume(i1 %i.ex), !dbg !159212
  %i.ey = or disjoint i64 %.sroa.036.0185, 1, !dbg !159231 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !159204, !nonnull !11, !align !2013, !noundef !11
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew, !dbg !159213
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !159214, !noundef !11
  %gep472 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %.sroa.036.0185, !dbg !159215
  store i64 %i.fb, ptr %gep472, align 8, !dbg !159215
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !159204 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !159204
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !159204, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !159206
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !159206, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0188, !dbg !159206 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !159207
  call void @llvm.assume(i1 %i.fi), !dbg !159212
  %i.fj = add nuw nsw i64 %.sroa.036.0185, 2, !dbg !159231 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !159204, !nonnull !11, !align !2013, !noundef !11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fh, !dbg !159213
  %i.fm = load i64, ptr %i.fl, align 8, !dbg !159214, !noundef !11
  %gep472.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep471, i64 %i.ey, !dbg !159215
  store i64 %i.fm, ptr %gep472.1, align 8, !dbg !159215
  %niter.next.1 = add i64 %niter, 2, !dbg !159196 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159196
  br i1 %niter.ncmp.1, label %..loopexit101_crit_edge.unr-lcssa, label %.lr.ph187.new, !dbg !159196

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !159237, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.eb, !dbg !159250 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0182, %.sroa.029.0215, !dbg !159251 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !159253
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !159253

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159189
  unreachable, !dbg !159189

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !159254 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not81173 = icmp ult i64 %i.dh, %.promoted, !dbg !159255
  br i1 %.not81173, label %bb.i, label %.lr.ph, !dbg !159255

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted175 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted175, 1, !dbg !159255  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !159257
  br i1 %i.fx, label %bb.g, label %.loopexit318, !dbg !159257

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !159266, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !159284
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !159285
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !159285, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !159286 ; 3 uses
  %.not81.peel = icmp ult i64 %i.dh, %i.gd, !dbg !159255
  br i1 %.not81.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !159255

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted175, 2, !dbg !159287  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !159257
  br i1 %i.gf, label %.lr.ph541, label %.loopexit318, !dbg !159257

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !159253
  unreachable, !dbg !159253

._crit_edge:                                      ; preds = %.lr.ph541, %bb.g
  %.lcssa237 = phi i64 [ %i.gd, %bb.g ], [ %i.jx, %.lr.ph541 ], !dbg !159286
  %.lcssa236 = phi i64 [ %.promoted, %bb.g ], [ %i.jt, %.lr.ph541 ]
  %.lcssa234 = phi i64 [ %i.fw, %bb.g ], [ %i.js, %.lr.ph541 ], !dbg !159287
  store i64 %.lcssa234, ptr %i.fr, align 8, !dbg !159287
  store i64 %.lcssa236, ptr %i.ft, align 8, !dbg !159288
  br label %bb.i, !dbg !159255

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa170 = phi i64 [ %.lcssa237, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa170, ptr %i.fs, align 8, !dbg !159289
  %.not82 = icmp ugt i64 %i.dn, %.lcssa170, !dbg !159290
  br i1 %.not82, label %.preheader, label %bb.j, !dbg !159290

.peel.next:                                       ; preds = %.lr.ph541
  %i.gg = add nuw i64 %i.js, 1, !dbg !159287      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !159257
  br i1 %i.gh, label %.lr.ph541, label %.loopexit318, !dbg !159257, !llvm.loop !159291

.preheader:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.e, i8 0, i64 8192, i1 false)
  br i1 %.not229, label %._crit_edge212, label %.lr.ph208, !dbg !159292

bb.j:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !159298, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !159299
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !159299, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !159305
  br i1 %i.gl, label %bb.t, label %bb.u, !dbg !159305

.loopexit:                                        ; preds = %bb.s
  %exitcond346.not = icmp eq i64 %i.gm, %umax354, !dbg !159309
  br i1 %exitcond346.not, label %.loopexit102, label %.lr.ph208, !dbg !159292

.lr.ph208:                                        ; preds = %.preheader, %.loopexit
  %.sroa.038.0207 = phi i64 [ %i.gm, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0207, 1, !dbg !159312 ; 2 uses
  %i.gn = add i64 %.sroa.038.0207, %i.dh, !dbg !159318 ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.038.0207, 8
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !159320
  br label %bb.k, !dbg !159320

._crit_edge212.loopexit.unr-lcssa:                ; preds = %.lr.ph211.new
  br i1 %lcmp.mod625.not, label %._crit_edge212, label %.epil.preheader622, !dbg !159225

.epil.preheader622:                               ; preds = %._crit_edge212.loopexit.unr-lcssa, %.lr.ph211
  %.sroa.042.0209.epil.init = phi i64 [ 0, %.lr.ph211 ], [ %i.hi, %._crit_edge212.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod626), !dbg !159225
  %i.go = add i64 %.sroa.042.0209.epil.init, %i.dh, !dbg !159328
  %i.gp = mul i64 %i.go, %i.v, !dbg !159330
  %i.gq = load i64, ptr %i.j, align 8, !dbg !159330, !noundef !11
  %.idx402.epil = shl nuw nsw i64 %.sroa.042.0209.epil.init, 8, !dbg !159332
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.epil, !dbg !159332
  %i.gs = load ptr, ptr %i.ah, align 8, !dbg !159344, !noundef !11
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %i.gp, !dbg !159348
  %i.gu = getelementptr [8 x i8], ptr %i.gt, i64 %i.gq, !dbg !159348
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %.sroa.029.0215, !dbg !159348
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gv, ptr nonnull align 8 %i.gr, i64 %i.eq, i1 false), !dbg !159351
  br label %._crit_edge212, !dbg !159354

._crit_edge212:                                   ; preds = %.epil.preheader622, %._crit_edge212.loopexit.unr-lcssa, %.preheader, %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !159354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !159355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !159356
  %.not80 = icmp eq i64 %i.ds, 0, !dbg !159130
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !159130
  br i1 %.not80, label %.loopexit105, label %.split, !dbg !159130

.lr.ph211.new:                                    ; preds = %.lr.ph211, %.lr.ph211.new
  %.sroa.042.0209 = phi i64 [ %i.hi, %.lr.ph211.new ], [ 0, %.lr.ph211 ] ; 4 uses
  %niter628 = phi i64 [ %niter628.next.1, %.lr.ph211.new ], [ 0, %.lr.ph211 ]
  %i.gw = add i64 %.sroa.042.0209, %i.dh, !dbg !159328
  %i.gx = mul i64 %i.gw, %i.v, !dbg !159330
  %i.gy = load i64, ptr %i.j, align 8, !dbg !159330, !noundef !11
  %i.gz = or disjoint i64 %.sroa.042.0209, 1, !dbg !159357 ; 2 uses
  %.idx402 = shl nuw nsw i64 %.sroa.042.0209, 8, !dbg !159332
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402, !dbg !159332
  %i.hb = load ptr, ptr %i.ah, align 8, !dbg !159344, !noundef !11
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.gx, !dbg !159348
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.gy, !dbg !159348
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.sroa.029.0215, !dbg !159348
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.he, ptr nonnull align 8 %i.ha, i64 %i.eq, i1 false), !dbg !159351
  %i.hf = add i64 %i.gz, %i.dh, !dbg !159328
  %i.hg = mul i64 %i.hf, %i.v, !dbg !159330
  %i.hh = load i64, ptr %i.j, align 8, !dbg !159330, !noundef !11
  %i.hi = add nuw nsw i64 %.sroa.042.0209, 2, !dbg !159357 ; 2 uses
  %.idx402.1 = shl nuw nsw i64 %i.gz, 8, !dbg !159332
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx402.1, !dbg !159332
  %i.hk = load ptr, ptr %i.ah, align 8, !dbg !159344, !noundef !11
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hg, !dbg !159348
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.hh, !dbg !159348
  %i.hn = getelementptr [8 x i8], ptr %i.hm, i64 %.sroa.029.0215, !dbg !159348
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hn, ptr nonnull align 8 %i.hj, i64 %i.eq, i1 false), !dbg !159351
  %niter628.next.1 = add i64 %niter628, 2, !dbg !159225 ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627, !dbg !159225
  br i1 %niter628.ncmp.1, label %._crit_edge212.loopexit.unr-lcssa, label %.lr.ph211.new, !dbg !159225

bb.k:                                             ; preds = %.lr.ph208, %bb.s
  %.sroa.040.0206 = phi i64 [ 0, %.lr.ph208 ], [ %i.ho, %bb.s ] ; 4 uses
  %i.ho = add nuw nsw i64 %.sroa.040.0206, 1, !dbg !159363 ; 2 uses
  %i.hp = add nuw i64 %.sroa.040.0206, %i.dv, !dbg !159369 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.dw, !dbg !159371
  br i1 %i.hq, label %bb.l, label %bb.m, !dbg !159371

bb.l:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.hp, !dbg !159377 ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0206, %.sroa.029.0215, !dbg !159378 ; 3 uses
end_hunk_9
begin_hunk_10_@_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeEs2_0CseeLknQCOKOd_13polars_python:.split221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159696, !noalias !159717
  br label %bb.b, !dbg !159696

bb.b:                                             ; preds = %bb.b, %.lr.ph225.split
  %storemerge3.i.i = phi i64 [ 0, %.lr.ph225.split ], [ %i.da, %bb.b ] ; 3 uses
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB15_5frame9dataframe9DataFrame10to_ndarray6CursorjNCNCIBV_NtNtB15_9datatypes9UInt8TypeEs2_00EINtNtB6_8function5FnMutTjEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %storemerge3.i.i), !dbg !159721, !noalias !159722
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %storemerge3.i.i, !dbg !159725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !159733, !noalias !159717
  %i.da = add nuw nsw i64 %storemerge3.i.i, 1, !dbg !159742 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.da, 64, !dbg !159696
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !159696

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  %i.db = add i64 %.sroa.023.0223, 64, !dbg !159745
  %i.dc = add i64 %.sroa.044.0224, -1, !dbg !159749 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159750, !noalias !159717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1536) %i.b, i64 1536, i1 false), !dbg !159756, !noalias !159758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !159752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.h, ptr noundef nonnull align 8 dereferenceable(1536) %i.d, i64 1536, i1 false), !dbg !159713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !159753
  br label %.split212, !dbg !159759

.loopexit102:                                     ; preds = %._crit_edge211, %.split212
  %.not77 = icmp eq i64 %i.df, 0, !dbg !159759
  %indvars.iv.next342 = add i64 %indvars.iv341, -32, !dbg !159759
  br i1 %.not77, label %._crit_edge220, label %.split212, !dbg !159759

._crit_edge220:                                   ; preds = %.loopexit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !159754
  %.not = icmp eq i64 %i.dc, 0, !dbg !159679
  br i1 %.not, label %._crit_edge226, label %.lr.ph225.split, !dbg !159679

.split212:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit, %.loopexit102
  %indvars.iv341 = phi i64 [ %i.s, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %indvars.iv.next342, %.loopexit102 ] ; 3 uses
  %.sroa.045.0219 = phi i64 [ %.sroa.05.0.i.i84, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.df, %.loopexit102 ]
  %.sroa.026.0218 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python.exit ], [ %i.de, %.loopexit102 ] ; 5 uses
  %i.dd = call i64 @llvm.umax.i64(i64 %indvars.iv341, i64 1), !dbg !159768
  %umax353 = call i64 @llvm.umin.i64(i64 %i.dd, i64 32), !dbg !159768 ; 5 uses
  %i.de = add i64 %.sroa.026.0218, 32, !dbg !159768
  %i.df = add i64 %.sroa.045.0219, -1, !dbg !159772 ; 2 uses
  %i.dg = load i64, ptr %i.k, align 8, !dbg !159773, !noundef !11
  %i.dh = add i64 %i.dg, %.sroa.026.0218, !dbg !159773 ; 9 uses
  %i.di = load i64, ptr %i.i, align 8, !dbg !159776, !noundef !11 ; 3 uses
  %.not78213 = icmp eq i64 %i.di, 0, !dbg !159778
  br i1 %.not78213, label %.loopexit102, label %.lr.ph216, !dbg !159778

.lr.ph216:                                        ; preds = %.split212
  %i.dj = sub i64 %i.s, %.sroa.026.0218, !dbg !159786
  %.sroa.0.0.i85 = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 32), !dbg !159787
  %i.dk = lshr i64 %i.di, 5, !dbg !159789
  %i.dl = and i64 %i.di, 31, !dbg !159794
  %.not10.i.i86 = icmp ne i64 %i.dl, 0, !dbg !159795
  %i.dm = zext i1 %.not10.i.i86 to i64, !dbg !159795
  %.sroa.05.0.i.i87 = add nuw nsw i64 %i.dk, %i.dm, !dbg !159795
  %i.dn = add i64 %i.dh, %.sroa.0.0.i85
  %i.do = icmp ne i64 %i.s, %.sroa.026.0218
  %.not228 = icmp eq i64 %i.s, %.sroa.026.0218    ; 2 uses
  %xtraiter620 = and i64 %umax353, 1
  %i.dp = icmp ult i64 %indvars.iv341, 2
  %unroll_iter623 = and i64 %umax353, 62
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod622 = trunc i64 %umax353 to i1
  br label %.split, !dbg !159778

.split:                                           ; preds = %.lr.ph216, %._crit_edge211
  %indvars.iv = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next, %._crit_edge211 ] ; 3 uses
  %.sroa.046.0215 = phi i64 [ %.sroa.05.0.i.i87, %.lr.ph216 ], [ %i.ds, %._crit_edge211 ]
  %.sroa.029.0214 = phi i64 [ 0, %.lr.ph216 ], [ %i.dr, %._crit_edge211 ] ; 10 uses
  %i.dq = load i64, ptr %i.i, align 8, !dbg !159796, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !159798
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
  %i.dr = add i64 %.sroa.029.0214, 32, !dbg !159800
  %i.ds = add i64 %.sroa.046.0215, -1, !dbg !159804 ; 2 uses
  %i.dt = sub i64 %i.dq, %.sroa.029.0214, !dbg !159796
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.dt, i64 32), !dbg !159805 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !159807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !dbg !159809
  %.not230 = icmp eq i64 %i.dq, %.sroa.029.0214, !dbg !159810
  br i1 %.not230, label %._crit_edge181, label %.lr.ph180, !dbg !159812

.lr.ph180:                                        ; preds = %.split
  %i.du = load i64, ptr %i.j, align 8, !noundef !11
  %i.dv = add i64 %i.du, %.sroa.029.0214          ; 2 uses
  %i.dw = load i64, ptr %i.ae, align 8, !noundef !11 ; 4 uses
  %i.dx = add i64 %i.dq, %indvars.iv, !dbg !159812
  %i.dy = call i64 @llvm.umax.i64(i64 %i.dx, i64 1), !dbg !159812
  %umax325 = call i64 @llvm.umin.i64(i64 %i.dy, i64 32), !dbg !159812 ; 2 uses
  br label %bb.c, !dbg !159812

._crit_edge181:                                   ; preds = %bb.u, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159822
  %i.dz = icmp ne i64 %i.dq, %.sroa.029.0214
  %or.cond227 = and i1 %i.do, %i.dz, !dbg !159823
  br i1 %or.cond227, label %.lr.ph184.preheader, label %.loopexit100, !dbg !159823

.lr.ph184.preheader:                              ; preds = %._crit_edge181
  %i.ea = add i64 %i.dq, %indvars.iv, !dbg !159830 ; 2 uses
  %i.eb = call i64 @llvm.umax.i64(i64 %i.ea, i64 1), !dbg !159830
  %umax347 = call i64 @llvm.umin.i64(i64 %i.eb, i64 32), !dbg !159830 ; 3 uses
  %xtraiter = and i64 %umax347, 1
  %i.ec = icmp ult i64 %i.ea, 2
  %unroll_iter = and i64 %umax347, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod618 = trunc i64 %umax347 to i1
  br label %.lr.ph184, !dbg !159830

bb.c:                                             ; preds = %.lr.ph180, %bb.u
  %.sroa.032.0179 = phi i64 [ 0, %.lr.ph180 ], [ %i.ed, %bb.u ] ; 5 uses
  %i.ed = add nuw nsw i64 %.sroa.032.0179, 1, !dbg !159838 ; 2 uses
  %i.ee = add nuw i64 %i.dv, %.sroa.032.0179, !dbg !159844 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dw, !dbg !159846
  br i1 %i.ef, label %bb.d, label %bb.e, !dbg !159846

..loopexit99_crit_edge.unr-lcssa:                 ; preds = %.lr.ph184.new
  br i1 %lcmp.mod.not, label %..loopexit99_crit_edge, label %.epil.preheader, !dbg !159830

.epil.preheader:                                  ; preds = %..loopexit99_crit_edge.unr-lcssa, %.lr.ph184
  %.sroa.036.0182.epil.init = phi i64 [ 0, %.lr.ph184 ], [ %i.fj, %..loopexit99_crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod618), !dbg !159830
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182.epil.init, !dbg !159853 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !159853
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !159853, !noundef !11
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182.epil.init, !dbg !159855
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !159855, !noundef !11
  %i.el = add i64 %i.ek, %.sroa.034.0185, !dbg !159855 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ei, !dbg !159856
  call void @llvm.assume(i1 %i.em), !dbg !159861
  %i.en = load ptr, ptr %i.eg, align 8, !dbg !159853, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !159862
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !159863, !noundef !11
  %gep469.epil = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182.epil.init, !dbg !159864
  store i8 %i.ep, ptr %gep469.epil, align 1, !dbg !159864
  br label %..loopexit99_crit_edge, !dbg !159865

..loopexit99_crit_edge:                           ; preds = %..loopexit99_crit_edge.unr-lcssa, %.epil.preheader
  %2 = add nuw nsw i64 %.sroa.034.0185, 1, !dbg !159865 ; 2 uses
  %exitcond351.not = icmp eq i64 %2, %umax353, !dbg !159871
  br i1 %exitcond351.not, label %.loopexit100, label %.lr.ph184, !dbg !159823

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %..loopexit99_crit_edge
  %.sroa.034.0185 = phi i64 [ %2, %..loopexit99_crit_edge ], [ 0, %.lr.ph184.preheader ] ; 5 uses
  %i.eq = shl nuw nsw i64 %.sroa.034.0185, 5, !dbg !159874
  %invariant.gep468 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eq, !dbg !159830 ; 3 uses
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph184.new, !dbg !159830

.loopexit100:                                     ; preds = %.loopexit, %..loopexit99_crit_edge, %._crit_edge181
  br i1 %.not228, label %._crit_edge211, label %.lr.ph210.preheader.preheader, !dbg !159875

.lr.ph210.preheader.preheader:                    ; preds = %.loopexit100
  br i1 %i.dp, label %.lr.ph210.preheader.epil.preheader, label %.lr.ph210.preheader, !dbg !159875

.lr.ph184.new:                                    ; preds = %.lr.ph184, %.lr.ph184.new
  %.sroa.036.0182 = phi i64 [ %i.fj, %.lr.ph184.new ], [ 0, %.lr.ph184 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph184.new ], [ 0, %.lr.ph184 ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.036.0182, !dbg !159853 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !159853
  %i.et = load i64, ptr %i.es, align 8, !dbg !159853, !noundef !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.036.0182, !dbg !159855
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !159855, !noundef !11
  %i.ew = add i64 %i.ev, %.sroa.034.0185, !dbg !159855 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.et, !dbg !159856
  call void @llvm.assume(i1 %i.ex), !dbg !159861
  %i.ey = or disjoint i64 %.sroa.036.0182, 1, !dbg !159881 ; 3 uses
  %i.ez = load ptr, ptr %i.er, align 8, !dbg !159853, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew, !dbg !159862
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !159863, !noundef !11
  %gep469 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %.sroa.036.0182, !dbg !159864
  store i8 %i.fb, ptr %gep469, align 1, !dbg !159864
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ey, !dbg !159853 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !159853
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !159853, !noundef !11
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ey, !dbg !159855
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !159855, !noundef !11
  %i.fh = add i64 %i.fg, %.sroa.034.0185, !dbg !159855 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe, !dbg !159856
  call void @llvm.assume(i1 %i.fi), !dbg !159861
  %i.fj = add nuw nsw i64 %.sroa.036.0182, 2, !dbg !159881 ; 2 uses
  %i.fk = load ptr, ptr %i.fc, align 8, !dbg !159853, !nonnull !11, !noundef !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fh, !dbg !159862
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !159863, !noundef !11
  %gep469.1 = getelementptr inbounds nuw i8, ptr %invariant.gep468, i64 %i.ey, !dbg !159864
  store i8 %i.fm, ptr %gep469.1, align 1, !dbg !159864
  %niter.next.1 = add i64 %niter, 2, !dbg !159830 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !159830
  br i1 %niter.ncmp.1, label %..loopexit99_crit_edge.unr-lcssa, label %.lr.ph184.new, !dbg !159830

bb.d:                                             ; preds = %bb.c
  %i.fn = load ptr, ptr %i.af, align 8, !dbg !159887, !nonnull !11, !noundef !11 ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.ee, !dbg !159900 ; 4 uses
  %i.fp = add nuw nsw i64 %.sroa.032.0179, %.sroa.029.0214, !dbg !159901 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 64, !dbg !159903
  br i1 %i.fq, label %bb.f, label %bb.h, !dbg !159903

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #55, !dbg !159846
  unreachable, !dbg !159846

bb.f:                                             ; preds = %bb.d
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.fp, !dbg !159904 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.fs, align 8       ; 4 uses
  %.not79170 = icmp ult i64 %i.dh, %.promoted, !dbg !159905
  br i1 %.not79170, label %bb.i, label %.lr.ph, !dbg !159905

.lr.ph:                                           ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !11 ; 5 uses
  %.promoted172 = load i64, ptr %i.fr, align 8    ; 2 uses
  %i.fw = add i64 %.promoted172, 1, !dbg !159905  ; 4 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv, !dbg !159907
  br i1 %i.fx, label %bb.g, label %.loopexit317, !dbg !159907

bb.g:                                             ; preds = %.lr.ph
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !159916, !nonnull !11, !noundef !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fw, !dbg !159934
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !159935
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !159935, !noundef !11
  %i.gd = add i64 %i.gc, %.promoted, !dbg !159936 ; 3 uses
  %.not79.peel = icmp ult i64 %i.dh, %i.gd, !dbg !159905
  br i1 %.not79.peel, label %._crit_edge, label %.peel.next.preheader, !dbg !159905

.peel.next.preheader:                             ; preds = %bb.g
  %i.ge = add i64 %.promoted172, 2, !dbg !159937  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.fv, !dbg !159907
  br i1 %i.gf, label %.lr.ph538, label %.loopexit317, !dbg !159907

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #55, !dbg !159903
  unreachable, !dbg !159903

._crit_edge:                                      ; preds = %.lr.ph538, %bb.g
  %.lcssa236 = phi i64 [ %i.gd, %bb.g ], [ %i.kb, %.lr.ph538 ], !dbg !159936
  %.lcssa235 = phi i64 [ %.promoted, %bb.g ], [ %i.jx, %.lr.ph538 ]
  %.lcssa233 = phi i64 [ %i.fw, %bb.g ], [ %i.jw, %.lr.ph538 ], !dbg !159937
  store i64 %.lcssa233, ptr %i.fr, align 8, !dbg !159937
  store i64 %.lcssa235, ptr %i.ft, align 8, !dbg !159938
  br label %bb.i, !dbg !159905

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.lcssa167 = phi i64 [ %.lcssa236, %._crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store i64 %.lcssa167, ptr %i.fs, align 8, !dbg !159939
  %.not80 = icmp ugt i64 %i.dn, %.lcssa167, !dbg !159940
  br i1 %.not80, label %bb.j, label %bb.k, !dbg !159940

.peel.next:                                       ; preds = %.lr.ph538
  %i.gg = add nuw i64 %i.jw, 1, !dbg !159937      ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fv, !dbg !159907
  br i1 %i.gh, label %.lr.ph538, label %.loopexit317, !dbg !159907, !llvm.loop !159941

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !159821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !dbg !159822
  br i1 %.not228, label %._crit_edge211, label %.lr.ph207, !dbg !159942

bb.k:                                             ; preds = %bb.i
  %i.gi = load i64, ptr %i.fr, align 8, !dbg !159948, !noundef !11 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16, !dbg !159949
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !159949, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gi, %i.gk, !dbg !159955
  br i1 %i.gl, label %bb.u, label %bb.v, !dbg !159955

.loopexit:                                        ; preds = %bb.t
  %exitcond345.not = icmp eq i64 %i.gm, %umax353, !dbg !159959
  br i1 %exitcond345.not, label %.loopexit100, label %.lr.ph207, !dbg !159942

.lr.ph207:                                        ; preds = %bb.j, %.loopexit
  %.sroa.038.0205 = phi i64 [ %i.gm, %.loopexit ], [ 0, %bb.j ] ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.038.0205, 1, !dbg !159962 ; 2 uses
  %i.gn = add i64 %.sroa.038.0205, %i.dh, !dbg !159968 ; 4 uses
  %i.go = shl nuw nsw i64 %.sroa.038.0205, 5, !dbg !159970
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.go, !dbg !159972
  br label %bb.l, !dbg !159972

._crit_edge211.loopexit.unr-lcssa:                ; preds = %.lr.ph210.preheader
  br i1 %lcmp.mod621.not, label %._crit_edge211, label %.lr.ph210.preheader.epil.preheader, !dbg !159875

.lr.ph210.preheader.epil.preheader:               ; preds = %._crit_edge211.loopexit.unr-lcssa, %.lr.ph210.preheader.preheader
  %.sroa.042.0208.epil.init = phi i64 [ 0, %.lr.ph210.preheader.preheader ], [ %i.hm, %._crit_edge211.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod622), !dbg !159875
  %i.gp = shl nuw nsw i64 %.sroa.042.0208.epil.init, 5, !dbg !159979
  %i.gq = add i64 %.sroa.042.0208.epil.init, %i.dh, !dbg !159983
  %i.gr = mul i64 %i.gq, %i.v, !dbg !159984
  %i.gs = load i64, ptr %i.j, align 8, !dbg !159984, !noundef !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp, !dbg !159985
  %i.gu = load ptr, ptr %i.ah, align 8, !dbg !159996, !noundef !11
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gr, !dbg !160000
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gs, !dbg !160000
  %i.gx = getelementptr i8, ptr %i.gw, i64 %.sroa.029.0214, !dbg !160000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr nonnull align 1 %i.gt, i64 %.sroa.0.0.i88, i1 false), !dbg !160003
  br label %._crit_edge211, !dbg !160006

._crit_edge211:                                   ; preds = %.lr.ph210.preheader.epil.preheader, %._crit_edge211.loopexit.unr-lcssa, %bb.j, %.loopexit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !160006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !160007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !160008
  %.not78 = icmp eq i64 %i.ds, 0, !dbg !159778
  %indvars.iv.next = add i64 %indvars.iv, -32, !dbg !159778
  br i1 %.not78, label %.loopexit102, label %.split, !dbg !159778

.lr.ph210.preheader:                              ; preds = %.lr.ph210.preheader.preheader, %.lr.ph210.preheader
  %.sroa.042.0208 = phi i64 [ %i.hm, %.lr.ph210.preheader ], [ 0, %.lr.ph210.preheader.preheader ] ; 4 uses
  %niter624 = phi i64 [ %niter624.next.1, %.lr.ph210.preheader ], [ 0, %.lr.ph210.preheader.preheader ]
  %i.gy = shl nuw nsw i64 %.sroa.042.0208, 5, !dbg !159979
  %i.gz = add i64 %.sroa.042.0208, %i.dh, !dbg !159983
  %i.ha = mul i64 %i.gz, %i.v, !dbg !159984
  %i.hb = load i64, ptr %i.j, align 8, !dbg !159984, !noundef !11
  %i.hc = or disjoint i64 %.sroa.042.0208, 1, !dbg !160009 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gy, !dbg !159985
  %i.he = load ptr, ptr %i.ah, align 8, !dbg !159996, !noundef !11
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.ha, !dbg !160000
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.hb, !dbg !160000
  %i.hh = getelementptr i8, ptr %i.hg, i64 %.sroa.029.0214, !dbg !160000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr nonnull align 1 %i.hd, i64 %.sroa.0.0.i88, i1 false), !dbg !160003
  %i.hi = shl nuw nsw i64 %i.hc, 5, !dbg !159979
  %i.hj = add i64 %i.hc, %i.dh, !dbg !159983
  %i.hk = mul i64 %i.hj, %i.v, !dbg !159984
  %i.hl = load i64, ptr %i.j, align 8, !dbg !159984, !noundef !11
  %i.hm = add nuw nsw i64 %.sroa.042.0208, 2, !dbg !160009 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hi, !dbg !159985
  %i.ho = load ptr, ptr %i.ah, align 8, !dbg !159996, !noundef !11
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hk, !dbg !160000
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hl, !dbg !160000
  %i.hr = getelementptr i8, ptr %i.hq, i64 %.sroa.029.0214, !dbg !160000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr nonnull align 1 %i.hn, i64 %.sroa.0.0.i88, i1 false), !dbg !160003
  %niter624.next.1 = add i64 %niter624, 2, !dbg !159875 ; 2 uses
  %niter624.ncmp.1 = icmp eq i64 %niter624.next.1, %unroll_iter623, !dbg !159875
  br i1 %niter624.ncmp.1, label %._crit_edge211.loopexit.unr-lcssa, label %.lr.ph210.preheader, !dbg !159875

bb.l:                                             ; preds = %.lr.ph207, %bb.t
  %.sroa.040.0204 = phi i64 [ 0, %.lr.ph207 ], [ %i.hs, %bb.t ] ; 4 uses
  %i.hs = add nuw nsw i64 %.sroa.040.0204, 1, !dbg !160015 ; 2 uses
  %i.ht = add nuw i64 %.sroa.040.0204, %i.dv, !dbg !160021 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, %i.dw, !dbg !160023
  br i1 %i.hu, label %bb.m, label %bb.n, !dbg !160023

bb.m:                                             ; preds = %bb.l
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.ht, !dbg !160029 ; 4 uses
  %i.hw = add nuw nsw i64 %.sroa.040.0204, %.sroa.029.0214, !dbg !160030 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 64, !dbg !160032
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!153178 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153179 = !DINamespace(name: "{impl#20}", scope: !153180)
!153180 = !DINamespace(name: "step_by", scope: !392)
!153181 = !DILocation(line: 59, column: 14, scope: !153182, inlinedAt: !153184)
!153182 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153183 = !DINamespace(name: "{impl#1}", scope: !153180)
!153184 = !DILocation(line: 229, column: 38, scope: !153185)
!153185 = !DILexicalBlockFile(scope: !153186, file: !5557, discriminator: 2)
!153186 = distinct !DILexicalBlock(scope: !153173, file: !5557, line: 229, column: 21)
!153187 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !153189)
!153188 = distinct !DISubprogram(name: "div_ceil", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj8div_ceil", scope: !1713, file: !1712, line: 3711, type: !10, scopeLine: 3711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153189 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !153193)
!153190 = distinct !DILexicalBlock(scope: !153191, file: !153176, line: 429, column: 17)
!153191 = distinct !DISubprogram(name: "setup", linkageName: "_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtNtNtBb_3ops5range5RangejEINtB5_14SpecRangeSetupBQ_E5setup", scope: !153192, file: !153176, line: 428, type: !10, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153192 = !DINamespace(name: "{impl#19}", scope: !153180)
!153193 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !153196)
!153194 = distinct !DISubprogram(name: "new<core::ops::range::Range<usize>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCseeLknQCOKOd_13polars_python", scope: !153195, file: !153176, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153195 = !DINamespace(name: "StepBy", scope: !153180)
!153196 = distinct !DILocation(line: 439, column: 9, scope: !153197, inlinedAt: !153198)
!153197 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153198 = !DILocation(line: 229, column: 52, scope: !153173)
!153199 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !153189)
!153200 = distinct !DILexicalBlock(scope: !153188, file: !1712, line: 3712, column: 13)
!153201 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !153189)
!153202 = distinct !DILexicalBlock(scope: !153200, file: !1712, line: 3713, column: 13)
!153203 = !DILocation(line: 936, column: 11, scope: !153204, inlinedAt: !153206)
!153204 = distinct !DILexicalBlock(scope: !153205, file: !52151, line: 934, column: 5)
!153205 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153206 = distinct !DILocation(line: 154, column: 11, scope: !153207, inlinedAt: !153209)
!153207 = distinct !DILexicalBlock(scope: !153208, file: !52151, line: 153, column: 5)
!153208 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153209 = distinct !DILocation(line: 113, column: 5, scope: !153210, inlinedAt: !153211)
!153210 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt16Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes10UInt16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153211 = !DILocation(line: 234, column: 64, scope: !153212)
!153212 = distinct !DILexicalBlock(scope: !153213, file: !5557, line: 230, column: 25)
!153213 = distinct !DILexicalBlock(scope: !153186, file: !5557, line: 229, column: 21)
!153214 = !DILocation(line: 229, column: 25, scope: !153186)
!153215 = !DILocation(line: 230, column: 42, scope: !153213)
!153216 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153217)
!153217 = distinct !DILocation(line: 230, column: 65, scope: !153213)
!153218 = !DILocation(line: 230, column: 65, scope: !153213)
!153219 = !DILocation(line: 234, column: 29, scope: !153212)
!153220 = !DILocation(line: 113, column: 5, scope: !153210, inlinedAt: !153211)
!153221 = !DILocation(line: 113, column: 17, scope: !153210, inlinedAt: !153211)
!153222 = !DILocation(line: 431, column: 9, scope: !153223, inlinedAt: !153221)
!153223 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt16Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes10UInt16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153224 = !DIFile(filename: "library/core/src/ops/try_trait.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "335edf7dc4f730de066f28da87d0a7cf")
!153225 = !DINamespace(name: "NeverShortCircuit", scope: !153226)
!153226 = !DINamespace(name: "try_trait", scope: !681)
!153227 = !{!153228, !153230}
!153228 = distinct !{!153228, !153229, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!153229 = distinct !{!153229, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!153230 = distinct !{!153230, !153229, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!153231 = !DILocation(line: 937, column: 20, scope: !153204, inlinedAt: !153206)
!153232 = !{!153233, !153228}
!153233 = distinct !{!153233, !153234, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!153234 = distinct !{!153234, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!153235 = !DILocation(line: 266, column: 18, scope: !153236, inlinedAt: !153237)
!153236 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153237 = distinct !DILocation(line: 691, column: 30, scope: !153238, inlinedAt: !153239)
!153238 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153239 = distinct !DILocation(line: 978, column: 28, scope: !153240, inlinedAt: !153242)
!153240 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153241 = !DINamespace(name: "Guard", scope: !52153)
!153242 = distinct !DILocation(line: 940, column: 24, scope: !153243, inlinedAt: !153206)
!153243 = distinct !DILexicalBlock(scope: !153204, file: !52151, line: 937, column: 9)
!153244 = !DILocation(line: 81, column: 9, scope: !153245, inlinedAt: !153246)
!153245 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153246 = distinct !DILocation(line: 185, column: 31, scope: !153247, inlinedAt: !153248)
!153247 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153248 = distinct !DILocation(line: 407, column: 30, scope: !153249, inlinedAt: !153250)
!153249 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153250 = distinct !DILocation(line: 574, column: 17, scope: !153251, inlinedAt: !153252)
!153251 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153252 = distinct !DILocation(line: 978, column: 64, scope: !153240, inlinedAt: !153242)
!153253 = !DILocation(line: 898, column: 17, scope: !153254, inlinedAt: !153255)
!153254 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153255 = distinct !DILocation(line: 979, column: 49, scope: !153240, inlinedAt: !153242)
!153256 = !DILocation(line: 2511, column: 13, scope: !153257, inlinedAt: !153258)
!153257 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153258 = !DILocation(line: 450, column: 43, scope: !153259, inlinedAt: !153181)
!153259 = distinct !DILexicalBlock(scope: !153175, file: !153176, line: 447, column: 21)
!153260 = !DILocation(line: 451, column: 21, scope: !153259, inlinedAt: !153181)
!153261 = !DILocation(line: 945, column: 2, scope: !153205, inlinedAt: !153206)
!153262 = !DILocation(line: 161, column: 2, scope: !153208, inlinedAt: !153209)
!153263 = !DILocation(line: 113, column: 49, scope: !153210, inlinedAt: !153211)
!153264 = !DILocation(line: 113, column: 51, scope: !153210, inlinedAt: !153211)
!153265 = !DILocation(line: 343, column: 21, scope: !153212)
!153266 = !DILocation(line: 344, column: 18, scope: !153162)
!153267 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !153270)
!153268 = distinct !DISubprogram(name: "from_output<[polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor; 64]>", linkageName: "_RNvXs1_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB5_17NeverShortCircuitANtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6Cursorj40_ENtB5_3Try11from_outputCseeLknQCOKOd_13polars_python", scope: !153269, file: !153224, line: 453, type: !10, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153269 = !DINamespace(name: "{impl#3}", scope: !153226)
!153270 = distinct !DILocation(line: 158, column: 19, scope: !153207, inlinedAt: !153209)
!153271 = !{!153230}
!153272 = !DILocation(line: 446, column: 20, scope: !153273, inlinedAt: !153275)
!153273 = distinct !DILexicalBlock(scope: !153274, file: !153176, line: 445, column: 17)
!153274 = distinct !DILexicalBlock(scope: !153178, file: !153176, line: 444, column: 17)
!153275 = !DILocation(line: 59, column: 14, scope: !153276, inlinedAt: !153277)
!153276 = !DILexicalBlockFile(scope: !153182, file: !153176, discriminator: 2)
!153277 = !DILocation(line: 255, column: 35, scope: !153278)
!153278 = !DILexicalBlockFile(scope: !153279, file: !5557, discriminator: 2)
!153279 = distinct !DILexicalBlock(scope: !153280, file: !5557, line: 255, column: 25)
!153280 = distinct !DILexicalBlock(scope: !153212, file: !5557, line: 234, column: 25)
!153281 = !DILocation(line: 2511, column: 13, scope: !153257, inlinedAt: !153282)
!153282 = !DILocation(line: 450, column: 43, scope: !153283, inlinedAt: !153275)
!153283 = !DILexicalBlockFile(scope: !153284, file: !153176, discriminator: 2)
!153284 = distinct !DILexicalBlock(scope: !153273, file: !153176, line: 447, column: 21)
!153285 = !DILocation(line: 451, column: 21, scope: !153284, inlinedAt: !153275)
!153286 = !DILocation(line: 257, column: 49, scope: !153287)
!153287 = distinct !DILexicalBlock(scope: !153288, file: !5557, line: 256, column: 29)
!153288 = distinct !DILexicalBlock(scope: !153279, file: !5557, line: 255, column: 25)
!153289 = !DILocation(line: 259, column: 39, scope: !153290)
!153290 = distinct !DILexicalBlock(scope: !153287, file: !5557, line: 257, column: 29)
!153291 = !DILocation(line: 446, column: 20, scope: !153292, inlinedAt: !153294)
!153292 = distinct !DILexicalBlock(scope: !153293, file: !153176, line: 445, column: 17)
!153293 = distinct !DILexicalBlock(scope: !153178, file: !153176, line: 444, column: 17)
!153294 = !DILocation(line: 59, column: 14, scope: !153295, inlinedAt: !153296)
!153295 = !DILexicalBlockFile(scope: !153182, file: !153176, discriminator: 4)
!153296 = !DILocation(line: 259, column: 39, scope: !153297)
!153297 = !DILexicalBlockFile(scope: !153298, file: !5557, discriminator: 2)
!153298 = distinct !DILexicalBlock(scope: !153290, file: !5557, line: 259, column: 29)
!153299 = !DILocation(line: 256, column: 45, scope: !153288)
!153300 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153301)
!153301 = distinct !DILocation(line: 256, column: 63, scope: !153288)
!153302 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !153303)
!153303 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !153304)
!153304 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !153305)
!153305 = distinct !DILocation(line: 439, column: 9, scope: !153197, inlinedAt: !153306)
!153306 = !DILocation(line: 259, column: 55, scope: !153290)
!153307 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !153303)
!153308 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !153303)
!153309 = !DILocation(line: 260, column: 49, scope: !153310)
!153310 = distinct !DILexicalBlock(scope: !153298, file: !5557, line: 259, column: 29)
!153311 = !DILocation(line: 268, column: 37, scope: !153312)
!153312 = distinct !DILexicalBlock(scope: !153310, file: !5557, line: 260, column: 33)
!153313 = !DILocation(line: 2511, column: 13, scope: !153257, inlinedAt: !153314)
!153314 = !DILocation(line: 450, column: 43, scope: !153315, inlinedAt: !153294)
!153315 = !DILexicalBlockFile(scope: !153316, file: !153176, discriminator: 4)
!153316 = distinct !DILexicalBlock(scope: !153292, file: !153176, line: 447, column: 21)
!153317 = !DILocation(line: 451, column: 21, scope: !153316, inlinedAt: !153294)
!153318 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153319)
!153319 = distinct !DILocation(line: 260, column: 67, scope: !153310)
!153320 = !DILocation(line: 269, column: 37, scope: !153321)
!153321 = distinct !DILexicalBlock(scope: !153312, file: !5557, line: 268, column: 33)
!153322 = !DILocation(line: 269, column: 52, scope: !153321)
!153323 = !DILocation(line: 1917, column: 50, scope: !153324, inlinedAt: !153325)
!153324 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153325 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153327)
!153326 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153327 = !DILocation(line: 866, column: 14, scope: !153328, inlinedAt: !153329)
!153328 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153329 = !DILocation(line: 271, column: 43, scope: !153330)
!153330 = !DILexicalBlockFile(scope: !153331, file: !5557, discriminator: 2)
!153331 = distinct !DILexicalBlock(scope: !153332, file: !5557, line: 271, column: 33)
!153332 = distinct !DILexicalBlock(scope: !153333, file: !5557, line: 270, column: 33)
!153333 = distinct !DILexicalBlock(scope: !153321, file: !5557, line: 269, column: 33)
!153334 = !DILocation(line: 289, column: 37, scope: !153332)
!153335 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153336)
!153336 = !DILocation(line: 866, column: 14, scope: !153337, inlinedAt: !153338)
!153337 = !DILexicalBlockFile(scope: !153328, file: !1698, discriminator: 2)
!153338 = !DILocation(line: 292, column: 47, scope: !153339)
!153339 = !DILexicalBlockFile(scope: !153340, file: !5557, discriminator: 2)
!153340 = distinct !DILexicalBlock(scope: !153341, file: !5557, line: 292, column: 37)
!153341 = distinct !DILexicalBlock(scope: !153332, file: !5557, line: 289, column: 33)
!153342 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153344)
!153343 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153344 = !DILocation(line: 214, column: 28, scope: !153345, inlinedAt: !153346)
!153345 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153346 = !DILocation(line: 784, column: 35, scope: !153347, inlinedAt: !153327)
!153347 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153348 = !DILocation(line: 272, column: 65, scope: !153349)
!153349 = distinct !DILexicalBlock(scope: !153331, file: !5557, line: 271, column: 33)
!153350 = !DILocation(line: 272, column: 10, scope: !153351, inlinedAt: !153352)
!153351 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u16], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRStEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153352 = !DILocation(line: 19, column: 15, scope: !153353, inlinedAt: !153354)
!153353 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u16], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRStEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153354 = !DILocation(line: 3831, column: 9, scope: !153355, inlinedAt: !153356)
!153355 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u16], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RStEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153356 = !DILocation(line: 272, column: 64, scope: !153349)
!153357 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153358)
!153358 = !DILocation(line: 866, column: 14, scope: !153359, inlinedAt: !153360)
!153359 = !DILexicalBlockFile(scope: !153328, file: !1698, discriminator: 4)
!153360 = !DILocation(line: 294, column: 51, scope: !153361)
!153361 = !DILexicalBlockFile(scope: !153362, file: !5557, discriminator: 2)
!153362 = distinct !DILexicalBlock(scope: !153363, file: !5557, line: 294, column: 41)
!153363 = distinct !DILexicalBlock(scope: !153364, file: !5557, line: 293, column: 41)
!153364 = distinct !DILexicalBlock(scope: !153340, file: !5557, line: 292, column: 37)
!153365 = !DILocation(line: 298, column: 70, scope: !153366)
!153366 = distinct !DILexicalBlock(scope: !153362, file: !5557, line: 294, column: 41)
!153367 = !DILocation(line: 299, column: 68, scope: !153366)
!153368 = !DILocation(line: 252, column: 39, scope: !153369, inlinedAt: !153370)
!153369 = distinct !DISubprogram(name: "get_unchecked<u16>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexStE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153370 = !DILocation(line: 646, column: 26, scope: !153371, inlinedAt: !153372)
!153371 = distinct !DISubprogram(name: "get_unchecked<u16, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSt13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153372 = !DILocation(line: 299, column: 54, scope: !153366)
!153373 = !DILocation(line: 252, column: 13, scope: !153369, inlinedAt: !153370)
!153374 = !{i64 2}
!153375 = !DILocation(line: 253, column: 13, scope: !153369, inlinedAt: !153370)
!153376 = !DILocation(line: 298, column: 69, scope: !153366)
!153377 = !DILocation(line: 298, column: 49, scope: !153366)
!153378 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153379)
!153379 = !DILocation(line: 214, column: 28, scope: !153380, inlinedAt: !153381)
!153380 = !DILexicalBlockFile(scope: !153345, file: !1698, discriminator: 2)
!153381 = !DILocation(line: 784, column: 35, scope: !153382, inlinedAt: !153336)
!153382 = !DILexicalBlockFile(scope: !153383, file: !1698, discriminator: 2)
!153383 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153384 = !DILocation(line: 1917, column: 50, scope: !153324, inlinedAt: !153385)
!153385 = !DILocation(line: 781, column: 12, scope: !153386, inlinedAt: !153336)
!153386 = !DILexicalBlockFile(scope: !153326, file: !1698, discriminator: 2)
!153387 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153388)
!153388 = !DILocation(line: 866, column: 14, scope: !153389, inlinedAt: !153390)
!153389 = !DILexicalBlockFile(scope: !153328, file: !1698, discriminator: 10)
!153390 = !DILocation(line: 327, column: 43, scope: !153391)
!153391 = !DILexicalBlockFile(scope: !153392, file: !5557, discriminator: 2)
!153392 = distinct !DILexicalBlock(scope: !153341, file: !5557, line: 327, column: 33)
!153393 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153394)
!153394 = !DILocation(line: 214, column: 28, scope: !153395, inlinedAt: !153396)
!153395 = !DILexicalBlockFile(scope: !153345, file: !1698, discriminator: 4)
!153396 = !DILocation(line: 784, column: 35, scope: !153397, inlinedAt: !153358)
!153397 = !DILexicalBlockFile(scope: !153398, file: !1698, discriminator: 4)
!153398 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153399 = !DILocation(line: 614, column: 9, scope: !153400, inlinedAt: !153401)
!153400 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[u16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRStEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153401 = !DILocation(line: 609, column: 14, scope: !153402, inlinedAt: !153403)
!153402 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[u16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRStEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153403 = !DILocation(line: 296, column: 20, scope: !153404, inlinedAt: !153405)
!153404 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[u16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRStEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153405 = !DILocation(line: 1942, column: 18, scope: !153406, inlinedAt: !153407)
!153406 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[u16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RStEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153407 = !DILocation(line: 1841, column: 76, scope: !153408, inlinedAt: !153409)
!153408 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[u16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RStEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153409 = !DILocation(line: 3756, column: 14, scope: !153410, inlinedAt: !153411)
!153410 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[u16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RStEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153411 = !DILocation(line: 3831, column: 23, scope: !153355, inlinedAt: !153356)
!153412 = !DILocation(line: 272, column: 9, scope: !153351, inlinedAt: !153352)
!153413 = !DILocation(line: 273, column: 60, scope: !153414)
!153414 = distinct !DILexicalBlock(scope: !153349, file: !5557, line: 272, column: 37)
!153415 = !DILocation(line: 273, column: 52, scope: !153414)
!153416 = !DILocation(line: 273, column: 47, scope: !153414)
!153417 = !DILocation(line: 275, column: 43, scope: !153418)
!153418 = distinct !DILexicalBlock(scope: !153414, file: !5557, line: 273, column: 37)
!153419 = !DILocation(line: 272, column: 10, scope: !153420, inlinedAt: !153421)
!153420 = distinct !DISubprogram(name: "index<&[u16]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRStE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153421 = !DILocation(line: 19, column: 15, scope: !153422, inlinedAt: !153424)
!153422 = !DILexicalBlockFile(scope: !153423, file: !1681, discriminator: 2)
!153423 = distinct !DISubprogram(name: "index<&[u16], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRStINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153424 = !DILocation(line: 3831, column: 9, scope: !153425, inlinedAt: !153427)
!153425 = !DILexicalBlockFile(scope: !153426, file: !362, discriminator: 2)
!153426 = distinct !DISubprogram(name: "index<&[u16], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRStEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153427 = !DILocation(line: 278, column: 67, scope: !153418)
!153428 = !DILocation(line: 614, column: 9, scope: !153429, inlinedAt: !153430)
!153429 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[u16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRStECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153430 = !DILocation(line: 609, column: 14, scope: !153431, inlinedAt: !153433)
!153431 = !DILexicalBlockFile(scope: !153432, file: !1901, discriminator: 2)
!153432 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[u16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRStECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153433 = !DILocation(line: 296, column: 20, scope: !153434, inlinedAt: !153436)
!153434 = !DILexicalBlockFile(scope: !153435, file: !1901, discriminator: 2)
!153435 = distinct !DISubprogram(name: "ptr<&[u16], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRStE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153436 = !DILocation(line: 1942, column: 18, scope: !153437, inlinedAt: !153439)
!153437 = !DILexicalBlockFile(scope: !153438, file: !362, discriminator: 2)
!153438 = distinct !DISubprogram(name: "as_ptr<&[u16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRStE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153439 = !DILocation(line: 1841, column: 76, scope: !153440, inlinedAt: !153442)
!153440 = !DILexicalBlockFile(scope: !153441, file: !362, discriminator: 2)
!153441 = distinct !DISubprogram(name: "as_slice<&[u16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRStE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153442 = !DILocation(line: 3756, column: 14, scope: !153443, inlinedAt: !153445)
!153443 = !DILexicalBlockFile(scope: !153444, file: !362, discriminator: 2)
!153444 = distinct !DISubprogram(name: "deref<&[u16], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRStENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153445 = !DILocation(line: 3831, column: 23, scope: !153425, inlinedAt: !153427)
!153446 = !DILocation(line: 272, column: 9, scope: !153420, inlinedAt: !153421)
!153447 = !DILocation(line: 278, column: 61, scope: !153418)
!153448 = !DILocation(line: 278, column: 41, scope: !153418)
!153449 = !DILocation(line: 276, column: 41, scope: !153418)
!153450 = !DILocation(line: 277, column: 41, scope: !153418)
!153451 = !DILocation(line: 0, scope: !153418)
!153452 = !DILocation(line: 280, column: 40, scope: !153418)
!153453 = distinct !{!153453, !153454}
!153454 = !{!"llvm.loop.peeled.count", i32 1}
!153455 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153456)
!153456 = !DILocation(line: 866, column: 14, scope: !153457, inlinedAt: !153458)
!153457 = !DILexicalBlockFile(scope: !153328, file: !1698, discriminator: 6)
!153458 = !DILocation(line: 304, column: 47, scope: !153459)
!153459 = !DILexicalBlockFile(scope: !153460, file: !5557, discriminator: 2)
!153460 = distinct !DILexicalBlock(scope: !153341, file: !5557, line: 304, column: 37)
!153461 = !DILocation(line: 281, column: 65, scope: !153418)
!153462 = !DILocation(line: 1841, column: 86, scope: !153441, inlinedAt: !153463)
!153463 = !DILocation(line: 3756, column: 14, scope: !153464, inlinedAt: !153465)
!153464 = !DILexicalBlockFile(scope: !153444, file: !362, discriminator: 4)
!153465 = !DILocation(line: 3831, column: 23, scope: !153466, inlinedAt: !153467)
!153466 = !DILexicalBlockFile(scope: !153426, file: !362, discriminator: 4)
!153467 = !DILocation(line: 281, column: 64, scope: !153418)
!153468 = !DILocation(line: 272, column: 10, scope: !153420, inlinedAt: !153469)
!153469 = !DILocation(line: 19, column: 15, scope: !153470, inlinedAt: !153471)
!153470 = !DILexicalBlockFile(scope: !153423, file: !1681, discriminator: 4)
!153471 = !DILocation(line: 3831, column: 9, scope: !153466, inlinedAt: !153467)
!153472 = !DILocation(line: 1917, column: 50, scope: !153324, inlinedAt: !153473)
!153473 = !DILocation(line: 781, column: 12, scope: !153474, inlinedAt: !153456)
!153474 = !DILexicalBlockFile(scope: !153326, file: !1698, discriminator: 6)
!153475 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153476)
!153476 = !DILocation(line: 214, column: 28, scope: !153477, inlinedAt: !153478)
!153477 = !DILexicalBlockFile(scope: !153345, file: !1698, discriminator: 6)
!153478 = !DILocation(line: 784, column: 35, scope: !153479, inlinedAt: !153456)
!153479 = !DILexicalBlockFile(scope: !153480, file: !1698, discriminator: 6)
!153480 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153481 = !DILocation(line: 305, column: 55, scope: !153482)
!153482 = distinct !DILexicalBlock(scope: !153460, file: !5557, line: 304, column: 37)
!153483 = !DILocation(line: 781, column: 12, scope: !153326, inlinedAt: !153484)
!153484 = !DILocation(line: 866, column: 14, scope: !153485, inlinedAt: !153486)
!153485 = !DILexicalBlockFile(scope: !153328, file: !1698, discriminator: 8)
!153486 = !DILocation(line: 307, column: 51, scope: !153487)
!153487 = !DILexicalBlockFile(scope: !153488, file: !5557, discriminator: 2)
!153488 = distinct !DILexicalBlock(scope: !153489, file: !5557, line: 307, column: 41)
!153489 = distinct !DILexicalBlock(scope: !153490, file: !5557, line: 306, column: 41)
!153490 = distinct !DILexicalBlock(scope: !153482, file: !5557, line: 305, column: 41)
!153491 = !DILocation(line: 328, column: 51, scope: !153492)
!153492 = distinct !DILexicalBlock(scope: !153392, file: !5557, line: 327, column: 33)
!153493 = !DILocation(line: 329, column: 51, scope: !153494)
!153494 = distinct !DILexicalBlock(scope: !153492, file: !5557, line: 328, column: 37)
!153495 = !DILocation(line: 89, column: 24, scope: !153496, inlinedAt: !153498)
!153496 = distinct !DILexicalBlock(scope: !153497, file: !1681, line: 87, column: 5)
!153497 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubchecktECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153498 = !DILocation(line: 441, column: 24, scope: !153499, inlinedAt: !153500)
!153499 = distinct !DISubprogram(name: "index<u16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153500 = !DILocation(line: 19, column: 15, scope: !153501, inlinedAt: !153503)
!153501 = !DILexicalBlockFile(scope: !153502, file: !1681, discriminator: 12)
!153502 = distinct !DISubprogram(name: "index<u16, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexStINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153503 = !DILocation(line: 390, column: 9, scope: !153504, inlinedAt: !153505)
!153504 = distinct !DISubprogram(name: "index<u16, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAtj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153505 = !DILocation(line: 330, column: 51, scope: !153506)
!153506 = distinct !DILexicalBlock(scope: !153494, file: !5557, line: 329, column: 37)
!153507 = !DILocation(line: 26, column: 9, scope: !153508, inlinedAt: !153509)
!153508 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrtE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153509 = !DILocation(line: 336, column: 49, scope: !153510)
!153510 = distinct !DILexicalBlock(scope: !153506, file: !5557, line: 330, column: 37)
!153511 = !DILocation(line: 961, column: 18, scope: !153512, inlinedAt: !153513)
!153512 = distinct !DISubprogram(name: "add<u16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOt3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153513 = !DILocation(line: 336, column: 55, scope: !153510)
!153514 = !DILocation(line: 552, column: 14, scope: !153515, inlinedAt: !153516)
!153515 = distinct !DISubprogram(name: "copy_nonoverlapping<u16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingtECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153516 = !DILocation(line: 334, column: 41, scope: !153510)
!153517 = !DILocation(line: 341, column: 29, scope: !153332)
!153518 = !DILocation(line: 341, column: 29, scope: !153321)
!153519 = !DILocation(line: 341, column: 29, scope: !153312)
!153520 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153521)
!153521 = !DILocation(line: 214, column: 28, scope: !153522, inlinedAt: !153523)
!153522 = !DILexicalBlockFile(scope: !153345, file: !1698, discriminator: 10)
!153523 = !DILocation(line: 784, column: 35, scope: !153524, inlinedAt: !153388)
!153524 = !DILexicalBlockFile(scope: !153525, file: !1698, discriminator: 10)
!153525 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153526 = !DILocation(line: 898, column: 17, scope: !153343, inlinedAt: !153527)
!153527 = !DILocation(line: 214, column: 28, scope: !153528, inlinedAt: !153529)
!153528 = !DILexicalBlockFile(scope: !153345, file: !1698, discriminator: 8)
!153529 = !DILocation(line: 784, column: 35, scope: !153530, inlinedAt: !153484)
!153530 = !DILexicalBlockFile(scope: !153531, file: !1698, discriminator: 8)
!153531 = distinct !DILexicalBlock(scope: !153326, file: !1698, line: 782, column: 13)
!153532 = !DILocation(line: 308, column: 73, scope: !153533)
!153533 = distinct !DILexicalBlock(scope: !153488, file: !5557, line: 307, column: 41)
!153534 = !DILocation(line: 272, column: 10, scope: !153351, inlinedAt: !153535)
!153535 = !DILocation(line: 19, column: 15, scope: !153536, inlinedAt: !153537)
!153536 = !DILexicalBlockFile(scope: !153353, file: !1681, discriminator: 6)
!153537 = !DILocation(line: 3831, column: 9, scope: !153538, inlinedAt: !153539)
!153538 = !DILexicalBlockFile(scope: !153355, file: !362, discriminator: 6)
!153539 = !DILocation(line: 308, column: 72, scope: !153533)
!153540 = !DILocation(line: 272, column: 9, scope: !153351, inlinedAt: !153535)
!153541 = !DILocation(line: 309, column: 68, scope: !153542)
!153542 = distinct !DILexicalBlock(scope: !153533, file: !5557, line: 308, column: 45)
!153543 = !DILocation(line: 309, column: 60, scope: !153542)
!153544 = !DILocation(line: 309, column: 55, scope: !153542)
!153545 = !DILocation(line: 310, column: 51, scope: !153546)
!153546 = distinct !DILexicalBlock(scope: !153542, file: !5557, line: 309, column: 45)
!153547 = !DILocation(line: 320, column: 77, scope: !153546)
!153548 = !DILocation(line: 1841, column: 86, scope: !153441, inlinedAt: !153549)
!153549 = !DILocation(line: 3756, column: 14, scope: !153550, inlinedAt: !153551)
!153550 = !DILexicalBlockFile(scope: !153444, file: !362, discriminator: 10)
!153551 = !DILocation(line: 3831, column: 23, scope: !153552, inlinedAt: !153553)
!153552 = !DILexicalBlockFile(scope: !153426, file: !362, discriminator: 10)
!153553 = !DILocation(line: 320, column: 76, scope: !153546)
!153554 = !DILocation(line: 272, column: 10, scope: !153420, inlinedAt: !153555)
!153555 = !DILocation(line: 19, column: 15, scope: !153556, inlinedAt: !153557)
!153556 = !DILexicalBlockFile(scope: !153423, file: !1681, discriminator: 8)
!153557 = !DILocation(line: 3831, column: 9, scope: !153558, inlinedAt: !153559)
!153558 = !DILexicalBlockFile(scope: !153426, file: !362, discriminator: 8)
!153559 = !DILocation(line: 313, column: 75, scope: !153546)
!153560 = !DILocation(line: 614, column: 9, scope: !153429, inlinedAt: !153561)
!153561 = !DILocation(line: 609, column: 14, scope: !153562, inlinedAt: !153563)
!153562 = !DILexicalBlockFile(scope: !153432, file: !1901, discriminator: 8)
!153563 = !DILocation(line: 296, column: 20, scope: !153564, inlinedAt: !153565)
!153564 = !DILexicalBlockFile(scope: !153435, file: !1901, discriminator: 8)
!153565 = !DILocation(line: 1942, column: 18, scope: !153566, inlinedAt: !153567)
!153566 = !DILexicalBlockFile(scope: !153438, file: !362, discriminator: 8)
!153567 = !DILocation(line: 1841, column: 76, scope: !153568, inlinedAt: !153569)
!153568 = !DILexicalBlockFile(scope: !153441, file: !362, discriminator: 8)
!153569 = !DILocation(line: 3756, column: 14, scope: !153570, inlinedAt: !153571)
!153570 = !DILexicalBlockFile(scope: !153444, file: !362, discriminator: 8)
!153571 = !DILocation(line: 3831, column: 23, scope: !153558, inlinedAt: !153559)
!153572 = !DILocation(line: 272, column: 9, scope: !153420, inlinedAt: !153555)
!153573 = !DILocation(line: 313, column: 69, scope: !153546)
!153574 = !DILocation(line: 313, column: 49, scope: !153546)
!153575 = !DILocation(line: 311, column: 49, scope: !153546)
!153576 = !DILocation(line: 312, column: 49, scope: !153546)
!153577 = !DILocation(line: 0, scope: !153546)
!153578 = !DILocation(line: 272, column: 10, scope: !153420, inlinedAt: !153579)
!153579 = !DILocation(line: 19, column: 15, scope: !153580, inlinedAt: !153581)
!153580 = !DILexicalBlockFile(scope: !153423, file: !1681, discriminator: 10)
!153581 = !DILocation(line: 3831, column: 9, scope: !153552, inlinedAt: !153553)
!153582 = distinct !{!153582, !153454}
!153583 = !DILocation(line: 614, column: 9, scope: !153429, inlinedAt: !153584)
!153584 = !DILocation(line: 609, column: 14, scope: !153585, inlinedAt: !153586)
!153585 = !DILexicalBlockFile(scope: !153432, file: !1901, discriminator: 10)
!153586 = !DILocation(line: 296, column: 20, scope: !153587, inlinedAt: !153588)
end_hunk_11
begin_hunk_12_@llvm.vector.reduce.add.v2i64
!153828 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !153821)
!153829 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !153821)
!153830 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::UInt32Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt32TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153831 = !DILocation(line: 225, column: 45, scope: !153830)
!153832 = !DILocation(line: 225, column: 37, scope: !153830)
!153833 = !DILocation(line: 226, column: 35, scope: !153834)
!153834 = distinct !DILexicalBlock(scope: !153830, file: !5557, line: 225, column: 21)
!153835 = !DILocation(line: 226, column: 63, scope: !153834)
!153836 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153837)
!153837 = distinct !DILocation(line: 226, column: 59, scope: !153834)
!153838 = !DILocation(line: 227, column: 38, scope: !153839)
!153839 = distinct !DILexicalBlock(scope: !153834, file: !5557, line: 226, column: 21)
!153840 = !DILocation(line: 229, column: 42, scope: !153841)
!153841 = distinct !DILexicalBlock(scope: !153839, file: !5557, line: 227, column: 21)
!153842 = !DILocation(line: 446, column: 20, scope: !153843, inlinedAt: !153846)
!153843 = distinct !DILexicalBlock(scope: !153844, file: !153176, line: 445, column: 17)
!153844 = distinct !DILexicalBlock(scope: !153845, file: !153176, line: 444, column: 17)
!153845 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153846 = !DILocation(line: 59, column: 14, scope: !153847, inlinedAt: !153848)
!153847 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153848 = !DILocation(line: 229, column: 38, scope: !153849)
!153849 = !DILexicalBlockFile(scope: !153850, file: !5557, discriminator: 2)
!153850 = distinct !DILexicalBlock(scope: !153841, file: !5557, line: 229, column: 21)
!153851 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !153852)
!153852 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !153853)
!153853 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !153854)
!153854 = distinct !DILocation(line: 439, column: 9, scope: !153855, inlinedAt: !153856)
!153855 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153856 = !DILocation(line: 229, column: 52, scope: !153841)
!153857 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !153852)
!153858 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !153852)
!153859 = !DILocation(line: 936, column: 11, scope: !153860, inlinedAt: !153862)
!153860 = distinct !DILexicalBlock(scope: !153861, file: !52151, line: 934, column: 5)
!153861 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153862 = distinct !DILocation(line: 154, column: 11, scope: !153863, inlinedAt: !153865)
!153863 = distinct !DILexicalBlock(scope: !153864, file: !52151, line: 153, column: 5)
!153864 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153865 = distinct !DILocation(line: 113, column: 5, scope: !153866, inlinedAt: !153867)
!153866 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt32Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes10UInt32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153867 = !DILocation(line: 234, column: 64, scope: !153868)
!153868 = distinct !DILexicalBlock(scope: !153869, file: !5557, line: 230, column: 25)
!153869 = distinct !DILexicalBlock(scope: !153850, file: !5557, line: 229, column: 21)
!153870 = !DILocation(line: 229, column: 25, scope: !153850)
!153871 = !DILocation(line: 230, column: 42, scope: !153869)
!153872 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153873)
!153873 = distinct !DILocation(line: 230, column: 65, scope: !153869)
!153874 = !DILocation(line: 230, column: 65, scope: !153869)
!153875 = !DILocation(line: 234, column: 29, scope: !153868)
!153876 = !DILocation(line: 113, column: 5, scope: !153866, inlinedAt: !153867)
!153877 = !DILocation(line: 113, column: 17, scope: !153866, inlinedAt: !153867)
!153878 = !DILocation(line: 431, column: 9, scope: !153879, inlinedAt: !153877)
!153879 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt32Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes10UInt32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153880 = !{!153881, !153883}
!153881 = distinct !{!153881, !153882, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!153882 = distinct !{!153882, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!153883 = distinct !{!153883, !153882, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!153884 = !DILocation(line: 937, column: 20, scope: !153860, inlinedAt: !153862)
!153885 = !{!153886, !153881}
!153886 = distinct !{!153886, !153887, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!153887 = distinct !{!153887, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!153888 = !DILocation(line: 266, column: 18, scope: !153889, inlinedAt: !153890)
!153889 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153890 = distinct !DILocation(line: 691, column: 30, scope: !153891, inlinedAt: !153892)
!153891 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153892 = distinct !DILocation(line: 978, column: 28, scope: !153893, inlinedAt: !153894)
!153893 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153894 = distinct !DILocation(line: 940, column: 24, scope: !153895, inlinedAt: !153862)
!153895 = distinct !DILexicalBlock(scope: !153860, file: !52151, line: 937, column: 9)
!153896 = !DILocation(line: 81, column: 9, scope: !153897, inlinedAt: !153898)
!153897 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153898 = distinct !DILocation(line: 185, column: 31, scope: !153899, inlinedAt: !153900)
!153899 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153900 = distinct !DILocation(line: 407, column: 30, scope: !153901, inlinedAt: !153902)
!153901 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153902 = distinct !DILocation(line: 574, column: 17, scope: !153903, inlinedAt: !153904)
!153903 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153904 = distinct !DILocation(line: 978, column: 64, scope: !153893, inlinedAt: !153894)
!153905 = !DILocation(line: 898, column: 17, scope: !153906, inlinedAt: !153907)
!153906 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153907 = distinct !DILocation(line: 979, column: 49, scope: !153893, inlinedAt: !153894)
!153908 = !DILocation(line: 2511, column: 13, scope: !153909, inlinedAt: !153910)
!153909 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153910 = !DILocation(line: 450, column: 43, scope: !153911, inlinedAt: !153846)
!153911 = distinct !DILexicalBlock(scope: !153843, file: !153176, line: 447, column: 21)
!153912 = !DILocation(line: 451, column: 21, scope: !153911, inlinedAt: !153846)
!153913 = !DILocation(line: 945, column: 2, scope: !153861, inlinedAt: !153862)
!153914 = !DILocation(line: 161, column: 2, scope: !153864, inlinedAt: !153865)
!153915 = !DILocation(line: 113, column: 49, scope: !153866, inlinedAt: !153867)
!153916 = !DILocation(line: 113, column: 51, scope: !153866, inlinedAt: !153867)
!153917 = !DILocation(line: 343, column: 21, scope: !153868)
!153918 = !DILocation(line: 344, column: 18, scope: !153830)
!153919 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !153920)
!153920 = distinct !DILocation(line: 158, column: 19, scope: !153863, inlinedAt: !153865)
!153921 = !{!153883}
!153922 = !DILocation(line: 446, column: 20, scope: !153923, inlinedAt: !153925)
!153923 = distinct !DILexicalBlock(scope: !153924, file: !153176, line: 445, column: 17)
!153924 = distinct !DILexicalBlock(scope: !153845, file: !153176, line: 444, column: 17)
!153925 = !DILocation(line: 59, column: 14, scope: !153926, inlinedAt: !153927)
!153926 = !DILexicalBlockFile(scope: !153847, file: !153176, discriminator: 2)
!153927 = !DILocation(line: 255, column: 35, scope: !153928)
!153928 = !DILexicalBlockFile(scope: !153929, file: !5557, discriminator: 2)
!153929 = distinct !DILexicalBlock(scope: !153930, file: !5557, line: 255, column: 25)
!153930 = distinct !DILexicalBlock(scope: !153868, file: !5557, line: 234, column: 25)
!153931 = !DILocation(line: 2511, column: 13, scope: !153909, inlinedAt: !153932)
!153932 = !DILocation(line: 450, column: 43, scope: !153933, inlinedAt: !153925)
!153933 = !DILexicalBlockFile(scope: !153934, file: !153176, discriminator: 2)
!153934 = distinct !DILexicalBlock(scope: !153923, file: !153176, line: 447, column: 21)
!153935 = !DILocation(line: 451, column: 21, scope: !153934, inlinedAt: !153925)
!153936 = !DILocation(line: 257, column: 49, scope: !153937)
!153937 = distinct !DILexicalBlock(scope: !153938, file: !5557, line: 256, column: 29)
!153938 = distinct !DILexicalBlock(scope: !153929, file: !5557, line: 255, column: 25)
!153939 = !DILocation(line: 259, column: 39, scope: !153940)
!153940 = distinct !DILexicalBlock(scope: !153937, file: !5557, line: 257, column: 29)
!153941 = !DILocation(line: 446, column: 20, scope: !153942, inlinedAt: !153944)
!153942 = distinct !DILexicalBlock(scope: !153943, file: !153176, line: 445, column: 17)
!153943 = distinct !DILexicalBlock(scope: !153845, file: !153176, line: 444, column: 17)
!153944 = !DILocation(line: 59, column: 14, scope: !153945, inlinedAt: !153946)
!153945 = !DILexicalBlockFile(scope: !153847, file: !153176, discriminator: 4)
!153946 = !DILocation(line: 259, column: 39, scope: !153947)
!153947 = !DILexicalBlockFile(scope: !153948, file: !5557, discriminator: 2)
!153948 = distinct !DILexicalBlock(scope: !153940, file: !5557, line: 259, column: 29)
!153949 = !DILocation(line: 256, column: 45, scope: !153938)
!153950 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153951)
!153951 = distinct !DILocation(line: 256, column: 63, scope: !153938)
!153952 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !153953)
!153953 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !153954)
!153954 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !153955)
!153955 = distinct !DILocation(line: 439, column: 9, scope: !153855, inlinedAt: !153956)
!153956 = !DILocation(line: 259, column: 55, scope: !153940)
!153957 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !153953)
!153958 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !153953)
!153959 = !DILocation(line: 260, column: 49, scope: !153960)
!153960 = distinct !DILexicalBlock(scope: !153948, file: !5557, line: 259, column: 29)
!153961 = !DILocation(line: 268, column: 37, scope: !153962)
!153962 = distinct !DILexicalBlock(scope: !153960, file: !5557, line: 260, column: 33)
!153963 = !DILocation(line: 2511, column: 13, scope: !153909, inlinedAt: !153964)
!153964 = !DILocation(line: 450, column: 43, scope: !153965, inlinedAt: !153944)
!153965 = !DILexicalBlockFile(scope: !153966, file: !153176, discriminator: 4)
!153966 = distinct !DILexicalBlock(scope: !153942, file: !153176, line: 447, column: 21)
!153967 = !DILocation(line: 451, column: 21, scope: !153966, inlinedAt: !153944)
!153968 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !153969)
!153969 = distinct !DILocation(line: 260, column: 67, scope: !153960)
!153970 = !DILocation(line: 269, column: 37, scope: !153971)
!153971 = distinct !DILexicalBlock(scope: !153962, file: !5557, line: 268, column: 33)
!153972 = !DILocation(line: 269, column: 52, scope: !153971)
!153973 = !DILocation(line: 1917, column: 50, scope: !153974, inlinedAt: !153975)
!153974 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153975 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !153977)
!153976 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153977 = !DILocation(line: 866, column: 14, scope: !153978, inlinedAt: !153979)
!153978 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153979 = !DILocation(line: 271, column: 43, scope: !153980)
!153980 = !DILexicalBlockFile(scope: !153981, file: !5557, discriminator: 2)
!153981 = distinct !DILexicalBlock(scope: !153982, file: !5557, line: 271, column: 33)
!153982 = distinct !DILexicalBlock(scope: !153983, file: !5557, line: 270, column: 33)
!153983 = distinct !DILexicalBlock(scope: !153971, file: !5557, line: 269, column: 33)
!153984 = !DILocation(line: 289, column: 37, scope: !153982)
!153985 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !153986)
!153986 = !DILocation(line: 866, column: 14, scope: !153987, inlinedAt: !153988)
!153987 = !DILexicalBlockFile(scope: !153978, file: !1698, discriminator: 2)
!153988 = !DILocation(line: 292, column: 47, scope: !153989)
!153989 = !DILexicalBlockFile(scope: !153990, file: !5557, discriminator: 2)
!153990 = distinct !DILexicalBlock(scope: !153991, file: !5557, line: 292, column: 37)
!153991 = distinct !DILexicalBlock(scope: !153982, file: !5557, line: 289, column: 33)
!153992 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !153994)
!153993 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153994 = !DILocation(line: 214, column: 28, scope: !153995, inlinedAt: !153996)
!153995 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!153996 = !DILocation(line: 784, column: 35, scope: !153997, inlinedAt: !153977)
!153997 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!153998 = !DILocation(line: 272, column: 65, scope: !153999)
!153999 = distinct !DILexicalBlock(scope: !153981, file: !5557, line: 271, column: 33)
!154000 = !DILocation(line: 272, column: 10, scope: !154001, inlinedAt: !154002)
!154001 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u32], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSmEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154002 = !DILocation(line: 19, column: 15, scope: !154003, inlinedAt: !154004)
!154003 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u32], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSmEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154004 = !DILocation(line: 3831, column: 9, scope: !154005, inlinedAt: !154006)
!154005 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u32], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSmEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154006 = !DILocation(line: 272, column: 64, scope: !153999)
!154007 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !154008)
!154008 = !DILocation(line: 866, column: 14, scope: !154009, inlinedAt: !154010)
!154009 = !DILexicalBlockFile(scope: !153978, file: !1698, discriminator: 4)
!154010 = !DILocation(line: 294, column: 51, scope: !154011)
!154011 = !DILexicalBlockFile(scope: !154012, file: !5557, discriminator: 2)
!154012 = distinct !DILexicalBlock(scope: !154013, file: !5557, line: 294, column: 41)
!154013 = distinct !DILexicalBlock(scope: !154014, file: !5557, line: 293, column: 41)
!154014 = distinct !DILexicalBlock(scope: !153990, file: !5557, line: 292, column: 37)
!154015 = !DILocation(line: 298, column: 70, scope: !154016)
!154016 = distinct !DILexicalBlock(scope: !154012, file: !5557, line: 294, column: 41)
!154017 = !DILocation(line: 299, column: 68, scope: !154016)
!154018 = !DILocation(line: 252, column: 39, scope: !154019, inlinedAt: !154020)
!154019 = distinct !DISubprogram(name: "get_unchecked<u32>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSmE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154020 = !DILocation(line: 646, column: 26, scope: !154021, inlinedAt: !154022)
!154021 = distinct !DISubprogram(name: "get_unchecked<u32, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSm13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154022 = !DILocation(line: 299, column: 54, scope: !154016)
!154023 = !DILocation(line: 252, column: 13, scope: !154019, inlinedAt: !154020)
!154024 = !{i64 4}
!154025 = !DILocation(line: 253, column: 13, scope: !154019, inlinedAt: !154020)
!154026 = !DILocation(line: 298, column: 69, scope: !154016)
!154027 = !DILocation(line: 298, column: 49, scope: !154016)
!154028 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !154029)
!154029 = !DILocation(line: 214, column: 28, scope: !154030, inlinedAt: !154031)
!154030 = !DILexicalBlockFile(scope: !153995, file: !1698, discriminator: 2)
!154031 = !DILocation(line: 784, column: 35, scope: !154032, inlinedAt: !153986)
!154032 = !DILexicalBlockFile(scope: !154033, file: !1698, discriminator: 2)
!154033 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!154034 = !DILocation(line: 1917, column: 50, scope: !153974, inlinedAt: !154035)
!154035 = !DILocation(line: 781, column: 12, scope: !154036, inlinedAt: !153986)
!154036 = !DILexicalBlockFile(scope: !153976, file: !1698, discriminator: 2)
!154037 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !154038)
!154038 = !DILocation(line: 866, column: 14, scope: !154039, inlinedAt: !154040)
!154039 = !DILexicalBlockFile(scope: !153978, file: !1698, discriminator: 10)
!154040 = !DILocation(line: 327, column: 43, scope: !154041)
!154041 = !DILexicalBlockFile(scope: !154042, file: !5557, discriminator: 2)
!154042 = distinct !DILexicalBlock(scope: !153991, file: !5557, line: 327, column: 33)
!154043 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !154044)
!154044 = !DILocation(line: 214, column: 28, scope: !154045, inlinedAt: !154046)
!154045 = !DILexicalBlockFile(scope: !153995, file: !1698, discriminator: 4)
!154046 = !DILocation(line: 784, column: 35, scope: !154047, inlinedAt: !154008)
!154047 = !DILexicalBlockFile(scope: !154048, file: !1698, discriminator: 4)
!154048 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!154049 = !DILocation(line: 614, column: 9, scope: !154050, inlinedAt: !154051)
!154050 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[u32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSmEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154051 = !DILocation(line: 609, column: 14, scope: !154052, inlinedAt: !154053)
!154052 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[u32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSmEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154053 = !DILocation(line: 296, column: 20, scope: !154054, inlinedAt: !154055)
!154054 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[u32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSmEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154055 = !DILocation(line: 1942, column: 18, scope: !154056, inlinedAt: !154057)
!154056 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[u32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSmEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154057 = !DILocation(line: 1841, column: 76, scope: !154058, inlinedAt: !154059)
!154058 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[u32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSmEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154059 = !DILocation(line: 3756, column: 14, scope: !154060, inlinedAt: !154061)
!154060 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[u32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSmEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154061 = !DILocation(line: 3831, column: 23, scope: !154005, inlinedAt: !154006)
!154062 = !DILocation(line: 272, column: 9, scope: !154001, inlinedAt: !154002)
!154063 = !DILocation(line: 273, column: 60, scope: !154064)
!154064 = distinct !DILexicalBlock(scope: !153999, file: !5557, line: 272, column: 37)
!154065 = !DILocation(line: 273, column: 52, scope: !154064)
!154066 = !DILocation(line: 273, column: 47, scope: !154064)
!154067 = !DILocation(line: 275, column: 43, scope: !154068)
!154068 = distinct !DILexicalBlock(scope: !154064, file: !5557, line: 273, column: 37)
!154069 = !DILocation(line: 272, column: 10, scope: !154070, inlinedAt: !154071)
!154070 = distinct !DISubprogram(name: "index<&[u32]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSmE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154071 = !DILocation(line: 19, column: 15, scope: !154072, inlinedAt: !154074)
!154072 = !DILexicalBlockFile(scope: !154073, file: !1681, discriminator: 2)
!154073 = distinct !DISubprogram(name: "index<&[u32], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSmINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154074 = !DILocation(line: 3831, column: 9, scope: !154075, inlinedAt: !154077)
!154075 = !DILexicalBlockFile(scope: !154076, file: !362, discriminator: 2)
!154076 = distinct !DISubprogram(name: "index<&[u32], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSmEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154077 = !DILocation(line: 278, column: 67, scope: !154068)
!154078 = !DILocation(line: 614, column: 9, scope: !154079, inlinedAt: !154080)
!154079 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[u32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSmECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154080 = !DILocation(line: 609, column: 14, scope: !154081, inlinedAt: !154083)
!154081 = !DILexicalBlockFile(scope: !154082, file: !1901, discriminator: 2)
!154082 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[u32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSmECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154083 = !DILocation(line: 296, column: 20, scope: !154084, inlinedAt: !154086)
!154084 = !DILexicalBlockFile(scope: !154085, file: !1901, discriminator: 2)
!154085 = distinct !DISubprogram(name: "ptr<&[u32], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSmE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154086 = !DILocation(line: 1942, column: 18, scope: !154087, inlinedAt: !154089)
!154087 = !DILexicalBlockFile(scope: !154088, file: !362, discriminator: 2)
!154088 = distinct !DISubprogram(name: "as_ptr<&[u32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSmE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154089 = !DILocation(line: 1841, column: 76, scope: !154090, inlinedAt: !154092)
!154090 = !DILexicalBlockFile(scope: !154091, file: !362, discriminator: 2)
!154091 = distinct !DISubprogram(name: "as_slice<&[u32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSmE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154092 = !DILocation(line: 3756, column: 14, scope: !154093, inlinedAt: !154095)
!154093 = !DILexicalBlockFile(scope: !154094, file: !362, discriminator: 2)
!154094 = distinct !DISubprogram(name: "deref<&[u32], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSmENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154095 = !DILocation(line: 3831, column: 23, scope: !154075, inlinedAt: !154077)
!154096 = !DILocation(line: 272, column: 9, scope: !154070, inlinedAt: !154071)
!154097 = !DILocation(line: 278, column: 61, scope: !154068)
!154098 = !DILocation(line: 278, column: 41, scope: !154068)
!154099 = !DILocation(line: 276, column: 41, scope: !154068)
!154100 = !DILocation(line: 277, column: 41, scope: !154068)
!154101 = !DILocation(line: 0, scope: !154068)
!154102 = !DILocation(line: 280, column: 40, scope: !154068)
!154103 = distinct !{!154103, !153454}
!154104 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !154105)
!154105 = !DILocation(line: 866, column: 14, scope: !154106, inlinedAt: !154107)
!154106 = !DILexicalBlockFile(scope: !153978, file: !1698, discriminator: 6)
!154107 = !DILocation(line: 304, column: 47, scope: !154108)
!154108 = !DILexicalBlockFile(scope: !154109, file: !5557, discriminator: 2)
!154109 = distinct !DILexicalBlock(scope: !153991, file: !5557, line: 304, column: 37)
!154110 = !DILocation(line: 281, column: 65, scope: !154068)
!154111 = !DILocation(line: 1841, column: 86, scope: !154091, inlinedAt: !154112)
!154112 = !DILocation(line: 3756, column: 14, scope: !154113, inlinedAt: !154114)
!154113 = !DILexicalBlockFile(scope: !154094, file: !362, discriminator: 4)
!154114 = !DILocation(line: 3831, column: 23, scope: !154115, inlinedAt: !154116)
!154115 = !DILexicalBlockFile(scope: !154076, file: !362, discriminator: 4)
!154116 = !DILocation(line: 281, column: 64, scope: !154068)
!154117 = !DILocation(line: 272, column: 10, scope: !154070, inlinedAt: !154118)
!154118 = !DILocation(line: 19, column: 15, scope: !154119, inlinedAt: !154120)
!154119 = !DILexicalBlockFile(scope: !154073, file: !1681, discriminator: 4)
!154120 = !DILocation(line: 3831, column: 9, scope: !154115, inlinedAt: !154116)
!154121 = !DILocation(line: 1917, column: 50, scope: !153974, inlinedAt: !154122)
!154122 = !DILocation(line: 781, column: 12, scope: !154123, inlinedAt: !154105)
!154123 = !DILexicalBlockFile(scope: !153976, file: !1698, discriminator: 6)
!154124 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !154125)
!154125 = !DILocation(line: 214, column: 28, scope: !154126, inlinedAt: !154127)
!154126 = !DILexicalBlockFile(scope: !153995, file: !1698, discriminator: 6)
!154127 = !DILocation(line: 784, column: 35, scope: !154128, inlinedAt: !154105)
!154128 = !DILexicalBlockFile(scope: !154129, file: !1698, discriminator: 6)
!154129 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!154130 = !DILocation(line: 305, column: 55, scope: !154131)
!154131 = distinct !DILexicalBlock(scope: !154109, file: !5557, line: 304, column: 37)
!154132 = !DILocation(line: 781, column: 12, scope: !153976, inlinedAt: !154133)
!154133 = !DILocation(line: 866, column: 14, scope: !154134, inlinedAt: !154135)
!154134 = !DILexicalBlockFile(scope: !153978, file: !1698, discriminator: 8)
!154135 = !DILocation(line: 307, column: 51, scope: !154136)
!154136 = !DILexicalBlockFile(scope: !154137, file: !5557, discriminator: 2)
!154137 = distinct !DILexicalBlock(scope: !154138, file: !5557, line: 307, column: 41)
!154138 = distinct !DILexicalBlock(scope: !154139, file: !5557, line: 306, column: 41)
!154139 = distinct !DILexicalBlock(scope: !154131, file: !5557, line: 305, column: 41)
!154140 = !DILocation(line: 328, column: 51, scope: !154141)
!154141 = distinct !DILexicalBlock(scope: !154042, file: !5557, line: 327, column: 33)
!154142 = !DILocation(line: 329, column: 51, scope: !154143)
!154143 = distinct !DILexicalBlock(scope: !154141, file: !5557, line: 328, column: 37)
!154144 = !DILocation(line: 89, column: 24, scope: !154145, inlinedAt: !154147)
!154145 = distinct !DILexicalBlock(scope: !154146, file: !1681, line: 87, column: 5)
!154146 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154147 = !DILocation(line: 441, column: 24, scope: !154148, inlinedAt: !154149)
!154148 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSmE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154149 = !DILocation(line: 19, column: 15, scope: !154150, inlinedAt: !154152)
!154150 = !DILexicalBlockFile(scope: !154151, file: !1681, discriminator: 12)
!154151 = distinct !DISubprogram(name: "index<u32, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154152 = !DILocation(line: 390, column: 9, scope: !154153, inlinedAt: !154154)
!154153 = distinct !DISubprogram(name: "index<u32, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154154 = !DILocation(line: 330, column: 51, scope: !154155)
!154155 = distinct !DILexicalBlock(scope: !154143, file: !5557, line: 329, column: 37)
!154156 = !DILocation(line: 26, column: 9, scope: !154157, inlinedAt: !154158)
!154157 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrmE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154158 = !DILocation(line: 336, column: 49, scope: !154159)
!154159 = distinct !DILexicalBlock(scope: !154155, file: !5557, line: 330, column: 37)
!154160 = !DILocation(line: 961, column: 18, scope: !154161, inlinedAt: !154162)
!154161 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154162 = !DILocation(line: 336, column: 55, scope: !154159)
!154163 = !DILocation(line: 552, column: 14, scope: !154164, inlinedAt: !154165)
!154164 = distinct !DISubprogram(name: "copy_nonoverlapping<u32>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingmECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154165 = !DILocation(line: 334, column: 41, scope: !154159)
!154166 = !DILocation(line: 341, column: 29, scope: !153982)
!154167 = !DILocation(line: 341, column: 29, scope: !153971)
!154168 = !DILocation(line: 341, column: 29, scope: !153962)
!154169 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !154170)
!154170 = !DILocation(line: 214, column: 28, scope: !154171, inlinedAt: !154172)
!154171 = !DILexicalBlockFile(scope: !153995, file: !1698, discriminator: 10)
!154172 = !DILocation(line: 784, column: 35, scope: !154173, inlinedAt: !154038)
!154173 = !DILexicalBlockFile(scope: !154174, file: !1698, discriminator: 10)
!154174 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!154175 = !DILocation(line: 898, column: 17, scope: !153993, inlinedAt: !154176)
!154176 = !DILocation(line: 214, column: 28, scope: !154177, inlinedAt: !154178)
!154177 = !DILexicalBlockFile(scope: !153995, file: !1698, discriminator: 8)
!154178 = !DILocation(line: 784, column: 35, scope: !154179, inlinedAt: !154133)
!154179 = !DILexicalBlockFile(scope: !154180, file: !1698, discriminator: 8)
!154180 = distinct !DILexicalBlock(scope: !153976, file: !1698, line: 782, column: 13)
!154181 = !DILocation(line: 308, column: 73, scope: !154182)
!154182 = distinct !DILexicalBlock(scope: !154137, file: !5557, line: 307, column: 41)
!154183 = !DILocation(line: 272, column: 10, scope: !154001, inlinedAt: !154184)
!154184 = !DILocation(line: 19, column: 15, scope: !154185, inlinedAt: !154186)
!154185 = !DILexicalBlockFile(scope: !154003, file: !1681, discriminator: 6)
!154186 = !DILocation(line: 3831, column: 9, scope: !154187, inlinedAt: !154188)
!154187 = !DILexicalBlockFile(scope: !154005, file: !362, discriminator: 6)
!154188 = !DILocation(line: 308, column: 72, scope: !154182)
!154189 = !DILocation(line: 272, column: 9, scope: !154001, inlinedAt: !154184)
!154190 = !DILocation(line: 309, column: 68, scope: !154191)
!154191 = distinct !DILexicalBlock(scope: !154182, file: !5557, line: 308, column: 45)
!154192 = !DILocation(line: 309, column: 60, scope: !154191)
!154193 = !DILocation(line: 309, column: 55, scope: !154191)
!154194 = !DILocation(line: 310, column: 51, scope: !154195)
!154195 = distinct !DILexicalBlock(scope: !154191, file: !5557, line: 309, column: 45)
!154196 = !DILocation(line: 320, column: 77, scope: !154195)
!154197 = !DILocation(line: 1841, column: 86, scope: !154091, inlinedAt: !154198)
!154198 = !DILocation(line: 3756, column: 14, scope: !154199, inlinedAt: !154200)
!154199 = !DILexicalBlockFile(scope: !154094, file: !362, discriminator: 10)
!154200 = !DILocation(line: 3831, column: 23, scope: !154201, inlinedAt: !154202)
!154201 = !DILexicalBlockFile(scope: !154076, file: !362, discriminator: 10)
!154202 = !DILocation(line: 320, column: 76, scope: !154195)
!154203 = !DILocation(line: 272, column: 10, scope: !154070, inlinedAt: !154204)
!154204 = !DILocation(line: 19, column: 15, scope: !154205, inlinedAt: !154206)
!154205 = !DILexicalBlockFile(scope: !154073, file: !1681, discriminator: 8)
!154206 = !DILocation(line: 3831, column: 9, scope: !154207, inlinedAt: !154208)
!154207 = !DILexicalBlockFile(scope: !154076, file: !362, discriminator: 8)
!154208 = !DILocation(line: 313, column: 75, scope: !154195)
!154209 = !DILocation(line: 614, column: 9, scope: !154079, inlinedAt: !154210)
!154210 = !DILocation(line: 609, column: 14, scope: !154211, inlinedAt: !154212)
!154211 = !DILexicalBlockFile(scope: !154082, file: !1901, discriminator: 8)
!154212 = !DILocation(line: 296, column: 20, scope: !154213, inlinedAt: !154214)
!154213 = !DILexicalBlockFile(scope: !154085, file: !1901, discriminator: 8)
!154214 = !DILocation(line: 1942, column: 18, scope: !154215, inlinedAt: !154216)
!154215 = !DILexicalBlockFile(scope: !154088, file: !362, discriminator: 8)
!154216 = !DILocation(line: 1841, column: 76, scope: !154217, inlinedAt: !154218)
!154217 = !DILexicalBlockFile(scope: !154091, file: !362, discriminator: 8)
!154218 = !DILocation(line: 3756, column: 14, scope: !154219, inlinedAt: !154220)
!154219 = !DILexicalBlockFile(scope: !154094, file: !362, discriminator: 8)
!154220 = !DILocation(line: 3831, column: 23, scope: !154207, inlinedAt: !154208)
!154221 = !DILocation(line: 272, column: 9, scope: !154070, inlinedAt: !154204)
!154222 = !DILocation(line: 313, column: 69, scope: !154195)
!154223 = !DILocation(line: 313, column: 49, scope: !154195)
!154224 = !DILocation(line: 311, column: 49, scope: !154195)
!154225 = !DILocation(line: 312, column: 49, scope: !154195)
!154226 = !DILocation(line: 0, scope: !154195)
!154227 = !DILocation(line: 272, column: 10, scope: !154070, inlinedAt: !154228)
!154228 = !DILocation(line: 19, column: 15, scope: !154229, inlinedAt: !154230)
!154229 = !DILexicalBlockFile(scope: !154073, file: !1681, discriminator: 10)
!154230 = !DILocation(line: 3831, column: 9, scope: !154201, inlinedAt: !154202)
!154231 = distinct !{!154231, !153454}
!154232 = !DILocation(line: 614, column: 9, scope: !154079, inlinedAt: !154233)
!154233 = !DILocation(line: 609, column: 14, scope: !154234, inlinedAt: !154235)
!154234 = !DILexicalBlockFile(scope: !154082, file: !1901, discriminator: 10)
!154235 = !DILocation(line: 296, column: 20, scope: !154236, inlinedAt: !154237)
!154236 = !DILexicalBlockFile(scope: !154085, file: !1901, discriminator: 10)
end_hunk_12
begin_hunk_13_@llvm.vector.reduce.add.v2i64
!154476 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !154477)
!154477 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !154470)
!154478 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !154470)
!154479 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::UInt64Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes10UInt64TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154480 = !DILocation(line: 225, column: 45, scope: !154479)
!154481 = !DILocation(line: 225, column: 37, scope: !154479)
!154482 = !DILocation(line: 226, column: 35, scope: !154483)
!154483 = distinct !DILexicalBlock(scope: !154479, file: !5557, line: 225, column: 21)
!154484 = !DILocation(line: 226, column: 63, scope: !154483)
!154485 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !154486)
!154486 = distinct !DILocation(line: 226, column: 59, scope: !154483)
!154487 = !DILocation(line: 227, column: 38, scope: !154488)
!154488 = distinct !DILexicalBlock(scope: !154483, file: !5557, line: 226, column: 21)
!154489 = !DILocation(line: 229, column: 42, scope: !154490)
!154490 = distinct !DILexicalBlock(scope: !154488, file: !5557, line: 227, column: 21)
!154491 = !DILocation(line: 446, column: 20, scope: !154492, inlinedAt: !154495)
!154492 = distinct !DILexicalBlock(scope: !154493, file: !153176, line: 445, column: 17)
!154493 = distinct !DILexicalBlock(scope: !154494, file: !153176, line: 444, column: 17)
!154494 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154495 = !DILocation(line: 59, column: 14, scope: !154496, inlinedAt: !154497)
!154496 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154497 = !DILocation(line: 229, column: 38, scope: !154498)
!154498 = !DILexicalBlockFile(scope: !154499, file: !5557, discriminator: 2)
!154499 = distinct !DILexicalBlock(scope: !154490, file: !5557, line: 229, column: 21)
!154500 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !154501)
!154501 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !154502)
!154502 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !154503)
!154503 = distinct !DILocation(line: 439, column: 9, scope: !154504, inlinedAt: !154505)
!154504 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154505 = !DILocation(line: 229, column: 52, scope: !154490)
!154506 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !154501)
!154507 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !154501)
!154508 = !DILocation(line: 936, column: 11, scope: !154509, inlinedAt: !154511)
!154509 = distinct !DILexicalBlock(scope: !154510, file: !52151, line: 934, column: 5)
!154510 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154511 = distinct !DILocation(line: 154, column: 11, scope: !154512, inlinedAt: !154514)
!154512 = distinct !DILexicalBlock(scope: !154513, file: !52151, line: 153, column: 5)
!154513 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154514 = distinct !DILocation(line: 113, column: 5, scope: !154515, inlinedAt: !154516)
!154515 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt64Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes10UInt64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154516 = !DILocation(line: 234, column: 64, scope: !154517)
!154517 = distinct !DILexicalBlock(scope: !154518, file: !5557, line: 230, column: 25)
!154518 = distinct !DILexicalBlock(scope: !154499, file: !5557, line: 229, column: 21)
!154519 = !DILocation(line: 229, column: 25, scope: !154499)
!154520 = !DILocation(line: 230, column: 42, scope: !154518)
!154521 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !154522)
!154522 = distinct !DILocation(line: 230, column: 65, scope: !154518)
!154523 = !DILocation(line: 230, column: 65, scope: !154518)
!154524 = !DILocation(line: 234, column: 29, scope: !154517)
!154525 = !DILocation(line: 113, column: 5, scope: !154515, inlinedAt: !154516)
!154526 = !DILocation(line: 113, column: 17, scope: !154515, inlinedAt: !154516)
!154527 = !DILocation(line: 431, column: 9, scope: !154528, inlinedAt: !154526)
!154528 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt64Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes10UInt64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154529 = !{!154530, !154532}
!154530 = distinct !{!154530, !154531, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!154531 = distinct !{!154531, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!154532 = distinct !{!154532, !154531, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!154533 = !DILocation(line: 937, column: 20, scope: !154509, inlinedAt: !154511)
!154534 = !{!154535, !154530}
!154535 = distinct !{!154535, !154536, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!154536 = distinct !{!154536, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes10UInt64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!154537 = !DILocation(line: 266, column: 18, scope: !154538, inlinedAt: !154539)
!154538 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154539 = distinct !DILocation(line: 691, column: 30, scope: !154540, inlinedAt: !154541)
!154540 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154541 = distinct !DILocation(line: 978, column: 28, scope: !154542, inlinedAt: !154543)
!154542 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154543 = distinct !DILocation(line: 940, column: 24, scope: !154544, inlinedAt: !154511)
!154544 = distinct !DILexicalBlock(scope: !154509, file: !52151, line: 937, column: 9)
!154545 = !DILocation(line: 81, column: 9, scope: !154546, inlinedAt: !154547)
!154546 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154547 = distinct !DILocation(line: 185, column: 31, scope: !154548, inlinedAt: !154549)
!154548 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154549 = distinct !DILocation(line: 407, column: 30, scope: !154550, inlinedAt: !154551)
!154550 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154551 = distinct !DILocation(line: 574, column: 17, scope: !154552, inlinedAt: !154553)
!154552 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154553 = distinct !DILocation(line: 978, column: 64, scope: !154542, inlinedAt: !154543)
!154554 = !DILocation(line: 898, column: 17, scope: !154555, inlinedAt: !154556)
!154555 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154556 = distinct !DILocation(line: 979, column: 49, scope: !154542, inlinedAt: !154543)
!154557 = !DILocation(line: 2511, column: 13, scope: !154558, inlinedAt: !154559)
!154558 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154559 = !DILocation(line: 450, column: 43, scope: !154560, inlinedAt: !154495)
!154560 = distinct !DILexicalBlock(scope: !154492, file: !153176, line: 447, column: 21)
!154561 = !DILocation(line: 451, column: 21, scope: !154560, inlinedAt: !154495)
!154562 = !DILocation(line: 945, column: 2, scope: !154510, inlinedAt: !154511)
!154563 = !DILocation(line: 161, column: 2, scope: !154513, inlinedAt: !154514)
!154564 = !DILocation(line: 113, column: 49, scope: !154515, inlinedAt: !154516)
!154565 = !DILocation(line: 113, column: 51, scope: !154515, inlinedAt: !154516)
!154566 = !DILocation(line: 343, column: 21, scope: !154517)
!154567 = !DILocation(line: 344, column: 18, scope: !154479)
!154568 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !154569)
!154569 = distinct !DILocation(line: 158, column: 19, scope: !154512, inlinedAt: !154514)
!154570 = !{!154532}
!154571 = !DILocation(line: 446, column: 20, scope: !154572, inlinedAt: !154574)
!154572 = distinct !DILexicalBlock(scope: !154573, file: !153176, line: 445, column: 17)
!154573 = distinct !DILexicalBlock(scope: !154494, file: !153176, line: 444, column: 17)
!154574 = !DILocation(line: 59, column: 14, scope: !154575, inlinedAt: !154576)
!154575 = !DILexicalBlockFile(scope: !154496, file: !153176, discriminator: 2)
!154576 = !DILocation(line: 255, column: 35, scope: !154577)
!154577 = !DILexicalBlockFile(scope: !154578, file: !5557, discriminator: 2)
!154578 = distinct !DILexicalBlock(scope: !154579, file: !5557, line: 255, column: 25)
!154579 = distinct !DILexicalBlock(scope: !154517, file: !5557, line: 234, column: 25)
!154580 = !DILocation(line: 2511, column: 13, scope: !154558, inlinedAt: !154581)
!154581 = !DILocation(line: 450, column: 43, scope: !154582, inlinedAt: !154574)
!154582 = !DILexicalBlockFile(scope: !154583, file: !153176, discriminator: 2)
!154583 = distinct !DILexicalBlock(scope: !154572, file: !153176, line: 447, column: 21)
!154584 = !DILocation(line: 451, column: 21, scope: !154583, inlinedAt: !154574)
!154585 = !DILocation(line: 257, column: 49, scope: !154586)
!154586 = distinct !DILexicalBlock(scope: !154587, file: !5557, line: 256, column: 29)
!154587 = distinct !DILexicalBlock(scope: !154578, file: !5557, line: 255, column: 25)
!154588 = !DILocation(line: 259, column: 39, scope: !154589)
!154589 = distinct !DILexicalBlock(scope: !154586, file: !5557, line: 257, column: 29)
!154590 = !DILocation(line: 446, column: 20, scope: !154591, inlinedAt: !154593)
!154591 = distinct !DILexicalBlock(scope: !154592, file: !153176, line: 445, column: 17)
!154592 = distinct !DILexicalBlock(scope: !154494, file: !153176, line: 444, column: 17)
!154593 = !DILocation(line: 59, column: 14, scope: !154594, inlinedAt: !154595)
!154594 = !DILexicalBlockFile(scope: !154496, file: !153176, discriminator: 4)
!154595 = !DILocation(line: 259, column: 39, scope: !154596)
!154596 = !DILexicalBlockFile(scope: !154597, file: !5557, discriminator: 2)
!154597 = distinct !DILexicalBlock(scope: !154589, file: !5557, line: 259, column: 29)
!154598 = !DILocation(line: 256, column: 45, scope: !154587)
!154599 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !154600)
!154600 = distinct !DILocation(line: 256, column: 63, scope: !154587)
!154601 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !154602)
!154602 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !154603)
!154603 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !154604)
!154604 = distinct !DILocation(line: 439, column: 9, scope: !154504, inlinedAt: !154605)
!154605 = !DILocation(line: 259, column: 55, scope: !154589)
!154606 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !154602)
!154607 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !154602)
!154608 = !DILocation(line: 260, column: 49, scope: !154609)
!154609 = distinct !DILexicalBlock(scope: !154597, file: !5557, line: 259, column: 29)
!154610 = !DILocation(line: 268, column: 37, scope: !154611)
!154611 = distinct !DILexicalBlock(scope: !154609, file: !5557, line: 260, column: 33)
!154612 = !DILocation(line: 2511, column: 13, scope: !154558, inlinedAt: !154613)
!154613 = !DILocation(line: 450, column: 43, scope: !154614, inlinedAt: !154593)
!154614 = !DILexicalBlockFile(scope: !154615, file: !153176, discriminator: 4)
!154615 = distinct !DILexicalBlock(scope: !154591, file: !153176, line: 447, column: 21)
!154616 = !DILocation(line: 451, column: 21, scope: !154615, inlinedAt: !154593)
!154617 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !154618)
!154618 = distinct !DILocation(line: 260, column: 67, scope: !154609)
!154619 = !DILocation(line: 269, column: 37, scope: !154620)
!154620 = distinct !DILexicalBlock(scope: !154611, file: !5557, line: 268, column: 33)
!154621 = !DILocation(line: 269, column: 52, scope: !154620)
!154622 = !DILocation(line: 1917, column: 50, scope: !154623, inlinedAt: !154624)
!154623 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154624 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154626)
!154625 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154626 = !DILocation(line: 866, column: 14, scope: !154627, inlinedAt: !154628)
!154627 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154628 = !DILocation(line: 271, column: 43, scope: !154629)
!154629 = !DILexicalBlockFile(scope: !154630, file: !5557, discriminator: 2)
!154630 = distinct !DILexicalBlock(scope: !154631, file: !5557, line: 271, column: 33)
!154631 = distinct !DILexicalBlock(scope: !154632, file: !5557, line: 270, column: 33)
!154632 = distinct !DILexicalBlock(scope: !154620, file: !5557, line: 269, column: 33)
!154633 = !DILocation(line: 289, column: 37, scope: !154631)
!154634 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154635)
!154635 = !DILocation(line: 866, column: 14, scope: !154636, inlinedAt: !154637)
!154636 = !DILexicalBlockFile(scope: !154627, file: !1698, discriminator: 2)
!154637 = !DILocation(line: 292, column: 47, scope: !154638)
!154638 = !DILexicalBlockFile(scope: !154639, file: !5557, discriminator: 2)
!154639 = distinct !DILexicalBlock(scope: !154640, file: !5557, line: 292, column: 37)
!154640 = distinct !DILexicalBlock(scope: !154631, file: !5557, line: 289, column: 33)
!154641 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154643)
!154642 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154643 = !DILocation(line: 214, column: 28, scope: !154644, inlinedAt: !154645)
!154644 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154645 = !DILocation(line: 784, column: 35, scope: !154646, inlinedAt: !154626)
!154646 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154647 = !DILocation(line: 272, column: 65, scope: !154648)
!154648 = distinct !DILexicalBlock(scope: !154630, file: !5557, line: 271, column: 33)
!154649 = !DILocation(line: 272, column: 10, scope: !154650, inlinedAt: !154651)
!154650 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u64], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSyEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154651 = !DILocation(line: 19, column: 15, scope: !154652, inlinedAt: !154653)
!154652 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u64], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSyEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154653 = !DILocation(line: 3831, column: 9, scope: !154654, inlinedAt: !154655)
!154654 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u64], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSyEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154655 = !DILocation(line: 272, column: 64, scope: !154648)
!154656 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154657)
!154657 = !DILocation(line: 866, column: 14, scope: !154658, inlinedAt: !154659)
!154658 = !DILexicalBlockFile(scope: !154627, file: !1698, discriminator: 4)
!154659 = !DILocation(line: 294, column: 51, scope: !154660)
!154660 = !DILexicalBlockFile(scope: !154661, file: !5557, discriminator: 2)
!154661 = distinct !DILexicalBlock(scope: !154662, file: !5557, line: 294, column: 41)
!154662 = distinct !DILexicalBlock(scope: !154663, file: !5557, line: 293, column: 41)
!154663 = distinct !DILexicalBlock(scope: !154639, file: !5557, line: 292, column: 37)
!154664 = !DILocation(line: 298, column: 70, scope: !154665)
!154665 = distinct !DILexicalBlock(scope: !154661, file: !5557, line: 294, column: 41)
!154666 = !DILocation(line: 299, column: 68, scope: !154665)
!154667 = !DILocation(line: 252, column: 39, scope: !154668, inlinedAt: !154669)
!154668 = distinct !DISubprogram(name: "get_unchecked<u64>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSyE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154669 = !DILocation(line: 646, column: 26, scope: !154670, inlinedAt: !154671)
!154670 = distinct !DISubprogram(name: "get_unchecked<u64, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSy13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154671 = !DILocation(line: 299, column: 54, scope: !154665)
!154672 = !DILocation(line: 252, column: 13, scope: !154668, inlinedAt: !154669)
!154673 = !DILocation(line: 253, column: 13, scope: !154668, inlinedAt: !154669)
!154674 = !DILocation(line: 298, column: 69, scope: !154665)
!154675 = !DILocation(line: 298, column: 49, scope: !154665)
!154676 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154677)
!154677 = !DILocation(line: 214, column: 28, scope: !154678, inlinedAt: !154679)
!154678 = !DILexicalBlockFile(scope: !154644, file: !1698, discriminator: 2)
!154679 = !DILocation(line: 784, column: 35, scope: !154680, inlinedAt: !154635)
!154680 = !DILexicalBlockFile(scope: !154681, file: !1698, discriminator: 2)
!154681 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154682 = !DILocation(line: 1917, column: 50, scope: !154623, inlinedAt: !154683)
!154683 = !DILocation(line: 781, column: 12, scope: !154684, inlinedAt: !154635)
!154684 = !DILexicalBlockFile(scope: !154625, file: !1698, discriminator: 2)
!154685 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154686)
!154686 = !DILocation(line: 866, column: 14, scope: !154687, inlinedAt: !154688)
!154687 = !DILexicalBlockFile(scope: !154627, file: !1698, discriminator: 10)
!154688 = !DILocation(line: 327, column: 43, scope: !154689)
!154689 = !DILexicalBlockFile(scope: !154690, file: !5557, discriminator: 2)
!154690 = distinct !DILexicalBlock(scope: !154640, file: !5557, line: 327, column: 33)
!154691 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154692)
!154692 = !DILocation(line: 214, column: 28, scope: !154693, inlinedAt: !154694)
!154693 = !DILexicalBlockFile(scope: !154644, file: !1698, discriminator: 4)
!154694 = !DILocation(line: 784, column: 35, scope: !154695, inlinedAt: !154657)
!154695 = !DILexicalBlockFile(scope: !154696, file: !1698, discriminator: 4)
!154696 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154697 = !DILocation(line: 614, column: 9, scope: !154698, inlinedAt: !154699)
!154698 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[u64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSyEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154699 = !DILocation(line: 609, column: 14, scope: !154700, inlinedAt: !154701)
!154700 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[u64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSyEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154701 = !DILocation(line: 296, column: 20, scope: !154702, inlinedAt: !154703)
!154702 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[u64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSyEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154703 = !DILocation(line: 1942, column: 18, scope: !154704, inlinedAt: !154705)
!154704 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[u64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSyEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154705 = !DILocation(line: 1841, column: 76, scope: !154706, inlinedAt: !154707)
!154706 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[u64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSyEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154707 = !DILocation(line: 3756, column: 14, scope: !154708, inlinedAt: !154709)
!154708 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[u64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSyEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154709 = !DILocation(line: 3831, column: 23, scope: !154654, inlinedAt: !154655)
!154710 = !DILocation(line: 272, column: 9, scope: !154650, inlinedAt: !154651)
!154711 = !DILocation(line: 273, column: 60, scope: !154712)
!154712 = distinct !DILexicalBlock(scope: !154648, file: !5557, line: 272, column: 37)
!154713 = !DILocation(line: 273, column: 52, scope: !154712)
!154714 = !DILocation(line: 273, column: 47, scope: !154712)
!154715 = !DILocation(line: 275, column: 43, scope: !154716)
!154716 = distinct !DILexicalBlock(scope: !154712, file: !5557, line: 273, column: 37)
!154717 = !DILocation(line: 272, column: 10, scope: !154718, inlinedAt: !154719)
!154718 = distinct !DISubprogram(name: "index<&[u64]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSyE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154719 = !DILocation(line: 19, column: 15, scope: !154720, inlinedAt: !154722)
!154720 = !DILexicalBlockFile(scope: !154721, file: !1681, discriminator: 2)
!154721 = distinct !DISubprogram(name: "index<&[u64], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSyINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154722 = !DILocation(line: 3831, column: 9, scope: !154723, inlinedAt: !154725)
!154723 = !DILexicalBlockFile(scope: !154724, file: !362, discriminator: 2)
!154724 = distinct !DISubprogram(name: "index<&[u64], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSyEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154725 = !DILocation(line: 278, column: 67, scope: !154716)
!154726 = !DILocation(line: 614, column: 9, scope: !154727, inlinedAt: !154728)
!154727 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[u64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSyECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154728 = !DILocation(line: 609, column: 14, scope: !154729, inlinedAt: !154731)
!154729 = !DILexicalBlockFile(scope: !154730, file: !1901, discriminator: 2)
!154730 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[u64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSyECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154731 = !DILocation(line: 296, column: 20, scope: !154732, inlinedAt: !154734)
!154732 = !DILexicalBlockFile(scope: !154733, file: !1901, discriminator: 2)
!154733 = distinct !DISubprogram(name: "ptr<&[u64], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSyE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154734 = !DILocation(line: 1942, column: 18, scope: !154735, inlinedAt: !154737)
!154735 = !DILexicalBlockFile(scope: !154736, file: !362, discriminator: 2)
!154736 = distinct !DISubprogram(name: "as_ptr<&[u64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSyE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154737 = !DILocation(line: 1841, column: 76, scope: !154738, inlinedAt: !154740)
!154738 = !DILexicalBlockFile(scope: !154739, file: !362, discriminator: 2)
!154739 = distinct !DISubprogram(name: "as_slice<&[u64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSyE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154740 = !DILocation(line: 3756, column: 14, scope: !154741, inlinedAt: !154743)
!154741 = !DILexicalBlockFile(scope: !154742, file: !362, discriminator: 2)
!154742 = distinct !DISubprogram(name: "deref<&[u64], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSyENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154743 = !DILocation(line: 3831, column: 23, scope: !154723, inlinedAt: !154725)
!154744 = !DILocation(line: 272, column: 9, scope: !154718, inlinedAt: !154719)
!154745 = !DILocation(line: 278, column: 61, scope: !154716)
!154746 = !DILocation(line: 278, column: 41, scope: !154716)
!154747 = !DILocation(line: 276, column: 41, scope: !154716)
!154748 = !DILocation(line: 277, column: 41, scope: !154716)
!154749 = !DILocation(line: 0, scope: !154716)
!154750 = !DILocation(line: 280, column: 40, scope: !154716)
!154751 = distinct !{!154751, !153454}
!154752 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154753)
!154753 = !DILocation(line: 866, column: 14, scope: !154754, inlinedAt: !154755)
!154754 = !DILexicalBlockFile(scope: !154627, file: !1698, discriminator: 6)
!154755 = !DILocation(line: 304, column: 47, scope: !154756)
!154756 = !DILexicalBlockFile(scope: !154757, file: !5557, discriminator: 2)
!154757 = distinct !DILexicalBlock(scope: !154640, file: !5557, line: 304, column: 37)
!154758 = !DILocation(line: 281, column: 65, scope: !154716)
!154759 = !DILocation(line: 1841, column: 86, scope: !154739, inlinedAt: !154760)
!154760 = !DILocation(line: 3756, column: 14, scope: !154761, inlinedAt: !154762)
!154761 = !DILexicalBlockFile(scope: !154742, file: !362, discriminator: 4)
!154762 = !DILocation(line: 3831, column: 23, scope: !154763, inlinedAt: !154764)
!154763 = !DILexicalBlockFile(scope: !154724, file: !362, discriminator: 4)
!154764 = !DILocation(line: 281, column: 64, scope: !154716)
!154765 = !DILocation(line: 272, column: 10, scope: !154718, inlinedAt: !154766)
!154766 = !DILocation(line: 19, column: 15, scope: !154767, inlinedAt: !154768)
!154767 = !DILexicalBlockFile(scope: !154721, file: !1681, discriminator: 4)
!154768 = !DILocation(line: 3831, column: 9, scope: !154763, inlinedAt: !154764)
!154769 = !DILocation(line: 1917, column: 50, scope: !154623, inlinedAt: !154770)
!154770 = !DILocation(line: 781, column: 12, scope: !154771, inlinedAt: !154753)
!154771 = !DILexicalBlockFile(scope: !154625, file: !1698, discriminator: 6)
!154772 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154773)
!154773 = !DILocation(line: 214, column: 28, scope: !154774, inlinedAt: !154775)
!154774 = !DILexicalBlockFile(scope: !154644, file: !1698, discriminator: 6)
!154775 = !DILocation(line: 784, column: 35, scope: !154776, inlinedAt: !154753)
!154776 = !DILexicalBlockFile(scope: !154777, file: !1698, discriminator: 6)
!154777 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154778 = !DILocation(line: 305, column: 55, scope: !154779)
!154779 = distinct !DILexicalBlock(scope: !154757, file: !5557, line: 304, column: 37)
!154780 = !DILocation(line: 781, column: 12, scope: !154625, inlinedAt: !154781)
!154781 = !DILocation(line: 866, column: 14, scope: !154782, inlinedAt: !154783)
!154782 = !DILexicalBlockFile(scope: !154627, file: !1698, discriminator: 8)
!154783 = !DILocation(line: 307, column: 51, scope: !154784)
!154784 = !DILexicalBlockFile(scope: !154785, file: !5557, discriminator: 2)
!154785 = distinct !DILexicalBlock(scope: !154786, file: !5557, line: 307, column: 41)
!154786 = distinct !DILexicalBlock(scope: !154787, file: !5557, line: 306, column: 41)
!154787 = distinct !DILexicalBlock(scope: !154779, file: !5557, line: 305, column: 41)
!154788 = !DILocation(line: 328, column: 51, scope: !154789)
!154789 = distinct !DILexicalBlock(scope: !154690, file: !5557, line: 327, column: 33)
!154790 = !DILocation(line: 329, column: 51, scope: !154791)
!154791 = distinct !DILexicalBlock(scope: !154789, file: !5557, line: 328, column: 37)
!154792 = !DILocation(line: 89, column: 24, scope: !154793, inlinedAt: !154795)
!154793 = distinct !DILexicalBlock(scope: !154794, file: !1681, line: 87, column: 5)
!154794 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckyECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154795 = !DILocation(line: 441, column: 24, scope: !154796, inlinedAt: !154797)
!154796 = distinct !DISubprogram(name: "index<u64>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSyE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154797 = !DILocation(line: 19, column: 15, scope: !154798, inlinedAt: !154800)
!154798 = !DILexicalBlockFile(scope: !154799, file: !1681, discriminator: 12)
!154799 = distinct !DISubprogram(name: "index<u64, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSyINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154800 = !DILocation(line: 390, column: 9, scope: !154801, inlinedAt: !154802)
!154801 = distinct !DISubprogram(name: "index<u64, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAyj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154802 = !DILocation(line: 330, column: 51, scope: !154803)
!154803 = distinct !DILexicalBlock(scope: !154791, file: !5557, line: 329, column: 37)
!154804 = !DILocation(line: 26, column: 9, scope: !154805, inlinedAt: !154806)
!154805 = distinct !DISubprogram(name: "get<u64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtryE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154806 = !DILocation(line: 336, column: 49, scope: !154807)
!154807 = distinct !DILexicalBlock(scope: !154803, file: !5557, line: 330, column: 37)
!154808 = !DILocation(line: 961, column: 18, scope: !154809, inlinedAt: !154810)
!154809 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154810 = !DILocation(line: 336, column: 55, scope: !154807)
!154811 = !DILocation(line: 552, column: 14, scope: !154812, inlinedAt: !154813)
!154812 = distinct !DISubprogram(name: "copy_nonoverlapping<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingyECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!154813 = !DILocation(line: 334, column: 41, scope: !154807)
!154814 = !DILocation(line: 341, column: 29, scope: !154631)
!154815 = !DILocation(line: 341, column: 29, scope: !154620)
!154816 = !DILocation(line: 341, column: 29, scope: !154611)
!154817 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154818)
!154818 = !DILocation(line: 214, column: 28, scope: !154819, inlinedAt: !154820)
!154819 = !DILexicalBlockFile(scope: !154644, file: !1698, discriminator: 10)
!154820 = !DILocation(line: 784, column: 35, scope: !154821, inlinedAt: !154686)
!154821 = !DILexicalBlockFile(scope: !154822, file: !1698, discriminator: 10)
!154822 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154823 = !DILocation(line: 898, column: 17, scope: !154642, inlinedAt: !154824)
!154824 = !DILocation(line: 214, column: 28, scope: !154825, inlinedAt: !154826)
!154825 = !DILexicalBlockFile(scope: !154644, file: !1698, discriminator: 8)
!154826 = !DILocation(line: 784, column: 35, scope: !154827, inlinedAt: !154781)
!154827 = !DILexicalBlockFile(scope: !154828, file: !1698, discriminator: 8)
!154828 = distinct !DILexicalBlock(scope: !154625, file: !1698, line: 782, column: 13)
!154829 = !DILocation(line: 308, column: 73, scope: !154830)
!154830 = distinct !DILexicalBlock(scope: !154785, file: !5557, line: 307, column: 41)
!154831 = !DILocation(line: 272, column: 10, scope: !154650, inlinedAt: !154832)
!154832 = !DILocation(line: 19, column: 15, scope: !154833, inlinedAt: !154834)
!154833 = !DILexicalBlockFile(scope: !154652, file: !1681, discriminator: 6)
!154834 = !DILocation(line: 3831, column: 9, scope: !154835, inlinedAt: !154836)
!154835 = !DILexicalBlockFile(scope: !154654, file: !362, discriminator: 6)
!154836 = !DILocation(line: 308, column: 72, scope: !154830)
!154837 = !DILocation(line: 272, column: 9, scope: !154650, inlinedAt: !154832)
!154838 = !DILocation(line: 309, column: 68, scope: !154839)
!154839 = distinct !DILexicalBlock(scope: !154830, file: !5557, line: 308, column: 45)
!154840 = !DILocation(line: 309, column: 60, scope: !154839)
!154841 = !DILocation(line: 309, column: 55, scope: !154839)
!154842 = !DILocation(line: 310, column: 51, scope: !154843)
!154843 = distinct !DILexicalBlock(scope: !154839, file: !5557, line: 309, column: 45)
!154844 = !DILocation(line: 320, column: 77, scope: !154843)
!154845 = !DILocation(line: 1841, column: 86, scope: !154739, inlinedAt: !154846)
!154846 = !DILocation(line: 3756, column: 14, scope: !154847, inlinedAt: !154848)
!154847 = !DILexicalBlockFile(scope: !154742, file: !362, discriminator: 10)
!154848 = !DILocation(line: 3831, column: 23, scope: !154849, inlinedAt: !154850)
!154849 = !DILexicalBlockFile(scope: !154724, file: !362, discriminator: 10)
!154850 = !DILocation(line: 320, column: 76, scope: !154843)
!154851 = !DILocation(line: 272, column: 10, scope: !154718, inlinedAt: !154852)
!154852 = !DILocation(line: 19, column: 15, scope: !154853, inlinedAt: !154854)
!154853 = !DILexicalBlockFile(scope: !154721, file: !1681, discriminator: 8)
!154854 = !DILocation(line: 3831, column: 9, scope: !154855, inlinedAt: !154856)
!154855 = !DILexicalBlockFile(scope: !154724, file: !362, discriminator: 8)
!154856 = !DILocation(line: 313, column: 75, scope: !154843)
!154857 = !DILocation(line: 614, column: 9, scope: !154727, inlinedAt: !154858)
!154858 = !DILocation(line: 609, column: 14, scope: !154859, inlinedAt: !154860)
!154859 = !DILexicalBlockFile(scope: !154730, file: !1901, discriminator: 8)
!154860 = !DILocation(line: 296, column: 20, scope: !154861, inlinedAt: !154862)
!154861 = !DILexicalBlockFile(scope: !154733, file: !1901, discriminator: 8)
!154862 = !DILocation(line: 1942, column: 18, scope: !154863, inlinedAt: !154864)
!154863 = !DILexicalBlockFile(scope: !154736, file: !362, discriminator: 8)
!154864 = !DILocation(line: 1841, column: 76, scope: !154865, inlinedAt: !154866)
!154865 = !DILexicalBlockFile(scope: !154739, file: !362, discriminator: 8)
!154866 = !DILocation(line: 3756, column: 14, scope: !154867, inlinedAt: !154868)
!154867 = !DILexicalBlockFile(scope: !154742, file: !362, discriminator: 8)
!154868 = !DILocation(line: 3831, column: 23, scope: !154855, inlinedAt: !154856)
!154869 = !DILocation(line: 272, column: 9, scope: !154718, inlinedAt: !154852)
!154870 = !DILocation(line: 313, column: 69, scope: !154843)
!154871 = !DILocation(line: 313, column: 49, scope: !154843)
!154872 = !DILocation(line: 311, column: 49, scope: !154843)
!154873 = !DILocation(line: 312, column: 49, scope: !154843)
!154874 = !DILocation(line: 0, scope: !154843)
!154875 = !DILocation(line: 272, column: 10, scope: !154718, inlinedAt: !154876)
!154876 = !DILocation(line: 19, column: 15, scope: !154877, inlinedAt: !154878)
!154877 = !DILexicalBlockFile(scope: !154721, file: !1681, discriminator: 10)
!154878 = !DILocation(line: 3831, column: 9, scope: !154849, inlinedAt: !154850)
!154879 = distinct !{!154879, !153454}
!154880 = !DILocation(line: 614, column: 9, scope: !154727, inlinedAt: !154881)
!154881 = !DILocation(line: 609, column: 14, scope: !154882, inlinedAt: !154883)
!154882 = !DILexicalBlockFile(scope: !154730, file: !1901, discriminator: 10)
!154883 = !DILocation(line: 296, column: 20, scope: !154884, inlinedAt: !154885)
!154884 = !DILexicalBlockFile(scope: !154733, file: !1901, discriminator: 10)
end_hunk_13
begin_hunk_14_@llvm.vector.reduce.add.v2i64
!155124 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !155125)
!155125 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !155118)
!155126 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !155118)
!155127 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Float16Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float16TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155128 = !DILocation(line: 225, column: 45, scope: !155127)
!155129 = !DILocation(line: 225, column: 37, scope: !155127)
!155130 = !DILocation(line: 226, column: 35, scope: !155131)
!155131 = distinct !DILexicalBlock(scope: !155127, file: !5557, line: 225, column: 21)
!155132 = !DILocation(line: 226, column: 63, scope: !155131)
!155133 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155134)
!155134 = distinct !DILocation(line: 226, column: 59, scope: !155131)
!155135 = !DILocation(line: 227, column: 38, scope: !155136)
!155136 = distinct !DILexicalBlock(scope: !155131, file: !5557, line: 226, column: 21)
!155137 = !DILocation(line: 229, column: 42, scope: !155138)
!155138 = distinct !DILexicalBlock(scope: !155136, file: !5557, line: 227, column: 21)
!155139 = !DILocation(line: 446, column: 20, scope: !155140, inlinedAt: !155143)
!155140 = distinct !DILexicalBlock(scope: !155141, file: !153176, line: 445, column: 17)
!155141 = distinct !DILexicalBlock(scope: !155142, file: !153176, line: 444, column: 17)
!155142 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155143 = !DILocation(line: 59, column: 14, scope: !155144, inlinedAt: !155145)
!155144 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155145 = !DILocation(line: 229, column: 38, scope: !155146)
!155146 = !DILexicalBlockFile(scope: !155147, file: !5557, discriminator: 2)
!155147 = distinct !DILexicalBlock(scope: !155138, file: !5557, line: 229, column: 21)
!155148 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !155149)
!155149 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !155150)
!155150 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !155151)
!155151 = distinct !DILocation(line: 439, column: 9, scope: !155152, inlinedAt: !155153)
!155152 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155153 = !DILocation(line: 229, column: 52, scope: !155138)
!155154 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !155149)
!155155 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !155149)
!155156 = !DILocation(line: 936, column: 11, scope: !155157, inlinedAt: !155159)
!155157 = distinct !DILexicalBlock(scope: !155158, file: !52151, line: 934, column: 5)
!155158 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155159 = distinct !DILocation(line: 154, column: 11, scope: !155160, inlinedAt: !155162)
!155160 = distinct !DILexicalBlock(scope: !155161, file: !52151, line: 153, column: 5)
!155161 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155162 = distinct !DILocation(line: 113, column: 5, scope: !155163, inlinedAt: !155164)
!155163 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float16Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes11Float16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155164 = !DILocation(line: 234, column: 64, scope: !155165)
!155165 = distinct !DILexicalBlock(scope: !155166, file: !5557, line: 230, column: 25)
!155166 = distinct !DILexicalBlock(scope: !155147, file: !5557, line: 229, column: 21)
!155167 = !DILocation(line: 229, column: 25, scope: !155147)
!155168 = !DILocation(line: 230, column: 42, scope: !155166)
!155169 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155170)
!155170 = distinct !DILocation(line: 230, column: 65, scope: !155166)
!155171 = !DILocation(line: 230, column: 65, scope: !155166)
!155172 = !DILocation(line: 234, column: 29, scope: !155165)
!155173 = !DILocation(line: 113, column: 5, scope: !155163, inlinedAt: !155164)
!155174 = !DILocation(line: 113, column: 17, scope: !155163, inlinedAt: !155164)
!155175 = !DILocation(line: 431, column: 9, scope: !155176, inlinedAt: !155174)
!155176 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float16Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes11Float16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155177 = !{!155178, !155180}
!155178 = distinct !{!155178, !155179, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!155179 = distinct !{!155179, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!155180 = distinct !{!155180, !155179, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!155181 = !DILocation(line: 937, column: 20, scope: !155157, inlinedAt: !155159)
!155182 = !{!155183, !155178}
!155183 = distinct !{!155183, !155184, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!155184 = distinct !{!155184, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!155185 = !DILocation(line: 266, column: 18, scope: !155186, inlinedAt: !155187)
!155186 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155187 = distinct !DILocation(line: 691, column: 30, scope: !155188, inlinedAt: !155189)
!155188 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155189 = distinct !DILocation(line: 978, column: 28, scope: !155190, inlinedAt: !155191)
!155190 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155191 = distinct !DILocation(line: 940, column: 24, scope: !155192, inlinedAt: !155159)
!155192 = distinct !DILexicalBlock(scope: !155157, file: !52151, line: 937, column: 9)
!155193 = !DILocation(line: 81, column: 9, scope: !155194, inlinedAt: !155195)
!155194 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155195 = distinct !DILocation(line: 185, column: 31, scope: !155196, inlinedAt: !155197)
!155196 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155197 = distinct !DILocation(line: 407, column: 30, scope: !155198, inlinedAt: !155199)
!155198 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155199 = distinct !DILocation(line: 574, column: 17, scope: !155200, inlinedAt: !155201)
!155200 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155201 = distinct !DILocation(line: 978, column: 64, scope: !155190, inlinedAt: !155191)
!155202 = !DILocation(line: 898, column: 17, scope: !155203, inlinedAt: !155204)
!155203 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155204 = distinct !DILocation(line: 979, column: 49, scope: !155190, inlinedAt: !155191)
!155205 = !DILocation(line: 2511, column: 13, scope: !155206, inlinedAt: !155207)
!155206 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155207 = !DILocation(line: 450, column: 43, scope: !155208, inlinedAt: !155143)
!155208 = distinct !DILexicalBlock(scope: !155140, file: !153176, line: 447, column: 21)
!155209 = !DILocation(line: 451, column: 21, scope: !155208, inlinedAt: !155143)
!155210 = !DILocation(line: 945, column: 2, scope: !155158, inlinedAt: !155159)
!155211 = !DILocation(line: 161, column: 2, scope: !155161, inlinedAt: !155162)
!155212 = !DILocation(line: 113, column: 49, scope: !155163, inlinedAt: !155164)
!155213 = !DILocation(line: 113, column: 51, scope: !155163, inlinedAt: !155164)
!155214 = !DILocation(line: 343, column: 21, scope: !155165)
!155215 = !DILocation(line: 344, column: 18, scope: !155127)
!155216 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !155217)
!155217 = distinct !DILocation(line: 158, column: 19, scope: !155160, inlinedAt: !155162)
!155218 = !{!155180}
!155219 = !DILocation(line: 446, column: 20, scope: !155220, inlinedAt: !155222)
!155220 = distinct !DILexicalBlock(scope: !155221, file: !153176, line: 445, column: 17)
!155221 = distinct !DILexicalBlock(scope: !155142, file: !153176, line: 444, column: 17)
!155222 = !DILocation(line: 59, column: 14, scope: !155223, inlinedAt: !155224)
!155223 = !DILexicalBlockFile(scope: !155144, file: !153176, discriminator: 2)
!155224 = !DILocation(line: 255, column: 35, scope: !155225)
!155225 = !DILexicalBlockFile(scope: !155226, file: !5557, discriminator: 2)
!155226 = distinct !DILexicalBlock(scope: !155227, file: !5557, line: 255, column: 25)
!155227 = distinct !DILexicalBlock(scope: !155165, file: !5557, line: 234, column: 25)
!155228 = !DILocation(line: 2511, column: 13, scope: !155206, inlinedAt: !155229)
!155229 = !DILocation(line: 450, column: 43, scope: !155230, inlinedAt: !155222)
!155230 = !DILexicalBlockFile(scope: !155231, file: !153176, discriminator: 2)
!155231 = distinct !DILexicalBlock(scope: !155220, file: !153176, line: 447, column: 21)
!155232 = !DILocation(line: 451, column: 21, scope: !155231, inlinedAt: !155222)
!155233 = !DILocation(line: 257, column: 49, scope: !155234)
!155234 = distinct !DILexicalBlock(scope: !155235, file: !5557, line: 256, column: 29)
!155235 = distinct !DILexicalBlock(scope: !155226, file: !5557, line: 255, column: 25)
!155236 = !DILocation(line: 259, column: 39, scope: !155237)
!155237 = distinct !DILexicalBlock(scope: !155234, file: !5557, line: 257, column: 29)
!155238 = !DILocation(line: 446, column: 20, scope: !155239, inlinedAt: !155241)
!155239 = distinct !DILexicalBlock(scope: !155240, file: !153176, line: 445, column: 17)
!155240 = distinct !DILexicalBlock(scope: !155142, file: !153176, line: 444, column: 17)
!155241 = !DILocation(line: 59, column: 14, scope: !155242, inlinedAt: !155243)
!155242 = !DILexicalBlockFile(scope: !155144, file: !153176, discriminator: 4)
!155243 = !DILocation(line: 259, column: 39, scope: !155244)
!155244 = !DILexicalBlockFile(scope: !155245, file: !5557, discriminator: 2)
!155245 = distinct !DILexicalBlock(scope: !155237, file: !5557, line: 259, column: 29)
!155246 = !DILocation(line: 256, column: 45, scope: !155235)
!155247 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155248)
!155248 = distinct !DILocation(line: 256, column: 63, scope: !155235)
!155249 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !155250)
!155250 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !155251)
!155251 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !155252)
!155252 = distinct !DILocation(line: 439, column: 9, scope: !155152, inlinedAt: !155253)
!155253 = !DILocation(line: 259, column: 55, scope: !155237)
!155254 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !155250)
!155255 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !155250)
!155256 = !DILocation(line: 260, column: 49, scope: !155257)
!155257 = distinct !DILexicalBlock(scope: !155245, file: !5557, line: 259, column: 29)
!155258 = !DILocation(line: 268, column: 37, scope: !155259)
!155259 = distinct !DILexicalBlock(scope: !155257, file: !5557, line: 260, column: 33)
!155260 = !DILocation(line: 2511, column: 13, scope: !155206, inlinedAt: !155261)
!155261 = !DILocation(line: 450, column: 43, scope: !155262, inlinedAt: !155241)
!155262 = !DILexicalBlockFile(scope: !155263, file: !153176, discriminator: 4)
!155263 = distinct !DILexicalBlock(scope: !155239, file: !153176, line: 447, column: 21)
!155264 = !DILocation(line: 451, column: 21, scope: !155263, inlinedAt: !155241)
!155265 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155266)
!155266 = distinct !DILocation(line: 260, column: 67, scope: !155257)
!155267 = !DILocation(line: 269, column: 37, scope: !155268)
!155268 = distinct !DILexicalBlock(scope: !155259, file: !5557, line: 268, column: 33)
!155269 = !DILocation(line: 269, column: 52, scope: !155268)
!155270 = !DILocation(line: 1917, column: 50, scope: !155271, inlinedAt: !155272)
!155271 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155272 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155274)
!155273 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155274 = !DILocation(line: 866, column: 14, scope: !155275, inlinedAt: !155276)
!155275 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155276 = !DILocation(line: 271, column: 43, scope: !155277)
!155277 = !DILexicalBlockFile(scope: !155278, file: !5557, discriminator: 2)
!155278 = distinct !DILexicalBlock(scope: !155279, file: !5557, line: 271, column: 33)
!155279 = distinct !DILexicalBlock(scope: !155280, file: !5557, line: 270, column: 33)
!155280 = distinct !DILexicalBlock(scope: !155268, file: !5557, line: 269, column: 33)
!155281 = !DILocation(line: 289, column: 37, scope: !155279)
!155282 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155283)
!155283 = !DILocation(line: 866, column: 14, scope: !155284, inlinedAt: !155285)
!155284 = !DILexicalBlockFile(scope: !155275, file: !1698, discriminator: 2)
!155285 = !DILocation(line: 292, column: 47, scope: !155286)
!155286 = !DILexicalBlockFile(scope: !155287, file: !5557, discriminator: 2)
!155287 = distinct !DILexicalBlock(scope: !155288, file: !5557, line: 292, column: 37)
!155288 = distinct !DILexicalBlock(scope: !155279, file: !5557, line: 289, column: 33)
!155289 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155291)
!155290 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155291 = !DILocation(line: 214, column: 28, scope: !155292, inlinedAt: !155293)
!155292 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155293 = !DILocation(line: 784, column: 35, scope: !155294, inlinedAt: !155274)
!155294 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155295 = !DILocation(line: 272, column: 65, scope: !155296)
!155296 = distinct !DILexicalBlock(scope: !155278, file: !5557, line: 271, column: 33)
!155297 = !DILocation(line: 272, column: 10, scope: !155298, inlinedAt: !155299)
!155298 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155299 = !DILocation(line: 19, column: 15, scope: !155300, inlinedAt: !155301)
!155300 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155301 = !DILocation(line: 3831, column: 9, scope: !155302, inlinedAt: !155303)
!155302 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSNtNtCs2mZqlW55729_12polars_utils7float164pf16EEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155303 = !DILocation(line: 272, column: 64, scope: !155296)
!155304 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155305)
!155305 = !DILocation(line: 866, column: 14, scope: !155306, inlinedAt: !155307)
!155306 = !DILexicalBlockFile(scope: !155275, file: !1698, discriminator: 4)
!155307 = !DILocation(line: 294, column: 51, scope: !155308)
!155308 = !DILexicalBlockFile(scope: !155309, file: !5557, discriminator: 2)
!155309 = distinct !DILexicalBlock(scope: !155310, file: !5557, line: 294, column: 41)
!155310 = distinct !DILexicalBlock(scope: !155311, file: !5557, line: 293, column: 41)
!155311 = distinct !DILexicalBlock(scope: !155287, file: !5557, line: 292, column: 37)
!155312 = !DILocation(line: 298, column: 70, scope: !155313)
!155313 = distinct !DILexicalBlock(scope: !155309, file: !5557, line: 294, column: 41)
!155314 = !DILocation(line: 299, column: 68, scope: !155313)
!155315 = !DILocation(line: 252, column: 39, scope: !155316, inlinedAt: !155317)
!155316 = distinct !DISubprogram(name: "get_unchecked<polars_utils::float16::pf16>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSNtNtCs2mZqlW55729_12polars_utils7float164pf16E13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155317 = !DILocation(line: 646, column: 26, scope: !155318, inlinedAt: !155319)
!155318 = distinct !DISubprogram(name: "get_unchecked<polars_utils::float16::pf16, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1613get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155319 = !DILocation(line: 299, column: 54, scope: !155313)
!155320 = !DILocation(line: 252, column: 13, scope: !155316, inlinedAt: !155317)
!155321 = !DILocation(line: 253, column: 13, scope: !155316, inlinedAt: !155317)
!155322 = !DILocation(line: 298, column: 69, scope: !155313)
!155323 = !DILocation(line: 298, column: 49, scope: !155313)
!155324 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155325)
!155325 = !DILocation(line: 214, column: 28, scope: !155326, inlinedAt: !155327)
!155326 = !DILexicalBlockFile(scope: !155292, file: !1698, discriminator: 2)
!155327 = !DILocation(line: 784, column: 35, scope: !155328, inlinedAt: !155283)
!155328 = !DILexicalBlockFile(scope: !155329, file: !1698, discriminator: 2)
!155329 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155330 = !DILocation(line: 1917, column: 50, scope: !155271, inlinedAt: !155331)
!155331 = !DILocation(line: 781, column: 12, scope: !155332, inlinedAt: !155283)
!155332 = !DILexicalBlockFile(scope: !155273, file: !1698, discriminator: 2)
!155333 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155334)
!155334 = !DILocation(line: 866, column: 14, scope: !155335, inlinedAt: !155336)
!155335 = !DILexicalBlockFile(scope: !155275, file: !1698, discriminator: 10)
!155336 = !DILocation(line: 327, column: 43, scope: !155337)
!155337 = !DILexicalBlockFile(scope: !155338, file: !5557, discriminator: 2)
!155338 = distinct !DILexicalBlock(scope: !155288, file: !5557, line: 327, column: 33)
!155339 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155340)
!155340 = !DILocation(line: 214, column: 28, scope: !155341, inlinedAt: !155342)
!155341 = !DILexicalBlockFile(scope: !155292, file: !1698, discriminator: 4)
!155342 = !DILocation(line: 784, column: 35, scope: !155343, inlinedAt: !155305)
!155343 = !DILexicalBlockFile(scope: !155344, file: !1698, discriminator: 4)
!155344 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155345 = !DILocation(line: 614, column: 9, scope: !155346, inlinedAt: !155347)
!155346 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155347 = !DILocation(line: 609, column: 14, scope: !155348, inlinedAt: !155349)
!155348 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155349 = !DILocation(line: 296, column: 20, scope: !155350, inlinedAt: !155351)
!155350 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155351 = !DILocation(line: 1942, column: 18, scope: !155352, inlinedAt: !155353)
!155352 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155353 = !DILocation(line: 1841, column: 76, scope: !155354, inlinedAt: !155355)
!155354 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155355 = !DILocation(line: 3756, column: 14, scope: !155356, inlinedAt: !155357)
!155356 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[polars_utils::float16::pf16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155357 = !DILocation(line: 3831, column: 23, scope: !155302, inlinedAt: !155303)
!155358 = !DILocation(line: 272, column: 9, scope: !155298, inlinedAt: !155299)
!155359 = !DILocation(line: 273, column: 60, scope: !155360)
!155360 = distinct !DILexicalBlock(scope: !155296, file: !5557, line: 272, column: 37)
!155361 = !DILocation(line: 273, column: 52, scope: !155360)
!155362 = !DILocation(line: 273, column: 47, scope: !155360)
!155363 = !DILocation(line: 275, column: 43, scope: !155364)
!155364 = distinct !DILexicalBlock(scope: !155360, file: !5557, line: 273, column: 37)
!155365 = !DILocation(line: 272, column: 10, scope: !155366, inlinedAt: !155367)
!155366 = distinct !DISubprogram(name: "index<&[polars_utils::float16::pf16]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155367 = !DILocation(line: 19, column: 15, scope: !155368, inlinedAt: !155370)
!155368 = !DILexicalBlockFile(scope: !155369, file: !1681, discriminator: 2)
!155369 = distinct !DISubprogram(name: "index<&[polars_utils::float16::pf16], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155370 = !DILocation(line: 3831, column: 9, scope: !155371, inlinedAt: !155373)
!155371 = !DILexicalBlockFile(scope: !155372, file: !362, discriminator: 2)
!155372 = distinct !DISubprogram(name: "index<&[polars_utils::float16::pf16], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155373 = !DILocation(line: 278, column: 67, scope: !155364)
!155374 = !DILocation(line: 614, column: 9, scope: !155375, inlinedAt: !155376)
!155375 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[polars_utils::float16::pf16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155376 = !DILocation(line: 609, column: 14, scope: !155377, inlinedAt: !155379)
!155377 = !DILexicalBlockFile(scope: !155378, file: !1901, discriminator: 2)
!155378 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[polars_utils::float16::pf16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155379 = !DILocation(line: 296, column: 20, scope: !155380, inlinedAt: !155382)
!155380 = !DILexicalBlockFile(scope: !155381, file: !1901, discriminator: 2)
!155381 = distinct !DISubprogram(name: "ptr<&[polars_utils::float16::pf16], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155382 = !DILocation(line: 1942, column: 18, scope: !155383, inlinedAt: !155385)
!155383 = !DILexicalBlockFile(scope: !155384, file: !362, discriminator: 2)
!155384 = distinct !DISubprogram(name: "as_ptr<&[polars_utils::float16::pf16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155385 = !DILocation(line: 1841, column: 76, scope: !155386, inlinedAt: !155388)
!155386 = !DILexicalBlockFile(scope: !155387, file: !362, discriminator: 2)
!155387 = distinct !DISubprogram(name: "as_slice<&[polars_utils::float16::pf16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155388 = !DILocation(line: 3756, column: 14, scope: !155389, inlinedAt: !155391)
!155389 = !DILexicalBlockFile(scope: !155390, file: !362, discriminator: 2)
!155390 = distinct !DISubprogram(name: "deref<&[polars_utils::float16::pf16], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155391 = !DILocation(line: 3831, column: 23, scope: !155371, inlinedAt: !155373)
!155392 = !DILocation(line: 272, column: 9, scope: !155366, inlinedAt: !155367)
!155393 = !DILocation(line: 278, column: 61, scope: !155364)
!155394 = !DILocation(line: 278, column: 41, scope: !155364)
!155395 = !DILocation(line: 276, column: 41, scope: !155364)
!155396 = !DILocation(line: 277, column: 41, scope: !155364)
!155397 = !DILocation(line: 0, scope: !155364)
!155398 = !DILocation(line: 280, column: 40, scope: !155364)
!155399 = distinct !{!155399, !153454}
!155400 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155401)
!155401 = !DILocation(line: 866, column: 14, scope: !155402, inlinedAt: !155403)
!155402 = !DILexicalBlockFile(scope: !155275, file: !1698, discriminator: 6)
!155403 = !DILocation(line: 304, column: 47, scope: !155404)
!155404 = !DILexicalBlockFile(scope: !155405, file: !5557, discriminator: 2)
!155405 = distinct !DILexicalBlock(scope: !155288, file: !5557, line: 304, column: 37)
!155406 = !DILocation(line: 281, column: 65, scope: !155364)
!155407 = !DILocation(line: 1841, column: 86, scope: !155387, inlinedAt: !155408)
!155408 = !DILocation(line: 3756, column: 14, scope: !155409, inlinedAt: !155410)
!155409 = !DILexicalBlockFile(scope: !155390, file: !362, discriminator: 4)
!155410 = !DILocation(line: 3831, column: 23, scope: !155411, inlinedAt: !155412)
!155411 = !DILexicalBlockFile(scope: !155372, file: !362, discriminator: 4)
!155412 = !DILocation(line: 281, column: 64, scope: !155364)
!155413 = !DILocation(line: 272, column: 10, scope: !155366, inlinedAt: !155414)
!155414 = !DILocation(line: 19, column: 15, scope: !155415, inlinedAt: !155416)
!155415 = !DILexicalBlockFile(scope: !155369, file: !1681, discriminator: 4)
!155416 = !DILocation(line: 3831, column: 9, scope: !155411, inlinedAt: !155412)
!155417 = !DILocation(line: 1917, column: 50, scope: !155271, inlinedAt: !155418)
!155418 = !DILocation(line: 781, column: 12, scope: !155419, inlinedAt: !155401)
!155419 = !DILexicalBlockFile(scope: !155273, file: !1698, discriminator: 6)
!155420 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155421)
!155421 = !DILocation(line: 214, column: 28, scope: !155422, inlinedAt: !155423)
!155422 = !DILexicalBlockFile(scope: !155292, file: !1698, discriminator: 6)
!155423 = !DILocation(line: 784, column: 35, scope: !155424, inlinedAt: !155401)
!155424 = !DILexicalBlockFile(scope: !155425, file: !1698, discriminator: 6)
!155425 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155426 = !DILocation(line: 305, column: 55, scope: !155427)
!155427 = distinct !DILexicalBlock(scope: !155405, file: !5557, line: 304, column: 37)
!155428 = !DILocation(line: 781, column: 12, scope: !155273, inlinedAt: !155429)
!155429 = !DILocation(line: 866, column: 14, scope: !155430, inlinedAt: !155431)
!155430 = !DILexicalBlockFile(scope: !155275, file: !1698, discriminator: 8)
!155431 = !DILocation(line: 307, column: 51, scope: !155432)
!155432 = !DILexicalBlockFile(scope: !155433, file: !5557, discriminator: 2)
!155433 = distinct !DILexicalBlock(scope: !155434, file: !5557, line: 307, column: 41)
!155434 = distinct !DILexicalBlock(scope: !155435, file: !5557, line: 306, column: 41)
!155435 = distinct !DILexicalBlock(scope: !155427, file: !5557, line: 305, column: 41)
!155436 = !DILocation(line: 328, column: 51, scope: !155437)
!155437 = distinct !DILexicalBlock(scope: !155338, file: !5557, line: 327, column: 33)
!155438 = !DILocation(line: 329, column: 51, scope: !155439)
!155439 = distinct !DILexicalBlock(scope: !155437, file: !5557, line: 328, column: 37)
!155440 = !DILocation(line: 89, column: 24, scope: !155441, inlinedAt: !155443)
!155441 = distinct !DILexicalBlock(scope: !155442, file: !1681, line: 87, column: 5)
!155442 = distinct !DISubprogram(name: "get_offset_len_noubcheck<polars_utils::float16::pf16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckNtNtCs2mZqlW55729_12polars_utils7float164pf16ECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155443 = !DILocation(line: 441, column: 24, scope: !155444, inlinedAt: !155445)
!155444 = distinct !DISubprogram(name: "index<polars_utils::float16::pf16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtCs2mZqlW55729_12polars_utils7float164pf16E5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155445 = !DILocation(line: 19, column: 15, scope: !155446, inlinedAt: !155448)
!155446 = !DILexicalBlockFile(scope: !155447, file: !1681, discriminator: 12)
!155447 = distinct !DISubprogram(name: "index<polars_utils::float16::pf16, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtB6_3ops5index5IndexINtNtB1q_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155448 = !DILocation(line: 390, column: 9, scope: !155449, inlinedAt: !155450)
!155449 = distinct !DISubprogram(name: "index<polars_utils::float16::pf16, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayANtNtCs2mZqlW55729_12polars_utils7float164pf16j400_INtNtNtB7_3ops5index5IndexINtNtB1q_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155450 = !DILocation(line: 330, column: 51, scope: !155451)
!155451 = distinct !DILexicalBlock(scope: !155439, file: !5557, line: 329, column: 37)
!155452 = !DILocation(line: 26, column: 9, scope: !155453, inlinedAt: !155454)
!155453 = distinct !DISubprogram(name: "get<polars_utils::float16::pf16>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrNtNtB4_7float164pf16E3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155454 = !DILocation(line: 336, column: 49, scope: !155455)
!155455 = distinct !DILexicalBlock(scope: !155451, file: !5557, line: 330, column: 37)
!155456 = !DILocation(line: 961, column: 18, scope: !155457, inlinedAt: !155458)
!155457 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155458 = !DILocation(line: 336, column: 55, scope: !155455)
!155459 = !DILocation(line: 552, column: 14, scope: !155460, inlinedAt: !155461)
!155460 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_utils::float16::pf16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtCs2mZqlW55729_12polars_utils7float164pf16ECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155461 = !DILocation(line: 334, column: 41, scope: !155455)
!155462 = !DILocation(line: 341, column: 29, scope: !155279)
!155463 = !DILocation(line: 341, column: 29, scope: !155268)
!155464 = !DILocation(line: 341, column: 29, scope: !155259)
!155465 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155466)
!155466 = !DILocation(line: 214, column: 28, scope: !155467, inlinedAt: !155468)
!155467 = !DILexicalBlockFile(scope: !155292, file: !1698, discriminator: 10)
!155468 = !DILocation(line: 784, column: 35, scope: !155469, inlinedAt: !155334)
!155469 = !DILexicalBlockFile(scope: !155470, file: !1698, discriminator: 10)
!155470 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155471 = !DILocation(line: 898, column: 17, scope: !155290, inlinedAt: !155472)
!155472 = !DILocation(line: 214, column: 28, scope: !155473, inlinedAt: !155474)
!155473 = !DILexicalBlockFile(scope: !155292, file: !1698, discriminator: 8)
!155474 = !DILocation(line: 784, column: 35, scope: !155475, inlinedAt: !155429)
!155475 = !DILexicalBlockFile(scope: !155476, file: !1698, discriminator: 8)
!155476 = distinct !DILexicalBlock(scope: !155273, file: !1698, line: 782, column: 13)
!155477 = !DILocation(line: 308, column: 73, scope: !155478)
!155478 = distinct !DILexicalBlock(scope: !155433, file: !5557, line: 307, column: 41)
!155479 = !DILocation(line: 272, column: 10, scope: !155298, inlinedAt: !155480)
!155480 = !DILocation(line: 19, column: 15, scope: !155481, inlinedAt: !155482)
!155481 = !DILexicalBlockFile(scope: !155300, file: !1681, discriminator: 6)
!155482 = !DILocation(line: 3831, column: 9, scope: !155483, inlinedAt: !155484)
!155483 = !DILexicalBlockFile(scope: !155302, file: !362, discriminator: 6)
!155484 = !DILocation(line: 308, column: 72, scope: !155478)
!155485 = !DILocation(line: 272, column: 9, scope: !155298, inlinedAt: !155480)
!155486 = !DILocation(line: 309, column: 68, scope: !155487)
!155487 = distinct !DILexicalBlock(scope: !155478, file: !5557, line: 308, column: 45)
!155488 = !DILocation(line: 309, column: 60, scope: !155487)
!155489 = !DILocation(line: 309, column: 55, scope: !155487)
!155490 = !DILocation(line: 310, column: 51, scope: !155491)
!155491 = distinct !DILexicalBlock(scope: !155487, file: !5557, line: 309, column: 45)
!155492 = !DILocation(line: 320, column: 77, scope: !155491)
!155493 = !DILocation(line: 1841, column: 86, scope: !155387, inlinedAt: !155494)
!155494 = !DILocation(line: 3756, column: 14, scope: !155495, inlinedAt: !155496)
!155495 = !DILexicalBlockFile(scope: !155390, file: !362, discriminator: 10)
!155496 = !DILocation(line: 3831, column: 23, scope: !155497, inlinedAt: !155498)
!155497 = !DILexicalBlockFile(scope: !155372, file: !362, discriminator: 10)
!155498 = !DILocation(line: 320, column: 76, scope: !155491)
!155499 = !DILocation(line: 272, column: 10, scope: !155366, inlinedAt: !155500)
!155500 = !DILocation(line: 19, column: 15, scope: !155501, inlinedAt: !155502)
!155501 = !DILexicalBlockFile(scope: !155369, file: !1681, discriminator: 8)
!155502 = !DILocation(line: 3831, column: 9, scope: !155503, inlinedAt: !155504)
!155503 = !DILexicalBlockFile(scope: !155372, file: !362, discriminator: 8)
!155504 = !DILocation(line: 313, column: 75, scope: !155491)
!155505 = !DILocation(line: 614, column: 9, scope: !155375, inlinedAt: !155506)
!155506 = !DILocation(line: 609, column: 14, scope: !155507, inlinedAt: !155508)
!155507 = !DILexicalBlockFile(scope: !155378, file: !1901, discriminator: 8)
!155508 = !DILocation(line: 296, column: 20, scope: !155509, inlinedAt: !155510)
!155509 = !DILexicalBlockFile(scope: !155381, file: !1901, discriminator: 8)
!155510 = !DILocation(line: 1942, column: 18, scope: !155511, inlinedAt: !155512)
!155511 = !DILexicalBlockFile(scope: !155384, file: !362, discriminator: 8)
!155512 = !DILocation(line: 1841, column: 76, scope: !155513, inlinedAt: !155514)
!155513 = !DILexicalBlockFile(scope: !155387, file: !362, discriminator: 8)
!155514 = !DILocation(line: 3756, column: 14, scope: !155515, inlinedAt: !155516)
!155515 = !DILexicalBlockFile(scope: !155390, file: !362, discriminator: 8)
!155516 = !DILocation(line: 3831, column: 23, scope: !155503, inlinedAt: !155504)
!155517 = !DILocation(line: 272, column: 9, scope: !155366, inlinedAt: !155500)
!155518 = !DILocation(line: 313, column: 69, scope: !155491)
!155519 = !DILocation(line: 313, column: 49, scope: !155491)
!155520 = !DILocation(line: 311, column: 49, scope: !155491)
!155521 = !DILocation(line: 312, column: 49, scope: !155491)
!155522 = !DILocation(line: 0, scope: !155491)
!155523 = !DILocation(line: 272, column: 10, scope: !155366, inlinedAt: !155524)
!155524 = !DILocation(line: 19, column: 15, scope: !155525, inlinedAt: !155526)
!155525 = !DILexicalBlockFile(scope: !155369, file: !1681, discriminator: 10)
!155526 = !DILocation(line: 3831, column: 9, scope: !155497, inlinedAt: !155498)
!155527 = distinct !{!155527, !153454}
!155528 = !DILocation(line: 614, column: 9, scope: !155375, inlinedAt: !155529)
!155529 = !DILocation(line: 609, column: 14, scope: !155530, inlinedAt: !155531)
!155530 = !DILexicalBlockFile(scope: !155378, file: !1901, discriminator: 10)
!155531 = !DILocation(line: 296, column: 20, scope: !155532, inlinedAt: !155533)
!155532 = !DILexicalBlockFile(scope: !155381, file: !1901, discriminator: 10)
end_hunk_14
begin_hunk_15_@llvm.vector.reduce.add.v2i64
!155772 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !155773)
!155773 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !155766)
!155774 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !155766)
!155775 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Float32Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float32TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155776 = !DILocation(line: 225, column: 45, scope: !155775)
!155777 = !DILocation(line: 225, column: 37, scope: !155775)
!155778 = !DILocation(line: 226, column: 35, scope: !155779)
!155779 = distinct !DILexicalBlock(scope: !155775, file: !5557, line: 225, column: 21)
!155780 = !DILocation(line: 226, column: 63, scope: !155779)
!155781 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155782)
!155782 = distinct !DILocation(line: 226, column: 59, scope: !155779)
!155783 = !DILocation(line: 227, column: 38, scope: !155784)
!155784 = distinct !DILexicalBlock(scope: !155779, file: !5557, line: 226, column: 21)
!155785 = !DILocation(line: 229, column: 42, scope: !155786)
!155786 = distinct !DILexicalBlock(scope: !155784, file: !5557, line: 227, column: 21)
!155787 = !DILocation(line: 446, column: 20, scope: !155788, inlinedAt: !155791)
!155788 = distinct !DILexicalBlock(scope: !155789, file: !153176, line: 445, column: 17)
!155789 = distinct !DILexicalBlock(scope: !155790, file: !153176, line: 444, column: 17)
!155790 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155791 = !DILocation(line: 59, column: 14, scope: !155792, inlinedAt: !155793)
!155792 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155793 = !DILocation(line: 229, column: 38, scope: !155794)
!155794 = !DILexicalBlockFile(scope: !155795, file: !5557, discriminator: 2)
!155795 = distinct !DILexicalBlock(scope: !155786, file: !5557, line: 229, column: 21)
!155796 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !155797)
!155797 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !155798)
!155798 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !155799)
!155799 = distinct !DILocation(line: 439, column: 9, scope: !155800, inlinedAt: !155801)
!155800 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155801 = !DILocation(line: 229, column: 52, scope: !155786)
!155802 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !155797)
!155803 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !155797)
!155804 = !DILocation(line: 936, column: 11, scope: !155805, inlinedAt: !155807)
!155805 = distinct !DILexicalBlock(scope: !155806, file: !52151, line: 934, column: 5)
!155806 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155807 = distinct !DILocation(line: 154, column: 11, scope: !155808, inlinedAt: !155810)
!155808 = distinct !DILexicalBlock(scope: !155809, file: !52151, line: 153, column: 5)
!155809 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155810 = distinct !DILocation(line: 113, column: 5, scope: !155811, inlinedAt: !155812)
!155811 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float32Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes11Float32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155812 = !DILocation(line: 234, column: 64, scope: !155813)
!155813 = distinct !DILexicalBlock(scope: !155814, file: !5557, line: 230, column: 25)
!155814 = distinct !DILexicalBlock(scope: !155795, file: !5557, line: 229, column: 21)
!155815 = !DILocation(line: 229, column: 25, scope: !155795)
!155816 = !DILocation(line: 230, column: 42, scope: !155814)
!155817 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155818)
!155818 = distinct !DILocation(line: 230, column: 65, scope: !155814)
!155819 = !DILocation(line: 230, column: 65, scope: !155814)
!155820 = !DILocation(line: 234, column: 29, scope: !155813)
!155821 = !DILocation(line: 113, column: 5, scope: !155811, inlinedAt: !155812)
!155822 = !DILocation(line: 113, column: 17, scope: !155811, inlinedAt: !155812)
!155823 = !DILocation(line: 431, column: 9, scope: !155824, inlinedAt: !155822)
!155824 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float32Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes11Float32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155825 = !{!155826, !155828}
!155826 = distinct !{!155826, !155827, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!155827 = distinct !{!155827, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!155828 = distinct !{!155828, !155827, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!155829 = !DILocation(line: 937, column: 20, scope: !155805, inlinedAt: !155807)
!155830 = !{!155831, !155826}
!155831 = distinct !{!155831, !155832, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!155832 = distinct !{!155832, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!155833 = !DILocation(line: 266, column: 18, scope: !155834, inlinedAt: !155835)
!155834 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155835 = distinct !DILocation(line: 691, column: 30, scope: !155836, inlinedAt: !155837)
!155836 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155837 = distinct !DILocation(line: 978, column: 28, scope: !155838, inlinedAt: !155839)
!155838 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155839 = distinct !DILocation(line: 940, column: 24, scope: !155840, inlinedAt: !155807)
!155840 = distinct !DILexicalBlock(scope: !155805, file: !52151, line: 937, column: 9)
!155841 = !DILocation(line: 81, column: 9, scope: !155842, inlinedAt: !155843)
!155842 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155843 = distinct !DILocation(line: 185, column: 31, scope: !155844, inlinedAt: !155845)
!155844 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155845 = distinct !DILocation(line: 407, column: 30, scope: !155846, inlinedAt: !155847)
!155846 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155847 = distinct !DILocation(line: 574, column: 17, scope: !155848, inlinedAt: !155849)
!155848 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155849 = distinct !DILocation(line: 978, column: 64, scope: !155838, inlinedAt: !155839)
!155850 = !DILocation(line: 898, column: 17, scope: !155851, inlinedAt: !155852)
!155851 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155852 = distinct !DILocation(line: 979, column: 49, scope: !155838, inlinedAt: !155839)
!155853 = !DILocation(line: 2511, column: 13, scope: !155854, inlinedAt: !155855)
!155854 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155855 = !DILocation(line: 450, column: 43, scope: !155856, inlinedAt: !155791)
!155856 = distinct !DILexicalBlock(scope: !155788, file: !153176, line: 447, column: 21)
!155857 = !DILocation(line: 451, column: 21, scope: !155856, inlinedAt: !155791)
!155858 = !DILocation(line: 945, column: 2, scope: !155806, inlinedAt: !155807)
!155859 = !DILocation(line: 161, column: 2, scope: !155809, inlinedAt: !155810)
!155860 = !DILocation(line: 113, column: 49, scope: !155811, inlinedAt: !155812)
!155861 = !DILocation(line: 113, column: 51, scope: !155811, inlinedAt: !155812)
!155862 = !DILocation(line: 343, column: 21, scope: !155813)
!155863 = !DILocation(line: 344, column: 18, scope: !155775)
!155864 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !155865)
!155865 = distinct !DILocation(line: 158, column: 19, scope: !155808, inlinedAt: !155810)
!155866 = !{!155828}
!155867 = !DILocation(line: 446, column: 20, scope: !155868, inlinedAt: !155870)
!155868 = distinct !DILexicalBlock(scope: !155869, file: !153176, line: 445, column: 17)
!155869 = distinct !DILexicalBlock(scope: !155790, file: !153176, line: 444, column: 17)
!155870 = !DILocation(line: 59, column: 14, scope: !155871, inlinedAt: !155872)
!155871 = !DILexicalBlockFile(scope: !155792, file: !153176, discriminator: 2)
!155872 = !DILocation(line: 255, column: 35, scope: !155873)
!155873 = !DILexicalBlockFile(scope: !155874, file: !5557, discriminator: 2)
!155874 = distinct !DILexicalBlock(scope: !155875, file: !5557, line: 255, column: 25)
!155875 = distinct !DILexicalBlock(scope: !155813, file: !5557, line: 234, column: 25)
!155876 = !DILocation(line: 2511, column: 13, scope: !155854, inlinedAt: !155877)
!155877 = !DILocation(line: 450, column: 43, scope: !155878, inlinedAt: !155870)
!155878 = !DILexicalBlockFile(scope: !155879, file: !153176, discriminator: 2)
!155879 = distinct !DILexicalBlock(scope: !155868, file: !153176, line: 447, column: 21)
!155880 = !DILocation(line: 451, column: 21, scope: !155879, inlinedAt: !155870)
!155881 = !DILocation(line: 257, column: 49, scope: !155882)
!155882 = distinct !DILexicalBlock(scope: !155883, file: !5557, line: 256, column: 29)
!155883 = distinct !DILexicalBlock(scope: !155874, file: !5557, line: 255, column: 25)
!155884 = !DILocation(line: 259, column: 39, scope: !155885)
!155885 = distinct !DILexicalBlock(scope: !155882, file: !5557, line: 257, column: 29)
!155886 = !DILocation(line: 446, column: 20, scope: !155887, inlinedAt: !155889)
!155887 = distinct !DILexicalBlock(scope: !155888, file: !153176, line: 445, column: 17)
!155888 = distinct !DILexicalBlock(scope: !155790, file: !153176, line: 444, column: 17)
!155889 = !DILocation(line: 59, column: 14, scope: !155890, inlinedAt: !155891)
!155890 = !DILexicalBlockFile(scope: !155792, file: !153176, discriminator: 4)
!155891 = !DILocation(line: 259, column: 39, scope: !155892)
!155892 = !DILexicalBlockFile(scope: !155893, file: !5557, discriminator: 2)
!155893 = distinct !DILexicalBlock(scope: !155885, file: !5557, line: 259, column: 29)
!155894 = !DILocation(line: 256, column: 45, scope: !155883)
!155895 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155896)
!155896 = distinct !DILocation(line: 256, column: 63, scope: !155883)
!155897 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !155898)
!155898 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !155899)
!155899 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !155900)
!155900 = distinct !DILocation(line: 439, column: 9, scope: !155800, inlinedAt: !155901)
!155901 = !DILocation(line: 259, column: 55, scope: !155885)
!155902 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !155898)
!155903 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !155898)
!155904 = !DILocation(line: 260, column: 49, scope: !155905)
!155905 = distinct !DILexicalBlock(scope: !155893, file: !5557, line: 259, column: 29)
!155906 = !DILocation(line: 268, column: 37, scope: !155907)
!155907 = distinct !DILexicalBlock(scope: !155905, file: !5557, line: 260, column: 33)
!155908 = !DILocation(line: 2511, column: 13, scope: !155854, inlinedAt: !155909)
!155909 = !DILocation(line: 450, column: 43, scope: !155910, inlinedAt: !155889)
!155910 = !DILexicalBlockFile(scope: !155911, file: !153176, discriminator: 4)
!155911 = distinct !DILexicalBlock(scope: !155887, file: !153176, line: 447, column: 21)
!155912 = !DILocation(line: 451, column: 21, scope: !155911, inlinedAt: !155889)
!155913 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !155914)
!155914 = distinct !DILocation(line: 260, column: 67, scope: !155905)
!155915 = !DILocation(line: 269, column: 37, scope: !155916)
!155916 = distinct !DILexicalBlock(scope: !155907, file: !5557, line: 268, column: 33)
!155917 = !DILocation(line: 269, column: 52, scope: !155916)
!155918 = !DILocation(line: 1917, column: 50, scope: !155919, inlinedAt: !155920)
!155919 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155920 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !155922)
!155921 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155922 = !DILocation(line: 866, column: 14, scope: !155923, inlinedAt: !155924)
!155923 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155924 = !DILocation(line: 271, column: 43, scope: !155925)
!155925 = !DILexicalBlockFile(scope: !155926, file: !5557, discriminator: 2)
!155926 = distinct !DILexicalBlock(scope: !155927, file: !5557, line: 271, column: 33)
!155927 = distinct !DILexicalBlock(scope: !155928, file: !5557, line: 270, column: 33)
!155928 = distinct !DILexicalBlock(scope: !155916, file: !5557, line: 269, column: 33)
!155929 = !DILocation(line: 289, column: 37, scope: !155927)
!155930 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !155931)
!155931 = !DILocation(line: 866, column: 14, scope: !155932, inlinedAt: !155933)
!155932 = !DILexicalBlockFile(scope: !155923, file: !1698, discriminator: 2)
!155933 = !DILocation(line: 292, column: 47, scope: !155934)
!155934 = !DILexicalBlockFile(scope: !155935, file: !5557, discriminator: 2)
!155935 = distinct !DILexicalBlock(scope: !155936, file: !5557, line: 292, column: 37)
!155936 = distinct !DILexicalBlock(scope: !155927, file: !5557, line: 289, column: 33)
!155937 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !155939)
!155938 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155939 = !DILocation(line: 214, column: 28, scope: !155940, inlinedAt: !155941)
!155940 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155941 = !DILocation(line: 784, column: 35, scope: !155942, inlinedAt: !155922)
!155942 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!155943 = !DILocation(line: 272, column: 65, scope: !155944)
!155944 = distinct !DILexicalBlock(scope: !155926, file: !5557, line: 271, column: 33)
!155945 = !DILocation(line: 272, column: 10, scope: !155946, inlinedAt: !155947)
!155946 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f32], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSfEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155947 = !DILocation(line: 19, column: 15, scope: !155948, inlinedAt: !155949)
!155948 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f32], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSfEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155949 = !DILocation(line: 3831, column: 9, scope: !155950, inlinedAt: !155951)
!155950 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f32], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSfEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155951 = !DILocation(line: 272, column: 64, scope: !155944)
!155952 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !155953)
!155953 = !DILocation(line: 866, column: 14, scope: !155954, inlinedAt: !155955)
!155954 = !DILexicalBlockFile(scope: !155923, file: !1698, discriminator: 4)
!155955 = !DILocation(line: 294, column: 51, scope: !155956)
!155956 = !DILexicalBlockFile(scope: !155957, file: !5557, discriminator: 2)
!155957 = distinct !DILexicalBlock(scope: !155958, file: !5557, line: 294, column: 41)
!155958 = distinct !DILexicalBlock(scope: !155959, file: !5557, line: 293, column: 41)
!155959 = distinct !DILexicalBlock(scope: !155935, file: !5557, line: 292, column: 37)
!155960 = !DILocation(line: 298, column: 70, scope: !155961)
!155961 = distinct !DILexicalBlock(scope: !155957, file: !5557, line: 294, column: 41)
!155962 = !DILocation(line: 299, column: 68, scope: !155961)
!155963 = !DILocation(line: 252, column: 39, scope: !155964, inlinedAt: !155965)
!155964 = distinct !DISubprogram(name: "get_unchecked<f32>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSfE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155965 = !DILocation(line: 646, column: 26, scope: !155966, inlinedAt: !155967)
!155966 = distinct !DISubprogram(name: "get_unchecked<f32, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSf13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155967 = !DILocation(line: 299, column: 54, scope: !155961)
!155968 = !DILocation(line: 252, column: 13, scope: !155964, inlinedAt: !155965)
!155969 = !DILocation(line: 253, column: 13, scope: !155964, inlinedAt: !155965)
!155970 = !DILocation(line: 298, column: 69, scope: !155961)
!155971 = !DILocation(line: 298, column: 49, scope: !155961)
!155972 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !155973)
!155973 = !DILocation(line: 214, column: 28, scope: !155974, inlinedAt: !155975)
!155974 = !DILexicalBlockFile(scope: !155940, file: !1698, discriminator: 2)
!155975 = !DILocation(line: 784, column: 35, scope: !155976, inlinedAt: !155931)
!155976 = !DILexicalBlockFile(scope: !155977, file: !1698, discriminator: 2)
!155977 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!155978 = !DILocation(line: 1917, column: 50, scope: !155919, inlinedAt: !155979)
!155979 = !DILocation(line: 781, column: 12, scope: !155980, inlinedAt: !155931)
!155980 = !DILexicalBlockFile(scope: !155921, file: !1698, discriminator: 2)
!155981 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !155982)
!155982 = !DILocation(line: 866, column: 14, scope: !155983, inlinedAt: !155984)
!155983 = !DILexicalBlockFile(scope: !155923, file: !1698, discriminator: 10)
!155984 = !DILocation(line: 327, column: 43, scope: !155985)
!155985 = !DILexicalBlockFile(scope: !155986, file: !5557, discriminator: 2)
!155986 = distinct !DILexicalBlock(scope: !155936, file: !5557, line: 327, column: 33)
!155987 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !155988)
!155988 = !DILocation(line: 214, column: 28, scope: !155989, inlinedAt: !155990)
!155989 = !DILexicalBlockFile(scope: !155940, file: !1698, discriminator: 4)
!155990 = !DILocation(line: 784, column: 35, scope: !155991, inlinedAt: !155953)
!155991 = !DILexicalBlockFile(scope: !155992, file: !1698, discriminator: 4)
!155992 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!155993 = !DILocation(line: 614, column: 9, scope: !155994, inlinedAt: !155995)
!155994 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[f32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSfEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155995 = !DILocation(line: 609, column: 14, scope: !155996, inlinedAt: !155997)
!155996 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[f32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSfEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155997 = !DILocation(line: 296, column: 20, scope: !155998, inlinedAt: !155999)
!155998 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[f32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSfEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!155999 = !DILocation(line: 1942, column: 18, scope: !156000, inlinedAt: !156001)
!156000 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[f32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSfEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156001 = !DILocation(line: 1841, column: 76, scope: !156002, inlinedAt: !156003)
!156002 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[f32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSfEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156003 = !DILocation(line: 3756, column: 14, scope: !156004, inlinedAt: !156005)
!156004 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[f32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSfEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156005 = !DILocation(line: 3831, column: 23, scope: !155950, inlinedAt: !155951)
!156006 = !DILocation(line: 272, column: 9, scope: !155946, inlinedAt: !155947)
!156007 = !DILocation(line: 273, column: 60, scope: !156008)
!156008 = distinct !DILexicalBlock(scope: !155944, file: !5557, line: 272, column: 37)
!156009 = !DILocation(line: 273, column: 52, scope: !156008)
!156010 = !DILocation(line: 273, column: 47, scope: !156008)
!156011 = !DILocation(line: 275, column: 43, scope: !156012)
!156012 = distinct !DILexicalBlock(scope: !156008, file: !5557, line: 273, column: 37)
!156013 = !DILocation(line: 272, column: 10, scope: !156014, inlinedAt: !156015)
!156014 = distinct !DISubprogram(name: "index<&[f32]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSfE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156015 = !DILocation(line: 19, column: 15, scope: !156016, inlinedAt: !156018)
!156016 = !DILexicalBlockFile(scope: !156017, file: !1681, discriminator: 2)
!156017 = distinct !DISubprogram(name: "index<&[f32], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSfINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156018 = !DILocation(line: 3831, column: 9, scope: !156019, inlinedAt: !156021)
!156019 = !DILexicalBlockFile(scope: !156020, file: !362, discriminator: 2)
!156020 = distinct !DISubprogram(name: "index<&[f32], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSfEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156021 = !DILocation(line: 278, column: 67, scope: !156012)
!156022 = !DILocation(line: 614, column: 9, scope: !156023, inlinedAt: !156024)
!156023 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[f32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSfECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156024 = !DILocation(line: 609, column: 14, scope: !156025, inlinedAt: !156027)
!156025 = !DILexicalBlockFile(scope: !156026, file: !1901, discriminator: 2)
!156026 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[f32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSfECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156027 = !DILocation(line: 296, column: 20, scope: !156028, inlinedAt: !156030)
!156028 = !DILexicalBlockFile(scope: !156029, file: !1901, discriminator: 2)
!156029 = distinct !DISubprogram(name: "ptr<&[f32], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSfE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156030 = !DILocation(line: 1942, column: 18, scope: !156031, inlinedAt: !156033)
!156031 = !DILexicalBlockFile(scope: !156032, file: !362, discriminator: 2)
!156032 = distinct !DISubprogram(name: "as_ptr<&[f32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSfE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156033 = !DILocation(line: 1841, column: 76, scope: !156034, inlinedAt: !156036)
!156034 = !DILexicalBlockFile(scope: !156035, file: !362, discriminator: 2)
!156035 = distinct !DISubprogram(name: "as_slice<&[f32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSfE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156036 = !DILocation(line: 3756, column: 14, scope: !156037, inlinedAt: !156039)
!156037 = !DILexicalBlockFile(scope: !156038, file: !362, discriminator: 2)
!156038 = distinct !DISubprogram(name: "deref<&[f32], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSfENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156039 = !DILocation(line: 3831, column: 23, scope: !156019, inlinedAt: !156021)
!156040 = !DILocation(line: 272, column: 9, scope: !156014, inlinedAt: !156015)
!156041 = !DILocation(line: 278, column: 61, scope: !156012)
!156042 = !DILocation(line: 278, column: 41, scope: !156012)
!156043 = !DILocation(line: 276, column: 41, scope: !156012)
!156044 = !DILocation(line: 277, column: 41, scope: !156012)
!156045 = !DILocation(line: 0, scope: !156012)
!156046 = !DILocation(line: 280, column: 40, scope: !156012)
!156047 = distinct !{!156047, !153454}
!156048 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !156049)
!156049 = !DILocation(line: 866, column: 14, scope: !156050, inlinedAt: !156051)
!156050 = !DILexicalBlockFile(scope: !155923, file: !1698, discriminator: 6)
!156051 = !DILocation(line: 304, column: 47, scope: !156052)
!156052 = !DILexicalBlockFile(scope: !156053, file: !5557, discriminator: 2)
!156053 = distinct !DILexicalBlock(scope: !155936, file: !5557, line: 304, column: 37)
!156054 = !DILocation(line: 281, column: 65, scope: !156012)
!156055 = !DILocation(line: 1841, column: 86, scope: !156035, inlinedAt: !156056)
!156056 = !DILocation(line: 3756, column: 14, scope: !156057, inlinedAt: !156058)
!156057 = !DILexicalBlockFile(scope: !156038, file: !362, discriminator: 4)
!156058 = !DILocation(line: 3831, column: 23, scope: !156059, inlinedAt: !156060)
!156059 = !DILexicalBlockFile(scope: !156020, file: !362, discriminator: 4)
!156060 = !DILocation(line: 281, column: 64, scope: !156012)
!156061 = !DILocation(line: 272, column: 10, scope: !156014, inlinedAt: !156062)
!156062 = !DILocation(line: 19, column: 15, scope: !156063, inlinedAt: !156064)
!156063 = !DILexicalBlockFile(scope: !156017, file: !1681, discriminator: 4)
!156064 = !DILocation(line: 3831, column: 9, scope: !156059, inlinedAt: !156060)
!156065 = !DILocation(line: 1917, column: 50, scope: !155919, inlinedAt: !156066)
!156066 = !DILocation(line: 781, column: 12, scope: !156067, inlinedAt: !156049)
!156067 = !DILexicalBlockFile(scope: !155921, file: !1698, discriminator: 6)
!156068 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !156069)
!156069 = !DILocation(line: 214, column: 28, scope: !156070, inlinedAt: !156071)
!156070 = !DILexicalBlockFile(scope: !155940, file: !1698, discriminator: 6)
!156071 = !DILocation(line: 784, column: 35, scope: !156072, inlinedAt: !156049)
!156072 = !DILexicalBlockFile(scope: !156073, file: !1698, discriminator: 6)
!156073 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!156074 = !DILocation(line: 305, column: 55, scope: !156075)
!156075 = distinct !DILexicalBlock(scope: !156053, file: !5557, line: 304, column: 37)
!156076 = !DILocation(line: 781, column: 12, scope: !155921, inlinedAt: !156077)
!156077 = !DILocation(line: 866, column: 14, scope: !156078, inlinedAt: !156079)
!156078 = !DILexicalBlockFile(scope: !155923, file: !1698, discriminator: 8)
!156079 = !DILocation(line: 307, column: 51, scope: !156080)
!156080 = !DILexicalBlockFile(scope: !156081, file: !5557, discriminator: 2)
!156081 = distinct !DILexicalBlock(scope: !156082, file: !5557, line: 307, column: 41)
!156082 = distinct !DILexicalBlock(scope: !156083, file: !5557, line: 306, column: 41)
!156083 = distinct !DILexicalBlock(scope: !156075, file: !5557, line: 305, column: 41)
!156084 = !DILocation(line: 328, column: 51, scope: !156085)
!156085 = distinct !DILexicalBlock(scope: !155986, file: !5557, line: 327, column: 33)
!156086 = !DILocation(line: 329, column: 51, scope: !156087)
!156087 = distinct !DILexicalBlock(scope: !156085, file: !5557, line: 328, column: 37)
!156088 = !DILocation(line: 89, column: 24, scope: !156089, inlinedAt: !156091)
!156089 = distinct !DILexicalBlock(scope: !156090, file: !1681, line: 87, column: 5)
!156090 = distinct !DISubprogram(name: "get_offset_len_noubcheck<f32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckfECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156091 = !DILocation(line: 441, column: 24, scope: !156092, inlinedAt: !156093)
!156092 = distinct !DISubprogram(name: "index<f32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSfE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156093 = !DILocation(line: 19, column: 15, scope: !156094, inlinedAt: !156096)
!156094 = !DILexicalBlockFile(scope: !156095, file: !1681, discriminator: 12)
!156095 = distinct !DISubprogram(name: "index<f32, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSfINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156096 = !DILocation(line: 390, column: 9, scope: !156097, inlinedAt: !156098)
!156097 = distinct !DISubprogram(name: "index<f32, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAfj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156098 = !DILocation(line: 330, column: 51, scope: !156099)
!156099 = distinct !DILexicalBlock(scope: !156087, file: !5557, line: 329, column: 37)
!156100 = !DILocation(line: 26, column: 9, scope: !156101, inlinedAt: !156102)
!156101 = distinct !DISubprogram(name: "get<f32>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrfE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156102 = !DILocation(line: 336, column: 49, scope: !156103)
!156103 = distinct !DILexicalBlock(scope: !156099, file: !5557, line: 330, column: 37)
!156104 = !DILocation(line: 961, column: 18, scope: !156105, inlinedAt: !156106)
!156105 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156106 = !DILocation(line: 336, column: 55, scope: !156103)
!156107 = !DILocation(line: 552, column: 14, scope: !156108, inlinedAt: !156109)
!156108 = distinct !DISubprogram(name: "copy_nonoverlapping<f32>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingfECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156109 = !DILocation(line: 334, column: 41, scope: !156103)
!156110 = !DILocation(line: 341, column: 29, scope: !155927)
!156111 = !DILocation(line: 341, column: 29, scope: !155916)
!156112 = !DILocation(line: 341, column: 29, scope: !155907)
!156113 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !156114)
!156114 = !DILocation(line: 214, column: 28, scope: !156115, inlinedAt: !156116)
!156115 = !DILexicalBlockFile(scope: !155940, file: !1698, discriminator: 10)
!156116 = !DILocation(line: 784, column: 35, scope: !156117, inlinedAt: !155982)
!156117 = !DILexicalBlockFile(scope: !156118, file: !1698, discriminator: 10)
!156118 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!156119 = !DILocation(line: 898, column: 17, scope: !155938, inlinedAt: !156120)
!156120 = !DILocation(line: 214, column: 28, scope: !156121, inlinedAt: !156122)
!156121 = !DILexicalBlockFile(scope: !155940, file: !1698, discriminator: 8)
!156122 = !DILocation(line: 784, column: 35, scope: !156123, inlinedAt: !156077)
!156123 = !DILexicalBlockFile(scope: !156124, file: !1698, discriminator: 8)
!156124 = distinct !DILexicalBlock(scope: !155921, file: !1698, line: 782, column: 13)
!156125 = !DILocation(line: 308, column: 73, scope: !156126)
!156126 = distinct !DILexicalBlock(scope: !156081, file: !5557, line: 307, column: 41)
!156127 = !DILocation(line: 272, column: 10, scope: !155946, inlinedAt: !156128)
!156128 = !DILocation(line: 19, column: 15, scope: !156129, inlinedAt: !156130)
!156129 = !DILexicalBlockFile(scope: !155948, file: !1681, discriminator: 6)
!156130 = !DILocation(line: 3831, column: 9, scope: !156131, inlinedAt: !156132)
!156131 = !DILexicalBlockFile(scope: !155950, file: !362, discriminator: 6)
!156132 = !DILocation(line: 308, column: 72, scope: !156126)
!156133 = !DILocation(line: 272, column: 9, scope: !155946, inlinedAt: !156128)
!156134 = !DILocation(line: 309, column: 68, scope: !156135)
!156135 = distinct !DILexicalBlock(scope: !156126, file: !5557, line: 308, column: 45)
!156136 = !DILocation(line: 309, column: 60, scope: !156135)
!156137 = !DILocation(line: 309, column: 55, scope: !156135)
!156138 = !DILocation(line: 310, column: 51, scope: !156139)
!156139 = distinct !DILexicalBlock(scope: !156135, file: !5557, line: 309, column: 45)
!156140 = !DILocation(line: 320, column: 77, scope: !156139)
!156141 = !DILocation(line: 1841, column: 86, scope: !156035, inlinedAt: !156142)
!156142 = !DILocation(line: 3756, column: 14, scope: !156143, inlinedAt: !156144)
!156143 = !DILexicalBlockFile(scope: !156038, file: !362, discriminator: 10)
!156144 = !DILocation(line: 3831, column: 23, scope: !156145, inlinedAt: !156146)
!156145 = !DILexicalBlockFile(scope: !156020, file: !362, discriminator: 10)
!156146 = !DILocation(line: 320, column: 76, scope: !156139)
!156147 = !DILocation(line: 272, column: 10, scope: !156014, inlinedAt: !156148)
!156148 = !DILocation(line: 19, column: 15, scope: !156149, inlinedAt: !156150)
!156149 = !DILexicalBlockFile(scope: !156017, file: !1681, discriminator: 8)
!156150 = !DILocation(line: 3831, column: 9, scope: !156151, inlinedAt: !156152)
!156151 = !DILexicalBlockFile(scope: !156020, file: !362, discriminator: 8)
!156152 = !DILocation(line: 313, column: 75, scope: !156139)
!156153 = !DILocation(line: 614, column: 9, scope: !156023, inlinedAt: !156154)
!156154 = !DILocation(line: 609, column: 14, scope: !156155, inlinedAt: !156156)
!156155 = !DILexicalBlockFile(scope: !156026, file: !1901, discriminator: 8)
!156156 = !DILocation(line: 296, column: 20, scope: !156157, inlinedAt: !156158)
!156157 = !DILexicalBlockFile(scope: !156029, file: !1901, discriminator: 8)
!156158 = !DILocation(line: 1942, column: 18, scope: !156159, inlinedAt: !156160)
!156159 = !DILexicalBlockFile(scope: !156032, file: !362, discriminator: 8)
!156160 = !DILocation(line: 1841, column: 76, scope: !156161, inlinedAt: !156162)
!156161 = !DILexicalBlockFile(scope: !156035, file: !362, discriminator: 8)
!156162 = !DILocation(line: 3756, column: 14, scope: !156163, inlinedAt: !156164)
!156163 = !DILexicalBlockFile(scope: !156038, file: !362, discriminator: 8)
!156164 = !DILocation(line: 3831, column: 23, scope: !156151, inlinedAt: !156152)
!156165 = !DILocation(line: 272, column: 9, scope: !156014, inlinedAt: !156148)
!156166 = !DILocation(line: 313, column: 69, scope: !156139)
!156167 = !DILocation(line: 313, column: 49, scope: !156139)
!156168 = !DILocation(line: 311, column: 49, scope: !156139)
!156169 = !DILocation(line: 312, column: 49, scope: !156139)
!156170 = !DILocation(line: 0, scope: !156139)
!156171 = !DILocation(line: 272, column: 10, scope: !156014, inlinedAt: !156172)
!156172 = !DILocation(line: 19, column: 15, scope: !156173, inlinedAt: !156174)
!156173 = !DILexicalBlockFile(scope: !156017, file: !1681, discriminator: 10)
!156174 = !DILocation(line: 3831, column: 9, scope: !156145, inlinedAt: !156146)
!156175 = distinct !{!156175, !153454}
!156176 = !DILocation(line: 614, column: 9, scope: !156023, inlinedAt: !156177)
!156177 = !DILocation(line: 609, column: 14, scope: !156178, inlinedAt: !156179)
!156178 = !DILexicalBlockFile(scope: !156026, file: !1901, discriminator: 10)
!156179 = !DILocation(line: 296, column: 20, scope: !156180, inlinedAt: !156181)
!156180 = !DILexicalBlockFile(scope: !156029, file: !1901, discriminator: 10)
end_hunk_15
begin_hunk_16_@llvm.vector.reduce.add.v2i64
!156420 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !156421)
!156421 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !156414)
!156422 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !156414)
!156423 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Float64Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes11Float64TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156424 = !DILocation(line: 225, column: 45, scope: !156423)
!156425 = !DILocation(line: 225, column: 37, scope: !156423)
!156426 = !DILocation(line: 226, column: 35, scope: !156427)
!156427 = distinct !DILexicalBlock(scope: !156423, file: !5557, line: 225, column: 21)
!156428 = !DILocation(line: 226, column: 63, scope: !156427)
!156429 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !156430)
!156430 = distinct !DILocation(line: 226, column: 59, scope: !156427)
!156431 = !DILocation(line: 227, column: 38, scope: !156432)
!156432 = distinct !DILexicalBlock(scope: !156427, file: !5557, line: 226, column: 21)
!156433 = !DILocation(line: 229, column: 42, scope: !156434)
!156434 = distinct !DILexicalBlock(scope: !156432, file: !5557, line: 227, column: 21)
!156435 = !DILocation(line: 446, column: 20, scope: !156436, inlinedAt: !156439)
!156436 = distinct !DILexicalBlock(scope: !156437, file: !153176, line: 445, column: 17)
!156437 = distinct !DILexicalBlock(scope: !156438, file: !153176, line: 444, column: 17)
!156438 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156439 = !DILocation(line: 59, column: 14, scope: !156440, inlinedAt: !156441)
!156440 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156441 = !DILocation(line: 229, column: 38, scope: !156442)
!156442 = !DILexicalBlockFile(scope: !156443, file: !5557, discriminator: 2)
!156443 = distinct !DILexicalBlock(scope: !156434, file: !5557, line: 229, column: 21)
!156444 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !156445)
!156445 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !156446)
!156446 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !156447)
!156447 = distinct !DILocation(line: 439, column: 9, scope: !156448, inlinedAt: !156449)
!156448 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156449 = !DILocation(line: 229, column: 52, scope: !156434)
!156450 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !156445)
!156451 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !156445)
!156452 = !DILocation(line: 936, column: 11, scope: !156453, inlinedAt: !156455)
!156453 = distinct !DILexicalBlock(scope: !156454, file: !52151, line: 934, column: 5)
!156454 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156455 = distinct !DILocation(line: 154, column: 11, scope: !156456, inlinedAt: !156458)
!156456 = distinct !DILexicalBlock(scope: !156457, file: !52151, line: 153, column: 5)
!156457 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156458 = distinct !DILocation(line: 113, column: 5, scope: !156459, inlinedAt: !156460)
!156459 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float64Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes11Float64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156460 = !DILocation(line: 234, column: 64, scope: !156461)
!156461 = distinct !DILexicalBlock(scope: !156462, file: !5557, line: 230, column: 25)
!156462 = distinct !DILexicalBlock(scope: !156443, file: !5557, line: 229, column: 21)
!156463 = !DILocation(line: 229, column: 25, scope: !156443)
!156464 = !DILocation(line: 230, column: 42, scope: !156462)
!156465 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !156466)
!156466 = distinct !DILocation(line: 230, column: 65, scope: !156462)
!156467 = !DILocation(line: 230, column: 65, scope: !156462)
!156468 = !DILocation(line: 234, column: 29, scope: !156461)
!156469 = !DILocation(line: 113, column: 5, scope: !156459, inlinedAt: !156460)
!156470 = !DILocation(line: 113, column: 17, scope: !156459, inlinedAt: !156460)
!156471 = !DILocation(line: 431, column: 9, scope: !156472, inlinedAt: !156470)
!156472 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Float64Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes11Float64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156473 = !{!156474, !156476}
!156474 = distinct !{!156474, !156475, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!156475 = distinct !{!156475, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!156476 = distinct !{!156476, !156475, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!156477 = !DILocation(line: 937, column: 20, scope: !156453, inlinedAt: !156455)
!156478 = !{!156479, !156474}
!156479 = distinct !{!156479, !156480, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!156480 = distinct !{!156480, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes11Float64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!156481 = !DILocation(line: 266, column: 18, scope: !156482, inlinedAt: !156483)
!156482 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156483 = distinct !DILocation(line: 691, column: 30, scope: !156484, inlinedAt: !156485)
!156484 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156485 = distinct !DILocation(line: 978, column: 28, scope: !156486, inlinedAt: !156487)
!156486 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156487 = distinct !DILocation(line: 940, column: 24, scope: !156488, inlinedAt: !156455)
!156488 = distinct !DILexicalBlock(scope: !156453, file: !52151, line: 937, column: 9)
!156489 = !DILocation(line: 81, column: 9, scope: !156490, inlinedAt: !156491)
!156490 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156491 = distinct !DILocation(line: 185, column: 31, scope: !156492, inlinedAt: !156493)
!156492 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156493 = distinct !DILocation(line: 407, column: 30, scope: !156494, inlinedAt: !156495)
!156494 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156495 = distinct !DILocation(line: 574, column: 17, scope: !156496, inlinedAt: !156497)
!156496 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156497 = distinct !DILocation(line: 978, column: 64, scope: !156486, inlinedAt: !156487)
!156498 = !DILocation(line: 898, column: 17, scope: !156499, inlinedAt: !156500)
!156499 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156500 = distinct !DILocation(line: 979, column: 49, scope: !156486, inlinedAt: !156487)
!156501 = !DILocation(line: 2511, column: 13, scope: !156502, inlinedAt: !156503)
!156502 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156503 = !DILocation(line: 450, column: 43, scope: !156504, inlinedAt: !156439)
!156504 = distinct !DILexicalBlock(scope: !156436, file: !153176, line: 447, column: 21)
!156505 = !DILocation(line: 451, column: 21, scope: !156504, inlinedAt: !156439)
!156506 = !DILocation(line: 945, column: 2, scope: !156454, inlinedAt: !156455)
!156507 = !DILocation(line: 161, column: 2, scope: !156457, inlinedAt: !156458)
!156508 = !DILocation(line: 113, column: 49, scope: !156459, inlinedAt: !156460)
!156509 = !DILocation(line: 113, column: 51, scope: !156459, inlinedAt: !156460)
!156510 = !DILocation(line: 343, column: 21, scope: !156461)
!156511 = !DILocation(line: 344, column: 18, scope: !156423)
!156512 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !156513)
!156513 = distinct !DILocation(line: 158, column: 19, scope: !156456, inlinedAt: !156458)
!156514 = !{!156476}
!156515 = !DILocation(line: 446, column: 20, scope: !156516, inlinedAt: !156518)
!156516 = distinct !DILexicalBlock(scope: !156517, file: !153176, line: 445, column: 17)
!156517 = distinct !DILexicalBlock(scope: !156438, file: !153176, line: 444, column: 17)
!156518 = !DILocation(line: 59, column: 14, scope: !156519, inlinedAt: !156520)
!156519 = !DILexicalBlockFile(scope: !156440, file: !153176, discriminator: 2)
!156520 = !DILocation(line: 255, column: 35, scope: !156521)
!156521 = !DILexicalBlockFile(scope: !156522, file: !5557, discriminator: 2)
!156522 = distinct !DILexicalBlock(scope: !156523, file: !5557, line: 255, column: 25)
!156523 = distinct !DILexicalBlock(scope: !156461, file: !5557, line: 234, column: 25)
!156524 = !DILocation(line: 2511, column: 13, scope: !156502, inlinedAt: !156525)
!156525 = !DILocation(line: 450, column: 43, scope: !156526, inlinedAt: !156518)
!156526 = !DILexicalBlockFile(scope: !156527, file: !153176, discriminator: 2)
!156527 = distinct !DILexicalBlock(scope: !156516, file: !153176, line: 447, column: 21)
!156528 = !DILocation(line: 451, column: 21, scope: !156527, inlinedAt: !156518)
!156529 = !DILocation(line: 257, column: 49, scope: !156530)
!156530 = distinct !DILexicalBlock(scope: !156531, file: !5557, line: 256, column: 29)
!156531 = distinct !DILexicalBlock(scope: !156522, file: !5557, line: 255, column: 25)
!156532 = !DILocation(line: 259, column: 39, scope: !156533)
!156533 = distinct !DILexicalBlock(scope: !156530, file: !5557, line: 257, column: 29)
!156534 = !DILocation(line: 446, column: 20, scope: !156535, inlinedAt: !156537)
!156535 = distinct !DILexicalBlock(scope: !156536, file: !153176, line: 445, column: 17)
!156536 = distinct !DILexicalBlock(scope: !156438, file: !153176, line: 444, column: 17)
!156537 = !DILocation(line: 59, column: 14, scope: !156538, inlinedAt: !156539)
!156538 = !DILexicalBlockFile(scope: !156440, file: !153176, discriminator: 4)
!156539 = !DILocation(line: 259, column: 39, scope: !156540)
!156540 = !DILexicalBlockFile(scope: !156541, file: !5557, discriminator: 2)
!156541 = distinct !DILexicalBlock(scope: !156533, file: !5557, line: 259, column: 29)
!156542 = !DILocation(line: 256, column: 45, scope: !156531)
!156543 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !156544)
!156544 = distinct !DILocation(line: 256, column: 63, scope: !156531)
!156545 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !156546)
!156546 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !156547)
!156547 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !156548)
!156548 = distinct !DILocation(line: 439, column: 9, scope: !156448, inlinedAt: !156549)
!156549 = !DILocation(line: 259, column: 55, scope: !156533)
!156550 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !156546)
!156551 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !156546)
!156552 = !DILocation(line: 260, column: 49, scope: !156553)
!156553 = distinct !DILexicalBlock(scope: !156541, file: !5557, line: 259, column: 29)
!156554 = !DILocation(line: 268, column: 37, scope: !156555)
!156555 = distinct !DILexicalBlock(scope: !156553, file: !5557, line: 260, column: 33)
!156556 = !DILocation(line: 2511, column: 13, scope: !156502, inlinedAt: !156557)
!156557 = !DILocation(line: 450, column: 43, scope: !156558, inlinedAt: !156537)
!156558 = !DILexicalBlockFile(scope: !156559, file: !153176, discriminator: 4)
!156559 = distinct !DILexicalBlock(scope: !156535, file: !153176, line: 447, column: 21)
!156560 = !DILocation(line: 451, column: 21, scope: !156559, inlinedAt: !156537)
!156561 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !156562)
!156562 = distinct !DILocation(line: 260, column: 67, scope: !156553)
!156563 = !DILocation(line: 269, column: 37, scope: !156564)
!156564 = distinct !DILexicalBlock(scope: !156555, file: !5557, line: 268, column: 33)
!156565 = !DILocation(line: 269, column: 52, scope: !156564)
!156566 = !DILocation(line: 1917, column: 50, scope: !156567, inlinedAt: !156568)
!156567 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156568 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156570)
!156569 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156570 = !DILocation(line: 866, column: 14, scope: !156571, inlinedAt: !156572)
!156571 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156572 = !DILocation(line: 271, column: 43, scope: !156573)
!156573 = !DILexicalBlockFile(scope: !156574, file: !5557, discriminator: 2)
!156574 = distinct !DILexicalBlock(scope: !156575, file: !5557, line: 271, column: 33)
!156575 = distinct !DILexicalBlock(scope: !156576, file: !5557, line: 270, column: 33)
!156576 = distinct !DILexicalBlock(scope: !156564, file: !5557, line: 269, column: 33)
!156577 = !DILocation(line: 289, column: 37, scope: !156575)
!156578 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156579)
!156579 = !DILocation(line: 866, column: 14, scope: !156580, inlinedAt: !156581)
!156580 = !DILexicalBlockFile(scope: !156571, file: !1698, discriminator: 2)
!156581 = !DILocation(line: 292, column: 47, scope: !156582)
!156582 = !DILexicalBlockFile(scope: !156583, file: !5557, discriminator: 2)
!156583 = distinct !DILexicalBlock(scope: !156584, file: !5557, line: 292, column: 37)
!156584 = distinct !DILexicalBlock(scope: !156575, file: !5557, line: 289, column: 33)
!156585 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156587)
!156586 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156587 = !DILocation(line: 214, column: 28, scope: !156588, inlinedAt: !156589)
!156588 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156589 = !DILocation(line: 784, column: 35, scope: !156590, inlinedAt: !156570)
!156590 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156591 = !DILocation(line: 272, column: 65, scope: !156592)
!156592 = distinct !DILexicalBlock(scope: !156574, file: !5557, line: 271, column: 33)
!156593 = !DILocation(line: 272, column: 10, scope: !156594, inlinedAt: !156595)
!156594 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f64], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSdEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156595 = !DILocation(line: 19, column: 15, scope: !156596, inlinedAt: !156597)
!156596 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f64], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSdEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156597 = !DILocation(line: 3831, column: 9, scope: !156598, inlinedAt: !156599)
!156598 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[f64], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSdEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156599 = !DILocation(line: 272, column: 64, scope: !156592)
!156600 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156601)
!156601 = !DILocation(line: 866, column: 14, scope: !156602, inlinedAt: !156603)
!156602 = !DILexicalBlockFile(scope: !156571, file: !1698, discriminator: 4)
!156603 = !DILocation(line: 294, column: 51, scope: !156604)
!156604 = !DILexicalBlockFile(scope: !156605, file: !5557, discriminator: 2)
!156605 = distinct !DILexicalBlock(scope: !156606, file: !5557, line: 294, column: 41)
!156606 = distinct !DILexicalBlock(scope: !156607, file: !5557, line: 293, column: 41)
!156607 = distinct !DILexicalBlock(scope: !156583, file: !5557, line: 292, column: 37)
!156608 = !DILocation(line: 298, column: 70, scope: !156609)
!156609 = distinct !DILexicalBlock(scope: !156605, file: !5557, line: 294, column: 41)
!156610 = !DILocation(line: 299, column: 68, scope: !156609)
!156611 = !DILocation(line: 252, column: 39, scope: !156612, inlinedAt: !156613)
!156612 = distinct !DISubprogram(name: "get_unchecked<f64>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSdE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156613 = !DILocation(line: 646, column: 26, scope: !156614, inlinedAt: !156615)
!156614 = distinct !DISubprogram(name: "get_unchecked<f64, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSd13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156615 = !DILocation(line: 299, column: 54, scope: !156609)
!156616 = !DILocation(line: 252, column: 13, scope: !156612, inlinedAt: !156613)
!156617 = !DILocation(line: 253, column: 13, scope: !156612, inlinedAt: !156613)
!156618 = !DILocation(line: 298, column: 69, scope: !156609)
!156619 = !DILocation(line: 298, column: 49, scope: !156609)
!156620 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156621)
!156621 = !DILocation(line: 214, column: 28, scope: !156622, inlinedAt: !156623)
!156622 = !DILexicalBlockFile(scope: !156588, file: !1698, discriminator: 2)
!156623 = !DILocation(line: 784, column: 35, scope: !156624, inlinedAt: !156579)
!156624 = !DILexicalBlockFile(scope: !156625, file: !1698, discriminator: 2)
!156625 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156626 = !DILocation(line: 1917, column: 50, scope: !156567, inlinedAt: !156627)
!156627 = !DILocation(line: 781, column: 12, scope: !156628, inlinedAt: !156579)
!156628 = !DILexicalBlockFile(scope: !156569, file: !1698, discriminator: 2)
!156629 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156630)
!156630 = !DILocation(line: 866, column: 14, scope: !156631, inlinedAt: !156632)
!156631 = !DILexicalBlockFile(scope: !156571, file: !1698, discriminator: 10)
!156632 = !DILocation(line: 327, column: 43, scope: !156633)
!156633 = !DILexicalBlockFile(scope: !156634, file: !5557, discriminator: 2)
!156634 = distinct !DILexicalBlock(scope: !156584, file: !5557, line: 327, column: 33)
!156635 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156636)
!156636 = !DILocation(line: 214, column: 28, scope: !156637, inlinedAt: !156638)
!156637 = !DILexicalBlockFile(scope: !156588, file: !1698, discriminator: 4)
!156638 = !DILocation(line: 784, column: 35, scope: !156639, inlinedAt: !156601)
!156639 = !DILexicalBlockFile(scope: !156640, file: !1698, discriminator: 4)
!156640 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156641 = !DILocation(line: 614, column: 9, scope: !156642, inlinedAt: !156643)
!156642 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[f64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSdEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156643 = !DILocation(line: 609, column: 14, scope: !156644, inlinedAt: !156645)
!156644 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[f64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSdEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156645 = !DILocation(line: 296, column: 20, scope: !156646, inlinedAt: !156647)
!156646 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[f64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSdEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156647 = !DILocation(line: 1942, column: 18, scope: !156648, inlinedAt: !156649)
!156648 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[f64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSdEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156649 = !DILocation(line: 1841, column: 76, scope: !156650, inlinedAt: !156651)
!156650 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[f64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSdEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156651 = !DILocation(line: 3756, column: 14, scope: !156652, inlinedAt: !156653)
!156652 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[f64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSdEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156653 = !DILocation(line: 3831, column: 23, scope: !156598, inlinedAt: !156599)
!156654 = !DILocation(line: 272, column: 9, scope: !156594, inlinedAt: !156595)
!156655 = !DILocation(line: 273, column: 60, scope: !156656)
!156656 = distinct !DILexicalBlock(scope: !156592, file: !5557, line: 272, column: 37)
!156657 = !DILocation(line: 273, column: 52, scope: !156656)
!156658 = !DILocation(line: 273, column: 47, scope: !156656)
!156659 = !DILocation(line: 275, column: 43, scope: !156660)
!156660 = distinct !DILexicalBlock(scope: !156656, file: !5557, line: 273, column: 37)
!156661 = !DILocation(line: 272, column: 10, scope: !156662, inlinedAt: !156663)
!156662 = distinct !DISubprogram(name: "index<&[f64]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSdE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156663 = !DILocation(line: 19, column: 15, scope: !156664, inlinedAt: !156666)
!156664 = !DILexicalBlockFile(scope: !156665, file: !1681, discriminator: 2)
!156665 = distinct !DISubprogram(name: "index<&[f64], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSdINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156666 = !DILocation(line: 3831, column: 9, scope: !156667, inlinedAt: !156669)
!156667 = !DILexicalBlockFile(scope: !156668, file: !362, discriminator: 2)
!156668 = distinct !DISubprogram(name: "index<&[f64], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSdEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156669 = !DILocation(line: 278, column: 67, scope: !156660)
!156670 = !DILocation(line: 614, column: 9, scope: !156671, inlinedAt: !156672)
!156671 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[f64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSdECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156672 = !DILocation(line: 609, column: 14, scope: !156673, inlinedAt: !156675)
!156673 = !DILexicalBlockFile(scope: !156674, file: !1901, discriminator: 2)
!156674 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[f64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSdECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156675 = !DILocation(line: 296, column: 20, scope: !156676, inlinedAt: !156678)
!156676 = !DILexicalBlockFile(scope: !156677, file: !1901, discriminator: 2)
!156677 = distinct !DISubprogram(name: "ptr<&[f64], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSdE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156678 = !DILocation(line: 1942, column: 18, scope: !156679, inlinedAt: !156681)
!156679 = !DILexicalBlockFile(scope: !156680, file: !362, discriminator: 2)
!156680 = distinct !DISubprogram(name: "as_ptr<&[f64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSdE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156681 = !DILocation(line: 1841, column: 76, scope: !156682, inlinedAt: !156684)
!156682 = !DILexicalBlockFile(scope: !156683, file: !362, discriminator: 2)
!156683 = distinct !DISubprogram(name: "as_slice<&[f64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSdE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156684 = !DILocation(line: 3756, column: 14, scope: !156685, inlinedAt: !156687)
!156685 = !DILexicalBlockFile(scope: !156686, file: !362, discriminator: 2)
!156686 = distinct !DISubprogram(name: "deref<&[f64], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSdENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156687 = !DILocation(line: 3831, column: 23, scope: !156667, inlinedAt: !156669)
!156688 = !DILocation(line: 272, column: 9, scope: !156662, inlinedAt: !156663)
!156689 = !DILocation(line: 278, column: 61, scope: !156660)
!156690 = !DILocation(line: 278, column: 41, scope: !156660)
!156691 = !DILocation(line: 276, column: 41, scope: !156660)
!156692 = !DILocation(line: 277, column: 41, scope: !156660)
!156693 = !DILocation(line: 0, scope: !156660)
!156694 = !DILocation(line: 280, column: 40, scope: !156660)
!156695 = distinct !{!156695, !153454}
!156696 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156697)
!156697 = !DILocation(line: 866, column: 14, scope: !156698, inlinedAt: !156699)
!156698 = !DILexicalBlockFile(scope: !156571, file: !1698, discriminator: 6)
!156699 = !DILocation(line: 304, column: 47, scope: !156700)
!156700 = !DILexicalBlockFile(scope: !156701, file: !5557, discriminator: 2)
!156701 = distinct !DILexicalBlock(scope: !156584, file: !5557, line: 304, column: 37)
!156702 = !DILocation(line: 281, column: 65, scope: !156660)
!156703 = !DILocation(line: 1841, column: 86, scope: !156683, inlinedAt: !156704)
!156704 = !DILocation(line: 3756, column: 14, scope: !156705, inlinedAt: !156706)
!156705 = !DILexicalBlockFile(scope: !156686, file: !362, discriminator: 4)
!156706 = !DILocation(line: 3831, column: 23, scope: !156707, inlinedAt: !156708)
!156707 = !DILexicalBlockFile(scope: !156668, file: !362, discriminator: 4)
!156708 = !DILocation(line: 281, column: 64, scope: !156660)
!156709 = !DILocation(line: 272, column: 10, scope: !156662, inlinedAt: !156710)
!156710 = !DILocation(line: 19, column: 15, scope: !156711, inlinedAt: !156712)
!156711 = !DILexicalBlockFile(scope: !156665, file: !1681, discriminator: 4)
!156712 = !DILocation(line: 3831, column: 9, scope: !156707, inlinedAt: !156708)
!156713 = !DILocation(line: 1917, column: 50, scope: !156567, inlinedAt: !156714)
!156714 = !DILocation(line: 781, column: 12, scope: !156715, inlinedAt: !156697)
!156715 = !DILexicalBlockFile(scope: !156569, file: !1698, discriminator: 6)
!156716 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156717)
!156717 = !DILocation(line: 214, column: 28, scope: !156718, inlinedAt: !156719)
!156718 = !DILexicalBlockFile(scope: !156588, file: !1698, discriminator: 6)
!156719 = !DILocation(line: 784, column: 35, scope: !156720, inlinedAt: !156697)
!156720 = !DILexicalBlockFile(scope: !156721, file: !1698, discriminator: 6)
!156721 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156722 = !DILocation(line: 305, column: 55, scope: !156723)
!156723 = distinct !DILexicalBlock(scope: !156701, file: !5557, line: 304, column: 37)
!156724 = !DILocation(line: 781, column: 12, scope: !156569, inlinedAt: !156725)
!156725 = !DILocation(line: 866, column: 14, scope: !156726, inlinedAt: !156727)
!156726 = !DILexicalBlockFile(scope: !156571, file: !1698, discriminator: 8)
!156727 = !DILocation(line: 307, column: 51, scope: !156728)
!156728 = !DILexicalBlockFile(scope: !156729, file: !5557, discriminator: 2)
!156729 = distinct !DILexicalBlock(scope: !156730, file: !5557, line: 307, column: 41)
!156730 = distinct !DILexicalBlock(scope: !156731, file: !5557, line: 306, column: 41)
!156731 = distinct !DILexicalBlock(scope: !156723, file: !5557, line: 305, column: 41)
!156732 = !DILocation(line: 328, column: 51, scope: !156733)
!156733 = distinct !DILexicalBlock(scope: !156634, file: !5557, line: 327, column: 33)
!156734 = !DILocation(line: 329, column: 51, scope: !156735)
!156735 = distinct !DILexicalBlock(scope: !156733, file: !5557, line: 328, column: 37)
!156736 = !DILocation(line: 89, column: 24, scope: !156737, inlinedAt: !156739)
!156737 = distinct !DILexicalBlock(scope: !156738, file: !1681, line: 87, column: 5)
!156738 = distinct !DISubprogram(name: "get_offset_len_noubcheck<f64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckdECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156739 = !DILocation(line: 441, column: 24, scope: !156740, inlinedAt: !156741)
!156740 = distinct !DISubprogram(name: "index<f64>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSdE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156741 = !DILocation(line: 19, column: 15, scope: !156742, inlinedAt: !156744)
!156742 = !DILexicalBlockFile(scope: !156743, file: !1681, discriminator: 12)
!156743 = distinct !DISubprogram(name: "index<f64, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSdINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156744 = !DILocation(line: 390, column: 9, scope: !156745, inlinedAt: !156746)
!156745 = distinct !DISubprogram(name: "index<f64, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAdj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156746 = !DILocation(line: 330, column: 51, scope: !156747)
!156747 = distinct !DILexicalBlock(scope: !156735, file: !5557, line: 329, column: 37)
!156748 = !DILocation(line: 26, column: 9, scope: !156749, inlinedAt: !156750)
!156749 = distinct !DISubprogram(name: "get<f64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrdE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156750 = !DILocation(line: 336, column: 49, scope: !156751)
!156751 = distinct !DILexicalBlock(scope: !156747, file: !5557, line: 330, column: 37)
!156752 = !DILocation(line: 961, column: 18, scope: !156753, inlinedAt: !156754)
!156753 = distinct !DISubprogram(name: "add<f64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOd3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156754 = !DILocation(line: 336, column: 55, scope: !156751)
!156755 = !DILocation(line: 552, column: 14, scope: !156756, inlinedAt: !156757)
!156756 = distinct !DISubprogram(name: "copy_nonoverlapping<f64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingdECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!156757 = !DILocation(line: 334, column: 41, scope: !156751)
!156758 = !DILocation(line: 341, column: 29, scope: !156575)
!156759 = !DILocation(line: 341, column: 29, scope: !156564)
!156760 = !DILocation(line: 341, column: 29, scope: !156555)
!156761 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156762)
!156762 = !DILocation(line: 214, column: 28, scope: !156763, inlinedAt: !156764)
!156763 = !DILexicalBlockFile(scope: !156588, file: !1698, discriminator: 10)
!156764 = !DILocation(line: 784, column: 35, scope: !156765, inlinedAt: !156630)
!156765 = !DILexicalBlockFile(scope: !156766, file: !1698, discriminator: 10)
!156766 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156767 = !DILocation(line: 898, column: 17, scope: !156586, inlinedAt: !156768)
!156768 = !DILocation(line: 214, column: 28, scope: !156769, inlinedAt: !156770)
!156769 = !DILexicalBlockFile(scope: !156588, file: !1698, discriminator: 8)
!156770 = !DILocation(line: 784, column: 35, scope: !156771, inlinedAt: !156725)
!156771 = !DILexicalBlockFile(scope: !156772, file: !1698, discriminator: 8)
!156772 = distinct !DILexicalBlock(scope: !156569, file: !1698, line: 782, column: 13)
!156773 = !DILocation(line: 308, column: 73, scope: !156774)
!156774 = distinct !DILexicalBlock(scope: !156729, file: !5557, line: 307, column: 41)
!156775 = !DILocation(line: 272, column: 10, scope: !156594, inlinedAt: !156776)
!156776 = !DILocation(line: 19, column: 15, scope: !156777, inlinedAt: !156778)
!156777 = !DILexicalBlockFile(scope: !156596, file: !1681, discriminator: 6)
!156778 = !DILocation(line: 3831, column: 9, scope: !156779, inlinedAt: !156780)
!156779 = !DILexicalBlockFile(scope: !156598, file: !362, discriminator: 6)
!156780 = !DILocation(line: 308, column: 72, scope: !156774)
!156781 = !DILocation(line: 272, column: 9, scope: !156594, inlinedAt: !156776)
!156782 = !DILocation(line: 309, column: 68, scope: !156783)
!156783 = distinct !DILexicalBlock(scope: !156774, file: !5557, line: 308, column: 45)
!156784 = !DILocation(line: 309, column: 60, scope: !156783)
!156785 = !DILocation(line: 309, column: 55, scope: !156783)
!156786 = !DILocation(line: 310, column: 51, scope: !156787)
!156787 = distinct !DILexicalBlock(scope: !156783, file: !5557, line: 309, column: 45)
!156788 = !DILocation(line: 320, column: 77, scope: !156787)
!156789 = !DILocation(line: 1841, column: 86, scope: !156683, inlinedAt: !156790)
!156790 = !DILocation(line: 3756, column: 14, scope: !156791, inlinedAt: !156792)
!156791 = !DILexicalBlockFile(scope: !156686, file: !362, discriminator: 10)
!156792 = !DILocation(line: 3831, column: 23, scope: !156793, inlinedAt: !156794)
!156793 = !DILexicalBlockFile(scope: !156668, file: !362, discriminator: 10)
!156794 = !DILocation(line: 320, column: 76, scope: !156787)
!156795 = !DILocation(line: 272, column: 10, scope: !156662, inlinedAt: !156796)
!156796 = !DILocation(line: 19, column: 15, scope: !156797, inlinedAt: !156798)
!156797 = !DILexicalBlockFile(scope: !156665, file: !1681, discriminator: 8)
!156798 = !DILocation(line: 3831, column: 9, scope: !156799, inlinedAt: !156800)
!156799 = !DILexicalBlockFile(scope: !156668, file: !362, discriminator: 8)
!156800 = !DILocation(line: 313, column: 75, scope: !156787)
!156801 = !DILocation(line: 614, column: 9, scope: !156671, inlinedAt: !156802)
!156802 = !DILocation(line: 609, column: 14, scope: !156803, inlinedAt: !156804)
!156803 = !DILexicalBlockFile(scope: !156674, file: !1901, discriminator: 8)
!156804 = !DILocation(line: 296, column: 20, scope: !156805, inlinedAt: !156806)
!156805 = !DILexicalBlockFile(scope: !156677, file: !1901, discriminator: 8)
!156806 = !DILocation(line: 1942, column: 18, scope: !156807, inlinedAt: !156808)
!156807 = !DILexicalBlockFile(scope: !156680, file: !362, discriminator: 8)
!156808 = !DILocation(line: 1841, column: 76, scope: !156809, inlinedAt: !156810)
!156809 = !DILexicalBlockFile(scope: !156683, file: !362, discriminator: 8)
!156810 = !DILocation(line: 3756, column: 14, scope: !156811, inlinedAt: !156812)
!156811 = !DILexicalBlockFile(scope: !156686, file: !362, discriminator: 8)
!156812 = !DILocation(line: 3831, column: 23, scope: !156799, inlinedAt: !156800)
!156813 = !DILocation(line: 272, column: 9, scope: !156662, inlinedAt: !156796)
!156814 = !DILocation(line: 313, column: 69, scope: !156787)
!156815 = !DILocation(line: 313, column: 49, scope: !156787)
!156816 = !DILocation(line: 311, column: 49, scope: !156787)
!156817 = !DILocation(line: 312, column: 49, scope: !156787)
!156818 = !DILocation(line: 0, scope: !156787)
!156819 = !DILocation(line: 272, column: 10, scope: !156662, inlinedAt: !156820)
!156820 = !DILocation(line: 19, column: 15, scope: !156821, inlinedAt: !156822)
!156821 = !DILexicalBlockFile(scope: !156665, file: !1681, discriminator: 10)
!156822 = !DILocation(line: 3831, column: 9, scope: !156793, inlinedAt: !156794)
!156823 = distinct !{!156823, !153454}
!156824 = !DILocation(line: 614, column: 9, scope: !156671, inlinedAt: !156825)
!156825 = !DILocation(line: 609, column: 14, scope: !156826, inlinedAt: !156827)
!156826 = !DILexicalBlockFile(scope: !156674, file: !1901, discriminator: 10)
!156827 = !DILocation(line: 296, column: 20, scope: !156828, inlinedAt: !156829)
!156828 = !DILexicalBlockFile(scope: !156677, file: !1901, discriminator: 10)
end_hunk_16
begin_hunk_17_@llvm.vector.reduce.add.v2i64
!157069 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !157062)
!157070 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !157062)
!157071 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Int8Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes8Int8TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157072 = !DILocation(line: 225, column: 45, scope: !157071)
!157073 = !DILocation(line: 225, column: 37, scope: !157071)
!157074 = !DILocation(line: 226, column: 35, scope: !157075)
!157075 = distinct !DILexicalBlock(scope: !157071, file: !5557, line: 225, column: 21)
!157076 = !DILocation(line: 226, column: 63, scope: !157075)
!157077 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157078)
!157078 = distinct !DILocation(line: 226, column: 59, scope: !157075)
!157079 = !DILocation(line: 227, column: 38, scope: !157080)
!157080 = distinct !DILexicalBlock(scope: !157075, file: !5557, line: 226, column: 21)
!157081 = !DILocation(line: 229, column: 42, scope: !157082)
!157082 = distinct !DILexicalBlock(scope: !157080, file: !5557, line: 227, column: 21)
!157083 = !DILocation(line: 446, column: 20, scope: !157084, inlinedAt: !157087)
!157084 = distinct !DILexicalBlock(scope: !157085, file: !153176, line: 445, column: 17)
!157085 = distinct !DILexicalBlock(scope: !157086, file: !153176, line: 444, column: 17)
!157086 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157087 = !DILocation(line: 59, column: 14, scope: !157088, inlinedAt: !157089)
!157088 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157089 = !DILocation(line: 229, column: 38, scope: !157090)
!157090 = !DILexicalBlockFile(scope: !157091, file: !5557, discriminator: 2)
!157091 = distinct !DILexicalBlock(scope: !157082, file: !5557, line: 229, column: 21)
!157092 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !157093)
!157093 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !157094)
!157094 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !157095)
!157095 = distinct !DILocation(line: 439, column: 9, scope: !157096, inlinedAt: !157097)
!157096 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157097 = !DILocation(line: 229, column: 52, scope: !157082)
!157098 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !157093)
!157099 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !157093)
!157100 = !DILocation(line: 936, column: 11, scope: !157101, inlinedAt: !157103)
!157101 = distinct !DILexicalBlock(scope: !157102, file: !52151, line: 934, column: 5)
!157102 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int8Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157103 = distinct !DILocation(line: 154, column: 11, scope: !157104, inlinedAt: !157106)
!157104 = distinct !DILexicalBlock(scope: !157105, file: !52151, line: 153, column: 5)
!157105 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int8Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157106 = distinct !DILocation(line: 113, column: 5, scope: !157107, inlinedAt: !157108)
!157107 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int8Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes8Int8TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157108 = !DILocation(line: 234, column: 64, scope: !157109)
!157109 = distinct !DILexicalBlock(scope: !157110, file: !5557, line: 230, column: 25)
!157110 = distinct !DILexicalBlock(scope: !157091, file: !5557, line: 229, column: 21)
!157111 = !DILocation(line: 229, column: 25, scope: !157091)
!157112 = !DILocation(line: 230, column: 42, scope: !157110)
!157113 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157114)
!157114 = distinct !DILocation(line: 230, column: 65, scope: !157110)
!157115 = !DILocation(line: 230, column: 65, scope: !157110)
!157116 = !DILocation(line: 234, column: 29, scope: !157109)
!157117 = !DILocation(line: 113, column: 5, scope: !157107, inlinedAt: !157108)
!157118 = !DILocation(line: 113, column: 17, scope: !157107, inlinedAt: !157108)
!157119 = !DILocation(line: 431, column: 9, scope: !157120, inlinedAt: !157118)
!157120 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int8Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes8Int8TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157121 = !{!157122, !157124}
!157122 = distinct !{!157122, !157123, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!157123 = distinct !{!157123, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!157124 = distinct !{!157124, !157123, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!157125 = !DILocation(line: 937, column: 20, scope: !157101, inlinedAt: !157103)
!157126 = !{!157127, !157122}
!157127 = distinct !{!157127, !157128, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!157128 = distinct !{!157128, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes8Int8TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!157129 = !DILocation(line: 266, column: 18, scope: !157130, inlinedAt: !157131)
!157130 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157131 = distinct !DILocation(line: 691, column: 30, scope: !157132, inlinedAt: !157133)
!157132 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157133 = distinct !DILocation(line: 978, column: 28, scope: !157134, inlinedAt: !157135)
!157134 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157135 = distinct !DILocation(line: 940, column: 24, scope: !157136, inlinedAt: !157103)
!157136 = distinct !DILexicalBlock(scope: !157101, file: !52151, line: 937, column: 9)
!157137 = !DILocation(line: 81, column: 9, scope: !157138, inlinedAt: !157139)
!157138 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157139 = distinct !DILocation(line: 185, column: 31, scope: !157140, inlinedAt: !157141)
!157140 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157141 = distinct !DILocation(line: 407, column: 30, scope: !157142, inlinedAt: !157143)
!157142 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157143 = distinct !DILocation(line: 574, column: 17, scope: !157144, inlinedAt: !157145)
!157144 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157145 = distinct !DILocation(line: 978, column: 64, scope: !157134, inlinedAt: !157135)
!157146 = !DILocation(line: 898, column: 17, scope: !157147, inlinedAt: !157148)
!157147 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157148 = distinct !DILocation(line: 979, column: 49, scope: !157134, inlinedAt: !157135)
!157149 = !DILocation(line: 2511, column: 13, scope: !157150, inlinedAt: !157151)
!157150 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157151 = !DILocation(line: 450, column: 43, scope: !157152, inlinedAt: !157087)
!157152 = distinct !DILexicalBlock(scope: !157084, file: !153176, line: 447, column: 21)
!157153 = !DILocation(line: 451, column: 21, scope: !157152, inlinedAt: !157087)
!157154 = !DILocation(line: 945, column: 2, scope: !157102, inlinedAt: !157103)
!157155 = !DILocation(line: 161, column: 2, scope: !157105, inlinedAt: !157106)
!157156 = !DILocation(line: 113, column: 49, scope: !157107, inlinedAt: !157108)
!157157 = !DILocation(line: 113, column: 51, scope: !157107, inlinedAt: !157108)
!157158 = !DILocation(line: 343, column: 21, scope: !157109)
!157159 = !DILocation(line: 344, column: 18, scope: !157071)
!157160 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !157161)
!157161 = distinct !DILocation(line: 158, column: 19, scope: !157104, inlinedAt: !157106)
!157162 = !{!157124}
!157163 = !DILocation(line: 446, column: 20, scope: !157164, inlinedAt: !157166)
!157164 = distinct !DILexicalBlock(scope: !157165, file: !153176, line: 445, column: 17)
!157165 = distinct !DILexicalBlock(scope: !157086, file: !153176, line: 444, column: 17)
!157166 = !DILocation(line: 59, column: 14, scope: !157167, inlinedAt: !157168)
!157167 = !DILexicalBlockFile(scope: !157088, file: !153176, discriminator: 2)
!157168 = !DILocation(line: 255, column: 35, scope: !157169)
!157169 = !DILexicalBlockFile(scope: !157170, file: !5557, discriminator: 2)
!157170 = distinct !DILexicalBlock(scope: !157171, file: !5557, line: 255, column: 25)
!157171 = distinct !DILexicalBlock(scope: !157109, file: !5557, line: 234, column: 25)
!157172 = !DILocation(line: 2511, column: 13, scope: !157150, inlinedAt: !157173)
!157173 = !DILocation(line: 450, column: 43, scope: !157174, inlinedAt: !157166)
!157174 = !DILexicalBlockFile(scope: !157175, file: !153176, discriminator: 2)
!157175 = distinct !DILexicalBlock(scope: !157164, file: !153176, line: 447, column: 21)
!157176 = !DILocation(line: 451, column: 21, scope: !157175, inlinedAt: !157166)
!157177 = !DILocation(line: 257, column: 49, scope: !157178)
!157178 = distinct !DILexicalBlock(scope: !157179, file: !5557, line: 256, column: 29)
!157179 = distinct !DILexicalBlock(scope: !157170, file: !5557, line: 255, column: 25)
!157180 = !DILocation(line: 259, column: 39, scope: !157181)
!157181 = distinct !DILexicalBlock(scope: !157178, file: !5557, line: 257, column: 29)
!157182 = !DILocation(line: 446, column: 20, scope: !157183, inlinedAt: !157185)
!157183 = distinct !DILexicalBlock(scope: !157184, file: !153176, line: 445, column: 17)
!157184 = distinct !DILexicalBlock(scope: !157086, file: !153176, line: 444, column: 17)
!157185 = !DILocation(line: 59, column: 14, scope: !157186, inlinedAt: !157187)
!157186 = !DILexicalBlockFile(scope: !157088, file: !153176, discriminator: 4)
!157187 = !DILocation(line: 259, column: 39, scope: !157188)
!157188 = !DILexicalBlockFile(scope: !157189, file: !5557, discriminator: 2)
!157189 = distinct !DILexicalBlock(scope: !157181, file: !5557, line: 259, column: 29)
!157190 = !DILocation(line: 256, column: 45, scope: !157179)
!157191 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157192)
!157192 = distinct !DILocation(line: 256, column: 63, scope: !157179)
!157193 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !157194)
!157194 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !157195)
!157195 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !157196)
!157196 = distinct !DILocation(line: 439, column: 9, scope: !157096, inlinedAt: !157197)
!157197 = !DILocation(line: 259, column: 55, scope: !157181)
!157198 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !157194)
!157199 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !157194)
!157200 = !DILocation(line: 260, column: 49, scope: !157201)
!157201 = distinct !DILexicalBlock(scope: !157189, file: !5557, line: 259, column: 29)
!157202 = !DILocation(line: 268, column: 37, scope: !157203)
!157203 = distinct !DILexicalBlock(scope: !157201, file: !5557, line: 260, column: 33)
!157204 = !DILocation(line: 2511, column: 13, scope: !157150, inlinedAt: !157205)
!157205 = !DILocation(line: 450, column: 43, scope: !157206, inlinedAt: !157185)
!157206 = !DILexicalBlockFile(scope: !157207, file: !153176, discriminator: 4)
!157207 = distinct !DILexicalBlock(scope: !157183, file: !153176, line: 447, column: 21)
!157208 = !DILocation(line: 451, column: 21, scope: !157207, inlinedAt: !157185)
!157209 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157210)
!157210 = distinct !DILocation(line: 260, column: 67, scope: !157201)
!157211 = !DILocation(line: 269, column: 37, scope: !157212)
!157212 = distinct !DILexicalBlock(scope: !157203, file: !5557, line: 268, column: 33)
!157213 = !DILocation(line: 269, column: 52, scope: !157212)
!157214 = !DILocation(line: 1917, column: 50, scope: !157215, inlinedAt: !157216)
!157215 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157216 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157218)
!157217 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157218 = !DILocation(line: 866, column: 14, scope: !157219, inlinedAt: !157220)
!157219 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157220 = !DILocation(line: 271, column: 43, scope: !157221)
!157221 = !DILexicalBlockFile(scope: !157222, file: !5557, discriminator: 2)
!157222 = distinct !DILexicalBlock(scope: !157223, file: !5557, line: 271, column: 33)
!157223 = distinct !DILexicalBlock(scope: !157224, file: !5557, line: 270, column: 33)
!157224 = distinct !DILexicalBlock(scope: !157212, file: !5557, line: 269, column: 33)
!157225 = !DILocation(line: 289, column: 37, scope: !157223)
!157226 = !DILocation(line: 289, column: 47, scope: !157223)
!157227 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157228)
!157228 = !DILocation(line: 866, column: 14, scope: !157229, inlinedAt: !157230)
!157229 = !DILexicalBlockFile(scope: !157219, file: !1698, discriminator: 2)
!157230 = !DILocation(line: 292, column: 47, scope: !157231)
!157231 = !DILexicalBlockFile(scope: !157232, file: !5557, discriminator: 2)
!157232 = distinct !DILexicalBlock(scope: !157233, file: !5557, line: 292, column: 37)
!157233 = distinct !DILexicalBlock(scope: !157223, file: !5557, line: 289, column: 33)
!157234 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157235)
!157235 = !DILocation(line: 866, column: 14, scope: !157236, inlinedAt: !157237)
!157236 = !DILexicalBlockFile(scope: !157219, file: !1698, discriminator: 4)
!157237 = !DILocation(line: 294, column: 51, scope: !157238)
!157238 = !DILexicalBlockFile(scope: !157239, file: !5557, discriminator: 2)
!157239 = distinct !DILexicalBlock(scope: !157240, file: !5557, line: 294, column: 41)
!157240 = distinct !DILexicalBlock(scope: !157241, file: !5557, line: 293, column: 41)
!157241 = distinct !DILexicalBlock(scope: !157232, file: !5557, line: 292, column: 37)
!157242 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157244)
!157243 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157244 = !DILocation(line: 214, column: 28, scope: !157245, inlinedAt: !157246)
!157245 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157246 = !DILocation(line: 784, column: 35, scope: !157247, inlinedAt: !157218)
!157247 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157248 = !DILocation(line: 272, column: 65, scope: !157249)
!157249 = distinct !DILexicalBlock(scope: !157222, file: !5557, line: 271, column: 33)
!157250 = !DILocation(line: 272, column: 10, scope: !157251, inlinedAt: !157252)
!157251 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i8], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSaEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157252 = !DILocation(line: 19, column: 15, scope: !157253, inlinedAt: !157254)
!157253 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i8], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSaEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157254 = !DILocation(line: 3831, column: 9, scope: !157255, inlinedAt: !157256)
!157255 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i8], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSaEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157256 = !DILocation(line: 272, column: 64, scope: !157249)
!157257 = !DILocation(line: 298, column: 70, scope: !157258)
!157258 = distinct !DILexicalBlock(scope: !157239, file: !5557, line: 294, column: 41)
!157259 = !DILocation(line: 299, column: 68, scope: !157258)
!157260 = !DILocation(line: 252, column: 39, scope: !157261, inlinedAt: !157262)
!157261 = distinct !DISubprogram(name: "get_unchecked<i8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSaE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157262 = !DILocation(line: 646, column: 26, scope: !157263, inlinedAt: !157264)
!157263 = distinct !DISubprogram(name: "get_unchecked<i8, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSa13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157264 = !DILocation(line: 299, column: 54, scope: !157258)
!157265 = !DILocation(line: 252, column: 13, scope: !157261, inlinedAt: !157262)
!157266 = !DILocation(line: 253, column: 13, scope: !157261, inlinedAt: !157262)
!157267 = !DILocation(line: 298, column: 69, scope: !157258)
!157268 = !DILocation(line: 298, column: 49, scope: !157258)
!157269 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157270)
!157270 = !DILocation(line: 214, column: 28, scope: !157271, inlinedAt: !157272)
!157271 = !DILexicalBlockFile(scope: !157245, file: !1698, discriminator: 2)
!157272 = !DILocation(line: 784, column: 35, scope: !157273, inlinedAt: !157228)
!157273 = !DILexicalBlockFile(scope: !157274, file: !1698, discriminator: 2)
!157274 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157275 = !DILocation(line: 1917, column: 50, scope: !157215, inlinedAt: !157276)
!157276 = !DILocation(line: 781, column: 12, scope: !157277, inlinedAt: !157228)
!157277 = !DILexicalBlockFile(scope: !157217, file: !1698, discriminator: 2)
!157278 = !DILocation(line: 293, column: 55, scope: !157241)
!157279 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157280)
!157280 = !DILocation(line: 866, column: 14, scope: !157281, inlinedAt: !157282)
!157281 = !DILexicalBlockFile(scope: !157219, file: !1698, discriminator: 10)
!157282 = !DILocation(line: 327, column: 43, scope: !157283)
!157283 = !DILexicalBlockFile(scope: !157284, file: !5557, discriminator: 2)
!157284 = distinct !DILexicalBlock(scope: !157233, file: !5557, line: 327, column: 33)
!157285 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157286)
!157286 = !DILocation(line: 214, column: 28, scope: !157287, inlinedAt: !157288)
!157287 = !DILexicalBlockFile(scope: !157245, file: !1698, discriminator: 4)
!157288 = !DILocation(line: 784, column: 35, scope: !157289, inlinedAt: !157235)
!157289 = !DILexicalBlockFile(scope: !157290, file: !1698, discriminator: 4)
!157290 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157291 = !DILocation(line: 614, column: 9, scope: !157292, inlinedAt: !157293)
!157292 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[i8], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSaEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157293 = !DILocation(line: 609, column: 14, scope: !157294, inlinedAt: !157295)
!157294 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[i8], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSaEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157295 = !DILocation(line: 296, column: 20, scope: !157296, inlinedAt: !157297)
!157296 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[i8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSaEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157297 = !DILocation(line: 1942, column: 18, scope: !157298, inlinedAt: !157299)
!157298 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[i8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSaEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157299 = !DILocation(line: 1841, column: 76, scope: !157300, inlinedAt: !157301)
!157300 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[i8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSaEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157301 = !DILocation(line: 3756, column: 14, scope: !157302, inlinedAt: !157303)
!157302 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[i8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSaEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157303 = !DILocation(line: 3831, column: 23, scope: !157255, inlinedAt: !157256)
!157304 = !DILocation(line: 272, column: 9, scope: !157251, inlinedAt: !157252)
!157305 = !DILocation(line: 273, column: 60, scope: !157306)
!157306 = distinct !DILexicalBlock(scope: !157249, file: !5557, line: 272, column: 37)
!157307 = !DILocation(line: 273, column: 52, scope: !157306)
!157308 = !DILocation(line: 273, column: 47, scope: !157306)
!157309 = !DILocation(line: 275, column: 43, scope: !157310)
!157310 = distinct !DILexicalBlock(scope: !157306, file: !5557, line: 273, column: 37)
!157311 = !DILocation(line: 272, column: 10, scope: !157312, inlinedAt: !157313)
!157312 = distinct !DISubprogram(name: "index<&[i8]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSaE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157313 = !DILocation(line: 19, column: 15, scope: !157314, inlinedAt: !157316)
!157314 = !DILexicalBlockFile(scope: !157315, file: !1681, discriminator: 2)
!157315 = distinct !DISubprogram(name: "index<&[i8], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSaINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157316 = !DILocation(line: 3831, column: 9, scope: !157317, inlinedAt: !157319)
!157317 = !DILexicalBlockFile(scope: !157318, file: !362, discriminator: 2)
!157318 = distinct !DISubprogram(name: "index<&[i8], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSaEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157319 = !DILocation(line: 278, column: 67, scope: !157310)
!157320 = !DILocation(line: 614, column: 9, scope: !157321, inlinedAt: !157322)
!157321 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[i8]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSaECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157322 = !DILocation(line: 609, column: 14, scope: !157323, inlinedAt: !157325)
!157323 = !DILexicalBlockFile(scope: !157324, file: !1901, discriminator: 2)
!157324 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[i8]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSaECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157325 = !DILocation(line: 296, column: 20, scope: !157326, inlinedAt: !157328)
!157326 = !DILexicalBlockFile(scope: !157327, file: !1901, discriminator: 2)
!157327 = distinct !DISubprogram(name: "ptr<&[i8], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSaE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157328 = !DILocation(line: 1942, column: 18, scope: !157329, inlinedAt: !157331)
!157329 = !DILexicalBlockFile(scope: !157330, file: !362, discriminator: 2)
!157330 = distinct !DISubprogram(name: "as_ptr<&[i8], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSaE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157331 = !DILocation(line: 1841, column: 76, scope: !157332, inlinedAt: !157334)
!157332 = !DILexicalBlockFile(scope: !157333, file: !362, discriminator: 2)
!157333 = distinct !DISubprogram(name: "as_slice<&[i8], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSaE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157334 = !DILocation(line: 3756, column: 14, scope: !157335, inlinedAt: !157337)
!157335 = !DILexicalBlockFile(scope: !157336, file: !362, discriminator: 2)
!157336 = distinct !DISubprogram(name: "deref<&[i8], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSaENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157337 = !DILocation(line: 3831, column: 23, scope: !157317, inlinedAt: !157319)
!157338 = !DILocation(line: 272, column: 9, scope: !157312, inlinedAt: !157313)
!157339 = !DILocation(line: 278, column: 61, scope: !157310)
!157340 = !DILocation(line: 278, column: 41, scope: !157310)
!157341 = !DILocation(line: 276, column: 41, scope: !157310)
!157342 = !DILocation(line: 277, column: 41, scope: !157310)
!157343 = !DILocation(line: 0, scope: !157310)
!157344 = !DILocation(line: 280, column: 40, scope: !157310)
!157345 = distinct !{!157345, !153454}
!157346 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157347)
!157347 = !DILocation(line: 866, column: 14, scope: !157348, inlinedAt: !157349)
!157348 = !DILexicalBlockFile(scope: !157219, file: !1698, discriminator: 6)
!157349 = !DILocation(line: 304, column: 47, scope: !157350)
!157350 = !DILexicalBlockFile(scope: !157351, file: !5557, discriminator: 2)
!157351 = distinct !DILexicalBlock(scope: !157233, file: !5557, line: 304, column: 37)
!157352 = !DILocation(line: 281, column: 65, scope: !157310)
!157353 = !DILocation(line: 1841, column: 86, scope: !157333, inlinedAt: !157354)
!157354 = !DILocation(line: 3756, column: 14, scope: !157355, inlinedAt: !157356)
!157355 = !DILexicalBlockFile(scope: !157336, file: !362, discriminator: 4)
!157356 = !DILocation(line: 3831, column: 23, scope: !157357, inlinedAt: !157358)
!157357 = !DILexicalBlockFile(scope: !157318, file: !362, discriminator: 4)
!157358 = !DILocation(line: 281, column: 64, scope: !157310)
!157359 = !DILocation(line: 272, column: 10, scope: !157312, inlinedAt: !157360)
!157360 = !DILocation(line: 19, column: 15, scope: !157361, inlinedAt: !157362)
!157361 = !DILexicalBlockFile(scope: !157315, file: !1681, discriminator: 4)
!157362 = !DILocation(line: 3831, column: 9, scope: !157357, inlinedAt: !157358)
!157363 = !DILocation(line: 1917, column: 50, scope: !157215, inlinedAt: !157364)
!157364 = !DILocation(line: 781, column: 12, scope: !157365, inlinedAt: !157347)
!157365 = !DILexicalBlockFile(scope: !157217, file: !1698, discriminator: 6)
!157366 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157367)
!157367 = !DILocation(line: 214, column: 28, scope: !157368, inlinedAt: !157369)
!157368 = !DILexicalBlockFile(scope: !157245, file: !1698, discriminator: 6)
!157369 = !DILocation(line: 784, column: 35, scope: !157370, inlinedAt: !157347)
!157370 = !DILexicalBlockFile(scope: !157371, file: !1698, discriminator: 6)
!157371 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157372 = !DILocation(line: 305, column: 55, scope: !157373)
!157373 = distinct !DILexicalBlock(scope: !157351, file: !5557, line: 304, column: 37)
!157374 = !DILocation(line: 306, column: 55, scope: !157375)
!157375 = distinct !DILexicalBlock(scope: !157373, file: !5557, line: 305, column: 41)
!157376 = !DILocation(line: 781, column: 12, scope: !157217, inlinedAt: !157377)
!157377 = !DILocation(line: 866, column: 14, scope: !157378, inlinedAt: !157379)
!157378 = !DILexicalBlockFile(scope: !157219, file: !1698, discriminator: 8)
!157379 = !DILocation(line: 307, column: 51, scope: !157380)
!157380 = !DILexicalBlockFile(scope: !157381, file: !5557, discriminator: 2)
!157381 = distinct !DILexicalBlock(scope: !157382, file: !5557, line: 307, column: 41)
!157382 = distinct !DILexicalBlock(scope: !157375, file: !5557, line: 306, column: 41)
!157383 = !DILocation(line: 330, column: 52, scope: !157384)
!157384 = distinct !DILexicalBlock(scope: !157385, file: !5557, line: 329, column: 37)
!157385 = distinct !DILexicalBlock(scope: !157386, file: !5557, line: 328, column: 37)
!157386 = distinct !DILexicalBlock(scope: !157284, file: !5557, line: 327, column: 33)
!157387 = !DILocation(line: 328, column: 51, scope: !157386)
!157388 = !DILocation(line: 329, column: 51, scope: !157385)
!157389 = !DILocation(line: 89, column: 24, scope: !157390, inlinedAt: !157392)
!157390 = distinct !DILexicalBlock(scope: !157391, file: !1681, line: 87, column: 5)
!157391 = distinct !DISubprogram(name: "get_offset_len_noubcheck<i8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckaECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157392 = !DILocation(line: 441, column: 24, scope: !157393, inlinedAt: !157394)
!157393 = distinct !DISubprogram(name: "index<i8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSaE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157394 = !DILocation(line: 19, column: 15, scope: !157395, inlinedAt: !157397)
!157395 = !DILexicalBlockFile(scope: !157396, file: !1681, discriminator: 12)
!157396 = distinct !DISubprogram(name: "index<i8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSaINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157397 = !DILocation(line: 390, column: 9, scope: !157398, inlinedAt: !157399)
!157398 = distinct !DISubprogram(name: "index<i8, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAaj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157399 = !DILocation(line: 330, column: 51, scope: !157384)
!157400 = !DILocation(line: 26, column: 9, scope: !157401, inlinedAt: !157402)
!157401 = distinct !DISubprogram(name: "get<i8>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtraE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157402 = !DILocation(line: 336, column: 49, scope: !157403)
!157403 = distinct !DILexicalBlock(scope: !157384, file: !5557, line: 330, column: 37)
!157404 = !DILocation(line: 961, column: 18, scope: !157405, inlinedAt: !157406)
!157405 = distinct !DISubprogram(name: "add<i8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOa3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157406 = !DILocation(line: 336, column: 55, scope: !157403)
!157407 = !DILocation(line: 552, column: 14, scope: !157408, inlinedAt: !157409)
!157408 = distinct !DISubprogram(name: "copy_nonoverlapping<i8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingaECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157409 = !DILocation(line: 334, column: 41, scope: !157403)
!157410 = !DILocation(line: 341, column: 29, scope: !157223)
!157411 = !DILocation(line: 341, column: 29, scope: !157212)
!157412 = !DILocation(line: 341, column: 29, scope: !157203)
!157413 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157414)
!157414 = !DILocation(line: 214, column: 28, scope: !157415, inlinedAt: !157416)
!157415 = !DILexicalBlockFile(scope: !157245, file: !1698, discriminator: 10)
!157416 = !DILocation(line: 784, column: 35, scope: !157417, inlinedAt: !157280)
!157417 = !DILexicalBlockFile(scope: !157418, file: !1698, discriminator: 10)
!157418 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157419 = !DILocation(line: 898, column: 17, scope: !157243, inlinedAt: !157420)
!157420 = !DILocation(line: 214, column: 28, scope: !157421, inlinedAt: !157422)
!157421 = !DILexicalBlockFile(scope: !157245, file: !1698, discriminator: 8)
!157422 = !DILocation(line: 784, column: 35, scope: !157423, inlinedAt: !157377)
!157423 = !DILexicalBlockFile(scope: !157424, file: !1698, discriminator: 8)
!157424 = distinct !DILexicalBlock(scope: !157217, file: !1698, line: 782, column: 13)
!157425 = !DILocation(line: 308, column: 73, scope: !157426)
!157426 = distinct !DILexicalBlock(scope: !157381, file: !5557, line: 307, column: 41)
!157427 = !DILocation(line: 272, column: 10, scope: !157251, inlinedAt: !157428)
!157428 = !DILocation(line: 19, column: 15, scope: !157429, inlinedAt: !157430)
!157429 = !DILexicalBlockFile(scope: !157253, file: !1681, discriminator: 6)
!157430 = !DILocation(line: 3831, column: 9, scope: !157431, inlinedAt: !157432)
!157431 = !DILexicalBlockFile(scope: !157255, file: !362, discriminator: 6)
!157432 = !DILocation(line: 308, column: 72, scope: !157426)
!157433 = !DILocation(line: 272, column: 9, scope: !157251, inlinedAt: !157428)
!157434 = !DILocation(line: 309, column: 68, scope: !157435)
!157435 = distinct !DILexicalBlock(scope: !157426, file: !5557, line: 308, column: 45)
!157436 = !DILocation(line: 309, column: 60, scope: !157435)
!157437 = !DILocation(line: 309, column: 55, scope: !157435)
!157438 = !DILocation(line: 310, column: 51, scope: !157439)
!157439 = distinct !DILexicalBlock(scope: !157435, file: !5557, line: 309, column: 45)
!157440 = !DILocation(line: 320, column: 77, scope: !157439)
!157441 = !DILocation(line: 1841, column: 86, scope: !157333, inlinedAt: !157442)
!157442 = !DILocation(line: 3756, column: 14, scope: !157443, inlinedAt: !157444)
!157443 = !DILexicalBlockFile(scope: !157336, file: !362, discriminator: 10)
!157444 = !DILocation(line: 3831, column: 23, scope: !157445, inlinedAt: !157446)
!157445 = !DILexicalBlockFile(scope: !157318, file: !362, discriminator: 10)
!157446 = !DILocation(line: 320, column: 76, scope: !157439)
!157447 = !DILocation(line: 272, column: 10, scope: !157312, inlinedAt: !157448)
!157448 = !DILocation(line: 19, column: 15, scope: !157449, inlinedAt: !157450)
!157449 = !DILexicalBlockFile(scope: !157315, file: !1681, discriminator: 8)
!157450 = !DILocation(line: 3831, column: 9, scope: !157451, inlinedAt: !157452)
!157451 = !DILexicalBlockFile(scope: !157318, file: !362, discriminator: 8)
!157452 = !DILocation(line: 313, column: 75, scope: !157439)
!157453 = !DILocation(line: 614, column: 9, scope: !157321, inlinedAt: !157454)
!157454 = !DILocation(line: 609, column: 14, scope: !157455, inlinedAt: !157456)
!157455 = !DILexicalBlockFile(scope: !157324, file: !1901, discriminator: 8)
!157456 = !DILocation(line: 296, column: 20, scope: !157457, inlinedAt: !157458)
!157457 = !DILexicalBlockFile(scope: !157327, file: !1901, discriminator: 8)
!157458 = !DILocation(line: 1942, column: 18, scope: !157459, inlinedAt: !157460)
!157459 = !DILexicalBlockFile(scope: !157330, file: !362, discriminator: 8)
!157460 = !DILocation(line: 1841, column: 76, scope: !157461, inlinedAt: !157462)
!157461 = !DILexicalBlockFile(scope: !157333, file: !362, discriminator: 8)
!157462 = !DILocation(line: 3756, column: 14, scope: !157463, inlinedAt: !157464)
!157463 = !DILexicalBlockFile(scope: !157336, file: !362, discriminator: 8)
!157464 = !DILocation(line: 3831, column: 23, scope: !157451, inlinedAt: !157452)
!157465 = !DILocation(line: 272, column: 9, scope: !157312, inlinedAt: !157448)
!157466 = !DILocation(line: 313, column: 69, scope: !157439)
!157467 = !DILocation(line: 313, column: 49, scope: !157439)
!157468 = !DILocation(line: 311, column: 49, scope: !157439)
!157469 = !DILocation(line: 312, column: 49, scope: !157439)
!157470 = !DILocation(line: 0, scope: !157439)
!157471 = !DILocation(line: 272, column: 10, scope: !157312, inlinedAt: !157472)
!157472 = !DILocation(line: 19, column: 15, scope: !157473, inlinedAt: !157474)
!157473 = !DILexicalBlockFile(scope: !157315, file: !1681, discriminator: 10)
!157474 = !DILocation(line: 3831, column: 9, scope: !157445, inlinedAt: !157446)
!157475 = distinct !{!157475, !153454}
!157476 = !DILocation(line: 614, column: 9, scope: !157321, inlinedAt: !157477)
!157477 = !DILocation(line: 609, column: 14, scope: !157478, inlinedAt: !157479)
end_hunk_17
begin_hunk_18_@llvm.vector.reduce.add.v2i64
!157720 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !157721)
!157721 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !157714)
!157722 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !157714)
!157723 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Int16Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int16TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157724 = !DILocation(line: 225, column: 45, scope: !157723)
!157725 = !DILocation(line: 225, column: 37, scope: !157723)
!157726 = !DILocation(line: 226, column: 35, scope: !157727)
!157727 = distinct !DILexicalBlock(scope: !157723, file: !5557, line: 225, column: 21)
!157728 = !DILocation(line: 226, column: 63, scope: !157727)
!157729 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157730)
!157730 = distinct !DILocation(line: 226, column: 59, scope: !157727)
!157731 = !DILocation(line: 227, column: 38, scope: !157732)
!157732 = distinct !DILexicalBlock(scope: !157727, file: !5557, line: 226, column: 21)
!157733 = !DILocation(line: 229, column: 42, scope: !157734)
!157734 = distinct !DILexicalBlock(scope: !157732, file: !5557, line: 227, column: 21)
!157735 = !DILocation(line: 446, column: 20, scope: !157736, inlinedAt: !157739)
!157736 = distinct !DILexicalBlock(scope: !157737, file: !153176, line: 445, column: 17)
!157737 = distinct !DILexicalBlock(scope: !157738, file: !153176, line: 444, column: 17)
!157738 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157739 = !DILocation(line: 59, column: 14, scope: !157740, inlinedAt: !157741)
!157740 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157741 = !DILocation(line: 229, column: 38, scope: !157742)
!157742 = !DILexicalBlockFile(scope: !157743, file: !5557, discriminator: 2)
!157743 = distinct !DILexicalBlock(scope: !157734, file: !5557, line: 229, column: 21)
!157744 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !157745)
!157745 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !157746)
!157746 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !157747)
!157747 = distinct !DILocation(line: 439, column: 9, scope: !157748, inlinedAt: !157749)
!157748 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157749 = !DILocation(line: 229, column: 52, scope: !157734)
!157750 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !157745)
!157751 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !157745)
!157752 = !DILocation(line: 936, column: 11, scope: !157753, inlinedAt: !157755)
!157753 = distinct !DILexicalBlock(scope: !157754, file: !52151, line: 934, column: 5)
!157754 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157755 = distinct !DILocation(line: 154, column: 11, scope: !157756, inlinedAt: !157758)
!157756 = distinct !DILexicalBlock(scope: !157757, file: !52151, line: 153, column: 5)
!157757 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int16Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157758 = distinct !DILocation(line: 113, column: 5, scope: !157759, inlinedAt: !157760)
!157759 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int16Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes9Int16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157760 = !DILocation(line: 234, column: 64, scope: !157761)
!157761 = distinct !DILexicalBlock(scope: !157762, file: !5557, line: 230, column: 25)
!157762 = distinct !DILexicalBlock(scope: !157743, file: !5557, line: 229, column: 21)
!157763 = !DILocation(line: 229, column: 25, scope: !157743)
!157764 = !DILocation(line: 230, column: 42, scope: !157762)
!157765 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157766)
!157766 = distinct !DILocation(line: 230, column: 65, scope: !157762)
!157767 = !DILocation(line: 230, column: 65, scope: !157762)
!157768 = !DILocation(line: 234, column: 29, scope: !157761)
!157769 = !DILocation(line: 113, column: 5, scope: !157759, inlinedAt: !157760)
!157770 = !DILocation(line: 113, column: 17, scope: !157759, inlinedAt: !157760)
!157771 = !DILocation(line: 431, column: 9, scope: !157772, inlinedAt: !157770)
!157772 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int16Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes9Int16TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157773 = !{!157774, !157776}
!157774 = distinct !{!157774, !157775, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!157775 = distinct !{!157775, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!157776 = distinct !{!157776, !157775, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!157777 = !DILocation(line: 937, column: 20, scope: !157753, inlinedAt: !157755)
!157778 = !{!157779, !157774}
!157779 = distinct !{!157779, !157780, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!157780 = distinct !{!157780, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int16TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!157781 = !DILocation(line: 266, column: 18, scope: !157782, inlinedAt: !157783)
!157782 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157783 = distinct !DILocation(line: 691, column: 30, scope: !157784, inlinedAt: !157785)
!157784 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157785 = distinct !DILocation(line: 978, column: 28, scope: !157786, inlinedAt: !157787)
!157786 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157787 = distinct !DILocation(line: 940, column: 24, scope: !157788, inlinedAt: !157755)
!157788 = distinct !DILexicalBlock(scope: !157753, file: !52151, line: 937, column: 9)
!157789 = !DILocation(line: 81, column: 9, scope: !157790, inlinedAt: !157791)
!157790 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157791 = distinct !DILocation(line: 185, column: 31, scope: !157792, inlinedAt: !157793)
!157792 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157793 = distinct !DILocation(line: 407, column: 30, scope: !157794, inlinedAt: !157795)
!157794 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157795 = distinct !DILocation(line: 574, column: 17, scope: !157796, inlinedAt: !157797)
!157796 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157797 = distinct !DILocation(line: 978, column: 64, scope: !157786, inlinedAt: !157787)
!157798 = !DILocation(line: 898, column: 17, scope: !157799, inlinedAt: !157800)
!157799 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157800 = distinct !DILocation(line: 979, column: 49, scope: !157786, inlinedAt: !157787)
!157801 = !DILocation(line: 2511, column: 13, scope: !157802, inlinedAt: !157803)
!157802 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157803 = !DILocation(line: 450, column: 43, scope: !157804, inlinedAt: !157739)
!157804 = distinct !DILexicalBlock(scope: !157736, file: !153176, line: 447, column: 21)
!157805 = !DILocation(line: 451, column: 21, scope: !157804, inlinedAt: !157739)
!157806 = !DILocation(line: 945, column: 2, scope: !157754, inlinedAt: !157755)
!157807 = !DILocation(line: 161, column: 2, scope: !157757, inlinedAt: !157758)
!157808 = !DILocation(line: 113, column: 49, scope: !157759, inlinedAt: !157760)
!157809 = !DILocation(line: 113, column: 51, scope: !157759, inlinedAt: !157760)
!157810 = !DILocation(line: 343, column: 21, scope: !157761)
!157811 = !DILocation(line: 344, column: 18, scope: !157723)
!157812 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !157813)
!157813 = distinct !DILocation(line: 158, column: 19, scope: !157756, inlinedAt: !157758)
!157814 = !{!157776}
!157815 = !DILocation(line: 446, column: 20, scope: !157816, inlinedAt: !157818)
!157816 = distinct !DILexicalBlock(scope: !157817, file: !153176, line: 445, column: 17)
!157817 = distinct !DILexicalBlock(scope: !157738, file: !153176, line: 444, column: 17)
!157818 = !DILocation(line: 59, column: 14, scope: !157819, inlinedAt: !157820)
!157819 = !DILexicalBlockFile(scope: !157740, file: !153176, discriminator: 2)
!157820 = !DILocation(line: 255, column: 35, scope: !157821)
!157821 = !DILexicalBlockFile(scope: !157822, file: !5557, discriminator: 2)
!157822 = distinct !DILexicalBlock(scope: !157823, file: !5557, line: 255, column: 25)
!157823 = distinct !DILexicalBlock(scope: !157761, file: !5557, line: 234, column: 25)
!157824 = !DILocation(line: 2511, column: 13, scope: !157802, inlinedAt: !157825)
!157825 = !DILocation(line: 450, column: 43, scope: !157826, inlinedAt: !157818)
!157826 = !DILexicalBlockFile(scope: !157827, file: !153176, discriminator: 2)
!157827 = distinct !DILexicalBlock(scope: !157816, file: !153176, line: 447, column: 21)
!157828 = !DILocation(line: 451, column: 21, scope: !157827, inlinedAt: !157818)
!157829 = !DILocation(line: 257, column: 49, scope: !157830)
!157830 = distinct !DILexicalBlock(scope: !157831, file: !5557, line: 256, column: 29)
!157831 = distinct !DILexicalBlock(scope: !157822, file: !5557, line: 255, column: 25)
!157832 = !DILocation(line: 259, column: 39, scope: !157833)
!157833 = distinct !DILexicalBlock(scope: !157830, file: !5557, line: 257, column: 29)
!157834 = !DILocation(line: 446, column: 20, scope: !157835, inlinedAt: !157837)
!157835 = distinct !DILexicalBlock(scope: !157836, file: !153176, line: 445, column: 17)
!157836 = distinct !DILexicalBlock(scope: !157738, file: !153176, line: 444, column: 17)
!157837 = !DILocation(line: 59, column: 14, scope: !157838, inlinedAt: !157839)
!157838 = !DILexicalBlockFile(scope: !157740, file: !153176, discriminator: 4)
!157839 = !DILocation(line: 259, column: 39, scope: !157840)
!157840 = !DILexicalBlockFile(scope: !157841, file: !5557, discriminator: 2)
!157841 = distinct !DILexicalBlock(scope: !157833, file: !5557, line: 259, column: 29)
!157842 = !DILocation(line: 256, column: 45, scope: !157831)
!157843 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157844)
!157844 = distinct !DILocation(line: 256, column: 63, scope: !157831)
!157845 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !157846)
!157846 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !157847)
!157847 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !157848)
!157848 = distinct !DILocation(line: 439, column: 9, scope: !157748, inlinedAt: !157849)
!157849 = !DILocation(line: 259, column: 55, scope: !157833)
!157850 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !157846)
!157851 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !157846)
!157852 = !DILocation(line: 260, column: 49, scope: !157853)
!157853 = distinct !DILexicalBlock(scope: !157841, file: !5557, line: 259, column: 29)
!157854 = !DILocation(line: 268, column: 37, scope: !157855)
!157855 = distinct !DILexicalBlock(scope: !157853, file: !5557, line: 260, column: 33)
!157856 = !DILocation(line: 2511, column: 13, scope: !157802, inlinedAt: !157857)
!157857 = !DILocation(line: 450, column: 43, scope: !157858, inlinedAt: !157837)
!157858 = !DILexicalBlockFile(scope: !157859, file: !153176, discriminator: 4)
!157859 = distinct !DILexicalBlock(scope: !157835, file: !153176, line: 447, column: 21)
!157860 = !DILocation(line: 451, column: 21, scope: !157859, inlinedAt: !157837)
!157861 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !157862)
!157862 = distinct !DILocation(line: 260, column: 67, scope: !157853)
!157863 = !DILocation(line: 269, column: 37, scope: !157864)
!157864 = distinct !DILexicalBlock(scope: !157855, file: !5557, line: 268, column: 33)
!157865 = !DILocation(line: 269, column: 52, scope: !157864)
!157866 = !DILocation(line: 1917, column: 50, scope: !157867, inlinedAt: !157868)
!157867 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157868 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !157870)
!157869 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157870 = !DILocation(line: 866, column: 14, scope: !157871, inlinedAt: !157872)
!157871 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157872 = !DILocation(line: 271, column: 43, scope: !157873)
!157873 = !DILexicalBlockFile(scope: !157874, file: !5557, discriminator: 2)
!157874 = distinct !DILexicalBlock(scope: !157875, file: !5557, line: 271, column: 33)
!157875 = distinct !DILexicalBlock(scope: !157876, file: !5557, line: 270, column: 33)
!157876 = distinct !DILexicalBlock(scope: !157864, file: !5557, line: 269, column: 33)
!157877 = !DILocation(line: 289, column: 37, scope: !157875)
!157878 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !157879)
!157879 = !DILocation(line: 866, column: 14, scope: !157880, inlinedAt: !157881)
!157880 = !DILexicalBlockFile(scope: !157871, file: !1698, discriminator: 2)
!157881 = !DILocation(line: 292, column: 47, scope: !157882)
!157882 = !DILexicalBlockFile(scope: !157883, file: !5557, discriminator: 2)
!157883 = distinct !DILexicalBlock(scope: !157884, file: !5557, line: 292, column: 37)
!157884 = distinct !DILexicalBlock(scope: !157875, file: !5557, line: 289, column: 33)
!157885 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !157887)
!157886 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157887 = !DILocation(line: 214, column: 28, scope: !157888, inlinedAt: !157889)
!157888 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157889 = !DILocation(line: 784, column: 35, scope: !157890, inlinedAt: !157870)
!157890 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!157891 = !DILocation(line: 272, column: 65, scope: !157892)
!157892 = distinct !DILexicalBlock(scope: !157874, file: !5557, line: 271, column: 33)
!157893 = !DILocation(line: 272, column: 10, scope: !157894, inlinedAt: !157895)
!157894 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i16], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSsEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157895 = !DILocation(line: 19, column: 15, scope: !157896, inlinedAt: !157897)
!157896 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i16], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSsEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157897 = !DILocation(line: 3831, column: 9, scope: !157898, inlinedAt: !157899)
!157898 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i16], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSsEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157899 = !DILocation(line: 272, column: 64, scope: !157892)
!157900 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !157901)
!157901 = !DILocation(line: 866, column: 14, scope: !157902, inlinedAt: !157903)
!157902 = !DILexicalBlockFile(scope: !157871, file: !1698, discriminator: 4)
!157903 = !DILocation(line: 294, column: 51, scope: !157904)
!157904 = !DILexicalBlockFile(scope: !157905, file: !5557, discriminator: 2)
!157905 = distinct !DILexicalBlock(scope: !157906, file: !5557, line: 294, column: 41)
!157906 = distinct !DILexicalBlock(scope: !157907, file: !5557, line: 293, column: 41)
!157907 = distinct !DILexicalBlock(scope: !157883, file: !5557, line: 292, column: 37)
!157908 = !DILocation(line: 298, column: 70, scope: !157909)
!157909 = distinct !DILexicalBlock(scope: !157905, file: !5557, line: 294, column: 41)
!157910 = !DILocation(line: 299, column: 68, scope: !157909)
!157911 = !DILocation(line: 252, column: 39, scope: !157912, inlinedAt: !157913)
!157912 = distinct !DISubprogram(name: "get_unchecked<i16>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSsE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157913 = !DILocation(line: 646, column: 26, scope: !157914, inlinedAt: !157915)
!157914 = distinct !DISubprogram(name: "get_unchecked<i16, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSs13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157915 = !DILocation(line: 299, column: 54, scope: !157909)
!157916 = !DILocation(line: 252, column: 13, scope: !157912, inlinedAt: !157913)
!157917 = !DILocation(line: 253, column: 13, scope: !157912, inlinedAt: !157913)
!157918 = !DILocation(line: 298, column: 69, scope: !157909)
!157919 = !DILocation(line: 298, column: 49, scope: !157909)
!157920 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !157921)
!157921 = !DILocation(line: 214, column: 28, scope: !157922, inlinedAt: !157923)
!157922 = !DILexicalBlockFile(scope: !157888, file: !1698, discriminator: 2)
!157923 = !DILocation(line: 784, column: 35, scope: !157924, inlinedAt: !157879)
!157924 = !DILexicalBlockFile(scope: !157925, file: !1698, discriminator: 2)
!157925 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!157926 = !DILocation(line: 1917, column: 50, scope: !157867, inlinedAt: !157927)
!157927 = !DILocation(line: 781, column: 12, scope: !157928, inlinedAt: !157879)
!157928 = !DILexicalBlockFile(scope: !157869, file: !1698, discriminator: 2)
!157929 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !157930)
!157930 = !DILocation(line: 866, column: 14, scope: !157931, inlinedAt: !157932)
!157931 = !DILexicalBlockFile(scope: !157871, file: !1698, discriminator: 10)
!157932 = !DILocation(line: 327, column: 43, scope: !157933)
!157933 = !DILexicalBlockFile(scope: !157934, file: !5557, discriminator: 2)
!157934 = distinct !DILexicalBlock(scope: !157884, file: !5557, line: 327, column: 33)
!157935 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !157936)
!157936 = !DILocation(line: 214, column: 28, scope: !157937, inlinedAt: !157938)
!157937 = !DILexicalBlockFile(scope: !157888, file: !1698, discriminator: 4)
!157938 = !DILocation(line: 784, column: 35, scope: !157939, inlinedAt: !157901)
!157939 = !DILexicalBlockFile(scope: !157940, file: !1698, discriminator: 4)
!157940 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!157941 = !DILocation(line: 614, column: 9, scope: !157942, inlinedAt: !157943)
!157942 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[i16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSsEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157943 = !DILocation(line: 609, column: 14, scope: !157944, inlinedAt: !157945)
!157944 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[i16], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSsEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157945 = !DILocation(line: 296, column: 20, scope: !157946, inlinedAt: !157947)
!157946 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[i16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSsEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157947 = !DILocation(line: 1942, column: 18, scope: !157948, inlinedAt: !157949)
!157948 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[i16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSsEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157949 = !DILocation(line: 1841, column: 76, scope: !157950, inlinedAt: !157951)
!157950 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[i16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSsEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157951 = !DILocation(line: 3756, column: 14, scope: !157952, inlinedAt: !157953)
!157952 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[i16], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSsEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157953 = !DILocation(line: 3831, column: 23, scope: !157898, inlinedAt: !157899)
!157954 = !DILocation(line: 272, column: 9, scope: !157894, inlinedAt: !157895)
!157955 = !DILocation(line: 273, column: 60, scope: !157956)
!157956 = distinct !DILexicalBlock(scope: !157892, file: !5557, line: 272, column: 37)
!157957 = !DILocation(line: 273, column: 52, scope: !157956)
!157958 = !DILocation(line: 273, column: 47, scope: !157956)
!157959 = !DILocation(line: 275, column: 43, scope: !157960)
!157960 = distinct !DILexicalBlock(scope: !157956, file: !5557, line: 273, column: 37)
!157961 = !DILocation(line: 272, column: 10, scope: !157962, inlinedAt: !157963)
!157962 = distinct !DISubprogram(name: "index<&[i16]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSsE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157963 = !DILocation(line: 19, column: 15, scope: !157964, inlinedAt: !157966)
!157964 = !DILexicalBlockFile(scope: !157965, file: !1681, discriminator: 2)
!157965 = distinct !DISubprogram(name: "index<&[i16], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSsINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157966 = !DILocation(line: 3831, column: 9, scope: !157967, inlinedAt: !157969)
!157967 = !DILexicalBlockFile(scope: !157968, file: !362, discriminator: 2)
!157968 = distinct !DISubprogram(name: "index<&[i16], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157969 = !DILocation(line: 278, column: 67, scope: !157960)
!157970 = !DILocation(line: 614, column: 9, scope: !157971, inlinedAt: !157972)
!157971 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[i16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSsECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157972 = !DILocation(line: 609, column: 14, scope: !157973, inlinedAt: !157975)
!157973 = !DILexicalBlockFile(scope: !157974, file: !1901, discriminator: 2)
!157974 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[i16]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSsECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157975 = !DILocation(line: 296, column: 20, scope: !157976, inlinedAt: !157978)
!157976 = !DILexicalBlockFile(scope: !157977, file: !1901, discriminator: 2)
!157977 = distinct !DISubprogram(name: "ptr<&[i16], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSsE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157978 = !DILocation(line: 1942, column: 18, scope: !157979, inlinedAt: !157981)
!157979 = !DILexicalBlockFile(scope: !157980, file: !362, discriminator: 2)
!157980 = distinct !DISubprogram(name: "as_ptr<&[i16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSsE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157981 = !DILocation(line: 1841, column: 76, scope: !157982, inlinedAt: !157984)
!157982 = !DILexicalBlockFile(scope: !157983, file: !362, discriminator: 2)
!157983 = distinct !DISubprogram(name: "as_slice<&[i16], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSsE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157984 = !DILocation(line: 3756, column: 14, scope: !157985, inlinedAt: !157987)
!157985 = !DILexicalBlockFile(scope: !157986, file: !362, discriminator: 2)
!157986 = distinct !DISubprogram(name: "deref<&[i16], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSsENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!157987 = !DILocation(line: 3831, column: 23, scope: !157967, inlinedAt: !157969)
!157988 = !DILocation(line: 272, column: 9, scope: !157962, inlinedAt: !157963)
!157989 = !DILocation(line: 278, column: 61, scope: !157960)
!157990 = !DILocation(line: 278, column: 41, scope: !157960)
!157991 = !DILocation(line: 276, column: 41, scope: !157960)
!157992 = !DILocation(line: 277, column: 41, scope: !157960)
!157993 = !DILocation(line: 0, scope: !157960)
!157994 = !DILocation(line: 280, column: 40, scope: !157960)
!157995 = distinct !{!157995, !153454}
!157996 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !157997)
!157997 = !DILocation(line: 866, column: 14, scope: !157998, inlinedAt: !157999)
!157998 = !DILexicalBlockFile(scope: !157871, file: !1698, discriminator: 6)
!157999 = !DILocation(line: 304, column: 47, scope: !158000)
!158000 = !DILexicalBlockFile(scope: !158001, file: !5557, discriminator: 2)
!158001 = distinct !DILexicalBlock(scope: !157884, file: !5557, line: 304, column: 37)
!158002 = !DILocation(line: 281, column: 65, scope: !157960)
!158003 = !DILocation(line: 1841, column: 86, scope: !157983, inlinedAt: !158004)
!158004 = !DILocation(line: 3756, column: 14, scope: !158005, inlinedAt: !158006)
!158005 = !DILexicalBlockFile(scope: !157986, file: !362, discriminator: 4)
!158006 = !DILocation(line: 3831, column: 23, scope: !158007, inlinedAt: !158008)
!158007 = !DILexicalBlockFile(scope: !157968, file: !362, discriminator: 4)
!158008 = !DILocation(line: 281, column: 64, scope: !157960)
!158009 = !DILocation(line: 272, column: 10, scope: !157962, inlinedAt: !158010)
!158010 = !DILocation(line: 19, column: 15, scope: !158011, inlinedAt: !158012)
!158011 = !DILexicalBlockFile(scope: !157965, file: !1681, discriminator: 4)
!158012 = !DILocation(line: 3831, column: 9, scope: !158007, inlinedAt: !158008)
!158013 = !DILocation(line: 1917, column: 50, scope: !157867, inlinedAt: !158014)
!158014 = !DILocation(line: 781, column: 12, scope: !158015, inlinedAt: !157997)
!158015 = !DILexicalBlockFile(scope: !157869, file: !1698, discriminator: 6)
!158016 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !158017)
!158017 = !DILocation(line: 214, column: 28, scope: !158018, inlinedAt: !158019)
!158018 = !DILexicalBlockFile(scope: !157888, file: !1698, discriminator: 6)
!158019 = !DILocation(line: 784, column: 35, scope: !158020, inlinedAt: !157997)
!158020 = !DILexicalBlockFile(scope: !158021, file: !1698, discriminator: 6)
!158021 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!158022 = !DILocation(line: 305, column: 55, scope: !158023)
!158023 = distinct !DILexicalBlock(scope: !158001, file: !5557, line: 304, column: 37)
!158024 = !DILocation(line: 781, column: 12, scope: !157869, inlinedAt: !158025)
!158025 = !DILocation(line: 866, column: 14, scope: !158026, inlinedAt: !158027)
!158026 = !DILexicalBlockFile(scope: !157871, file: !1698, discriminator: 8)
!158027 = !DILocation(line: 307, column: 51, scope: !158028)
!158028 = !DILexicalBlockFile(scope: !158029, file: !5557, discriminator: 2)
!158029 = distinct !DILexicalBlock(scope: !158030, file: !5557, line: 307, column: 41)
!158030 = distinct !DILexicalBlock(scope: !158031, file: !5557, line: 306, column: 41)
!158031 = distinct !DILexicalBlock(scope: !158023, file: !5557, line: 305, column: 41)
!158032 = !DILocation(line: 328, column: 51, scope: !158033)
!158033 = distinct !DILexicalBlock(scope: !157934, file: !5557, line: 327, column: 33)
!158034 = !DILocation(line: 329, column: 51, scope: !158035)
!158035 = distinct !DILexicalBlock(scope: !158033, file: !5557, line: 328, column: 37)
!158036 = !DILocation(line: 89, column: 24, scope: !158037, inlinedAt: !158039)
!158037 = distinct !DILexicalBlock(scope: !158038, file: !1681, line: 87, column: 5)
!158038 = distinct !DISubprogram(name: "get_offset_len_noubcheck<i16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubchecksECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158039 = !DILocation(line: 441, column: 24, scope: !158040, inlinedAt: !158041)
!158040 = distinct !DISubprogram(name: "index<i16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSsE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158041 = !DILocation(line: 19, column: 15, scope: !158042, inlinedAt: !158044)
!158042 = !DILexicalBlockFile(scope: !158043, file: !1681, discriminator: 12)
!158043 = distinct !DISubprogram(name: "index<i16, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSsINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158044 = !DILocation(line: 390, column: 9, scope: !158045, inlinedAt: !158046)
!158045 = distinct !DISubprogram(name: "index<i16, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAsj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158046 = !DILocation(line: 330, column: 51, scope: !158047)
!158047 = distinct !DILexicalBlock(scope: !158035, file: !5557, line: 329, column: 37)
!158048 = !DILocation(line: 26, column: 9, scope: !158049, inlinedAt: !158050)
!158049 = distinct !DISubprogram(name: "get<i16>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrsE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158050 = !DILocation(line: 336, column: 49, scope: !158051)
!158051 = distinct !DILexicalBlock(scope: !158047, file: !5557, line: 330, column: 37)
!158052 = !DILocation(line: 961, column: 18, scope: !158053, inlinedAt: !158054)
!158053 = distinct !DISubprogram(name: "add<i16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOs3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158054 = !DILocation(line: 336, column: 55, scope: !158051)
!158055 = !DILocation(line: 552, column: 14, scope: !158056, inlinedAt: !158057)
!158056 = distinct !DISubprogram(name: "copy_nonoverlapping<i16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingsECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158057 = !DILocation(line: 334, column: 41, scope: !158051)
!158058 = !DILocation(line: 341, column: 29, scope: !157875)
!158059 = !DILocation(line: 341, column: 29, scope: !157864)
!158060 = !DILocation(line: 341, column: 29, scope: !157855)
!158061 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !158062)
!158062 = !DILocation(line: 214, column: 28, scope: !158063, inlinedAt: !158064)
!158063 = !DILexicalBlockFile(scope: !157888, file: !1698, discriminator: 10)
!158064 = !DILocation(line: 784, column: 35, scope: !158065, inlinedAt: !157930)
!158065 = !DILexicalBlockFile(scope: !158066, file: !1698, discriminator: 10)
!158066 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!158067 = !DILocation(line: 898, column: 17, scope: !157886, inlinedAt: !158068)
!158068 = !DILocation(line: 214, column: 28, scope: !158069, inlinedAt: !158070)
!158069 = !DILexicalBlockFile(scope: !157888, file: !1698, discriminator: 8)
!158070 = !DILocation(line: 784, column: 35, scope: !158071, inlinedAt: !158025)
!158071 = !DILexicalBlockFile(scope: !158072, file: !1698, discriminator: 8)
!158072 = distinct !DILexicalBlock(scope: !157869, file: !1698, line: 782, column: 13)
!158073 = !DILocation(line: 308, column: 73, scope: !158074)
!158074 = distinct !DILexicalBlock(scope: !158029, file: !5557, line: 307, column: 41)
!158075 = !DILocation(line: 272, column: 10, scope: !157894, inlinedAt: !158076)
!158076 = !DILocation(line: 19, column: 15, scope: !158077, inlinedAt: !158078)
!158077 = !DILexicalBlockFile(scope: !157896, file: !1681, discriminator: 6)
!158078 = !DILocation(line: 3831, column: 9, scope: !158079, inlinedAt: !158080)
!158079 = !DILexicalBlockFile(scope: !157898, file: !362, discriminator: 6)
!158080 = !DILocation(line: 308, column: 72, scope: !158074)
!158081 = !DILocation(line: 272, column: 9, scope: !157894, inlinedAt: !158076)
!158082 = !DILocation(line: 309, column: 68, scope: !158083)
!158083 = distinct !DILexicalBlock(scope: !158074, file: !5557, line: 308, column: 45)
!158084 = !DILocation(line: 309, column: 60, scope: !158083)
!158085 = !DILocation(line: 309, column: 55, scope: !158083)
!158086 = !DILocation(line: 310, column: 51, scope: !158087)
!158087 = distinct !DILexicalBlock(scope: !158083, file: !5557, line: 309, column: 45)
!158088 = !DILocation(line: 320, column: 77, scope: !158087)
!158089 = !DILocation(line: 1841, column: 86, scope: !157983, inlinedAt: !158090)
!158090 = !DILocation(line: 3756, column: 14, scope: !158091, inlinedAt: !158092)
!158091 = !DILexicalBlockFile(scope: !157986, file: !362, discriminator: 10)
!158092 = !DILocation(line: 3831, column: 23, scope: !158093, inlinedAt: !158094)
!158093 = !DILexicalBlockFile(scope: !157968, file: !362, discriminator: 10)
!158094 = !DILocation(line: 320, column: 76, scope: !158087)
!158095 = !DILocation(line: 272, column: 10, scope: !157962, inlinedAt: !158096)
!158096 = !DILocation(line: 19, column: 15, scope: !158097, inlinedAt: !158098)
!158097 = !DILexicalBlockFile(scope: !157965, file: !1681, discriminator: 8)
!158098 = !DILocation(line: 3831, column: 9, scope: !158099, inlinedAt: !158100)
!158099 = !DILexicalBlockFile(scope: !157968, file: !362, discriminator: 8)
!158100 = !DILocation(line: 313, column: 75, scope: !158087)
!158101 = !DILocation(line: 614, column: 9, scope: !157971, inlinedAt: !158102)
!158102 = !DILocation(line: 609, column: 14, scope: !158103, inlinedAt: !158104)
!158103 = !DILexicalBlockFile(scope: !157974, file: !1901, discriminator: 8)
!158104 = !DILocation(line: 296, column: 20, scope: !158105, inlinedAt: !158106)
!158105 = !DILexicalBlockFile(scope: !157977, file: !1901, discriminator: 8)
!158106 = !DILocation(line: 1942, column: 18, scope: !158107, inlinedAt: !158108)
!158107 = !DILexicalBlockFile(scope: !157980, file: !362, discriminator: 8)
!158108 = !DILocation(line: 1841, column: 76, scope: !158109, inlinedAt: !158110)
!158109 = !DILexicalBlockFile(scope: !157983, file: !362, discriminator: 8)
!158110 = !DILocation(line: 3756, column: 14, scope: !158111, inlinedAt: !158112)
!158111 = !DILexicalBlockFile(scope: !157986, file: !362, discriminator: 8)
!158112 = !DILocation(line: 3831, column: 23, scope: !158099, inlinedAt: !158100)
!158113 = !DILocation(line: 272, column: 9, scope: !157962, inlinedAt: !158096)
!158114 = !DILocation(line: 313, column: 69, scope: !158087)
!158115 = !DILocation(line: 313, column: 49, scope: !158087)
!158116 = !DILocation(line: 311, column: 49, scope: !158087)
!158117 = !DILocation(line: 312, column: 49, scope: !158087)
!158118 = !DILocation(line: 0, scope: !158087)
!158119 = !DILocation(line: 272, column: 10, scope: !157962, inlinedAt: !158120)
!158120 = !DILocation(line: 19, column: 15, scope: !158121, inlinedAt: !158122)
!158121 = !DILexicalBlockFile(scope: !157965, file: !1681, discriminator: 10)
!158122 = !DILocation(line: 3831, column: 9, scope: !158093, inlinedAt: !158094)
!158123 = distinct !{!158123, !153454}
!158124 = !DILocation(line: 614, column: 9, scope: !157971, inlinedAt: !158125)
!158125 = !DILocation(line: 609, column: 14, scope: !158126, inlinedAt: !158127)
!158126 = !DILexicalBlockFile(scope: !157974, file: !1901, discriminator: 10)
!158127 = !DILocation(line: 296, column: 20, scope: !158128, inlinedAt: !158129)
!158128 = !DILexicalBlockFile(scope: !157977, file: !1901, discriminator: 10)
end_hunk_18
begin_hunk_19_@llvm.vector.reduce.add.v2i64
!158368 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !158369)
!158369 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !158362)
!158370 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !158362)
!158371 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Int32Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int32TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158372 = !DILocation(line: 225, column: 45, scope: !158371)
!158373 = !DILocation(line: 225, column: 37, scope: !158371)
!158374 = !DILocation(line: 226, column: 35, scope: !158375)
!158375 = distinct !DILexicalBlock(scope: !158371, file: !5557, line: 225, column: 21)
!158376 = !DILocation(line: 226, column: 63, scope: !158375)
!158377 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !158378)
!158378 = distinct !DILocation(line: 226, column: 59, scope: !158375)
!158379 = !DILocation(line: 227, column: 38, scope: !158380)
!158380 = distinct !DILexicalBlock(scope: !158375, file: !5557, line: 226, column: 21)
!158381 = !DILocation(line: 229, column: 42, scope: !158382)
!158382 = distinct !DILexicalBlock(scope: !158380, file: !5557, line: 227, column: 21)
!158383 = !DILocation(line: 446, column: 20, scope: !158384, inlinedAt: !158387)
!158384 = distinct !DILexicalBlock(scope: !158385, file: !153176, line: 445, column: 17)
!158385 = distinct !DILexicalBlock(scope: !158386, file: !153176, line: 444, column: 17)
!158386 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158387 = !DILocation(line: 59, column: 14, scope: !158388, inlinedAt: !158389)
!158388 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158389 = !DILocation(line: 229, column: 38, scope: !158390)
!158390 = !DILexicalBlockFile(scope: !158391, file: !5557, discriminator: 2)
!158391 = distinct !DILexicalBlock(scope: !158382, file: !5557, line: 229, column: 21)
!158392 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !158393)
!158393 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !158394)
!158394 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !158395)
!158395 = distinct !DILocation(line: 439, column: 9, scope: !158396, inlinedAt: !158397)
!158396 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158397 = !DILocation(line: 229, column: 52, scope: !158382)
!158398 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !158393)
!158399 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !158393)
!158400 = !DILocation(line: 936, column: 11, scope: !158401, inlinedAt: !158403)
!158401 = distinct !DILexicalBlock(scope: !158402, file: !52151, line: 934, column: 5)
!158402 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158403 = distinct !DILocation(line: 154, column: 11, scope: !158404, inlinedAt: !158406)
!158404 = distinct !DILexicalBlock(scope: !158405, file: !52151, line: 153, column: 5)
!158405 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int32Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158406 = distinct !DILocation(line: 113, column: 5, scope: !158407, inlinedAt: !158408)
!158407 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int32Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes9Int32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158408 = !DILocation(line: 234, column: 64, scope: !158409)
!158409 = distinct !DILexicalBlock(scope: !158410, file: !5557, line: 230, column: 25)
!158410 = distinct !DILexicalBlock(scope: !158391, file: !5557, line: 229, column: 21)
!158411 = !DILocation(line: 229, column: 25, scope: !158391)
!158412 = !DILocation(line: 230, column: 42, scope: !158410)
!158413 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !158414)
!158414 = distinct !DILocation(line: 230, column: 65, scope: !158410)
!158415 = !DILocation(line: 230, column: 65, scope: !158410)
!158416 = !DILocation(line: 234, column: 29, scope: !158409)
!158417 = !DILocation(line: 113, column: 5, scope: !158407, inlinedAt: !158408)
!158418 = !DILocation(line: 113, column: 17, scope: !158407, inlinedAt: !158408)
!158419 = !DILocation(line: 431, column: 9, scope: !158420, inlinedAt: !158418)
!158420 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int32Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes9Int32TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158421 = !{!158422, !158424}
!158422 = distinct !{!158422, !158423, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!158423 = distinct !{!158423, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!158424 = distinct !{!158424, !158423, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!158425 = !DILocation(line: 937, column: 20, scope: !158401, inlinedAt: !158403)
!158426 = !{!158427, !158422}
!158427 = distinct !{!158427, !158428, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!158428 = distinct !{!158428, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int32TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!158429 = !DILocation(line: 266, column: 18, scope: !158430, inlinedAt: !158431)
!158430 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158431 = distinct !DILocation(line: 691, column: 30, scope: !158432, inlinedAt: !158433)
!158432 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158433 = distinct !DILocation(line: 978, column: 28, scope: !158434, inlinedAt: !158435)
!158434 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158435 = distinct !DILocation(line: 940, column: 24, scope: !158436, inlinedAt: !158403)
!158436 = distinct !DILexicalBlock(scope: !158401, file: !52151, line: 937, column: 9)
!158437 = !DILocation(line: 81, column: 9, scope: !158438, inlinedAt: !158439)
!158438 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158439 = distinct !DILocation(line: 185, column: 31, scope: !158440, inlinedAt: !158441)
!158440 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158441 = distinct !DILocation(line: 407, column: 30, scope: !158442, inlinedAt: !158443)
!158442 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158443 = distinct !DILocation(line: 574, column: 17, scope: !158444, inlinedAt: !158445)
!158444 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158445 = distinct !DILocation(line: 978, column: 64, scope: !158434, inlinedAt: !158435)
!158446 = !DILocation(line: 898, column: 17, scope: !158447, inlinedAt: !158448)
!158447 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158448 = distinct !DILocation(line: 979, column: 49, scope: !158434, inlinedAt: !158435)
!158449 = !DILocation(line: 2511, column: 13, scope: !158450, inlinedAt: !158451)
!158450 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158451 = !DILocation(line: 450, column: 43, scope: !158452, inlinedAt: !158387)
!158452 = distinct !DILexicalBlock(scope: !158384, file: !153176, line: 447, column: 21)
!158453 = !DILocation(line: 451, column: 21, scope: !158452, inlinedAt: !158387)
!158454 = !DILocation(line: 945, column: 2, scope: !158402, inlinedAt: !158403)
!158455 = !DILocation(line: 161, column: 2, scope: !158405, inlinedAt: !158406)
!158456 = !DILocation(line: 113, column: 49, scope: !158407, inlinedAt: !158408)
!158457 = !DILocation(line: 113, column: 51, scope: !158407, inlinedAt: !158408)
!158458 = !DILocation(line: 343, column: 21, scope: !158409)
!158459 = !DILocation(line: 344, column: 18, scope: !158371)
!158460 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !158461)
!158461 = distinct !DILocation(line: 158, column: 19, scope: !158404, inlinedAt: !158406)
!158462 = !{!158424}
!158463 = !DILocation(line: 446, column: 20, scope: !158464, inlinedAt: !158466)
!158464 = distinct !DILexicalBlock(scope: !158465, file: !153176, line: 445, column: 17)
!158465 = distinct !DILexicalBlock(scope: !158386, file: !153176, line: 444, column: 17)
!158466 = !DILocation(line: 59, column: 14, scope: !158467, inlinedAt: !158468)
!158467 = !DILexicalBlockFile(scope: !158388, file: !153176, discriminator: 2)
!158468 = !DILocation(line: 255, column: 35, scope: !158469)
!158469 = !DILexicalBlockFile(scope: !158470, file: !5557, discriminator: 2)
!158470 = distinct !DILexicalBlock(scope: !158471, file: !5557, line: 255, column: 25)
!158471 = distinct !DILexicalBlock(scope: !158409, file: !5557, line: 234, column: 25)
!158472 = !DILocation(line: 2511, column: 13, scope: !158450, inlinedAt: !158473)
!158473 = !DILocation(line: 450, column: 43, scope: !158474, inlinedAt: !158466)
!158474 = !DILexicalBlockFile(scope: !158475, file: !153176, discriminator: 2)
!158475 = distinct !DILexicalBlock(scope: !158464, file: !153176, line: 447, column: 21)
!158476 = !DILocation(line: 451, column: 21, scope: !158475, inlinedAt: !158466)
!158477 = !DILocation(line: 257, column: 49, scope: !158478)
!158478 = distinct !DILexicalBlock(scope: !158479, file: !5557, line: 256, column: 29)
!158479 = distinct !DILexicalBlock(scope: !158470, file: !5557, line: 255, column: 25)
!158480 = !DILocation(line: 259, column: 39, scope: !158481)
!158481 = distinct !DILexicalBlock(scope: !158478, file: !5557, line: 257, column: 29)
!158482 = !DILocation(line: 446, column: 20, scope: !158483, inlinedAt: !158485)
!158483 = distinct !DILexicalBlock(scope: !158484, file: !153176, line: 445, column: 17)
!158484 = distinct !DILexicalBlock(scope: !158386, file: !153176, line: 444, column: 17)
!158485 = !DILocation(line: 59, column: 14, scope: !158486, inlinedAt: !158487)
!158486 = !DILexicalBlockFile(scope: !158388, file: !153176, discriminator: 4)
!158487 = !DILocation(line: 259, column: 39, scope: !158488)
!158488 = !DILexicalBlockFile(scope: !158489, file: !5557, discriminator: 2)
!158489 = distinct !DILexicalBlock(scope: !158481, file: !5557, line: 259, column: 29)
!158490 = !DILocation(line: 256, column: 45, scope: !158479)
!158491 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !158492)
!158492 = distinct !DILocation(line: 256, column: 63, scope: !158479)
!158493 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !158494)
!158494 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !158495)
!158495 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !158496)
!158496 = distinct !DILocation(line: 439, column: 9, scope: !158396, inlinedAt: !158497)
!158497 = !DILocation(line: 259, column: 55, scope: !158481)
!158498 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !158494)
!158499 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !158494)
!158500 = !DILocation(line: 260, column: 49, scope: !158501)
!158501 = distinct !DILexicalBlock(scope: !158489, file: !5557, line: 259, column: 29)
!158502 = !DILocation(line: 268, column: 37, scope: !158503)
!158503 = distinct !DILexicalBlock(scope: !158501, file: !5557, line: 260, column: 33)
!158504 = !DILocation(line: 2511, column: 13, scope: !158450, inlinedAt: !158505)
!158505 = !DILocation(line: 450, column: 43, scope: !158506, inlinedAt: !158485)
!158506 = !DILexicalBlockFile(scope: !158507, file: !153176, discriminator: 4)
!158507 = distinct !DILexicalBlock(scope: !158483, file: !153176, line: 447, column: 21)
!158508 = !DILocation(line: 451, column: 21, scope: !158507, inlinedAt: !158485)
!158509 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !158510)
!158510 = distinct !DILocation(line: 260, column: 67, scope: !158501)
!158511 = !DILocation(line: 269, column: 37, scope: !158512)
!158512 = distinct !DILexicalBlock(scope: !158503, file: !5557, line: 268, column: 33)
!158513 = !DILocation(line: 269, column: 52, scope: !158512)
!158514 = !DILocation(line: 1917, column: 50, scope: !158515, inlinedAt: !158516)
!158515 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158516 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158518)
!158517 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158518 = !DILocation(line: 866, column: 14, scope: !158519, inlinedAt: !158520)
!158519 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158520 = !DILocation(line: 271, column: 43, scope: !158521)
!158521 = !DILexicalBlockFile(scope: !158522, file: !5557, discriminator: 2)
!158522 = distinct !DILexicalBlock(scope: !158523, file: !5557, line: 271, column: 33)
!158523 = distinct !DILexicalBlock(scope: !158524, file: !5557, line: 270, column: 33)
!158524 = distinct !DILexicalBlock(scope: !158512, file: !5557, line: 269, column: 33)
!158525 = !DILocation(line: 289, column: 37, scope: !158523)
!158526 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158527)
!158527 = !DILocation(line: 866, column: 14, scope: !158528, inlinedAt: !158529)
!158528 = !DILexicalBlockFile(scope: !158519, file: !1698, discriminator: 2)
!158529 = !DILocation(line: 292, column: 47, scope: !158530)
!158530 = !DILexicalBlockFile(scope: !158531, file: !5557, discriminator: 2)
!158531 = distinct !DILexicalBlock(scope: !158532, file: !5557, line: 292, column: 37)
!158532 = distinct !DILexicalBlock(scope: !158523, file: !5557, line: 289, column: 33)
!158533 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158535)
!158534 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158535 = !DILocation(line: 214, column: 28, scope: !158536, inlinedAt: !158537)
!158536 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158537 = !DILocation(line: 784, column: 35, scope: !158538, inlinedAt: !158518)
!158538 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158539 = !DILocation(line: 272, column: 65, scope: !158540)
!158540 = distinct !DILexicalBlock(scope: !158522, file: !5557, line: 271, column: 33)
!158541 = !DILocation(line: 272, column: 10, scope: !158542, inlinedAt: !158543)
!158542 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i32], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSlEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158543 = !DILocation(line: 19, column: 15, scope: !158544, inlinedAt: !158545)
!158544 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i32], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSlEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158545 = !DILocation(line: 3831, column: 9, scope: !158546, inlinedAt: !158547)
!158546 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i32], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSlEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158547 = !DILocation(line: 272, column: 64, scope: !158540)
!158548 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158549)
!158549 = !DILocation(line: 866, column: 14, scope: !158550, inlinedAt: !158551)
!158550 = !DILexicalBlockFile(scope: !158519, file: !1698, discriminator: 4)
!158551 = !DILocation(line: 294, column: 51, scope: !158552)
!158552 = !DILexicalBlockFile(scope: !158553, file: !5557, discriminator: 2)
!158553 = distinct !DILexicalBlock(scope: !158554, file: !5557, line: 294, column: 41)
!158554 = distinct !DILexicalBlock(scope: !158555, file: !5557, line: 293, column: 41)
!158555 = distinct !DILexicalBlock(scope: !158531, file: !5557, line: 292, column: 37)
!158556 = !DILocation(line: 298, column: 70, scope: !158557)
!158557 = distinct !DILexicalBlock(scope: !158553, file: !5557, line: 294, column: 41)
!158558 = !DILocation(line: 299, column: 68, scope: !158557)
!158559 = !DILocation(line: 252, column: 39, scope: !158560, inlinedAt: !158561)
!158560 = distinct !DISubprogram(name: "get_unchecked<i32>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSlE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158561 = !DILocation(line: 646, column: 26, scope: !158562, inlinedAt: !158563)
!158562 = distinct !DISubprogram(name: "get_unchecked<i32, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSl13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158563 = !DILocation(line: 299, column: 54, scope: !158557)
!158564 = !DILocation(line: 252, column: 13, scope: !158560, inlinedAt: !158561)
!158565 = !DILocation(line: 253, column: 13, scope: !158560, inlinedAt: !158561)
!158566 = !DILocation(line: 298, column: 69, scope: !158557)
!158567 = !DILocation(line: 298, column: 49, scope: !158557)
!158568 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158569)
!158569 = !DILocation(line: 214, column: 28, scope: !158570, inlinedAt: !158571)
!158570 = !DILexicalBlockFile(scope: !158536, file: !1698, discriminator: 2)
!158571 = !DILocation(line: 784, column: 35, scope: !158572, inlinedAt: !158527)
!158572 = !DILexicalBlockFile(scope: !158573, file: !1698, discriminator: 2)
!158573 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158574 = !DILocation(line: 1917, column: 50, scope: !158515, inlinedAt: !158575)
!158575 = !DILocation(line: 781, column: 12, scope: !158576, inlinedAt: !158527)
!158576 = !DILexicalBlockFile(scope: !158517, file: !1698, discriminator: 2)
!158577 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158578)
!158578 = !DILocation(line: 866, column: 14, scope: !158579, inlinedAt: !158580)
!158579 = !DILexicalBlockFile(scope: !158519, file: !1698, discriminator: 10)
!158580 = !DILocation(line: 327, column: 43, scope: !158581)
!158581 = !DILexicalBlockFile(scope: !158582, file: !5557, discriminator: 2)
!158582 = distinct !DILexicalBlock(scope: !158532, file: !5557, line: 327, column: 33)
!158583 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158584)
!158584 = !DILocation(line: 214, column: 28, scope: !158585, inlinedAt: !158586)
!158585 = !DILexicalBlockFile(scope: !158536, file: !1698, discriminator: 4)
!158586 = !DILocation(line: 784, column: 35, scope: !158587, inlinedAt: !158549)
!158587 = !DILexicalBlockFile(scope: !158588, file: !1698, discriminator: 4)
!158588 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158589 = !DILocation(line: 614, column: 9, scope: !158590, inlinedAt: !158591)
!158590 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[i32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSlEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158591 = !DILocation(line: 609, column: 14, scope: !158592, inlinedAt: !158593)
!158592 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[i32], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSlEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158593 = !DILocation(line: 296, column: 20, scope: !158594, inlinedAt: !158595)
!158594 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[i32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSlEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158595 = !DILocation(line: 1942, column: 18, scope: !158596, inlinedAt: !158597)
!158596 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[i32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSlEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158597 = !DILocation(line: 1841, column: 76, scope: !158598, inlinedAt: !158599)
!158598 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[i32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSlEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158599 = !DILocation(line: 3756, column: 14, scope: !158600, inlinedAt: !158601)
!158600 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[i32], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSlEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158601 = !DILocation(line: 3831, column: 23, scope: !158546, inlinedAt: !158547)
!158602 = !DILocation(line: 272, column: 9, scope: !158542, inlinedAt: !158543)
!158603 = !DILocation(line: 273, column: 60, scope: !158604)
!158604 = distinct !DILexicalBlock(scope: !158540, file: !5557, line: 272, column: 37)
!158605 = !DILocation(line: 273, column: 52, scope: !158604)
!158606 = !DILocation(line: 273, column: 47, scope: !158604)
!158607 = !DILocation(line: 275, column: 43, scope: !158608)
!158608 = distinct !DILexicalBlock(scope: !158604, file: !5557, line: 273, column: 37)
!158609 = !DILocation(line: 272, column: 10, scope: !158610, inlinedAt: !158611)
!158610 = distinct !DISubprogram(name: "index<&[i32]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSlE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158611 = !DILocation(line: 19, column: 15, scope: !158612, inlinedAt: !158614)
!158612 = !DILexicalBlockFile(scope: !158613, file: !1681, discriminator: 2)
!158613 = distinct !DISubprogram(name: "index<&[i32], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSlINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158614 = !DILocation(line: 3831, column: 9, scope: !158615, inlinedAt: !158617)
!158615 = !DILexicalBlockFile(scope: !158616, file: !362, discriminator: 2)
!158616 = distinct !DISubprogram(name: "index<&[i32], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSlEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158617 = !DILocation(line: 278, column: 67, scope: !158608)
!158618 = !DILocation(line: 614, column: 9, scope: !158619, inlinedAt: !158620)
!158619 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[i32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSlECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158620 = !DILocation(line: 609, column: 14, scope: !158621, inlinedAt: !158623)
!158621 = !DILexicalBlockFile(scope: !158622, file: !1901, discriminator: 2)
!158622 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[i32]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSlECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158623 = !DILocation(line: 296, column: 20, scope: !158624, inlinedAt: !158626)
!158624 = !DILexicalBlockFile(scope: !158625, file: !1901, discriminator: 2)
!158625 = distinct !DISubprogram(name: "ptr<&[i32], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSlE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158626 = !DILocation(line: 1942, column: 18, scope: !158627, inlinedAt: !158629)
!158627 = !DILexicalBlockFile(scope: !158628, file: !362, discriminator: 2)
!158628 = distinct !DISubprogram(name: "as_ptr<&[i32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSlE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158629 = !DILocation(line: 1841, column: 76, scope: !158630, inlinedAt: !158632)
!158630 = !DILexicalBlockFile(scope: !158631, file: !362, discriminator: 2)
!158631 = distinct !DISubprogram(name: "as_slice<&[i32], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSlE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158632 = !DILocation(line: 3756, column: 14, scope: !158633, inlinedAt: !158635)
!158633 = !DILexicalBlockFile(scope: !158634, file: !362, discriminator: 2)
!158634 = distinct !DISubprogram(name: "deref<&[i32], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSlENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158635 = !DILocation(line: 3831, column: 23, scope: !158615, inlinedAt: !158617)
!158636 = !DILocation(line: 272, column: 9, scope: !158610, inlinedAt: !158611)
!158637 = !DILocation(line: 278, column: 61, scope: !158608)
!158638 = !DILocation(line: 278, column: 41, scope: !158608)
!158639 = !DILocation(line: 276, column: 41, scope: !158608)
!158640 = !DILocation(line: 277, column: 41, scope: !158608)
!158641 = !DILocation(line: 0, scope: !158608)
!158642 = !DILocation(line: 280, column: 40, scope: !158608)
!158643 = distinct !{!158643, !153454}
!158644 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158645)
!158645 = !DILocation(line: 866, column: 14, scope: !158646, inlinedAt: !158647)
!158646 = !DILexicalBlockFile(scope: !158519, file: !1698, discriminator: 6)
!158647 = !DILocation(line: 304, column: 47, scope: !158648)
!158648 = !DILexicalBlockFile(scope: !158649, file: !5557, discriminator: 2)
!158649 = distinct !DILexicalBlock(scope: !158532, file: !5557, line: 304, column: 37)
!158650 = !DILocation(line: 281, column: 65, scope: !158608)
!158651 = !DILocation(line: 1841, column: 86, scope: !158631, inlinedAt: !158652)
!158652 = !DILocation(line: 3756, column: 14, scope: !158653, inlinedAt: !158654)
!158653 = !DILexicalBlockFile(scope: !158634, file: !362, discriminator: 4)
!158654 = !DILocation(line: 3831, column: 23, scope: !158655, inlinedAt: !158656)
!158655 = !DILexicalBlockFile(scope: !158616, file: !362, discriminator: 4)
!158656 = !DILocation(line: 281, column: 64, scope: !158608)
!158657 = !DILocation(line: 272, column: 10, scope: !158610, inlinedAt: !158658)
!158658 = !DILocation(line: 19, column: 15, scope: !158659, inlinedAt: !158660)
!158659 = !DILexicalBlockFile(scope: !158613, file: !1681, discriminator: 4)
!158660 = !DILocation(line: 3831, column: 9, scope: !158655, inlinedAt: !158656)
!158661 = !DILocation(line: 1917, column: 50, scope: !158515, inlinedAt: !158662)
!158662 = !DILocation(line: 781, column: 12, scope: !158663, inlinedAt: !158645)
!158663 = !DILexicalBlockFile(scope: !158517, file: !1698, discriminator: 6)
!158664 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158665)
!158665 = !DILocation(line: 214, column: 28, scope: !158666, inlinedAt: !158667)
!158666 = !DILexicalBlockFile(scope: !158536, file: !1698, discriminator: 6)
!158667 = !DILocation(line: 784, column: 35, scope: !158668, inlinedAt: !158645)
!158668 = !DILexicalBlockFile(scope: !158669, file: !1698, discriminator: 6)
!158669 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158670 = !DILocation(line: 305, column: 55, scope: !158671)
!158671 = distinct !DILexicalBlock(scope: !158649, file: !5557, line: 304, column: 37)
!158672 = !DILocation(line: 781, column: 12, scope: !158517, inlinedAt: !158673)
!158673 = !DILocation(line: 866, column: 14, scope: !158674, inlinedAt: !158675)
!158674 = !DILexicalBlockFile(scope: !158519, file: !1698, discriminator: 8)
!158675 = !DILocation(line: 307, column: 51, scope: !158676)
!158676 = !DILexicalBlockFile(scope: !158677, file: !5557, discriminator: 2)
!158677 = distinct !DILexicalBlock(scope: !158678, file: !5557, line: 307, column: 41)
!158678 = distinct !DILexicalBlock(scope: !158679, file: !5557, line: 306, column: 41)
!158679 = distinct !DILexicalBlock(scope: !158671, file: !5557, line: 305, column: 41)
!158680 = !DILocation(line: 328, column: 51, scope: !158681)
!158681 = distinct !DILexicalBlock(scope: !158582, file: !5557, line: 327, column: 33)
!158682 = !DILocation(line: 329, column: 51, scope: !158683)
!158683 = distinct !DILexicalBlock(scope: !158681, file: !5557, line: 328, column: 37)
!158684 = !DILocation(line: 89, column: 24, scope: !158685, inlinedAt: !158687)
!158685 = distinct !DILexicalBlock(scope: !158686, file: !1681, line: 87, column: 5)
!158686 = distinct !DISubprogram(name: "get_offset_len_noubcheck<i32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubchecklECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158687 = !DILocation(line: 441, column: 24, scope: !158688, inlinedAt: !158689)
!158688 = distinct !DISubprogram(name: "index<i32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSlE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158689 = !DILocation(line: 19, column: 15, scope: !158690, inlinedAt: !158692)
!158690 = !DILexicalBlockFile(scope: !158691, file: !1681, discriminator: 12)
!158691 = distinct !DISubprogram(name: "index<i32, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSlINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158692 = !DILocation(line: 390, column: 9, scope: !158693, inlinedAt: !158694)
!158693 = distinct !DISubprogram(name: "index<i32, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAlj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158694 = !DILocation(line: 330, column: 51, scope: !158695)
!158695 = distinct !DILexicalBlock(scope: !158683, file: !5557, line: 329, column: 37)
!158696 = !DILocation(line: 26, column: 9, scope: !158697, inlinedAt: !158698)
!158697 = distinct !DISubprogram(name: "get<i32>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrlE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158698 = !DILocation(line: 336, column: 49, scope: !158699)
!158699 = distinct !DILexicalBlock(scope: !158695, file: !5557, line: 330, column: 37)
!158700 = !DILocation(line: 961, column: 18, scope: !158701, inlinedAt: !158702)
!158701 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOl3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158702 = !DILocation(line: 336, column: 55, scope: !158699)
!158703 = !DILocation(line: 552, column: 14, scope: !158704, inlinedAt: !158705)
!158704 = distinct !DISubprogram(name: "copy_nonoverlapping<i32>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinglECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!158705 = !DILocation(line: 334, column: 41, scope: !158699)
!158706 = !DILocation(line: 341, column: 29, scope: !158523)
!158707 = !DILocation(line: 341, column: 29, scope: !158512)
!158708 = !DILocation(line: 341, column: 29, scope: !158503)
!158709 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158710)
!158710 = !DILocation(line: 214, column: 28, scope: !158711, inlinedAt: !158712)
!158711 = !DILexicalBlockFile(scope: !158536, file: !1698, discriminator: 10)
!158712 = !DILocation(line: 784, column: 35, scope: !158713, inlinedAt: !158578)
!158713 = !DILexicalBlockFile(scope: !158714, file: !1698, discriminator: 10)
!158714 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158715 = !DILocation(line: 898, column: 17, scope: !158534, inlinedAt: !158716)
!158716 = !DILocation(line: 214, column: 28, scope: !158717, inlinedAt: !158718)
!158717 = !DILexicalBlockFile(scope: !158536, file: !1698, discriminator: 8)
!158718 = !DILocation(line: 784, column: 35, scope: !158719, inlinedAt: !158673)
!158719 = !DILexicalBlockFile(scope: !158720, file: !1698, discriminator: 8)
!158720 = distinct !DILexicalBlock(scope: !158517, file: !1698, line: 782, column: 13)
!158721 = !DILocation(line: 308, column: 73, scope: !158722)
!158722 = distinct !DILexicalBlock(scope: !158677, file: !5557, line: 307, column: 41)
!158723 = !DILocation(line: 272, column: 10, scope: !158542, inlinedAt: !158724)
!158724 = !DILocation(line: 19, column: 15, scope: !158725, inlinedAt: !158726)
!158725 = !DILexicalBlockFile(scope: !158544, file: !1681, discriminator: 6)
!158726 = !DILocation(line: 3831, column: 9, scope: !158727, inlinedAt: !158728)
!158727 = !DILexicalBlockFile(scope: !158546, file: !362, discriminator: 6)
!158728 = !DILocation(line: 308, column: 72, scope: !158722)
!158729 = !DILocation(line: 272, column: 9, scope: !158542, inlinedAt: !158724)
!158730 = !DILocation(line: 309, column: 68, scope: !158731)
!158731 = distinct !DILexicalBlock(scope: !158722, file: !5557, line: 308, column: 45)
!158732 = !DILocation(line: 309, column: 60, scope: !158731)
!158733 = !DILocation(line: 309, column: 55, scope: !158731)
!158734 = !DILocation(line: 310, column: 51, scope: !158735)
!158735 = distinct !DILexicalBlock(scope: !158731, file: !5557, line: 309, column: 45)
!158736 = !DILocation(line: 320, column: 77, scope: !158735)
!158737 = !DILocation(line: 1841, column: 86, scope: !158631, inlinedAt: !158738)
!158738 = !DILocation(line: 3756, column: 14, scope: !158739, inlinedAt: !158740)
!158739 = !DILexicalBlockFile(scope: !158634, file: !362, discriminator: 10)
!158740 = !DILocation(line: 3831, column: 23, scope: !158741, inlinedAt: !158742)
!158741 = !DILexicalBlockFile(scope: !158616, file: !362, discriminator: 10)
!158742 = !DILocation(line: 320, column: 76, scope: !158735)
!158743 = !DILocation(line: 272, column: 10, scope: !158610, inlinedAt: !158744)
!158744 = !DILocation(line: 19, column: 15, scope: !158745, inlinedAt: !158746)
!158745 = !DILexicalBlockFile(scope: !158613, file: !1681, discriminator: 8)
!158746 = !DILocation(line: 3831, column: 9, scope: !158747, inlinedAt: !158748)
!158747 = !DILexicalBlockFile(scope: !158616, file: !362, discriminator: 8)
!158748 = !DILocation(line: 313, column: 75, scope: !158735)
!158749 = !DILocation(line: 614, column: 9, scope: !158619, inlinedAt: !158750)
!158750 = !DILocation(line: 609, column: 14, scope: !158751, inlinedAt: !158752)
!158751 = !DILexicalBlockFile(scope: !158622, file: !1901, discriminator: 8)
!158752 = !DILocation(line: 296, column: 20, scope: !158753, inlinedAt: !158754)
!158753 = !DILexicalBlockFile(scope: !158625, file: !1901, discriminator: 8)
!158754 = !DILocation(line: 1942, column: 18, scope: !158755, inlinedAt: !158756)
!158755 = !DILexicalBlockFile(scope: !158628, file: !362, discriminator: 8)
!158756 = !DILocation(line: 1841, column: 76, scope: !158757, inlinedAt: !158758)
!158757 = !DILexicalBlockFile(scope: !158631, file: !362, discriminator: 8)
!158758 = !DILocation(line: 3756, column: 14, scope: !158759, inlinedAt: !158760)
!158759 = !DILexicalBlockFile(scope: !158634, file: !362, discriminator: 8)
!158760 = !DILocation(line: 3831, column: 23, scope: !158747, inlinedAt: !158748)
!158761 = !DILocation(line: 272, column: 9, scope: !158610, inlinedAt: !158744)
!158762 = !DILocation(line: 313, column: 69, scope: !158735)
!158763 = !DILocation(line: 313, column: 49, scope: !158735)
!158764 = !DILocation(line: 311, column: 49, scope: !158735)
!158765 = !DILocation(line: 312, column: 49, scope: !158735)
!158766 = !DILocation(line: 0, scope: !158735)
!158767 = !DILocation(line: 272, column: 10, scope: !158610, inlinedAt: !158768)
!158768 = !DILocation(line: 19, column: 15, scope: !158769, inlinedAt: !158770)
!158769 = !DILexicalBlockFile(scope: !158613, file: !1681, discriminator: 10)
!158770 = !DILocation(line: 3831, column: 9, scope: !158741, inlinedAt: !158742)
!158771 = distinct !{!158771, !153454}
!158772 = !DILocation(line: 614, column: 9, scope: !158619, inlinedAt: !158773)
!158773 = !DILocation(line: 609, column: 14, scope: !158774, inlinedAt: !158775)
!158774 = !DILexicalBlockFile(scope: !158622, file: !1901, discriminator: 10)
!158775 = !DILocation(line: 296, column: 20, scope: !158776, inlinedAt: !158777)
!158776 = !DILexicalBlockFile(scope: !158625, file: !1901, discriminator: 10)
end_hunk_19
begin_hunk_20_@llvm.vector.reduce.add.v2i64
!159016 = !DILocation(line: 4387, column: 24, scope: !780, inlinedAt: !159017)
!159017 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !159010)
!159018 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !159010)
!159019 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::Int64Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9Int64TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159020 = !DILocation(line: 225, column: 45, scope: !159019)
!159021 = !DILocation(line: 225, column: 37, scope: !159019)
!159022 = !DILocation(line: 226, column: 35, scope: !159023)
!159023 = distinct !DILexicalBlock(scope: !159019, file: !5557, line: 225, column: 21)
!159024 = !DILocation(line: 226, column: 63, scope: !159023)
!159025 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159026)
!159026 = distinct !DILocation(line: 226, column: 59, scope: !159023)
!159027 = !DILocation(line: 227, column: 38, scope: !159028)
!159028 = distinct !DILexicalBlock(scope: !159023, file: !5557, line: 226, column: 21)
!159029 = !DILocation(line: 229, column: 42, scope: !159030)
!159030 = distinct !DILexicalBlock(scope: !159028, file: !5557, line: 227, column: 21)
!159031 = !DILocation(line: 446, column: 20, scope: !159032, inlinedAt: !159035)
!159032 = distinct !DILexicalBlock(scope: !159033, file: !153176, line: 445, column: 17)
!159033 = distinct !DILexicalBlock(scope: !159034, file: !153176, line: 444, column: 17)
!159034 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159035 = !DILocation(line: 59, column: 14, scope: !159036, inlinedAt: !159037)
!159036 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159037 = !DILocation(line: 229, column: 38, scope: !159038)
!159038 = !DILexicalBlockFile(scope: !159039, file: !5557, discriminator: 2)
!159039 = distinct !DILexicalBlock(scope: !159030, file: !5557, line: 229, column: 21)
!159040 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !159041)
!159041 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !159042)
!159042 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !159043)
!159043 = distinct !DILocation(line: 439, column: 9, scope: !159044, inlinedAt: !159045)
!159044 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159045 = !DILocation(line: 229, column: 52, scope: !159030)
!159046 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !159041)
!159047 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !159041)
!159048 = !DILocation(line: 936, column: 11, scope: !159049, inlinedAt: !159051)
!159049 = distinct !DILexicalBlock(scope: !159050, file: !52151, line: 934, column: 5)
!159050 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159051 = distinct !DILocation(line: 154, column: 11, scope: !159052, inlinedAt: !159054)
!159052 = distinct !DILexicalBlock(scope: !159053, file: !52151, line: 153, column: 5)
!159053 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int64Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159054 = distinct !DILocation(line: 113, column: 5, scope: !159055, inlinedAt: !159056)
!159055 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int64Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes9Int64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159056 = !DILocation(line: 234, column: 64, scope: !159057)
!159057 = distinct !DILexicalBlock(scope: !159058, file: !5557, line: 230, column: 25)
!159058 = distinct !DILexicalBlock(scope: !159039, file: !5557, line: 229, column: 21)
!159059 = !DILocation(line: 229, column: 25, scope: !159039)
!159060 = !DILocation(line: 230, column: 42, scope: !159058)
!159061 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159062)
!159062 = distinct !DILocation(line: 230, column: 65, scope: !159058)
!159063 = !DILocation(line: 230, column: 65, scope: !159058)
!159064 = !DILocation(line: 234, column: 29, scope: !159057)
!159065 = !DILocation(line: 113, column: 5, scope: !159055, inlinedAt: !159056)
!159066 = !DILocation(line: 113, column: 17, scope: !159055, inlinedAt: !159056)
!159067 = !DILocation(line: 431, column: 9, scope: !159068, inlinedAt: !159066)
!159068 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::Int64Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes9Int64TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159069 = !{!159070, !159072}
!159070 = distinct !{!159070, !159071, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!159071 = distinct !{!159071, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!159072 = distinct !{!159072, !159071, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!159073 = !DILocation(line: 937, column: 20, scope: !159049, inlinedAt: !159051)
!159074 = !{!159075, !159070}
!159075 = distinct !{!159075, !159076, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!159076 = distinct !{!159076, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9Int64TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!159077 = !DILocation(line: 266, column: 18, scope: !159078, inlinedAt: !159079)
!159078 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159079 = distinct !DILocation(line: 691, column: 30, scope: !159080, inlinedAt: !159081)
!159080 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159081 = distinct !DILocation(line: 978, column: 28, scope: !159082, inlinedAt: !159083)
!159082 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159083 = distinct !DILocation(line: 940, column: 24, scope: !159084, inlinedAt: !159051)
!159084 = distinct !DILexicalBlock(scope: !159049, file: !52151, line: 937, column: 9)
!159085 = !DILocation(line: 81, column: 9, scope: !159086, inlinedAt: !159087)
!159086 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159087 = distinct !DILocation(line: 185, column: 31, scope: !159088, inlinedAt: !159089)
!159088 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159089 = distinct !DILocation(line: 407, column: 30, scope: !159090, inlinedAt: !159091)
!159090 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159091 = distinct !DILocation(line: 574, column: 17, scope: !159092, inlinedAt: !159093)
!159092 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159093 = distinct !DILocation(line: 978, column: 64, scope: !159082, inlinedAt: !159083)
!159094 = !DILocation(line: 898, column: 17, scope: !159095, inlinedAt: !159096)
!159095 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159096 = distinct !DILocation(line: 979, column: 49, scope: !159082, inlinedAt: !159083)
!159097 = !DILocation(line: 2511, column: 13, scope: !159098, inlinedAt: !159099)
!159098 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159099 = !DILocation(line: 450, column: 43, scope: !159100, inlinedAt: !159035)
!159100 = distinct !DILexicalBlock(scope: !159032, file: !153176, line: 447, column: 21)
!159101 = !DILocation(line: 451, column: 21, scope: !159100, inlinedAt: !159035)
!159102 = !DILocation(line: 945, column: 2, scope: !159050, inlinedAt: !159051)
!159103 = !DILocation(line: 161, column: 2, scope: !159053, inlinedAt: !159054)
!159104 = !DILocation(line: 113, column: 49, scope: !159055, inlinedAt: !159056)
!159105 = !DILocation(line: 113, column: 51, scope: !159055, inlinedAt: !159056)
!159106 = !DILocation(line: 343, column: 21, scope: !159057)
!159107 = !DILocation(line: 344, column: 18, scope: !159019)
!159108 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !159109)
!159109 = distinct !DILocation(line: 158, column: 19, scope: !159052, inlinedAt: !159054)
!159110 = !{!159072}
!159111 = !DILocation(line: 446, column: 20, scope: !159112, inlinedAt: !159114)
!159112 = distinct !DILexicalBlock(scope: !159113, file: !153176, line: 445, column: 17)
!159113 = distinct !DILexicalBlock(scope: !159034, file: !153176, line: 444, column: 17)
!159114 = !DILocation(line: 59, column: 14, scope: !159115, inlinedAt: !159116)
!159115 = !DILexicalBlockFile(scope: !159036, file: !153176, discriminator: 2)
!159116 = !DILocation(line: 255, column: 35, scope: !159117)
!159117 = !DILexicalBlockFile(scope: !159118, file: !5557, discriminator: 2)
!159118 = distinct !DILexicalBlock(scope: !159119, file: !5557, line: 255, column: 25)
!159119 = distinct !DILexicalBlock(scope: !159057, file: !5557, line: 234, column: 25)
!159120 = !DILocation(line: 2511, column: 13, scope: !159098, inlinedAt: !159121)
!159121 = !DILocation(line: 450, column: 43, scope: !159122, inlinedAt: !159114)
!159122 = !DILexicalBlockFile(scope: !159123, file: !153176, discriminator: 2)
!159123 = distinct !DILexicalBlock(scope: !159112, file: !153176, line: 447, column: 21)
!159124 = !DILocation(line: 451, column: 21, scope: !159123, inlinedAt: !159114)
!159125 = !DILocation(line: 257, column: 49, scope: !159126)
!159126 = distinct !DILexicalBlock(scope: !159127, file: !5557, line: 256, column: 29)
!159127 = distinct !DILexicalBlock(scope: !159118, file: !5557, line: 255, column: 25)
!159128 = !DILocation(line: 259, column: 39, scope: !159129)
!159129 = distinct !DILexicalBlock(scope: !159126, file: !5557, line: 257, column: 29)
!159130 = !DILocation(line: 446, column: 20, scope: !159131, inlinedAt: !159133)
!159131 = distinct !DILexicalBlock(scope: !159132, file: !153176, line: 445, column: 17)
!159132 = distinct !DILexicalBlock(scope: !159034, file: !153176, line: 444, column: 17)
!159133 = !DILocation(line: 59, column: 14, scope: !159134, inlinedAt: !159135)
!159134 = !DILexicalBlockFile(scope: !159036, file: !153176, discriminator: 4)
!159135 = !DILocation(line: 259, column: 39, scope: !159136)
!159136 = !DILexicalBlockFile(scope: !159137, file: !5557, discriminator: 2)
!159137 = distinct !DILexicalBlock(scope: !159129, file: !5557, line: 259, column: 29)
!159138 = !DILocation(line: 256, column: 45, scope: !159127)
!159139 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159140)
!159140 = distinct !DILocation(line: 256, column: 63, scope: !159127)
!159141 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !159142)
!159142 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !159143)
!159143 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !159144)
!159144 = distinct !DILocation(line: 439, column: 9, scope: !159044, inlinedAt: !159145)
!159145 = !DILocation(line: 259, column: 55, scope: !159129)
!159146 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !159142)
!159147 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !159142)
!159148 = !DILocation(line: 260, column: 49, scope: !159149)
!159149 = distinct !DILexicalBlock(scope: !159137, file: !5557, line: 259, column: 29)
!159150 = !DILocation(line: 268, column: 37, scope: !159151)
!159151 = distinct !DILexicalBlock(scope: !159149, file: !5557, line: 260, column: 33)
!159152 = !DILocation(line: 2511, column: 13, scope: !159098, inlinedAt: !159153)
!159153 = !DILocation(line: 450, column: 43, scope: !159154, inlinedAt: !159133)
!159154 = !DILexicalBlockFile(scope: !159155, file: !153176, discriminator: 4)
!159155 = distinct !DILexicalBlock(scope: !159131, file: !153176, line: 447, column: 21)
!159156 = !DILocation(line: 451, column: 21, scope: !159155, inlinedAt: !159133)
!159157 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159158)
!159158 = distinct !DILocation(line: 260, column: 67, scope: !159149)
!159159 = !DILocation(line: 269, column: 37, scope: !159160)
!159160 = distinct !DILexicalBlock(scope: !159151, file: !5557, line: 268, column: 33)
!159161 = !DILocation(line: 269, column: 52, scope: !159160)
!159162 = !DILocation(line: 1917, column: 50, scope: !159163, inlinedAt: !159164)
!159163 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159164 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159166)
!159165 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159166 = !DILocation(line: 866, column: 14, scope: !159167, inlinedAt: !159168)
!159167 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159168 = !DILocation(line: 271, column: 43, scope: !159169)
!159169 = !DILexicalBlockFile(scope: !159170, file: !5557, discriminator: 2)
!159170 = distinct !DILexicalBlock(scope: !159171, file: !5557, line: 271, column: 33)
!159171 = distinct !DILexicalBlock(scope: !159172, file: !5557, line: 270, column: 33)
!159172 = distinct !DILexicalBlock(scope: !159160, file: !5557, line: 269, column: 33)
!159173 = !DILocation(line: 289, column: 37, scope: !159171)
!159174 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159175)
!159175 = !DILocation(line: 866, column: 14, scope: !159176, inlinedAt: !159177)
!159176 = !DILexicalBlockFile(scope: !159167, file: !1698, discriminator: 2)
!159177 = !DILocation(line: 292, column: 47, scope: !159178)
!159178 = !DILexicalBlockFile(scope: !159179, file: !5557, discriminator: 2)
!159179 = distinct !DILexicalBlock(scope: !159180, file: !5557, line: 292, column: 37)
!159180 = distinct !DILexicalBlock(scope: !159171, file: !5557, line: 289, column: 33)
!159181 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159183)
!159182 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159183 = !DILocation(line: 214, column: 28, scope: !159184, inlinedAt: !159185)
!159184 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159185 = !DILocation(line: 784, column: 35, scope: !159186, inlinedAt: !159166)
!159186 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159187 = !DILocation(line: 272, column: 65, scope: !159188)
!159188 = distinct !DILexicalBlock(scope: !159170, file: !5557, line: 271, column: 33)
!159189 = !DILocation(line: 272, column: 10, scope: !159190, inlinedAt: !159191)
!159190 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i64], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSxEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159191 = !DILocation(line: 19, column: 15, scope: !159192, inlinedAt: !159193)
!159192 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i64], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRSxEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159193 = !DILocation(line: 3831, column: 9, scope: !159194, inlinedAt: !159195)
!159194 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[i64], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSxEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159195 = !DILocation(line: 272, column: 64, scope: !159188)
!159196 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159197)
!159197 = !DILocation(line: 866, column: 14, scope: !159198, inlinedAt: !159199)
!159198 = !DILexicalBlockFile(scope: !159167, file: !1698, discriminator: 4)
!159199 = !DILocation(line: 294, column: 51, scope: !159200)
!159200 = !DILexicalBlockFile(scope: !159201, file: !5557, discriminator: 2)
!159201 = distinct !DILexicalBlock(scope: !159202, file: !5557, line: 294, column: 41)
!159202 = distinct !DILexicalBlock(scope: !159203, file: !5557, line: 293, column: 41)
!159203 = distinct !DILexicalBlock(scope: !159179, file: !5557, line: 292, column: 37)
!159204 = !DILocation(line: 298, column: 70, scope: !159205)
!159205 = distinct !DILexicalBlock(scope: !159201, file: !5557, line: 294, column: 41)
!159206 = !DILocation(line: 299, column: 68, scope: !159205)
!159207 = !DILocation(line: 252, column: 39, scope: !159208, inlinedAt: !159209)
!159208 = distinct !DISubprogram(name: "get_unchecked<i64>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSxE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159209 = !DILocation(line: 646, column: 26, scope: !159210, inlinedAt: !159211)
!159210 = distinct !DISubprogram(name: "get_unchecked<i64, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSx13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159211 = !DILocation(line: 299, column: 54, scope: !159205)
!159212 = !DILocation(line: 252, column: 13, scope: !159208, inlinedAt: !159209)
!159213 = !DILocation(line: 253, column: 13, scope: !159208, inlinedAt: !159209)
!159214 = !DILocation(line: 298, column: 69, scope: !159205)
!159215 = !DILocation(line: 298, column: 49, scope: !159205)
!159216 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159217)
!159217 = !DILocation(line: 214, column: 28, scope: !159218, inlinedAt: !159219)
!159218 = !DILexicalBlockFile(scope: !159184, file: !1698, discriminator: 2)
!159219 = !DILocation(line: 784, column: 35, scope: !159220, inlinedAt: !159175)
!159220 = !DILexicalBlockFile(scope: !159221, file: !1698, discriminator: 2)
!159221 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159222 = !DILocation(line: 1917, column: 50, scope: !159163, inlinedAt: !159223)
!159223 = !DILocation(line: 781, column: 12, scope: !159224, inlinedAt: !159175)
!159224 = !DILexicalBlockFile(scope: !159165, file: !1698, discriminator: 2)
!159225 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159226)
!159226 = !DILocation(line: 866, column: 14, scope: !159227, inlinedAt: !159228)
!159227 = !DILexicalBlockFile(scope: !159167, file: !1698, discriminator: 10)
!159228 = !DILocation(line: 327, column: 43, scope: !159229)
!159229 = !DILexicalBlockFile(scope: !159230, file: !5557, discriminator: 2)
!159230 = distinct !DILexicalBlock(scope: !159180, file: !5557, line: 327, column: 33)
!159231 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159232)
!159232 = !DILocation(line: 214, column: 28, scope: !159233, inlinedAt: !159234)
!159233 = !DILexicalBlockFile(scope: !159184, file: !1698, discriminator: 4)
!159234 = !DILocation(line: 784, column: 35, scope: !159235, inlinedAt: !159197)
!159235 = !DILexicalBlockFile(scope: !159236, file: !1698, discriminator: 4)
!159236 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159237 = !DILocation(line: 614, column: 9, scope: !159238, inlinedAt: !159239)
!159238 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[i64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRSxEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159239 = !DILocation(line: 609, column: 14, scope: !159240, inlinedAt: !159241)
!159240 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[i64], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRSxEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159241 = !DILocation(line: 296, column: 20, scope: !159242, inlinedAt: !159243)
!159242 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[i64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRSxEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159243 = !DILocation(line: 1942, column: 18, scope: !159244, inlinedAt: !159245)
!159244 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[i64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSxEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159245 = !DILocation(line: 1841, column: 76, scope: !159246, inlinedAt: !159247)
!159246 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[i64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RSxEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159247 = !DILocation(line: 3756, column: 14, scope: !159248, inlinedAt: !159249)
!159248 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[i64], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RSxEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159249 = !DILocation(line: 3831, column: 23, scope: !159194, inlinedAt: !159195)
!159250 = !DILocation(line: 272, column: 9, scope: !159190, inlinedAt: !159191)
!159251 = !DILocation(line: 273, column: 60, scope: !159252)
!159252 = distinct !DILexicalBlock(scope: !159188, file: !5557, line: 272, column: 37)
!159253 = !DILocation(line: 273, column: 52, scope: !159252)
!159254 = !DILocation(line: 273, column: 47, scope: !159252)
!159255 = !DILocation(line: 275, column: 43, scope: !159256)
!159256 = distinct !DILexicalBlock(scope: !159252, file: !5557, line: 273, column: 37)
!159257 = !DILocation(line: 272, column: 10, scope: !159258, inlinedAt: !159259)
!159258 = distinct !DISubprogram(name: "index<&[i64]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRSxE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159259 = !DILocation(line: 19, column: 15, scope: !159260, inlinedAt: !159262)
!159260 = !DILexicalBlockFile(scope: !159261, file: !1681, discriminator: 2)
!159261 = distinct !DISubprogram(name: "index<&[i64], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRSxINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159262 = !DILocation(line: 3831, column: 9, scope: !159263, inlinedAt: !159265)
!159263 = !DILexicalBlockFile(scope: !159264, file: !362, discriminator: 2)
!159264 = distinct !DISubprogram(name: "index<&[i64], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSxEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159265 = !DILocation(line: 278, column: 67, scope: !159256)
!159266 = !DILocation(line: 614, column: 9, scope: !159267, inlinedAt: !159268)
!159267 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[i64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRSxECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159268 = !DILocation(line: 609, column: 14, scope: !159269, inlinedAt: !159271)
!159269 = !DILexicalBlockFile(scope: !159270, file: !1901, discriminator: 2)
!159270 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[i64]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRSxECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159271 = !DILocation(line: 296, column: 20, scope: !159272, inlinedAt: !159274)
!159272 = !DILexicalBlockFile(scope: !159273, file: !1901, discriminator: 2)
!159273 = distinct !DISubprogram(name: "ptr<&[i64], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRSxE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159274 = !DILocation(line: 1942, column: 18, scope: !159275, inlinedAt: !159277)
!159275 = !DILexicalBlockFile(scope: !159276, file: !362, discriminator: 2)
!159276 = distinct !DISubprogram(name: "as_ptr<&[i64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSxE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159277 = !DILocation(line: 1841, column: 76, scope: !159278, inlinedAt: !159280)
!159278 = !DILexicalBlockFile(scope: !159279, file: !362, discriminator: 2)
!159279 = distinct !DISubprogram(name: "as_slice<&[i64], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRSxE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159280 = !DILocation(line: 3756, column: 14, scope: !159281, inlinedAt: !159283)
!159281 = !DILexicalBlockFile(scope: !159282, file: !362, discriminator: 2)
!159282 = distinct !DISubprogram(name: "deref<&[i64], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRSxENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159283 = !DILocation(line: 3831, column: 23, scope: !159263, inlinedAt: !159265)
!159284 = !DILocation(line: 272, column: 9, scope: !159258, inlinedAt: !159259)
!159285 = !DILocation(line: 278, column: 61, scope: !159256)
!159286 = !DILocation(line: 278, column: 41, scope: !159256)
!159287 = !DILocation(line: 276, column: 41, scope: !159256)
!159288 = !DILocation(line: 277, column: 41, scope: !159256)
!159289 = !DILocation(line: 0, scope: !159256)
!159290 = !DILocation(line: 280, column: 40, scope: !159256)
!159291 = distinct !{!159291, !153454}
!159292 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159293)
!159293 = !DILocation(line: 866, column: 14, scope: !159294, inlinedAt: !159295)
!159294 = !DILexicalBlockFile(scope: !159167, file: !1698, discriminator: 6)
!159295 = !DILocation(line: 304, column: 47, scope: !159296)
!159296 = !DILexicalBlockFile(scope: !159297, file: !5557, discriminator: 2)
!159297 = distinct !DILexicalBlock(scope: !159180, file: !5557, line: 304, column: 37)
!159298 = !DILocation(line: 281, column: 65, scope: !159256)
!159299 = !DILocation(line: 1841, column: 86, scope: !159279, inlinedAt: !159300)
!159300 = !DILocation(line: 3756, column: 14, scope: !159301, inlinedAt: !159302)
!159301 = !DILexicalBlockFile(scope: !159282, file: !362, discriminator: 4)
!159302 = !DILocation(line: 3831, column: 23, scope: !159303, inlinedAt: !159304)
!159303 = !DILexicalBlockFile(scope: !159264, file: !362, discriminator: 4)
!159304 = !DILocation(line: 281, column: 64, scope: !159256)
!159305 = !DILocation(line: 272, column: 10, scope: !159258, inlinedAt: !159306)
!159306 = !DILocation(line: 19, column: 15, scope: !159307, inlinedAt: !159308)
!159307 = !DILexicalBlockFile(scope: !159261, file: !1681, discriminator: 4)
!159308 = !DILocation(line: 3831, column: 9, scope: !159303, inlinedAt: !159304)
!159309 = !DILocation(line: 1917, column: 50, scope: !159163, inlinedAt: !159310)
!159310 = !DILocation(line: 781, column: 12, scope: !159311, inlinedAt: !159293)
!159311 = !DILexicalBlockFile(scope: !159165, file: !1698, discriminator: 6)
!159312 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159313)
!159313 = !DILocation(line: 214, column: 28, scope: !159314, inlinedAt: !159315)
!159314 = !DILexicalBlockFile(scope: !159184, file: !1698, discriminator: 6)
!159315 = !DILocation(line: 784, column: 35, scope: !159316, inlinedAt: !159293)
!159316 = !DILexicalBlockFile(scope: !159317, file: !1698, discriminator: 6)
!159317 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159318 = !DILocation(line: 305, column: 55, scope: !159319)
!159319 = distinct !DILexicalBlock(scope: !159297, file: !5557, line: 304, column: 37)
!159320 = !DILocation(line: 781, column: 12, scope: !159165, inlinedAt: !159321)
!159321 = !DILocation(line: 866, column: 14, scope: !159322, inlinedAt: !159323)
!159322 = !DILexicalBlockFile(scope: !159167, file: !1698, discriminator: 8)
!159323 = !DILocation(line: 307, column: 51, scope: !159324)
!159324 = !DILexicalBlockFile(scope: !159325, file: !5557, discriminator: 2)
!159325 = distinct !DILexicalBlock(scope: !159326, file: !5557, line: 307, column: 41)
!159326 = distinct !DILexicalBlock(scope: !159327, file: !5557, line: 306, column: 41)
!159327 = distinct !DILexicalBlock(scope: !159319, file: !5557, line: 305, column: 41)
!159328 = !DILocation(line: 328, column: 51, scope: !159329)
!159329 = distinct !DILexicalBlock(scope: !159230, file: !5557, line: 327, column: 33)
!159330 = !DILocation(line: 329, column: 51, scope: !159331)
!159331 = distinct !DILexicalBlock(scope: !159329, file: !5557, line: 328, column: 37)
!159332 = !DILocation(line: 89, column: 24, scope: !159333, inlinedAt: !159335)
!159333 = distinct !DILexicalBlock(scope: !159334, file: !1681, line: 87, column: 5)
!159334 = distinct !DISubprogram(name: "get_offset_len_noubcheck<i64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckxECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159335 = !DILocation(line: 441, column: 24, scope: !159336, inlinedAt: !159337)
!159336 = distinct !DISubprogram(name: "index<i64>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSxE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159337 = !DILocation(line: 19, column: 15, scope: !159338, inlinedAt: !159340)
!159338 = !DILexicalBlockFile(scope: !159339, file: !1681, discriminator: 12)
!159339 = distinct !DISubprogram(name: "index<i64, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSxINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159340 = !DILocation(line: 390, column: 9, scope: !159341, inlinedAt: !159342)
!159341 = distinct !DISubprogram(name: "index<i64, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAxj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159342 = !DILocation(line: 330, column: 51, scope: !159343)
!159343 = distinct !DILexicalBlock(scope: !159331, file: !5557, line: 329, column: 37)
!159344 = !DILocation(line: 26, column: 9, scope: !159345, inlinedAt: !159346)
!159345 = distinct !DISubprogram(name: "get<i64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrxE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159346 = !DILocation(line: 336, column: 49, scope: !159347)
!159347 = distinct !DILexicalBlock(scope: !159343, file: !5557, line: 330, column: 37)
!159348 = !DILocation(line: 961, column: 18, scope: !159349, inlinedAt: !159350)
!159349 = distinct !DISubprogram(name: "add<i64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOx3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159350 = !DILocation(line: 336, column: 55, scope: !159347)
!159351 = !DILocation(line: 552, column: 14, scope: !159352, inlinedAt: !159353)
!159352 = distinct !DISubprogram(name: "copy_nonoverlapping<i64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingxECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159353 = !DILocation(line: 334, column: 41, scope: !159347)
!159354 = !DILocation(line: 341, column: 29, scope: !159171)
!159355 = !DILocation(line: 341, column: 29, scope: !159160)
!159356 = !DILocation(line: 341, column: 29, scope: !159151)
!159357 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159358)
!159358 = !DILocation(line: 214, column: 28, scope: !159359, inlinedAt: !159360)
!159359 = !DILexicalBlockFile(scope: !159184, file: !1698, discriminator: 10)
!159360 = !DILocation(line: 784, column: 35, scope: !159361, inlinedAt: !159226)
!159361 = !DILexicalBlockFile(scope: !159362, file: !1698, discriminator: 10)
!159362 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159363 = !DILocation(line: 898, column: 17, scope: !159182, inlinedAt: !159364)
!159364 = !DILocation(line: 214, column: 28, scope: !159365, inlinedAt: !159366)
!159365 = !DILexicalBlockFile(scope: !159184, file: !1698, discriminator: 8)
!159366 = !DILocation(line: 784, column: 35, scope: !159367, inlinedAt: !159321)
!159367 = !DILexicalBlockFile(scope: !159368, file: !1698, discriminator: 8)
!159368 = distinct !DILexicalBlock(scope: !159165, file: !1698, line: 782, column: 13)
!159369 = !DILocation(line: 308, column: 73, scope: !159370)
!159370 = distinct !DILexicalBlock(scope: !159325, file: !5557, line: 307, column: 41)
!159371 = !DILocation(line: 272, column: 10, scope: !159190, inlinedAt: !159372)
!159372 = !DILocation(line: 19, column: 15, scope: !159373, inlinedAt: !159374)
!159373 = !DILexicalBlockFile(scope: !159192, file: !1681, discriminator: 6)
!159374 = !DILocation(line: 3831, column: 9, scope: !159375, inlinedAt: !159376)
!159375 = !DILexicalBlockFile(scope: !159194, file: !362, discriminator: 6)
!159376 = !DILocation(line: 308, column: 72, scope: !159370)
!159377 = !DILocation(line: 272, column: 9, scope: !159190, inlinedAt: !159372)
!159378 = !DILocation(line: 309, column: 68, scope: !159379)
!159379 = distinct !DILexicalBlock(scope: !159370, file: !5557, line: 308, column: 45)
!159380 = !DILocation(line: 309, column: 60, scope: !159379)
!159381 = !DILocation(line: 309, column: 55, scope: !159379)
!159382 = !DILocation(line: 310, column: 51, scope: !159383)
!159383 = distinct !DILexicalBlock(scope: !159379, file: !5557, line: 309, column: 45)
!159384 = !DILocation(line: 320, column: 77, scope: !159383)
!159385 = !DILocation(line: 1841, column: 86, scope: !159279, inlinedAt: !159386)
!159386 = !DILocation(line: 3756, column: 14, scope: !159387, inlinedAt: !159388)
!159387 = !DILexicalBlockFile(scope: !159282, file: !362, discriminator: 10)
!159388 = !DILocation(line: 3831, column: 23, scope: !159389, inlinedAt: !159390)
!159389 = !DILexicalBlockFile(scope: !159264, file: !362, discriminator: 10)
!159390 = !DILocation(line: 320, column: 76, scope: !159383)
!159391 = !DILocation(line: 272, column: 10, scope: !159258, inlinedAt: !159392)
!159392 = !DILocation(line: 19, column: 15, scope: !159393, inlinedAt: !159394)
!159393 = !DILexicalBlockFile(scope: !159261, file: !1681, discriminator: 8)
!159394 = !DILocation(line: 3831, column: 9, scope: !159395, inlinedAt: !159396)
!159395 = !DILexicalBlockFile(scope: !159264, file: !362, discriminator: 8)
!159396 = !DILocation(line: 313, column: 75, scope: !159383)
!159397 = !DILocation(line: 614, column: 9, scope: !159267, inlinedAt: !159398)
!159398 = !DILocation(line: 609, column: 14, scope: !159399, inlinedAt: !159400)
!159399 = !DILexicalBlockFile(scope: !159270, file: !1901, discriminator: 8)
!159400 = !DILocation(line: 296, column: 20, scope: !159401, inlinedAt: !159402)
!159401 = !DILexicalBlockFile(scope: !159273, file: !1901, discriminator: 8)
!159402 = !DILocation(line: 1942, column: 18, scope: !159403, inlinedAt: !159404)
!159403 = !DILexicalBlockFile(scope: !159276, file: !362, discriminator: 8)
!159404 = !DILocation(line: 1841, column: 76, scope: !159405, inlinedAt: !159406)
!159405 = !DILexicalBlockFile(scope: !159279, file: !362, discriminator: 8)
!159406 = !DILocation(line: 3756, column: 14, scope: !159407, inlinedAt: !159408)
!159407 = !DILexicalBlockFile(scope: !159282, file: !362, discriminator: 8)
!159408 = !DILocation(line: 3831, column: 23, scope: !159395, inlinedAt: !159396)
!159409 = !DILocation(line: 272, column: 9, scope: !159258, inlinedAt: !159392)
!159410 = !DILocation(line: 313, column: 69, scope: !159383)
!159411 = !DILocation(line: 313, column: 49, scope: !159383)
!159412 = !DILocation(line: 311, column: 49, scope: !159383)
!159413 = !DILocation(line: 312, column: 49, scope: !159383)
!159414 = !DILocation(line: 0, scope: !159383)
!159415 = !DILocation(line: 272, column: 10, scope: !159258, inlinedAt: !159416)
!159416 = !DILocation(line: 19, column: 15, scope: !159417, inlinedAt: !159418)
!159417 = !DILexicalBlockFile(scope: !159261, file: !1681, discriminator: 10)
!159418 = !DILocation(line: 3831, column: 9, scope: !159389, inlinedAt: !159390)
!159419 = distinct !{!159419, !153454}
!159420 = !DILocation(line: 614, column: 9, scope: !159267, inlinedAt: !159421)
!159421 = !DILocation(line: 609, column: 14, scope: !159422, inlinedAt: !159423)
!159422 = !DILexicalBlockFile(scope: !159270, file: !1901, discriminator: 10)
!159423 = !DILocation(line: 296, column: 20, scope: !159424, inlinedAt: !159425)
!159424 = !DILexicalBlockFile(scope: !159273, file: !1901, discriminator: 10)
end_hunk_20
begin_hunk_21_@llvm.vector.reduce.add.v2i64
!159665 = distinct !DILocation(line: 64, column: 9, scope: !13723, inlinedAt: !159658)
!159666 = !DILocation(line: 2857, column: 18, scope: !13723, inlinedAt: !159658)
!159667 = distinct !DISubprogram(name: "{closure#4}<polars_core::datatypes::UInt8Type>", linkageName: "_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeEs2_0CseeLknQCOKOd_13polars_python", scope: !152936, file: !5557, line: 224, type: !10, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159668 = !DILocation(line: 225, column: 45, scope: !159667)
!159669 = !DILocation(line: 225, column: 37, scope: !159667)
!159670 = !DILocation(line: 226, column: 35, scope: !159671)
!159671 = distinct !DILexicalBlock(scope: !159667, file: !5557, line: 225, column: 21)
!159672 = !DILocation(line: 226, column: 63, scope: !159671)
!159673 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159674)
!159674 = distinct !DILocation(line: 226, column: 59, scope: !159671)
!159675 = !DILocation(line: 227, column: 38, scope: !159676)
!159676 = distinct !DILexicalBlock(scope: !159671, file: !5557, line: 226, column: 21)
!159677 = !DILocation(line: 229, column: 42, scope: !159678)
!159678 = distinct !DILexicalBlock(scope: !159676, file: !5557, line: 227, column: 21)
!159679 = !DILocation(line: 446, column: 20, scope: !159680, inlinedAt: !159683)
!159680 = distinct !DILexicalBlock(scope: !159681, file: !153176, line: 445, column: 17)
!159681 = distinct !DILexicalBlock(scope: !159682, file: !153176, line: 444, column: 17)
!159682 = distinct !DISubprogram(name: "spec_next", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEEINtB5_10StepByImplB13_E9spec_next", scope: !153179, file: !153176, line: 441, type: !10, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159683 = !DILocation(line: 59, column: 14, scope: !159684, inlinedAt: !159685)
!159684 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !153183, file: !153176, line: 58, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159685 = !DILocation(line: 229, column: 38, scope: !159686)
!159686 = !DILexicalBlockFile(scope: !159687, file: !5557, discriminator: 2)
!159687 = distinct !DILexicalBlock(scope: !159678, file: !5557, line: 229, column: 21)
!159688 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !159689)
!159689 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !159690)
!159690 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !159691)
!159691 = distinct !DILocation(line: 439, column: 9, scope: !159692, inlinedAt: !159693)
!159692 = distinct !DISubprogram(name: "step_by<core::ops::range::Range<usize>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator7step_byCseeLknQCOKOd_13polars_python", scope: !397, file: !396, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159693 = !DILocation(line: 229, column: 52, scope: !159678)
!159694 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !159689)
!159695 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !159689)
!159696 = !DILocation(line: 936, column: 11, scope: !159697, inlinedAt: !159699)
!159697 = distinct !DILexicalBlock(scope: !159698, file: !52151, line: 934, column: 5)
!159698 = distinct !DISubprogram(name: "try_from_fn_erased<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt8Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 930, type: !10, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159699 = distinct !DILocation(line: 154, column: 11, scope: !159700, inlinedAt: !159702)
!159700 = distinct !DILexicalBlock(scope: !159701, file: !52151, line: 153, column: 5)
!159701 = distinct !DISubprogram(name: "try_from_fn<core::ops::try_trait::NeverShortCircuit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, 64, core::ops::try_trait::Wrapped<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt8Type>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 148, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159702 = distinct !DILocation(line: 113, column: 5, scope: !159703, inlinedAt: !159704)
!159703 = distinct !DISubprogram(name: "from_fn<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, 64, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt8Type>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core5array7from_fnNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBN_5frame9dataframe9DataFrame10to_ndarray6CursorKj40_NCNCIBD_NtNtBN_9datatypes9UInt8TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !52153, file: !52151, line: 109, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159704 = !DILocation(line: 234, column: 64, scope: !159705)
!159705 = distinct !DILexicalBlock(scope: !159706, file: !5557, line: 230, column: 25)
!159706 = distinct !DILexicalBlock(scope: !159687, file: !5557, line: 229, column: 21)
!159707 = !DILocation(line: 229, column: 25, scope: !159687)
!159708 = !DILocation(line: 230, column: 42, scope: !159706)
!159709 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159710)
!159710 = distinct !DILocation(line: 230, column: 65, scope: !159706)
!159711 = !DILocation(line: 230, column: 65, scope: !159706)
!159712 = !DILocation(line: 234, column: 29, scope: !159705)
!159713 = !DILocation(line: 113, column: 5, scope: !159703, inlinedAt: !159704)
!159714 = !DILocation(line: 113, column: 17, scope: !159703, inlinedAt: !159704)
!159715 = !DILocation(line: 431, column: 9, scope: !159716, inlinedAt: !159714)
!159716 = distinct !DISubprogram(name: "wrap_mut_1<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor, usize, polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::{closure#4}::{closure_env#0}<polars_core::datatypes::UInt8Type>>", linkageName: "_RINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB6_17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1i_5frame9dataframe9DataFrame10to_ndarray6CursorE10wrap_mut_1jNCNCIB18_NtNtB1i_9datatypes9UInt8TypeEs2_00ECseeLknQCOKOd_13polars_python", scope: !153225, file: !153224, line: 427, type: !10, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159717 = !{!159718, !159720}
!159718 = distinct !{!159718, !159719, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!159719 = distinct !{!159719, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!159720 = distinct !{!159720, !159719, !"_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1z_5frame9dataframe9DataFrame10to_ndarray6CursorEKj40_INtBJ_7WrappedB1n_jNCNCIB1p_NtNtB1z_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 1"}
!159721 = !DILocation(line: 937, column: 20, scope: !159697, inlinedAt: !159699)
!159722 = !{!159723, !159718}
!159723 = distinct !{!159723, !159724, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python: argument 0"}
!159724 = distinct !{!159724, !"_RINvNtCscgRAwXFJnXP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1G_5frame9dataframe9DataFrame10to_ndarray6CursorEINtBQ_7WrappedB1u_jNCNCIB1w_NtNtB1G_9datatypes9UInt8TypeEs2_00EECseeLknQCOKOd_13polars_python"}
!159725 = !DILocation(line: 266, column: 18, scope: !159726, inlinedAt: !159727)
!159726 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1P_5frame9dataframe9DataFrame10to_ndarray6CursorEE17get_unchecked_mutCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 259, type: !10, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159727 = distinct !DILocation(line: 691, column: 30, scope: !159728, inlinedAt: !159729)
!159728 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1m_5frame9dataframe9DataFrame10to_ndarray6CursorE17get_unchecked_mutjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 684, type: !10, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159729 = distinct !DILocation(line: 978, column: 28, scope: !159730, inlinedAt: !159731)
!159730 = distinct !DISubprogram(name: "push_unchecked<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBU_5frame9dataframe9DataFrame10to_ndarray6CursorE14push_uncheckedCseeLknQCOKOd_13polars_python", scope: !153241, file: !52151, line: 973, type: !10, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159731 = distinct !DILocation(line: 940, column: 24, scope: !159732, inlinedAt: !159699)
!159732 = distinct !DILexicalBlock(scope: !159697, file: !52151, line: 937, column: 9)
!159733 = !DILocation(line: 81, column: 9, scope: !159734, inlinedAt: !159735)
!159734 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1g_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !352, file: !351, line: 77, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159735 = distinct !DILocation(line: 185, column: 31, scope: !159736, inlinedAt: !159737)
!159736 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1e_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !358, file: !357, line: 184, type: !10, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159737 = distinct !DILocation(line: 407, column: 30, scope: !159738, inlinedAt: !159739)
!159738 = distinct !DISubprogram(name: "new<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE3newCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 406, type: !10, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159739 = distinct !DILocation(line: 574, column: 17, scope: !159740, inlinedAt: !159741)
!159740 = distinct !DISubprogram(name: "write<polars_core::chunked_array::ndarray::{impl#2}::to_ndarray::Cursor>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtB1f_5frame9dataframe9DataFrame10to_ndarray6CursorE5writeCseeLknQCOKOd_13polars_python", scope: !844, file: !843, line: 573, type: !10, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159741 = distinct !DILocation(line: 978, column: 64, scope: !159730, inlinedAt: !159731)
!159742 = !DILocation(line: 898, column: 17, scope: !159743, inlinedAt: !159744)
!159743 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159744 = distinct !DILocation(line: 979, column: 49, scope: !159730, inlinedAt: !159731)
!159745 = !DILocation(line: 2511, column: 13, scope: !159746, inlinedAt: !159747)
!159746 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1713, file: !1712, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159747 = !DILocation(line: 450, column: 43, scope: !159748, inlinedAt: !159683)
!159748 = distinct !DILexicalBlock(scope: !159680, file: !153176, line: 447, column: 21)
!159749 = !DILocation(line: 451, column: 21, scope: !159748, inlinedAt: !159683)
!159750 = !DILocation(line: 945, column: 2, scope: !159698, inlinedAt: !159699)
!159751 = !DILocation(line: 161, column: 2, scope: !159701, inlinedAt: !159702)
!159752 = !DILocation(line: 113, column: 49, scope: !159703, inlinedAt: !159704)
!159753 = !DILocation(line: 113, column: 51, scope: !159703, inlinedAt: !159704)
!159754 = !DILocation(line: 343, column: 21, scope: !159705)
!159755 = !DILocation(line: 344, column: 18, scope: !159667)
!159756 = !DILocation(line: 454, column: 9, scope: !153268, inlinedAt: !159757)
!159757 = distinct !DILocation(line: 158, column: 19, scope: !159700, inlinedAt: !159702)
!159758 = !{!159720}
!159759 = !DILocation(line: 446, column: 20, scope: !159760, inlinedAt: !159762)
!159760 = distinct !DILexicalBlock(scope: !159761, file: !153176, line: 445, column: 17)
!159761 = distinct !DILexicalBlock(scope: !159682, file: !153176, line: 444, column: 17)
!159762 = !DILocation(line: 59, column: 14, scope: !159763, inlinedAt: !159764)
!159763 = !DILexicalBlockFile(scope: !159684, file: !153176, discriminator: 2)
!159764 = !DILocation(line: 255, column: 35, scope: !159765)
!159765 = !DILexicalBlockFile(scope: !159766, file: !5557, discriminator: 2)
!159766 = distinct !DILexicalBlock(scope: !159767, file: !5557, line: 255, column: 25)
!159767 = distinct !DILexicalBlock(scope: !159705, file: !5557, line: 234, column: 25)
!159768 = !DILocation(line: 2511, column: 13, scope: !159746, inlinedAt: !159769)
!159769 = !DILocation(line: 450, column: 43, scope: !159770, inlinedAt: !159762)
!159770 = !DILexicalBlockFile(scope: !159771, file: !153176, discriminator: 2)
!159771 = distinct !DILexicalBlock(scope: !159760, file: !153176, line: 447, column: 21)
!159772 = !DILocation(line: 451, column: 21, scope: !159771, inlinedAt: !159762)
!159773 = !DILocation(line: 257, column: 49, scope: !159774)
!159774 = distinct !DILexicalBlock(scope: !159775, file: !5557, line: 256, column: 29)
!159775 = distinct !DILexicalBlock(scope: !159766, file: !5557, line: 255, column: 25)
!159776 = !DILocation(line: 259, column: 39, scope: !159777)
!159777 = distinct !DILexicalBlock(scope: !159774, file: !5557, line: 257, column: 29)
!159778 = !DILocation(line: 446, column: 20, scope: !159779, inlinedAt: !159781)
!159779 = distinct !DILexicalBlock(scope: !159780, file: !153176, line: 445, column: 17)
!159780 = distinct !DILexicalBlock(scope: !159682, file: !153176, line: 444, column: 17)
!159781 = !DILocation(line: 59, column: 14, scope: !159782, inlinedAt: !159783)
!159782 = !DILexicalBlockFile(scope: !159684, file: !153176, discriminator: 4)
!159783 = !DILocation(line: 259, column: 39, scope: !159784)
!159784 = !DILexicalBlockFile(scope: !159785, file: !5557, discriminator: 2)
!159785 = distinct !DILexicalBlock(scope: !159777, file: !5557, line: 259, column: 29)
!159786 = !DILocation(line: 256, column: 45, scope: !159775)
!159787 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159788)
!159788 = distinct !DILocation(line: 256, column: 63, scope: !159775)
!159789 = !DILocation(line: 3712, column: 21, scope: !153188, inlinedAt: !159790)
!159790 = distinct !DILocation(line: 432, column: 45, scope: !153190, inlinedAt: !159791)
!159791 = distinct !DILocation(line: 36, column: 20, scope: !153194, inlinedAt: !159792)
!159792 = distinct !DILocation(line: 439, column: 9, scope: !159692, inlinedAt: !159793)
!159793 = !DILocation(line: 259, column: 55, scope: !159777)
!159794 = !DILocation(line: 3713, column: 21, scope: !153200, inlinedAt: !159790)
!159795 = !DILocation(line: 3714, column: 16, scope: !153202, inlinedAt: !159790)
!159796 = !DILocation(line: 260, column: 49, scope: !159797)
!159797 = distinct !DILexicalBlock(scope: !159785, file: !5557, line: 259, column: 29)
!159798 = !DILocation(line: 268, column: 37, scope: !159799)
!159799 = distinct !DILexicalBlock(scope: !159797, file: !5557, line: 260, column: 33)
!159800 = !DILocation(line: 2511, column: 13, scope: !159746, inlinedAt: !159801)
!159801 = !DILocation(line: 450, column: 43, scope: !159802, inlinedAt: !159781)
!159802 = !DILexicalBlockFile(scope: !159803, file: !153176, discriminator: 4)
!159803 = distinct !DILexicalBlock(scope: !159779, file: !153176, line: 447, column: 21)
!159804 = !DILocation(line: 451, column: 21, scope: !159803, inlinedAt: !159781)
!159805 = !DILocation(line: 1077, column: 12, scope: !2339, inlinedAt: !159806)
!159806 = distinct !DILocation(line: 260, column: 67, scope: !159797)
!159807 = !DILocation(line: 269, column: 37, scope: !159808)
!159808 = distinct !DILexicalBlock(scope: !159799, file: !5557, line: 268, column: 33)
!159809 = !DILocation(line: 269, column: 52, scope: !159808)
!159810 = !DILocation(line: 1917, column: 50, scope: !159811, inlinedAt: !159812)
!159811 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1722, file: !1721, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159812 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159814)
!159813 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !1699, file: !1698, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159814 = !DILocation(line: 866, column: 14, scope: !159815, inlinedAt: !159816)
!159815 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !1703, file: !1698, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159816 = !DILocation(line: 271, column: 43, scope: !159817)
!159817 = !DILexicalBlockFile(scope: !159818, file: !5557, discriminator: 2)
!159818 = distinct !DILexicalBlock(scope: !159819, file: !5557, line: 271, column: 33)
!159819 = distinct !DILexicalBlock(scope: !159820, file: !5557, line: 270, column: 33)
!159820 = distinct !DILexicalBlock(scope: !159808, file: !5557, line: 269, column: 33)
!159821 = !DILocation(line: 289, column: 37, scope: !159819)
!159822 = !DILocation(line: 289, column: 47, scope: !159819)
!159823 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159824)
!159824 = !DILocation(line: 866, column: 14, scope: !159825, inlinedAt: !159826)
!159825 = !DILexicalBlockFile(scope: !159815, file: !1698, discriminator: 2)
!159826 = !DILocation(line: 292, column: 47, scope: !159827)
!159827 = !DILexicalBlockFile(scope: !159828, file: !5557, discriminator: 2)
!159828 = distinct !DILexicalBlock(scope: !159829, file: !5557, line: 292, column: 37)
!159829 = distinct !DILexicalBlock(scope: !159819, file: !5557, line: 289, column: 33)
!159830 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159831)
!159831 = !DILocation(line: 866, column: 14, scope: !159832, inlinedAt: !159833)
!159832 = !DILexicalBlockFile(scope: !159815, file: !1698, discriminator: 4)
!159833 = !DILocation(line: 294, column: 51, scope: !159834)
!159834 = !DILexicalBlockFile(scope: !159835, file: !5557, discriminator: 2)
!159835 = distinct !DILexicalBlock(scope: !159836, file: !5557, line: 294, column: 41)
!159836 = distinct !DILexicalBlock(scope: !159837, file: !5557, line: 293, column: 41)
!159837 = distinct !DILexicalBlock(scope: !159828, file: !5557, line: 292, column: 37)
!159838 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !159840)
!159839 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1713, file: !1712, line: 886, type: !10, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159840 = !DILocation(line: 214, column: 28, scope: !159841, inlinedAt: !159842)
!159841 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1716, file: !1698, line: 212, type: !10, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159842 = !DILocation(line: 784, column: 35, scope: !159843, inlinedAt: !159814)
!159843 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!159844 = !DILocation(line: 272, column: 65, scope: !159845)
!159845 = distinct !DILexicalBlock(scope: !159818, file: !5557, line: 271, column: 33)
!159846 = !DILocation(line: 272, column: 10, scope: !159847, inlinedAt: !159848)
!159847 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u8], alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159848 = !DILocation(line: 19, column: 15, scope: !159849, inlinedAt: !159850)
!159849 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u8], alloc::alloc::Global>, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSINtNtCsgZ49sUHp3tW_5alloc3vec3VecRShEINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159850 = !DILocation(line: 3831, column: 9, scope: !159851, inlinedAt: !159852)
!159851 = distinct !DISubprogram(name: "index<alloc::vec::Vec<&[u8], alloc::alloc::Global>, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RShEEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159852 = !DILocation(line: 272, column: 64, scope: !159845)
!159853 = !DILocation(line: 298, column: 70, scope: !159854)
!159854 = distinct !DILexicalBlock(scope: !159835, file: !5557, line: 294, column: 41)
!159855 = !DILocation(line: 299, column: 68, scope: !159854)
!159856 = !DILocation(line: 252, column: 39, scope: !159857, inlinedAt: !159858)
!159857 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159858 = !DILocation(line: 646, column: 26, scope: !159859, inlinedAt: !159860)
!159859 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedjECseeLknQCOKOd_13polars_python", scope: !1126, file: !1125, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159860 = !DILocation(line: 299, column: 54, scope: !159854)
!159861 = !DILocation(line: 252, column: 13, scope: !159857, inlinedAt: !159858)
!159862 = !DILocation(line: 253, column: 13, scope: !159857, inlinedAt: !159858)
!159863 = !DILocation(line: 298, column: 69, scope: !159854)
!159864 = !DILocation(line: 298, column: 49, scope: !159854)
!159865 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !159866)
!159866 = !DILocation(line: 214, column: 28, scope: !159867, inlinedAt: !159868)
!159867 = !DILexicalBlockFile(scope: !159841, file: !1698, discriminator: 2)
!159868 = !DILocation(line: 784, column: 35, scope: !159869, inlinedAt: !159824)
!159869 = !DILexicalBlockFile(scope: !159870, file: !1698, discriminator: 2)
!159870 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!159871 = !DILocation(line: 1917, column: 50, scope: !159811, inlinedAt: !159872)
!159872 = !DILocation(line: 781, column: 12, scope: !159873, inlinedAt: !159824)
!159873 = !DILexicalBlockFile(scope: !159813, file: !1698, discriminator: 2)
!159874 = !DILocation(line: 293, column: 55, scope: !159837)
!159875 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159876)
!159876 = !DILocation(line: 866, column: 14, scope: !159877, inlinedAt: !159878)
!159877 = !DILexicalBlockFile(scope: !159815, file: !1698, discriminator: 10)
!159878 = !DILocation(line: 327, column: 43, scope: !159879)
!159879 = !DILexicalBlockFile(scope: !159880, file: !5557, discriminator: 2)
!159880 = distinct !DILexicalBlock(scope: !159829, file: !5557, line: 327, column: 33)
!159881 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !159882)
!159882 = !DILocation(line: 214, column: 28, scope: !159883, inlinedAt: !159884)
!159883 = !DILexicalBlockFile(scope: !159841, file: !1698, discriminator: 4)
!159884 = !DILocation(line: 784, column: 35, scope: !159885, inlinedAt: !159831)
!159885 = !DILexicalBlockFile(scope: !159886, file: !1698, discriminator: 4)
!159886 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!159887 = !DILocation(line: 614, column: 9, scope: !159888, inlinedAt: !159889)
!159888 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::vec::Vec<&[u8], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_3vec3VecRShEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159889 = !DILocation(line: 609, column: 14, scope: !159890, inlinedAt: !159891)
!159890 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::vec::Vec<&[u8], alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_3vec3VecRShEECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159891 = !DILocation(line: 296, column: 20, scope: !159892, inlinedAt: !159893)
!159892 = distinct !DISubprogram(name: "ptr<alloc::vec::Vec<&[u8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecRShEE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159893 = !DILocation(line: 1942, column: 18, scope: !159894, inlinedAt: !159895)
!159894 = distinct !DISubprogram(name: "as_ptr<alloc::vec::Vec<&[u8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RShEE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159895 = !DILocation(line: 1841, column: 76, scope: !159896, inlinedAt: !159897)
!159896 = distinct !DISubprogram(name: "as_slice<alloc::vec::Vec<&[u8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_RShEE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159897 = !DILocation(line: 3756, column: 14, scope: !159898, inlinedAt: !159899)
!159898 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&[u8], alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_RShEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159899 = !DILocation(line: 3831, column: 23, scope: !159851, inlinedAt: !159852)
!159900 = !DILocation(line: 272, column: 9, scope: !159847, inlinedAt: !159848)
!159901 = !DILocation(line: 273, column: 60, scope: !159902)
!159902 = distinct !DILexicalBlock(scope: !159845, file: !5557, line: 272, column: 37)
!159903 = !DILocation(line: 273, column: 52, scope: !159902)
!159904 = !DILocation(line: 273, column: 47, scope: !159902)
!159905 = !DILocation(line: 275, column: 43, scope: !159906)
!159906 = distinct !DILexicalBlock(scope: !159902, file: !5557, line: 273, column: 37)
!159907 = !DILocation(line: 272, column: 10, scope: !159908, inlinedAt: !159909)
!159908 = distinct !DISubprogram(name: "index<&[u8]>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSRShE5indexCseeLknQCOKOd_13polars_python", scope: !1682, file: !1681, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159909 = !DILocation(line: 19, column: 15, scope: !159910, inlinedAt: !159912)
!159910 = !DILexicalBlockFile(scope: !159911, file: !1681, discriminator: 2)
!159911 = distinct !DISubprogram(name: "index<&[u8], usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSRShINtNtNtB6_3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159912 = !DILocation(line: 3831, column: 9, scope: !159913, inlinedAt: !159915)
!159913 = !DILexicalBlockFile(scope: !159914, file: !362, discriminator: 2)
!159914 = distinct !DISubprogram(name: "index<&[u8], usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRShEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCseeLknQCOKOd_13polars_python", scope: !11819, file: !362, line: 3830, type: !10, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159915 = !DILocation(line: 278, column: 67, scope: !159906)
!159916 = !DILocation(line: 614, column: 9, scope: !159917, inlinedAt: !159918)
!159917 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &[u8]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRShECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 613, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159918 = !DILocation(line: 609, column: 14, scope: !159919, inlinedAt: !159921)
!159919 = !DILexicalBlockFile(scope: !159920, file: !1901, discriminator: 2)
!159920 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &[u8]>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrRShECseeLknQCOKOd_13polars_python", scope: !1902, file: !1901, line: 608, type: !10, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159921 = !DILocation(line: 296, column: 20, scope: !159922, inlinedAt: !159924)
!159922 = !DILexicalBlockFile(scope: !159923, file: !1901, discriminator: 2)
!159923 = distinct !DISubprogram(name: "ptr<&[u8], alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRShE3ptrCseeLknQCOKOd_13polars_python", scope: !1906, file: !1901, line: 295, type: !10, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159924 = !DILocation(line: 1942, column: 18, scope: !159925, inlinedAt: !159927)
!159925 = !DILexicalBlockFile(scope: !159926, file: !362, discriminator: 2)
!159926 = distinct !DISubprogram(name: "as_ptr<&[u8], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRShE6as_ptrCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1939, type: !10, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159927 = !DILocation(line: 1841, column: 76, scope: !159928, inlinedAt: !159930)
!159928 = !DILexicalBlockFile(scope: !159929, file: !362, discriminator: 2)
!159929 = distinct !DISubprogram(name: "as_slice<&[u8], alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRShE8as_sliceCseeLknQCOKOd_13polars_python", scope: !374, file: !362, line: 1824, type: !10, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159930 = !DILocation(line: 3756, column: 14, scope: !159931, inlinedAt: !159933)
!159931 = !DILexicalBlockFile(scope: !159932, file: !362, discriminator: 2)
!159932 = distinct !DISubprogram(name: "deref<&[u8], alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRShENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3784, file: !362, line: 3755, type: !10, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159933 = !DILocation(line: 3831, column: 23, scope: !159913, inlinedAt: !159915)
!159934 = !DILocation(line: 272, column: 9, scope: !159908, inlinedAt: !159909)
!159935 = !DILocation(line: 278, column: 61, scope: !159906)
!159936 = !DILocation(line: 278, column: 41, scope: !159906)
!159937 = !DILocation(line: 276, column: 41, scope: !159906)
!159938 = !DILocation(line: 277, column: 41, scope: !159906)
!159939 = !DILocation(line: 0, scope: !159906)
!159940 = !DILocation(line: 280, column: 40, scope: !159906)
!159941 = distinct !{!159941, !153454}
!159942 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159943)
!159943 = !DILocation(line: 866, column: 14, scope: !159944, inlinedAt: !159945)
!159944 = !DILexicalBlockFile(scope: !159815, file: !1698, discriminator: 6)
!159945 = !DILocation(line: 304, column: 47, scope: !159946)
!159946 = !DILexicalBlockFile(scope: !159947, file: !5557, discriminator: 2)
!159947 = distinct !DILexicalBlock(scope: !159829, file: !5557, line: 304, column: 37)
!159948 = !DILocation(line: 281, column: 65, scope: !159906)
!159949 = !DILocation(line: 1841, column: 86, scope: !159929, inlinedAt: !159950)
!159950 = !DILocation(line: 3756, column: 14, scope: !159951, inlinedAt: !159952)
!159951 = !DILexicalBlockFile(scope: !159932, file: !362, discriminator: 4)
!159952 = !DILocation(line: 3831, column: 23, scope: !159953, inlinedAt: !159954)
!159953 = !DILexicalBlockFile(scope: !159914, file: !362, discriminator: 4)
!159954 = !DILocation(line: 281, column: 64, scope: !159906)
!159955 = !DILocation(line: 272, column: 10, scope: !159908, inlinedAt: !159956)
!159956 = !DILocation(line: 19, column: 15, scope: !159957, inlinedAt: !159958)
!159957 = !DILexicalBlockFile(scope: !159911, file: !1681, discriminator: 4)
!159958 = !DILocation(line: 3831, column: 9, scope: !159953, inlinedAt: !159954)
!159959 = !DILocation(line: 1917, column: 50, scope: !159811, inlinedAt: !159960)
!159960 = !DILocation(line: 781, column: 12, scope: !159961, inlinedAt: !159943)
!159961 = !DILexicalBlockFile(scope: !159813, file: !1698, discriminator: 6)
!159962 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !159963)
!159963 = !DILocation(line: 214, column: 28, scope: !159964, inlinedAt: !159965)
!159964 = !DILexicalBlockFile(scope: !159841, file: !1698, discriminator: 6)
!159965 = !DILocation(line: 784, column: 35, scope: !159966, inlinedAt: !159943)
!159966 = !DILexicalBlockFile(scope: !159967, file: !1698, discriminator: 6)
!159967 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!159968 = !DILocation(line: 305, column: 55, scope: !159969)
!159969 = distinct !DILexicalBlock(scope: !159947, file: !5557, line: 304, column: 37)
!159970 = !DILocation(line: 306, column: 55, scope: !159971)
!159971 = distinct !DILexicalBlock(scope: !159969, file: !5557, line: 305, column: 41)
!159972 = !DILocation(line: 781, column: 12, scope: !159813, inlinedAt: !159973)
!159973 = !DILocation(line: 866, column: 14, scope: !159974, inlinedAt: !159975)
!159974 = !DILexicalBlockFile(scope: !159815, file: !1698, discriminator: 8)
!159975 = !DILocation(line: 307, column: 51, scope: !159976)
!159976 = !DILexicalBlockFile(scope: !159977, file: !5557, discriminator: 2)
!159977 = distinct !DILexicalBlock(scope: !159978, file: !5557, line: 307, column: 41)
!159978 = distinct !DILexicalBlock(scope: !159971, file: !5557, line: 306, column: 41)
!159979 = !DILocation(line: 330, column: 52, scope: !159980)
!159980 = distinct !DILexicalBlock(scope: !159981, file: !5557, line: 329, column: 37)
!159981 = distinct !DILexicalBlock(scope: !159982, file: !5557, line: 328, column: 37)
!159982 = distinct !DILexicalBlock(scope: !159880, file: !5557, line: 327, column: 33)
!159983 = !DILocation(line: 328, column: 51, scope: !159982)
!159984 = !DILocation(line: 329, column: 51, scope: !159981)
!159985 = !DILocation(line: 89, column: 24, scope: !159986, inlinedAt: !159988)
!159986 = distinct !DILexicalBlock(scope: !159987, file: !1681, line: 87, column: 5)
!159987 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECseeLknQCOKOd_13polars_python", scope: !1683, file: !1681, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159988 = !DILocation(line: 441, column: 24, scope: !159989, inlinedAt: !159990)
!159989 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCseeLknQCOKOd_13polars_python", scope: !13066, file: !1681, line: 435, type: !10, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159990 = !DILocation(line: 19, column: 15, scope: !159991, inlinedAt: !159993)
!159991 = !DILexicalBlockFile(scope: !159992, file: !1681, discriminator: 12)
!159992 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !11816, file: !1681, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159993 = !DILocation(line: 390, column: 9, scope: !159994, inlinedAt: !159995)
!159994 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>, 1024>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAhj400_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCseeLknQCOKOd_13polars_python", scope: !52152, file: !52151, line: 389, type: !10, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159995 = !DILocation(line: 330, column: 51, scope: !159980)
!159996 = !DILocation(line: 26, column: 9, scope: !159997, inlinedAt: !159998)
!159997 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrhE3getCseeLknQCOKOd_13polars_python", scope: !5619, file: !5618, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!159998 = !DILocation(line: 336, column: 49, scope: !159999)
!159999 = distinct !DILexicalBlock(scope: !159980, file: !5557, line: 330, column: 37)
!160000 = !DILocation(line: 961, column: 18, scope: !160001, inlinedAt: !160002)
!160001 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCseeLknQCOKOd_13polars_python", scope: !384, file: !383, line: 927, type: !10, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160002 = !DILocation(line: 336, column: 55, scope: !159999)
!160003 = !DILocation(line: 552, column: 14, scope: !160004, inlinedAt: !160005)
!160004 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECseeLknQCOKOd_13polars_python", scope: !74, file: !73, line: 531, type: !10, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160005 = !DILocation(line: 334, column: 41, scope: !159999)
!160006 = !DILocation(line: 341, column: 29, scope: !159819)
!160007 = !DILocation(line: 341, column: 29, scope: !159808)
!160008 = !DILocation(line: 341, column: 29, scope: !159799)
!160009 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !160010)
!160010 = !DILocation(line: 214, column: 28, scope: !160011, inlinedAt: !160012)
!160011 = !DILexicalBlockFile(scope: !159841, file: !1698, discriminator: 10)
!160012 = !DILocation(line: 784, column: 35, scope: !160013, inlinedAt: !159876)
!160013 = !DILexicalBlockFile(scope: !160014, file: !1698, discriminator: 10)
!160014 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!160015 = !DILocation(line: 898, column: 17, scope: !159839, inlinedAt: !160016)
!160016 = !DILocation(line: 214, column: 28, scope: !160017, inlinedAt: !160018)
!160017 = !DILexicalBlockFile(scope: !159841, file: !1698, discriminator: 8)
!160018 = !DILocation(line: 784, column: 35, scope: !160019, inlinedAt: !159973)
!160019 = !DILexicalBlockFile(scope: !160020, file: !1698, discriminator: 8)
!160020 = distinct !DILexicalBlock(scope: !159813, file: !1698, line: 782, column: 13)
!160021 = !DILocation(line: 308, column: 73, scope: !160022)
!160022 = distinct !DILexicalBlock(scope: !159977, file: !5557, line: 307, column: 41)
!160023 = !DILocation(line: 272, column: 10, scope: !159847, inlinedAt: !160024)
!160024 = !DILocation(line: 19, column: 15, scope: !160025, inlinedAt: !160026)
!160025 = !DILexicalBlockFile(scope: !159849, file: !1681, discriminator: 6)
!160026 = !DILocation(line: 3831, column: 9, scope: !160027, inlinedAt: !160028)
!160027 = !DILexicalBlockFile(scope: !159851, file: !362, discriminator: 6)
!160028 = !DILocation(line: 308, column: 72, scope: !160022)
!160029 = !DILocation(line: 272, column: 9, scope: !159847, inlinedAt: !160024)
!160030 = !DILocation(line: 309, column: 68, scope: !160031)
!160031 = distinct !DILexicalBlock(scope: !160022, file: !5557, line: 308, column: 45)
!160032 = !DILocation(line: 309, column: 60, scope: !160031)
!160033 = !DILocation(line: 309, column: 55, scope: !160031)
!160034 = !DILocation(line: 310, column: 51, scope: !160035)
!160035 = distinct !DILexicalBlock(scope: !160031, file: !5557, line: 309, column: 45)
!160036 = !DILocation(line: 320, column: 77, scope: !160035)
!160037 = !DILocation(line: 1841, column: 86, scope: !159929, inlinedAt: !160038)
!160038 = !DILocation(line: 3756, column: 14, scope: !160039, inlinedAt: !160040)
!160039 = !DILexicalBlockFile(scope: !159932, file: !362, discriminator: 10)
!160040 = !DILocation(line: 3831, column: 23, scope: !160041, inlinedAt: !160042)
!160041 = !DILexicalBlockFile(scope: !159914, file: !362, discriminator: 10)
!160042 = !DILocation(line: 320, column: 76, scope: !160035)
!160043 = !DILocation(line: 272, column: 10, scope: !159908, inlinedAt: !160044)
!160044 = !DILocation(line: 19, column: 15, scope: !160045, inlinedAt: !160046)
!160045 = !DILexicalBlockFile(scope: !159911, file: !1681, discriminator: 8)
!160046 = !DILocation(line: 3831, column: 9, scope: !160047, inlinedAt: !160048)
!160047 = !DILexicalBlockFile(scope: !159914, file: !362, discriminator: 8)
!160048 = !DILocation(line: 313, column: 75, scope: !160035)
!160049 = !DILocation(line: 614, column: 9, scope: !159917, inlinedAt: !160050)
!160050 = !DILocation(line: 609, column: 14, scope: !160051, inlinedAt: !160052)
!160051 = !DILexicalBlockFile(scope: !159920, file: !1901, discriminator: 8)
!160052 = !DILocation(line: 296, column: 20, scope: !160053, inlinedAt: !160054)
!160053 = !DILexicalBlockFile(scope: !159923, file: !1901, discriminator: 8)
!160054 = !DILocation(line: 1942, column: 18, scope: !160055, inlinedAt: !160056)
!160055 = !DILexicalBlockFile(scope: !159926, file: !362, discriminator: 8)
!160056 = !DILocation(line: 1841, column: 76, scope: !160057, inlinedAt: !160058)
!160057 = !DILexicalBlockFile(scope: !159929, file: !362, discriminator: 8)
!160058 = !DILocation(line: 3756, column: 14, scope: !160059, inlinedAt: !160060)
!160059 = !DILexicalBlockFile(scope: !159932, file: !362, discriminator: 8)
!160060 = !DILocation(line: 3831, column: 23, scope: !160047, inlinedAt: !160048)
!160061 = !DILocation(line: 272, column: 9, scope: !159908, inlinedAt: !160044)
!160062 = !DILocation(line: 313, column: 69, scope: !160035)
!160063 = !DILocation(line: 313, column: 49, scope: !160035)
!160064 = !DILocation(line: 311, column: 49, scope: !160035)
!160065 = !DILocation(line: 312, column: 49, scope: !160035)
!160066 = !DILocation(line: 0, scope: !160035)
!160067 = !DILocation(line: 272, column: 10, scope: !159908, inlinedAt: !160068)
!160068 = !DILocation(line: 19, column: 15, scope: !160069, inlinedAt: !160070)
!160069 = !DILexicalBlockFile(scope: !159911, file: !1681, discriminator: 10)
!160070 = !DILocation(line: 3831, column: 9, scope: !160041, inlinedAt: !160042)
!160071 = distinct !{!160071, !153454}
!160072 = !DILocation(line: 614, column: 9, scope: !159917, inlinedAt: !160073)
!160073 = !DILocation(line: 609, column: 14, scope: !160074, inlinedAt: !160075)
end_hunk_21
