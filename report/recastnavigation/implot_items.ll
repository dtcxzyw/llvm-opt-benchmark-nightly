Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_items?download=true
inline.NumInlined: 15730
inline.NumDeleted: 1729
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN6ImPlot11PlotHeatmapIaEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
  store i8 0, ptr %i.ac, align 1, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1456
  store i8 0, ptr %i.ad, align 4, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  store ptr null, ptr %i.ae, align 8, !tbaa !140
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ai = and i32 %9, 1024
  %i.aj = icmp ne i32 %i.ai, 0
  call void @_ZN6ImPlot13RenderHeatmapIaEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true, i1 noundef zeroext %i.aj)
  %i.ak = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.am, align 4, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.an, align 4, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ao, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ap, align 4, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1448
  store float -1.000000e+00, ptr %i.aq, align 4, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.ar, align 4, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.as, align 4, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1416
  store float -1.000000e+00, ptr %i.at, align 4, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 1420
  store i32 -1, ptr %i.au, align 4, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1457
  store i8 0, ptr %i.av, align 1, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1456
  store i8 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !141
  store ptr null, ptr %i.ax, align 8, !tbaa !140
  br label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RenderHeatmapIaEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #4 comdat {
bb.a:
  %11 = alloca %"struct.ImPlot::RendererRectC.1042", align 8 ; 20 uses
  %12 = alloca %"struct.ImPlot::RendererRectC", align 8 ; 20 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %"struct.ImPlot::GetterHeatmapColMaj", align 8 ; 14 uses
  %16 = alloca %"struct.ImPlot::GetterHeatmapRowMaj", align 8 ; 14 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.i ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.p = load float, ptr %i.o, align 8, !tbaa !156
  %i.q = fpext float %i.p to double               ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !1255 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !1256 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.w = load double, ptr %i.v, align 8, !tbaa !157 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.y = load double, ptr %i.x, align 8, !tbaa !1257 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1258 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.ag = load float, ptr %i.af, align 8, !tbaa !156
  %i.ah = fpext float %i.ag to double             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1255 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1256 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.an = load double, ptr %i.am, align 8, !tbaa !157 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1257 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !1258 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !158 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !159 ; 4 uses
  %i.aw = fcmp oeq double %4, 0.000000e+00
  %i.ax = fcmp oeq double %5, 0.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nsw i32 %3, %2                      ; 4 uses
  %i.az = load i8, ptr %1, align 1, !tbaa !881    ; 7 uses
  %i.ba = icmp sgt i32 %i.ay, 1
  br i1 %i.ba, label %iter.check, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ay to i64 ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check277 = icmp ult i32 %i.ay, 33
  br i1 %min.iters.check277, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 24
  %n.vec = and i64 %i.bb, -32                     ; 4 uses
  %i.bd = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi278 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi279 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi280 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 17
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !881 ; 2 uses
  %wide.load281 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !881 ; 2 uses
  %i.bh = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi279) ; 2 uses
  %i.bi = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load281, <16 x i8> %vec.phi280) ; 2 uses
  %i.bj = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.bk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load281, <16 x i8> %vec.phi278) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2786

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bj, <16 x i8> %i.bk)
  %i.bm = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax282 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.bh, <16 x i8> %i.bi)
  %i.bn = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax282) ; 3 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bm, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %bc.merge.rdx283 = phi i8 [ %i.bn, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %n.vec284 = and i64 %i.bb, -8                   ; 3 uses
  %19 = or disjoint i64 %n.vec284, 1
  %broadcast.splatinsert285 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat286 = shufflevector <8 x i8> %broadcast.splatinsert285, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x i8> poison, i8 %bc.merge.rdx283, i64 0
  %broadcast.splat288 = shufflevector <8 x i8> %broadcast.splatinsert287, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi290 = phi <8 x i8> [ %broadcast.splat286, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %vec.phi291 = phi <8 x i8> [ %broadcast.splat288, %vec.epilog.ph ], [ %i.bq, %vec.epilog.vector.body ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %index289
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %wide.load292 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !881 ; 2 uses
  %i.bq = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load292, <8 x i8> %vec.phi291) ; 2 uses
  %i.br = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load292, <8 x i8> %vec.phi290) ; 2 uses
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2787

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.br) ; 2 uses
  %i.bu = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.bq) ; 2 uses
  %cmp.n294 = icmp eq i64 %i.bb, %n.vec284
  br i1 %cmp.n294, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.az, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.az, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.smin.i8(i8 %i.bw, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.smax.i8(i8 %i.bw, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2788

_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.019.lcssa.i = phi i8 [ %i.az, %bb.b ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.az, %bb.b ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.bx = sitofp i8 %.019.lcssa.i to double
  %i.by = sitofp i8 %.018.lcssa.i to double
  br label %bb.c

bb.c:                                             ; preds = %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, %bb.a
  %.0107 = phi double [ %i.by, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %5, %bb.a ] ; 5 uses
  %.0 = phi double [ %i.bx, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %4, %bb.a ] ; 7 uses
  %i.bz = fcmp oeq double %.0, %.0107
  br i1 %i.bz, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ca = load double, ptr %7, align 8, !tbaa !1252 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = tail call noundef double %i.ac(double noundef %i.ca, ptr noundef %i.ae) #16, !inline_history !22
  %i.cc = fsub double %i.cb, %i.y
  %i.cd = fsub double %i.aa, %i.y
  %i.ce = fdiv double %i.cc, %i.cd
  %i.cf = fsub double %i.u, %i.s
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117

_ZNK6ImPlot12Transformer1clIdEEfT_.exit117:       ; preds = %bb.d, %bb.e
  %.0.i116 = phi double [ %i.cg, %bb.e ], [ %i.ca, %bb.d ]
  %i.ch = fsub double %.0.i116, %i.s
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ch, double %i.q)
  %i.cj = fptrunc double %i.ci to float
  %.sroa.0231.0.vec.insert = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1253 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null               ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117
  %i.cm = tail call noundef double %i.at(double noundef %i.cl, ptr noundef %i.av) #16, !inline_history !22
  %i.cn = fsub double %i.cm, %i.ap
  %i.co = fsub double %i.ar, %i.ap
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fsub double %i.al, %i.aj
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cp, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit

_ZNK6ImPlot12Transformer1clIdEEfT_.exit:          ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, %bb.f
  %.0.i = phi double [ %i.cr, %bb.f ], [ %i.cl, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117 ]
  %i.cs = fsub double %.0.i, %i.aj
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cs, double %i.ah)
  %i.cu = fptrunc double %i.ct to float
  %.sroa.0231.4.vec.insert = insertelement <2 x float> %.sroa.0231.0.vec.insert, float %i.cu, i64 1
  store <2 x float> %.sroa.0231.4.vec.insert, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.cv = load double, ptr %8, align 8, !tbaa !1252 ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit
  %i.cw = tail call noundef double %i.ac(double noundef %i.cv, ptr noundef %i.ae) #16, !inline_history !22
  %i.cx = fsub double %i.cw, %i.y
  %i.cy = fsub double %i.aa, %i.y
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fsub double %i.u, %i.s
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123

_ZNK6ImPlot12Transformer1clIdEEfT_.exit123:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, %bb.g
  %.0.i122 = phi double [ %i.db, %bb.g ], [ %i.cv, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit ]
  %i.dc = fsub double %.0.i122, %i.s
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.w, double %i.dc, double %i.q)
  %i.de = fptrunc double %i.dd to float
  %.sroa.0225.0.vec.insert = insertelement <2 x float> poison, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1253 ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120, label %bb.h

bb.h:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123
  %i.dh = tail call noundef double %i.at(double noundef %i.dg, ptr noundef %i.av) #16, !inline_history !22
  %i.di = fsub double %i.dh, %i.ap
  %i.dj = fsub double %i.ar, %i.ap
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fsub double %i.al, %i.aj
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120

_ZNK6ImPlot12Transformer1clIdEEfT_.exit120:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, %bb.h
  %.0.i119 = phi double [ %i.dm, %bb.h ], [ %i.dg, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123 ]
  %i.dn = fsub double %.0.i119, %i.aj
  %i.do = tail call double @llvm.fmuladd.f64(double %i.an, double %i.dn, double %i.ah)
  %i.dp = fptrunc double %i.do to float
  %.sroa.0225.4.vec.insert = insertelement <2 x float> %.sroa.0225.0.vec.insert, float %i.dp, i64 1
  store <2 x float> %.sroa.0225.4.vec.insert, ptr %14, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 764
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1262
  %i.ds = tail call noundef i32 @_ZN6ImPlot19GetColormapColorU32Eii(i32 noundef 0, i32 noundef %i.dr) #16
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.ds, float noundef 0.000000e+00, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %. = select i1 %9, double -1.000000e+00, double 1.000000e+00 ; 4 uses
  %.114 = select i1 %9, ptr %8, ptr %7
  %.in = getelementptr inbounds nuw i8, ptr %.114, i64 8
  %i.dt = load double, ptr %.in, align 8, !tbaa !1253 ; 4 uses
  %i.du = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.dv = insertelement <2 x i32> %i.du, i32 %2, i64 1 ; 2 uses
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>  ; 2 uses
  %i.dx = mul nsw i32 %3, %2                      ; 4 uses
  br i1 %10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %1, ptr %15, align 8, !tbaa !1264
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !2793
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %2, ptr %i.dz, align 4, !tbaa !1265
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %3, ptr %i.ea, align 8, !tbaa !2794
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %.0, ptr %i.eb, align 8, !tbaa !1266
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %.0107, ptr %i.ec, align 8, !tbaa !1267
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ee = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ef = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.dw          ; 2 uses
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ej = extractelement <2 x double> %i.ef, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !1268
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 64
  store double %i.dt, ptr %i.ek, align 8, !tbaa !1269
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 72
  store double %., ptr %i.el, align 8, !tbaa !1270
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.en = fmul <2 x double> %i.eh, splat (double 5.000000e-01)
  store <2 x double> %i.en, ptr %i.em, align 8, !tbaa !63
  %i.eo = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ep = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.dx, ptr %12, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !151 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 2448
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !94
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2452
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.fc ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 272
  %i.ff = load float, ptr %i.fe, align 8, !tbaa !156
  %i.fg = fpext float %i.ff to double
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 296
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !157
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 280
end_hunk_0
begin_hunk_1_@_ZN6ImPlot11PlotHeatmapIhEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
  store i8 0, ptr %i.ac, align 1, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1456
  store i8 0, ptr %i.ad, align 4, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  store ptr null, ptr %i.ae, align 8, !tbaa !140
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ai = and i32 %9, 1024
  %i.aj = icmp ne i32 %i.ai, 0
  call void @_ZN6ImPlot13RenderHeatmapIhEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true, i1 noundef zeroext %i.aj)
  %i.ak = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.am, align 4, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.an, align 4, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ao, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ap, align 4, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1448
  store float -1.000000e+00, ptr %i.aq, align 4, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.ar, align 4, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.as, align 4, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1416
  store float -1.000000e+00, ptr %i.at, align 4, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 1420
  store i32 -1, ptr %i.au, align 4, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1457
  store i8 0, ptr %i.av, align 1, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1456
  store i8 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !141
  store ptr null, ptr %i.ax, align 8, !tbaa !140
  br label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RenderHeatmapIhEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #4 comdat {
bb.a:
  %11 = alloca %"struct.ImPlot::RendererRectC.1046", align 8 ; 20 uses
  %12 = alloca %"struct.ImPlot::RendererRectC.1045", align 8 ; 20 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %"struct.ImPlot::GetterHeatmapColMaj.1043", align 8 ; 14 uses
  %16 = alloca %"struct.ImPlot::GetterHeatmapRowMaj.1044", align 8 ; 14 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.i ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.p = load float, ptr %i.o, align 8, !tbaa !156
  %i.q = fpext float %i.p to double               ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !1255 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !1256 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.w = load double, ptr %i.v, align 8, !tbaa !157 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.y = load double, ptr %i.x, align 8, !tbaa !1257 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1258 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.ag = load float, ptr %i.af, align 8, !tbaa !156
  %i.ah = fpext float %i.ag to double             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1255 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1256 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.an = load double, ptr %i.am, align 8, !tbaa !157 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1257 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !1258 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !158 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !159 ; 4 uses
  %i.aw = fcmp oeq double %4, 0.000000e+00
  %i.ax = fcmp oeq double %5, 0.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nsw i32 %3, %2                      ; 4 uses
  %i.az = load i8, ptr %1, align 1, !tbaa !881    ; 7 uses
  %i.ba = icmp sgt i32 %i.ay, 1
  br i1 %i.ba, label %iter.check, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ay to i64 ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check277 = icmp ult i32 %i.ay, 33
  br i1 %min.iters.check277, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 24
  %n.vec = and i64 %i.bb, -32                     ; 4 uses
  %i.bd = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi278 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi279 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi280 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 17
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !881 ; 2 uses
  %wide.load281 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !881 ; 2 uses
  %i.bh = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi279) ; 2 uses
  %i.bi = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load281, <16 x i8> %vec.phi280) ; 2 uses
  %i.bj = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.bk = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load281, <16 x i8> %vec.phi278) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2799

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bj, <16 x i8> %i.bk)
  %i.bm = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax282 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bh, <16 x i8> %i.bi)
  %i.bn = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax282) ; 3 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bm, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %bc.merge.rdx283 = phi i8 [ %i.bn, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %n.vec284 = and i64 %i.bb, -8                   ; 3 uses
  %19 = or disjoint i64 %n.vec284, 1
  %broadcast.splatinsert285 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat286 = shufflevector <8 x i8> %broadcast.splatinsert285, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x i8> poison, i8 %bc.merge.rdx283, i64 0
  %broadcast.splat288 = shufflevector <8 x i8> %broadcast.splatinsert287, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi290 = phi <8 x i8> [ %broadcast.splat286, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %vec.phi291 = phi <8 x i8> [ %broadcast.splat288, %vec.epilog.ph ], [ %i.bq, %vec.epilog.vector.body ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %index289
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %wide.load292 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !881 ; 2 uses
  %i.bq = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load292, <8 x i8> %vec.phi291) ; 2 uses
  %i.br = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load292, <8 x i8> %vec.phi290) ; 2 uses
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2800

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.br) ; 2 uses
  %i.bu = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.bq) ; 2 uses
  %cmp.n294 = icmp eq i64 %i.bb, %n.vec284
  br i1 %cmp.n294, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.az, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.az, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.bw, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.bw, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2801

_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.019.lcssa.i = phi i8 [ %i.az, %bb.b ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.az, %bb.b ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.bx = uitofp i8 %.019.lcssa.i to double
  %i.by = uitofp i8 %.018.lcssa.i to double
  br label %bb.c

bb.c:                                             ; preds = %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, %bb.a
  %.0107 = phi double [ %i.by, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %5, %bb.a ] ; 5 uses
  %.0 = phi double [ %i.bx, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %4, %bb.a ] ; 7 uses
  %i.bz = fcmp oeq double %.0, %.0107
  br i1 %i.bz, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ca = load double, ptr %7, align 8, !tbaa !1252 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = tail call noundef double %i.ac(double noundef %i.ca, ptr noundef %i.ae) #16, !inline_history !22
  %i.cc = fsub double %i.cb, %i.y
  %i.cd = fsub double %i.aa, %i.y
  %i.ce = fdiv double %i.cc, %i.cd
  %i.cf = fsub double %i.u, %i.s
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117

_ZNK6ImPlot12Transformer1clIdEEfT_.exit117:       ; preds = %bb.d, %bb.e
  %.0.i116 = phi double [ %i.cg, %bb.e ], [ %i.ca, %bb.d ]
  %i.ch = fsub double %.0.i116, %i.s
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ch, double %i.q)
  %i.cj = fptrunc double %i.ci to float
  %.sroa.0231.0.vec.insert = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1253 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null               ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117
  %i.cm = tail call noundef double %i.at(double noundef %i.cl, ptr noundef %i.av) #16, !inline_history !22
  %i.cn = fsub double %i.cm, %i.ap
  %i.co = fsub double %i.ar, %i.ap
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fsub double %i.al, %i.aj
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cp, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit

_ZNK6ImPlot12Transformer1clIdEEfT_.exit:          ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, %bb.f
  %.0.i = phi double [ %i.cr, %bb.f ], [ %i.cl, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117 ]
  %i.cs = fsub double %.0.i, %i.aj
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cs, double %i.ah)
  %i.cu = fptrunc double %i.ct to float
  %.sroa.0231.4.vec.insert = insertelement <2 x float> %.sroa.0231.0.vec.insert, float %i.cu, i64 1
  store <2 x float> %.sroa.0231.4.vec.insert, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.cv = load double, ptr %8, align 8, !tbaa !1252 ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit
  %i.cw = tail call noundef double %i.ac(double noundef %i.cv, ptr noundef %i.ae) #16, !inline_history !22
  %i.cx = fsub double %i.cw, %i.y
  %i.cy = fsub double %i.aa, %i.y
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fsub double %i.u, %i.s
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123

_ZNK6ImPlot12Transformer1clIdEEfT_.exit123:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, %bb.g
  %.0.i122 = phi double [ %i.db, %bb.g ], [ %i.cv, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit ]
  %i.dc = fsub double %.0.i122, %i.s
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.w, double %i.dc, double %i.q)
  %i.de = fptrunc double %i.dd to float
  %.sroa.0225.0.vec.insert = insertelement <2 x float> poison, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1253 ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120, label %bb.h

bb.h:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123
  %i.dh = tail call noundef double %i.at(double noundef %i.dg, ptr noundef %i.av) #16, !inline_history !22
  %i.di = fsub double %i.dh, %i.ap
  %i.dj = fsub double %i.ar, %i.ap
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fsub double %i.al, %i.aj
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120

