Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_":bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.04671 = phi i64 [ %.147, %bb.n ], [ %1, %bb.a ] ; 3 uses
  %.04870 = phi ptr [ %.149, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %.04671 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12 ; 3 uses
  %i.d = lshr i64 %.04671, 1
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %i.d ; 11 uses
  %.048.val63 = load float, ptr %.04870, align 4, !tbaa !82
  %.val64 = load float, ptr %i.e, align 4, !tbaa !82 ; 2 uses
  %i.f = fcmp ogt float %.048.val63, %.val64
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.val61.pre = load float, ptr %i.e, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.val61 = phi float [ %.val61.pre, %bb.b ], [ %.val64, %.lr.ph ]
  %.val62 = load float, ptr %i.c, align 4, !tbaa !82
  %i.g = fcmp ogt float %.val61, %.val62
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.048.val = load float, ptr %.04870, align 4, !tbaa !82
  %.val60 = load float, ptr %i.e, align 4, !tbaa !82
  %i.h = fcmp ogt float %.048.val, %.val60
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.044 = phi ptr [ %.04870, %bb.f ], [ %i.j, %bb.j ]
  %.0 = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.j ]
  %.val59 = load float, ptr %i.i, align 4, !tbaa !82 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.145 = phi ptr [ %.044, %bb.g ], [ %i.j, %bb.h ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.145, i64 12 ; 9 uses
  %.val58 = load float, ptr %i.j, align 4, !tbaa !82
  %i.k = fcmp olt float %.val58, %.val59
  br i1 %i.k, label %bb.h, label %.preheader, !llvm.loop !1304

.preheader:                                       ; preds = %bb.h, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.h ]
  %i.l = getelementptr inbounds i8, ptr %.1, i64 -12 ; 6 uses
  %.val = load float, ptr %i.l, align 4, !tbaa !82
  %i.m = fcmp ogt float %.val, %.val59
  br i1 %i.m, label %.preheader, label %bb.i, !llvm.loop !1305

bb.i:                                             ; preds = %.preheader
  %.not = icmp ult ptr %i.j, %i.l
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g, !llvm.loop !1306

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %.04870 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 12                  ; 4 uses
  %i.r = xor i64 %i.q, -1
  %i.s = add i64 %.04671, %i.r                    ; 3 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef nonnull %.04870, i64 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %.145, i64 24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.145, i64 24
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef nonnull %i.v, i64 noundef %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.149 = phi ptr [ %i.u, %bb.l ], [ %.04870, %bb.m ]
  %.147 = phi i64 [ %i.s, %bb.l ], [ %i.q, %bb.m ] ; 2 uses
  %i.w = icmp ugt i64 %.147, 24
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !1307

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void
}

