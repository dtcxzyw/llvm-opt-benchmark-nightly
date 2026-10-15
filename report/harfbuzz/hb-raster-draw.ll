Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-draw?download=true
inline.NumInlined: 414
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL22hb_raster_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_:bb.a
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.l, <2 x float> %i.i)
  %i.n = load <2 x float>, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.m)
  %i.r = load <2 x float>, ptr %i.h, align 8, !tbaa !14 ; 3 uses
  %i.s = fdiv <2 x float> %i.q, %i.r
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.u, <2 x float> %i.i)
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = fdiv <2 x float> %i.y, %i.r
  %i.aa = insertelement <2 x float> poison, float %5, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.ab, <2 x float> %i.i)
  %i.ad = insertelement <2 x float> poison, float %6, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = fdiv <2 x float> %i.af, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.066.i.i.ph = phi i32 [ %i.av, %bb.d ], [ 0, %bb.a ]
  %.064.i.i.ph = phi i32 [ %i.be, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.bc, %bb.d ], [ %i.ag, %bb.a ]
  %.ph25 = phi <2 x float> [ %i.bb, %bb.d ], [ %i.z, %bb.a ]
  %.ph26 = phi <2 x float> [ %i.ba, %bb.d ], [ %i.s, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.066.i.i = phi i32 [ %i.bi, %bb.e ], [ %.066.i.i.ph, %.outer ] ; 4 uses
  %.064.i.i = phi i32 [ %i.bh, %bb.e ], [ %.064.i.i.ph, %.outer ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.bo, %bb.e ], [ %.ph, %.outer ] ; 5 uses
  %i.ai = phi <2 x float> [ %i.bl, %bb.e ], [ %.ph25, %.outer ] ; 3 uses
  %i.aj = fadd <2 x float> %i.ah, %.ph26
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float -2.000000e+00), <2 x float> %i.aj)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.am = fcmp ole <2 x float> %i.al, splat (float 2.500000e-01) ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = icmp sgt i32 %.064.i.i, 15
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %i.ap
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = extractelement <2 x float> %i.ah, i64 1
  %i.at = extractelement <2 x float> %.ph26, i64 0
  %i.au = extractelement <2 x float> %.ph26, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.at, float noundef %i.au, float noundef %i.ar, float noundef %i.as)
  %.not.i.i = icmp eq i32 %.066.i.i, 0
  br i1 %.not.i.i, label %_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = add i32 %.066.i.i, -1                   ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !14
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !14
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !151
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bf = fadd <2 x float> %i.ai, %.ph26
  %i.bg = fadd <2 x float> %i.ah, %i.ai
  %i.bh = add nsw i32 %.064.i.i, 1                ; 2 uses
  %i.bi = add nuw i32 %.066.i.i, 1
  %i.bj = zext i32 %.066.i.i to i64
  %i.bk = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.bj ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bl = fmul <2 x float> %i.bf, splat (float 5.000000e-01) ; 2 uses
  %i.bm = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 2 uses
  %i.bn = fadd <2 x float> %i.bm, %i.bl
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bp, ptr %i.bk, align 4, !tbaa !14
  store <2 x float> %i.ah, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !50
  br label %bb.b

_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void
}

declare void @hb_draw_funcs_set_cubic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_raster_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %10 = alloca [16 x %struct.cubic_node_t], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load <2 x float>, ptr %i.c, align 4, !tbaa !14 ; 4 uses
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !14 ; 4 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.f)
  %i.l = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.l, <2 x float> %i.k)
  %i.n = load <2 x float>, ptr %i.e, align 8, !tbaa !14 ; 4 uses
  %i.o = fdiv <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %3, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.q, <2 x float> %i.f)
  %i.s = insertelement <2 x float> poison, float %4, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.t, <2 x float> %i.r)
  %i.v = fdiv <2 x float> %i.u, %i.n
  %i.w = insertelement <2 x float> poison, float %5, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.x, <2 x float> %i.f)
  %i.z = insertelement <2 x float> poison, float %6, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.aa, <2 x float> %i.y)
  %i.ac = fdiv <2 x float> %i.ab, %i.n
  %i.ad = insertelement <2 x float> poison, float %7, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.ae, <2 x float> %i.f)
  %i.ag = insertelement <2 x float> poison, float %8, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = fdiv <2 x float> %i.ai, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.0104.i.i.ph = phi i32 [ %i.bc, %bb.d ], [ 0, %bb.a ]
  %.0102.i.i.ph = phi i32 [ %i.bn, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.bl, %bb.d ], [ %i.aj, %bb.a ]
  %.ph34 = phi <2 x float> [ %i.bk, %bb.d ], [ %i.ac, %bb.a ]
  %.ph35 = phi <2 x float> [ %i.bh, %bb.d ], [ %i.v, %bb.a ]
  %.ph36 = phi <2 x float> [ %i.bf, %bb.d ], [ %i.o, %bb.a ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.0104.i.i = phi i32 [ %i.bs, %bb.e ], [ %.0104.i.i.ph, %.outer ] ; 4 uses
  %.0102.i.i = phi i32 [ %i.br, %bb.e ], [ %.0102.i.i.ph, %.outer ] ; 2 uses
  %i.ak = phi <2 x float> [ %i.cd, %bb.e ], [ %.ph, %.outer ] ; 6 uses
  %i.al = phi <2 x float> [ %i.bz, %bb.e ], [ %.ph34, %.outer ] ; 3 uses
  %i.am = phi <2 x float> [ %i.bv, %bb.e ], [ %.ph35, %.outer ] ; 3 uses
  %i.an = fmul <2 x float> %i.am, splat (float -3.000000e+00)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.ph36, <2 x float> splat (float 2.000000e+00), <2 x float> %i.an)
  %i.ap = fadd <2 x float> %i.ak, %i.ao
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float -3.000000e+00), <2 x float> %.ph36)
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> splat (float 2.000000e+00), <2 x float> %i.aq)
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr33 = freeze <4 x float> %i.as
  %i.at = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %.fr33)
  %i.au = fcmp ugt <4 x float> %i.at, splat (float 5.000000e-01)
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp eq i4 %i.av, 0
  %i.ax = icmp sgt i32 %.0102.i.i, 15
  %or.cond5.i.i = or i1 %i.ax, %i.aw
  br i1 %or.cond5.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ay = extractelement <2 x float> %i.ak, i64 0
  %i.az = extractelement <2 x float> %i.ak, i64 1
  %i.ba = extractelement <2 x float> %.ph36, i64 0
  %i.bb = extractelement <2 x float> %.ph36, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.ba, float noundef %i.bb, float noundef %i.ay, float noundef %i.az)
  %.not.i.i = icmp eq i32 %.0104.i.i, 0
  br i1 %.not.i.i, label %_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = add i32 %.0104.i.i, -1                  ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.bd ; 5 uses
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !14
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !153
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bo = fadd <2 x float> %i.am, %.ph36
  %i.bp = fadd <2 x float> %i.al, %i.am
  %i.bq = fadd <2 x float> %i.ak, %i.al
  %i.br = add nsw i32 %.0102.i.i, 1               ; 2 uses
  %i.bs = add nuw i32 %.0104.i.i, 1
  %i.bt = zext i32 %.0104.i.i to i64
  %i.bu = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.bt ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bv = fmul <2 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bw = fmul <2 x float> %i.bp, splat (float 5.000000e-01) ; 2 uses
  %i.bx = fmul <2 x float> %i.bq, splat (float 5.000000e-01) ; 2 uses
  %i.by = fadd <2 x float> %i.bw, %i.bv
  %i.bz = fmul <2 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
  %i.ca = fadd <2 x float> %i.bx, %i.bw
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 2 uses
  %i.cc = fadd <2 x float> %i.cb, %i.bz
  %i.cd = fmul <2 x float> %i.cc, splat (float 5.000000e-01) ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ce, ptr %i.bu, align 4, !tbaa !14
  store <2 x float> %i.bx, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  store <2 x float> %i.ak, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 %i.br, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !tbaa !50
  br label %bb.b

