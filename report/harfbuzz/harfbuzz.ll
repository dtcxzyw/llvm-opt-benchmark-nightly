Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t:bb.a
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 3 uses
  %i.ik = load ptr, ptr %i.cs, align 8, !tbaa !895 ; 2 uses
  %i.il = load ptr, ptr %i.de, align 8, !tbaa !900 ; 3 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in                    ; 2 uses
  %i.ip = add nsw i64 %i.io, %i.ij
  %i.iq = and i64 %i.ip, 4294967295               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ir = call noalias noundef ptr @malloc(i64 noundef %i.iq) #61 ; 5 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not7.i.i.i.i.i, label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i, label %bb.aj, !prof !265

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i34.i.i.i = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i.i.i34.i.i.i, label %_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i, label %bb.ak, !prof !265

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr readonly align 1 %i.ig, i64 %i.ij, i1 false), !alias.scope !4396
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i:               ; preds = %bb.ak, %bb.aj
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i8.i.i.i.i.i, label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i, label %bb.al, !prof !265

bb.al:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr readonly align 1 %i.il, i64 %i.io, i1 false), !alias.scope !4397
  br label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i

_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i: ; preds = %bb.al, %_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i, %bb.ai, %bb.ah, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i.i, %bb.ae, %bb.ad, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i.i.i.i
  %i.it = phi ptr [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i.i ], [ %i.ir, %bb.al ], [ null, %bb.ai ], [ null, %bb.ah ], [ %i.ir, %_ZL9hb_memcpyPvPKvm.exit.i.i.i.i.i ], [ null, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i.i.i.i ], [ null, %bb.ad ], [ null, %bb.ae ]
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %28) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #59
  br label %_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj.exit.i.i

_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj.exit.i.i: ; preds = %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.it, %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i.i.i ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj.exit.i

bb.am:                                            ; preds = %bb.g
  %i.iu = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %i.iu, label %default.unreachable96.i.i [
    i32 4, label %bb.an
    i32 5, label %bb.ca
    i32 6, label %bb.dj
  ]

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #59
  store i32 0, ptr %i.p, align 4, !tbaa !322
  %i.iv = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.iw = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !639 ; 2 uses
  %.not.i9.i.i12.i.i = icmp eq ptr %i.iy, null
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !278
  br i1 %.not.i9.i.i12.i.i, label %hb_font_get_glyph.exit.i13.i.i, label %bb.ao

.lr.ph.i.i.i:                                     ; preds = %hb_font_get_glyph.exit.i13.i.i
  %i.jb = load i32, ptr %i.p, align 4, !tbaa !322
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = call i16 @llvm.bswap.i16(i16 %i.jc)
  store i16 %i.jd, ptr %18, align 2, !tbaa !278
  store i32 0, ptr %i.n, align 4, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #59
  store i32 0, ptr %i.q, align 4, !tbaa !322
  %i.je = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.jf = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !639 ; 2 uses
  %.not.i9.i74.i.i.i = icmp eq ptr %i.jh, null
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !278
  br i1 %.not.i9.i74.i.i.i, label %hb_font_get_glyph.exit75.i.i.i, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !945
  br label %hb_font_get_glyph.exit.i13.i.i

hb_font_get_glyph.exit.i13.i.i:                   ; preds = %bb.ao, %bb.an
  %i.jm = phi ptr [ %i.jl, %bb.ao ], [ null, %bb.an ]
  %i.jn = call noundef i32 %i.ja(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.iw, i32 noundef 65247, ptr noundef nonnull %i.p, ptr noundef %i.jm) #59, !inline_history !4356
  %.not73.not.i.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not73.not.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %hb_font_get_glyph.exit.i13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  br label %_ZL42arabic_fallback_synthesize_lookup_ligatureIA1_16ligature_3_set_tEPN2OT6Layout9GSUB_impl11SubstLookupEPK18hb_ot_shape_plan_tP9hb_font_tRKT_j.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.thread14.2.i.i.i, %hb_font_get_glyph.exit75.2.i.i.i
  %.5.2.i.i.i = phi i32 [ %.5.1.i.i.i, %hb_font_get_glyph.exit75.2.i.i.i ], [ %.26130.lcssa.2.i.i.i, %.thread14.2.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  %.not.i.i.i = icmp eq i32 %i.mp, 0
  br i1 %.not.i.i.i, label %_ZL42arabic_fallback_synthesize_lookup_ligatureIA1_16ligature_3_set_tEPN2OT6Layout9GSUB_impl11SubstLookupEPK18hb_ot_shape_plan_tP9hb_font_tRKT_j.exit.i.i, label %bb.bi

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !945
  br label %hb_font_get_glyph.exit75.i.i.i

hb_font_get_glyph.exit75.i.i.i:                   ; preds = %bb.ap, %.lr.ph.i.i.i
  %i.jq = phi ptr [ %i.jp, %bb.ap ], [ null, %.lr.ph.i.i.i ]
  %i.jr = call noundef i32 %i.jj(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.jf, i32 noundef 64904, ptr noundef nonnull %i.q, ptr noundef %i.jq) #59, !inline_history !4356
  %.not70.i.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not70.i.i.i, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %hb_font_get_glyph.exit75.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.js = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !278
  %i.jv = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.i14.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i14.i.i, label %hb_font_get_nominal_glyph.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.i.i.i

hb_font_get_nominal_glyph.exit.i.i.i:             ; preds = %bb.ar, %bb.aq
  %i.ka = phi ptr [ %i.jz, %bb.ar ], [ null, %bb.aq ]
  %i.kb = call noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.jv, i32 noundef 65252, ptr noundef nonnull %i.r, ptr noundef %i.ka) #59, !inline_history !4357
  %.not72.i.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not72.i.i.i, label %.thread14.i.i.i, label %bb.as

