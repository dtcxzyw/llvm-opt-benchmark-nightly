Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %cmp.n621 = icmp eq i64 %n.vec613, %i.acc
  br i1 %cmp.n621, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.preheader:                     ; preds = %stbtt_FlattenCurves.exit.i.i.i.i, %middle.block620
  %indvars.iv.i24.i.i.i.i.ph = phi i64 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %n.vec613, %middle.block620 ]
  %.0873.i.i.i.i.i.ph = phi i32 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %i.agf, %middle.block620 ]
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i.preheader, %.lr.ph.i23.i.i.i.i
  %indvars.iv.i24.i.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i.i, %.lr.ph.i23.i.i.i.i ], [ %indvars.iv.i24.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ] ; 2 uses
  %.0873.i.i.i.i.i = phi i32 [ %i.agi, %.lr.ph.i23.i.i.i.i ], [ %.0873.i.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ]
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.i24.i.i.i.i
  %i.agh = load i32, ptr %i.agg, align 4
  %i.agi = add nsw i32 %i.agh, %.0873.i.i.i.i.i   ; 2 uses
  %indvars.iv.next.i25.i.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i.i, %i.acc
  br i1 %exitcond.not.i26.i.i.i.i, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i, !llvm.loop !31

._crit_edge.i27.i.i.i.i:                          ; preds = %.lr.ph.i23.i.i.i.i, %middle.block620
  %.lcssa = phi i32 [ %i.agf, %middle.block620 ], [ %i.agi, %.lr.ph.i23.i.i.i.i ]
  %i.agj = add nsw i32 %.lcssa, 1
  %i.agk = sext i32 %i.agj to i64
  %i.agl = mul nsw i64 %i.agk, 20
  %i.agm = call noalias ptr @malloc(i64 noundef %i.agl) #42 ; 9 uses
  %i.agn = icmp eq ptr %i.agm, null
  br i1 %i.agn, label %stbtt__rasterize.exit.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %._crit_edge.i27.i.i.i.i, %._crit_edge10.i.i.i.i.i
  %indvars.iv27.i.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.08314.i.i.i.i.i = phi i32 [ %i.ags, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.18812.i.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %i.ago = sext i32 %.08314.i.i.i.i.i to i64
  %i.agp = getelementptr inbounds [8 x i8], ptr %i.aeb, i64 %i.ago ; 4 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv27.i.i.i.i.i
  %i.agr = load i32, ptr %i.agq, align 4          ; 4 uses
  %i.ags = add nsw i32 %i.agr, %.08314.i.i.i.i.i
  %i.agt = icmp sgt i32 %i.agr, 0
  br i1 %i.agt, label %.lr.ph9.preheader.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i

.lr.ph9.preheader.i.i.i.i.i:                      ; preds = %.lr.ph15.i.i.i.i.i
  %i.agu = add nsw i32 %i.agr, -1                 ; 2 uses
  %wide.trip.count25.i.i.i.i.i = zext nneg i32 %i.agr to i64
  %.phi.trans.insert.i.i.i.i.i = zext nneg i32 %i.agu to i64
  %.phi.trans.insert32.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %.phi.trans.insert.i.i.i.i.i
  %.phi.trans.insert33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32.i.i.i.i.i, i64 4
  %.pre.i28.i.i.i.i = load float, ptr %.phi.trans.insert33.i.i.i.i.i, align 4
  br label %.lr.ph9.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i
  %i.agv = phi float [ %.pre.i28.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i ], [ %i.agy, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 2 uses
  %indvars.iv22.i.i.i.i.i = phi i64 [ 0, %.lr.ph9.preheader.i.i.i.i.i ], [ %indvars.iv.next23.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %.0856.i.i.i.i.i = phi i32 [ %i.agu, %.lr.ph9.preheader.i.i.i.i.i ], [ %.pre-phi36.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ]
  %.25.i.i.i.i.i = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %indvars.iv22.i.i.i.i.i
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.agy = load float, ptr %i.agx, align 4        ; 3 uses
  %i.agz = fcmp oeq float %i.agv, %i.agy
  br i1 %i.agz, label %.lr.ph9._crit_edge.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph9.i.i.i.i.i
  %i.aha = sext i32 %.25.i.i.i.i.i to i64
  %i.ahb = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.aha ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = fcmp ogt float %i.agv, %i.agy          ; 3 uses
  %spec.store.select.i.i.i.i.i = zext i1 %i.ahd to i32
  store i32 %spec.store.select.i.i.i.i.i, ptr %i.ahc, align 4
  %i.ahe = sext i32 %.0856.i.i.i.i.i to i64       ; 2 uses
  %i.ahf = select i1 %i.ahd, i64 %i.ahe, i64 %indvars.iv22.i.i.i.i.i
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.ahf
  %i.ahh = select i1 %i.ahd, i64 %indvars.iv22.i.i.i.i.i, i64 %i.ahe
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.ahh
  %i.ahj = load <2 x float>, ptr %i.ahg, align 4
  %i.ahk = load <2 x float>, ptr %i.ahi, align 4
  %i.ahl = shufflevector <2 x float> %i.ahj, <2 x float> %i.ahk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahl, <4 x float> %i.zf, <4 x float> zeroinitializer)
  store <4 x float> %i.ahm, ptr %i.ahb, align 4
  %i.ahn = add nsw i32 %.25.i.i.i.i.i, 1
  br label %.lr.ph9._crit_edge.i.i.i.i.i

.lr.ph9._crit_edge.i.i.i.i.i:                     ; preds = %bb.eh, %.lr.ph9.i.i.i.i.i
  %.3.i.i.i.i.i = phi i32 [ %i.ahn, %bb.eh ], [ %.25.i.i.i.i.i, %.lr.ph9.i.i.i.i.i ] ; 2 uses
  %.pre-phi36.i.i.i.i.i = trunc i64 %indvars.iv22.i.i.i.i.i to i32
  %indvars.iv.next23.i.i.i.i.i = add nuw nsw i64 %indvars.iv22.i.i.i.i.i, 1 ; 2 uses
  %exitcond26.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next23.i.i.i.i.i, %wide.trip.count25.i.i.i.i.i
  br i1 %exitcond26.not.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i, label %.lr.ph9.i.i.i.i.i

._crit_edge10.i.i.i.i.i:                          ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %.2.lcssa.i.i.i.i.i = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i.i, %i.acc
  br i1 %exitcond31.not.i.i.i.i.i, label %._crit_edge16.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

._crit_edge16.i.i.i.i.i:                          ; preds = %._crit_edge10.i.i.i.i.i
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.agm, i32 noundef %.2.lcssa.i.i.i.i.i)
  %i.aho = icmp sgt i32 %.2.lcssa.i.i.i.i.i, 1
  br i1 %i.aho, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %stbtt__sort_edges.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %._crit_edge16.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.el, %.lr.ph.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.el ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.ahp = getelementptr inbounds nuw [20 x i8], ptr %i.agm, i64 %indvars.iv.i.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4
  %i.ahq = load <2 x float>, ptr %i.ahp, align 4
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 12, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i.i, %bb.ej ] ; 4 uses
  %i.ahr = getelementptr [20 x i8], ptr %i.agm, i64 %indvars.iv31.i.i.i.i.i.i.i ; 3 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 -16
  %i.aht = load float, ptr %i.ahs, align 4
  %i.ahu = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i.i, %i.aht
  br i1 %i.ahu, label %bb.ej, label %.thread.split.loop.exit.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ahv = getelementptr i8, ptr %i.ahr, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ahr, ptr noundef nonnull align 4 dereferenceable(20) %i.ahv, i64 20, i1 false)
  %indvars.iv.next32.i.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i.i, -1
  %i.ahw = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i.i, 1
  br i1 %i.ahw, label %bb.ei, label %.thread.i.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i.i:            ; preds = %bb.ei
  %i.ahx = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ej, %.thread.split.loop.exit.i.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ahx, %.thread.split.loop.exit.i.i.i.i.i.i.i ], [ 0, %bb.ej ] ; 2 uses
  %i.ahy = zext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i.i, %i.ahy
  br i1 %.not.i.i.i.i.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.ahz = sext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %i.aia = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.ahz ; 2 uses
  store <2 x float> %i.ahq, ptr %i.aia, align 4
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, i64 12, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %stbtt__sort_edges.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

stbtt__sort_edges.exit.i.i.i.i.i:                 ; preds = %bb.el, %._crit_edge16.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.aib = icmp sgt i32 %i.zx, 64
  br i1 %i.aib, label %bb.em, label %bb.en