_ZNK6ImPlot12Transformer1clIdEEfT_.exit120:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, %bb.h
  %.0.i119 = phi double [ %i.dm, %bb.h ], [ %i.dg, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123 ]
  %i.dn = fsub double %.0.i119, %i.aj
  %i.do = tail call double @llvm.fmuladd.f64(double %i.an, double %i.dn, double %i.ah)
  %i.dp = fptrunc double %i.do to float
  %.sroa.0225.4.vec.insert = insertelement <2 x float> %.sroa.0225.0.vec.insert, float %i.dp, i64 1
  store <2 x float> %.sroa.0225.4.vec.insert, ptr %14, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 764
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1262
  %i.ds = tail call noundef i32 @_ZN6ImPlot19GetColormapColorU32Eii(i32 noundef 0, i32 noundef %i.dr) #16
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.ds, float noundef 0.000000e+00, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %. = select i1 %9, double -1.000000e+00, double 1.000000e+00 ; 4 uses
  %.114 = select i1 %9, ptr %8, ptr %7
  %.in = getelementptr inbounds nuw i8, ptr %.114, i64 8
  %i.dt = load double, ptr %.in, align 8, !tbaa !1253 ; 4 uses
  %i.du = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.dv = insertelement <2 x i32> %i.du, i32 %2, i64 1 ; 2 uses
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>  ; 2 uses
  %i.dx = mul nsw i32 %3, %2                      ; 4 uses
  br i1 %10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %1, ptr %15, align 8, !tbaa !1282
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !2806
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %2, ptr %i.dz, align 4, !tbaa !1283
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %3, ptr %i.ea, align 8, !tbaa !2807
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %.0, ptr %i.eb, align 8, !tbaa !1284
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %.0107, ptr %i.ec, align 8, !tbaa !1285
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ee = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ef = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.dw          ; 2 uses
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ej = extractelement <2 x double> %i.ef, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !1286
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 64
  store double %i.dt, ptr %i.ek, align 8, !tbaa !1287
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 72
  store double %., ptr %i.el, align 8, !tbaa !1288
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.en = fmul <2 x double> %i.eh, splat (double 5.000000e-01)
  store <2 x double> %i.en, ptr %i.em, align 8, !tbaa !63
  %i.eo = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ep = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.dx, ptr %12, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !151 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 2448
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !94
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2452
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.fc ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 272
  %i.ff = load float, ptr %i.fe, align 8, !tbaa !156
  %i.fg = fpext float %i.ff to double
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 296
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !157
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 280
end_hunk_1
begin_hunk_2_@_ZN6ImPlot11PlotHeatmapIsEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
  store i8 0, ptr %i.ac, align 1, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1456
  store i8 0, ptr %i.ad, align 4, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  store ptr null, ptr %i.ae, align 8, !tbaa !140
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ai = and i32 %9, 1024
  %i.aj = icmp ne i32 %i.ai, 0
  call void @_ZN6ImPlot13RenderHeatmapIsEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true, i1 noundef zeroext %i.aj)
  %i.ak = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.am, align 4, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.an, align 4, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ao, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ap, align 4, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1448
  store float -1.000000e+00, ptr %i.aq, align 4, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.ar, align 4, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.as, align 4, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1416
  store float -1.000000e+00, ptr %i.at, align 4, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 1420
  store i32 -1, ptr %i.au, align 4, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1457
  store i8 0, ptr %i.av, align 1, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1456
  store i8 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !141
  store ptr null, ptr %i.ax, align 8, !tbaa !140
  br label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RenderHeatmapIsEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #4 comdat {
bb.a:
  %11 = alloca %"struct.ImPlot::RendererRectC.1050", align 8 ; 20 uses
  %12 = alloca %"struct.ImPlot::RendererRectC.1049", align 8 ; 20 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %"struct.ImPlot::GetterHeatmapColMaj.1047", align 8 ; 14 uses
  %16 = alloca %"struct.ImPlot::GetterHeatmapRowMaj.1048", align 8 ; 14 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.i ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.p = load float, ptr %i.o, align 8, !tbaa !156
  %i.q = fpext float %i.p to double               ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !1255 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !1256 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.w = load double, ptr %i.v, align 8, !tbaa !157 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.y = load double, ptr %i.x, align 8, !tbaa !1257 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1258 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.ag = load float, ptr %i.af, align 8, !tbaa !156
  %i.ah = fpext float %i.ag to double             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1255 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1256 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.an = load double, ptr %i.am, align 8, !tbaa !157 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1257 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !1258 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !158 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !159 ; 4 uses
  %i.aw = fcmp oeq double %4, 0.000000e+00
  %i.ax = fcmp oeq double %5, 0.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nsw i32 %3, %2                      ; 4 uses
  %i.az = load i16, ptr %1, align 2, !tbaa !900   ; 7 uses
  %i.ba = icmp sgt i32 %i.ay, 1
  br i1 %i.ba, label %iter.check, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ay to i64 ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check277 = icmp ult i32 %i.ay, 17
  br i1 %min.iters.check277, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, -16                     ; 4 uses
  %i.bd = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.az, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi278 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi279 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi280 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  %wide.load = load <8 x i16>, ptr %i.bf, align 2, !tbaa !900 ; 2 uses
  %wide.load281 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !900 ; 2 uses
  %i.bh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi279) ; 2 uses
  %i.bi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load281, <8 x i16> %vec.phi280) ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.bk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load281, <8 x i16> %vec.phi278) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2812

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bj, <8 x i16> %i.bk)
  %i.bm = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax282 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bh, <8 x i16> %i.bi)
  %i.bn = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax282) ; 3 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bm, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %bc.merge.rdx283 = phi i16 [ %i.bn, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %n.vec284 = and i64 %i.bb, -4                   ; 3 uses
  %19 = or disjoint i64 %n.vec284, 1
  %broadcast.splatinsert285 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat286 = shufflevector <4 x i16> %broadcast.splatinsert285, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <4 x i16> poison, i16 %bc.merge.rdx283, i64 0
  %broadcast.splat288 = shufflevector <4 x i16> %broadcast.splatinsert287, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi290 = phi <4 x i16> [ %broadcast.splat286, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %vec.phi291 = phi <4 x i16> [ %broadcast.splat288, %vec.epilog.ph ], [ %i.bq, %vec.epilog.vector.body ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index289
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %wide.load292 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !900 ; 2 uses
  %i.bq = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load292, <4 x i16> %vec.phi291) ; 2 uses
  %i.br = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load292, <4 x i16> %vec.phi290) ; 2 uses
  %index.next293 = add nuw i64 %index289, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2813

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.br) ; 2 uses
  %i.bu = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.bq) ; 2 uses
  %cmp.n294 = icmp eq i64 %i.bb, %n.vec284
  br i1 %cmp.n294, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.az, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.az, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.smin.i16(i16 %i.bw, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.smax.i16(i16 %i.bw, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2814

_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.019.lcssa.i = phi i16 [ %i.az, %bb.b ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.az, %bb.b ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.bx = sitofp i16 %.019.lcssa.i to double
  %i.by = sitofp i16 %.018.lcssa.i to double
  br label %bb.c

bb.c:                                             ; preds = %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, %bb.a
  %.0107 = phi double [ %i.by, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %5, %bb.a ] ; 5 uses
  %.0 = phi double [ %i.bx, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %4, %bb.a ] ; 7 uses
  %i.bz = fcmp oeq double %.0, %.0107
  br i1 %i.bz, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ca = load double, ptr %7, align 8, !tbaa !1252 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = tail call noundef double %i.ac(double noundef %i.ca, ptr noundef %i.ae) #16, !inline_history !22
  %i.cc = fsub double %i.cb, %i.y
  %i.cd = fsub double %i.aa, %i.y
  %i.ce = fdiv double %i.cc, %i.cd
  %i.cf = fsub double %i.u, %i.s
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117

_ZNK6ImPlot12Transformer1clIdEEfT_.exit117:       ; preds = %bb.d, %bb.e
  %.0.i116 = phi double [ %i.cg, %bb.e ], [ %i.ca, %bb.d ]
  %i.ch = fsub double %.0.i116, %i.s
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ch, double %i.q)
  %i.cj = fptrunc double %i.ci to float
  %.sroa.0231.0.vec.insert = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1253 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null               ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117
  %i.cm = tail call noundef double %i.at(double noundef %i.cl, ptr noundef %i.av) #16, !inline_history !22
  %i.cn = fsub double %i.cm, %i.ap
  %i.co = fsub double %i.ar, %i.ap
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fsub double %i.al, %i.aj
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cp, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit

_ZNK6ImPlot12Transformer1clIdEEfT_.exit:          ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, %bb.f
  %.0.i = phi double [ %i.cr, %bb.f ], [ %i.cl, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117 ]
  %i.cs = fsub double %.0.i, %i.aj
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cs, double %i.ah)
  %i.cu = fptrunc double %i.ct to float
  %.sroa.0231.4.vec.insert = insertelement <2 x float> %.sroa.0231.0.vec.insert, float %i.cu, i64 1
  store <2 x float> %.sroa.0231.4.vec.insert, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.cv = load double, ptr %8, align 8, !tbaa !1252 ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit
  %i.cw = tail call noundef double %i.ac(double noundef %i.cv, ptr noundef %i.ae) #16, !inline_history !22
  %i.cx = fsub double %i.cw, %i.y
  %i.cy = fsub double %i.aa, %i.y
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fsub double %i.u, %i.s
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123

_ZNK6ImPlot12Transformer1clIdEEfT_.exit123:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, %bb.g
  %.0.i122 = phi double [ %i.db, %bb.g ], [ %i.cv, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit ]
  %i.dc = fsub double %.0.i122, %i.s
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.w, double %i.dc, double %i.q)
  %i.de = fptrunc double %i.dd to float
  %.sroa.0225.0.vec.insert = insertelement <2 x float> poison, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1253 ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120, label %bb.h

bb.h:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123
  %i.dh = tail call noundef double %i.at(double noundef %i.dg, ptr noundef %i.av) #16, !inline_history !22
  %i.di = fsub double %i.dh, %i.ap
  %i.dj = fsub double %i.ar, %i.ap
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fsub double %i.al, %i.aj
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120

_ZNK6ImPlot12Transformer1clIdEEfT_.exit120:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, %bb.h
  %.0.i119 = phi double [ %i.dm, %bb.h ], [ %i.dg, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123 ]
  %i.dn = fsub double %.0.i119, %i.aj
  %i.do = tail call double @llvm.fmuladd.f64(double %i.an, double %i.dn, double %i.ah)
  %i.dp = fptrunc double %i.do to float
  %.sroa.0225.4.vec.insert = insertelement <2 x float> %.sroa.0225.0.vec.insert, float %i.dp, i64 1
  store <2 x float> %.sroa.0225.4.vec.insert, ptr %14, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 764
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1262
  %i.ds = tail call noundef i32 @_ZN6ImPlot19GetColormapColorU32Eii(i32 noundef 0, i32 noundef %i.dr) #16
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.ds, float noundef 0.000000e+00, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %. = select i1 %9, double -1.000000e+00, double 1.000000e+00 ; 4 uses
  %.114 = select i1 %9, ptr %8, ptr %7
  %.in = getelementptr inbounds nuw i8, ptr %.114, i64 8
  %i.dt = load double, ptr %.in, align 8, !tbaa !1253 ; 4 uses
  %i.du = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.dv = insertelement <2 x i32> %i.du, i32 %2, i64 1 ; 2 uses
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>  ; 2 uses
  %i.dx = mul nsw i32 %3, %2                      ; 4 uses
  br i1 %10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %1, ptr %15, align 8, !tbaa !1301
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !2819
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %2, ptr %i.dz, align 4, !tbaa !1302
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %3, ptr %i.ea, align 8, !tbaa !2820
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %.0, ptr %i.eb, align 8, !tbaa !1303
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %.0107, ptr %i.ec, align 8, !tbaa !1304
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ee = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ef = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.dw          ; 2 uses
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ej = extractelement <2 x double> %i.ef, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !1305
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 64
  store double %i.dt, ptr %i.ek, align 8, !tbaa !1306
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 72
  store double %., ptr %i.el, align 8, !tbaa !1307
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.en = fmul <2 x double> %i.eh, splat (double 5.000000e-01)
  store <2 x double> %i.en, ptr %i.em, align 8, !tbaa !63
  %i.eo = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ep = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.dx, ptr %12, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !151 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 2448
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !94
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2452
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.fc ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 272
  %i.ff = load float, ptr %i.fe, align 8, !tbaa !156
  %i.fg = fpext float %i.ff to double
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 296
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !157
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 280
end_hunk_2
begin_hunk_3_@_ZN6ImPlot11PlotHeatmapItEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
  store i8 0, ptr %i.ac, align 1, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1456
  store i8 0, ptr %i.ad, align 4, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  store ptr null, ptr %i.ae, align 8, !tbaa !140
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ai = and i32 %9, 1024
  %i.aj = icmp ne i32 %i.ai, 0
  call void @_ZN6ImPlot13RenderHeatmapItEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true, i1 noundef zeroext %i.aj)
  %i.ak = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.am, align 4, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.an, align 4, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ao, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ap, align 4, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1448
  store float -1.000000e+00, ptr %i.aq, align 4, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.ar, align 4, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.as, align 4, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1416
  store float -1.000000e+00, ptr %i.at, align 4, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 1420
  store i32 -1, ptr %i.au, align 4, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1457
  store i8 0, ptr %i.av, align 1, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1456
  store i8 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !141
  store ptr null, ptr %i.ax, align 8, !tbaa !140
  br label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RenderHeatmapItEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #4 comdat {
bb.a:
  %11 = alloca %"struct.ImPlot::RendererRectC.1054", align 8 ; 20 uses
  %12 = alloca %"struct.ImPlot::RendererRectC.1053", align 8 ; 20 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %"struct.ImPlot::GetterHeatmapColMaj.1051", align 8 ; 14 uses
  %16 = alloca %"struct.ImPlot::GetterHeatmapRowMaj.1052", align 8 ; 14 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.i ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [376 x i8], ptr %i.f, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.p = load float, ptr %i.o, align 8, !tbaa !156
  %i.q = fpext float %i.p to double               ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !1255 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !1256 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.w = load double, ptr %i.v, align 8, !tbaa !157 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.y = load double, ptr %i.x, align 8, !tbaa !1257 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1258 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.ag = load float, ptr %i.af, align 8, !tbaa !156
  %i.ah = fpext float %i.ag to double             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1255 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1256 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.an = load double, ptr %i.am, align 8, !tbaa !157 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1257 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !1258 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !158 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !159 ; 4 uses
  %i.aw = fcmp oeq double %4, 0.000000e+00
  %i.ax = fcmp oeq double %5, 0.000000e+00
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nsw i32 %3, %2                      ; 4 uses
  %i.az = load i16, ptr %1, align 2, !tbaa !900   ; 7 uses
  %i.ba = icmp sgt i32 %i.ay, 1
  br i1 %i.ba, label %iter.check, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ay to i64 ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check277 = icmp ult i32 %i.ay, 17
  br i1 %min.iters.check277, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, -16                     ; 4 uses
  %i.bd = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.az, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi278 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi279 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi280 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  %wide.load = load <8 x i16>, ptr %i.bf, align 2, !tbaa !900 ; 2 uses
  %wide.load281 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !900 ; 2 uses
  %i.bh = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi279) ; 2 uses
  %i.bi = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load281, <8 x i16> %vec.phi280) ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.bk = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load281, <8 x i16> %vec.phi278) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2825

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bj, <8 x i16> %i.bk)
  %i.bm = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax282 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.bh, <8 x i16> %i.bi)
  %i.bn = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax282) ; 3 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bm, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %bc.merge.rdx283 = phi i16 [ %i.bn, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %n.vec284 = and i64 %i.bb, -4                   ; 3 uses
  %19 = or disjoint i64 %n.vec284, 1
  %broadcast.splatinsert285 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat286 = shufflevector <4 x i16> %broadcast.splatinsert285, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <4 x i16> poison, i16 %bc.merge.rdx283, i64 0
  %broadcast.splat288 = shufflevector <4 x i16> %broadcast.splatinsert287, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi290 = phi <4 x i16> [ %broadcast.splat286, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %vec.phi291 = phi <4 x i16> [ %broadcast.splat288, %vec.epilog.ph ], [ %i.bq, %vec.epilog.vector.body ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index289
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %wide.load292 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !900 ; 2 uses
  %i.bq = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load292, <4 x i16> %vec.phi291) ; 2 uses
  %i.br = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load292, <4 x i16> %vec.phi290) ; 2 uses
  %index.next293 = add nuw i64 %index289, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2826

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.br) ; 2 uses
  %i.bu = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.bq) ; 2 uses
  %cmp.n294 = icmp eq i64 %i.bb, %n.vec284
  br i1 %cmp.n294, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.az, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.az, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.bw, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.umax.i16(i16 %i.bw, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2827

_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.019.lcssa.i = phi i16 [ %i.az, %bb.b ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.az, %bb.b ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.bx = uitofp i16 %.019.lcssa.i to double
  %i.by = uitofp i16 %.018.lcssa.i to double
  br label %bb.c

bb.c:                                             ; preds = %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, %bb.a
  %.0107 = phi double [ %i.by, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %5, %bb.a ] ; 5 uses
  %.0 = phi double [ %i.bx, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %4, %bb.a ] ; 7 uses
  %i.bz = fcmp oeq double %.0, %.0107
  br i1 %i.bz, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ca = load double, ptr %7, align 8, !tbaa !1252 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = tail call noundef double %i.ac(double noundef %i.ca, ptr noundef %i.ae) #16, !inline_history !22
  %i.cc = fsub double %i.cb, %i.y
  %i.cd = fsub double %i.aa, %i.y
  %i.ce = fdiv double %i.cc, %i.cd
  %i.cf = fsub double %i.u, %i.s
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117

_ZNK6ImPlot12Transformer1clIdEEfT_.exit117:       ; preds = %bb.d, %bb.e
  %.0.i116 = phi double [ %i.cg, %bb.e ], [ %i.ca, %bb.d ]
  %i.ch = fsub double %.0.i116, %i.s
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ch, double %i.q)
  %i.cj = fptrunc double %i.ci to float
  %.sroa.0231.0.vec.insert = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1253 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null               ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117
  %i.cm = tail call noundef double %i.at(double noundef %i.cl, ptr noundef %i.av) #16, !inline_history !22
  %i.cn = fsub double %i.cm, %i.ap
  %i.co = fsub double %i.ar, %i.ap
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fsub double %i.al, %i.aj
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cp, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit

_ZNK6ImPlot12Transformer1clIdEEfT_.exit:          ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117, %bb.f
  %.0.i = phi double [ %i.cr, %bb.f ], [ %i.cl, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit117 ]
  %i.cs = fsub double %.0.i, %i.aj
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cs, double %i.ah)
  %i.cu = fptrunc double %i.ct to float
  %.sroa.0231.4.vec.insert = insertelement <2 x float> %.sroa.0231.0.vec.insert, float %i.cu, i64 1
  store <2 x float> %.sroa.0231.4.vec.insert, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.cv = load double, ptr %8, align 8, !tbaa !1252 ; 2 uses
  br i1 %.not.i115, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit
  %i.cw = tail call noundef double %i.ac(double noundef %i.cv, ptr noundef %i.ae) #16, !inline_history !22
  %i.cx = fsub double %i.cw, %i.y
  %i.cy = fsub double %i.aa, %i.y
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fsub double %i.u, %i.s
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123

_ZNK6ImPlot12Transformer1clIdEEfT_.exit123:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit, %bb.g
  %.0.i122 = phi double [ %i.db, %bb.g ], [ %i.cv, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit ]
  %i.dc = fsub double %.0.i122, %i.s
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.w, double %i.dc, double %i.q)
  %i.de = fptrunc double %i.dd to float
  %.sroa.0225.0.vec.insert = insertelement <2 x float> poison, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1253 ; 2 uses
  br i1 %.not.i, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120, label %bb.h