declare void @hb_paint_sweep_gradient_tiles(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23hb_pdf_sweep_emit_patchfjfjPv(float noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !85     ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 44 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !1333
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !1334
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !1335 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !1336 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !1337 ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = load float, ptr %i.n, align 4, !tbaa !1338 ; 24 uses
  %i.p = fsub float %2, %0                        ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fdiv float %i.q, f0x3FC90FDB
  %i.s = tail call float @llvm.ceil.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.u = uitofp nneg i32 %spec.store.select.i to float
  %i.v = lshr i32 %1, 8
  %i.w = lshr i32 %1, 16
  %i.x = lshr i32 %1, 24                          ; 2 uses
  %i.y = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.z = insertelement <4 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.w, i64 2
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.v, i64 3
  %i.ac = and <4 x i32> %i.ab, <i32 255, i32 -1, i32 255, i32 255> ; 2 uses
  %i.ad = lshr i32 %3, 8
  %i.ae = lshr i32 %3, 16
  %i.af = lshr i32 %3, 24
  %i.ag = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 2
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ad, i64 3
  %i.ak = and <4 x i32> %i.aj, <i32 255, i32 -1, i32 255, i32 255>
  %i.al = sub nsw <4 x i32> %i.ak, %i.ac
  %i.am = insertelement <4 x i32> poison, i32 %i.x, i64 2
  %i.an = shufflevector <4 x i32> %i.ac, <4 x i32> %i.am, <4 x i32> <i32 3, i32 2, i32 6, i32 0>
  %i.ao = uitofp nneg <4 x i32> %i.an to <4 x float> ; 2 uses
  %i.ap = sitofp <4 x i32> %i.al to <4 x float>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 16 uses
  %i.at = insertelement <2 x float> poison, float %i.e, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %0, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i, %bb.a
  %.0336.i = phi i32 [ 0, %bb.a ], [ %i.bd, %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i ] ; 2 uses
  %i.bd = add nuw nsw i32 %.0336.i, 1             ; 3 uses
  %i.be = uitofp nneg i32 %.0336.i to float
  %i.bf = uitofp nneg i32 %i.bd to float
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.be, i64 1
  %i.bi = fdiv <2 x float> %i.bh, %i.ay           ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.ba, <2 x float> %i.bc) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.aq, <4 x float> %i.ao)
  %i.bm = fadd <4 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fptoui <4 x float> %i.bm to <4 x i32>   ; 2 uses
  %5 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %6 = trunc <4 x i32> %5 to <4 x i8>
  %7 = bitcast <4 x i8> %6 to i32                 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.aq, <4 x float> %i.ao)
  %i.bq = fadd <4 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fptoui <4 x float> %i.bq to <4 x i32>   ; 2 uses
  %8 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %9 = trunc <4 x i32> %8 to <4 x i8>
  %10 = bitcast <4 x i8> %9 to i32                ; 2 uses
  %i.bs = extractelement <2 x float> %i.bj, i64 0 ; 3 uses
  %i.bt = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.bu = fsub float %i.bs, %i.bt
  %i.bv = fmul float %i.bu, 2.500000e-01
  %i.bw = tail call float @tanf(float noundef %i.bv) #12
  %i.bx = fmul float %i.bw, f0x3FAAAAAB           ; 2 uses
  %i.by = tail call float @cosf(float noundef %i.bt) #12 ; 3 uses
  %i.bz = tail call float @sinf(float noundef %i.bt) #12 ; 3 uses
  %i.ca = tail call float @cosf(float noundef %i.bs) #12 ; 3 uses
  %i.cb = tail call float @sinf(float noundef %i.bs) #12 ; 3 uses
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> <float 3.276700e+04, float 5.000000e-01>, <2 x float> %i.au) ; 4 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 1 ; 5 uses
  %i.cg = extractelement <2 x float> %i.ce, i64 0 ; 3 uses
  %i.ch = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> <float 3.276700e+04, float 5.000000e-01>, <2 x float> %i.aw) ; 4 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1 ; 5 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 0 ; 3 uses
  %i.cm = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> <float 5.000000e-01, float 3.276700e+04>, <2 x float> %i.au) ; 4 uses
  %i.cp = extractelement <2 x float> %i.co, i64 1 ; 5 uses
  %i.cq = extractelement <2 x float> %i.co, i64 0 ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> <float 5.000000e-01, float 3.276700e+04>, <2 x float> %i.aw) ; 4 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 1 ; 5 uses
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.ce, <2 x float> %i.cj, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cx = shufflevector <2 x float> %i.ce, <2 x float> %i.cj, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.cy = fsub <4 x float> %i.cw, %i.cx
  %i.cz = fmul <4 x float> %i.cy, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.da = fdiv <4 x float> %i.cz, splat (float 3.000000e+00) ; 4 uses
  %i.db = extractelement <4 x float> %i.da, i64 0
  %i.dc = fadd float %i.cf, %i.db                 ; 2 uses
  %i.dd = extractelement <4 x float> %i.da, i64 1
  %i.de = fadd float %i.ck, %i.dd                 ; 2 uses
  %i.df = extractelement <4 x float> %i.da, i64 2
  %i.dg = fadd float %i.cf, %i.df                 ; 2 uses
  %i.dh = extractelement <4 x float> %i.da, i64 3
  %i.di = fadd float %i.ck, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.bx, 3.276700e+04          ; 4 uses
  %i.dk = fneg float %i.bz
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dk, float %i.cg) ; 2 uses
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.by, float %i.cl) ; 2 uses
  %i.dn = fneg float %i.cb
  %i.do = fneg float %i.dj
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.cb, float %i.cp) ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ca, float %i.cu) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.co, <2 x float> %i.ct, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ds = shufflevector <2 x float> %i.co, <2 x float> %i.ct, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dt = fsub <4 x float> %i.dr, %i.ds
  %i.du = fmul <4 x float> %i.dt, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.dv = fdiv <4 x float> %i.du, splat (float 3.000000e+00) ; 4 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0
  %i.dx = fadd float %i.cp, %i.dw                 ; 2 uses
  %i.dy = extractelement <4 x float> %i.dv, i64 1
  %i.dz = fadd float %i.cu, %i.dy                 ; 2 uses
  %i.ea = extractelement <4 x float> %i.dv, i64 2
  %i.eb = fadd float %i.cp, %i.ea                 ; 2 uses
  %i.ec = extractelement <4 x float> %i.dv, i64 3
  %i.ed = fadd float %i.cu, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.bx, 5.000000e-01          ; 4 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.dn, float %i.cq) ; 2 uses
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ca, float %i.cv) ; 2 uses
  %i.eh = fneg float %i.ee
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.bz, float %i.cf) ; 2 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.by, float %i.ck) ; 2 uses
  %i.ek = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 0) ; 0 uses
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cf, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ck, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.de, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dg, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.di, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cg, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cl, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dl, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dm, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dq, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cu, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dx, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dz, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.eb, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ed, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cq, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cv, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ef, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.eg, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ei, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ej, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %7)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %7)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %10)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %10)
  br i1 %.not.i, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.el = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 noundef signext 0) ; 0 uses
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cf, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ck, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.de, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dg, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.di, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cg, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cl, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dl, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dm, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dq, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cu, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dx, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dz, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.eb, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ed, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cq, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cv, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ef, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.eg, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ei, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ej, float noundef %i.m, float noundef %i.o)
  %i.em = bitcast <4 x i32> %i.bn to <16 x i8>
  %i.en = extractelement <16 x i8> %i.em, i64 8   ; 2 uses
  %i.eo = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.ep = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.eo, i32 1) ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 1
  %i.er = extractvalue { i32, i1 } %i.ep, 0       ; 4 uses
  %i.es = icmp slt i32 %i.er, 0
  %or.cond.i.i.i = or i1 %i.eq, %i.es
  br i1 %or.cond.i.i.i, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit.i, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.et = load i32, ptr %i.c, align 8, !tbaa !16  ; 4 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit.i, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.er, %i.et
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.j, !prof !23

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i
  %.053.i.i.i.i.i = phi i32 [ %i.ex, %.preheader.i.i.i.i.i ], [ %i.et, %bb.e ] ; 2 uses
  %i.ev = lshr i32 %.053.i.i.i.i.i, 1
  %i.ew = add nuw i32 %.053.i.i.i.i.i, 8
  %i.ex = add nuw i32 %i.ew, %i.ev                ; 6 uses
  %i.ey = icmp ugt i32 %i.er, %i.ex
  br i1 %i.ey, label %.preheader.i.i.i.i.i, label %.thread39.i.i.i.i.i, !llvm.loop !0

