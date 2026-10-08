Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL34hb_raster_paint_finalize_path_clipP17hb_raster_paint_tP16hb_raster_draw_tP17hb_raster_image_tjj:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.bk, align 4, !tbaa !85
  %i.gw = zext i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %i.gw ; 13 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 %.sroa.0.5, ptr %i.gx, align 8, !tbaa !83
  store i32 %i.ar, ptr %i.gy, align 4, !tbaa !86
  store ptr %.sroa.17.5, ptr %i.gz, align 8, !tbaa !84
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i32 %3, ptr %i.ha, align 8
  %.sroa.30.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  store i32 %4, ptr %.sroa.30.16..sroa_idx, align 4
  %.sroa.31.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i32 %i.an, ptr %.sroa.31.16..sroa_idx, align 8
  %.sroa.35.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  store i8 0, ptr %.sroa.35.16..sroa_idx, align 4
  %.sroa.36.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.36.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.36, i64 19, i1 false)
  %.sroa.37.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.sroa.37.4, ptr %.sroa.37.16..sroa_idx, align 8
  %.sroa.44.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 52
  store i32 %.sroa.44.4, ptr %.sroa.44.16..sroa_idx, align 4
  %.sroa.51.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store i32 %.sroa.51.4, ptr %.sroa.51.16..sroa_idx, align 8
  %.sroa.58.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 60
  store i32 %.sroa.58.4, ptr %.sroa.58.16..sroa_idx, align 4
  %.not269 = icmp eq ptr %i.gx, @_hb_CrapPool
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br i1 %.not269, label %.sink.split, label %bb.aa, !prof !116