bb.h:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123
  %i.dh = tail call noundef double %i.at(double noundef %i.dg, ptr noundef %i.av) #16, !inline_history !22
  %i.di = fsub double %i.dh, %i.ap
  %i.dj = fsub double %i.ar, %i.ap
  %i.dk = fdiv double %i.di, %i.dj
  %i.dl = fsub double %i.al, %i.aj
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120

_ZNK6ImPlot12Transformer1clIdEEfT_.exit120:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123, %bb.h
  %.0.i119 = phi double [ %i.dm, %bb.h ], [ %i.dg, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit123 ]
  %i.dn = fsub double %.0.i119, %i.aj
  %i.do = tail call double @llvm.fmuladd.f64(double %i.an, double %i.dn, double %i.ah)
  %i.dp = fptrunc double %i.do to float
  %.sroa.0225.4.vec.insert = insertelement <2 x float> %.sroa.0225.0.vec.insert, float %i.dp, i64 1
  store <2 x float> %.sroa.0225.4.vec.insert, ptr %14, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 764
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1262
  %i.ds = tail call noundef i32 @_ZN6ImPlot19GetColormapColorU32Eii(i32 noundef 0, i32 noundef %i.dr) #16
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.ds, float noundef 0.000000e+00, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %. = select i1 %9, double -1.000000e+00, double 1.000000e+00 ; 4 uses
  %.114 = select i1 %9, ptr %8, ptr %7
  %.in = getelementptr inbounds nuw i8, ptr %.114, i64 8
  %i.dt = load double, ptr %.in, align 8, !tbaa !1253 ; 4 uses
  %i.du = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.dv = insertelement <2 x i32> %i.du, i32 %2, i64 1 ; 2 uses
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>  ; 2 uses
  %i.dx = mul nsw i32 %3, %2                      ; 4 uses
  br i1 %10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %1, ptr %15, align 8, !tbaa !1319
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !2832
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %2, ptr %i.dz, align 4, !tbaa !1320
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %3, ptr %i.ea, align 8, !tbaa !2833
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %.0, ptr %i.eb, align 8, !tbaa !1321
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %.0107, ptr %i.ec, align 8, !tbaa !1322
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ee = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ef = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.dw          ; 2 uses
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ej = extractelement <2 x double> %i.ef, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !1323
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 64
  store double %i.dt, ptr %i.ek, align 8, !tbaa !1324
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 72
  store double %., ptr %i.el, align 8, !tbaa !1325
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.en = fmul <2 x double> %i.eh, splat (double 5.000000e-01)
  store <2 x double> %i.en, ptr %i.em, align 8, !tbaa !63
  %i.eo = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.ep = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.dx, ptr %12, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !151 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 2448
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !94
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2452
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [376 x i8], ptr %i.ev, i64 %i.fc ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 272
  %i.ff = load float, ptr %i.fe, align 8, !tbaa !156
  %i.fg = fpext float %i.ff to double
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 296
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !157
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 280
end_hunk_3
begin_hunk_4_@_ZN6ImPlot13RenderHeatmapIdEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  %i.ln = select i1 %i.lk, double 0.000000e+00, double %i.lm
  %i.lo = fptrunc double %i.ln to float
  %i.lp = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lo, i32 noundef -1) #16 ; 2 uses
  %i.lq = extractvalue { <2 x float>, <2 x float> } %i.lp, 0 ; 2 uses
  %i.lr = extractvalue { <2 x float>, <2 x float> } %i.lp, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lq, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lq, i64 1
  %i.ls = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lt = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.ls)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lr, i64 0
  %i.lu = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lt)
  %i.lv = fcmp ogt float %i.lu, 5.000000e-01
  %i.lw = select i1 %i.lv, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lx = fmul <2 x float> %i.lg, splat (float 5.000000e-01)
  %i.ly = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lc, i64 1
  %i.ma = fsub <2 x float> %i.lz, %i.lx
  store <2 x float> %i.ma, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.lw, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.mb = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.mb, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.m, !llvm.loop !2895

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mg, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.mc = uitofp nneg i32 %.0109244 to double
  %i.md = fmul double %i.jr, %i.mc
  %i.me = call double @llvm.fmuladd.f64(double %i.jr, double 5.000000e-01, double %i.md)
  %i.mf = call double @llvm.fmuladd.f64(double %., double %i.me, double %i.dk) ; 2 uses
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mg = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mg, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2896

bb.p:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nx, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mh = load double, ptr %7, align 8, !tbaa !1252
  %i.mi = call double @llvm.fmuladd.f64(double %i.js, double 5.000000e-01, double %i.mh)
  %i.mj = uitofp nneg i32 %.0108242 to double
  %i.mk = call double @llvm.fmuladd.f64(double %i.mj, double %i.js, double %i.mi) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ml = call noundef double %i.ac(double noundef %i.mk, ptr noundef %i.ae) #16, !inline_history !22
  %i.mm = fsub double %i.ml, %i.y
  %i.mn = fdiv double %i.mm, %i.jm
  %i.mo = call double @llvm.fmuladd.f64(double %i.jn, double %i.mn, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.p, %bb.q
  %.0.i134 = phi double [ %i.mo, %bb.q ], [ %i.mk, %bb.p ]
  %i.mp = fsub double %.0.i134, %i.s
  %i.mq = call double @llvm.fmuladd.f64(double %i.w, double %i.mp, double %i.q)
  %i.mr = fptrunc double %i.mq to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.r

bb.r:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.ms = call noundef double %i.at(double noundef %i.mf, ptr noundef %i.av) #16, !inline_history !22
  %i.mt = fsub double %i.ms, %i.ap
  %i.mu = fdiv double %i.mt, %i.jo
  %i.mv = call double @llvm.fmuladd.f64(double %i.jp, double %i.mu, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.r
  %.0.i131 = phi double [ %i.mv, %bb.r ], [ %i.mf, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.mw = fsub double %.0.i131, %i.aj
  %i.mx = call double @llvm.fmuladd.f64(double %i.an, double %i.mw, double %i.ah)
  %i.my = fptrunc double %i.mx to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mz = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !63
  %i.nb = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, double noundef %i.na) #16 ; 0 uses
  %i.nc = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nd = load double, ptr %i.mz, align 8, !tbaa !63
  %i.ne = fsub double %i.nd, %.0
  %i.nf = fdiv double %i.ne, %i.jq                ; 3 uses
  %i.ng = fcmp olt double %i.nf, 0.000000e+00
  %i.nh = fcmp ogt double %i.nf, 1.000000e+00
  %i.ni = select i1 %i.nh, double 1.000000e+00, double %i.nf
  %i.nj = select i1 %i.ng, double 0.000000e+00, double %i.ni
  %i.nk = fptrunc double %i.nj to float
  %i.nl = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nk, i32 noundef -1) #16 ; 2 uses
  %i.nm = extractvalue { <2 x float>, <2 x float> } %i.nl, 0 ; 2 uses
  %i.nn = extractvalue { <2 x float>, <2 x float> } %i.nl, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nm, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nm, i64 1
  %i.no = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.np = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.no)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nn, i64 0
  %i.nq = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.np)
  %i.nr = fcmp ogt float %i.nq, 5.000000e-01
  %i.ns = select i1 %i.nr, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.nt = fmul <2 x float> %i.nc, splat (float 5.000000e-01)
  %i.nu = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.my, i64 1
  %i.nw = fsub <2 x float> %i.nv, %i.nt
  store <2 x float> %i.nw, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.ns, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nx = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nx, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !2897

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.k, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot13PlotHistogramIaEEdPKcPKT_iid11ImPlotRangei(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double %5, double %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %9 = alloca %"struct.ImPlot::GetterXY.76", align 8 ; 9 uses
  %10 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %11 = alloca %"struct.ImPlot::GetterXY.118", align 8 ; 9 uses
  %i.a = and i32 %7, 2048
  %.not148 = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 4096
  %.not149 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 8192
  %.not = icmp eq i32 %i.c, 0                     ; 5 uses
  %i.d = icmp slt i32 %2, 1
  %i.e = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %5, 0.000000e+00
  %i.g = fcmp oeq double %6, 0.000000e+00
  %or.cond4 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !881     ; 7 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %iter.check, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %2, 33
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi214 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi215 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi216 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !881 ; 2 uses
  %wide.load217 = load <16 x i8>, ptr %i.o, align 1, !tbaa !881 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi215) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi216) ; 2 uses
  %i.r = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.s = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi214) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2904

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.r, <16 x i8> %i.s)
  %i.u = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax218 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.p, <16 x i8> %i.q)
  %i.v = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax218) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.u, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %bc.merge.rdx219 = phi i8 [ %i.v, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %i.j, -8                    ; 3 uses
  %12 = or disjoint i64 %n.vec220, 1
  %broadcast.splatinsert221 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat222 = shufflevector <8 x i8> %broadcast.splatinsert221, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <8 x i8> poison, i8 %bc.merge.rdx219, i64 0
  %broadcast.splat224 = shufflevector <8 x i8> %broadcast.splatinsert223, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi226 = phi <8 x i8> [ %broadcast.splat222, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi227 = phi <8 x i8> [ %broadcast.splat224, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %wide.load228 = load <8 x i8>, ptr %i.x, align 1, !tbaa !881 ; 2 uses
  %i.y = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load228, <8 x i8> %vec.phi227) ; 2 uses
  %i.z = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load228, <8 x i8> %vec.phi226) ; 2 uses
  %index.next229 = add nuw i64 %index225, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2905

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.z) ; 2 uses
  %i.ac = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.y) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.j, %n.vec220
  br i1 %cmp.n230, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.h, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.h, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.smin.i8(i8 %i.ae, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.smax.i8(i8 %i.ae, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2906

_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.ac, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.ab, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.af = sitofp i8 %.019.lcssa.i to double
  %i.ag = sitofp i8 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, %bb.b
  %.sroa.10.0 = phi double [ %i.ag, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %6, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi double [ %i.af, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %5, %bb.b ] ; 10 uses
  %i.ah = icmp slt i32 %3, 0
  br i1 %i.ah, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  switch i32 %3, label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.f
    i32 -2, label %bb.g
    i32 -3, label %bb.h
    i32 -4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = uitofp nneg i32 %2 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.ak = fptosi double %i.aj to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.g:                                             ; preds = %bb.e
  %i.al = uitofp nneg i32 %2 to double
  %i.am = tail call noundef double @log2(double noundef %i.al) #16
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = tail call double @llvm.ceil.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.h:                                             ; preds = %bb.e
  %i.aq = uitofp nneg i32 %2 to double
  %i.ar = tail call noundef double @cbrt(double noundef %i.aq) #17
  %i.as = fmul double %i.ar, 2.000000e+00
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.e
  %i.av = uitofp nneg i32 %2 to double            ; 2 uses
  %i.aw = fdiv double 1.000000e+00, %i.av         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 5 uses
  %i.ax = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.j ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.br, %bb.j ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !881
  %i.bb = sitofp i8 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aw, double %.089.i.i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !881
  %i.bg = sitofp i8 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.aw, double %i.bc)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !881
  %i.bl = sitofp i8 %i.bk to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.aw, double %i.bh)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !881
  %i.bq = sitofp i8 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.aw, double %i.bm) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.j, !llvm.loop !27

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.i ], [ %i.br, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.k ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !881
  %i.bu = sitofp i8 %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.aw, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i, label %bb.k, !llvm.loop !2907

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i:           ; preds = %bb.k, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa279 = phi double [ %i.br, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = add nsw i32 %2, -1
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 3 uses
  %xtraiter288 = and i64 %wide.trip.count.i.i.i, 1
  %i.bz = icmp eq i64 %i.ax, 0
  br i1 %i.bz, label %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i
  %unroll_iter293 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIaEdPKT_i.exit.i.i

_ZL6ImMeanIaEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIaEdPKT_i.exit.i.i, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIaEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %i.cm, %_ZL6ImMeanIaEdPKT_i.exit.i.i ]
  %niter294 = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %niter294.next.1, %_ZL6ImMeanIaEdPKT_i.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !881
  %i.cc = sitofp i8 %i.cb to double
  %i.cd = fsub double %i.cc, %.lcssa279           ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.by, double %.01415.i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !881
  %i.cj = sitofp i8 %i.ci to double
  %i.ck = fsub double %i.cj, %.lcssa279           ; 2 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.by, double %i.cf) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIaEdPKT_i.exit.i.i, !llvm.loop !28

_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIaEdPKT_i.exit.i.i
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %_ZL8ImStdDevIaEdPKT_i.exit.i, label %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i ], [ %i.cm, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod292 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !881
  %i.cp = sitofp i8 %i.co to double
  %i.cq = fsub double %i.cp, %.lcssa279           ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.by, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIaEdPKT_i.exit.i

_ZL8ImStdDevIaEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader
  %.lcssa = phi double [ %i.cm, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ], [ %i.cs, %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader ]
  %i.ct = tail call noundef double @sqrt(double noundef %.lcssa) #16
  %i.cu = fmul double %i.ct, 3.490000e+00
  %i.cv = tail call noundef double @cbrt(double noundef %i.av) #17
  %i.cw = fdiv double %i.cu, %i.cv
end_hunk_4
begin_hunk_5_@_ZN6ImPlot13PlotHistogramIaEEdPKcPKT_iid11ImPlotRangei:bb.a
  %index.next256 = add nuw i64 %index253, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.ki, label %middle.block257, label %vector.body252, !llvm.loop !2917

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %n.vec249, %wide.trip.count191
  br i1 %cmp.n258, label %._crit_edge167, label %scalar.ph246.preheader

scalar.ph246.preheader:                           ; preds = %.lr.ph166, %middle.block257
  %indvars.iv188.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec249, %middle.block257 ]
  br label %scalar.ph246

._crit_edge167:                                   ; preds = %scalar.ph246, %middle.block257, %bb.al
  %i.kj = fmul double %.2, %i.kb
  br label %bb.am

scalar.ph246:                                     ; preds = %scalar.ph246.preheader, %scalar.ph246
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph246 ], [ %indvars.iv188.ph, %scalar.ph246.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv188 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !63
  %i.km = fmul double %i.kb, %i.kl
  store double %i.km, ptr %i.kk, align 8, !tbaa !63
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge167, label %scalar.ph246, !llvm.loop !2918

bb.am:                                            ; preds = %._crit_edge163, %._crit_edge167, %bb.ak, %._crit_edge175
  %.3 = phi double [ %i.in, %._crit_edge175 ], [ %i.ji, %._crit_edge163 ], [ %i.kj, %._crit_edge167 ], [ %.2, %bb.ak ] ; 2 uses
  %i.kn = and i32 %7, 1024
  %.not150 = icmp eq i32 %i.kn, 0
  %i.ko = fmul double %4, %.0145                  ; 2 uses
  br i1 %.not150, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i:      ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !875
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !875 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.kq, ptr %10, align 8, !tbaa !394
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.0146, ptr %.sroa.475.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.576.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 8, ptr %.sroa.677.0..sroa_idx.i, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !394
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.0146, ptr %.sroa.479.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %.sroa.580.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 8, ptr %.sroa.681.0..sroa_idx.i, align 8, !tbaa !67
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %.0146, ptr %i.ku, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store double 0.000000e+00, ptr %11, align 8, !tbaa !63
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !394
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.0146, ptr %.sroa.484.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %.sroa.585.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 8, ptr %.sroa.686.0..sroa_idx.i, align 8, !tbaa !67
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %.0146, ptr %i.kw, align 8, !tbaa !853
  call void @_ZN6ImPlot11PlotBarsHExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_INS_12IndexerConstES3_EEEEvPKcRKT_RKT0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, double noundef %i.ko, i32 noundef 1024)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.an

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i:      ; preds = %bb.am
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !875 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ky, ptr %8, align 8, !tbaa !394
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0146, ptr %.sroa.489.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.590.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %.sroa.691.0..sroa_idx.i, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !394
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.0146, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %.sroa.595.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 8, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !67
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %.0146, ptr %i.lc, align 8, !tbaa !409
  store ptr %i.ky, ptr %9, align 8, !tbaa !394
  %.sroa.045.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0146, ptr %.sroa.045.sroa.4.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.045.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %.sroa.045.sroa.5.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.045.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %.sroa.045.sroa.6.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double 0.000000e+00, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !63
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %.0146, ptr %.sroa.547.0..sroa_idx.i, align 8, !tbaa !67
  call void @_ZN6ImPlot11PlotBarsVExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_IS3_NS_12IndexerConstEEEEEvPKcRKT_T0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull byval(%"struct.ImPlot::GetterXY.76") align 8 %9, double noundef %i.ko, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.an

bb.an:                                            ; preds = %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, %bb.a
  %.0104 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i ]
  ret double %.0104
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot13PlotHistogramIhEEdPKcPKT_iid11ImPlotRangei(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double %5, double %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %9 = alloca %"struct.ImPlot::GetterXY.76", align 8 ; 9 uses
  %10 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %11 = alloca %"struct.ImPlot::GetterXY.118", align 8 ; 9 uses
  %i.a = and i32 %7, 2048
  %.not148 = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 4096
  %.not149 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 8192
  %.not = icmp eq i32 %i.c, 0                     ; 5 uses
  %i.d = icmp slt i32 %2, 1
  %i.e = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %5, 0.000000e+00
  %i.g = fcmp oeq double %6, 0.000000e+00
  %or.cond4 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !881     ; 7 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %iter.check, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %2, 33
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi214 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi215 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi216 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !881 ; 2 uses
  %wide.load217 = load <16 x i8>, ptr %i.o, align 1, !tbaa !881 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi215) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi216) ; 2 uses
  %i.r = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.s = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi214) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2919

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.r, <16 x i8> %i.s)
  %i.u = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax218 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.p, <16 x i8> %i.q)
  %i.v = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax218) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.u, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %bc.merge.rdx219 = phi i8 [ %i.v, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %i.j, -8                    ; 3 uses
  %12 = or disjoint i64 %n.vec220, 1
  %broadcast.splatinsert221 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat222 = shufflevector <8 x i8> %broadcast.splatinsert221, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <8 x i8> poison, i8 %bc.merge.rdx219, i64 0
  %broadcast.splat224 = shufflevector <8 x i8> %broadcast.splatinsert223, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi226 = phi <8 x i8> [ %broadcast.splat222, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi227 = phi <8 x i8> [ %broadcast.splat224, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %wide.load228 = load <8 x i8>, ptr %i.x, align 1, !tbaa !881 ; 2 uses
  %i.y = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load228, <8 x i8> %vec.phi227) ; 2 uses
  %i.z = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load228, <8 x i8> %vec.phi226) ; 2 uses
  %index.next229 = add nuw i64 %index225, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2920

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.z) ; 2 uses
  %i.ac = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.y) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.j, %n.vec220
  br i1 %cmp.n230, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.h, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.h, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.ae, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.ae, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2921