.thread39.i.i.i.i.i:                              ; preds = %.preheader.i.i.i.i.i
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.et, 0
  %i.ez = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i.i, label %bb.f, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i

bb.f:                                             ; preds = %.thread39.i.i.i.i.i
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = zext i32 %i.ex to i64
  %i.fb = tail call ptr @hb_malloc(i64 noundef %i.fa) #12 ; 4 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.fc = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.fd = zext i32 %i.fc to i64
  %i.fe = load ptr, ptr %i.as, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr readonly align 1 %i.fe, i64 range(i64 0, 103079215081) %i.fd, i1 false), !alias.scope !1339
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i: ; preds = %bb.f, %.thread39.i.i.i.i.i
  %i.ff = phi ptr [ null, %bb.f ], [ %i.ez, %.thread39.i.i.i.i.i ]
  %i.fg = zext i32 %i.ex to i64
  %i.fh = tail call ptr @hb_realloc(ptr noundef %i.ff, i64 noundef %i.fg) #12 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not22.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, %bb.g
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %.not23.i.i.i.i.i = icmp ugt i32 %i.ex, %i.fi
  br i1 %.not23.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i.i, label %bb.j

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, %bb.i, %bb.h
  %.1.i.i52.i.i.i.i.i = phi ptr [ %i.fh, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i ], [ %i.fb, %bb.h ], [ %i.fb, %bb.i ]
  store ptr %.1.i.i52.i.i.i.i.i, ptr %i.as, align 8, !tbaa !15
  store i32 %i.ex, ptr %i.c, align 8, !tbaa !16
  br label %bb.j

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i.i:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i
  %i.fj = xor i32 %i.fi, -1