.thread14.i.i.i:                                  ; preds = %hb_font_get_nominal_glyph.exit.1.i.i.i, %hb_font_get_nominal_glyph.exit.i.i.i
  %.26130.lcssa.i.i.i = phi i32 [ 1, %hb_font_get_nominal_glyph.exit.1.i.i.i ], [ 0, %hb_font_get_nominal_glyph.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  br label %bb.av

bb.as:                                            ; preds = %hb_font_get_nominal_glyph.exit.i.i.i
  %i.kc = load i32, ptr %i.r, align 4, !tbaa !322
  %i.kd = trunc i32 %i.kc to i16
  %i.ke = call i16 @llvm.bswap.i16(i16 %i.kd)
  store i16 %i.ke, ptr %20, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.kf = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !278
  %i.ki = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.1.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.1.i.i.i, label %hb_font_get_nominal_glyph.exit.1.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.1.i.i.i

hb_font_get_nominal_glyph.exit.1.i.i.i:           ; preds = %bb.at, %bb.as
  %i.kn = phi ptr [ %i.km, %bb.at ], [ null, %bb.as ]
  %i.ko = call noundef i32 %i.kh(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.ki, i32 noundef 65188, ptr noundef nonnull %i.r, ptr noundef %i.kn) #59, !inline_history !4357
  %.not72.1.i.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not72.1.i.i.i, label %.thread14.i.i.i, label %bb.au

bb.au:                                            ; preds = %hb_font_get_nominal_glyph.exit.1.i.i.i
  %i.kp = load i32, ptr %i.r, align 4, !tbaa !322
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = call i16 @llvm.bswap.i16(i16 %i.kq)
  store i16 %i.kr, ptr %i.bv, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  store i32 3, ptr %i.o, align 4, !tbaa !322
  %i.ks = load i32, ptr %i.q, align 4, !tbaa !322
  %i.kt = trunc i32 %i.ks to i16
  %i.ku = call i16 @llvm.bswap.i16(i16 %i.kt)
  store i16 %i.ku, ptr %19, align 2, !tbaa !278
  store i32 1, ptr %i.n, align 4, !tbaa !322
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread14.i.i.i, %hb_font_get_glyph.exit75.i.i.i
  %i.kv = phi i32 [ 0, %hb_font_get_glyph.exit75.i.i.i ], [ 1, %bb.au ], [ 0, %.thread14.i.i.i ] ; 4 uses
  %.5.i.i.i = phi i32 [ 0, %hb_font_get_glyph.exit75.i.i.i ], [ 2, %bb.au ], [ %.26130.lcssa.i.i.i, %.thread14.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #59
  store i32 0, ptr %i.q, align 4, !tbaa !322
  %i.kw = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.kx = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !639 ; 2 uses
  %.not.i9.i74.1.i.i.i = icmp eq ptr %i.kz, null
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !278
  br i1 %.not.i9.i74.1.i.i.i, label %hb_font_get_glyph.exit75.1.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !945
  br label %hb_font_get_glyph.exit75.1.i.i.i

hb_font_get_glyph.exit75.1.i.i.i:                 ; preds = %bb.aw, %bb.av
  %i.le = phi ptr [ %i.ld, %bb.aw ], [ null, %bb.av ]
  %i.lf = call noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.kx, i32 noundef 61953, ptr noundef nonnull %i.q, ptr noundef %i.le) #59, !inline_history !4356
  %.not70.1.i.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not70.1.i.i.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %hb_font_get_glyph.exit75.1.i.i.i
  %30 = zext nneg i32 %.5.i.i.i to i64            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.lg = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !278
  %i.lj = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.149.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.149.i.i.i, label %hb_font_get_nominal_glyph.exit.151.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.151.i.i.i

hb_font_get_nominal_glyph.exit.151.i.i.i:         ; preds = %bb.ay, %bb.ax
  %i.lo = phi ptr [ %i.ln, %bb.ay ], [ null, %bb.ax ]
  %i.lp = call noundef i32 %i.li(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.lj, i32 noundef 65248, ptr noundef nonnull %i.r, ptr noundef %i.lo) #59, !inline_history !4357
  %.not72.150.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not72.150.i.i.i, label %.thread14.1.i.i.i, label %bb.az

bb.az:                                            ; preds = %hb_font_get_nominal_glyph.exit.151.i.i.i
  %i.lq = load i32, ptr %i.r, align 4, !tbaa !322
  %i.lr = trunc i32 %i.lq to i16
  %indvars.iv.next42.152.i.i.i = add nuw nsw i64 %30, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %30
  %i.lt = call i16 @llvm.bswap.i16(i16 %i.lr)
  store i16 %i.lt, ptr %i.ls, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  %31 = trunc nuw nsw i64 %indvars.iv.next42.152.i.i.i to i32
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.lu = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !278
  %i.lx = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.1.1.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.1.1.i.i.i, label %hb_font_get_nominal_glyph.exit.1.1.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.1.1.i.i.i

hb_font_get_nominal_glyph.exit.1.1.i.i.i:         ; preds = %bb.ba, %bb.az
  %i.mc = phi ptr [ %i.mb, %bb.ba ], [ null, %bb.az ]
  %i.md = call noundef i32 %i.lw(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.lx, i32 noundef 65258, ptr noundef nonnull %i.r, ptr noundef %i.mc) #59, !inline_history !4357
  %.not72.1.1.i.i.i = icmp eq i32 %i.md, 0
  br i1 %.not72.1.1.i.i.i, label %.thread14.1.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %hb_font_get_nominal_glyph.exit.1.1.i.i.i
  %i.me = load i32, ptr %i.r, align 4, !tbaa !322
  %i.mf = trunc i32 %i.me to i16
  %indvars.iv.next42.1.1.i.i.i = add nuw nsw i32 %.5.i.i.i, 2
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %indvars.iv.next42.152.i.i.i
  %i.mh = call i16 @llvm.bswap.i16(i16 %i.mf)
  store i16 %i.mh, ptr %i.mg, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  %i.mi = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.mi
  store i32 3, ptr %i.mj, align 4, !tbaa !322
  %i.mk = load i32, ptr %i.q, align 4, !tbaa !322
  %i.ml = trunc i32 %i.mk to i16
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.mi
  %i.mn = call i16 @llvm.bswap.i16(i16 %i.ml)
  store i16 %i.mn, ptr %i.mm, align 2, !tbaa !278
  %i.mo = add nuw nsw i32 %i.kv, 1                ; 2 uses
  store i32 %i.mo, ptr %i.n, align 4, !tbaa !322
  br label %bb.bc

.thread14.1.i.i.i:                                ; preds = %hb_font_get_nominal_glyph.exit.1.1.i.i.i, %hb_font_get_nominal_glyph.exit.151.i.i.i
  %.26130.lcssa.1.i.i.i = phi i32 [ %31, %hb_font_get_nominal_glyph.exit.1.1.i.i.i ], [ %.5.i.i.i, %hb_font_get_nominal_glyph.exit.151.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  br label %bb.bc

bb.bc:                                            ; preds = %.thread14.1.i.i.i, %bb.bb, %hb_font_get_glyph.exit75.1.i.i.i
  %i.mp = phi i32 [ %i.kv, %hb_font_get_glyph.exit75.1.i.i.i ], [ %i.mo, %bb.bb ], [ %i.kv, %.thread14.1.i.i.i ] ; 4 uses
  %.5.1.i.i.i = phi i32 [ %.5.i.i.i, %hb_font_get_glyph.exit75.1.i.i.i ], [ %indvars.iv.next42.1.1.i.i.i, %bb.bb ], [ %.26130.lcssa.1.i.i.i, %.thread14.1.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #59
  store i32 0, ptr %i.q, align 4, !tbaa !322
  %i.mq = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.mr = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !639 ; 2 uses
  %.not.i9.i74.2.i.i.i = icmp eq ptr %i.mt, null
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !278
  br i1 %.not.i9.i74.2.i.i.i, label %hb_font_get_glyph.exit75.2.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !945
  br label %hb_font_get_glyph.exit75.2.i.i.i

hb_font_get_glyph.exit75.2.i.i.i:                 ; preds = %bb.bd, %bb.bc
  %i.my = phi ptr [ %i.mx, %bb.bd ], [ null, %bb.bc ]
  %i.mz = call noundef i32 %i.mv(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.mr, i32 noundef 61969, ptr noundef nonnull %i.q, ptr noundef %i.my) #59, !inline_history !4356
  %.not70.2.i.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not70.2.i.i.i, label %._crit_edge.i.i.i, label %bb.be

bb.be:                                            ; preds = %hb_font_get_glyph.exit75.2.i.i.i
  %32 = zext nneg i32 %.5.1.i.i.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.na = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !278
  %i.nd = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.2.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.2.i.i.i, label %hb_font_get_nominal_glyph.exit.2.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.2.i.i.i

hb_font_get_nominal_glyph.exit.2.i.i.i:           ; preds = %bb.bf, %bb.be
  %i.ni = phi ptr [ %i.nh, %bb.bf ], [ null, %bb.be ]
  %i.nj = call noundef i32 %i.nc(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.nd, i32 noundef 65252, ptr noundef nonnull %i.r, ptr noundef %i.ni) #59, !inline_history !4357
  %.not72.2.i.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not72.2.i.i.i, label %.thread14.2.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %hb_font_get_nominal_glyph.exit.2.i.i.i
  %i.nk = load i32, ptr %i.r, align 4, !tbaa !322
  %i.nl = trunc i32 %i.nk to i16
  %indvars.iv.next42.2.i.i.i = add nuw nsw i64 %32, 1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %32
  %i.nn = call i16 @llvm.bswap.i16(i16 %i.nl)
  store i16 %i.nn, ptr %i.nm, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #59
  %33 = trunc nuw nsw i64 %indvars.iv.next42.2.i.i.i to i32
  store i32 0, ptr %i.r, align 4, !tbaa !322
  %i.no = load ptr, ptr %i.ab, align 8, !tbaa !636 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 48
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !278
  %i.nr = load ptr, ptr %i.ac, align 8, !tbaa !637
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !639 ; 2 uses
  %.not.i.i.1.2.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.1.2.i.i.i, label %hb_font_get_nominal_glyph.exit.1.2.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !945
  br label %hb_font_get_nominal_glyph.exit.1.2.i.i.i

hb_font_get_nominal_glyph.exit.1.2.i.i.i:         ; preds = %bb.bh, %bb.bg
  %i.nw = phi ptr [ %i.nv, %bb.bh ], [ null, %bb.bg ]
  %i.nx = call noundef i32 %i.nq(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.nr, i32 noundef 65184, ptr noundef nonnull %i.r, ptr noundef %i.nw) #59, !inline_history !4357
  %.not72.1.2.i.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not72.1.2.i.i.i, label %.thread14.2.i.i.i, label %._crit_edge.thread83.i.i.i

._crit_edge.thread83.i.i.i:                       ; preds = %hb_font_get_nominal_glyph.exit.1.2.i.i.i
  %i.ny = load i32, ptr %i.r, align 4, !tbaa !322
  %i.nz = trunc i32 %i.ny to i16
  %indvars.iv.next42.1.2.i.i.i = add nuw nsw i32 %.5.1.i.i.i, 2
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %indvars.iv.next42.2.i.i.i
  %i.ob = call i16 @llvm.bswap.i16(i16 %i.nz)
  store i16 %i.ob, ptr %i.oa, align 2, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  %i.oc = zext nneg i32 %i.mp to i64              ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.oc
  store i32 3, ptr %i.od, align 4, !tbaa !322
  %i.oe = load i32, ptr %i.q, align 4, !tbaa !322
  %i.of = trunc i32 %i.oe to i16
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.oc
  %i.oh = call i16 @llvm.bswap.i16(i16 %i.of)
  store i16 %i.oh, ptr %i.og, align 2, !tbaa !278
  %i.oi = add nuw nsw i32 %i.mp, 1                ; 2 uses
  store i32 %i.oi, ptr %i.n, align 4, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  br label %bb.bi

.thread14.2.i.i.i:                                ; preds = %hb_font_get_nominal_glyph.exit.1.2.i.i.i, %hb_font_get_nominal_glyph.exit.2.i.i.i
  %.26130.lcssa.2.i.i.i = phi i32 [ %33, %hb_font_get_nominal_glyph.exit.1.2.i.i.i ], [ %.5.1.i.i.i, %hb_font_get_nominal_glyph.exit.2.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #59
  br label %._crit_edge.i.i.i

bb.bi:                                            ; preds = %._crit_edge.thread83.i.i.i, %._crit_edge.i.i.i
  %.in.i.i.i = phi i32 [ %indvars.iv.next42.1.2.i.i.i, %._crit_edge.thread83.i.i.i ], [ %.5.2.i.i.i, %._crit_edge.i.i.i ]
  %.365.287.i.i.i = phi i32 [ %i.oi, %._crit_edge.thread83.i.i.i ], [ %i.mp, %._crit_edge.i.i.i ]
  %i.oj = zext nneg i32 %.in.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #59
  store ptr %i.s, ptr %21, align 8, !tbaa !894
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !895
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.ca monotonic, align 8
  store atomic i8 1, ptr %i.cb monotonic, align 4
  store atomic ptr null, ptr %i.cc monotonic, align 8
  store i8 1, ptr %i.cd, align 8, !tbaa !896
  store ptr null, ptr %i.cf, align 8, !tbaa !897
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ce, i8 0, i64 18, i1 false)
  store i32 0, ptr %i.cg, align 4, !tbaa !898
  store ptr %i.s, ptr %i.ch, align 8, !tbaa !899
  store ptr %i.bx, ptr %i.ci, align 8, !tbaa !900
  store ptr null, ptr %i.cj, align 8, !tbaa !901
  store i32 0, ptr %i.ck, align 8, !tbaa !902
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %21)
  %i.ok = load i32, ptr %i.cl, align 4, !tbaa !903 ; 5 uses
  %i.ol = load i32, ptr %i.bz, align 8, !tbaa !904 ; 6 uses
  %.not.i.i.i.i15.i.i = icmp slt i32 %i.ok, %i.ol
  br i1 %.not.i.i.i.i15.i.i, label %.critedge.i.i.i.i18.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.om = add i32 %i.ok, 1                        ; 2 uses
  %i.on = icmp slt i32 %i.ol, 0
  br i1 %i.on, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread17.i.i.i, label %bb.bk, !prof !265

bb.bk:                                            ; preds = %bb.bj
  %.not.i103.i.i.i = icmp ugt i32 %i.om, %i.ol
  br i1 %.not.i103.i.i.i, label %.preheader.i104.i.i.i, label %..critedge_crit_edge.i.i.i.i16.i.i, !prof !265

.preheader.i104.i.i.i:                            ; preds = %bb.bk, %.preheader.i104.i.i.i
  %.043.i.i31.i.i = phi i32 [ %i.oq, %.preheader.i104.i.i.i ], [ %i.ol, %bb.bk ] ; 2 uses
  %i.oo = lshr i32 %.043.i.i31.i.i, 1
  %i.op = add i32 %.043.i.i31.i.i, 8
  %i.oq = add i32 %i.op, %i.oo                    ; 7 uses
  %i.or = icmp ugt i32 %i.om, %i.oq
  br i1 %i.or, label %.preheader.i104.i.i.i, label %.thread.i.i32.i.i, !llvm.loop !45

.thread.i.i32.i.i:                                ; preds = %.preheader.i104.i.i.i
  %i.os = icmp ugt i32 %i.oq, 536870911
  br i1 %i.os, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread20.i.i.i, label %bb.bl, !prof !265

bb.bl:                                            ; preds = %.thread.i.i32.i.i
  %.not50.i.i33.i.i = icmp eq i32 %i.ol, 0
  %i.ot = load ptr, ptr %i.cm, align 8, !tbaa !905 ; 3 uses
  br i1 %.not50.i.i33.i.i, label %bb.bm, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i

bb.bm:                                            ; preds = %bb.bl
  %.not9.i.i.i.i43.i.i = icmp eq ptr %i.ot, null
  br i1 %.not9.i.i.i.i43.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ou = shl nuw i32 %i.oq, 3
  %i.ov = zext i32 %i.ou to i64
  %i.ow = call noalias noundef ptr @malloc(i64 noundef %i.ov) #61 ; 4 uses
  %.not10.i.i.i.i44.i.i = icmp eq ptr %i.ow, null
  br i1 %.not10.i.i.i.i44.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread20.i.i.i, label %bb.bo, !prof !265

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i.i.i45.i.i = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i.i.i.i45.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36.i.i, label %bb.bp, !prof !265

bb.bp:                                            ; preds = %bb.bo
  %i.ox = zext i32 %i.ok to i64
  %i.oy = shl nuw nsw i64 %i.ox, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ow, ptr nonnull readonly align 1 %i.ot, i64 %i.oy, i1 false), !alias.scope !4398
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i: ; preds = %bb.bm, %bb.bl
  %i.oz = phi ptr [ null, %bb.bm ], [ %i.ot, %bb.bl ]
  %i.pa = shl nuw i32 %i.oq, 3
  %i.pb = zext i32 %i.pa to i64
  %i.pc = call noalias noundef ptr @realloc(ptr noundef %i.oz, i64 noundef %i.pb) #62 ; 2 uses
  %.not22.i.i35.i.i = icmp eq ptr %i.pc, null
  br i1 %.not22.i.i35.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54.i.i38.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36.i.i, !prof !317

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54.i.i38.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i
  %.pre.i39.i.i = load i32, ptr %i.bz, align 8, !tbaa !904 ; 2 uses
  %.not23.i.i40.i.i = icmp ugt i32 %i.oq, %.pre.i39.i.i
  br i1 %.not23.i.i40.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread20.i.i.i, label %..critedge_crit_edge.i.i.i.i16.i.i, !prof !463

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread20.i.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54.i.i38.i.i, %bb.bn, %.thread.i.i32.i.i
  %.sink.i.ph.in.i41.i.i = phi i32 [ %i.ol, %.thread.i.i32.i.i ], [ %.pre.i39.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54.i.i38.i.i ], [ 0, %bb.bn ]
  %.sink.i.ph.i42.i.i = xor i32 %.sink.i.ph.in.i41.i.i, -1
  store i32 %.sink.i.ph.i42.i.i, ptr %i.bz, align 8, !tbaa !904
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread17.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i, %bb.bp, %bb.bo
  %.1.i.i42.i.i37.i.i = phi ptr [ %i.pc, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i34.i.i ], [ %i.ow, %bb.bp ], [ %i.ow, %bb.bo ]
  store ptr %.1.i.i42.i.i37.i.i, ptr %i.cm, align 8, !tbaa !905
  store i32 %i.oq, ptr %i.bz, align 8, !tbaa !904
  br label %..critedge_crit_edge.i.i.i.i16.i.i

..critedge_crit_edge.i.i.i.i16.i.i:               ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54.i.i38.i.i, %bb.bk
  %.pre.i.i.i.i17.i.i = load i32, ptr %i.cl, align 4, !tbaa !903
  br label %.critedge.i.i.i.i18.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread17.i.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread20.i.i.i, %bb.bj
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i19.i.i

.critedge.i.i.i.i18.i.i:                          ; preds = %..critedge_crit_edge.i.i.i.i16.i.i, %bb.bi
  %i.pd = phi i32 [ %.pre.i.i.i.i17.i.i, %..critedge_crit_edge.i.i.i.i16.i.i ], [ %i.ok, %bb.bi ] ; 2 uses
  %i.pe = load ptr, ptr %i.cm, align 8, !tbaa !905
  %i.pf = add i32 %i.pd, 1
  store i32 %i.pf, ptr %i.cl, align 4, !tbaa !903
  %i.pg = zext i32 %i.pd to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pg
  store ptr null, ptr %i.ph, align 8, !tbaa !906
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i19.i.i

_ZN22hb_serialize_context_tC2EPvm.exit.i19.i.i:   ; preds = %.critedge.i.i.i.i18.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread17.i.i.i
  store atomic i32 1, ptr %i.ca monotonic, align 8
  store atomic i8 1, ptr %i.cb monotonic, align 4
  store atomic ptr null, ptr %i.cc monotonic, align 8
  store i8 1, ptr %i.cd, align 8, !tbaa !896
  store ptr null, ptr %i.cf, align 8, !tbaa !897
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ce, i8 0, i64 18, i1 false)
  %i.pi = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %21)
  store ptr %i.n, ptr %22, align 8
  store i64 1, ptr %i.cn, align 8
  %.sroa.2.8.insert.ext.i83.i.i.i = zext nneg i32 %.365.287.i.i.i to i64 ; 2 uses
  store ptr %19, ptr %23, align 8
  store i64 %.sroa.2.8.insert.ext.i83.i.i.i, ptr %i.co, align 8
  store ptr %i.o, ptr %24, align 8
  store i64 %.sroa.2.8.insert.ext.i83.i.i.i, ptr %i.cp, align 8
  store ptr %20, ptr %25, align 8
  store i64 %i.oj, ptr %i.cq, align 8
  %i.pj = call noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl11SubstLookup18serialize_ligatureEP22hb_serialize_context_tj17hb_sorted_array_tIKNS_11HBGlyphID16EE10hb_array_tIKjES9_IS7_ESB_SC_(ptr noundef nonnull align 1 dereferenceable(8) %i.pi, ptr noundef nonnull %21, i32 noundef 8, ptr nonnull %18, i64 1, ptr noundef nonnull byval(%struct.hb_array_t.1607) align 8 %22, ptr noundef nonnull byval(%struct.hb_array_t.537) align 8 %23, ptr noundef nonnull byval(%struct.hb_array_t.1607) align 8 %24, ptr noundef nonnull byval(%struct.hb_array_t.537) align 8 %25)
  %i.pk = load i32, ptr %i.cg, align 4, !tbaa !898 ; 4 uses
  %i.pl = load i32, ptr %i.bz, align 8, !tbaa !904
  %i.pm = icmp sgt i32 %i.pl, -1
  %.not.i.i.i.i.i.i20.i.i = icmp ne i32 %i.pk, 0  ; 2 uses
  %i.pn = load i8, ptr %i.cd, align 8, !range !378
  %i.po = trunc nuw i8 %i.pn to i1
  %i.pp = select i1 %i.pm, i1 %i.po, i1 false
  %or.cond6.i.i21.i.i = select i1 %.not.i.i.i.i.i.i20.i.i, i1 true, i1 %i.pp
  br i1 %or.cond6.i.i21.i.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i24.i.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i.i22.i.i

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i24.i.i: ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i19.i.i
  %i.pq = load ptr, ptr %i.cr, align 8, !tbaa !911
  %.not.i100.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not.i100.i.i.i, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.i25.i.i, label %bb.bq, !prof !265

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i.i22.i.i: ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i19.i.i
  store i32 1, ptr %i.cg, align 4, !tbaa !898
  br label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i23.i.i