_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.ac, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.ab, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.af = uitofp i8 %.019.lcssa.i to double
  %i.ag = uitofp i8 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, %bb.b
  %.sroa.10.0 = phi double [ %i.ag, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %6, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi double [ %i.af, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %5, %bb.b ] ; 10 uses
  %i.ah = icmp slt i32 %3, 0
  br i1 %i.ah, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  switch i32 %3, label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.f
    i32 -2, label %bb.g
    i32 -3, label %bb.h
    i32 -4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = uitofp nneg i32 %2 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.ak = fptosi double %i.aj to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.g:                                             ; preds = %bb.e
  %i.al = uitofp nneg i32 %2 to double
  %i.am = tail call noundef double @log2(double noundef %i.al) #16
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = tail call double @llvm.ceil.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.h:                                             ; preds = %bb.e
  %i.aq = uitofp nneg i32 %2 to double
  %i.ar = tail call noundef double @cbrt(double noundef %i.aq) #17
  %i.as = fmul double %i.ar, 2.000000e+00
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.e
  %i.av = uitofp nneg i32 %2 to double            ; 2 uses
  %i.aw = fdiv double 1.000000e+00, %i.av         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 5 uses
  %i.ax = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.j ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.br, %bb.j ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !881
  %i.bb = uitofp i8 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aw, double %.089.i.i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !881
  %i.bg = uitofp i8 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.aw, double %i.bc)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !881
  %i.bl = uitofp i8 %i.bk to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.aw, double %i.bh)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !881
  %i.bq = uitofp i8 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.aw, double %i.bm) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.j, !llvm.loop !29

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.i ], [ %i.br, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.k ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !881
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.aw, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i, label %bb.k, !llvm.loop !2922

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i:           ; preds = %bb.k, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa279 = phi double [ %i.br, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = add nsw i32 %2, -1
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 3 uses
  %xtraiter288 = and i64 %wide.trip.count.i.i.i, 1
  %i.bz = icmp eq i64 %i.ax, 0
  br i1 %i.bz, label %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i
  %unroll_iter293 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIhEdPKT_i.exit.i.i

_ZL6ImMeanIhEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIhEdPKT_i.exit.i.i, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIhEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %i.cm, %_ZL6ImMeanIhEdPKT_i.exit.i.i ]
  %niter294 = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %niter294.next.1, %_ZL6ImMeanIhEdPKT_i.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !881
  %i.cc = uitofp i8 %i.cb to double
  %i.cd = fsub double %i.cc, %.lcssa279           ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.by, double %.01415.i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !881
  %i.cj = uitofp i8 %i.ci to double
  %i.ck = fsub double %i.cj, %.lcssa279           ; 2 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.by, double %i.cf) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIhEdPKT_i.exit.i.i, !llvm.loop !30

_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIhEdPKT_i.exit.i.i
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %_ZL8ImStdDevIhEdPKT_i.exit.i, label %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i ], [ %i.cm, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod292 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !881
  %i.cp = uitofp i8 %i.co to double
  %i.cq = fsub double %i.cp, %.lcssa279           ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.by, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIhEdPKT_i.exit.i

_ZL8ImStdDevIhEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader
  %.lcssa = phi double [ %i.cm, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ], [ %i.cs, %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader ]
  %i.ct = tail call noundef double @sqrt(double noundef %.lcssa) #16
  %i.cu = fmul double %i.ct, 3.490000e+00
  %i.cv = tail call noundef double @cbrt(double noundef %i.av) #17
  %i.cw = fdiv double %i.cu, %i.cv
end_hunk_5
begin_hunk_6_@_ZN6ImPlot13PlotHistogramIhEEdPKcPKT_iid11ImPlotRangei:bb.a
  %index.next256 = add nuw i64 %index253, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.ki, label %middle.block257, label %vector.body252, !llvm.loop !2932

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %n.vec249, %wide.trip.count191
  br i1 %cmp.n258, label %._crit_edge167, label %scalar.ph246.preheader

scalar.ph246.preheader:                           ; preds = %.lr.ph166, %middle.block257
  %indvars.iv188.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec249, %middle.block257 ]
  br label %scalar.ph246

._crit_edge167:                                   ; preds = %scalar.ph246, %middle.block257, %bb.al
  %i.kj = fmul double %.2, %i.kb
  br label %bb.am

scalar.ph246:                                     ; preds = %scalar.ph246.preheader, %scalar.ph246
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph246 ], [ %indvars.iv188.ph, %scalar.ph246.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv188 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !63
  %i.km = fmul double %i.kb, %i.kl
  store double %i.km, ptr %i.kk, align 8, !tbaa !63
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge167, label %scalar.ph246, !llvm.loop !2933

bb.am:                                            ; preds = %._crit_edge163, %._crit_edge167, %bb.ak, %._crit_edge175
  %.3 = phi double [ %i.in, %._crit_edge175 ], [ %i.ji, %._crit_edge163 ], [ %i.kj, %._crit_edge167 ], [ %.2, %bb.ak ] ; 2 uses
  %i.kn = and i32 %7, 1024
  %.not150 = icmp eq i32 %i.kn, 0
  %i.ko = fmul double %4, %.0145                  ; 2 uses
  br i1 %.not150, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i:      ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !875
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !875 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.kq, ptr %10, align 8, !tbaa !394
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.0146, ptr %.sroa.475.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.576.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 8, ptr %.sroa.677.0..sroa_idx.i, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !394
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.0146, ptr %.sroa.479.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %.sroa.580.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 8, ptr %.sroa.681.0..sroa_idx.i, align 8, !tbaa !67
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %.0146, ptr %i.ku, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store double 0.000000e+00, ptr %11, align 8, !tbaa !63
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !394
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.0146, ptr %.sroa.484.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %.sroa.585.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 8, ptr %.sroa.686.0..sroa_idx.i, align 8, !tbaa !67
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %.0146, ptr %i.kw, align 8, !tbaa !853
  call void @_ZN6ImPlot11PlotBarsHExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_INS_12IndexerConstES3_EEEEvPKcRKT_RKT0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, double noundef %i.ko, i32 noundef 1024)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.an

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i:      ; preds = %bb.am
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !875 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ky, ptr %8, align 8, !tbaa !394
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0146, ptr %.sroa.489.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.590.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %.sroa.691.0..sroa_idx.i, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !394
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.0146, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %.sroa.595.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 8, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !67
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %.0146, ptr %i.lc, align 8, !tbaa !409
  store ptr %i.ky, ptr %9, align 8, !tbaa !394
  %.sroa.045.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0146, ptr %.sroa.045.sroa.4.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.045.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %.sroa.045.sroa.5.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.045.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %.sroa.045.sroa.6.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double 0.000000e+00, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !63
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %.0146, ptr %.sroa.547.0..sroa_idx.i, align 8, !tbaa !67
  call void @_ZN6ImPlot11PlotBarsVExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_IS3_NS_12IndexerConstEEEEEvPKcRKT_T0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull byval(%"struct.ImPlot::GetterXY.76") align 8 %9, double noundef %i.ko, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.an

bb.an:                                            ; preds = %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, %bb.a
  %.0104 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i ]
  ret double %.0104
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot13PlotHistogramIsEEdPKcPKT_iid11ImPlotRangei(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double %5, double %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %9 = alloca %"struct.ImPlot::GetterXY.76", align 8 ; 9 uses
  %10 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %11 = alloca %"struct.ImPlot::GetterXY.118", align 8 ; 9 uses
  %i.a = and i32 %7, 2048
  %.not148 = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 4096
  %.not149 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 8192
  %.not = icmp eq i32 %i.c, 0                     ; 5 uses
  %i.d = icmp slt i32 %2, 1
  %i.e = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %5, 0.000000e+00
  %i.g = fcmp oeq double %6, 0.000000e+00
  %or.cond4 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %1, align 2, !tbaa !900    ; 7 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %iter.check, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %2, 17
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi214 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi215 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi216 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !tbaa !900 ; 2 uses
  %wide.load217 = load <8 x i16>, ptr %i.o, align 2, !tbaa !900 ; 2 uses
  %i.p = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi215) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load217, <8 x i16> %vec.phi216) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.s = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load217, <8 x i16> %vec.phi214) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2934

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.r, <8 x i16> %i.s)
  %i.u = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax218 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.p, <8 x i16> %i.q)
  %i.v = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax218) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.u, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %bc.merge.rdx219 = phi i16 [ %i.v, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %i.j, -4                    ; 3 uses
  %12 = or disjoint i64 %n.vec220, 1
  %broadcast.splatinsert221 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat222 = shufflevector <4 x i16> %broadcast.splatinsert221, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <4 x i16> poison, i16 %bc.merge.rdx219, i64 0
  %broadcast.splat224 = shufflevector <4 x i16> %broadcast.splatinsert223, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi226 = phi <4 x i16> [ %broadcast.splat222, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi227 = phi <4 x i16> [ %broadcast.splat224, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %wide.load228 = load <4 x i16>, ptr %i.x, align 2, !tbaa !900 ; 2 uses
  %i.y = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load228, <4 x i16> %vec.phi227) ; 2 uses
  %i.z = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load228, <4 x i16> %vec.phi226) ; 2 uses
  %index.next229 = add nuw i64 %index225, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2935

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.z) ; 2 uses
  %i.ac = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.y) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.j, %n.vec220
  br i1 %cmp.n230, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.h, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.h, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.smin.i16(i16 %i.ae, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.smax.i16(i16 %i.ae, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2936

_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i16 [ %i.h, %bb.c ], [ %i.ac, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.h, %bb.c ], [ %i.ab, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.af = sitofp i16 %.019.lcssa.i to double
  %i.ag = sitofp i16 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, %bb.b
  %.sroa.10.0 = phi double [ %i.ag, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %6, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi double [ %i.af, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %5, %bb.b ] ; 10 uses
  %i.ah = icmp slt i32 %3, 0
  br i1 %i.ah, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  switch i32 %3, label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.f
    i32 -2, label %bb.g
    i32 -3, label %bb.h
    i32 -4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = uitofp nneg i32 %2 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.ak = fptosi double %i.aj to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.g:                                             ; preds = %bb.e
  %i.al = uitofp nneg i32 %2 to double
  %i.am = tail call noundef double @log2(double noundef %i.al) #16
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = tail call double @llvm.ceil.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.h:                                             ; preds = %bb.e
  %i.aq = uitofp nneg i32 %2 to double
  %i.ar = tail call noundef double @cbrt(double noundef %i.aq) #17
  %i.as = fmul double %i.ar, 2.000000e+00
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.e
  %i.av = uitofp nneg i32 %2 to double            ; 2 uses
  %i.aw = fdiv double 1.000000e+00, %i.av         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 5 uses
  %i.ax = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.j ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.br, %bb.j ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !900
  %i.bb = sitofp i16 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aw, double %.089.i.i.i)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !900
  %i.bg = sitofp i16 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.aw, double %i.bc)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !900
  %i.bl = sitofp i16 %i.bk to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.aw, double %i.bh)
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !900
  %i.bq = sitofp i16 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.aw, double %i.bm) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.j, !llvm.loop !31

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.i ], [ %i.br, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.k ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !900
  %i.bu = sitofp i16 %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.aw, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i, label %bb.k, !llvm.loop !2937

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i:           ; preds = %bb.k, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa279 = phi double [ %i.br, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = add nsw i32 %2, -1
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 3 uses
  %xtraiter288 = and i64 %wide.trip.count.i.i.i, 1
  %i.bz = icmp eq i64 %i.ax, 0
  br i1 %i.bz, label %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i
  %unroll_iter293 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIsEdPKT_i.exit.i.i

_ZL6ImMeanIsEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIsEdPKT_i.exit.i.i, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIsEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %i.cm, %_ZL6ImMeanIsEdPKT_i.exit.i.i ]
  %niter294 = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %niter294.next.1, %_ZL6ImMeanIsEdPKT_i.exit.i.i ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !900
  %i.cc = sitofp i16 %i.cb to double
  %i.cd = fsub double %i.cc, %.lcssa279           ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.by, double %.01415.i.i)
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !900
  %i.cj = sitofp i16 %i.ci to double
  %i.ck = fsub double %i.cj, %.lcssa279           ; 2 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.by, double %i.cf) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIsEdPKT_i.exit.i.i, !llvm.loop !32

_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIsEdPKT_i.exit.i.i
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %_ZL8ImStdDevIsEdPKT_i.exit.i, label %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i ], [ %i.cm, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod292 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !900
  %i.cp = sitofp i16 %i.co to double
  %i.cq = fsub double %i.cp, %.lcssa279           ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.by, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIsEdPKT_i.exit.i

_ZL8ImStdDevIsEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader
  %.lcssa = phi double [ %i.cm, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ], [ %i.cs, %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader ]
  %i.ct = tail call noundef double @sqrt(double noundef %.lcssa) #16
  %i.cu = fmul double %i.ct, 3.490000e+00
  %i.cv = tail call noundef double @cbrt(double noundef %i.av) #17
  %i.cw = fdiv double %i.cu, %i.cv
end_hunk_6
begin_hunk_7_@_ZN6ImPlot13PlotHistogramIsEEdPKcPKT_iid11ImPlotRangei:bb.a
  %index.next256 = add nuw i64 %index253, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.ki, label %middle.block257, label %vector.body252, !llvm.loop !2947

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %n.vec249, %wide.trip.count191
  br i1 %cmp.n258, label %._crit_edge167, label %scalar.ph246.preheader

scalar.ph246.preheader:                           ; preds = %.lr.ph166, %middle.block257
  %indvars.iv188.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec249, %middle.block257 ]
  br label %scalar.ph246

._crit_edge167:                                   ; preds = %scalar.ph246, %middle.block257, %bb.al
  %i.kj = fmul double %.2, %i.kb
  br label %bb.am

scalar.ph246:                                     ; preds = %scalar.ph246.preheader, %scalar.ph246
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph246 ], [ %indvars.iv188.ph, %scalar.ph246.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv188 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !63
  %i.km = fmul double %i.kb, %i.kl
  store double %i.km, ptr %i.kk, align 8, !tbaa !63
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge167, label %scalar.ph246, !llvm.loop !2948

bb.am:                                            ; preds = %._crit_edge163, %._crit_edge167, %bb.ak, %._crit_edge175
  %.3 = phi double [ %i.in, %._crit_edge175 ], [ %i.ji, %._crit_edge163 ], [ %i.kj, %._crit_edge167 ], [ %.2, %bb.ak ] ; 2 uses
  %i.kn = and i32 %7, 1024
  %.not150 = icmp eq i32 %i.kn, 0
  %i.ko = fmul double %4, %.0145                  ; 2 uses
  br i1 %.not150, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i:      ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !875
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !875 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.kq, ptr %10, align 8, !tbaa !394
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.0146, ptr %.sroa.475.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.576.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 8, ptr %.sroa.677.0..sroa_idx.i, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !394
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.0146, ptr %.sroa.479.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %.sroa.580.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 8, ptr %.sroa.681.0..sroa_idx.i, align 8, !tbaa !67
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %.0146, ptr %i.ku, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store double 0.000000e+00, ptr %11, align 8, !tbaa !63
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !394
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.0146, ptr %.sroa.484.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %.sroa.585.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 8, ptr %.sroa.686.0..sroa_idx.i, align 8, !tbaa !67
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %.0146, ptr %i.kw, align 8, !tbaa !853
  call void @_ZN6ImPlot11PlotBarsHExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_INS_12IndexerConstES3_EEEEvPKcRKT_RKT0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, double noundef %i.ko, i32 noundef 1024)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.an

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i:      ; preds = %bb.am
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !875 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ky, ptr %8, align 8, !tbaa !394
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0146, ptr %.sroa.489.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.590.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %.sroa.691.0..sroa_idx.i, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !394
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.0146, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %.sroa.595.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 8, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !67
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %.0146, ptr %i.lc, align 8, !tbaa !409
  store ptr %i.ky, ptr %9, align 8, !tbaa !394
  %.sroa.045.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0146, ptr %.sroa.045.sroa.4.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.045.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %.sroa.045.sroa.5.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.045.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %.sroa.045.sroa.6.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double 0.000000e+00, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !63
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %.0146, ptr %.sroa.547.0..sroa_idx.i, align 8, !tbaa !67
  call void @_ZN6ImPlot11PlotBarsVExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_IS3_NS_12IndexerConstEEEEEvPKcRKT_T0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull byval(%"struct.ImPlot::GetterXY.76") align 8 %9, double noundef %i.ko, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.an