end_hunk_0
begin_hunk_1_@_ZN18hb_pdf_resources_t19add_extgstate_blendEPKc:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %i.n = add nuw i32 %i.m, %i.l                   ; 4 uses
  %i.o = icmp ugt i32 %i.i, %i.n
  br i1 %i.o, label %.preheader.i.i.i.i8, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12: ; preds = %.preheader.i.i.i.i8
  %i.p = zext i32 %i.n to i64
  %i.q = tail call ptr @hb_realloc(ptr noundef %i.d, i64 noundef %i.p) #12 ; 2 uses
  %.not22.i.i.i.i13 = icmp eq ptr %i.q, null
  br i1 %.not22.i.i.i.i13, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12
  %i.r = xor i32 %.sroa.0.1, -1
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit22

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12, %bb.a
  %.sroa.0.2 = phi i32 [ %i.n, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12 ], [ %.sroa.0.1, %bb.a ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %i.q, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12 ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i6, label %_ZN15hb_vector_buf_t10append_strEPKc.exit22, label %bb.b, !prof !23

bb.b:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14
  %i.s = and i64 %i.e, 4294967295
  %i.t = zext nneg i32 %.sroa.18.0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.30.2, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull readonly align 1 %1, i64 range(i64 0, 103079215081) %i.s, i1 false), !alias.scope !1465
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit22