_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void
}

declare void @hb_draw_funcs_set_close_path_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL20hb_raster_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #12 {
bb.a:
  ret void
}

declare void @hb_draw_funcs_make_immutable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL29free_static_raster_draw_funcsv() #10 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL24static_raster_draw_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !37

.critedge.i:                                      ; preds = %bb.b
  %i.d = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  %.not3.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a) #18
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x float> poison, float %3, i64 0
  %i.b = insertelement <4 x float> %i.a, float %4, i64 1
  %i.c = insertelement <4 x float> %i.b, float %1, i64 2
  %i.d = insertelement <4 x float> %i.c, float %2, i64 3
  %i.e = fmul <4 x float> %i.d, splat (float 2.560000e+02)
  %i.f = fadd <4 x float> %i.e, splat (float 5.000000e-01)
  %i.g = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.f)
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 2 uses
  %i.i = fcmp oge <4 x double> %i.h, splat (double f0xC1E0000000000000)
  %i.j = select <4 x i1> %i.i, <4 x double> %i.h, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.k = fcmp ole <4 x double> %i.j, splat (double f0x41DFFFFFFFC00000)
  %i.l = select <4 x i1> %i.k, <4 x double> %i.j, <4 x double> splat (double f0x41DFFFFFFFC00000)
  %i.m = fptosi <4 x double> %i.l to <4 x i32>    ; 4 uses
  %i.n = extractelement <4 x i32> %i.m, i64 3     ; 4 uses
  %i.o = extractelement <4 x i32> %i.m, i64 1     ; 4 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %i.n, %i.o
  %i.r = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.16.0 = phi i32 [ -1, %bb.c ], [ 1, %bb.b ]
  %.sroa.12.0 = phi i32 [ %i.n, %bb.c ], [ %i.o, %bb.b ]
  %.sroa.6.0 = phi i32 [ %i.o, %bb.c ], [ %i.n, %bb.b ]
  %i.s = phi <4 x i32> [ %i.m, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.t = extractelement <4 x i32> %i.s, i64 2
  %i.u = sext i32 %i.t to i64
  %i.v = extractelement <4 x i32> %i.s, i64 0
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = shl nsw i64 %i.x, 16
  %i.z = sext i32 %.sroa.12.0 to i64
  %i.aa = sext i32 %.sroa.6.0 to i64
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = sdiv i64 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55 ; 3 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !73
  %.not.i = icmp slt i32 %i.af, %i.ag
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = add i32 %i.af, 1
  %i.ai = tail call noundef zeroext i1 @_ZN11hb_vector_tI16hb_raster_edge_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 noundef %i.ah, i1 noundef zeroext false)
  br i1 %i.ai, label %..critedge_crit_edge.i, label %bb.f, !prof !37

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !55
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.aj = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.af, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = add i32 %i.aj, 1
  store i32 %i.am, ptr %i.ae, align 4, !tbaa !55
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.an ; 3 uses
  store <4 x i32> %i.s, ptr %i.ao, align 8, !tbaa !50
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ac, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !154
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !50
  br label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit

_ZN11hb_vector_tI16hb_raster_edge_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit: ; preds = %.critedge.i, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI16hb_raster_edge_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !11

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !155

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 134217727
  br i1 %i.j, label %.critedge, label %bb.e, !prof !11

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 5
  %i.q = zext i32 %i.p to i64
end_hunk_0