bb.an:                                            ; preds = %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, %bb.a
  %.0104 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i ]
  ret double %.0104
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot13PlotHistogramItEEdPKcPKT_iid11ImPlotRangei(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double %5, double %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %9 = alloca %"struct.ImPlot::GetterXY.76", align 8 ; 9 uses
  %10 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %11 = alloca %"struct.ImPlot::GetterXY.118", align 8 ; 9 uses
  %i.a = and i32 %7, 2048
  %.not148 = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 4096
  %.not149 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 8192
  %.not = icmp eq i32 %i.c, 0                     ; 5 uses
  %i.d = icmp slt i32 %2, 1
  %i.e = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %5, 0.000000e+00
  %i.g = fcmp oeq double %6, 0.000000e+00
  %or.cond4 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %1, align 2, !tbaa !900    ; 7 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %iter.check, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %2, 17
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi214 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi215 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi216 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !tbaa !900 ; 2 uses
  %wide.load217 = load <8 x i16>, ptr %i.o, align 2, !tbaa !900 ; 2 uses
  %i.p = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi215) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load217, <8 x i16> %vec.phi216) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.s = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load217, <8 x i16> %vec.phi214) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2949

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.r, <8 x i16> %i.s)
  %i.u = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax218 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.p, <8 x i16> %i.q)
  %i.v = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax218) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.u, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %bc.merge.rdx219 = phi i16 [ %i.v, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %i.j, -4                    ; 3 uses
  %12 = or disjoint i64 %n.vec220, 1
  %broadcast.splatinsert221 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat222 = shufflevector <4 x i16> %broadcast.splatinsert221, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <4 x i16> poison, i16 %bc.merge.rdx219, i64 0
  %broadcast.splat224 = shufflevector <4 x i16> %broadcast.splatinsert223, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi226 = phi <4 x i16> [ %broadcast.splat222, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi227 = phi <4 x i16> [ %broadcast.splat224, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %wide.load228 = load <4 x i16>, ptr %i.x, align 2, !tbaa !900 ; 2 uses
  %i.y = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load228, <4 x i16> %vec.phi227) ; 2 uses
  %i.z = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load228, <4 x i16> %vec.phi226) ; 2 uses
  %index.next229 = add nuw i64 %index225, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2950

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.z) ; 2 uses
  %i.ac = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.y) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.j, %n.vec220
  br i1 %cmp.n230, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.h, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.h, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.ae, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.umax.i16(i16 %i.ae, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !2951

_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i16 [ %i.h, %bb.c ], [ %i.ac, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.h, %bb.c ], [ %i.ab, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.af = uitofp i16 %.019.lcssa.i to double
  %i.ag = uitofp i16 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, %bb.b
  %.sroa.10.0 = phi double [ %i.ag, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %6, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi double [ %i.af, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %5, %bb.b ] ; 10 uses
  %i.ah = icmp slt i32 %3, 0
  br i1 %i.ah, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  switch i32 %3, label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.f
    i32 -2, label %bb.g
    i32 -3, label %bb.h
    i32 -4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = uitofp nneg i32 %2 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.ak = fptosi double %i.aj to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.g:                                             ; preds = %bb.e
  %i.al = uitofp nneg i32 %2 to double
  %i.am = tail call noundef double @log2(double noundef %i.al) #16
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = tail call double @llvm.ceil.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.h:                                             ; preds = %bb.e
  %i.aq = uitofp nneg i32 %2 to double
  %i.ar = tail call noundef double @cbrt(double noundef %i.aq) #17
  %i.as = fmul double %i.ar, 2.000000e+00
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.e
  %i.av = uitofp nneg i32 %2 to double            ; 2 uses
  %i.aw = fdiv double 1.000000e+00, %i.av         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %2 to i64 ; 5 uses
  %i.ax = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 3
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.j ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.br, %bb.j ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !900
  %i.bb = uitofp i16 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aw, double %.089.i.i.i)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !900
  %i.bg = uitofp i16 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.aw, double %i.bc)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !900
  %i.bl = uitofp i16 %i.bk to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.aw, double %i.bh)
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !900
  %i.bq = uitofp i16 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.aw, double %i.bm) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.j, !llvm.loop !33

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.i ], [ %i.br, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.k ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !900
  %i.bu = uitofp i16 %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.aw, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i, label %bb.k, !llvm.loop !2952

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i:           ; preds = %bb.k, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa279 = phi double [ %i.br, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = add nsw i32 %2, -1
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 3 uses
  %xtraiter288 = and i64 %wide.trip.count.i.i.i, 1
  %i.bz = icmp eq i64 %i.ax, 0
  br i1 %i.bz, label %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i
  %unroll_iter293 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanItEdPKT_i.exit.i.i

_ZL6ImMeanItEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanItEdPKT_i.exit.i.i, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanItEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %i.cm, %_ZL6ImMeanItEdPKT_i.exit.i.i ]
  %niter294 = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %niter294.next.1, %_ZL6ImMeanItEdPKT_i.exit.i.i ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !900
  %i.cc = uitofp i16 %i.cb to double
  %i.cd = fsub double %i.cc, %.lcssa279           ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.by, double %.01415.i.i)
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !900
  %i.cj = uitofp i16 %i.ci to double
  %i.ck = fsub double %i.cj, %.lcssa279           ; 2 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.by, double %i.cf) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanItEdPKT_i.exit.i.i, !llvm.loop !34

_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanItEdPKT_i.exit.i.i
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %_ZL8ImStdDevItEdPKT_i.exit.i, label %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i ], [ %i.cm, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod292 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !900
  %i.cp = uitofp i16 %i.co to double
  %i.cq = fsub double %i.cp, %.lcssa279           ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.by, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevItEdPKT_i.exit.i

_ZL8ImStdDevItEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader
  %.lcssa = phi double [ %i.cm, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ], [ %i.cs, %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader ]
  %i.ct = tail call noundef double @sqrt(double noundef %.lcssa) #16
  %i.cu = fmul double %i.ct, 3.490000e+00
  %i.cv = tail call noundef double @cbrt(double noundef %i.av) #17
  %i.cw = fdiv double %i.cu, %i.cv
end_hunk_7
begin_hunk_8_@_ZN6ImPlot13PlotHistogramIdEEdPKcPKT_iid11ImPlotRangei:bb.a
middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %n.vec218, %wide.trip.count191
  br i1 %cmp.n226, label %._crit_edge167, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %.lr.ph166, %middle.block225
  %indvars.iv188.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec218, %middle.block225 ]
  br label %scalar.ph215

._crit_edge167:                                   ; preds = %scalar.ph215, %middle.block225, %bb.ak
  %i.kd = fmul double %.2, %i.jv
  br label %bb.al

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %scalar.ph215
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph215 ], [ %indvars.iv188.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv188 ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !63
  %i.kg = fmul double %i.jv, %i.kf
  store double %i.kg, ptr %i.ke, align 8, !tbaa !63
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge167, label %scalar.ph215, !llvm.loop !3042

bb.al:                                            ; preds = %._crit_edge163, %._crit_edge167, %bb.aj, %._crit_edge175
  %.3 = phi double [ %i.ih, %._crit_edge175 ], [ %i.jc, %._crit_edge163 ], [ %i.kd, %._crit_edge167 ], [ %.2, %bb.aj ] ; 2 uses
  %i.kh = and i32 %7, 1024
  %.not150 = icmp eq i32 %i.kh, 0
  %i.ki = fmul double %4, %.0145                  ; 2 uses
  br i1 %.not150, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, label %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i:      ; preds = %bb.al
  %i.kj = getelementptr inbounds nuw i8, ptr %i.dc, i64 1072
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !875
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dc, i64 1056
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !875 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.kk, ptr %10, align 8, !tbaa !394
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.0146, ptr %.sroa.475.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.576.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 8, ptr %.sroa.677.0..sroa_idx.i, align 8, !tbaa !67
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !394
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.0146, ptr %.sroa.479.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %.sroa.580.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 8, ptr %.sroa.681.0..sroa_idx.i, align 8, !tbaa !67
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %.0146, ptr %i.ko, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store double 0.000000e+00, ptr %11, align 8, !tbaa !63
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.km, ptr %i.kp, align 8, !tbaa !394
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.0146, ptr %.sroa.484.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %.sroa.585.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 8, ptr %.sroa.686.0..sroa_idx.i, align 8, !tbaa !67
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %.0146, ptr %i.kq, align 8, !tbaa !853
  call void @_ZN6ImPlot11PlotBarsHExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_INS_12IndexerConstES3_EEEEvPKcRKT_RKT0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %10, ptr noundef nonnull align 8 dereferenceable(36) %11, double noundef %i.ki, i32 noundef 1024)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.am

_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i:      ; preds = %bb.al
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dc, i64 1056
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !875 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dc, i64 1072
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ks, ptr %8, align 8, !tbaa !394
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0146, ptr %.sroa.489.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.590.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %.sroa.691.0..sroa_idx.i, align 8, !tbaa !67
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !394
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.0146, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %.sroa.595.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 8, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !67
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %.0146, ptr %i.kw, align 8, !tbaa !409
  store ptr %i.ks, ptr %9, align 8, !tbaa !394
  %.sroa.045.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0146, ptr %.sroa.045.sroa.4.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.045.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %.sroa.045.sroa.5.0..sroa_idx.i, align 4, !tbaa !67
  %.sroa.045.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %.sroa.045.sroa.6.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double 0.000000e+00, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !63
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %.0146, ptr %.sroa.547.0..sroa_idx.i, align 8, !tbaa !67
  call void @_ZN6ImPlot11PlotBarsVExINS_8GetterXYINS_10IndexerIdxIdEES3_EENS1_IS3_NS_12IndexerConstEEEEEvPKcRKT_T0_di(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull byval(%"struct.ImPlot::GetterXY.76") align 8 %9, double noundef %i.ki, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.am

bb.am:                                            ; preds = %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i, %bb.a
  %.0104 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit41.i ], [ %.3, %_ZN6ImPlot10IndexerIdxIdEC2EPKdiii.exit35.i ]
  ret double %.0104
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot15PlotHistogram2DIaEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%struct.ImPlotRect) align 8 %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::FitterRect", align 8 ; 8 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %10 = alloca %struct.ImPlotPoint, align 8       ; 5 uses
  %i.a = and i32 %7, 4096
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 8192
  %.not157 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 16384
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %3, 1
  %i.f = icmp eq i32 %4, 0
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load double, ptr %6, align 8, !tbaa !1186 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  %or.cond7 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %1, align 1, !tbaa !881     ; 7 uses
  %i.n = icmp samesign ugt i32 %3, 1
  br i1 %i.n, label %iter.check, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %i.o = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %3, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp ult i32 %3, 33
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi200 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi201 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi202 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !881 ; 2 uses
  %wide.load203 = load <16 x i8>, ptr %i.t, align 1, !tbaa !881 ; 2 uses
  %i.u = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi201) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load203, <16 x i8> %vec.phi202) ; 2 uses
  %i.w = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.x = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load203, <16 x i8> %vec.phi200) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3043

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.w, <16 x i8> %i.x)
  %i.z = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax204 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.aa = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax204) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.z, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx205 = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %n.vec206 = and i64 %i.o, -8                    ; 3 uses
  %11 = or disjoint i64 %n.vec206, 1
  %broadcast.splatinsert207 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat208 = shufflevector <8 x i8> %broadcast.splatinsert207, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <8 x i8> poison, i8 %bc.merge.rdx205, i64 0
  %broadcast.splat210 = shufflevector <8 x i8> %broadcast.splatinsert209, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x i8> [ %broadcast.splat208, %vec.epilog.ph ], [ %i.ae, %vec.epilog.vector.body ]
  %vec.phi213 = phi <8 x i8> [ %broadcast.splat210, %vec.epilog.ph ], [ %i.ad, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %wide.load214 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !881 ; 2 uses
  %i.ad = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load214, <8 x i8> %vec.phi213) ; 2 uses
  %i.ae = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load214, <8 x i8> %vec.phi212) ; 2 uses
  %index.next215 = add nuw i64 %index211, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3044

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.ae) ; 2 uses
  %i.ah = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.ad) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.o, %n.vec206
  br i1 %cmp.n216, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.m, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.m, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.smin.i8(i8 %i.aj, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.smax.i8(i8 %i.aj, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !3045

_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i8 [ %i.m, %bb.c ], [ %i.ah, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.m, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.ak = sitofp i8 %.019.lcssa.i to double
  %i.al = sitofp i8 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit, %bb.b
  %i.am = phi double [ %i.ak, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %i.h, %bb.b ] ; 7 uses
  %i.an = phi double [ %i.al, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit ], [ %i.k, %bb.b ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !421 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  %or.cond11 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr %2, align 1, !tbaa !881    ; 7 uses
  %i.av = icmp samesign ugt i32 %3, 1
  br i1 %i.av, label %iter.check243, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95

iter.check243:                                    ; preds = %bb.e
  %wide.trip.count.i86 = zext nneg i32 %3 to i64  ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count.i86, -1    ; 5 uses
  %min.iters.check220 = icmp ult i32 %3, 9
  br i1 %min.iters.check220, label %.lr.ph.i87.preheader, label %vector.main.loop.iter.check221

vector.main.loop.iter.check221:                   ; preds = %iter.check243
  %min.iters.check222 = icmp ult i32 %3, 33
  br i1 %min.iters.check222, label %vec.epilog.ph247, label %vector.ph223

vector.ph223:                                     ; preds = %vector.main.loop.iter.check221
  %i.ax = and i64 %i.aw, 24
  %n.vec224 = and i64 %i.aw, -32                  ; 4 uses
  %i.ay = or disjoint i64 %n.vec224, 1
  %broadcast.splatinsert225 = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %broadcast.splat226 = shufflevector <16 x i8> %broadcast.splatinsert225, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.ph223, %vector.body227
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next235, %vector.body227 ] ; 2 uses
  %vec.phi229.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.be, %vector.body227 ]
  %vec.phi230.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bf, %vector.body227 ]
  %vec.phi231.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bc, %vector.body227 ]
  %vec.phi232 = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bd, %vector.body227 ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %index228 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 17
  %wide.load233.a = load <16 x i8>, ptr %i.ba, align 1, !tbaa !881 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !881 ; 2 uses
  %i.bc = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load233.a, <16 x i8> %vec.phi231.a) ; 2 uses
  %i.bd = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load234, <16 x i8> %vec.phi232) ; 2 uses
  %i.be = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load233.a, <16 x i8> %vec.phi229.a) ; 2 uses
  %i.bf = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load234, <16 x i8> %vec.phi230.a) ; 2 uses
  %index.next235 = add nuw i64 %index228, 32      ; 2 uses
  %i.bg = icmp eq i64 %index.next235, %n.vec224
  br i1 %i.bg, label %middle.block236, label %vector.body227, !llvm.loop !3046

middle.block236:                                  ; preds = %vector.body227
  %rdx.minmax237.a = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.be, <16 x i8> %i.bf)
  %i.bh = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax237.a) ; 3 uses
  %rdx.minmax238 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.bc, <16 x i8> %i.bd)
  %i.bi = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax238) ; 3 uses
  %cmp.n239 = icmp eq i64 %i.aw, %n.vec224
  br i1 %cmp.n239, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block236
  %min.epilog.iters.check246 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check246, label %.lr.ph.i87.preheader, label %vec.epilog.ph247, !prof !1261

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check221, %vec.epilog.iter.check245
  %vec.epilog.resume.val240 = phi i64 [ %n.vec224, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx241 = phi i8 [ %i.bh, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx242 = phi i8 [ %i.bi, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %n.vec248 = and i64 %i.aw, -8                   ; 3 uses
  %12 = or disjoint i64 %n.vec248, 1
  %broadcast.splatinsert249 = insertelement <8 x i8> poison, i8 %bc.merge.rdx241, i64 0
  %broadcast.splat250 = shufflevector <8 x i8> %broadcast.splatinsert249, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x i8> poison, i8 %bc.merge.rdx242, i64 0
  %broadcast.splat252 = shufflevector <8 x i8> %broadcast.splatinsert251, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body253

vec.epilog.vector.body253:                        ; preds = %vec.epilog.vector.body253, %vec.epilog.ph247
  %index254 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph247 ], [ %index.next258, %vec.epilog.vector.body253 ] ; 2 uses
  %vec.phi255.a = phi <8 x i8> [ %broadcast.splat250, %vec.epilog.ph247 ], [ %i.bm, %vec.epilog.vector.body253 ]
  %vec.phi256 = phi <8 x i8> [ %broadcast.splat252, %vec.epilog.ph247 ], [ %i.bl, %vec.epilog.vector.body253 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %index254
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %wide.load257 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !881 ; 2 uses
  %i.bl = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load257, <8 x i8> %vec.phi256) ; 2 uses
  %i.bm = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load257, <8 x i8> %vec.phi255.a) ; 2 uses
  %index.next258 = add nuw i64 %index254, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next258, %n.vec248
  br i1 %i.bn, label %vec.epilog.middle.block259, label %vec.epilog.vector.body253, !llvm.loop !3047

vec.epilog.middle.block259:                       ; preds = %vec.epilog.vector.body253
  %i.bo = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.bm) ; 2 uses
  %i.bp = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.bl) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.aw, %n.vec248
  br i1 %cmp.n260, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %iter.check243, %vec.epilog.iter.check245, %vec.epilog.middle.block259
  %indvars.iv.i88.ph = phi i64 [ 1, %iter.check243 ], [ %i.ay, %vec.epilog.iter.check245 ], [ %12, %vec.epilog.middle.block259 ]
  %.01822.i89.ph = phi i8 [ %i.au, %iter.check243 ], [ %i.bh, %vec.epilog.iter.check245 ], [ %i.bo, %vec.epilog.middle.block259 ]
  %.01921.i90.ph = phi i8 [ %i.au, %iter.check243 ], [ %i.bi, %vec.epilog.iter.check245 ], [ %i.bp, %vec.epilog.middle.block259 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i87 ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 2 uses
  %.01822.i89 = phi i8 [ %.1.i92, %.lr.ph.i87 ], [ %.01822.i89.ph, %.lr.ph.i87.preheader ]
  %.01921.i90 = phi i8 [ %spec.select.i91, %.lr.ph.i87 ], [ %.01921.i90.ph, %.lr.ph.i87.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i88
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !881 ; 2 uses
  %spec.select.i91 = tail call i8 @llvm.smin.i8(i8 %i.br, i8 %.01921.i90) ; 2 uses
  %.1.i92 = tail call i8 @llvm.smax.i8(i8 %i.br, i8 %.01822.i89) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i86
  br i1 %exitcond.not.i94, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87, !llvm.loop !3048

_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95:        ; preds = %.lr.ph.i87, %middle.block236, %vec.epilog.middle.block259, %bb.e
  %.019.lcssa.i83 = phi i8 [ %i.au, %bb.e ], [ %i.bp, %vec.epilog.middle.block259 ], [ %i.bi, %middle.block236 ], [ %spec.select.i91, %.lr.ph.i87 ]
  %.018.lcssa.i84 = phi i8 [ %i.au, %bb.e ], [ %i.bo, %vec.epilog.middle.block259 ], [ %i.bh, %middle.block236 ], [ %.1.i92, %.lr.ph.i87 ]
  %i.bs = sitofp i8 %.019.lcssa.i83 to double
  %i.bt = sitofp i8 %.018.lcssa.i84 to double
  br label %bb.f

bb.f:                                             ; preds = %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95, %bb.d
  %i.bu = phi double [ %i.bs, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95 ], [ %i.ap, %bb.d ] ; 7 uses
  %i.bv = phi double [ %i.bt, %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit95 ], [ %i.as, %bb.d ] ; 6 uses
  %i.bw = icmp slt i32 %4, 0
  br i1 %i.bw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  switch i32 %4, label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.h
    i32 -2, label %bb.i
    i32 -3, label %bb.j
    i32 -4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = uitofp nneg i32 %3 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bx)
  %i.by = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bz = fptosi double %i.by to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = uitofp nneg i32 %3 to double
  %i.cb = tail call noundef double @log2(double noundef %i.ca) #16
  %i.cc = fadd double %i.cb, 1.000000e+00
  %i.cd = tail call double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.j:                                             ; preds = %bb.g
  %i.cf = uitofp nneg i32 %3 to double
  %i.cg = tail call noundef double @cbrt(double noundef %i.cf) #17
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = tail call double @llvm.ceil.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.k:                                             ; preds = %bb.g
  %i.ck = uitofp nneg i32 %3 to double            ; 2 uses
  %i.cl = fdiv double 1.000000e+00, %i.ck         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 5 uses
  %i.cm = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.dg, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !881
  %i.cq = sitofp i8 %i.cp to double
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cl, double %.089.i.i.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !881
  %i.cv = sitofp i8 %i.cu to double
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cr)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !881
  %i.da = sitofp i8 %i.cz to double
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cl, double %i.cw)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !881
  %i.df = sitofp i8 %i.de to double
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cl, double %i.db) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !27

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.k
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.k ], [ %i.dg, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.dk, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !881
  %i.dj = sitofp i8 %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.cl, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i, label %bb.m, !llvm.loop !3049

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i:           ; preds = %bb.m, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa278 = phi double [ %i.dg, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.dk, %bb.m ] ; 3 uses
  %i.dl = add nsw i32 %3, -1
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %xtraiter293 = and i64 %wide.trip.count.i.i.i, 1
  %i.do = icmp eq i64 %i.cm, 0
  br i1 %i.do, label %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i
  %unroll_iter298 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIaEdPKT_i.exit.i.i

_ZL6ImMeanIaEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIaEdPKT_i.exit.i.i, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIaEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %i.eb, %_ZL6ImMeanIaEdPKT_i.exit.i.i ]
  %niter299 = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i.new ], [ %niter299.next.1, %_ZL6ImMeanIaEdPKT_i.exit.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !881
  %i.dr = sitofp i8 %i.dq to double
  %i.ds = fsub double %i.dr, %.lcssa278           ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dn, double %.01415.i.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !881
  %i.dy = sitofp i8 %i.dx to double
  %i.dz = fsub double %i.dy, %.lcssa278           ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dn, double %i.du) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIaEdPKT_i.exit.i.i, !llvm.loop !28