_ZN15hb_vector_buf_t10append_strEPKc.exit22:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14, %bb.b
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %i.i, %bb.b ], [ %.sroa.18.0, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %i.i, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 6 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.1, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %.sroa.0.2, %bb.b ], [ %i.r, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %.sroa.0.2, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 7 uses
  %.sroa.30.3 = phi ptr [ %i.d, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %.sroa.30.2, %bb.b ], [ %i.d, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %.sroa.30.2, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 6 uses
  %i.v = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.sroa.18.1, i32 3) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0         ; 4 uses
  %i.y = or i32 %i.x, %.sroa.0.3
  %i.z = icmp slt i32 %i.y, 0
  %or.cond80 = or i1 %i.w, %i.z
  br i1 %or.cond80, label %_ZN15hb_vector_buf_t10append_strEPKc.exit41, label %bb.c, !prof !64

bb.c:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit22
  %.not.i.i.i.i24 = icmp samesign ugt i32 %i.x, %.sroa.0.3
  br i1 %.not.i.i.i.i24, label %.preheader.i.i.i.i27, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, !prof !23

.preheader.i.i.i.i27:                             ; preds = %bb.c, %.preheader.i.i.i.i27
  %.053.i.i.i.i28 = phi i32 [ %i.ac, %.preheader.i.i.i.i27 ], [ %.sroa.0.3, %bb.c ] ; 2 uses
  %i.aa = lshr i32 %.053.i.i.i.i28, 1
  %i.ab = add nuw i32 %.053.i.i.i.i28, 8
  %i.ac = add nuw i32 %i.ab, %i.aa                ; 6 uses
  %i.ad = icmp ugt i32 %i.x, %i.ac
  br i1 %i.ad, label %.preheader.i.i.i.i27, label %.thread39.i.i.i.i29, !llvm.loop !0

.thread39.i.i.i.i29:                              ; preds = %.preheader.i.i.i.i27
  %.not8.i.i.i.i.i.i30 = icmp ne i32 %.sroa.0.3, 0
  %.not9.i.i.i.i.i.i38 = icmp eq ptr %.sroa.30.3, null
  %or.cond81 = or i1 %.not8.i.i.i.i.i.i30, %.not9.i.i.i.i.i.i38
  %i.ae = zext i32 %i.ac to i64                   ; 2 uses
  br i1 %or.cond81, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31, label %bb.d

bb.d:                                             ; preds = %.thread39.i.i.i.i29
  %i.af = tail call ptr @hb_malloc(i64 noundef %i.ae) #12 ; 4 uses
  %.not10.i.i.i.i.i.i39 = icmp eq ptr %i.af, null
  br i1 %.not10.i.i.i.i.i.i39, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i40 = icmp eq i32 %.sroa.18.1, 0
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i32 %.sroa.18.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %.sroa.30.3, i64 range(i64 0, 103079215081) %i.ag, i1 false), !alias.scope !1466
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31: ; preds = %.thread39.i.i.i.i29
  %i.ah = tail call ptr @hb_realloc(ptr noundef %.sroa.30.3, i64 noundef %i.ae) #12 ; 2 uses
  %.not22.i.i.i.i32 = icmp eq ptr %i.ah, null
  br i1 %.not22.i.i.i.i32, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37:    ; preds = %bb.d, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31
  %i.ai = xor i32 %.sroa.0.3, -1
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit41

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33: ; preds = %bb.c, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31, %bb.f, %bb.e
  %.sroa.0.4 = phi i32 [ %i.ac, %bb.e ], [ %.sroa.0.3, %bb.c ], [ %i.ac, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31 ], [ %i.ac, %bb.f ]
  %.sroa.30.4 = phi ptr [ %i.af, %bb.e ], [ %.sroa.30.3, %bb.c ], [ %i.ah, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31 ], [ %i.af, %bb.f ] ; 2 uses
  %i.aj = zext nneg i32 %.sroa.18.1 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.30.4, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.10, i64 range(i64 0, 103079215081) 3, i1 false), !alias.scope !1467
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit41