.sink.split:                                      ; preds = %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit
  %.sroa.0.2.ph = phi i32 [ %.sroa.0.5, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit ], [ %.sroa.0.5, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread ], [ %.sroa.0.5, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ 0, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.5, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit ], [ %.sroa.17.5, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread ], [ %.sroa.17.5, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ null, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit
  %.sroa.0.2 = phi i32 [ 0, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ], [ %.sroa.0.2.ph, %.sink.split ]
  %.sroa.17.2 = phi ptr [ null, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ], [ %.sroa.17.2.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge
  %.sroa.0.3 = phi i32 [ %.sroa.0.0, %.critedge ], [ %.sroa.0.2, %bb.aa ]
  %.sroa.17.3 = phi ptr [ %.sroa.17.4, %.critedge ], [ %.sroa.17.2, %bb.aa ]
  %i.hb = add i32 %.sroa.0.3, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.hb, -2
  br i1 %spec.select.i.i.i.i, label %bb.ac, label %_ZN16hb_raster_clip_tD2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  call void @hb_free(ptr noundef %.sroa.17.3) #17
  br label %_ZN16hb_raster_clip_tD2Ev.exit

_ZN16hb_raster_clip_tD2Ev.exit:                   ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN16hb_raster_clip_tD2Ev.exit, %_ZN17hb_raster_paint_t11charge_workEl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.b
  ret void
}

declare void @hb_raster_draw_clear(ptr noundef) local_unnamed_addr #2

declare hidden void @_Z25hb_raster_image_compositeP17hb_raster_image_tPKS_25hb_paint_composite_mode_t(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hb_blob_get_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden noundef zeroext i1 @_ZN17hb_raster_image_t20deserialize_from_pngEP9hb_blob_t(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hb_color_line_get_extend(ptr noundef) local_unnamed_addr #2

declare void @hb_paint_reduce_linear_anchors(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define internal fastcc noundef i32 @_ZL19evaluate_color_linePK15hb_color_stop_tjf17hb_paint_extend_t(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.m
    i32 1, label %bb.b
  ], !prof !320

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !322
  %i.c = tail call fastcc noundef i32 @_ZL21color_to_premul_pixelj(i32 noundef %i.b)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.fabs.f32(float %2)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.077 = phi float [ %2, %bb.c ], [ 0.000000e+00, %bb.d ] ; 5 uses
  switch i32 %3, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = fcmp oge float %.077, 0.000000e+00
  %i.g = select i1 %i.f, float %.077, float 0.000000e+00 ; 2 uses
  %i.h = fcmp ole float %i.g, 1.000000e+00
  %.sroa.speculated = select i1 %i.h, float %i.g, float 1.000000e+00
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = tail call float @llvm.floor.f32(float %.077)
  %i.j = fsub float %.077, %i.i
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.k = tail call float @llvm.fabs.f32(float %.077)
  %i.l = tail call float @fmodf(float noundef %i.k, float noundef 2.000000e+00) #17 ; 3 uses
  %i.m = fcmp ogt float %i.l, 1.000000e+00
  %i.n = fsub float 2.000000e+00, %i.l
  %i.o = select i1 %i.m, float %i.n, float %i.l
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1 = phi float [ %i.o, %bb.h ], [ %.sroa.speculated, %bb.f ], [ %i.j, %bb.g ] ; 4 uses
  %i.p = load float, ptr %0, align 4, !tbaa !323
  %i.q = fcmp ugt float %.1, %i.p
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !322  ; 5 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 255
  %i.v = and i32 %i.s, 255                        ; 3 uses
  %i.w = lshr i32 %i.s, 16
  %i.x = and i32 %i.w, 255
  %i.y = mul nuw nsw i32 %i.x, %i.v
  %i.z = add nuw nsw i32 %i.y, 255
  %i.aa = and i32 %i.z, 130816
  %i.ab = lshr i32 %i.s, 24
  %i.ac = mul nuw nsw i32 %i.ab, %i.v
  %i.ad = add nuw nsw i32 %i.ac, 255
  %i.ae = shl nuw nsw i32 %i.v, 8
  %i.af = mul nuw nsw i32 %i.ae, %i.u
  %i.ag = add nuw nsw i32 %i.af, 65280
  %i.ah = and i32 %i.ag, 33488896
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.ad, i32 24)
  %i.aj = add nuw nsw i32 %i.aa, %i.ai
  %i.ak = add nuw nsw i32 %i.aj, %i.ah
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.al = add i32 %1, -1                          ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 4 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !323
  %i.ap = fcmp ult float %.1, %i.ao
  br i1 %i.ap, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %bb.k
  %exitcond.not83 = icmp eq i32 %i.al, 0
  br i1 %exitcond.not83, label %split, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !322 ; 5 uses
  %i.as = lshr i32 %i.ar, 8
  %i.at = and i32 %i.as, 255
  %i.au = and i32 %i.ar, 255                      ; 3 uses
  %i.av = lshr i32 %i.ar, 16
  %i.aw = and i32 %i.av, 255
  %i.ax = mul nuw nsw i32 %i.aw, %i.au
  %i.ay = add nuw nsw i32 %i.ax, 255
  %i.az = and i32 %i.ay, 130816
  %i.ba = lshr i32 %i.ar, 24
  %i.bb = mul nuw nsw i32 %i.ba, %i.au
  %i.bc = add nuw nsw i32 %i.bb, 255
  %i.bd = shl nuw nsw i32 %i.au, 8
  %i.be = mul nuw nsw i32 %i.bd, %i.at
  %i.bf = add nuw nsw i32 %i.be, 65280
  %i.bg = and i32 %i.bf, 33488896
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.bc, i32 24)
  %i.bi = add nuw nsw i32 %i.az, %i.bh
  %i.bj = add nuw nsw i32 %i.bi, %i.bg
  br label %bb.m

.preheader:                                       ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %exitcond.not, label %split, label %.lr.ph, !llvm.loop !319

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv84 = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv84, 1 ; 3 uses
  %4 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next
  %i.bk = load float, ptr %4, align 4, !tbaa !323
  %i.bl = fcmp olt float %.1, %i.bk
  br i1 %i.bl, label %._crit_edge, label %.preheader, !llvm.loop !319

._crit_edge:                                      ; preds = %.lr.ph
  %i.bm = trunc nuw i64 %indvars.iv84 to i32
  %i.bn = add i32 %i.bm, 1
  br label %split, !llvm.loop !319

split:                                            ; preds = %.preheader, %.preheader.preheader, %._crit_edge
  %.pre-phi = phi i64 [ %indvars.iv84, %._crit_edge ], [ %i.am, %.preheader.preheader ], [ %i.am, %.preheader ]
  %.066.lcssa = phi i32 [ %i.bn, %._crit_edge ], [ %1, %.preheader.preheader ], [ %1, %.preheader ]
  %i.bo = zext i32 %.066.lcssa to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !323
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !323 ; 2 uses
  %i.bt = fsub float %i.bq, %i.bs                 ; 2 uses
  %i.bu = fcmp ogt float %i.bt, 0.000000e+00
  %i.bv = fsub float %.1, %i.bs
  %i.bw = fdiv float %i.bv, %i.bt
  %i.bx = select i1 %i.bu, float %i.bw, float 0.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !322 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !322 ; 4 uses
  %i.cc = lshr i32 %i.bz, 8
  %i.cd = lshr i32 %i.bz, 16
  %i.ce = lshr i32 %i.bz, 24
  %i.cf = lshr i32 %i.cb, 8
  %i.cg = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 1
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ce, i64 2
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cf, i64 3
  %i.ck = and <4 x i32> %i.cj, <i32 255, i32 255, i32 -1, i32 255>
  %i.cl = uitofp nneg <4 x i32> %i.ck to <4 x float> ; 2 uses
  %i.cm = lshr i32 %i.cb, 16
  %i.cn = and i32 %i.cm, 255
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = lshr i32 %i.cb, 24
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = and i32 %i.bz, 255
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cl, <4 x i32> <i32 6, i32 5, i32 4, i32 3>
  %i.cu = fdiv nnan <4 x float> %i.ct, <float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 1.000000e+00>
  %i.cv = and i32 %i.cb, 255
  %i.cw = uitofp nneg i32 %i.cv to float
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cs, i64 1
  %i.cz = fdiv <2 x float> %i.cy, splat (float 2.550000e+02) ; 2 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.db = fmul <4 x float> %i.da, %i.cu           ; 2 uses
  %i.dc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cq, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.co, i64 1
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.df = fdiv nnan <4 x float> %i.de, <float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 1.000000e+00>
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dh = fmul <4 x float> %i.dg, %i.df
  %i.di = fsub <4 x float> %i.dh, %i.db
  %i.dj = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.di, <4 x float> %i.db)
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.dn = fptoui <4 x float> %i.dm to <4 x i8>
  %i.do = bitcast <4 x i8> %i.dn to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %split, %bb.l, %bb.j, %bb.b
  %.0 = phi i32 [ %i.do, %split ], [ %i.c, %bb.b ], [ %i.ak, %bb.j ], [ %i.bj, %bb.l ], [ %1, %bb.a ]
  ret i32 %.0
}

declare i32 @hb_color_line_get_color_stops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !91     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !13

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !324

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !13

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  tail call void @hb_free(ptr noundef %i.m) #17
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #17 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !92   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 103079215081) %i.v, i1 false), !alias.scope !328
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #17 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !88

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !91    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !93
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #15

end_hunk_0