_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIaEdPKT_i.exit.i.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %_ZL8ImStdDevIaEdPKT_i.exit.i, label %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIaEdPKT_i.exit.preheader.i.i ], [ %i.eb, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !881
  %i.ee = sitofp i8 %i.ed to double
  %i.ef = fsub double %i.ee, %.lcssa278           ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.dn, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIaEdPKT_i.exit.i

_ZL8ImStdDevIaEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader
  %.lcssa277 = phi double [ %i.eb, %_ZL8ImStdDevIaEdPKT_i.exit.i.unr-lcssa ], [ %i.eh, %_ZL6ImMeanIaEdPKT_i.exit.i.i.epil.preheader ]
  %i.ei = tail call noundef double @sqrt(double noundef %.lcssa277) #16
  %i.ej = fmul double %i.ei, 3.490000e+00
  %i.ek = tail call noundef double @cbrt(double noundef %i.ck) #17
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fsub double %i.an, %i.am
  %i.en = fdiv double %i.em, %i.el
  %i.eo = tail call double @llvm.round.f64(double %i.en)
  %i.ep = fptosi double %i.eo to i32
  br label %_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit

_ZN6ImPlotL13CalculateBinsIaEEvPKT_iiRK11ImPlotRangeRiRd.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_ZL8ImStdDevIaEdPKT_i.exit.i
  %.1156 = phi i32 [ %i.ep, %_ZL8ImStdDevIaEdPKT_i.exit.i ], [ %i.bz, %bb.h ], [ %i.ce, %bb.i ], [ %i.cj, %bb.j ], [ %4, %bb.g ] ; 2 uses
  %i.eq = fsub double %i.an, %i.am
  %i.er = sitofp i32 %.1156 to double
  %i.es = fdiv double %i.eq, %i.er
  br label %bb.o

end_hunk_8
begin_hunk_9_@_ZN6ImPlot15PlotHistogram2DIaEEdPKcPKT_S5_iii10ImPlotRecti:bb.a
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 24 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 2448
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !94
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 2452
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !95
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lo
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(372) %i.ll, ptr noundef nonnull align 8 dereferenceable(372) %i.lp)
  br label %bb.ai

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.lq = icmp slt i32 %.0153, 1
  %i.lr = icmp slt i32 %.0155, 1
  %or.cond13 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %or.cond13, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ls = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lt, align 4, !tbaa !98
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lu, align 4, !tbaa !98
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lv, align 4, !tbaa !98
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lw, align 4, !tbaa !98
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lx, align 4, !tbaa !98
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 1448
  store float -1.000000e+00, ptr %i.ly, align 4, !tbaa !100
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.lz, align 4, !tbaa !98
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.ma, align 4, !tbaa !98
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 1416
  store float -1.000000e+00, ptr %i.mb, align 4, !tbaa !101
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 1420
  store i32 -1, ptr %i.mc, align 4, !tbaa !102
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 1457
  store i8 0, ptr %i.md, align 1, !tbaa !103
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 1456
  store i8 0, ptr %i.me, align 4, !tbaa !104
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 104 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !140
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !141
  store ptr null, ptr %i.mf, align 8, !tbaa !140
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.mi = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hx, i64 1056
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store double %i.am, ptr %9, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.bu, ptr %i.ml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store double %i.an, ptr %10, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.bv, ptr %i.mm, align 8
  call void @_ZN6ImPlot13RenderHeatmapIdEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.mi, ptr noundef %i.mk, i32 noundef %.0153, i32 noundef %.0155, double noundef 0.000000e+00, double noundef %.3, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext false, i1 noundef zeroext %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.mn = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mo, align 4, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mp, align 4, !tbaa !98
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mq, align 4, !tbaa !98
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mr, align 4, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ms, align 4, !tbaa !98
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 1448
  store float -1.000000e+00, ptr %i.mt, align 4, !tbaa !100
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.mu, align 4, !tbaa !98
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.mv, align 4, !tbaa !98
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 1416
  store float -1.000000e+00, ptr %i.mw, align 4, !tbaa !101
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 1420
  store i32 -1, ptr %i.mx, align 4, !tbaa !102
  %i.my = getelementptr inbounds nuw i8, ptr %i.mn, i64 1457
  store i8 0, ptr %i.my, align 1, !tbaa !103
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mn, i64 1456
  store i8 0, ptr %i.mz, align 4, !tbaa !104
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 104 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !140
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 112
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !141
  store ptr null, ptr %i.na, align 8, !tbaa !140
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit ], [ %.3, %bb.ak ], [ %.3, %bb.aj ]
  ret double %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot15PlotHistogram2DIhEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%struct.ImPlotRect) align 8 %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::FitterRect", align 8 ; 8 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %10 = alloca %struct.ImPlotPoint, align 8       ; 5 uses
  %i.a = and i32 %7, 4096
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 8192
  %.not157 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 16384
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %3, 1
  %i.f = icmp eq i32 %4, 0
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load double, ptr %6, align 8, !tbaa !1186 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  %or.cond7 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %1, align 1, !tbaa !881     ; 7 uses
  %i.n = icmp samesign ugt i32 %3, 1
  br i1 %i.n, label %iter.check, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %i.o = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %3, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp ult i32 %3, 33
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi200 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi201 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi202 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !881 ; 2 uses
  %wide.load203 = load <16 x i8>, ptr %i.t, align 1, !tbaa !881 ; 2 uses
  %i.u = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi201) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load203, <16 x i8> %vec.phi202) ; 2 uses
  %i.w = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.x = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load203, <16 x i8> %vec.phi200) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3054

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.w, <16 x i8> %i.x)
  %i.z = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax204 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.aa = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax204) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.z, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx205 = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %n.vec206 = and i64 %i.o, -8                    ; 3 uses
  %11 = or disjoint i64 %n.vec206, 1
  %broadcast.splatinsert207 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat208 = shufflevector <8 x i8> %broadcast.splatinsert207, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <8 x i8> poison, i8 %bc.merge.rdx205, i64 0
  %broadcast.splat210 = shufflevector <8 x i8> %broadcast.splatinsert209, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x i8> [ %broadcast.splat208, %vec.epilog.ph ], [ %i.ae, %vec.epilog.vector.body ]
  %vec.phi213 = phi <8 x i8> [ %broadcast.splat210, %vec.epilog.ph ], [ %i.ad, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %wide.load214 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !881 ; 2 uses
  %i.ad = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load214, <8 x i8> %vec.phi213) ; 2 uses
  %i.ae = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load214, <8 x i8> %vec.phi212) ; 2 uses
  %index.next215 = add nuw i64 %index211, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3055

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.ae) ; 2 uses
  %i.ah = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.ad) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.o, %n.vec206
  br i1 %cmp.n216, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i8 [ %i.m, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i8 [ %i.m, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i8 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !881 ; 2 uses
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.aj, i8 %.01921.i) ; 2 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.aj, i8 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !3056

_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i8 [ %i.m, %bb.c ], [ %i.ah, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i8 [ %i.m, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.ak = uitofp i8 %.019.lcssa.i to double
  %i.al = uitofp i8 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit, %bb.b
  %i.am = phi double [ %i.ak, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %i.h, %bb.b ] ; 7 uses
  %i.an = phi double [ %i.al, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit ], [ %i.k, %bb.b ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !421 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  %or.cond11 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr %2, align 1, !tbaa !881    ; 7 uses
  %i.av = icmp samesign ugt i32 %3, 1
  br i1 %i.av, label %iter.check243, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95

iter.check243:                                    ; preds = %bb.e
  %wide.trip.count.i86 = zext nneg i32 %3 to i64  ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count.i86, -1    ; 5 uses
  %min.iters.check220 = icmp ult i32 %3, 9
  br i1 %min.iters.check220, label %.lr.ph.i87.preheader, label %vector.main.loop.iter.check221

vector.main.loop.iter.check221:                   ; preds = %iter.check243
  %min.iters.check222 = icmp ult i32 %3, 33
  br i1 %min.iters.check222, label %vec.epilog.ph247, label %vector.ph223

vector.ph223:                                     ; preds = %vector.main.loop.iter.check221
  %i.ax = and i64 %i.aw, 24
  %n.vec224 = and i64 %i.aw, -32                  ; 4 uses
  %i.ay = or disjoint i64 %n.vec224, 1
  %broadcast.splatinsert225 = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %broadcast.splat226 = shufflevector <16 x i8> %broadcast.splatinsert225, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.ph223, %vector.body227
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next235, %vector.body227 ] ; 2 uses
  %vec.phi229.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.be, %vector.body227 ]
  %vec.phi230.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bf, %vector.body227 ]
  %vec.phi231.a = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bc, %vector.body227 ]
  %vec.phi232 = phi <16 x i8> [ %broadcast.splat226, %vector.ph223 ], [ %i.bd, %vector.body227 ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %index228 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 17
  %wide.load233.a = load <16 x i8>, ptr %i.ba, align 1, !tbaa !881 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !881 ; 2 uses
  %i.bc = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load233.a, <16 x i8> %vec.phi231.a) ; 2 uses
  %i.bd = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load234, <16 x i8> %vec.phi232) ; 2 uses
  %i.be = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load233.a, <16 x i8> %vec.phi229.a) ; 2 uses
  %i.bf = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load234, <16 x i8> %vec.phi230.a) ; 2 uses
  %index.next235 = add nuw i64 %index228, 32      ; 2 uses
  %i.bg = icmp eq i64 %index.next235, %n.vec224
  br i1 %i.bg, label %middle.block236, label %vector.body227, !llvm.loop !3057

middle.block236:                                  ; preds = %vector.body227
  %rdx.minmax237.a = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.be, <16 x i8> %i.bf)
  %i.bh = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax237.a) ; 3 uses
  %rdx.minmax238 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bc, <16 x i8> %i.bd)
  %i.bi = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax238) ; 3 uses
  %cmp.n239 = icmp eq i64 %i.aw, %n.vec224
  br i1 %cmp.n239, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block236
  %min.epilog.iters.check246 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check246, label %.lr.ph.i87.preheader, label %vec.epilog.ph247, !prof !1261

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check221, %vec.epilog.iter.check245
  %vec.epilog.resume.val240 = phi i64 [ %n.vec224, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx241 = phi i8 [ %i.bh, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx242 = phi i8 [ %i.bi, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %n.vec248 = and i64 %i.aw, -8                   ; 3 uses
  %12 = or disjoint i64 %n.vec248, 1
  %broadcast.splatinsert249 = insertelement <8 x i8> poison, i8 %bc.merge.rdx241, i64 0
  %broadcast.splat250 = shufflevector <8 x i8> %broadcast.splatinsert249, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x i8> poison, i8 %bc.merge.rdx242, i64 0
  %broadcast.splat252 = shufflevector <8 x i8> %broadcast.splatinsert251, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body253

vec.epilog.vector.body253:                        ; preds = %vec.epilog.vector.body253, %vec.epilog.ph247
  %index254 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph247 ], [ %index.next258, %vec.epilog.vector.body253 ] ; 2 uses
  %vec.phi255.a = phi <8 x i8> [ %broadcast.splat250, %vec.epilog.ph247 ], [ %i.bm, %vec.epilog.vector.body253 ]
  %vec.phi256 = phi <8 x i8> [ %broadcast.splat252, %vec.epilog.ph247 ], [ %i.bl, %vec.epilog.vector.body253 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %index254
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %wide.load257 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !881 ; 2 uses
  %i.bl = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load257, <8 x i8> %vec.phi256) ; 2 uses
  %i.bm = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load257, <8 x i8> %vec.phi255.a) ; 2 uses
  %index.next258 = add nuw i64 %index254, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next258, %n.vec248
  br i1 %i.bn, label %vec.epilog.middle.block259, label %vec.epilog.vector.body253, !llvm.loop !3058

vec.epilog.middle.block259:                       ; preds = %vec.epilog.vector.body253
  %i.bo = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.bm) ; 2 uses
  %i.bp = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.bl) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.aw, %n.vec248
  br i1 %cmp.n260, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %iter.check243, %vec.epilog.iter.check245, %vec.epilog.middle.block259
  %indvars.iv.i88.ph = phi i64 [ 1, %iter.check243 ], [ %i.ay, %vec.epilog.iter.check245 ], [ %12, %vec.epilog.middle.block259 ]
  %.01822.i89.ph = phi i8 [ %i.au, %iter.check243 ], [ %i.bh, %vec.epilog.iter.check245 ], [ %i.bo, %vec.epilog.middle.block259 ]
  %.01921.i90.ph = phi i8 [ %i.au, %iter.check243 ], [ %i.bi, %vec.epilog.iter.check245 ], [ %i.bp, %vec.epilog.middle.block259 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i87 ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 2 uses
  %.01822.i89 = phi i8 [ %.1.i92, %.lr.ph.i87 ], [ %.01822.i89.ph, %.lr.ph.i87.preheader ]
  %.01921.i90 = phi i8 [ %spec.select.i91, %.lr.ph.i87 ], [ %.01921.i90.ph, %.lr.ph.i87.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i88
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !881 ; 2 uses
  %spec.select.i91 = tail call i8 @llvm.umin.i8(i8 %i.br, i8 %.01921.i90) ; 2 uses
  %.1.i92 = tail call i8 @llvm.umax.i8(i8 %i.br, i8 %.01822.i89) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i86
  br i1 %exitcond.not.i94, label %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87, !llvm.loop !3059

_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95:        ; preds = %.lr.ph.i87, %middle.block236, %vec.epilog.middle.block259, %bb.e
  %.019.lcssa.i83 = phi i8 [ %i.au, %bb.e ], [ %i.bp, %vec.epilog.middle.block259 ], [ %i.bi, %middle.block236 ], [ %spec.select.i91, %.lr.ph.i87 ]
  %.018.lcssa.i84 = phi i8 [ %i.au, %bb.e ], [ %i.bo, %vec.epilog.middle.block259 ], [ %i.bh, %middle.block236 ], [ %.1.i92, %.lr.ph.i87 ]
  %i.bs = uitofp i8 %.019.lcssa.i83 to double
  %i.bt = uitofp i8 %.018.lcssa.i84 to double
  br label %bb.f

bb.f:                                             ; preds = %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95, %bb.d
  %i.bu = phi double [ %i.bs, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95 ], [ %i.ap, %bb.d ] ; 7 uses
  %i.bv = phi double [ %i.bt, %_ZL13ImMinMaxArrayIhEvPKT_iPS0_S3_.exit95 ], [ %i.as, %bb.d ] ; 6 uses
  %i.bw = icmp slt i32 %4, 0
  br i1 %i.bw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  switch i32 %4, label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.h
    i32 -2, label %bb.i
    i32 -3, label %bb.j
    i32 -4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = uitofp nneg i32 %3 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bx)
  %i.by = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bz = fptosi double %i.by to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = uitofp nneg i32 %3 to double
  %i.cb = tail call noundef double @log2(double noundef %i.ca) #16
  %i.cc = fadd double %i.cb, 1.000000e+00
  %i.cd = tail call double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.j:                                             ; preds = %bb.g
  %i.cf = uitofp nneg i32 %3 to double
  %i.cg = tail call noundef double @cbrt(double noundef %i.cf) #17
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = tail call double @llvm.ceil.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.k:                                             ; preds = %bb.g
  %i.ck = uitofp nneg i32 %3 to double            ; 2 uses
  %i.cl = fdiv double 1.000000e+00, %i.ck         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 5 uses
  %i.cm = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.dg, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !881
  %i.cq = uitofp i8 %i.cp to double
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cl, double %.089.i.i.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !881
  %i.cv = uitofp i8 %i.cu to double
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cr)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !881
  %i.da = uitofp i8 %i.cz to double
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cl, double %i.cw)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !881
  %i.df = uitofp i8 %i.de to double
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cl, double %i.db) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !29

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.k
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.k ], [ %i.dg, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.dk, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !881
  %i.dj = uitofp i8 %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.cl, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i, label %bb.m, !llvm.loop !3060

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i:           ; preds = %bb.m, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa278 = phi double [ %i.dg, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.dk, %bb.m ] ; 3 uses
  %i.dl = add nsw i32 %3, -1
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %xtraiter293 = and i64 %wide.trip.count.i.i.i, 1
  %i.do = icmp eq i64 %i.cm, 0
  br i1 %i.do, label %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i
  %unroll_iter298 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIhEdPKT_i.exit.i.i

_ZL6ImMeanIhEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIhEdPKT_i.exit.i.i, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIhEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %i.eb, %_ZL6ImMeanIhEdPKT_i.exit.i.i ]
  %niter299 = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i.new ], [ %niter299.next.1, %_ZL6ImMeanIhEdPKT_i.exit.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !881
  %i.dr = uitofp i8 %i.dq to double
  %i.ds = fsub double %i.dr, %.lcssa278           ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dn, double %.01415.i.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !881
  %i.dy = uitofp i8 %i.dx to double
  %i.dz = fsub double %i.dy, %.lcssa278           ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dn, double %i.du) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIhEdPKT_i.exit.i.i, !llvm.loop !30