_ZN15hb_vector_buf_t10append_strEPKc.exit41:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit22, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33
  %.sroa.18.2 = phi i32 [ %.sroa.18.1, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %i.x, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %.sroa.18.1, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ]
  %.sroa.0.5 = phi i32 [ %.sroa.0.3, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %.sroa.0.4, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %i.ai, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ] ; 2 uses
  %.sroa.30.5 = phi ptr [ %.sroa.30.3, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %.sroa.30.4, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %.sroa.30.3, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52 ; 3 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i = icmp slt i32 %i.am, %i.an
  br i1 %.not.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit41
  %i.ao = add i32 %i.am, 1                        ; 2 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i42 = icmp ugt i32 %i.ao, %i.an
  br i1 %.not.i.i.i42, label %.preheader.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, !prof !23

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.as, %.preheader.i.i.i ], [ %i.an, %bb.h ] ; 2 uses
  %i.aq = lshr i32 %.039.i.i.i, 1
  %i.ar = add i32 %.039.i.i.i, 8
  %i.as = add i32 %i.ar, %i.aq                    ; 6 uses
  %i.at = icmp ugt i32 %i.ao, %i.as
  br i1 %i.at, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !2

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.au = icmp ugt i32 %i.as, 178956970
  br i1 %i.au, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %.thread.i.i.i
  %i.av = tail call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.as) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not22.i.i.i, label %bb.j, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.as, %i.aw
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.j, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.an, %.thread.i.i.i ], [ %i.aw, %bb.j ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !21
  store i32 %i.as, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, %bb.j, %bb.h, %_ZN15hb_vector_buf_t10append_strEPKc.exit41
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = load i32, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !20
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %.sroa.0.5, ptr %i.bd, align 8, !tbaa !16
  store i32 %.sroa.18.2, ptr %i.be, align 4, !tbaa !14
  store ptr %.sroa.30.5, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i32 2, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.bh = add i32 %.sroa.0.5, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.bh, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.k:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  tail call void @hb_free(ptr noundef %.sroa.30.5) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %bb.k, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i
  %i.bi = add i32 %i.am, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bk = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, ptr noundef nonnull @.str.12) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i32 noundef %i.b) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i8 noundef signext 32) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i32 noundef %i.bi) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, ptr noundef nonnull @.str.29) ; 0 uses
  ret i32 %i.b
}