bb.bq:                                            ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i24.i.i
  br i1 %.not.i.i.i.i.i.i20.i.i, label %bb.br, label %bb.bt, !prof !316

bb.br:                                            ; preds = %bb.bq
  %i.pr = and i32 %i.pk, 2
  %.not8.i.i30.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not8.i.i30.i.i, label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i23.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ps = or i32 %i.pk, 1
  store i32 %i.ps, ptr %i.cg, align 4, !tbaa !898
  br label %_ZNK22hb_serialize_context_t4copyIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v.exit.i23.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.pt = load i32, ptr %i.cl, align 4, !tbaa !916
  %i.pu = icmp ult i32 %i.pt, 2
  br i1 %i.pu, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.i25.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pv = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %21, i1 noundef zeroext false) ; 0 uses
  call void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %21)
  %.pre54.i.i.i = load i32, ptr %i.cg, align 4
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit.i25.i.i

_ZN22hb_serialize_context_t13end_serializeEv.exit.i25.i.i: ; preds = %bb.bu, %bb.bt, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i24.i.i
  %i.pw = phi i32 [ %i.pk, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i24.i.i ], [ %.pre54.i.i.i, %bb.bu ], [ 0, %bb.bt ]
end_hunk_0
begin_hunk_1_@_ZN12hb_bit_set_t16set_sorted_arrayIjEEbbPKT_jj:bb.a
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.h ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.u = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.v = lshr i32 %i.u, 1                         ; 4 uses
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1233 ; 2 uses
  %i.aa = icmp slt i32 %i.k, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nsw i32 %i.v, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.k, %i.z
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %i.v, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i.i = phi i32 [ %i.ac, %bb.g ], [ %.0212.i.i.i.i.i, %bb.e ] ; 3 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.g ], [ %i.ab, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !134

.loopexit.i:                                      ; preds = %bb.h, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.h ] ; 3 uses
  br i1 %1, label %bb.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