_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIhEdPKT_i.exit.i.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %_ZL8ImStdDevIhEdPKT_i.exit.i, label %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIhEdPKT_i.exit.preheader.i.i ], [ %i.eb, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !881
  %i.ee = uitofp i8 %i.ed to double
  %i.ef = fsub double %i.ee, %.lcssa278           ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.dn, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIhEdPKT_i.exit.i

_ZL8ImStdDevIhEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader
  %.lcssa277 = phi double [ %i.eb, %_ZL8ImStdDevIhEdPKT_i.exit.i.unr-lcssa ], [ %i.eh, %_ZL6ImMeanIhEdPKT_i.exit.i.i.epil.preheader ]
  %i.ei = tail call noundef double @sqrt(double noundef %.lcssa277) #16
  %i.ej = fmul double %i.ei, 3.490000e+00
  %i.ek = tail call noundef double @cbrt(double noundef %i.ck) #17
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fsub double %i.an, %i.am
  %i.en = fdiv double %i.em, %i.el
  %i.eo = tail call double @llvm.round.f64(double %i.en)
  %i.ep = fptosi double %i.eo to i32
  br label %_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit

_ZN6ImPlotL13CalculateBinsIhEEvPKT_iiRK11ImPlotRangeRiRd.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_ZL8ImStdDevIhEdPKT_i.exit.i
  %.1156 = phi i32 [ %i.ep, %_ZL8ImStdDevIhEdPKT_i.exit.i ], [ %i.bz, %bb.h ], [ %i.ce, %bb.i ], [ %i.cj, %bb.j ], [ %4, %bb.g ] ; 2 uses
  %i.eq = fsub double %i.an, %i.am
  %i.er = sitofp i32 %.1156 to double
  %i.es = fdiv double %i.eq, %i.er
  br label %bb.o

end_hunk_9
begin_hunk_10_@_ZN6ImPlot15PlotHistogram2DIhEEdPKcPKT_S5_iii10ImPlotRecti:bb.a
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 24 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 2448
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !94
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 2452
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !95
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lo
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(372) %i.ll, ptr noundef nonnull align 8 dereferenceable(372) %i.lp)
  br label %bb.ai

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.lq = icmp slt i32 %.0153, 1
  %i.lr = icmp slt i32 %.0155, 1
  %or.cond13 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %or.cond13, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ls = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lt, align 4, !tbaa !98
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lu, align 4, !tbaa !98
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lv, align 4, !tbaa !98
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lw, align 4, !tbaa !98
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lx, align 4, !tbaa !98
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 1448
  store float -1.000000e+00, ptr %i.ly, align 4, !tbaa !100
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.lz, align 4, !tbaa !98
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.ma, align 4, !tbaa !98
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 1416
  store float -1.000000e+00, ptr %i.mb, align 4, !tbaa !101
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 1420
  store i32 -1, ptr %i.mc, align 4, !tbaa !102
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 1457
  store i8 0, ptr %i.md, align 1, !tbaa !103
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 1456
  store i8 0, ptr %i.me, align 4, !tbaa !104
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 104 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !140
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !141
  store ptr null, ptr %i.mf, align 8, !tbaa !140
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.mi = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hx, i64 1056
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store double %i.am, ptr %9, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.bu, ptr %i.ml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store double %i.an, ptr %10, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.bv, ptr %i.mm, align 8
  call void @_ZN6ImPlot13RenderHeatmapIdEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.mi, ptr noundef %i.mk, i32 noundef %.0153, i32 noundef %.0155, double noundef 0.000000e+00, double noundef %.3, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext false, i1 noundef zeroext %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.mn = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mo, align 4, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mp, align 4, !tbaa !98
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mq, align 4, !tbaa !98
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mr, align 4, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ms, align 4, !tbaa !98
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 1448
  store float -1.000000e+00, ptr %i.mt, align 4, !tbaa !100
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.mu, align 4, !tbaa !98
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.mv, align 4, !tbaa !98
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 1416
  store float -1.000000e+00, ptr %i.mw, align 4, !tbaa !101
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 1420
  store i32 -1, ptr %i.mx, align 4, !tbaa !102
  %i.my = getelementptr inbounds nuw i8, ptr %i.mn, i64 1457
  store i8 0, ptr %i.my, align 1, !tbaa !103
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mn, i64 1456
  store i8 0, ptr %i.mz, align 4, !tbaa !104
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 104 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !140
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 112
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !141
  store ptr null, ptr %i.na, align 8, !tbaa !140
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit ], [ %.3, %bb.ak ], [ %.3, %bb.aj ]
  ret double %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot15PlotHistogram2DIsEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%struct.ImPlotRect) align 8 %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::FitterRect", align 8 ; 8 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %10 = alloca %struct.ImPlotPoint, align 8       ; 5 uses
  %i.a = and i32 %7, 4096
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 8192
  %.not157 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 16384
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %3, 1
  %i.f = icmp eq i32 %4, 0
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load double, ptr %6, align 8, !tbaa !1186 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  %or.cond7 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %1, align 2, !tbaa !900    ; 7 uses
  %i.n = icmp samesign ugt i32 %3, 1
  br i1 %i.n, label %iter.check, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %i.o = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %3, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp ult i32 %3, 17
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 12
  %n.vec = and i64 %i.o, -16                      ; 4 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.m, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi200 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi201 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi202 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %wide.load = load <8 x i16>, ptr %i.s, align 2, !tbaa !900 ; 2 uses
  %wide.load203 = load <8 x i16>, ptr %i.t, align 2, !tbaa !900 ; 2 uses
  %i.u = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi201) ; 2 uses
  %i.v = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load203, <8 x i16> %vec.phi202) ; 2 uses
  %i.w = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.x = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load203, <8 x i16> %vec.phi200) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3065

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.w, <8 x i16> %i.x)
  %i.z = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax204 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.u, <8 x i16> %i.v)
  %i.aa = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax204) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.z, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx205 = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %n.vec206 = and i64 %i.o, -4                    ; 3 uses
  %11 = or disjoint i64 %n.vec206, 1
  %broadcast.splatinsert207 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat208 = shufflevector <4 x i16> %broadcast.splatinsert207, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <4 x i16> poison, i16 %bc.merge.rdx205, i64 0
  %broadcast.splat210 = shufflevector <4 x i16> %broadcast.splatinsert209, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi212 = phi <4 x i16> [ %broadcast.splat208, %vec.epilog.ph ], [ %i.ae, %vec.epilog.vector.body ]
  %vec.phi213 = phi <4 x i16> [ %broadcast.splat210, %vec.epilog.ph ], [ %i.ad, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %wide.load214 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !900 ; 2 uses
  %i.ad = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load214, <4 x i16> %vec.phi213) ; 2 uses
  %i.ae = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load214, <4 x i16> %vec.phi212) ; 2 uses
  %index.next215 = add nuw i64 %index211, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3066

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.ae) ; 2 uses
  %i.ah = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.ad) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.o, %n.vec206
  br i1 %cmp.n216, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.m, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.m, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.smin.i16(i16 %i.aj, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.smax.i16(i16 %i.aj, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !3067

_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i16 [ %i.m, %bb.c ], [ %i.ah, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.m, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.ak = sitofp i16 %.019.lcssa.i to double
  %i.al = sitofp i16 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit, %bb.b
  %i.am = phi double [ %i.ak, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %i.h, %bb.b ] ; 7 uses
  %i.an = phi double [ %i.al, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit ], [ %i.k, %bb.b ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !421 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  %or.cond11 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = load i16, ptr %2, align 2, !tbaa !900   ; 7 uses
  %i.av = icmp samesign ugt i32 %3, 1
  br i1 %i.av, label %iter.check243, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95

iter.check243:                                    ; preds = %bb.e
  %wide.trip.count.i86 = zext nneg i32 %3 to i64  ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count.i86, -1    ; 5 uses
  %min.iters.check220 = icmp ult i32 %3, 5
  br i1 %min.iters.check220, label %.lr.ph.i87.preheader, label %vector.main.loop.iter.check221

vector.main.loop.iter.check221:                   ; preds = %iter.check243
  %min.iters.check222 = icmp ult i32 %3, 17
  br i1 %min.iters.check222, label %vec.epilog.ph247, label %vector.ph223

vector.ph223:                                     ; preds = %vector.main.loop.iter.check221
  %i.ax = and i64 %i.aw, 12
  %n.vec224 = and i64 %i.aw, -16                  ; 4 uses
  %i.ay = or disjoint i64 %n.vec224, 1
  %broadcast.splatinsert225 = insertelement <8 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat226 = shufflevector <8 x i16> %broadcast.splatinsert225, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.ph223, %vector.body227
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next235, %vector.body227 ] ; 2 uses
  %vec.phi229.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.be, %vector.body227 ]
  %vec.phi230.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bf, %vector.body227 ]
  %vec.phi231.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bc, %vector.body227 ]
  %vec.phi232 = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bd, %vector.body227 ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index228 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 18
  %wide.load233.a = load <8 x i16>, ptr %i.ba, align 2, !tbaa !900 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !900 ; 2 uses
  %i.bc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load233.a, <8 x i16> %vec.phi231.a) ; 2 uses
  %i.bd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load234, <8 x i16> %vec.phi232) ; 2 uses
  %i.be = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load233.a, <8 x i16> %vec.phi229.a) ; 2 uses
  %i.bf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load234, <8 x i16> %vec.phi230.a) ; 2 uses
  %index.next235 = add nuw i64 %index228, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next235, %n.vec224
  br i1 %i.bg, label %middle.block236, label %vector.body227, !llvm.loop !3068

middle.block236:                                  ; preds = %vector.body227
  %rdx.minmax237.a = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.be, <8 x i16> %i.bf)
  %i.bh = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax237.a) ; 3 uses
  %rdx.minmax238 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bc, <8 x i16> %i.bd)
  %i.bi = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax238) ; 3 uses
  %cmp.n239 = icmp eq i64 %i.aw, %n.vec224
  br i1 %cmp.n239, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block236
  %min.epilog.iters.check246 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check246, label %.lr.ph.i87.preheader, label %vec.epilog.ph247, !prof !1299

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check221, %vec.epilog.iter.check245
  %vec.epilog.resume.val240 = phi i64 [ %n.vec224, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx241 = phi i16 [ %i.bh, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx242 = phi i16 [ %i.bi, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %n.vec248 = and i64 %i.aw, -4                   ; 3 uses
  %12 = or disjoint i64 %n.vec248, 1
  %broadcast.splatinsert249 = insertelement <4 x i16> poison, i16 %bc.merge.rdx241, i64 0
  %broadcast.splat250 = shufflevector <4 x i16> %broadcast.splatinsert249, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <4 x i16> poison, i16 %bc.merge.rdx242, i64 0
  %broadcast.splat252 = shufflevector <4 x i16> %broadcast.splatinsert251, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body253

vec.epilog.vector.body253:                        ; preds = %vec.epilog.vector.body253, %vec.epilog.ph247
  %index254 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph247 ], [ %index.next258, %vec.epilog.vector.body253 ] ; 2 uses
  %vec.phi255.a = phi <4 x i16> [ %broadcast.splat250, %vec.epilog.ph247 ], [ %i.bm, %vec.epilog.vector.body253 ]
  %vec.phi256 = phi <4 x i16> [ %broadcast.splat252, %vec.epilog.ph247 ], [ %i.bl, %vec.epilog.vector.body253 ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index254
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %wide.load257 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !900 ; 2 uses
  %i.bl = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load257, <4 x i16> %vec.phi256) ; 2 uses
  %i.bm = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load257, <4 x i16> %vec.phi255.a) ; 2 uses
  %index.next258 = add nuw i64 %index254, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next258, %n.vec248
  br i1 %i.bn, label %vec.epilog.middle.block259, label %vec.epilog.vector.body253, !llvm.loop !3069

vec.epilog.middle.block259:                       ; preds = %vec.epilog.vector.body253
  %i.bo = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.bm) ; 2 uses
  %i.bp = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.bl) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.aw, %n.vec248
  br i1 %cmp.n260, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %iter.check243, %vec.epilog.iter.check245, %vec.epilog.middle.block259
  %indvars.iv.i88.ph = phi i64 [ 1, %iter.check243 ], [ %i.ay, %vec.epilog.iter.check245 ], [ %12, %vec.epilog.middle.block259 ]
  %.01822.i89.ph = phi i16 [ %i.au, %iter.check243 ], [ %i.bh, %vec.epilog.iter.check245 ], [ %i.bo, %vec.epilog.middle.block259 ]
  %.01921.i90.ph = phi i16 [ %i.au, %iter.check243 ], [ %i.bi, %vec.epilog.iter.check245 ], [ %i.bp, %vec.epilog.middle.block259 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i87 ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 2 uses
  %.01822.i89 = phi i16 [ %.1.i92, %.lr.ph.i87 ], [ %.01822.i89.ph, %.lr.ph.i87.preheader ]
  %.01921.i90 = phi i16 [ %spec.select.i91, %.lr.ph.i87 ], [ %.01921.i90.ph, %.lr.ph.i87.preheader ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i88
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !900 ; 2 uses
  %spec.select.i91 = tail call i16 @llvm.smin.i16(i16 %i.br, i16 %.01921.i90) ; 2 uses
  %.1.i92 = tail call i16 @llvm.smax.i16(i16 %i.br, i16 %.01822.i89) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i86
  br i1 %exitcond.not.i94, label %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87, !llvm.loop !3070

_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95:        ; preds = %.lr.ph.i87, %middle.block236, %vec.epilog.middle.block259, %bb.e
  %.019.lcssa.i83 = phi i16 [ %i.au, %bb.e ], [ %i.bp, %vec.epilog.middle.block259 ], [ %i.bi, %middle.block236 ], [ %spec.select.i91, %.lr.ph.i87 ]
  %.018.lcssa.i84 = phi i16 [ %i.au, %bb.e ], [ %i.bo, %vec.epilog.middle.block259 ], [ %i.bh, %middle.block236 ], [ %.1.i92, %.lr.ph.i87 ]
  %i.bs = sitofp i16 %.019.lcssa.i83 to double
  %i.bt = sitofp i16 %.018.lcssa.i84 to double
  br label %bb.f

bb.f:                                             ; preds = %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95, %bb.d
  %i.bu = phi double [ %i.bs, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95 ], [ %i.ap, %bb.d ] ; 7 uses
  %i.bv = phi double [ %i.bt, %_ZL13ImMinMaxArrayIsEvPKT_iPS0_S3_.exit95 ], [ %i.as, %bb.d ] ; 6 uses
  %i.bw = icmp slt i32 %4, 0
  br i1 %i.bw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  switch i32 %4, label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.h
    i32 -2, label %bb.i
    i32 -3, label %bb.j
    i32 -4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = uitofp nneg i32 %3 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bx)
  %i.by = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bz = fptosi double %i.by to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = uitofp nneg i32 %3 to double
  %i.cb = tail call noundef double @log2(double noundef %i.ca) #16
  %i.cc = fadd double %i.cb, 1.000000e+00
  %i.cd = tail call double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.j:                                             ; preds = %bb.g
  %i.cf = uitofp nneg i32 %3 to double
  %i.cg = tail call noundef double @cbrt(double noundef %i.cf) #17
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = tail call double @llvm.ceil.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.k:                                             ; preds = %bb.g
  %i.ck = uitofp nneg i32 %3 to double            ; 2 uses
  %i.cl = fdiv double 1.000000e+00, %i.ck         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 5 uses
  %i.cm = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.dg, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !900
  %i.cq = sitofp i16 %i.cp to double
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cl, double %.089.i.i.i)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !900
  %i.cv = sitofp i16 %i.cu to double
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cr)
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !900
  %i.da = sitofp i16 %i.cz to double
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cl, double %i.cw)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !900
  %i.df = sitofp i16 %i.de to double
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cl, double %i.db) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !31

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.k
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.k ], [ %i.dg, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.dk, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !900
  %i.dj = sitofp i16 %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.cl, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i, label %bb.m, !llvm.loop !3071

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i:           ; preds = %bb.m, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa278 = phi double [ %i.dg, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.dk, %bb.m ] ; 3 uses
  %i.dl = add nsw i32 %3, -1
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %xtraiter293 = and i64 %wide.trip.count.i.i.i, 1
  %i.do = icmp eq i64 %i.cm, 0
  br i1 %i.do, label %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i
  %unroll_iter298 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanIsEdPKT_i.exit.i.i

_ZL6ImMeanIsEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanIsEdPKT_i.exit.i.i, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanIsEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %i.eb, %_ZL6ImMeanIsEdPKT_i.exit.i.i ]
  %niter299 = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i.new ], [ %niter299.next.1, %_ZL6ImMeanIsEdPKT_i.exit.i.i ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !900
  %i.dr = sitofp i16 %i.dq to double
  %i.ds = fsub double %i.dr, %.lcssa278           ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dn, double %.01415.i.i)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !900
  %i.dy = sitofp i16 %i.dx to double
  %i.dz = fsub double %i.dy, %.lcssa278           ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dn, double %i.du) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanIsEdPKT_i.exit.i.i, !llvm.loop !32