bb.em:                                            ; preds = %stbtt__sort_edges.exit.i.i.i.i.i
  %i.aic = shl nuw nsw i32 %i.zx, 1
  %i.aid = or disjoint i32 %i.aic, 1
  %i.aie = zext nneg i32 %i.aid to i64
  %i.aif = shl nuw nsw i64 %i.aie, 2
  %i.aig = call noalias ptr @malloc(i64 noundef %i.aif) #42
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %stbtt__sort_edges.exit.i.i.i.i.i
  %.080.i.i.i.i.i.i = phi ptr [ %i.aig, %bb.em ], [ %i.g, %stbtt__sort_edges.exit.i.i.i.i.i ] ; 43 uses
  %i.aih = sext i32 %i.zx to i64                  ; 3 uses
  %i.aii = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.aih ; 9 uses
  %i.aij = sitofp i32 %i.zy to float
  %i.aik = fadd float %i.aij, 1.000000e+00
  %i.ail = sext i32 %.2.lcssa.i.i.i.i.i to i64
  %i.aim = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 4
  store float %i.aik, ptr %i.ain, align 4
  %i.aio = icmp sgt i32 %i.aaa, 0
  br i1 %i.aio, label %.lr.ph64.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i:                             ; preds = %bb.en
  %i.aip = sitofp i32 %i.zw to float
  %i.aiq = icmp ne i32 %i.zz, 0
  %i.air = getelementptr inbounds nuw i8, ptr %i.aii, i64 4 ; 2 uses
  %i.ais = shl nsw i64 %i.aih, 2
  %i.ait = add nsw i32 %i.zx, 1
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = shl nsw i64 %i.aiu, 2
  %i.aiw = icmp sgt i32 %i.zx, 0                  ; 2 uses
  %i.aix = sitofp i32 %i.zx to float              ; 3 uses
  %wide.trip.count.i.i92.i.i.i.i.i = zext nneg i32 %i.zx to i64
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge56.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i
  %.0..i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.062.i.i.i.i.i.i = phi ptr [ %i.agm, %.lr.ph64.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 3 uses
  %.07561.i.i.i.i.i.i = phi i32 [ %i.zz, %.lr.ph64.i.i.i.i.i.i ], [ %i.bov, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.07660.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph64.i.i.i.i.i.i ], [ %i.bow, %._crit_edge56.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.059.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.058.i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.057.i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %i.aiy = sitofp i32 %.07561.i.i.i.i.i.i to float ; 39 uses
  %i.aiz = fadd float %i.aiy, 1.000000e+00        ; 53 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i.i, i8 0, i64 %i.ais, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aii, i8 0, i64 %i.aiv, i1 false)
  %.not9038.i.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i.i, null
  br i1 %.not9038.i.i.i.i.i.i, label %.preheader37.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader37.i.i.i.i.i.i:                         ; preds = %bb.eq, %bb.eo
  %.sroa.7.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.058.i.i.i.i.i.i, %bb.eo ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.062.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ajb = load float, ptr %i.aja, align 4        ; 2 uses
  %i.ajc = fcmp ugt float %i.ajb, %i.aiz
  br i1 %i.ajc, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph45.i.i.i.i.i.i

.lr.ph45.i.i.i.i.i.i:                             ; preds = %.preheader37.i.i.i.i.i.i
  %i.ajd = icmp eq i32 %.07660.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.aiq, %i.ajd
  br label %bb.er

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.eo, %bb.eq
  %i.aje = phi ptr [ %i.ajk, %bb.eq ], [ %.0..i.i.i.i.i.i, %bb.eo ] ; 6 uses
  %.07840.i.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i.i, %bb.eq ], [ %i.f, %bb.eo ] ; 2 uses
  %.sroa.7.139.i.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ], [ %.sroa.7.058.i.i.i.i.i.i, %bb.eo ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 28
  %i.ajg = load float, ptr %i.ajf, align 4
  %i.ajh = fcmp ugt float %i.ajg, %i.aiy
  br i1 %i.ajh, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aji = load ptr, ptr %i.aje, align 8
  store ptr %i.aji, ptr %.07840.i.i.i.i.i.i, align 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aje, i64 20
  store float 0.000000e+00, ptr %i.ajj, align 4
  store ptr %.sroa.7.139.i.i.i.i.i.i, ptr %i.aje, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i.i = phi ptr [ %.sroa.7.139.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aje, %bb.ep ] ; 2 uses
  %.179.i.i.i.i.i.i = phi ptr [ %i.aje, %.lr.ph.i.i.i.i.i.i ], [ %.07840.i.i.i.i.i.i, %bb.ep ] ; 2 uses
  %i.ajk = load ptr, ptr %.179.i.i.i.i.i.i, align 8 ; 2 uses
  %.not90.i.i.i.i.i.i = icmp eq ptr %i.ajk, null
  br i1 %.not90.i.i.i.i.i.i, label %.preheader37.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.er:                                            ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i
  %i.ajl = phi float [ %i.ajb, %.lr.ph45.i.i.i.i.i.i ], [ %i.ale, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ajm = phi ptr [ %i.aja, %.lr.ph45.i.i.i.i.i.i ], [ %i.ald, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.144.i.i.i.i.i.i = phi ptr [ %.062.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %i.alc, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %.sroa.11.143.i.i.i.i.i.i = phi i32 [ %.sroa.11.059.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.342.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.141.i.i.i.i.i.i = phi ptr [ %.sroa.0.057.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 5 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.ajo = load float, ptr %i.ajn, align 4        ; 3 uses
  %i.ajp = fcmp une float %i.ajl, %i.ajo
  br i1 %i.ajp, label %bb.es, label %stbtt__new_active.exit.thread.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.342.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajq = load ptr, ptr %.sroa.7.342.i.i.i.i.i.i, align 8
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.ajr = icmp eq i32 %.sroa.11.143.i.i.i.i.i.i, 0
  br i1 %i.ajr, label %bb.ev, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.eu
  %i.ajs = add nsw i32 %.sroa.11.143.i.i.i.i.i.i, -1
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ajt = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #42 ; 3 uses
  %i.aju = icmp eq ptr %i.ajt, null
  br i1 %i.aju, label %stbtt__new_active.exit.thread.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ev
  store ptr %.sroa.0.141.i.i.i.i.i.i, ptr %i.ajt, align 8
  %.pre71.pre.i.i.i.i.i.i = load float, ptr %i.ajn, align 4
  %.pre72.pre.i.i.i.i.i.i = load float, ptr %i.ajm, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.pre72.i.i.i.i.i.i = phi float [ %.pre72.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajl, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.pre71.i.i.i.i.i.i = phi float [ %.pre71.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajo, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i.i = phi ptr [ %i.ajt, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.141.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajv = phi i32 [ 799, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajs, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i.i, i64 8
  %i.ajx = zext nneg i32 %i.ajv to i64
  %i.ajy = shl nuw nsw i64 %i.ajx, 5
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ajy
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.et
  %i.aka = phi float [ %.pre72.i.i.i.i.i.i, %bb.ew ], [ %i.ajl, %bb.et ]
  %i.akb = phi float [ %.pre71.i.i.i.i.i.i, %bb.ew ], [ %i.ajo, %bb.et ]
  %.sroa.0.3.i.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i.i, %bb.ew ], [ %.sroa.0.141.i.i.i.i.i.i, %bb.et ]
  %.sroa.7.4.i.i.i.i.i.i = phi ptr [ null, %bb.ew ], [ %i.ajq, %bb.et ]
  %.sroa.11.2.i.i.i.i.i.i = phi i32 [ %i.ajv, %bb.ew ], [ %.sroa.11.143.i.i.i.i.i.i, %bb.et ]
  %.1.i.ph.i.i.i.i.i.i.i = phi ptr [ %i.ajz, %bb.ew ], [ %.sroa.7.342.i.i.i.i.i.i, %bb.et ] ; 9 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 8
  %i.akd = load float, ptr %i.akc, align 4
  %i.ake = load float, ptr %.144.i.i.i.i.i.i, align 4
  %i.akf = fsub float %i.akd, %i.ake
  %i.akg = fsub float %i.akb, %i.aka
  %i.akh = fdiv float %i.akf, %i.akg              ; 4 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 12
  store float %i.akh, ptr %i.aki, align 4
  %i.akj = fcmp une float %i.akh, 0.000000e+00
  %i.akk = fdiv float 1.000000e+00, %i.akh
  %i.akl = select i1 %i.akj, float %i.akk, float 0.000000e+00
  %i.akm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 16
  store float %i.akl, ptr %i.akm, align 8
  %i.akn = load float, ptr %.144.i.i.i.i.i.i, align 4
  %i.ako = load float, ptr %i.ajm, align 4
  %i.akp = fsub float %i.aiy, %i.ako
  %i.akq = call float @llvm.fmuladd.f32(float %i.akh, float %i.akp, float %i.akn)
  %i.akr = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 8
  %i.aks = fsub float %i.akq, %i.aip
  store float %i.aks, ptr %i.akr, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 16
  %i.aku = load i32, ptr %i.akt, align 4
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %i.aku, 0
  %i.akv = select i1 %.not28.i.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.akw = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 20
  store float %i.akv, ptr %i.akw, align 4
  %i.akx = load float, ptr %i.ajm, align 4
  %i.aky = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 24
  store float %i.akx, ptr %i.aky, align 8
  %i.akz = load float, ptr %i.ajn, align 4        ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.akz, ptr %i.ala, align 4
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  %i.alb = fcmp olt float %i.akz, %i.aiy
  %or.cond150.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.alb, i1 false
  br i1 %or.cond150.i.i.i.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store float %i.aiy, ptr %i.ala, align 4
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  store ptr %.1.i.ph.i.i.i.i.i.i.i, ptr %i.f, align 8
  br label %stbtt__new_active.exit.thread.i.i.i.i.i.i

stbtt__new_active.exit.thread.i.i.i.i.i.i:        ; preds = %bb.ez, %bb.ev, %bb.er
  %.sroa.0.5.i.i.i.i.i.i = phi ptr [ %.sroa.0.141.i.i.i.i.i.i, %bb.er ], [ %.sroa.0.3.i.i.i.i.i.i, %bb.ez ], [ %.sroa.0.141.i.i.i.i.i.i, %bb.ev ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i.i = phi ptr [ %.sroa.7.342.i.i.i.i.i.i, %bb.er ], [ %.sroa.7.4.i.i.i.i.i.i, %bb.ez ], [ null, %bb.ev ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i.i = phi i32 [ %.sroa.11.143.i.i.i.i.i.i, %bb.er ], [ %.sroa.11.2.i.i.i.i.i.i, %bb.ez ], [ 0, %bb.ev ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ale = load float, ptr %i.ald, align 4        ; 2 uses
  %i.alf = fcmp ugt float %i.ale, %i.aiz
  br i1 %i.alf, label %._crit_edge.i.i.i.i.i.i, label %bb.er

._crit_edge.i.i.i.i.i.i:                          ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.preheader37.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.057.i.i.i.i.i.i, %.preheader37.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.preheader37.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.11.059.i.i.i.i.i.i, %.preheader37.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i.i = phi ptr [ %.062.i.i.i.i.i.i, %.preheader37.i.i.i.i.i.i ], [ %i.alc, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 4 uses
  %.not91.i.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.alg = fcmp oeq float %i.aiz, %i.aiy          ; 3 uses
  %i.alh = fsub float %i.aiz, %i.aiy              ; 4 uses
  %10 = insertelement <2 x float> poison, float %i.aiy, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.fb

bb.fb:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %bb.fa
  %.0293468.i.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %bb.fa ], [ %i.bnz, %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i ] ; 18 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 12
  %i.alj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 8
  %i.alk = load float, ptr %i.ali, align 4        ; 3 uses
  %i.all = fcmp oeq float %i.alk, 0.000000e+00
  %i.alm = load float, ptr %i.alj, align 8        ; 47 uses
  br i1 %i.all, label %bb.fc, label %bb.gi

bb.fc:                                            ; preds = %bb.fb
  %i.aln = fcmp olt float %i.alm, %i.aix
  br i1 %i.aln, label %bb.fd, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.alo = fcmp ult float %i.alm, 0.000000e+00
  br i1 %i.alo, label %bb.fx, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.alp = fptosi float %i.alm to i32             ; 6 uses
  br i1 %i.alg, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.alq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28
  %i.alr = load float, ptr %i.alq, align 4        ; 6 uses
  %i.als = fcmp olt float %i.alr, %i.aiy
  br i1 %i.als, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alt = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.alu = load float, ptr %i.alt, align 8        ; 6 uses
  %i.alv = fcmp olt float %i.aiz, %i.alu
  br i1 %i.alv, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alw = fcmp ogt float %i.alu, %i.aiy          ; 2 uses
  br i1 %i.alw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.alx = fsub float %i.alm, %i.alm
  %i.aly = fsub float %i.alu, %i.aiy
  %i.alz = fmul float %i.alx, %i.aly
  %i.ama = fdiv float %i.alz, %i.alh
  %i.amb = fadd float %i.alm, %i.ama
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.055.i.i.i.i.i.i.i.i = phi float [ %i.amb, %bb.fi ], [ %i.alm, %bb.fh ] ; 4 uses
  %.054.i.i.i.i.i.i.i.i = phi float [ %i.alu, %bb.fi ], [ %i.aiy, %bb.fh ] ; 3 uses
  %i.amc = fcmp ogt float %i.aiz, %i.alr          ; 2 uses
  br i1 %i.amc, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.amd = fsub float %i.alm, %.055.i.i.i.i.i.i.i.i
  %i.ame = fsub float %i.alr, %i.aiz
  %i.amf = fmul float %i.ame, %i.amd
  %i.amg = fsub float %i.aiz, %.054.i.i.i.i.i.i.i.i
  %i.amh = fdiv float %i.amf, %i.amg
  %i.ami = fadd float %i.alm, %i.amh
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.053.i.i.i.i.i.i.i.i = phi float [ %i.ami, %bb.fk ], [ %i.alm, %bb.fj ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i = phi float [ %i.alr, %bb.fk ], [ %i.aiz, %bb.fj ] ; 2 uses
  %i.amj = sitofp i32 %i.alp to float             ; 4 uses
  %i.amk = fcmp ugt float %.055.i.i.i.i.i.i.i.i, %i.amj
  %i.aml = fcmp ugt float %.053.i.i.i.i.i.i.i.i, %i.amj
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.amk, i1 true, i1 %i.aml
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.amm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.amn = load float, ptr %i.amm, align 4
  %i.amo = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %i.amp = zext nneg i32 %i.alp to i64
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.amp ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4
  %i.ams = call float @llvm.fmuladd.f32(float %i.amn, float %i.amo, float %i.amr)
  store float %i.ams, ptr %i.amq, align 4
  %.pre34.i.i.i.i.i = add nuw nsw i32 %i.alp, 1
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  %i.amt = add nuw nsw i32 %i.alp, 1              ; 3 uses
  %i.amu = sitofp i32 %i.amt to float             ; 2 uses
  %i.amv = fcmp ult float %.055.i.i.i.i.i.i.i.i, %i.amu
  %i.amw = fcmp ult float %.053.i.i.i.i.i.i.i.i, %i.amu
  %or.cond62.i.i.i.i.i.i.i.i = select i1 %i.amv, i1 true, i1 %i.amw
  br i1 %or.cond62.i.i.i.i.i.i.i.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.amx = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.amy = load float, ptr %i.amx, align 4
  %i.amz = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %i.ana = fmul float %i.amz, %i.amy
  %i.anb = fsub float %.055.i.i.i.i.i.i.i.i, %i.amj
  %i.anc = fsub float %.053.i.i.i.i.i.i.i.i, %i.amj
  %i.and = fadd float %i.anb, %i.anc
  %i.ane = fmul float %i.and, 5.000000e-01
  %i.anf = fsub float 1.000000e+00, %i.ane
  %i.ang = zext nneg i32 %i.alp to i64
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.ang ; 2 uses
  %i.ani = load float, ptr %i.anh, align 4
  %i.anj = call float @llvm.fmuladd.f32(float %i.ana, float %i.anf, float %i.ani)
  store float %i.anj, ptr %i.anh, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.amt, %bb.fo ], [ %i.amt, %bb.fn ], [ %.pre34.i.i.i.i.i, %bb.fm ] ; 3 uses
  br i1 %i.alw, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ank = fsub float %i.alm, %i.alm
  %i.anl = fsub float %i.alu, %i.aiy
  %i.anm = fmul float %i.ank, %i.anl
  %i.ann = fdiv float %i.anm, %i.alh
  %i.ano = fadd float %i.alm, %i.ann
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.055.i345.i.i.i.i.i.i.i = phi float [ %i.ano, %bb.fq ], [ %i.alm, %bb.fp ] ; 4 uses
  %.054.i346.i.i.i.i.i.i.i = phi float [ %i.alu, %bb.fq ], [ %i.aiy, %bb.fp ] ; 3 uses
  br i1 %i.amc, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.anp = fsub float %i.alm, %.055.i345.i.i.i.i.i.i.i
  %i.anq = fsub float %i.alr, %i.aiz
  %i.anr = fmul float %i.anq, %i.anp
  %i.ans = fsub float %i.aiz, %.054.i346.i.i.i.i.i.i.i
  %i.ant = fdiv float %i.anr, %i.ans
  %i.anu = fadd float %i.alm, %i.ant
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.053.i347.i.i.i.i.i.i.i = phi float [ %i.anu, %bb.fs ], [ %i.alm, %bb.fr ] ; 3 uses
  %.0.i348.i.i.i.i.i.i.i = phi float [ %i.alr, %bb.fs ], [ %i.aiz, %bb.fr ] ; 2 uses
  %i.anv = sitofp i32 %.pre-phi.i.i.i.i.i to float ; 4 uses
  %i.anw = fcmp ugt float %.055.i345.i.i.i.i.i.i.i, %i.anv
  %i.anx = fcmp ugt float %.053.i347.i.i.i.i.i.i.i, %i.anv
  %or.cond.i349.i.i.i.i.i.i.i = select i1 %i.anw, i1 true, i1 %i.anx
  br i1 %or.cond.i349.i.i.i.i.i.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.any = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.anz = load float, ptr %i.any, align 4
  %i.aoa = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %i.aob = zext nneg i32 %.pre-phi.i.i.i.i.i to i64
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aob ; 2 uses
  %i.aod = load float, ptr %i.aoc, align 4
  %i.aoe = call float @llvm.fmuladd.f32(float %i.anz, float %i.aoa, float %i.aod)
  store float %i.aoe, ptr %i.aoc, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.aof = add nuw nsw i32 %i.alp, 2
  %i.aog = sitofp i32 %i.aof to float             ; 2 uses
  %i.aoh = fcmp ult float %.055.i345.i.i.i.i.i.i.i, %i.aog
  %i.aoi = fcmp ult float %.053.i347.i.i.i.i.i.i.i, %i.aog
  %or.cond62.i350.i.i.i.i.i.i.i = select i1 %i.aoh, i1 true, i1 %i.aoi
  br i1 %or.cond62.i350.i.i.i.i.i.i.i, label %bb.fw, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.aoj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aok = load float, ptr %i.aoj, align 4
  %i.aol = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %i.aom = fmul float %i.aol, %i.aok
  %i.aon = fsub float %.055.i345.i.i.i.i.i.i.i, %i.anv
  %i.aoo = fsub float %.053.i347.i.i.i.i.i.i.i, %i.anv
  %i.aop = fadd float %i.aon, %i.aoo
  %i.aoq = fmul float %i.aop, 5.000000e-01
  %i.aor = fsub float 1.000000e+00, %i.aoq
  %i.aos = zext nneg i32 %.pre-phi.i.i.i.i.i to i64
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aos ; 2 uses
  %i.aou = load float, ptr %i.aot, align 4
  %i.aov = call float @llvm.fmuladd.f32(float %i.aom, float %i.aor, float %i.aou)
  store float %i.aov, ptr %i.aot, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fd
  br i1 %i.alg, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aow = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28
  %i.aox = load float, ptr %i.aow, align 4        ; 4 uses
  %i.aoy = fcmp olt float %i.aox, %i.aiy
  br i1 %i.aoy, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.apa = load float, ptr %i.aoz, align 8        ; 4 uses
  %i.apb = fcmp olt float %i.aiz, %i.apa
  br i1 %i.apb, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.apc = fcmp ogt float %i.apa, %i.aiy
  br i1 %i.apc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.apd = fsub float %i.alm, %i.alm
  %i.ape = fsub float %i.apa, %i.aiy
  %i.apf = fmul float %i.apd, %i.ape
  %i.apg = fdiv float %i.apf, %i.alh
  %i.aph = fadd float %i.alm, %i.apg
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.055.i352.i.i.i.i.i.i.i = phi float [ %i.aph, %bb.gb ], [ %i.alm, %bb.ga ] ; 4 uses
  %.054.i353.i.i.i.i.i.i.i = phi float [ %i.apa, %bb.gb ], [ %i.aiy, %bb.ga ] ; 3 uses
  %i.api = fcmp ogt float %i.aiz, %i.aox
  br i1 %i.api, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.apj = fsub float %i.alm, %.055.i352.i.i.i.i.i.i.i
  %i.apk = fsub float %i.aox, %i.aiz
  %i.apl = fmul float %i.apk, %i.apj
  %i.apm = fsub float %i.aiz, %.054.i353.i.i.i.i.i.i.i
  %i.apn = fdiv float %i.apl, %i.apm
  %i.apo = fadd float %i.alm, %i.apn
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.053.i354.i.i.i.i.i.i.i = phi float [ %i.apo, %bb.gd ], [ %i.alm, %bb.gc ] ; 3 uses
  %.0.i355.i.i.i.i.i.i.i = phi float [ %i.aox, %bb.gd ], [ %i.aiz, %bb.gc ] ; 2 uses
  %i.app = fcmp ugt float %.055.i352.i.i.i.i.i.i.i, 0.000000e+00
  %i.apq = fcmp ugt float %.053.i354.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i.i.i.i.i = select i1 %i.app, i1 true, i1 %i.apq
  br i1 %or.cond.i356.i.i.i.i.i.i.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.apr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aps = load float, ptr %i.apr, align 4
  %i.apt = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.apu = load float, ptr %i.aii, align 4
  %i.apv = call float @llvm.fmuladd.f32(float %i.aps, float %i.apt, float %i.apu)
  store float %i.apv, ptr %i.aii, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gg:                                            ; preds = %bb.ge
  %i.apw = fcmp ult float %.055.i352.i.i.i.i.i.i.i, 1.000000e+00
  %i.apx = fcmp ult float %.053.i354.i.i.i.i.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i.i.i.i.i = select i1 %i.apw, i1 true, i1 %i.apx
  br i1 %or.cond62.i357.i.i.i.i.i.i.i, label %bb.gh, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.apy = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.apz = load float, ptr %i.apy, align 4
  %i.aqa = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.aqb = fmul float %i.aqa, %i.apz
  %i.aqc = fadd float %.055.i352.i.i.i.i.i.i.i, %.053.i354.i.i.i.i.i.i.i
  %i.aqd = fmul float %i.aqc, 5.000000e-01
  %i.aqe = fsub float 1.000000e+00, %i.aqd
  %i.aqf = load float, ptr %i.aii, align 4
  %i.aqg = call float @llvm.fmuladd.f32(float %i.aqb, float %i.aqe, float %i.aqf)
  store float %i.aqg, ptr %i.aii, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.fb
  %i.aqh = fadd float %i.alk, %i.alm              ; 34 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 16
  %i.aqj = load float, ptr %i.aqi, align 8        ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %12 = load <2 x float>, ptr %i.aqk, align 8     ; 3 uses
  %13 = extractelement <2 x float> %12, i64 1     ; 42 uses
  %14 = extractelement <2 x float> %12, i64 0     ; 27 uses
  %i.aql = fcmp ogt float %14, %i.aiy             ; 9 uses
  %15 = fsub <2 x float> %12, %11                 ; 8 uses
  %16 = insertelement <2 x float> poison, float %i.alk, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = insertelement <2 x float> poison, float %i.alm, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %15, <2 x float> %19) ; 2 uses
  %21 = extractelement <2 x float> %20, i64 0
  %.0305.i.i.i.i.i.i.i = select i1 %i.aql, float %21, float %i.alm ; 7 uses
  %.0301.i.i.i.i.i.i.i = select i1 %i.aql, float %14, float %i.aiy ; 23 uses
  %22 = fcmp olt float %13, %i.aiz                ; 9 uses
  %23 = extractelement <2 x float> %20, i64 1
  %.0303.i.i.i.i.i.i.i = select i1 %22, float %23, float %i.aqh ; 7 uses
  %.0299.i.i.i.i.i.i.i = select i1 %22, float %13, float %i.aiz ; 4 uses
  %i.aqm = fcmp oge float %.0305.i.i.i.i.i.i.i, 0.000000e+00
  %i.aqn = fcmp oge float %.0303.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.aqm, i1 %i.aqn, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.aqo = fcmp olt float %.0305.i.i.i.i.i.i.i, %i.aix
  %i.aqp = fcmp olt float %.0303.i.i.i.i.i.i.i, %i.aix
  %or.cond338.i.i.i.i.i.i.i = select i1 %i.aqo, i1 %i.aqp, i1 false
  br i1 %or.cond338.i.i.i.i.i.i.i, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %bb.gj
  %i.aqq = fptosi float %.0305.i.i.i.i.i.i.i to i32 ; 5 uses
  %i.aqr = fptosi float %.0303.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.aqs = icmp eq i32 %i.aqq, %i.aqr
  br i1 %i.aqs, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aqt = fsub float %.0299.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aqv = load float, ptr %i.aqu, align 4
  %i.aqw = fmul float %i.aqt, %i.aqv              ; 2 uses
  %i.aqx = sitofp i32 %i.aqq to float
  %i.aqy = fadd float %i.aqx, 1.000000e+00        ; 2 uses
  %i.aqz = fsub float %i.aqy, %.0305.i.i.i.i.i.i.i
  %i.ara = fsub float %i.aqy, %.0303.i.i.i.i.i.i.i
  %i.arb = fadd float %i.aqz, %i.ara
  %i.arc = fmul float %i.arb, 5.000000e-01
  %i.ard = fmul float %i.arc, %i.aqw
  %i.are = zext nneg i32 %i.aqq to i64            ; 2 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.are ; 2 uses
  %i.arg = load float, ptr %i.arf, align 4
  %i.arh = fadd float %i.arg, %i.ard
  store float %i.arh, ptr %i.arf, align 4
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.are ; 2 uses
  %i.arj = load float, ptr %i.ari, align 4
  %i.ark = fadd float %i.aqw, %i.arj
  store float %i.ark, ptr %i.ari, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %bb.gk
  %i.arl = fcmp ogt float %.0305.i.i.i.i.i.i.i, %.0303.i.i.i.i.i.i.i
  br i1 %i.arl, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.arm = fsub float %i.aiy, %.0301.i.i.i.i.i.i.i
  %i.arn = fadd float %i.aiz, %i.arm
  %i.aro = fsub float %i.aiy, %.0299.i.i.i.i.i.i.i
  %i.arp = fadd float %i.aiz, %i.aro
  %i.arq = fneg float %i.aqj
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.pre-phi474.i.i.i.i.i.i.i = phi i32 [ %i.aqq, %bb.gn ], [ %i.aqr, %bb.gm ] ; 7 uses
  %.pre-phi.i.i.i.i.i.i.i = phi i32 [ %i.aqr, %bb.gn ], [ %i.aqq, %bb.gm ] ; 4 uses
  %.0307.i.i.i.i.i.i.i = phi float [ %i.aqh, %bb.gn ], [ %i.alm, %bb.gm ] ; 2 uses
  %.1306.i.i.i.i.i.i.i = phi float [ %.0303.i.i.i.i.i.i.i, %bb.gn ], [ %.0305.i.i.i.i.i.i.i, %bb.gm ]
  %.1304.i.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i.i, %bb.gn ], [ %.0303.i.i.i.i.i.i.i, %bb.gm ]
  %.1302.i.i.i.i.i.i.i = phi float [ %i.arp, %bb.gn ], [ %.0301.i.i.i.i.i.i.i, %bb.gm ] ; 2 uses
  %.1300.i.i.i.i.i.i.i = phi float [ %i.arn, %bb.gn ], [ %.0299.i.i.i.i.i.i.i, %bb.gm ] ; 2 uses
  %.0298.i.i.i.i.i.i.i = phi float [ %i.arq, %bb.gn ], [ %i.aqj, %bb.gm ] ; 3 uses
  %i.arr = add nuw nsw i32 %.pre-phi.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ars = uitofp nneg i32 %i.arr to float        ; 2 uses
  %i.art = fsub float %i.ars, %.0307.i.i.i.i.i.i.i
  %i.aru = call float @llvm.fmuladd.f32(float %.0298.i.i.i.i.i.i.i, float %i.art, float %i.aiy) ; 2 uses
  %i.arv = uitofp nneg i32 %.pre-phi474.i.i.i.i.i.i.i to float ; 3 uses
  %i.arw = fsub float %i.arv, %.0307.i.i.i.i.i.i.i
  %i.arx = call float @llvm.fmuladd.f32(float %.0298.i.i.i.i.i.i.i, float %i.arw, float %i.aiy) ; 2 uses
  %i.ary = fcmp ogt float %i.aru, %i.aiz
  %.0296.i.i.i.i.i.i.i = select i1 %i.ary, float %i.aiz, float %i.aru ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.asa = load float, ptr %i.arz, align 4        ; 4 uses
  %i.asb = fsub float %.0296.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.asc = fmul float %i.asa, %i.asb              ; 5 uses
  %i.asd = fsub nnan float %i.ars, %.1306.i.i.i.i.i.i.i
  %i.ase = fmul float %i.asd, %i.asc
  %i.asf = fmul float %i.ase, 5.000000e-01
  %i.asg = zext nneg i32 %.pre-phi.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.asg ; 2 uses
  %i.asi = load float, ptr %i.ash, align 4
  %i.asj = fadd float %i.asi, %i.asf
  store float %i.asj, ptr %i.ash, align 4
  %i.ask = fcmp ogt float %i.arx, %i.aiz          ; 2 uses
  %i.asl = fsub float %i.aiz, %.0296.i.i.i.i.i.i.i
  %i.asm = sub nsw i32 %.pre-phi474.i.i.i.i.i.i.i, %i.arr
  %i.asn = sitofp i32 %i.asm to float
  %i.aso = fdiv float %i.asl, %i.asn
  %.1.i.i.i.i.i.i.i = select i1 %i.ask, float %i.aso, float %.0298.i.i.i.i.i.i.i
  %.0295.i.i.i.i.i.i.i = select i1 %i.ask, float %i.aiz, float %i.arx
  %i.asp = fmul float %i.asa, %.1.i.i.i.i.i.i.i   ; 4 uses
  %i.asq = icmp slt i32 %i.arr, %.pre-phi474.i.i.i.i.i.i.i
  br i1 %i.asq, label %.lr.ph467.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph467.i.i.i.i.i.i.i:                          ; preds = %bb.go
  %i.asr = fmul float %i.asp, 5.000000e-01        ; 3 uses
  %i.ass = add nuw nsw i64 %i.asg, 1              ; 2 uses
  %i.ast = add nsw i32 %.pre-phi474.i.i.i.i.i.i.i, -2
  %i.asu = sub nsw i32 %.pre-phi.i.i.i.i.i.i.i, %.pre-phi474.i.i.i.i.i.i.i
  %i.asv = and i32 %i.asu, 1
  %lcmp.mod828.not.not = icmp eq i32 %i.asv, 0
  br i1 %lcmp.mod828.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i.i.i.i.i
  %i.asw = fadd float %i.asr, %i.asc
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.ass ; 2 uses
  %i.asy = load float, ptr %i.asx, align 4
  %i.asz = fadd float %i.asw, %i.asy
  store float %i.asz, ptr %i.asx, align 4
  %i.ata = fadd float %i.asp, %i.asc              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.prol = add nuw nsw i64 %i.asg, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i.i.i.i.i
  %indvars.iv471.i.i.i.i.i.i.i.unr = phi i64 [ %i.ass, %.lr.ph467.i.i.i.i.i.i.i ], [ %indvars.iv.next472.i.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.i.i.i.i.unr = phi float [ %i.asc, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.ata, %.prol.loopexit.unr-lcssa ]
  %.lcssa746.unr = phi float [ poison, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.ata, %.prol.loopexit.unr-lcssa ]
  %i.atb = icmp eq i32 %i.ast, %.pre-phi.i.i.i.i.i.i.i
  br i1 %i.atb, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph467.i.i.i.i.i.i.i.new

.lr.ph467.i.i.i.i.i.i.i.new:                      ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new
  %indvars.iv471.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.i.i.i.i.1, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %indvars.iv471.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i.i.i.i.i = phi float [ %i.atm, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %.0294466.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.atc = fadd float %i.asr, %.0294466.i.i.i.i.i.i.i
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i ; 2 uses
  %i.ate = load float, ptr %i.atd, align 4
  %i.atf = fadd float %i.atc, %i.ate
  store float %i.atf, ptr %i.atd, align 4
  %i.atg = fadd float %i.asp, %.0294466.i.i.i.i.i.i.i ; 2 uses
  %i.ath = fadd float %i.asr, %i.atg
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 4 ; 2 uses
  %i.atk = load float, ptr %i.atj, align 4
  %i.atl = fadd float %i.ath, %i.atk
  store float %i.atl, ptr %i.atj, align 4
  %i.atm = fadd float %i.asp, %i.atg              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.atn = trunc nuw i64 %indvars.iv.next472.i.i.i.i.i.i.i.1 to i32
  %i.ato = icmp sgt i32 %.pre-phi474.i.i.i.i.i.i.i, %i.atn
  br i1 %i.ato, label %.lr.ph467.i.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new, %bb.go
  %.0294.lcssa.i.i.i.i.i.i.i = phi float [ %i.asc, %bb.go ], [ %.lcssa746.unr, %.prol.loopexit ], [ %i.atm, %.lr.ph467.i.i.i.i.i.i.i.new ]
  %i.atp = fsub float %.1300.i.i.i.i.i.i.i, %.0295.i.i.i.i.i.i.i
  %i.atq = fadd float %i.arv, 1.000000e+00        ; 2 uses
  %i.atr = fsub nnan float %i.atq, %i.arv
  %i.ats = fsub float %i.atq, %.1304.i.i.i.i.i.i.i
  %i.att = fadd float %i.atr, %i.ats
  %i.atu = fmul float %i.att, 5.000000e-01
  %i.atv = fmul float %i.atu, %i.atp
  %i.atw = call float @llvm.fmuladd.f32(float %i.asa, float %i.atv, float %.0294.lcssa.i.i.i.i.i.i.i)
  %i.atx = zext nneg i32 %.pre-phi474.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.atx ; 2 uses
  %i.atz = load float, ptr %i.aty, align 4
  %i.aua = fadd float %i.atw, %i.atz
  store float %i.aua, ptr %i.aty, align 4
  %i.aub = fsub float %.1300.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.atx ; 2 uses
  %i.aud = load float, ptr %i.auc, align 4
  %i.aue = call float @llvm.fmuladd.f32(float %i.asa, float %i.aub, float %i.aud)
  store float %i.aue, ptr %i.auc, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gp:                                            ; preds = %bb.gj, %bb.gi
  br i1 %i.aiw, label %.lr.ph.i.i94.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i.i:                           ; preds = %bb.gp
  %i.auf = fsub float %i.aqh, %i.alm
  %i.aug = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20 ; 30 uses
  %i.auh = fcmp olt float %13, %i.aiy             ; 7 uses
  %or.cond35.i.i.i.i.i.i = select i1 %i.alg, i1 true, i1 %i.auh
  %i.aui = fcmp olt float %i.aiz, %14             ; 7 uses
  %or.cond36.i.i.i.i.i.i = or i1 %i.aui, %or.cond35.i.i.i.i.i.i
  %24 = extractelement <2 x float> %15, i64 0
  %i.auj = fmul float %i.auf, %24
  %i.auk = fdiv float %i.auj, %i.alh
  %i.aul = fadd float %i.alm, %i.auk
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.aql, float %i.aul, float %i.alm ; 4 uses
  %i.aum = fsub float %i.aqh, %.055.i457.i.i.i.i.i.i.i
  %i.aun = fsub float %13, %i.aiz                 ; 7 uses
  %i.auo = fmul float %i.aun, %i.aum
  %i.aup = fsub float %i.aiz, %.0301.i.i.i.i.i.i.i
  %i.auq = fdiv float %i.auo, %i.aup
  %i.aur = fadd float %i.aqh, %i.auq
  %.053.i459.i.i.i.i.i.i.i = select i1 %22, float %i.aur, float %i.aqh ; 3 uses
  %i.aus = fsub float %.0299.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i ; 2 uses
  br label %bb.gq

bb.gq:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i.i, %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i, 1 ; 3 uses
  %i.aut = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i to i32
  %i.auu = uitofp nneg i32 %i.aut to float        ; 90 uses
  %i.auv = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i.i to i32
  %i.auw = uitofp nneg i32 %i.auv to float        ; 60 uses
  %i.aux = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.auy = insertelement <2 x float> %i.aux, float %i.auw, i64 1
  %i.auz = fsub <2 x float> %i.auy, %19           ; 7 uses
  %i.ava = fdiv <2 x float> %i.auz, %17           ; 2 uses
  %i.avb = extractelement <2 x float> %i.ava, i64 0
  %i.avc = fadd float %i.avb, %i.aiy              ; 48 uses
  %i.avd = extractelement <2 x float> %i.ava, i64 1
  %i.ave = fadd float %i.avd, %i.aiy              ; 48 uses
  %i.avf = fcmp olt float %i.alm, %i.auu          ; 2 uses
  %i.avg = fcmp ogt float %i.aqh, %i.auw          ; 2 uses
  %or.cond339.i.i.i.i.i.i.i = select i1 %i.avf, i1 %i.avg, i1 false
  br i1 %or.cond339.i.i.i.i.i.i.i, label %bb.gr, label %bb.ho

bb.gr:                                            ; preds = %bb.gq
  %i.avh = fcmp oeq float %i.avc, %i.aiy
  %or.cond7.i.i.i.i.i.i = select i1 %i.avh, i1 true, i1 %i.auh
  %i.avi = fcmp olt float %i.avc, %14             ; 2 uses
  %or.cond8.i.i.i.i.i.i = or i1 %i.avi, %or.cond7.i.i.i.i.i.i
  br i1 %or.cond8.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %foldExtExtBinop = fmul <2 x float> %15, %i.auz
  %25 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.avj = fsub float %i.avc, %i.aiy
  %i.avk = fdiv float %25, %i.avj
  %i.avl = fadd float %i.alm, %i.avk
  %.055.i359.i.i.i.i.i.i.i = select i1 %i.aql, float %i.avl, float %i.alm ; 4 uses
  %i.avm = fcmp ogt float %i.avc, %13
  br i1 %i.avm, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.avn = fsub float %i.auu, %.055.i359.i.i.i.i.i.i.i
  %i.avo = fsub float %13, %i.avc
  %i.avp = fmul float %i.avo, %i.avn
  %i.avq = fsub float %i.avc, %.0301.i.i.i.i.i.i.i
  %i.avr = fdiv float %i.avp, %i.avq
  %i.avs = fadd float %i.avr, %i.auu
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.053.i361.i.i.i.i.i.i.i = phi float [ %i.avs, %bb.gt ], [ %i.auu, %bb.gs ] ; 3 uses
  %.0.i362.i.i.i.i.i.i.i = phi float [ %13, %bb.gt ], [ %i.avc, %bb.gs ] ; 2 uses
  %i.avt = fcmp ugt float %.055.i359.i.i.i.i.i.i.i, %i.auu
  %i.avu = fcmp ugt float %.053.i361.i.i.i.i.i.i.i, %i.auu
  %or.cond.i363.i.i.i.i.i.i.i = select i1 %i.avt, i1 true, i1 %i.avu
  br i1 %or.cond.i363.i.i.i.i.i.i.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.avv = load float, ptr %i.aug, align 4
  %i.avw = fsub float %.0.i362.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.avy = load float, ptr %i.avx, align 4
  %i.avz = call float @llvm.fmuladd.f32(float %i.avv, float %i.avw, float %i.avy)
  store float %i.avz, ptr %i.avx, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.gw:                                            ; preds = %bb.gu
  %i.awa = fcmp ult float %.055.i359.i.i.i.i.i.i.i, %i.auw
  %i.awb = fcmp ult float %.053.i361.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i364.i.i.i.i.i.i.i = select i1 %i.awa, i1 true, i1 %i.awb
  br i1 %or.cond62.i364.i.i.i.i.i.i.i, label %bb.gx, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.awc = load float, ptr %i.aug, align 4
  %i.awd = fsub float %.0.i362.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.awe = fmul float %i.awd, %i.awc
  %i.awf = fsub float %.055.i359.i.i.i.i.i.i.i, %i.auu
  %i.awg = fsub float %.053.i361.i.i.i.i.i.i.i, %i.auu
  %i.awh = fadd float %i.awf, %i.awg
  %i.awi = fmul float %i.awh, 5.000000e-01
  %i.awj = fsub float 1.000000e+00, %i.awi
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awl = load float, ptr %i.awk, align 4
  %i.awm = call float @llvm.fmuladd.f32(float %i.awe, float %i.awj, float %i.awl)
  store float %i.awm, ptr %i.awk, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i: ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gr
  %i.awn = fcmp oeq float %i.avc, %i.ave
  %i.awo = fcmp ogt float %i.avc, %13
  %or.cond9.i.i.i.i.i.i = select i1 %i.awn, i1 true, i1 %i.awo
  %i.awp = fcmp olt float %i.ave, %14             ; 2 uses
  %or.cond10.i.i.i.i.i.i = or i1 %i.awp, %or.cond9.i.i.i.i.i.i
  br i1 %or.cond10.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  br i1 %i.avi, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.awq = fsub nnan float %i.auw, %i.auu
  %i.awr = fsub float %14, %i.avc
  %i.aws = fmul float %i.awq, %i.awr
  %i.awt = fsub float %i.ave, %i.avc
  %i.awu = fdiv float %i.aws, %i.awt
  %i.awv = fadd float %i.awu, %i.auu
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.055.i366.i.i.i.i.i.i.i = phi float [ %i.awv, %bb.gz ], [ %i.auu, %bb.gy ] ; 4 uses
  %.054.i367.i.i.i.i.i.i.i = phi float [ %14, %bb.gz ], [ %i.avc, %bb.gy ] ; 3 uses
  %i.aww = fcmp ogt float %i.ave, %13
  br i1 %i.aww, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.awx = fsub float %i.auw, %.055.i366.i.i.i.i.i.i.i
  %i.awy = fsub float %13, %i.ave
  %i.awz = fmul float %i.awy, %i.awx
  %i.axa = fsub float %i.ave, %.054.i367.i.i.i.i.i.i.i
  %i.axb = fdiv float %i.awz, %i.axa
  %i.axc = fadd float %i.axb, %i.auw
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.053.i368.i.i.i.i.i.i.i = phi float [ %i.axc, %bb.hb ], [ %i.auw, %bb.ha ] ; 3 uses
  %.0.i369.i.i.i.i.i.i.i = phi float [ %13, %bb.hb ], [ %i.ave, %bb.ha ] ; 2 uses
  %i.axd = fcmp ugt float %.055.i366.i.i.i.i.i.i.i, %i.auu
  %i.axe = fcmp ugt float %.053.i368.i.i.i.i.i.i.i, %i.auu
  %or.cond.i370.i.i.i.i.i.i.i = select i1 %i.axd, i1 true, i1 %i.axe
  br i1 %or.cond.i370.i.i.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.axf = load float, ptr %i.aug, align 4
  %i.axg = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.axi = load float, ptr %i.axh, align 4
  %i.axj = call float @llvm.fmuladd.f32(float %i.axf, float %i.axg, float %i.axi)
  store float %i.axj, ptr %i.axh, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  %i.axk = fcmp ult float %.055.i366.i.i.i.i.i.i.i, %i.auw
  %i.axl = fcmp ult float %.053.i368.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i371.i.i.i.i.i.i.i = select i1 %i.axk, i1 true, i1 %i.axl
  br i1 %or.cond62.i371.i.i.i.i.i.i.i, label %bb.hf, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.he
  %i.axm = load float, ptr %i.aug, align 4
  %i.axn = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axo = fmul float %i.axn, %i.axm
  %i.axp = fsub float %.055.i366.i.i.i.i.i.i.i, %i.auu
  %i.axq = fsub float %.053.i368.i.i.i.i.i.i.i, %i.auu
  %i.axr = fadd float %i.axp, %i.axq
  %i.axs = fmul float %i.axr, 5.000000e-01
  %i.axt = fsub float 1.000000e+00, %i.axs
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.axv = load float, ptr %i.axu, align 4
  %i.axw = call float @llvm.fmuladd.f32(float %i.axo, float %i.axt, float %i.axv)
  store float %i.axw, ptr %i.axu, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i: ; preds = %bb.hf, %bb.he, %bb.hd, %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.axx = fcmp oeq float %i.ave, %i.aiz
  %i.axy = fcmp ogt float %i.ave, %13
  %or.cond11.i.i.i.i.i.i = select i1 %i.axx, i1 true, i1 %i.axy
  %or.cond12.i.i.i.i.i.i = or i1 %i.aui, %or.cond11.i.i.i.i.i.i
  br i1 %or.cond12.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  br i1 %i.awp, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.axz = fsub float %i.aqh, %i.auw
  %i.aya = fsub float %14, %i.ave
  %i.ayb = fmul float %i.axz, %i.aya
  %i.ayc = fsub float %i.aiz, %i.ave
  %i.ayd = fdiv float %i.ayb, %i.ayc
  %i.aye = fadd float %i.ayd, %i.auw
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.055.i373.i.i.i.i.i.i.i = phi float [ %i.aye, %bb.hh ], [ %i.auw, %bb.hg ] ; 4 uses
  %.054.i374.i.i.i.i.i.i.i = phi float [ %14, %bb.hh ], [ %i.ave, %bb.hg ] ; 3 uses
  br i1 %22, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ayf = fsub float %i.aqh, %.055.i373.i.i.i.i.i.i.i
  %i.ayg = fmul float %i.aun, %i.ayf
  %i.ayh = fsub float %i.aiz, %.054.i374.i.i.i.i.i.i.i
  %i.ayi = fdiv float %i.ayg, %i.ayh
  %i.ayj = fadd float %i.aqh, %i.ayi
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.053.i375.i.i.i.i.i.i.i = phi float [ %i.ayj, %bb.hj ], [ %i.aqh, %bb.hi ] ; 3 uses
  %.0.i376.i.i.i.i.i.i.i = phi float [ %13, %bb.hj ], [ %i.aiz, %bb.hi ] ; 2 uses
  %i.ayk = fcmp ugt float %.055.i373.i.i.i.i.i.i.i, %i.auu
  %i.ayl = fcmp ugt float %.053.i375.i.i.i.i.i.i.i, %i.auu
  %or.cond.i377.i.i.i.i.i.i.i = select i1 %i.ayk, i1 true, i1 %i.ayl
  br i1 %or.cond.i377.i.i.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aym = load float, ptr %i.aug, align 4
  %i.ayn = fsub float %.0.i376.i.i.i.i.i.i.i, %.054.i374.i.i.i.i.i.i.i
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.ayp = load float, ptr %i.ayo, align 4
  %i.ayq = call float @llvm.fmuladd.f32(float %i.aym, float %i.ayn, float %i.ayp)
  store float %i.ayq, ptr %i.ayo, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.ayr = fcmp ult float %.055.i373.i.i.i.i.i.i.i, %i.auw
  %i.ays = fcmp ult float %.053.i375.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i378.i.i.i.i.i.i.i = select i1 %i.ayr, i1 true, i1 %i.ays
  br i1 %or.cond62.i378.i.i.i.i.i.i.i, label %bb.hn, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.ayt = load float, ptr %i.aug, align 4
  %i.ayu = fsub float %.0.i376.i.i.i.i.i.i.i, %.054.i374.i.i.i.i.i.i.i
  %i.ayv = fmul float %i.ayu, %i.ayt
  %i.ayw = fsub float %.055.i373.i.i.i.i.i.i.i, %i.auu
  %i.ayx = fsub float %.053.i375.i.i.i.i.i.i.i, %i.auu
  %i.ayy = fadd float %i.ayw, %i.ayx
  %i.ayz = fmul float %i.ayy, 5.000000e-01
  %i.aza = fsub float 1.000000e+00, %i.ayz
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.azc = load float, ptr %i.azb, align 4
  %i.azd = call float @llvm.fmuladd.f32(float %i.ayv, float %i.aza, float %i.azc)
  store float %i.azd, ptr %i.azb, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.gq
  %i.aze = fcmp olt float %i.aqh, %i.auu          ; 2 uses
  %i.azf = fcmp ogt float %i.alm, %i.auw          ; 2 uses
  %or.cond340.i.i.i.i.i.i.i = select i1 %i.aze, i1 %i.azf, i1 false
  br i1 %or.cond340.i.i.i.i.i.i.i, label %bb.hp, label %bb.im

bb.hp:                                            ; preds = %bb.ho
  %i.azg = fcmp oeq float %i.ave, %i.aiy
  %or.cond13.i.i.i.i.i.i = select i1 %i.azg, i1 true, i1 %i.auh
  %i.azh = fcmp olt float %i.ave, %14             ; 2 uses
  %or.cond14.i.i.i.i.i.i = or i1 %i.azh, %or.cond13.i.i.i.i.i.i
  br i1 %or.cond14.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %shift = shufflevector <2 x float> %i.auz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop721 = fmul <2 x float> %15, %shift
  %26 = extractelement <2 x float> %foldExtExtBinop721, i64 0
  %i.azi = fsub float %i.ave, %i.aiy
  %i.azj = fdiv float %26, %i.azi
  %i.azk = fadd float %i.alm, %i.azj
  %.055.i380.i.i.i.i.i.i.i = select i1 %i.aql, float %i.azk, float %i.alm ; 4 uses
  %i.azl = fcmp ogt float %i.ave, %13
  br i1 %i.azl, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.azm = fsub float %i.auw, %.055.i380.i.i.i.i.i.i.i
  %i.azn = fsub float %13, %i.ave
  %i.azo = fmul float %i.azn, %i.azm
  %i.azp = fsub float %i.ave, %.0301.i.i.i.i.i.i.i
  %i.azq = fdiv float %i.azo, %i.azp
  %i.azr = fadd float %i.azq, %i.auw
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.053.i382.i.i.i.i.i.i.i = phi float [ %i.azr, %bb.hr ], [ %i.auw, %bb.hq ] ; 3 uses
  %.0.i383.i.i.i.i.i.i.i = phi float [ %13, %bb.hr ], [ %i.ave, %bb.hq ] ; 2 uses
  %i.azs = fcmp ugt float %.055.i380.i.i.i.i.i.i.i, %i.auu
  %i.azt = fcmp ugt float %.053.i382.i.i.i.i.i.i.i, %i.auu
  %or.cond.i384.i.i.i.i.i.i.i = select i1 %i.azs, i1 true, i1 %i.azt
  br i1 %or.cond.i384.i.i.i.i.i.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.azu = load float, ptr %i.aug, align 4
  %i.azv = fsub float %.0.i383.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.azx = load float, ptr %i.azw, align 4
  %i.azy = call float @llvm.fmuladd.f32(float %i.azu, float %i.azv, float %i.azx)
  store float %i.azy, ptr %i.azw, align 4
  br label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.hs
  %i.azz = fcmp ult float %.055.i380.i.i.i.i.i.i.i, %i.auw
  %i.baa = fcmp ult float %.053.i382.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i385.i.i.i.i.i.i.i = select i1 %i.azz, i1 true, i1 %i.baa
  br i1 %or.cond62.i385.i.i.i.i.i.i.i, label %bb.hv, label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.bab = load float, ptr %i.aug, align 4
  %i.bac = fsub float %.0.i383.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bad = fmul float %i.bac, %i.bab
  %i.bae = fsub float %.055.i380.i.i.i.i.i.i.i, %i.auu
  %i.baf = fsub float %.053.i382.i.i.i.i.i.i.i, %i.auu
  %i.bag = fadd float %i.bae, %i.baf
  %i.bah = fmul float %i.bag, 5.000000e-01
  %i.bai = fsub float 1.000000e+00, %i.bah
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bak = load float, ptr %i.baj, align 4
  %i.bal = call float @llvm.fmuladd.f32(float %i.bad, float %i.bai, float %i.bak)
  store float %i.bal, ptr %i.baj, align 4
  br label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i: ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hp
  %i.bam = fcmp oeq float %i.ave, %i.avc
  %i.ban = fcmp ogt float %i.ave, %13
  %or.cond15.i.i.i.i.i.i = select i1 %i.bam, i1 true, i1 %i.ban
  %i.bao = fcmp olt float %i.avc, %14             ; 2 uses
  %or.cond16.i.i.i.i.i.i = or i1 %i.bao, %or.cond15.i.i.i.i.i.i
  br i1 %or.cond16.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i
  br i1 %i.azh, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bap = fsub nnan float %i.auu, %i.auw
  %i.baq = fsub float %14, %i.ave
  %i.bar = fmul float %i.bap, %i.baq
  %i.bas = fsub float %i.avc, %i.ave
  %i.bat = fdiv float %i.bar, %i.bas
  %i.bau = fadd float %i.bat, %i.auw
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.055.i387.i.i.i.i.i.i.i = phi float [ %i.bau, %bb.hx ], [ %i.auw, %bb.hw ] ; 4 uses
  %.054.i388.i.i.i.i.i.i.i = phi float [ %14, %bb.hx ], [ %i.ave, %bb.hw ] ; 3 uses
  %i.bav = fcmp ogt float %i.avc, %13
  br i1 %i.bav, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.baw = fsub float %i.auu, %.055.i387.i.i.i.i.i.i.i
  %i.bax = fsub float %13, %i.avc
  %i.bay = fmul float %i.bax, %i.baw
  %i.baz = fsub float %i.avc, %.054.i388.i.i.i.i.i.i.i
  %i.bba = fdiv float %i.bay, %i.baz
  %i.bbb = fadd float %i.bba, %i.auu
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.053.i389.i.i.i.i.i.i.i = phi float [ %i.bbb, %bb.hz ], [ %i.auu, %bb.hy ] ; 3 uses
  %.0.i390.i.i.i.i.i.i.i = phi float [ %13, %bb.hz ], [ %i.avc, %bb.hy ] ; 2 uses
  %i.bbc = fcmp ugt float %.055.i387.i.i.i.i.i.i.i, %i.auu
  %i.bbd = fcmp ugt float %.053.i389.i.i.i.i.i.i.i, %i.auu
  %or.cond.i391.i.i.i.i.i.i.i = select i1 %i.bbc, i1 true, i1 %i.bbd
  br i1 %or.cond.i391.i.i.i.i.i.i.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bbe = load float, ptr %i.aug, align 4
  %i.bbf = fsub float %.0.i390.i.i.i.i.i.i.i, %.054.i388.i.i.i.i.i.i.i
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bbh = load float, ptr %i.bbg, align 4
  %i.bbi = call float @llvm.fmuladd.f32(float %i.bbe, float %i.bbf, float %i.bbh)
  store float %i.bbi, ptr %i.bbg, align 4
  br label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.ia
  %i.bbj = fcmp ult float %.055.i387.i.i.i.i.i.i.i, %i.auw
  %i.bbk = fcmp ult float %.053.i389.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i392.i.i.i.i.i.i.i = select i1 %i.bbj, i1 true, i1 %i.bbk
  br i1 %or.cond62.i392.i.i.i.i.i.i.i, label %bb.id, label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.ic
  %i.bbl = load float, ptr %i.aug, align 4
  %i.bbm = fsub float %.0.i390.i.i.i.i.i.i.i, %.054.i388.i.i.i.i.i.i.i
  %i.bbn = fmul float %i.bbm, %i.bbl
  %i.bbo = fsub float %.055.i387.i.i.i.i.i.i.i, %i.auu
  %i.bbp = fsub float %.053.i389.i.i.i.i.i.i.i, %i.auu
  %i.bbq = fadd float %i.bbo, %i.bbp
  %i.bbr = fmul float %i.bbq, 5.000000e-01
  %i.bbs = fsub float 1.000000e+00, %i.bbr
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bbu = load float, ptr %i.bbt, align 4
  %i.bbv = call float @llvm.fmuladd.f32(float %i.bbn, float %i.bbs, float %i.bbu)
  store float %i.bbv, ptr %i.bbt, align 4
  br label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i: ; preds = %bb.id, %bb.ic, %bb.ib, %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i
  %i.bbw = fcmp oeq float %i.avc, %i.aiz
  %i.bbx = fcmp ogt float %i.avc, %13
  %or.cond17.i.i.i.i.i.i = select i1 %i.bbw, i1 true, i1 %i.bbx
  %or.cond18.i.i.i.i.i.i = or i1 %i.aui, %or.cond17.i.i.i.i.i.i
  br i1 %or.cond18.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i
  br i1 %i.bao, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bby = fsub float %i.aqh, %i.auu
  %i.bbz = fsub float %14, %i.avc
  %i.bca = fmul float %i.bby, %i.bbz
  %i.bcb = fsub float %i.aiz, %i.avc
  %i.bcc = fdiv float %i.bca, %i.bcb
  %i.bcd = fadd float %i.bcc, %i.auu
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.055.i394.i.i.i.i.i.i.i = phi float [ %i.bcd, %bb.if ], [ %i.auu, %bb.ie ] ; 4 uses
  %.054.i395.i.i.i.i.i.i.i = phi float [ %14, %bb.if ], [ %i.avc, %bb.ie ] ; 3 uses
  br i1 %22, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bce = fsub float %i.aqh, %.055.i394.i.i.i.i.i.i.i
  %i.bcf = fmul float %i.aun, %i.bce
  %i.bcg = fsub float %i.aiz, %.054.i395.i.i.i.i.i.i.i
  %i.bch = fdiv float %i.bcf, %i.bcg
  %i.bci = fadd float %i.aqh, %i.bch
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.053.i396.i.i.i.i.i.i.i = phi float [ %i.bci, %bb.ih ], [ %i.aqh, %bb.ig ] ; 3 uses
  %.0.i397.i.i.i.i.i.i.i = phi float [ %13, %bb.ih ], [ %i.aiz, %bb.ig ] ; 2 uses
  %i.bcj = fcmp ugt float %.055.i394.i.i.i.i.i.i.i, %i.auu
  %i.bck = fcmp ugt float %.053.i396.i.i.i.i.i.i.i, %i.auu
  %or.cond.i398.i.i.i.i.i.i.i = select i1 %i.bcj, i1 true, i1 %i.bck
  br i1 %or.cond.i398.i.i.i.i.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bcl = load float, ptr %i.aug, align 4
  %i.bcm = fsub float %.0.i397.i.i.i.i.i.i.i, %.054.i395.i.i.i.i.i.i.i
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bco = load float, ptr %i.bcn, align 4
  %i.bcp = call float @llvm.fmuladd.f32(float %i.bcl, float %i.bcm, float %i.bco)
  store float %i.bcp, ptr %i.bcn, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  %i.bcq = fcmp ult float %.055.i394.i.i.i.i.i.i.i, %i.auw
  %i.bcr = fcmp ult float %.053.i396.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i399.i.i.i.i.i.i.i = select i1 %i.bcq, i1 true, i1 %i.bcr
  br i1 %or.cond62.i399.i.i.i.i.i.i.i, label %bb.il, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.bcs = load float, ptr %i.aug, align 4
  %i.bct = fsub float %.0.i397.i.i.i.i.i.i.i, %.054.i395.i.i.i.i.i.i.i
  %i.bcu = fmul float %i.bct, %i.bcs
  %i.bcv = fsub float %.055.i394.i.i.i.i.i.i.i, %i.auu
  %i.bcw = fsub float %.053.i396.i.i.i.i.i.i.i, %i.auu
  %i.bcx = fadd float %i.bcv, %i.bcw
  %i.bcy = fmul float %i.bcx, 5.000000e-01
  %i.bcz = fsub float 1.000000e+00, %i.bcy
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bdb = load float, ptr %i.bda, align 4
  %i.bdc = call float @llvm.fmuladd.f32(float %i.bcu, float %i.bcz, float %i.bdb)
  store float %i.bdc, ptr %i.bda, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.im:                                            ; preds = %bb.ho
  %i.bdd = fcmp ogt float %i.aqh, %i.auu
  %or.cond341.i.i.i.i.i.i.i = and i1 %i.avf, %i.bdd
  br i1 %or.cond341.i.i.i.i.i.i.i, label %bb.in, label %bb.jc

bb.in:                                            ; preds = %bb.im
  %i.bde = fcmp oeq float %i.avc, %i.aiy
  %or.cond19.i.i.i.i.i.i = select i1 %i.bde, i1 true, i1 %i.auh
  %i.bdf = fcmp olt float %i.avc, %14             ; 2 uses
  %or.cond20.i.i.i.i.i.i = or i1 %i.bdf, %or.cond19.i.i.i.i.i.i
  br i1 %or.cond20.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %foldExtExtBinop723 = fmul <2 x float> %15, %i.auz
  %27 = extractelement <2 x float> %foldExtExtBinop723, i64 0
  %i.bdg = fsub float %i.avc, %i.aiy
  %i.bdh = fdiv float %27, %i.bdg
  %i.bdi = fadd float %i.alm, %i.bdh
  %.055.i401.i.i.i.i.i.i.i = select i1 %i.aql, float %i.bdi, float %i.alm ; 4 uses
  %i.bdj = fcmp ogt float %i.avc, %13
  br i1 %i.bdj, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.bdk = fsub float %i.auu, %.055.i401.i.i.i.i.i.i.i
  %i.bdl = fsub float %13, %i.avc
  %i.bdm = fmul float %i.bdl, %i.bdk
  %i.bdn = fsub float %i.avc, %.0301.i.i.i.i.i.i.i
  %i.bdo = fdiv float %i.bdm, %i.bdn
  %i.bdp = fadd float %i.bdo, %i.auu
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.053.i403.i.i.i.i.i.i.i = phi float [ %i.bdp, %bb.ip ], [ %i.auu, %bb.io ] ; 3 uses
  %.0.i404.i.i.i.i.i.i.i = phi float [ %13, %bb.ip ], [ %i.avc, %bb.io ] ; 2 uses
  %i.bdq = fcmp ugt float %.055.i401.i.i.i.i.i.i.i, %i.auu
  %i.bdr = fcmp ugt float %.053.i403.i.i.i.i.i.i.i, %i.auu
  %or.cond.i405.i.i.i.i.i.i.i = select i1 %i.bdq, i1 true, i1 %i.bdr
  br i1 %or.cond.i405.i.i.i.i.i.i.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bds = load float, ptr %i.aug, align 4
  %i.bdt = fsub float %.0.i404.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bdv = load float, ptr %i.bdu, align 4
  %i.bdw = call float @llvm.fmuladd.f32(float %i.bds, float %i.bdt, float %i.bdv)
  store float %i.bdw, ptr %i.bdu, align 4
  br label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %i.bdx = fcmp ult float %.055.i401.i.i.i.i.i.i.i, %i.auw
  %i.bdy = fcmp ult float %.053.i403.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i406.i.i.i.i.i.i.i = select i1 %i.bdx, i1 true, i1 %i.bdy
  br i1 %or.cond62.i406.i.i.i.i.i.i.i, label %bb.it, label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.is
  %i.bdz = load float, ptr %i.aug, align 4
  %i.bea = fsub float %.0.i404.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.beb = fmul float %i.bea, %i.bdz
  %i.bec = fsub float %.055.i401.i.i.i.i.i.i.i, %i.auu
  %i.bed = fsub float %.053.i403.i.i.i.i.i.i.i, %i.auu
  %i.bee = fadd float %i.bec, %i.bed
  %i.bef = fmul float %i.bee, 5.000000e-01
  %i.beg = fsub float 1.000000e+00, %i.bef
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bei = load float, ptr %i.beh, align 4
  %i.bej = call float @llvm.fmuladd.f32(float %i.beb, float %i.beg, float %i.bei)
  store float %i.bej, ptr %i.beh, align 4
  br label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i: ; preds = %bb.it, %bb.is, %bb.ir, %bb.in
  %i.bek = fcmp oeq float %i.avc, %i.aiz
  %i.bel = fcmp ogt float %i.avc, %13
  %or.cond21.i.i.i.i.i.i = select i1 %i.bek, i1 true, i1 %i.bel
  %or.cond22.i.i.i.i.i.i = or i1 %i.aui, %or.cond21.i.i.i.i.i.i
  br i1 %or.cond22.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i
  br i1 %i.bdf, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.bem = fsub float %i.aqh, %i.auu
  %i.ben = fsub float %14, %i.avc
  %i.beo = fmul float %i.bem, %i.ben
  %i.bep = fsub float %i.aiz, %i.avc
  %i.beq = fdiv float %i.beo, %i.bep
  %i.ber = fadd float %i.beq, %i.auu
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %.055.i408.i.i.i.i.i.i.i = phi float [ %i.ber, %bb.iv ], [ %i.auu, %bb.iu ] ; 4 uses
  %.054.i409.i.i.i.i.i.i.i = phi float [ %14, %bb.iv ], [ %i.avc, %bb.iu ] ; 3 uses
  br i1 %22, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.bes = fsub float %i.aqh, %.055.i408.i.i.i.i.i.i.i
  %i.bet = fmul float %i.aun, %i.bes
  %i.beu = fsub float %i.aiz, %.054.i409.i.i.i.i.i.i.i
  %i.bev = fdiv float %i.bet, %i.beu
  %i.bew = fadd float %i.aqh, %i.bev
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %.053.i410.i.i.i.i.i.i.i = phi float [ %i.bew, %bb.ix ], [ %i.aqh, %bb.iw ] ; 3 uses
  %.0.i411.i.i.i.i.i.i.i = phi float [ %13, %bb.ix ], [ %i.aiz, %bb.iw ] ; 2 uses
  %i.bex = fcmp ugt float %.055.i408.i.i.i.i.i.i.i, %i.auu
  %i.bey = fcmp ugt float %.053.i410.i.i.i.i.i.i.i, %i.auu
  %or.cond.i412.i.i.i.i.i.i.i = select i1 %i.bex, i1 true, i1 %i.bey
  br i1 %or.cond.i412.i.i.i.i.i.i.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bez = load float, ptr %i.aug, align 4
  %i.bfa = fsub float %.0.i411.i.i.i.i.i.i.i, %.054.i409.i.i.i.i.i.i.i
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bfc = load float, ptr %i.bfb, align 4
  %i.bfd = call float @llvm.fmuladd.f32(float %i.bez, float %i.bfa, float %i.bfc)
  store float %i.bfd, ptr %i.bfb, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ja:                                            ; preds = %bb.iy
  %i.bfe = fcmp ult float %.055.i408.i.i.i.i.i.i.i, %i.auw
  %i.bff = fcmp ult float %.053.i410.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i413.i.i.i.i.i.i.i = select i1 %i.bfe, i1 true, i1 %i.bff
  br i1 %or.cond62.i413.i.i.i.i.i.i.i, label %bb.jb, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %bb.ja
  %i.bfg = load float, ptr %i.aug, align 4
  %i.bfh = fsub float %.0.i411.i.i.i.i.i.i.i, %.054.i409.i.i.i.i.i.i.i
  %i.bfi = fmul float %i.bfh, %i.bfg
  %i.bfj = fsub float %.055.i408.i.i.i.i.i.i.i, %i.auu
  %i.bfk = fsub float %.053.i410.i.i.i.i.i.i.i, %i.auu
  %i.bfl = fadd float %i.bfj, %i.bfk
  %i.bfm = fmul float %i.bfl, 5.000000e-01
  %i.bfn = fsub float 1.000000e+00, %i.bfm
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bfp = load float, ptr %i.bfo, align 4
  %i.bfq = call float @llvm.fmuladd.f32(float %i.bfi, float %i.bfn, float %i.bfp)
  store float %i.bfq, ptr %i.bfo, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.jc:                                            ; preds = %bb.im
  %i.bfr = fcmp ogt float %i.alm, %i.auu
  %or.cond342.i.i.i.i.i.i.i = and i1 %i.aze, %i.bfr
  br i1 %or.cond342.i.i.i.i.i.i.i, label %bb.jd, label %bb.js

bb.jd:                                            ; preds = %bb.jc
  %i.bfs = fcmp oeq float %i.avc, %i.aiy
  %or.cond23.i.i.i.i.i.i = select i1 %i.bfs, i1 true, i1 %i.auh
  %i.bft = fcmp olt float %i.avc, %14             ; 2 uses
  %or.cond24.i.i.i.i.i.i = or i1 %i.bft, %or.cond23.i.i.i.i.i.i
  br i1 %or.cond24.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %foldExtExtBinop725 = fmul <2 x float> %15, %i.auz
  %28 = extractelement <2 x float> %foldExtExtBinop725, i64 0
  %i.bfu = fsub float %i.avc, %i.aiy
  %i.bfv = fdiv float %28, %i.bfu
  %i.bfw = fadd float %i.alm, %i.bfv
  %.055.i415.i.i.i.i.i.i.i = select i1 %i.aql, float %i.bfw, float %i.alm ; 4 uses
  %i.bfx = fcmp ogt float %i.avc, %13
  br i1 %i.bfx, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bfy = fsub float %i.auu, %.055.i415.i.i.i.i.i.i.i
  %i.bfz = fsub float %13, %i.avc
  %i.bga = fmul float %i.bfz, %i.bfy
  %i.bgb = fsub float %i.avc, %.0301.i.i.i.i.i.i.i
  %i.bgc = fdiv float %i.bga, %i.bgb
  %i.bgd = fadd float %i.bgc, %i.auu
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.053.i417.i.i.i.i.i.i.i = phi float [ %i.bgd, %bb.jf ], [ %i.auu, %bb.je ] ; 3 uses
  %.0.i418.i.i.i.i.i.i.i = phi float [ %13, %bb.jf ], [ %i.avc, %bb.je ] ; 2 uses
  %i.bge = fcmp ugt float %.055.i415.i.i.i.i.i.i.i, %i.auu
  %i.bgf = fcmp ugt float %.053.i417.i.i.i.i.i.i.i, %i.auu
  %or.cond.i419.i.i.i.i.i.i.i = select i1 %i.bge, i1 true, i1 %i.bgf
  br i1 %or.cond.i419.i.i.i.i.i.i.i, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.bgg = load float, ptr %i.aug, align 4
  %i.bgh = fsub float %.0.i418.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bgj = load float, ptr %i.bgi, align 4
  %i.bgk = call float @llvm.fmuladd.f32(float %i.bgg, float %i.bgh, float %i.bgj)
  store float %i.bgk, ptr %i.bgi, align 4
  br label %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i

bb.ji:                                            ; preds = %bb.jg
  %i.bgl = fcmp ult float %.055.i415.i.i.i.i.i.i.i, %i.auw
  %i.bgm = fcmp ult float %.053.i417.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i420.i.i.i.i.i.i.i = select i1 %i.bgl, i1 true, i1 %i.bgm
  br i1 %or.cond62.i420.i.i.i.i.i.i.i, label %bb.jj, label %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i

bb.jj:                                            ; preds = %bb.ji
  %i.bgn = load float, ptr %i.aug, align 4
  %i.bgo = fsub float %.0.i418.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bgp = fmul float %i.bgo, %i.bgn
  %i.bgq = fsub float %.055.i415.i.i.i.i.i.i.i, %i.auu
  %i.bgr = fsub float %.053.i417.i.i.i.i.i.i.i, %i.auu
  %i.bgs = fadd float %i.bgq, %i.bgr
  %i.bgt = fmul float %i.bgs, 5.000000e-01
  %i.bgu = fsub float 1.000000e+00, %i.bgt
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bgw = load float, ptr %i.bgv, align 4
  %i.bgx = call float @llvm.fmuladd.f32(float %i.bgp, float %i.bgu, float %i.bgw)
  store float %i.bgx, ptr %i.bgv, align 4
  br label %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i: ; preds = %bb.jj, %bb.ji, %bb.jh, %bb.jd
  %i.bgy = fcmp oeq float %i.avc, %i.aiz
  %i.bgz = fcmp ogt float %i.avc, %13
  %or.cond25.i.i.i.i.i.i = select i1 %i.bgy, i1 true, i1 %i.bgz
  %or.cond26.i.i.i.i.i.i = or i1 %i.aui, %or.cond25.i.i.i.i.i.i
  br i1 %or.cond26.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.jk

bb.jk:                                            ; preds = %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i
  br i1 %i.bft, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.bha = fsub float %i.aqh, %i.auu
  %i.bhb = fsub float %14, %i.avc
  %i.bhc = fmul float %i.bha, %i.bhb
  %i.bhd = fsub float %i.aiz, %i.avc
  %i.bhe = fdiv float %i.bhc, %i.bhd
  %i.bhf = fadd float %i.bhe, %i.auu
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.055.i422.i.i.i.i.i.i.i = phi float [ %i.bhf, %bb.jl ], [ %i.auu, %bb.jk ] ; 4 uses
  %.054.i423.i.i.i.i.i.i.i = phi float [ %14, %bb.jl ], [ %i.avc, %bb.jk ] ; 3 uses
  br i1 %22, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.bhg = fsub float %i.aqh, %.055.i422.i.i.i.i.i.i.i
  %i.bhh = fmul float %i.aun, %i.bhg
  %i.bhi = fsub float %i.aiz, %.054.i423.i.i.i.i.i.i.i
  %i.bhj = fdiv float %i.bhh, %i.bhi
  %i.bhk = fadd float %i.aqh, %i.bhj
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.053.i424.i.i.i.i.i.i.i = phi float [ %i.bhk, %bb.jn ], [ %i.aqh, %bb.jm ] ; 3 uses
  %.0.i425.i.i.i.i.i.i.i = phi float [ %13, %bb.jn ], [ %i.aiz, %bb.jm ] ; 2 uses
  %i.bhl = fcmp ugt float %.055.i422.i.i.i.i.i.i.i, %i.auu
  %i.bhm = fcmp ugt float %.053.i424.i.i.i.i.i.i.i, %i.auu
  %or.cond.i426.i.i.i.i.i.i.i = select i1 %i.bhl, i1 true, i1 %i.bhm
  br i1 %or.cond.i426.i.i.i.i.i.i.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bhn = load float, ptr %i.aug, align 4
  %i.bho = fsub float %.0.i425.i.i.i.i.i.i.i, %.054.i423.i.i.i.i.i.i.i
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bhq = load float, ptr %i.bhp, align 4
  %i.bhr = call float @llvm.fmuladd.f32(float %i.bhn, float %i.bho, float %i.bhq)
  store float %i.bhr, ptr %i.bhp, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.jq:                                            ; preds = %bb.jo
  %i.bhs = fcmp ult float %.055.i422.i.i.i.i.i.i.i, %i.auw
  %i.bht = fcmp ult float %.053.i424.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i427.i.i.i.i.i.i.i = select i1 %i.bhs, i1 true, i1 %i.bht
  br i1 %or.cond62.i427.i.i.i.i.i.i.i, label %bb.jr, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jq
  %i.bhu = load float, ptr %i.aug, align 4
  %i.bhv = fsub float %.0.i425.i.i.i.i.i.i.i, %.054.i423.i.i.i.i.i.i.i
  %i.bhw = fmul float %i.bhv, %i.bhu
  %i.bhx = fsub float %.055.i422.i.i.i.i.i.i.i, %i.auu
  %i.bhy = fsub float %.053.i424.i.i.i.i.i.i.i, %i.auu
  %i.bhz = fadd float %i.bhx, %i.bhy
  %i.bia = fmul float %i.bhz, 5.000000e-01
  %i.bib = fsub float 1.000000e+00, %i.bia
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bid = load float, ptr %i.bic, align 4
  %i.bie = call float @llvm.fmuladd.f32(float %i.bhw, float %i.bib, float %i.bid)
  store float %i.bie, ptr %i.bic, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.js:                                            ; preds = %bb.jc
  %i.bif = fcmp olt float %i.alm, %i.auw
  %or.cond343.i.i.i.i.i.i.i = and i1 %i.bif, %i.avg
  br i1 %or.cond343.i.i.i.i.i.i.i, label %bb.jt, label %bb.ki

bb.jt:                                            ; preds = %bb.js
  %i.big = fcmp oeq float %i.ave, %i.aiy
  %or.cond27.i.i.i.i.i.i = select i1 %i.big, i1 true, i1 %i.auh
  %i.bih = fcmp olt float %i.ave, %14             ; 2 uses
  %or.cond28.i.i.i.i.i.i = or i1 %i.bih, %or.cond27.i.i.i.i.i.i
  br i1 %or.cond28.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %shift727 = shufflevector <2 x float> %i.auz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop728 = fmul <2 x float> %15, %shift727
  %29 = extractelement <2 x float> %foldExtExtBinop728, i64 0
  %i.bii = fsub float %i.ave, %i.aiy
  %i.bij = fdiv float %29, %i.bii
  %i.bik = fadd float %i.alm, %i.bij
  %.055.i429.i.i.i.i.i.i.i = select i1 %i.aql, float %i.bik, float %i.alm ; 4 uses
  %i.bil = fcmp ogt float %i.ave, %13
  br i1 %i.bil, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.bim = fsub float %i.auw, %.055.i429.i.i.i.i.i.i.i
  %i.bin = fsub float %13, %i.ave
  %i.bio = fmul float %i.bin, %i.bim
  %i.bip = fsub float %i.ave, %.0301.i.i.i.i.i.i.i
  %i.biq = fdiv float %i.bio, %i.bip
  %i.bir = fadd float %i.biq, %i.auw
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.053.i431.i.i.i.i.i.i.i = phi float [ %i.bir, %bb.jv ], [ %i.auw, %bb.ju ] ; 3 uses
  %.0.i432.i.i.i.i.i.i.i = phi float [ %13, %bb.jv ], [ %i.ave, %bb.ju ] ; 2 uses
  %i.bis = fcmp ugt float %.055.i429.i.i.i.i.i.i.i, %i.auu
  %i.bit = fcmp ugt float %.053.i431.i.i.i.i.i.i.i, %i.auu
  %or.cond.i433.i.i.i.i.i.i.i = select i1 %i.bis, i1 true, i1 %i.bit
  br i1 %or.cond.i433.i.i.i.i.i.i.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.biu = load float, ptr %i.aug, align 4
  %i.biv = fsub float %.0.i432.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bix = load float, ptr %i.biw, align 4
  %i.biy = call float @llvm.fmuladd.f32(float %i.biu, float %i.biv, float %i.bix)
  store float %i.biy, ptr %i.biw, align 4
  br label %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i

bb.jy:                                            ; preds = %bb.jw
  %i.biz = fcmp ult float %.055.i429.i.i.i.i.i.i.i, %i.auw
  %i.bja = fcmp ult float %.053.i431.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i434.i.i.i.i.i.i.i = select i1 %i.biz, i1 true, i1 %i.bja
  br i1 %or.cond62.i434.i.i.i.i.i.i.i, label %bb.jz, label %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i

bb.jz:                                            ; preds = %bb.jy
  %i.bjb = load float, ptr %i.aug, align 4
  %i.bjc = fsub float %.0.i432.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bjd = fmul float %i.bjc, %i.bjb
  %i.bje = fsub float %.055.i429.i.i.i.i.i.i.i, %i.auu
  %i.bjf = fsub float %.053.i431.i.i.i.i.i.i.i, %i.auu
  %i.bjg = fadd float %i.bje, %i.bjf
  %i.bjh = fmul float %i.bjg, 5.000000e-01
  %i.bji = fsub float 1.000000e+00, %i.bjh
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bjk = load float, ptr %i.bjj, align 4
  %i.bjl = call float @llvm.fmuladd.f32(float %i.bjd, float %i.bji, float %i.bjk)
  store float %i.bjl, ptr %i.bjj, align 4
  br label %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i: ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt
  %i.bjm = fcmp oeq float %i.ave, %i.aiz
  %i.bjn = fcmp ogt float %i.ave, %13
  %or.cond29.i.i.i.i.i.i = select i1 %i.bjm, i1 true, i1 %i.bjn
  %or.cond30.i.i.i.i.i.i = or i1 %i.aui, %or.cond29.i.i.i.i.i.i
  br i1 %or.cond30.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.ka

bb.ka:                                            ; preds = %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i
  br i1 %i.bih, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.bjo = fsub float %i.aqh, %i.auw
  %i.bjp = fsub float %14, %i.ave
  %i.bjq = fmul float %i.bjo, %i.bjp
  %i.bjr = fsub float %i.aiz, %i.ave
  %i.bjs = fdiv float %i.bjq, %i.bjr
  %i.bjt = fadd float %i.bjs, %i.auw
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.055.i436.i.i.i.i.i.i.i = phi float [ %i.bjt, %bb.kb ], [ %i.auw, %bb.ka ] ; 4 uses
  %.054.i437.i.i.i.i.i.i.i = phi float [ %14, %bb.kb ], [ %i.ave, %bb.ka ] ; 3 uses
  br i1 %22, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.bju = fsub float %i.aqh, %.055.i436.i.i.i.i.i.i.i
  %i.bjv = fmul float %i.aun, %i.bju
  %i.bjw = fsub float %i.aiz, %.054.i437.i.i.i.i.i.i.i
  %i.bjx = fdiv float %i.bjv, %i.bjw
  %i.bjy = fadd float %i.aqh, %i.bjx
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.053.i438.i.i.i.i.i.i.i = phi float [ %i.bjy, %bb.kd ], [ %i.aqh, %bb.kc ] ; 3 uses
  %.0.i439.i.i.i.i.i.i.i = phi float [ %13, %bb.kd ], [ %i.aiz, %bb.kc ] ; 2 uses
  %i.bjz = fcmp ugt float %.055.i436.i.i.i.i.i.i.i, %i.auu
  %i.bka = fcmp ugt float %.053.i438.i.i.i.i.i.i.i, %i.auu
  %or.cond.i440.i.i.i.i.i.i.i = select i1 %i.bjz, i1 true, i1 %i.bka
  br i1 %or.cond.i440.i.i.i.i.i.i.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bkb = load float, ptr %i.aug, align 4
  %i.bkc = fsub float %.0.i439.i.i.i.i.i.i.i, %.054.i437.i.i.i.i.i.i.i
  %i.bkd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bke = load float, ptr %i.bkd, align 4
  %i.bkf = call float @llvm.fmuladd.f32(float %i.bkb, float %i.bkc, float %i.bke)
  store float %i.bkf, ptr %i.bkd, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kg:                                            ; preds = %bb.ke
  %i.bkg = fcmp ult float %.055.i436.i.i.i.i.i.i.i, %i.auw
  %i.bkh = fcmp ult float %.053.i438.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i441.i.i.i.i.i.i.i = select i1 %i.bkg, i1 true, i1 %i.bkh
  br i1 %or.cond62.i441.i.i.i.i.i.i.i, label %bb.kh, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kh:                                            ; preds = %bb.kg
  %i.bki = load float, ptr %i.aug, align 4
  %i.bkj = fsub float %.0.i439.i.i.i.i.i.i.i, %.054.i437.i.i.i.i.i.i.i
  %i.bkk = fmul float %i.bkj, %i.bki
  %i.bkl = fsub float %.055.i436.i.i.i.i.i.i.i, %i.auu
  %i.bkm = fsub float %.053.i438.i.i.i.i.i.i.i, %i.auu
  %i.bkn = fadd float %i.bkl, %i.bkm
  %i.bko = fmul float %i.bkn, 5.000000e-01
  %i.bkp = fsub float 1.000000e+00, %i.bko
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bkr = load float, ptr %i.bkq, align 4
  %i.bks = call float @llvm.fmuladd.f32(float %i.bkk, float %i.bkp, float %i.bkr)
  store float %i.bks, ptr %i.bkq, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ki:                                            ; preds = %bb.js
  %i.bkt = fcmp olt float %i.aqh, %i.auw
  %or.cond344.i.i.i.i.i.i.i = and i1 %i.bkt, %i.azf
  br i1 %or.cond344.i.i.i.i.i.i.i, label %bb.kj, label %bb.ky

bb.kj:                                            ; preds = %bb.ki
  %i.bku = fcmp oeq float %i.ave, %i.aiy
  %or.cond31.i.i.i.i.i.i = select i1 %i.bku, i1 true, i1 %i.auh
  %i.bkv = fcmp olt float %i.ave, %14             ; 2 uses
  %or.cond32.i.i.i.i.i.i = or i1 %i.bkv, %or.cond31.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %shift730 = shufflevector <2 x float> %i.auz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop731 = fmul <2 x float> %15, %shift730
  %30 = extractelement <2 x float> %foldExtExtBinop731, i64 0
  %i.bkw = fsub float %i.ave, %i.aiy
  %i.bkx = fdiv float %30, %i.bkw
  %i.bky = fadd float %i.alm, %i.bkx
  %.055.i443.i.i.i.i.i.i.i = select i1 %i.aql, float %i.bky, float %i.alm ; 4 uses
  %i.bkz = fcmp ogt float %i.ave, %13
  br i1 %i.bkz, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.bla = fsub float %i.auw, %.055.i443.i.i.i.i.i.i.i
  %i.blb = fsub float %13, %i.ave
  %i.blc = fmul float %i.blb, %i.bla
  %i.bld = fsub float %i.ave, %.0301.i.i.i.i.i.i.i
  %i.ble = fdiv float %i.blc, %i.bld
  %i.blf = fadd float %i.ble, %i.auw
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.053.i445.i.i.i.i.i.i.i = phi float [ %i.blf, %bb.kl ], [ %i.auw, %bb.kk ] ; 3 uses
  %.0.i446.i.i.i.i.i.i.i = phi float [ %13, %bb.kl ], [ %i.ave, %bb.kk ] ; 2 uses
  %i.blg = fcmp ugt float %.055.i443.i.i.i.i.i.i.i, %i.auu
  %i.blh = fcmp ugt float %.053.i445.i.i.i.i.i.i.i, %i.auu
  %or.cond.i447.i.i.i.i.i.i.i = select i1 %i.blg, i1 true, i1 %i.blh
  br i1 %or.cond.i447.i.i.i.i.i.i.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bli = load float, ptr %i.aug, align 4
  %i.blj = fsub float %.0.i446.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bll = load float, ptr %i.blk, align 4
  %i.blm = call float @llvm.fmuladd.f32(float %i.bli, float %i.blj, float %i.bll)
  store float %i.blm, ptr %i.blk, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

bb.ko:                                            ; preds = %bb.km
  %i.bln = fcmp ult float %.055.i443.i.i.i.i.i.i.i, %i.auw
  %i.blo = fcmp ult float %.053.i445.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i448.i.i.i.i.i.i.i = select i1 %i.bln, i1 true, i1 %i.blo
  br i1 %or.cond62.i448.i.i.i.i.i.i.i, label %bb.kp, label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

bb.kp:                                            ; preds = %bb.ko
  %i.blp = load float, ptr %i.aug, align 4
  %i.blq = fsub float %.0.i446.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.blr = fmul float %i.blq, %i.blp
  %i.bls = fsub float %.055.i443.i.i.i.i.i.i.i, %i.auu
  %i.blt = fsub float %.053.i445.i.i.i.i.i.i.i, %i.auu
  %i.blu = fadd float %i.bls, %i.blt
  %i.blv = fmul float %i.blu, 5.000000e-01
  %i.blw = fsub float 1.000000e+00, %i.blv
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bly = load float, ptr %i.blx, align 4
  %i.blz = call float @llvm.fmuladd.f32(float %i.blr, float %i.blw, float %i.bly)
  store float %i.blz, ptr %i.blx, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i: ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.kj
  %i.bma = fcmp oeq float %i.ave, %i.aiz
  %i.bmb = fcmp ogt float %i.ave, %13
  %or.cond33.i.i.i.i.i.i = select i1 %i.bma, i1 true, i1 %i.bmb
  %or.cond34.i.i.i.i.i.i = or i1 %i.aui, %or.cond33.i.i.i.i.i.i
  br i1 %or.cond34.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kq

bb.kq:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i
  br i1 %i.bkv, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bmc = fsub float %i.aqh, %i.auw
  %i.bmd = fsub float %14, %i.ave
  %i.bme = fmul float %i.bmc, %i.bmd
  %i.bmf = fsub float %i.aiz, %i.ave
  %i.bmg = fdiv float %i.bme, %i.bmf
  %i.bmh = fadd float %i.bmg, %i.auw
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.055.i450.i.i.i.i.i.i.i = phi float [ %i.bmh, %bb.kr ], [ %i.auw, %bb.kq ] ; 4 uses
  %.054.i451.i.i.i.i.i.i.i = phi float [ %14, %bb.kr ], [ %i.ave, %bb.kq ] ; 3 uses
  br i1 %22, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bmi = fsub float %i.aqh, %.055.i450.i.i.i.i.i.i.i
  %i.bmj = fmul float %i.aun, %i.bmi
  %i.bmk = fsub float %i.aiz, %.054.i451.i.i.i.i.i.i.i
  %i.bml = fdiv float %i.bmj, %i.bmk
  %i.bmm = fadd float %i.aqh, %i.bml
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bmm, %bb.kt ], [ %i.aqh, %bb.ks ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %13, %bb.kt ], [ %i.aiz, %bb.ks ] ; 2 uses
  %i.bmn = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.auu
  %i.bmo = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.auu
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bmn, i1 true, i1 %i.bmo
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bmp = load float, ptr %i.aug, align 4
  %i.bmq = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bms = load float, ptr %i.bmr, align 4
  %i.bmt = call float @llvm.fmuladd.f32(float %i.bmp, float %i.bmq, float %i.bms)
  store float %i.bmt, ptr %i.bmr, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.bmu = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.auw
  %i.bmv = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bmu, i1 true, i1 %i.bmv
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.kx, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  %i.bmw = load float, ptr %i.aug, align 4
  %i.bmx = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bmy = fmul float %i.bmx, %i.bmw
  %i.bmz = fsub float %.055.i450.i.i.i.i.i.i.i, %i.auu
  %i.bna = fsub float %.053.i452.i.i.i.i.i.i.i, %i.auu
  %i.bnb = fadd float %i.bmz, %i.bna
  %i.bnc = fmul float %i.bnb, 5.000000e-01
  %i.bnd = fsub float 1.000000e+00, %i.bnc
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnf = load float, ptr %i.bne, align 4
  %i.bng = call float @llvm.fmuladd.f32(float %i.bmy, float %i.bnd, float %i.bnf)
  store float %i.bng, ptr %i.bne, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %bb.ki
  br i1 %or.cond36.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bnh = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.auu
  %i.bni = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.auu
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.bnh, i1 true, i1 %i.bni
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bnj = load float, ptr %i.aug, align 4
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnl = load float, ptr %i.bnk, align 4
  %i.bnm = call float @llvm.fmuladd.f32(float %i.bnj, float %i.aus, float %i.bnl)
  store float %i.bnm, ptr %i.bnk, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.bnn = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.auw
  %i.bno = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.auw
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.bnn, i1 true, i1 %i.bno
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.lc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.bnp = load float, ptr %i.aug, align 4
  %i.bnq = fmul float %i.aus, %i.bnp
  %i.bnr = fsub float %.055.i457.i.i.i.i.i.i.i, %i.auu
  %i.bns = fsub float %.053.i459.i.i.i.i.i.i.i, %i.auu
  %i.bnt = fadd float %i.bnr, %i.bns
  %i.bnu = fmul float %i.bnt, 5.000000e-01
  %i.bnv = fsub float 1.000000e+00, %i.bnu
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnx = load float, ptr %i.bnw, align 4
  %i.bny = call float @llvm.fmuladd.f32(float %i.bnq, float %i.bnv, float %i.bnx)
  store float %i.bny, ptr %i.bnw, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.kh, %bb.kg, %bb.kf, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.jr, %bb.jq, %bb.jp, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jb, %bb.ja, %bb.iz, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.il, %bb.ik, %bb.ij, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hn, %bb.hm, %bb.hl, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gq

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gp, %._crit_edge.i.i.i.i.i.i.i, %bb.gl, %bb.gh, %bb.gg, %bb.gf, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fg, %bb.ff, %bb.fe, %bb.fc
  %i.bnz = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bnz, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aiw, label %.lr.ph52.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph52.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.boa = mul nuw nsw i32 %.07660.i.i.i.i.i.i, %i.zx
  br label %.lr.ph52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph52.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i:                             ; preds = %.lr.ph52.i.i.i.i.i.i, %.lr.ph52.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i ], [ 0, %.lr.ph52.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07751.i.i.i.i.i.i = phi float [ %i.bod, %.lr.ph52.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph52.i.i.i.preheader.i.i.i ]
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv.i.i.i.i.i.i
  %i.boc = load float, ptr %i.bob, align 4
  %i.bod = fadd float %.07751.i.i.i.i.i.i, %i.boc ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bof = load float, ptr %i.boe, align 4
  %i.bog = fadd float %i.bof, %i.bod
  %i.boh = call float @llvm.fabs.f32(float %i.bog)
  %i.boi = call float @llvm.fmuladd.f32(float %i.boh, float 2.550000e+02, float 5.000000e-01)
  %i.boj = fptosi float %i.boi to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.boj, i32 255)
  %i.bok = trunc nuw i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bol = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bom = add nsw i32 %i.boa, %i.bol
  %i.bon = sext i32 %i.bom to i64
  %i.boo = getelementptr inbounds i8, ptr %i.aaf, i64 %i.bon
  store i8 %i.bok, ptr %i.boo, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aih
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph55.i.i.i.i.i.i
  %i.bop = phi ptr [ %i.bou, %.lr.ph55.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.254.i.i.i.i.i.i = phi ptr [ %i.bot, %.lr.ph55.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 8 ; 2 uses
  %i.bor = load <2 x float>, ptr %i.boq, align 8
  %i.bos = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bor)
  store float %i.bos, ptr %i.boq, align 8
  %i.bot = load ptr, ptr %.254.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bou = load ptr, ptr %i.bot, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bou, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

._crit_edge56.i.i.i.i.i.i:                        ; preds = %.lr.ph55.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bov = add nsw i32 %.07561.i.i.i.i.i.i, 1
  %i.bow = add nuw nsw i32 %.07660.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bow, %i.aaa
  br i1 %exitcond61.not.i.i.i, label %._crit_edge65.i.i.i.i.i.i, label %bb.eo

._crit_edge65.i.i.i.i.i.i:                        ; preds = %._crit_edge56.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge65.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.box, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.box = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.box, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.ld, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agm) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.ace) #39
  call void @free(ptr noundef %i.aeb) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zx, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zx, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zx, %bb.dp ], [ %i.zx, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aaa, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aaa, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aaa, %bb.dp ], [ %i.aaa, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aaf, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aaf, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.boy = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.boy) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.le:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zn, 32
  br i1 %.not141, label %bb.np, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.boz = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %bb.lg, label %stbtt_GetCodepointSDF.exit

bb.lg:                                            ; preds = %bb.lf
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zo, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bpb = load i32, ptr %i.a, align 4            ; 4 uses
  %i.bpc = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bpd = icmp eq i32 %i.bpb, %i.bpc
  br i1 %i.bpd, label %stbtt_GetCodepointSDF.exit, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bpe = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bpf = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bpg = icmp eq i32 %i.bpe, %i.bpf
  br i1 %i.bpg, label %stbtt_GetCodepointSDF.exit, label %bb.li
end_hunk_0
begin_hunk_1_@stbtt__tesselate_cubic:bb.a
  store float %9, ptr %i.bv, align 4
  br label %stbtt__add_point.exit

stbtt__add_point.exit:                            ; preds = %bb.b, %bb.c
  %i.bw = load i32, ptr %1, align 4
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %stbtt__add_point.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #36 {
bb.a:
  %2 = alloca %struct.stbtt__edge, align 4        ; 8 uses
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.078 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 10 uses
  %.06977 = phi i32 [ %.170, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = lshr i32 %.06977, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4            ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4            ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ah = trunc nsw i64 %indvars.iv to i32
  %i.ai = sub nsw i32 %.06977, %i.ah              ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %.078, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %i.v, i32 noundef %i.ai)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.170 = phi i32 [ %i.ai, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.v, %bb.j ], [ %.078, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ak = icmp sgt i32 %.170, 12
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

declare ptr @LoadFileText(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare void @UnloadFileText(ptr noundef) local_unnamed_addr #8

declare ptr @GetDirectoryPath(ptr noundef) local_unnamed_addr #8

declare void @ImageResizeCanvas(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32) local_unnamed_addr #8

declare void @ImageDraw(ptr noundef, ptr noundef byval(%struct.Image) align 8, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32) local_unnamed_addr #8

declare void @GenImageColor(ptr dead_on_unwind writable sret(%struct.Image) align 8, i32 noundef, i32 noundef, i32) local_unnamed_addr #8

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn }
attributes #27 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { nounwind }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{!"branch_weights", i32 4, i32 12}
!7 = !{!"branch_weights", i32 8, i32 24}
!8 = !{!"branch_weights", i32 4, i32 28}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, i1 true, !"LoadFontEx"}
!12 = distinct !{!12, !11, !"LoadFontEx: argument 0"}
!13 = distinct !{!13, i1 true, !"LoadBMFont"}
!14 = distinct !{!14, !13, !"LoadBMFont: argument 0"}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !4, !5}
!19 = distinct !{!19, !4, !5}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !4}
!22 = !{!12}
!23 = !{!14}
!24 = !{!16}
!25 = !{!17}
!26 = distinct !{!26, !4, !5}
!27 = distinct !{!27, !5, !4}
!28 = distinct !{!28, !4, !5}
!29 = distinct !{!29, !5, !4}
!30 = distinct !{!30, !4, !5}
!31 = distinct !{!31, !5, !4}
!32 = distinct !{!32, !4, !5}
!33 = distinct !{!33, !4, !5}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4, !5}
!37 = distinct !{!37, !4, !5}
!38 = distinct !{!38, !3}
!39 = distinct !{!39, !4, !5}
!40 = distinct !{!40, !4, !5}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4, !5}
!45 = distinct !{!45, !4, !5}
!46 = distinct !{!46, !5, !4}
!47 = distinct !{!47, !4, !5}
!48 = distinct !{!48, !5, !4}
!49 = distinct !{!49, !58}
!50 = distinct !{!50, !3}
!51 = distinct !{!51, i1 false, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !4, !5}
!55 = distinct !{!55, !4, !5}
!56 = distinct !{!56, !3}
!57 = distinct !{!57, !4}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = !{!52}
!60 = !{!53}
!61 = distinct !{!61, !4, !5}
!62 = distinct !{!62, !5, !4}
!63 = distinct !{!63, !4, !5}
!64 = distinct !{!64, !4, !5}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4, !5}
!67 = distinct !{!67, !4, !5}
!68 = distinct !{!68, !3}
!69 = distinct !{!69, !4, !5}
!70 = distinct !{!70, !4, !5}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4, !5}
!73 = distinct !{!73, !4, !5}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !4}
!76 = distinct !{null}
!77 = distinct !{!77, !4, !5}
!78 = distinct !{!78, !5, !4}
!79 = distinct !{!79, !81}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