bb.i:                                             ; preds = %.loopexit.i
  %i.ad = add i32 %i.s, 1
  %i.ae = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ad, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ae, label %bb.j, label %_ZN12hb_bit_set_t8page_forEjb.exit, !prof !266

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1234
  %i.ag = zext i32 %i.s to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i8 0, i64 64, i1 false), !tbaa !1238
  store i32 0, ptr %i.ah, align 8, !tbaa !1505
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !1230
  %i.ak = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.f, align 4, !tbaa !1231
  %i.ao = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = shl i32 %i.ap, 3
  %i.ar = zext i32 %i.aq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.al, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !1230 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ak
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.ag, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.k to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.at, align 4, !tbaa !322
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.f, %bb.j
  %.pre-phi.i = phi i64 [ %i.ak, %bb.j ], [ %i.w, %bb.f ]
  %i.au = phi ptr [ %i.as, %bb.j ], [ %i.o, %bb.f ]
  %storemerge.i.i.ph.sink.i.i17.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i, %bb.j ], [ %i.v, %bb.f ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i, ptr %i.e monotonic, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.pre-phi.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i
  %.sink29.i = phi ptr [ %i.av, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.q, %bb.d ]
  %.sink.i = load ptr, ptr %i.i, align 8, !tbaa !1234
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink29.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1236
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ay
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %bb.i, %.sink.split.i
  %.2.i = phi ptr [ %i.az, %.sink.split.i ], [ null, %bb.i ] ; 2 uses
  %.not51 = icmp eq ptr %.2.i, null
  %spec.select = select i1 %1, i1 %.not51, i1 false
  br i1 %spec.select, label %.critedge55, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !1708

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %.loopexit.i, %_ZN12hb_bit_set_t8page_forEjb.exit
  %.2.i62 = phi ptr [ %.2.i, %_ZN12hb_bit_set_t8page_forEjb.exit ], [ null, %.loopexit.i ]
  %.2.i62.fr = freeze ptr %.2.i62                 ; 3 uses
  %i.ba = and i32 %.03076, -512
  %i.bb = add i32 %i.ba, 512                      ; 2 uses
  %i.bc = icmp ne ptr %.2.i62.fr, null
  %or.cond = or i1 %1, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.2.i62.fr, i64 8
  br i1 %or.cond, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us: ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread, %bb.l
  %.144.us = phi ptr [ %i.bf, %bb.l ], [ %.04374, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.140.us = phi i32 [ %i.be, %bb.l ], [ %.03975, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.131.us = phi i32 [ %i.bg, %bb.l ], [ %.03076, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ] ; 3 uses
  %.129.us = phi i32 [ %.131.us, %bb.l ], [ %.02877, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.not63.us.not = icmp uge i32 %.131.us, %.129.us ; 3 uses
  br i1 %.not63.us.not, label %bb.k, label %.critedge55

bb.k:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us
  %i.be = add i32 %.140.us, -1                    ; 3 uses
  %.not53.us = icmp eq i32 %i.be, 0
  br i1 %.not53.us, label %.critedge55, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.144.us, i64 %i.j ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !322 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, %i.bb
  br i1 %i.bh, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us, label %.critedge, !llvm.loop !6123

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split:  ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread, %bb.p
  %.144 = phi ptr [ %i.bs, %bb.p ], [ %.04374, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.140 = phi i32 [ %i.br, %bb.p ], [ %.03975, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.131 = phi i32 [ %i.bt, %bb.p ], [ %.03076, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ] ; 6 uses
  %.129 = phi i32 [ %.131, %bb.p ], [ %.02877, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %.not63.not = icmp uge i32 %.131, %.129         ; 3 uses
  br i1 %.not63.not, label %bb.m, label %.critedge55

bb.m:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split
  %.not52.not = icmp eq i32 %.131, -1
  br i1 %.not52.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = and i32 %.131, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = lshr i32 %.131, 6
  %i.bm = and i32 %i.bl, 7
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1238
  %i.bq = or i64 %i.bp, %i.bk
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !1238
  store i32 -1, ptr %.2.i62.fr, align 8, !tbaa !1505
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = add i32 %.140, -1                       ; 3 uses
  %.not53 = icmp eq i32 %i.br, 0
  br i1 %.not53, label %.critedge55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.144, i64 %i.j ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !322 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, %i.bb
  br i1 %i.bu, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, label %.critedge, !llvm.loop !6123

.critedge:                                        ; preds = %bb.l, %bb.p
  %.us-phi = phi ptr [ %i.bs, %bb.p ], [ %i.bf, %bb.l ]
  %.us-phi71 = phi i32 [ %i.br, %bb.p ], [ %i.be, %bb.l ]
  %.us-phi72 = phi i32 [ %.131, %bb.p ], [ %.131.us, %bb.l ]
  %.us-phi73 = phi i32 [ %i.bt, %bb.p ], [ %i.bg, %bb.l ]
  br label %bb.c, !llvm.loop !6124

.critedge55:                                      ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.k, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us, %bb.o, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, %bb.a
  %.438 = phi i1 [ %.not63.not, %bb.o ], [ true, %bb.a ], [ %.not63.us.not, %bb.k ], [ %.not63.not, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ], [ %.not63.us.not, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us ], [ false, %_ZN12hb_bit_set_t8page_forEjb.exit ]
  ret i1 %.438
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_bit_set_t8is_equalERKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !547  ; 2 uses
  %.not105 = icmp eq i32 %i.b, -1
  br i1 %.not105, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !547  ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  %.not = icmp eq i32 %i.b, %i.d
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.c, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !544  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !544  ; 5 uses
  %i.j = icmp ne i32 %i.g, 0
  %i.k = icmp ne i32 %i.i, 0
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph.lr.ph, label %.preheader106

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1234
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1230
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = zext i32 %i.i to i64
  %i.s = zext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %indvars.iv152 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next153, %.outer.backedge ] ; 3 uses
  %.0.ph126 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.0.ph.be, %.outer.backedge ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv152 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1236
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %i.w ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %3 = zext i32 %.0.ph126 to i64
  br label %bb.d

.preheader106.loopexit:                           ; preds = %bb.g
  %i.ag = trunc nuw i64 %indvars.iv152 to i32
  %4 = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader106

.preheader106.loopexit140:                        ; preds = %.outer.backedge
  %i.ah = trunc nuw i64 %indvars.iv.next153 to i32
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.loopexit140, %.preheader106.loopexit, %bb.c
  %.030.ph.lcssa120 = phi i32 [ %i.ag, %.preheader106.loopexit ], [ 0, %bb.c ], [ %i.ah, %.preheader106.loopexit140 ] ; 2 uses
  %.0.lcssa = phi i32 [ %4, %.preheader106.loopexit ], [ 0, %bb.c ], [ %.0.ph.be, %.preheader106.loopexit140 ] ; 2 uses
  %i.ai = icmp ult i32 %.030.ph.lcssa120, %i.g
  br i1 %i.ai, label %.lr.ph130, label %.preheader

.lr.ph130:                                        ; preds = %.preheader106
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1234
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1230
  %i.an = zext i32 %.030.ph.lcssa120 to i64
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !1505
  switch i32 %i.ao, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93 [
    i32 -1, label %bb.e
    i32 0, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !1238
  %.not.not.i.i = icmp ne i64 %i.ap, 0
  %i.aq = load i64, ptr %i.z, align 8
  %.not.1.not.i.i = icmp ne i64 %i.aq, 0
  %or.cond.not27.i.i = select i1 %.not.not.i.i, i1 true, i1 %.not.1.not.i.i
  %i.ar = load i64, ptr %i.aa, align 8
  %.not.2.not.i.i = icmp ne i64 %i.ar, 0
  %or.cond12.not26.i.i = select i1 %or.cond.not27.i.i, i1 true, i1 %.not.2.not.i.i
  %i.as = load i64, ptr %i.ab, align 8
  %.not.3.not.i.i = icmp ne i64 %i.as, 0
  %or.cond14.not25.i.i = select i1 %or.cond12.not26.i.i, i1 true, i1 %.not.3.not.i.i
  %i.at = load i64, ptr %i.ac, align 8
  %.not.4.not.i.i = icmp ne i64 %i.at, 0
  %or.cond16.not24.i.i = select i1 %or.cond14.not25.i.i, i1 true, i1 %.not.4.not.i.i
  %i.au = load i64, ptr %i.ad, align 8
  %.not.5.not.i.i = icmp ne i64 %i.au, 0
  %or.cond18.not23.i.i = select i1 %or.cond16.not24.i.i, i1 true, i1 %.not.5.not.i.i
  %i.av = load i64, ptr %i.ae, align 8
  %.not.6.not.i.i = icmp ne i64 %i.av, 0
  %or.cond20.not.i.i = select i1 %or.cond18.not23.i.i, i1 true, i1 %.not.6.not.i.i
  %i.aw = load i64, ptr %i.af, align 8
  %.not.7.not.i.i = icmp ne i64 %i.aw, 0
  %or.cond22.i.i = select i1 %or.cond20.not.i.i, i1 true, i1 %.not.7.not.i.i
  br i1 %or.cond22.i.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread:       ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !1505
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread
  %.0121144 = trunc i64 %indvars.iv to i32
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit, %bb.o
  %.0.ph.be = phi i32 [ %i.cz, %bb.o ], [ %.0121144, %.loopexit ] ; 3 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next153, %i.s
  %i.ay = icmp ult i32 %.0.ph.be, %i.i
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %.preheader106.loopexit140, !llvm.loop !6125

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93:     ; preds = %bb.d, %bb.e
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !1234
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !1230
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1236
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %i.bf ; 18 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1505
  switch i32 %i.bh, label %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96 [
    i32 -1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1238
  %.not.not.i.i38 = icmp ne i64 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.1.not.i.i39 = icmp ne i64 %i.bl, 0
  %or.cond.not27.i.i40 = select i1 %.not.not.i.i38, i1 true, i1 %.not.1.not.i.i39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %.not.2.not.i.i41 = icmp ne i64 %i.bn, 0
  %or.cond12.not26.i.i42 = select i1 %or.cond.not27.i.i40, i1 true, i1 %.not.2.not.i.i41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bp = load i64, ptr %i.bo, align 8
  %.not.3.not.i.i43 = icmp ne i64 %i.bp, 0
  %or.cond14.not25.i.i44 = select i1 %or.cond12.not26.i.i42, i1 true, i1 %.not.3.not.i.i43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %.not.4.not.i.i45 = icmp ne i64 %i.br, 0
  %or.cond16.not24.i.i46 = select i1 %or.cond14.not25.i.i44, i1 true, i1 %.not.4.not.i.i45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bt = load i64, ptr %i.bs, align 8
  %.not.5.not.i.i47 = icmp ne i64 %i.bt, 0
  %or.cond18.not23.i.i48 = select i1 %or.cond16.not24.i.i46, i1 true, i1 %.not.5.not.i.i47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bv = load i64, ptr %i.bu, align 8
  %.not.6.not.i.i49 = icmp ne i64 %i.bv, 0
  %or.cond20.not.i.i50 = select i1 %or.cond18.not23.i.i48, i1 true, i1 %.not.6.not.i.i49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.7.not.i.i51 = icmp ne i64 %i.bx, 0
  %or.cond22.i.i52 = select i1 %or.cond20.not.i.i50, i1 true, i1 %.not.7.not.i.i51
  br i1 %or.cond22.i.i52, label %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96, label %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread

_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread:     ; preds = %bb.f
  store i32 0, ptr %i.bg, align 8, !tbaa !1505
  br label %bb.g

bb.g:                                             ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93, %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = icmp samesign ult i64 %indvars.iv.next, %2
  br i1 %i.by, label %bb.d, label %.preheader106.loopexit, !llvm.loop !6125

_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96:   ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread93, %bb.f
  %5 = trunc nuw i64 %indvars.iv to i32
  %i.bz = load i32, ptr %i.t, align 4, !tbaa !1233
  %i.ca = load i32, ptr %i.bc, align 4, !tbaa !1233
  %.not34 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not34, label %bb.h, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.h:                                             ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cc = load i64, ptr %i.y, align 8, !tbaa !1238
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !1238
  %.not.i.i = icmp eq i64 %i.cc, %i.cd
  br i1 %.not.i.i, label %bb.i, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ce = load i64, ptr %i.z, align 8, !tbaa !1238
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1238
  %.not.1.i.i = icmp eq i64 %i.ce, %i.cg
  br i1 %.not.1.i.i, label %bb.j, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ch = load i64, ptr %i.aa, align 8, !tbaa !1238
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1238
  %.not.2.i.i = icmp eq i64 %i.ch, %i.cj
  br i1 %.not.2.i.i, label %bb.k, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ck = load i64, ptr %i.ab, align 8, !tbaa !1238
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1238
  %.not.3.i.i = icmp eq i64 %i.ck, %i.cm
  br i1 %.not.3.i.i, label %bb.l, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cn = load i64, ptr %i.ac, align 8, !tbaa !1238
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1238
  %.not.4.i.i = icmp eq i64 %i.cn, %i.cp
  br i1 %.not.4.i.i, label %bb.m, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %i.ad, align 8, !tbaa !1238
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1238
  %.not.5.i.i = icmp eq i64 %i.cq, %i.cs
  br i1 %.not.5.i.i, label %bb.n, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !1238
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1238
  %.not.6.i.i = icmp eq i64 %i.ct, %i.cv
  br i1 %.not.6.i.i, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

_ZNK13hb_bit_page_t8is_equalERKS_.exit:           ; preds = %bb.n
  %i.cw = load i64, ptr %i.af, align 8, !tbaa !1238
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !1238
  %.not.7.i.i = icmp eq i64 %i.cw, %i.cy
  br i1 %.not.7.i.i, label %bb.o, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

bb.o:                                             ; preds = %_ZNK13hb_bit_page_t8is_equalERKS_.exit
  %i.cz = add nuw i32 %5, 1
  br label %.outer.backedge

.preheader:                                       ; preds = %bb.r, %.preheader106
  %i.da = icmp ult i32 %.0.lcssa, %i.i
  br i1 %i.da, label %.lr.ph132, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread

.lr.ph132:                                        ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1234
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1230
  %i.df = zext i32 %.0.lcssa to i64
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph130, %bb.r
  %indvars.iv154.a = phi i64 [ %i.an, %.lr.ph130 ], [ %indvars.iv.next155.a, %bb.r ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv154.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1236
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.ak, i64 %i.dj ; 10 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !1505
  switch i32 %i.dl, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread [
    i32 -1, label %bb.q
    i32 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1238
  %.not.not.i.i57 = icmp ne i64 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load i64, ptr %i.do, align 8
  %.not.1.not.i.i58 = icmp ne i64 %i.dp, 0
  %or.cond.not27.i.i59 = select i1 %.not.not.i.i57, i1 true, i1 %.not.1.not.i.i58
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dr = load i64, ptr %i.dq, align 8
  %.not.2.not.i.i60 = icmp ne i64 %i.dr, 0
  %or.cond12.not26.i.i61 = select i1 %or.cond.not27.i.i59, i1 true, i1 %.not.2.not.i.i60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dt = load i64, ptr %i.ds, align 8
  %.not.3.not.i.i62 = icmp ne i64 %i.dt, 0
  %or.cond14.not25.i.i63 = select i1 %or.cond12.not26.i.i61, i1 true, i1 %.not.3.not.i.i62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dv = load i64, ptr %i.du, align 8
  %.not.4.not.i.i64 = icmp ne i64 %i.dv, 0
  %or.cond16.not24.i.i65 = select i1 %or.cond14.not25.i.i63, i1 true, i1 %.not.4.not.i.i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dx = load i64, ptr %i.dw, align 8
  %.not.5.not.i.i66 = icmp ne i64 %i.dx, 0
  %or.cond18.not23.i.i67 = select i1 %or.cond16.not24.i.i65, i1 true, i1 %.not.5.not.i.i66
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dz = load i64, ptr %i.dy, align 8
  %.not.6.not.i.i68 = icmp ne i64 %i.dz, 0
  %or.cond20.not.i.i69 = select i1 %or.cond18.not23.i.i67, i1 true, i1 %.not.6.not.i.i68
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.eb = load i64, ptr %i.ea, align 8
  %.not.7.not.i.i70 = icmp ne i64 %i.eb, 0
  %or.cond22.i.i71 = select i1 %or.cond20.not.i.i69, i1 true, i1 %.not.7.not.i.i70
  br i1 %or.cond22.i.i71, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread, label %_ZNK13hb_bit_page_t8is_emptyEv.exit72.thread

_ZNK13hb_bit_page_t8is_emptyEv.exit72.thread:     ; preds = %bb.q
  store i32 0, ptr %i.dk, align 8, !tbaa !1505
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %_ZNK13hb_bit_page_t8is_emptyEv.exit72.thread
  %indvars.iv.next155.a = add nuw nsw i64 %indvars.iv154.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next155.a to i32
  %exitcond.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !6126

bb.s:                                             ; preds = %.lr.ph132, %bb.u
  %indvars.iv157 = phi i64 [ %i.df, %.lr.ph132 ], [ %indvars.iv.next158, %bb.u ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv157
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !1236
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [72 x i8], ptr %i.dc, i64 %i.ef ; 10 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1505
  switch i32 %i.eh, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread [
    i32 -1, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1238
  %.not.not.i.i76 = icmp ne i64 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.el = load i64, ptr %i.ek, align 8
  %.not.1.not.i.i77 = icmp ne i64 %i.el, 0
  %or.cond.not27.i.i78 = select i1 %.not.not.i.i76, i1 true, i1 %.not.1.not.i.i77
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.en = load i64, ptr %i.em, align 8
  %.not.2.not.i.i79 = icmp ne i64 %i.en, 0
  %or.cond12.not26.i.i80 = select i1 %or.cond.not27.i.i78, i1 true, i1 %.not.2.not.i.i79
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ep = load i64, ptr %i.eo, align 8
  %.not.3.not.i.i81 = icmp ne i64 %i.ep, 0
  %or.cond14.not25.i.i82 = select i1 %or.cond12.not26.i.i80, i1 true, i1 %.not.3.not.i.i81
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.er = load i64, ptr %i.eq, align 8
  %.not.4.not.i.i83 = icmp ne i64 %i.er, 0
  %or.cond16.not24.i.i84 = select i1 %or.cond14.not25.i.i82, i1 true, i1 %.not.4.not.i.i83
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.et = load i64, ptr %i.es, align 8
  %.not.5.not.i.i85 = icmp ne i64 %i.et, 0
  %or.cond18.not23.i.i86 = select i1 %or.cond16.not24.i.i84, i1 true, i1 %.not.5.not.i.i85
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ev = load i64, ptr %i.eu, align 8
  %.not.6.not.i.i87 = icmp ne i64 %i.ev, 0
  %or.cond20.not.i.i88 = select i1 %or.cond18.not23.i.i86, i1 true, i1 %.not.6.not.i.i87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ex = load i64, ptr %i.ew, align 8
  %.not.7.not.i.i89 = icmp ne i64 %i.ex, 0
  %or.cond22.i.i90 = select i1 %or.cond20.not.i.i88, i1 true, i1 %.not.7.not.i.i89
  br i1 %or.cond22.i.i90, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread, label %_ZNK13hb_bit_page_t8is_emptyEv.exit91.thread

_ZNK13hb_bit_page_t8is_emptyEv.exit91.thread:     ; preds = %bb.t
  store i32 0, ptr %i.eg, align 8, !tbaa !1505
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %_ZNK13hb_bit_page_t8is_emptyEv.exit91.thread
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %lftr.wideiv160 = trunc i64 %indvars.iv.next158 to i32
  %exitcond161.not = icmp eq i32 %i.i, %lftr.wideiv160
  br i1 %exitcond161.not, label %_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread, label %bb.s, !llvm.loop !6127

_ZNK13hb_bit_page_t8is_equalERKS_.exit.thread:    ; preds = %bb.n, %bb.k, %bb.m, %bb.j, %bb.i, %bb.l, %bb.h, %_ZNK13hb_bit_page_t8is_equalERKS_.exit, %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96, %bb.p, %bb.q, %bb.u, %bb.t, %bb.s, %.preheader, %bb.b
  %.133 = phi i1 [ false, %bb.b ], [ true, %.preheader ], [ false, %bb.p ], [ false, %bb.s ], [ true, %bb.u ], [ false, %bb.t ], [ false, %bb.q ], [ false, %_ZNK13hb_bit_page_t8is_emptyEv.exit53.thread96 ], [ false, %_ZNK13hb_bit_page_t8is_equalERKS_.exit ], [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.n ]
  ret i1 %.133
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZNK4$_31clI13hb_map_iter_tI13hb_zip_iter_tIN23hb_bit_set_invertible_t6iter_tES4_EZNKS3_8is_equalERKS3_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELPv0EERK3$_8SG_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSC_0EEEbOSI_OT0_OT1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.hb_map_iter_t.2046, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1187 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %i.e = load i32, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %.not23 = select i1 %i.d, i1 true, i1 %i.f      ; 2 uses
  %i.g = icmp ne i32 %i.c, %i.e
  %or.cond5.not = select i1 %.not23, i1 true, i1 %i.g
  br i1 %or.cond5.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  call void @_ZN13hb_zip_iter_tIN23hb_bit_set_invertible_t6iter_tES1_E8__next__Ev(ptr noundef nonnull align 8 dereferenceable(33) %1)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !1187 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %i.j = load i32, ptr %i.b, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %.not2 = select i1 %i.i, i1 true, i1 %i.k       ; 2 uses
  %i.l = icmp ne i32 %i.h, %i.j
  %or.cond.not = select i1 %.not2, i1 true, i1 %i.l
  br i1 %or.cond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6128

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not2.lcssa = phi i1 [ %.not23, %bb.a ], [ %.not2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  ret i1 %.not2.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13hb_zip_iter_tIN23hb_bit_set_invertible_t6iter_tES1_E8__next__Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1185   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !944, !range !378, !noundef !291
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.e, ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.k = load i32, ptr %i.f, align 8, !tbaa !322  ; 5 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !322
  %i.l = icmp eq i32 %i.k, -2
  br i1 %i.l, label %bb.d, label %bb.e, !prof !265

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 8, !tbaa !322
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 %i.k, ptr %i.d, align 4, !tbaa !322
  %i.m = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.e, ptr noundef nonnull %i.d) ; 0 uses
end_hunk_1