_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanIsEdPKT_i.exit.i.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %_ZL8ImStdDevIsEdPKT_i.exit.i, label %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanIsEdPKT_i.exit.preheader.i.i ], [ %i.eb, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !900
  %i.ee = sitofp i16 %i.ed to double
  %i.ef = fsub double %i.ee, %.lcssa278           ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.dn, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevIsEdPKT_i.exit.i

_ZL8ImStdDevIsEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader
  %.lcssa277 = phi double [ %i.eb, %_ZL8ImStdDevIsEdPKT_i.exit.i.unr-lcssa ], [ %i.eh, %_ZL6ImMeanIsEdPKT_i.exit.i.i.epil.preheader ]
  %i.ei = tail call noundef double @sqrt(double noundef %.lcssa277) #16
  %i.ej = fmul double %i.ei, 3.490000e+00
  %i.ek = tail call noundef double @cbrt(double noundef %i.ck) #17
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fsub double %i.an, %i.am
  %i.en = fdiv double %i.em, %i.el
  %i.eo = tail call double @llvm.round.f64(double %i.en)
  %i.ep = fptosi double %i.eo to i32
  br label %_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit

_ZN6ImPlotL13CalculateBinsIsEEvPKT_iiRK11ImPlotRangeRiRd.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_ZL8ImStdDevIsEdPKT_i.exit.i
  %.1156 = phi i32 [ %i.ep, %_ZL8ImStdDevIsEdPKT_i.exit.i ], [ %i.bz, %bb.h ], [ %i.ce, %bb.i ], [ %i.cj, %bb.j ], [ %4, %bb.g ] ; 2 uses
  %i.eq = fsub double %i.an, %i.am
  %i.er = sitofp i32 %.1156 to double
  %i.es = fdiv double %i.eq, %i.er
  br label %bb.o

end_hunk_10
begin_hunk_11_@_ZN6ImPlot15PlotHistogram2DIsEEdPKcPKT_S5_iii10ImPlotRecti:bb.a
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 24 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 2448
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !94
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 2452
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !95
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [376 x i8], ptr %i.lh, i64 %i.lo
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(372) %i.ll, ptr noundef nonnull align 8 dereferenceable(372) %i.lp)
  br label %bb.ai

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.lq = icmp slt i32 %.0153, 1
  %i.lr = icmp slt i32 %.0155, 1
  %or.cond13 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %or.cond13, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ls = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lt, align 4, !tbaa !98
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lu, align 4, !tbaa !98
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lv, align 4, !tbaa !98
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lw, align 4, !tbaa !98
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.lx, align 4, !tbaa !98
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 1448
  store float -1.000000e+00, ptr %i.ly, align 4, !tbaa !100
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.lz, align 4, !tbaa !98
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.ma, align 4, !tbaa !98
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 1416
  store float -1.000000e+00, ptr %i.mb, align 4, !tbaa !101
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 1420
  store i32 -1, ptr %i.mc, align 4, !tbaa !102
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 1457
  store i8 0, ptr %i.md, align 1, !tbaa !103
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 1456
  store i8 0, ptr %i.me, align 4, !tbaa !104
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 104 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !140
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !141
  store ptr null, ptr %i.mf, align 8, !tbaa !140
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.mi = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hx, i64 1056
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !875
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store double %i.am, ptr %9, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.bu, ptr %i.ml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store double %i.an, ptr %10, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.bv, ptr %i.mm, align 8
  call void @_ZN6ImPlot13RenderHeatmapIdEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb(ptr noundef nonnull align 8 dereferenceable(224) %i.mi, ptr noundef %i.mk, i32 noundef %.0153, i32 noundef %.0155, double noundef 0.000000e+00, double noundef %.3, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext false, i1 noundef zeroext %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.mn = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mo, align 4, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mp, align 4, !tbaa !98
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mq, align 4, !tbaa !98
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.mr, align 4, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ms, align 4, !tbaa !98
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 1448
  store float -1.000000e+00, ptr %i.mt, align 4, !tbaa !100
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.mu, align 4, !tbaa !98
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.mv, align 4, !tbaa !98
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 1416
  store float -1.000000e+00, ptr %i.mw, align 4, !tbaa !101
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 1420
  store i32 -1, ptr %i.mx, align 4, !tbaa !102
  %i.my = getelementptr inbounds nuw i8, ptr %i.mn, i64 1457
  store i8 0, ptr %i.my, align 1, !tbaa !103
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mn, i64 1456
  store i8 0, ptr %i.mz, align 4, !tbaa !104
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 104 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !140
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 112
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !141
  store ptr null, ptr %i.na, align 8, !tbaa !140
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %.3, %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit ], [ %.3, %bb.ak ], [ %.3, %bb.aj ]
  ret double %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot15PlotHistogram2DItEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%struct.ImPlotRect) align 8 %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::FitterRect", align 8 ; 8 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %10 = alloca %struct.ImPlotPoint, align 8       ; 5 uses
  %i.a = and i32 %7, 4096
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 8192
  %.not157 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 16384
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %3, 1
  %i.f = icmp eq i32 %4, 0
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load double, ptr %6, align 8, !tbaa !1186 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  %or.cond7 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %1, align 2, !tbaa !900    ; 7 uses
  %i.n = icmp samesign ugt i32 %3, 1
  br i1 %i.n, label %iter.check, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %i.o = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %3, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp ult i32 %3, 17
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 12
  %n.vec = and i64 %i.o, -16                      ; 4 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.m, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi200 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi201 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi202 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %wide.load = load <8 x i16>, ptr %i.s, align 2, !tbaa !900 ; 2 uses
  %wide.load203 = load <8 x i16>, ptr %i.t, align 2, !tbaa !900 ; 2 uses
  %i.u = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi201) ; 2 uses
  %i.v = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load203, <8 x i16> %vec.phi202) ; 2 uses
  %i.w = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.x = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load203, <8 x i16> %vec.phi200) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3076

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.w, <8 x i16> %i.x)
  %i.z = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax204 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.u, <8 x i16> %i.v)
  %i.aa = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax204) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.z, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx205 = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %n.vec206 = and i64 %i.o, -4                    ; 3 uses
  %11 = or disjoint i64 %n.vec206, 1
  %broadcast.splatinsert207 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat208 = shufflevector <4 x i16> %broadcast.splatinsert207, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <4 x i16> poison, i16 %bc.merge.rdx205, i64 0
  %broadcast.splat210 = shufflevector <4 x i16> %broadcast.splatinsert209, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi212 = phi <4 x i16> [ %broadcast.splat208, %vec.epilog.ph ], [ %i.ae, %vec.epilog.vector.body ]
  %vec.phi213 = phi <4 x i16> [ %broadcast.splat210, %vec.epilog.ph ], [ %i.ad, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %wide.load214 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !900 ; 2 uses
  %i.ad = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load214, <4 x i16> %vec.phi213) ; 2 uses
  %i.ae = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load214, <4 x i16> %vec.phi212) ; 2 uses
  %index.next215 = add nuw i64 %index211, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3077

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ae) ; 2 uses
  %i.ah = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.ad) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.o, %n.vec206
  br i1 %cmp.n216, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  %.01822.i.ph = phi i16 [ %i.m, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.01921.i.ph = phi i16 [ %i.m, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i16 [ %.1.i, %.lr.ph.i ], [ %.01822.i.ph, %.lr.ph.i.preheader ]
  %.01921.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01921.i.ph, %.lr.ph.i.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !900 ; 2 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.aj, i16 %.01921.i) ; 2 uses
  %.1.i = tail call i16 @llvm.umax.i16(i16 %i.aj, i16 %.01822.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, label %.lr.ph.i, !llvm.loop !3078

_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.019.lcssa.i = phi i16 [ %i.m, %bb.c ], [ %i.ah, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.018.lcssa.i = phi i16 [ %i.m, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1.i, %.lr.ph.i ]
  %i.ak = uitofp i16 %.019.lcssa.i to double
  %i.al = uitofp i16 %.018.lcssa.i to double
  br label %bb.d

bb.d:                                             ; preds = %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit, %bb.b
  %i.am = phi double [ %i.ak, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %i.h, %bb.b ] ; 7 uses
  %i.an = phi double [ %i.al, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit ], [ %i.k, %bb.b ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !421 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  %or.cond11 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = load i16, ptr %2, align 2, !tbaa !900   ; 7 uses
  %i.av = icmp samesign ugt i32 %3, 1
  br i1 %i.av, label %iter.check243, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95

iter.check243:                                    ; preds = %bb.e
  %wide.trip.count.i86 = zext nneg i32 %3 to i64  ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count.i86, -1    ; 5 uses
  %min.iters.check220 = icmp ult i32 %3, 5
  br i1 %min.iters.check220, label %.lr.ph.i87.preheader, label %vector.main.loop.iter.check221

vector.main.loop.iter.check221:                   ; preds = %iter.check243
  %min.iters.check222 = icmp ult i32 %3, 17
  br i1 %min.iters.check222, label %vec.epilog.ph247, label %vector.ph223

vector.ph223:                                     ; preds = %vector.main.loop.iter.check221
  %i.ax = and i64 %i.aw, 12
  %n.vec224 = and i64 %i.aw, -16                  ; 4 uses
  %i.ay = or disjoint i64 %n.vec224, 1
  %broadcast.splatinsert225 = insertelement <8 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat226 = shufflevector <8 x i16> %broadcast.splatinsert225, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.ph223, %vector.body227
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next235, %vector.body227 ] ; 2 uses
  %vec.phi229.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.be, %vector.body227 ]
  %vec.phi230.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bf, %vector.body227 ]
  %vec.phi231.a = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bc, %vector.body227 ]
  %vec.phi232 = phi <8 x i16> [ %broadcast.splat226, %vector.ph223 ], [ %i.bd, %vector.body227 ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index228 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 18
  %wide.load233.a = load <8 x i16>, ptr %i.ba, align 2, !tbaa !900 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !900 ; 2 uses
  %i.bc = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load233.a, <8 x i16> %vec.phi231.a) ; 2 uses
  %i.bd = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load234, <8 x i16> %vec.phi232) ; 2 uses
  %i.be = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load233.a, <8 x i16> %vec.phi229.a) ; 2 uses
  %i.bf = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load234, <8 x i16> %vec.phi230.a) ; 2 uses
  %index.next235 = add nuw i64 %index228, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next235, %n.vec224
  br i1 %i.bg, label %middle.block236, label %vector.body227, !llvm.loop !3079

middle.block236:                                  ; preds = %vector.body227
  %rdx.minmax237.a = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.be, <8 x i16> %i.bf)
  %i.bh = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax237.a) ; 3 uses
  %rdx.minmax238 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.bc, <8 x i16> %i.bd)
  %i.bi = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax238) ; 3 uses
  %cmp.n239 = icmp eq i64 %i.aw, %n.vec224
  br i1 %cmp.n239, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block236
  %min.epilog.iters.check246 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check246, label %.lr.ph.i87.preheader, label %vec.epilog.ph247, !prof !1299

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check221, %vec.epilog.iter.check245
  %vec.epilog.resume.val240 = phi i64 [ %n.vec224, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx241 = phi i16 [ %i.bh, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %bc.merge.rdx242 = phi i16 [ %i.bi, %vec.epilog.iter.check245 ], [ %i.au, %vector.main.loop.iter.check221 ]
  %n.vec248 = and i64 %i.aw, -4                   ; 3 uses
  %12 = or disjoint i64 %n.vec248, 1
  %broadcast.splatinsert249 = insertelement <4 x i16> poison, i16 %bc.merge.rdx241, i64 0
  %broadcast.splat250 = shufflevector <4 x i16> %broadcast.splatinsert249, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <4 x i16> poison, i16 %bc.merge.rdx242, i64 0
  %broadcast.splat252 = shufflevector <4 x i16> %broadcast.splatinsert251, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body253

vec.epilog.vector.body253:                        ; preds = %vec.epilog.vector.body253, %vec.epilog.ph247
  %index254 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph247 ], [ %index.next258, %vec.epilog.vector.body253 ] ; 2 uses
  %vec.phi255.a = phi <4 x i16> [ %broadcast.splat250, %vec.epilog.ph247 ], [ %i.bm, %vec.epilog.vector.body253 ]
  %vec.phi256 = phi <4 x i16> [ %broadcast.splat252, %vec.epilog.ph247 ], [ %i.bl, %vec.epilog.vector.body253 ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index254
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %wide.load257 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !900 ; 2 uses
  %i.bl = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load257, <4 x i16> %vec.phi256) ; 2 uses
  %i.bm = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load257, <4 x i16> %vec.phi255.a) ; 2 uses
  %index.next258 = add nuw i64 %index254, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next258, %n.vec248
  br i1 %i.bn, label %vec.epilog.middle.block259, label %vec.epilog.vector.body253, !llvm.loop !3080

vec.epilog.middle.block259:                       ; preds = %vec.epilog.vector.body253
  %i.bo = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.bm) ; 2 uses
  %i.bp = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.bl) ; 2 uses
  %cmp.n260 = icmp eq i64 %i.aw, %n.vec248
  br i1 %cmp.n260, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %iter.check243, %vec.epilog.iter.check245, %vec.epilog.middle.block259
  %indvars.iv.i88.ph = phi i64 [ 1, %iter.check243 ], [ %i.ay, %vec.epilog.iter.check245 ], [ %12, %vec.epilog.middle.block259 ]
  %.01822.i89.ph = phi i16 [ %i.au, %iter.check243 ], [ %i.bh, %vec.epilog.iter.check245 ], [ %i.bo, %vec.epilog.middle.block259 ]
  %.01921.i90.ph = phi i16 [ %i.au, %iter.check243 ], [ %i.bi, %vec.epilog.iter.check245 ], [ %i.bp, %vec.epilog.middle.block259 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i87 ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 2 uses
  %.01822.i89 = phi i16 [ %.1.i92, %.lr.ph.i87 ], [ %.01822.i89.ph, %.lr.ph.i87.preheader ]
  %.01921.i90 = phi i16 [ %spec.select.i91, %.lr.ph.i87 ], [ %.01921.i90.ph, %.lr.ph.i87.preheader ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i88
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !900 ; 2 uses
  %spec.select.i91 = tail call i16 @llvm.umin.i16(i16 %i.br, i16 %.01921.i90) ; 2 uses
  %.1.i92 = tail call i16 @llvm.umax.i16(i16 %i.br, i16 %.01822.i89) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i86
  br i1 %exitcond.not.i94, label %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95, label %.lr.ph.i87, !llvm.loop !3081

_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95:        ; preds = %.lr.ph.i87, %middle.block236, %vec.epilog.middle.block259, %bb.e
  %.019.lcssa.i83 = phi i16 [ %i.au, %bb.e ], [ %i.bp, %vec.epilog.middle.block259 ], [ %i.bi, %middle.block236 ], [ %spec.select.i91, %.lr.ph.i87 ]
  %.018.lcssa.i84 = phi i16 [ %i.au, %bb.e ], [ %i.bo, %vec.epilog.middle.block259 ], [ %i.bh, %middle.block236 ], [ %.1.i92, %.lr.ph.i87 ]
  %i.bs = uitofp i16 %.019.lcssa.i83 to double
  %i.bt = uitofp i16 %.018.lcssa.i84 to double
  br label %bb.f

bb.f:                                             ; preds = %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95, %bb.d
  %i.bu = phi double [ %i.bs, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95 ], [ %i.ap, %bb.d ] ; 7 uses
  %i.bv = phi double [ %i.bt, %_ZL13ImMinMaxArrayItEvPKT_iPS0_S3_.exit95 ], [ %i.as, %bb.d ] ; 6 uses
  %i.bw = icmp slt i32 %4, 0
  br i1 %i.bw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  switch i32 %4, label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit [
    i32 -1, label %bb.h
    i32 -2, label %bb.i
    i32 -3, label %bb.j
    i32 -4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = uitofp nneg i32 %3 to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bx)
  %i.by = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bz = fptosi double %i.by to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = uitofp nneg i32 %3 to double
  %i.cb = tail call noundef double @log2(double noundef %i.ca) #16
  %i.cc = fadd double %i.cb, 1.000000e+00
  %i.cd = tail call double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.j:                                             ; preds = %bb.g
  %i.cf = uitofp nneg i32 %3 to double
  %i.cg = tail call noundef double @cbrt(double noundef %i.cf) #17
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = tail call double @llvm.ceil.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

bb.k:                                             ; preds = %bb.g
  %i.ck = uitofp nneg i32 %3 to double            ; 2 uses
  %i.cl = fdiv double 1.000000e+00, %i.ck         ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 5 uses
  %i.cm = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 5 uses
  %.089.i.i.i = phi double [ 0.000000e+00, %.new ], [ %i.dg, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !900
  %i.cq = uitofp i16 %i.cp to double
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cl, double %.089.i.i.i)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !900
  %i.cv = uitofp i16 %i.cu to double
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cr)
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !900
  %i.da = uitofp i16 %i.cz to double
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cl, double %i.cw)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !900
  %i.df = uitofp i16 %i.de to double
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cl, double %i.db) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !33

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa, %bb.k
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.3, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %.089.i.i.i.epil.init = phi double [ 0.000000e+00, %bb.k ], [ %i.dg, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 2 uses
  %.089.i.i.i.epil = phi double [ %.089.i.i.i.epil.init, %.epil.preheader ], [ %i.dk, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.i.epil
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !900
  %i.dj = uitofp i16 %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.cl, double %.089.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i, label %bb.m, !llvm.loop !3082

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i:           ; preds = %bb.m, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa
  %.lcssa278 = phi double [ %i.dg, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.unr-lcssa ], [ %i.dk, %bb.m ] ; 3 uses
  %i.dl = add nsw i32 %3, -1
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %xtraiter293 = and i64 %wide.trip.count.i.i.i, 1
  %i.do = icmp eq i64 %i.cm, 0
  br i1 %i.do, label %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader, label %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new

_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new:       ; preds = %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i
  %unroll_iter298 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %_ZL6ImMeanItEdPKT_i.exit.i.i

_ZL6ImMeanItEdPKT_i.exit.i.i:                     ; preds = %_ZL6ImMeanItEdPKT_i.exit.i.i, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %_ZL6ImMeanItEdPKT_i.exit.i.i ] ; 3 uses
  %.01415.i.i = phi double [ 0.000000e+00, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %i.eb, %_ZL6ImMeanItEdPKT_i.exit.i.i ]
  %niter299 = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i.new ], [ %niter299.next.1, %_ZL6ImMeanItEdPKT_i.exit.i.i ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !900
  %i.dr = uitofp i16 %i.dq to double
  %i.ds = fsub double %i.dr, %.lcssa278           ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dn, double %.01415.i.i)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !900
  %i.dy = uitofp i16 %i.dx to double
  %i.dz = fsub double %i.dy, %.lcssa278           ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dn, double %i.du) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, label %_ZL6ImMeanItEdPKT_i.exit.i.i, !llvm.loop !34

_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa:           ; preds = %_ZL6ImMeanItEdPKT_i.exit.i.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %_ZL8ImStdDevItEdPKT_i.exit.i, label %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader

_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader:      ; preds = %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ]
  %.01415.i.i.epil.init = phi double [ 0.000000e+00, %_ZL6ImMeanItEdPKT_i.exit.preheader.i.i ], [ %i.eb, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !900
  %i.ee = uitofp i16 %i.ed to double
  %i.ef = fsub double %i.ee, %.lcssa278           ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.dn, double %.01415.i.i.epil.init)
  br label %_ZL8ImStdDevItEdPKT_i.exit.i

_ZL8ImStdDevItEdPKT_i.exit.i:                     ; preds = %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa, %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader
  %.lcssa277 = phi double [ %i.eb, %_ZL8ImStdDevItEdPKT_i.exit.i.unr-lcssa ], [ %i.eh, %_ZL6ImMeanItEdPKT_i.exit.i.i.epil.preheader ]
  %i.ei = tail call noundef double @sqrt(double noundef %.lcssa277) #16
  %i.ej = fmul double %i.ei, 3.490000e+00
  %i.ek = tail call noundef double @cbrt(double noundef %i.ck) #17
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fsub double %i.an, %i.am
  %i.en = fdiv double %i.em, %i.el
  %i.eo = tail call double @llvm.round.f64(double %i.en)
  %i.ep = fptosi double %i.eo to i32
  br label %_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit

_ZN6ImPlotL13CalculateBinsItEEvPKT_iiRK11ImPlotRangeRiRd.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %_ZL8ImStdDevItEdPKT_i.exit.i
  %.1156 = phi i32 [ %i.ep, %_ZL8ImStdDevItEdPKT_i.exit.i ], [ %i.bz, %bb.h ], [ %i.ce, %bb.i ], [ %i.cj, %bb.j ], [ %4, %bb.g ] ; 2 uses
  %i.eq = fsub double %i.an, %i.am
  %i.er = sitofp i32 %.1156 to double
  %i.es = fdiv double %i.eq, %i.er
  br label %bb.o

end_hunk_11