declare void @hb_paint_funcs_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTS11hb_vector_tIcLb0EE", !8, i64 0, !8, i64 4, !12, i64 8}
!14 = !{!13, !8, i64 4}
!15 = !{!13, !12, i64 8}
!16 = !{!13, !8, i64 0}
!17 = !{!"p1 _ZTS12hb_pdf_obj_t", !11, i64 0}
!18 = !{!"_ZTS11hb_vector_tI12hb_pdf_obj_tLb0EE", !8, i64 0, !8, i64 4, !17, i64 8}
!19 = !{!18, !8, i64 0}
!20 = !{!18, !8, i64 4}
!21 = !{!18, !17, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"_ZTS11hb_atomic_tIiE", !8, i64 0}
!26 = !{!"_ZTS20hb_reference_count_t", !25, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"_ZTS11hb_atomic_tIbE", !27, i64 0}
!29 = !{!"p1 _ZTS20hb_user_data_array_t", !11, i64 0}
!30 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !29, i64 0}
!31 = !{!"_ZTS18hb_object_header_t", !26, i64 0, !28, i64 4, !30, i64 8}
!32 = !{!"_ZTS18hb_vector_format_t", !7, i64 0}
!33 = !{!"float", !7, i64 0}
!34 = !{!"_ZTS14hb_transform_tIfE", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!35 = !{!"_ZTS19hb_vector_extents_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12}
!36 = !{!"short", !7, i64 0}
!37 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb0EE6item_tE", !11, i64 0}
!38 = !{!"_ZTS12hb_hashmap_tIjjLb0EE", !31, i64 0, !27, i64 16, !36, i64 18, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !37, i64 40}
!39 = !{!"_ZTS15hb_vector_buf_t", !13, i64 0, !8, i64 16}
!40 = !{!"p1 _ZTS15hb_vector_buf_t", !11, i64 0}
!41 = !{!"_ZTS11hb_vector_tI15hb_vector_buf_tLb0EE", !8, i64 0, !8, i64 4, !40, i64 8}
!42 = !{!"long", !7, i64 0}
!43 = !{!"_ZTS21hb_vector_path_sink_t", !40, i64 0, !8, i64 8, !33, i64 12, !33, i64 16}
!44 = !{!"p1 _ZTS8hb_set_t", !11, i64 0}
!45 = !{!"_ZTS11hb_vector_tI15hb_color_stop_tLb0EE", !8, i64 0, !8, i64 4, !11, i64 8}
!46 = !{!"p1 _ZTS9hb_blob_t", !11, i64 0}
!47 = !{!"_ZTS17hb_vector_paint_t", !31, i64 0, !32, i64 16, !34, i64 20, !33, i64 44, !33, i64 48, !35, i64 52, !27, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !38, i64 88, !12, i64 136, !8, i64 144, !39, i64 152, !39, i64 176, !41, i64 200, !42, i64 216, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !42, i64 240, !43, i64 248, !8, i64 272, !8, i64 276, !8, i64 280, !44, i64 288, !45, i64 296, !39, i64 312, !46, i64 336}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!47, !8, i64 204}
!51 = !{!"_ZTS18hb_pdf_resources_t", !18, i64 0, !39, i64 16, !39, i64 40, !39, i64 64, !8, i64 88, !8, i64 92, !8, i64 96}
!52 = !{!51, !8, i64 4}
!53 = !{!39, !8, i64 16}
!54 = !{!"_ZTS21hb_vector_blob_meta_t", !12, i64 0, !8, i64 8, !27, i64 12, !27, i64 13}
!55 = !{!54, !27, i64 12}
!56 = !{!54, !12, i64 0}
!57 = !{!54, !8, i64 8}
!58 = !{!"branch_weights", i32 2000, i32 4002001}
!59 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!60 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!61 = !{!8, !8, i64 0}
!62 = !{!"branch_weights", i32 4001, i32 4000000}
!63 = !{!7, !7, i64 0}
!64 = !{!"branch_weights", i32 6003000, i32 -294967296}
!65 = !{!54, !27, i64 13}
!66 = !{!51, !8, i64 92}
!67 = !{!51, !8, i64 88}
!68 = !{!12, !12, i64 0}
!69 = !{!41, !8, i64 4}
!70 = !{!41, !40, i64 8}
!71 = !{!47, !33, i64 44}
!72 = !{!47, !33, i64 48}
!73 = !{!47, !8, i64 192}
!74 = !{!33, !33, i64 0}
!75 = !{!45, !8, i64 4}
!76 = !{!45, !11, i64 8}
!77 = !{!47, !11, i64 304}
!78 = !{!"_ZTS15hb_color_stop_t", !33, i64 0, !8, i64 4, !8, i64 8}
!79 = !{!78, !8, i64 8}
!80 = !{!"p1 _ZTS18hb_pdf_resources_t", !11, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!78, !33, i64 0}
!83 = !{i64 0, i64 4, !74, i64 4, i64 4, !61, i64 8, i64 4, !61}
!84 = !{!"_ZTS18hb_pdf_sweep_ctx_t", !40, i64 0, !40, i64 8, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36}
!85 = !{!84, !40, i64 0}
!86 = !{!84, !40, i64 8}
!87 = !{!"p1 float", !11, i64 0}
!88 = !{!"any p2 pointer", !11, i64 0}
!89 = !{!"p2 _ZTS18hb_pdf_resources_t", !88, i64 0}
!90 = !{!41, !8, i64 0}
!91 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!92 = !{!47, !8, i64 300}
!93 = distinct !{!93, !22}
!94 = !{!"branch_weights", i32 1, i32 1999}
!95 = !{!"branch_weights", i32 0, i32 1}
!96 = distinct !{!96, !"_ZL9hb_memcpyPvPKvm"}
!97 = distinct !{!97, !96, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!98 = distinct !{!98, !96, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!99 = distinct !{!99, !"_ZL9hb_memcpyPvPKvm"}
!100 = distinct !{!100, !99, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!101 = distinct !{!101, !99, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!102 = distinct !{!102, !"_ZL9hb_memcpyPvPKvm"}
!103 = distinct !{!103, !102, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!104 = distinct !{!104, !102, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!105 = distinct !{!105, !"_ZL9hb_memcpyPvPKvm"}
!106 = distinct !{!106, !105, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!107 = distinct !{!107, !105, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!108 = distinct !{!108, !"_ZL9hb_memcpyPvPKvm"}
!109 = distinct !{!109, !108, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!110 = distinct !{!110, !108, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!111 = distinct !{!111, !"_ZL9hb_memcpyPvPKvm"}
!112 = distinct !{!112, !111, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!113 = distinct !{!113, !111, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!114 = distinct !{!114, !"_ZL9hb_memcpyPvPKvm"}
!115 = distinct !{!115, !114, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!116 = distinct !{!116, !114, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!117 = distinct !{!117, !"_ZL9hb_memcpyPvPKvm"}
!118 = distinct !{!118, !117, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!119 = distinct !{!119, !117, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!120 = distinct !{!120, !"_ZL9hb_memcpyPvPKvm"}
!121 = distinct !{!121, !120, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!122 = distinct !{!122, !120, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!123 = distinct !{!123, !"_ZL9hb_memcpyPvPKvm"}
!124 = distinct !{!124, !123, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!125 = distinct !{!125, !123, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = distinct !{!126, !"_ZL9hb_memcpyPvPKvm"}
!127 = distinct !{!127, !126, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!128 = distinct !{!128, !126, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!129 = distinct !{!129, !"_ZL9hb_memcpyPvPKvm"}
!130 = distinct !{!130, !129, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!131 = distinct !{!131, !129, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!132 = distinct !{!132, !"_ZL9hb_memcpyPvPKvm"}
!133 = distinct !{!133, !132, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!134 = distinct !{!134, !132, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!135 = distinct !{!135, !"_ZL9hb_memcpyPvPKvm"}
!136 = distinct !{!136, !135, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!137 = distinct !{!137, !135, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!138 = distinct !{!138, !"_ZL9hb_memcpyPvPKvm"}
!139 = distinct !{!139, !138, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!140 = distinct !{!140, !138, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!141 = distinct !{!141, !"_ZL9hb_memcpyPvPKvm"}
!142 = distinct !{!142, !141, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!143 = distinct !{!143, !141, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!144 = distinct !{!144, !"_ZL9hb_memcpyPvPKvm"}
!145 = distinct !{!145, !144, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!146 = distinct !{!146, !144, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!147 = distinct !{!147, !"_ZL9hb_memcpyPvPKvm"}
!148 = distinct !{!148, !147, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!149 = distinct !{!149, !147, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!150 = distinct !{!150, !"_ZL9hb_memcpyPvPKvm"}
!151 = distinct !{!151, !150, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!152 = distinct !{!152, !150, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!153 = distinct !{!153, !"_ZL9hb_memcpyPvPKvm"}
!154 = distinct !{!154, !153, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!155 = distinct !{!155, !153, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!156 = distinct !{!156, !"_ZL9hb_memcpyPvPKvm"}
!157 = distinct !{!157, !156, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!158 = distinct !{!158, !156, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!159 = distinct !{!159, !"_ZL9hb_memcpyPvPKvm"}
!160 = distinct !{!160, !159, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!161 = distinct !{!161, !159, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!162 = distinct !{!162, !"_ZL9hb_memcpyPvPKvm"}
!163 = distinct !{!163, !162, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!164 = distinct !{!164, !162, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!165 = distinct !{!165, !"_ZL9hb_memcpyPvPKvm"}
!166 = distinct !{!166, !165, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!167 = distinct !{!167, !165, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!168 = distinct !{!168, !"_ZL9hb_memcpyPvPKvm"}
!169 = distinct !{!169, !168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!170 = distinct !{!170, !168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!171 = distinct !{!171, !"_ZL9hb_memcpyPvPKvm"}
!172 = distinct !{!172, !171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!173 = distinct !{!173, !171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!174 = distinct !{!174, !"_ZL9hb_memcpyPvPKvm"}
!175 = distinct !{!175, !174, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!176 = distinct !{!176, !174, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!177 = distinct !{!177, !"_ZL9hb_memcpyPvPKvm"}
!178 = distinct !{!178, !177, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!179 = distinct !{!179, !177, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!180 = distinct !{!180, !"_ZL9hb_memcpyPvPKvm"}
end_hunk_1
