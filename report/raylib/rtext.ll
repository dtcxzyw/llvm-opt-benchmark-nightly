Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %cmp.n629 = icmp eq i64 %n.vec621, %i.acd
  br i1 %cmp.n629, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.preheader:                     ; preds = %stbtt_FlattenCurves.exit.i.i.i.i, %middle.block628
  %indvars.iv.i24.i.i.i.i.ph = phi i64 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %n.vec621, %middle.block628 ]
  %.0873.i.i.i.i.i.ph = phi i32 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %i.agg, %middle.block628 ]
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i.preheader, %.lr.ph.i23.i.i.i.i
  %indvars.iv.i24.i.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i.i, %.lr.ph.i23.i.i.i.i ], [ %indvars.iv.i24.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ] ; 2 uses
  %.0873.i.i.i.i.i = phi i32 [ %i.agj, %.lr.ph.i23.i.i.i.i ], [ %.0873.i.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ]
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv.i24.i.i.i.i
  %i.agi = load i32, ptr %i.agh, align 4
  %i.agj = add nsw i32 %i.agi, %.0873.i.i.i.i.i   ; 2 uses
  %indvars.iv.next.i25.i.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i.i, %i.acd
  br i1 %exitcond.not.i26.i.i.i.i, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i, !llvm.loop !31

._crit_edge.i27.i.i.i.i:                          ; preds = %.lr.ph.i23.i.i.i.i, %middle.block628
  %.lcssa = phi i32 [ %i.agg, %middle.block628 ], [ %i.agj, %.lr.ph.i23.i.i.i.i ]
  %i.agk = add nsw i32 %.lcssa, 1
  %i.agl = sext i32 %i.agk to i64
  %i.agm = mul nsw i64 %i.agl, 20
  %i.agn = call noalias ptr @malloc(i64 noundef %i.agm) #42 ; 9 uses
  %i.ago = icmp eq ptr %i.agn, null
  br i1 %i.ago, label %stbtt__rasterize.exit.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %._crit_edge.i27.i.i.i.i, %._crit_edge10.i.i.i.i.i
  %indvars.iv27.i.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.08314.i.i.i.i.i = phi i32 [ %i.agt, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.18812.i.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %i.agp = sext i32 %.08314.i.i.i.i.i to i64
  %i.agq = getelementptr inbounds [8 x i8], ptr %i.aec, i64 %i.agp ; 4 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv27.i.i.i.i.i
  %i.ags = load i32, ptr %i.agr, align 4          ; 4 uses
  %i.agt = add nsw i32 %i.ags, %.08314.i.i.i.i.i
  %i.agu = icmp sgt i32 %i.ags, 0
  br i1 %i.agu, label %.lr.ph9.preheader.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i

.lr.ph9.preheader.i.i.i.i.i:                      ; preds = %.lr.ph15.i.i.i.i.i
  %i.agv = add nsw i32 %i.ags, -1                 ; 2 uses
  %wide.trip.count25.i.i.i.i.i = zext nneg i32 %i.ags to i64
  %.phi.trans.insert.i.i.i.i.i = zext nneg i32 %i.agv to i64
  %.phi.trans.insert32.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %.phi.trans.insert.i.i.i.i.i
  %.phi.trans.insert33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32.i.i.i.i.i, i64 4
  %.pre.i28.i.i.i.i = load float, ptr %.phi.trans.insert33.i.i.i.i.i, align 4
  br label %.lr.ph9.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i
  %i.agw = phi float [ %.pre.i28.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i ], [ %i.agz, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 2 uses
  %indvars.iv22.i.i.i.i.i = phi i64 [ 0, %.lr.ph9.preheader.i.i.i.i.i ], [ %indvars.iv.next23.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %.0856.i.i.i.i.i = phi i32 [ %i.agv, %.lr.ph9.preheader.i.i.i.i.i ], [ %.pre-phi.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ]
  %.25.i.i.i.i.i = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %indvars.iv22.i.i.i.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 4
  %i.agz = load float, ptr %i.agy, align 4        ; 3 uses
  %i.aha = fcmp oeq float %i.agw, %i.agz
  br i1 %i.aha, label %.lr.ph9._crit_edge.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph9.i.i.i.i.i
  %i.ahb = sext i32 %.25.i.i.i.i.i to i64
  %i.ahc = getelementptr inbounds [20 x i8], ptr %i.agn, i64 %i.ahb ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %i.ahe = fcmp ogt float %i.agw, %i.agz          ; 3 uses
  %spec.store.select.i.i.i.i.i = zext i1 %i.ahe to i32
  store i32 %spec.store.select.i.i.i.i.i, ptr %i.ahd, align 4
  %i.ahf = sext i32 %.0856.i.i.i.i.i to i64       ; 2 uses
  %i.ahg = select i1 %i.ahe, i64 %i.ahf, i64 %indvars.iv22.i.i.i.i.i
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %i.ahg
  %i.ahi = select i1 %i.ahe, i64 %indvars.iv22.i.i.i.i.i, i64 %i.ahf
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %i.ahi
  %i.ahk = load <2 x float>, ptr %i.ahh, align 4
  %i.ahl = load <2 x float>, ptr %i.ahj, align 4
  %i.ahm = shufflevector <2 x float> %i.ahk, <2 x float> %i.ahl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahm, <4 x float> %i.zg, <4 x float> zeroinitializer)
  store <4 x float> %i.ahn, ptr %i.ahc, align 4
  %i.aho = add nsw i32 %.25.i.i.i.i.i, 1
  br label %.lr.ph9._crit_edge.i.i.i.i.i

.lr.ph9._crit_edge.i.i.i.i.i:                     ; preds = %bb.eh, %.lr.ph9.i.i.i.i.i
  %.3.i.i.i.i.i = phi i32 [ %i.aho, %bb.eh ], [ %.25.i.i.i.i.i, %.lr.ph9.i.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i.i = trunc i64 %indvars.iv22.i.i.i.i.i to i32
  %indvars.iv.next23.i.i.i.i.i = add nuw nsw i64 %indvars.iv22.i.i.i.i.i, 1 ; 2 uses
  %exitcond26.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next23.i.i.i.i.i, %wide.trip.count25.i.i.i.i.i
  br i1 %exitcond26.not.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i, label %.lr.ph9.i.i.i.i.i

._crit_edge10.i.i.i.i.i:                          ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %.2.lcssa.i.i.i.i.i = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i.i, %i.acd
  br i1 %exitcond31.not.i.i.i.i.i, label %._crit_edge16.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

._crit_edge16.i.i.i.i.i:                          ; preds = %._crit_edge10.i.i.i.i.i
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.agn, i32 noundef %.2.lcssa.i.i.i.i.i)
  %i.ahp = icmp sgt i32 %.2.lcssa.i.i.i.i.i, 1
  br i1 %i.ahp, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %stbtt__sort_edges.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %._crit_edge16.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.el, %.lr.ph.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.el ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.ahq = getelementptr inbounds nuw [20 x i8], ptr %i.agn, i64 %indvars.iv.i.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4
  %i.ahr = load <2 x float>, ptr %i.ahq, align 4
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 12, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i.i, %bb.ej ] ; 4 uses
  %i.ahs = getelementptr [20 x i8], ptr %i.agn, i64 %indvars.iv31.i.i.i.i.i.i.i ; 3 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 -16
  %i.ahu = load float, ptr %i.aht, align 4
  %i.ahv = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i.i, %i.ahu
  br i1 %i.ahv, label %bb.ej, label %.thread.split.loop.exit.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ahw = getelementptr i8, ptr %i.ahs, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ahs, ptr noundef nonnull align 4 dereferenceable(20) %i.ahw, i64 20, i1 false)
  %indvars.iv.next32.i.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i.i, -1
  %i.ahx = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i.i, 1
  br i1 %i.ahx, label %bb.ei, label %.thread.i.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i.i:            ; preds = %bb.ei
  %i.ahy = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ej, %.thread.split.loop.exit.i.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ahy, %.thread.split.loop.exit.i.i.i.i.i.i.i ], [ 0, %bb.ej ] ; 2 uses
  %i.ahz = zext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i.i, %i.ahz
  br i1 %.not.i.i.i.i.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.aia = sext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %i.aib = getelementptr inbounds [20 x i8], ptr %i.agn, i64 %i.aia ; 2 uses
  store <2 x float> %i.ahr, ptr %i.aib, align 4
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
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
  %i.aic = icmp sgt i32 %i.zy, 64
  br i1 %i.aic, label %bb.em, label %bb.en

bb.em:                                            ; preds = %stbtt__sort_edges.exit.i.i.i.i.i
  %i.aid = shl nuw nsw i32 %i.zy, 1
  %i.aie = or disjoint i32 %i.aid, 1
  %i.aif = zext nneg i32 %i.aie to i64
  %i.aig = shl nuw nsw i64 %i.aif, 2
  %i.aih = call noalias ptr @malloc(i64 noundef %i.aig) #42
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %stbtt__sort_edges.exit.i.i.i.i.i
  %.080.i.i.i.i.i.i = phi ptr [ %i.aih, %bb.em ], [ %i.g, %stbtt__sort_edges.exit.i.i.i.i.i ] ; 43 uses
  %i.aii = sext i32 %i.zy to i64                  ; 3 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.aii ; 9 uses
  %i.aik = sitofp i32 %i.zz to float
  %i.ail = fadd float %i.aik, 1.000000e+00
  %i.aim = sext i32 %.2.lcssa.i.i.i.i.i to i64
  %i.ain = getelementptr inbounds [20 x i8], ptr %i.agn, i64 %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  store float %i.ail, ptr %i.aio, align 4
  %i.aip = icmp sgt i32 %i.aab, 0
  br i1 %i.aip, label %.lr.ph34.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i

.lr.ph34.i.i.i.i.i.i:                             ; preds = %bb.en
  %i.aiq = sitofp i32 %i.zx to float
  %i.air = icmp ne i32 %i.aaa, 0
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  %i.ait = shl nsw i64 %i.aii, 2
  %i.aiu = add nsw i32 %i.zy, 1
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = shl nsw i64 %i.aiv, 2
  %i.aix = icmp sgt i32 %i.zy, 0                  ; 2 uses
  %i.aiy = sitofp i32 %i.zy to float              ; 3 uses
  %wide.trip.count.i.i92.i.i.i.i.i = zext nneg i32 %i.zy to i64
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge26.i.i.i.i.i.i, %.lr.ph34.i.i.i.i.i.i
  %.0..i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.032.i.i.i.i.i.i = phi ptr [ %i.agn, %.lr.ph34.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 3 uses
  %.07531.i.i.i.i.i.i = phi i32 [ %i.aaa, %.lr.ph34.i.i.i.i.i.i ], [ %i.bso, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.07630.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph34.i.i.i.i.i.i ], [ %i.bsp, %._crit_edge26.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.029.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.028.i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.027.i.i.i.i.i.i = phi ptr [ null, %.lr.ph34.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge26.i.i.i.i.i.i ] ; 2 uses
  %i.aiz = sitofp i32 %.07531.i.i.i.i.i.i to float ; 66 uses
  %i.aja = fadd float %i.aiz, 1.000000e+00        ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i.i, i8 0, i64 %i.ait, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aij, i8 0, i64 %i.aiw, i1 false)
  %.not908.i.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i.i, label %.preheader7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader7.i.i.i.i.i.i:                          ; preds = %bb.eq, %bb.eo
  %.sroa.7.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.028.i.i.i.i.i.i, %bb.eo ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4        ; 2 uses
  %i.ajd = fcmp ugt float %i.ajc, %i.aja
  br i1 %i.ajd, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i.i

.lr.ph15.i.i.i.i.i.i:                             ; preds = %.preheader7.i.i.i.i.i.i
  %i.aje = icmp eq i32 %.07630.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.air, %i.aje
  br label %bb.er

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.eo, %bb.eq
  %i.ajf = phi ptr [ %i.ajl, %bb.eq ], [ %.0..i.i.i.i.i.i, %bb.eo ] ; 6 uses
  %.07810.i.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i.i, %bb.eq ], [ %i.f, %bb.eo ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ], [ %.sroa.7.028.i.i.i.i.i.i, %bb.eo ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 28
  %i.ajh = load float, ptr %i.ajg, align 4
  %i.aji = fcmp ugt float %i.ajh, %i.aiz
  br i1 %i.aji, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ajj = load ptr, ptr %i.ajf, align 8
  store ptr %i.ajj, ptr %.07810.i.i.i.i.i.i, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajf, i64 20
  store float 0.000000e+00, ptr %i.ajk, align 4
  store ptr %.sroa.7.19.i.i.i.i.i.i, ptr %i.ajf, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ajf, %bb.ep ] ; 2 uses
  %.179.i.i.i.i.i.i = phi ptr [ %i.ajf, %.lr.ph.i.i.i.i.i.i ], [ %.07810.i.i.i.i.i.i, %bb.ep ] ; 2 uses
  %i.ajl = load ptr, ptr %.179.i.i.i.i.i.i, align 8 ; 2 uses
  %.not90.i.i.i.i.i.i = icmp eq ptr %i.ajl, null
  br i1 %.not90.i.i.i.i.i.i, label %.preheader7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.er:                                            ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i
  %i.ajm = phi float [ %i.ajc, %.lr.ph15.i.i.i.i.i.i ], [ %i.alf, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ajn = phi ptr [ %i.ajb, %.lr.ph15.i.i.i.i.i.i ], [ %i.ale, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.114.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %i.ald, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %.sroa.11.113.i.i.i.i.i.i = phi i32 [ %.sroa.11.029.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i.i = phi ptr [ %.sroa.0.027.i.i.i.i.i.i, %.lr.ph15.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 5 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.ajp = load float, ptr %i.ajo, align 4        ; 3 uses
  %i.ajq = fcmp une float %i.ajm, %i.ajp
  br i1 %i.ajq, label %bb.es, label %stbtt__new_active.exit.thread.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajr = load ptr, ptr %.sroa.7.312.i.i.i.i.i.i, align 8
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.ajs = icmp eq i32 %.sroa.11.113.i.i.i.i.i.i, 0
  br i1 %i.ajs, label %bb.ev, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.eu
  %i.ajt = add nsw i32 %.sroa.11.113.i.i.i.i.i.i, -1
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aju = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #42 ; 3 uses
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %stbtt__new_active.exit.thread.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ev
  store ptr %.sroa.0.111.i.i.i.i.i.i, ptr %i.aju, align 8
  %.pre41.pre.i.i.i.i.i.i = load float, ptr %i.ajo, align 4
  %.pre42.pre.i.i.i.i.i.i = load float, ptr %i.ajn, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.pre42.i.i.i.i.i.i = phi float [ %.pre42.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajm, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.pre41.i.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajp, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i.i = phi ptr [ %i.aju, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajw = phi i32 [ 799, %.thread.i.i.i.i.i.i.i.i ], [ %i.ajt, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i.i, i64 8
  %i.ajy = zext nneg i32 %i.ajw to i64
  %i.ajz = shl nuw nsw i64 %i.ajy, 5
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.ajz
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.et
  %i.akb = phi float [ %.pre42.i.i.i.i.i.i, %bb.ew ], [ %i.ajm, %bb.et ]
  %i.akc = phi float [ %.pre41.i.i.i.i.i.i, %bb.ew ], [ %i.ajp, %bb.et ]
  %.sroa.0.3.i.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i.i, %bb.ew ], [ %.sroa.0.111.i.i.i.i.i.i, %bb.et ]
  %.sroa.7.4.i.i.i.i.i.i = phi ptr [ null, %bb.ew ], [ %i.ajr, %bb.et ]
  %.sroa.11.2.i.i.i.i.i.i = phi i32 [ %i.ajw, %bb.ew ], [ %.sroa.11.113.i.i.i.i.i.i, %bb.et ]
  %.1.i.ph.i.i.i.i.i.i.i = phi ptr [ %i.aka, %bb.ew ], [ %.sroa.7.312.i.i.i.i.i.i, %bb.et ] ; 9 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 8
  %i.ake = load float, ptr %i.akd, align 4
  %i.akf = load float, ptr %.114.i.i.i.i.i.i, align 4
  %i.akg = fsub float %i.ake, %i.akf
  %i.akh = fsub float %i.akc, %i.akb
  %i.aki = fdiv float %i.akg, %i.akh              ; 4 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 12
  store float %i.aki, ptr %i.akj, align 4
  %i.akk = fcmp une float %i.aki, 0.000000e+00
  %i.akl = fdiv float 1.000000e+00, %i.aki
  %i.akm = select i1 %i.akk, float %i.akl, float 0.000000e+00
  %i.akn = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 16
  store float %i.akm, ptr %i.akn, align 8
  %i.ako = load float, ptr %.114.i.i.i.i.i.i, align 4
  %i.akp = load float, ptr %i.ajn, align 4
  %i.akq = fsub float %i.aiz, %i.akp
  %i.akr = call float @llvm.fmuladd.f32(float %i.aki, float %i.akq, float %i.ako)
  %i.aks = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 8
  %i.akt = fsub float %i.akr, %i.aiq
  store float %i.akt, ptr %i.aks, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 16
  %i.akv = load i32, ptr %i.aku, align 4
  %.not28.i.i.i.i.i.i.i = icmp eq i32 %i.akv, 0
  %i.akw = select i1 %.not28.i.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.akx = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 20
  store float %i.akw, ptr %i.akx, align 4
  %i.aky = load float, ptr %i.ajn, align 4
  %i.akz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 24
  store float %i.aky, ptr %i.akz, align 8
  %i.ala = load float, ptr %i.ajo, align 4        ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.ala, ptr %i.alb, align 4
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  %i.alc = fcmp olt float %i.ala, %i.aiz
  %or.cond135.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.alc, i1 false
  br i1 %or.cond135.i.i.i.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store float %i.aiz, ptr %i.alb, align 4
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i.i, align 8
  store ptr %.1.i.ph.i.i.i.i.i.i.i, ptr %i.f, align 8
  br label %stbtt__new_active.exit.thread.i.i.i.i.i.i

stbtt__new_active.exit.thread.i.i.i.i.i.i:        ; preds = %bb.ez, %bb.ev, %bb.er
  %.sroa.0.5.i.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i.i, %bb.er ], [ %.sroa.0.3.i.i.i.i.i.i, %bb.ez ], [ %.sroa.0.111.i.i.i.i.i.i, %bb.ev ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i.i, %bb.er ], [ %.sroa.7.4.i.i.i.i.i.i, %bb.ez ], [ null, %bb.ev ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i.i, %bb.er ], [ %.sroa.11.2.i.i.i.i.i.i, %bb.ez ], [ 0, %bb.ev ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4        ; 2 uses
  %i.alg = fcmp ugt float %i.alf, %i.aja
  br i1 %i.alg, label %._crit_edge.i.i.i.i.i.i, label %bb.er

._crit_edge.i.i.i.i.i.i:                          ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.027.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.11.029.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.preheader7.i.i.i.i.i.i ], [ %i.ald, %stbtt__new_active.exit.thread.i.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 4 uses
  %.not91.i.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.alh = fcmp oeq float %i.aja, %i.aiz          ; 3 uses
  %i.ali = fsub float %i.aja, %i.aiz              ; 4 uses
  %i.alj = insertelement <2 x float> poison, float %i.aiz, i64 0
  %i.alk = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %bb.fa
  %.0293468.i.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %bb.fa ], [ %i.brs, %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i ] ; 19 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 8
  %i.alm = load <2 x float>, ptr %i.all, align 8  ; 10 uses
  %i.aln = extractelement <2 x float> %i.alm, i64 0 ; 40 uses
  %i.alo = extractelement <2 x float> %i.alm, i64 1 ; 2 uses
  %i.alp = fcmp oeq float %i.alo, 0.000000e+00
  br i1 %i.alp, label %bb.fc, label %bb.gk

bb.fc:                                            ; preds = %bb.fb
  %i.alq = fcmp olt float %i.aln, %i.aiy
  br i1 %i.alq, label %bb.fd, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.alr = fcmp ult float %i.aln, 0.000000e+00
  br i1 %i.alr, label %bb.fz, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.als = fptosi float %i.aln to i32             ; 6 uses
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.alt = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.alu = load float, ptr %i.alt, align 4        ; 4 uses
  %i.alv = fcmp olt float %i.alu, %i.aiz
  br i1 %i.alv, label %bb.fp, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alw = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.alx = load float, ptr %i.alw, align 8        ; 4 uses
  %i.aly = fcmp olt float %i.aja, %i.alx
  br i1 %i.aly, label %bb.fp, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alz = fcmp ogt float %i.alx, %i.aiz
  br i1 %i.alz, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %foldExtExtBinop = fsub <2 x float> %i.alm, %i.alm
  %i.ama = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.amb = fsub float %i.alx, %i.aiz
  %i.amc = fmul float %i.ama, %i.amb
  %i.amd = fdiv float %i.amc, %i.ali
  %i.ame = fadd float %i.aln, %i.amd
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.055.i.i.i.i.i.i.i.i = phi float [ %i.ame, %bb.fi ], [ %i.aln, %bb.fh ] ; 4 uses
  %.054.i.i.i.i.i.i.i.i = phi float [ %i.alx, %bb.fi ], [ %i.aiz, %bb.fh ] ; 3 uses
  %i.amf = fcmp ogt float %i.aja, %i.alu
  br i1 %i.amf, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.amg = fsub float %i.aln, %.055.i.i.i.i.i.i.i.i
  %i.amh = fsub float %i.alu, %i.aja
  %i.ami = fmul float %i.amh, %i.amg
  %i.amj = fsub float %i.aja, %.054.i.i.i.i.i.i.i.i
  %i.amk = fdiv float %i.ami, %i.amj
  %i.aml = fadd float %i.aln, %i.amk
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.053.i.i.i.i.i.i.i.i = phi float [ %i.aml, %bb.fk ], [ %i.aln, %bb.fj ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i = phi float [ %i.alu, %bb.fk ], [ %i.aja, %bb.fj ] ; 2 uses
  %i.amm = sitofp i32 %i.als to float             ; 4 uses
  %i.amn = fcmp ugt float %.055.i.i.i.i.i.i.i.i, %i.amm
  %i.amo = fcmp ugt float %.053.i.i.i.i.i.i.i.i, %i.amm
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.amn, i1 true, i1 %i.amo
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.amp = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.amq = load float, ptr %i.amp, align 4
  %i.amr = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %10 = sext i32 %i.als to i64
  %i.ams = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %10 ; 2 uses
  %i.amt = load float, ptr %i.ams, align 4
  %i.amu = call float @llvm.fmuladd.f32(float %i.amq, float %i.amr, float %i.amt)
  store float %i.amu, ptr %i.ams, align 4
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  %i.amv = add nsw i32 %i.als, 1
  %i.amw = sitofp i32 %i.amv to float             ; 2 uses
  %i.amx = fcmp ult float %.055.i.i.i.i.i.i.i.i, %i.amw
  %i.amy = fcmp ult float %.053.i.i.i.i.i.i.i.i, %i.amw
  %or.cond62.i.i.i.i.i.i.i.i = select i1 %i.amx, i1 true, i1 %i.amy
  br i1 %or.cond62.i.i.i.i.i.i.i.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.amz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.ana = load float, ptr %i.amz, align 4
  %i.anb = fsub float %.0.i.i.i.i.i.i.i.i, %.054.i.i.i.i.i.i.i.i
  %i.anc = fmul float %i.anb, %i.ana
  %i.and = fsub float %.055.i.i.i.i.i.i.i.i, %i.amm
  %i.ane = fsub float %.053.i.i.i.i.i.i.i.i, %i.amm
  %i.anf = fadd float %i.and, %i.ane
  %i.ang = fmul float %i.anf, 5.000000e-01
  %i.anh = fsub float 1.000000e+00, %i.ang
  %11 = sext i32 %i.als to i64
  %i.ani = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %11 ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4
  %i.ank = call float @llvm.fmuladd.f32(float %i.anc, float %i.anh, float %i.anj)
  store float %i.ank, ptr %i.ani, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fg, %bb.ff
  %i.anl = add nsw i32 %i.als, 1                  ; 3 uses
  %i.anm = load float, ptr %i.alt, align 4        ; 4 uses
  %i.ann = fcmp olt float %i.anm, %i.aiz
  br i1 %i.ann, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ano = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.anp = load float, ptr %i.ano, align 8        ; 4 uses
  %i.anq = fcmp olt float %i.aja, %i.anp
  br i1 %i.anq, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.anr = fcmp ogt float %i.anp, %i.aiz
  br i1 %i.anr, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %foldExtExtBinop729 = fsub <2 x float> %i.alm, %i.alm
  %i.ans = extractelement <2 x float> %foldExtExtBinop729, i64 0
  %i.ant = fsub float %i.anp, %i.aiz
  %i.anu = fmul float %i.ans, %i.ant
  %i.anv = fdiv float %i.anu, %i.ali
  %i.anw = fadd float %i.aln, %i.anv
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.055.i345.i.i.i.i.i.i.i = phi float [ %i.anw, %bb.fs ], [ %i.aln, %bb.fr ] ; 4 uses
  %.054.i346.i.i.i.i.i.i.i = phi float [ %i.anp, %bb.fs ], [ %i.aiz, %bb.fr ] ; 3 uses
  %i.anx = fcmp ogt float %i.aja, %i.anm
  br i1 %i.anx, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.any = fsub float %i.aln, %.055.i345.i.i.i.i.i.i.i
  %i.anz = fsub float %i.anm, %i.aja
  %i.aoa = fmul float %i.anz, %i.any
  %i.aob = fsub float %i.aja, %.054.i346.i.i.i.i.i.i.i
  %i.aoc = fdiv float %i.aoa, %i.aob
  %i.aod = fadd float %i.aln, %i.aoc
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.053.i347.i.i.i.i.i.i.i = phi float [ %i.aod, %bb.fu ], [ %i.aln, %bb.ft ] ; 3 uses
  %.0.i348.i.i.i.i.i.i.i = phi float [ %i.anm, %bb.fu ], [ %i.aja, %bb.ft ] ; 2 uses
  %i.aoe = sitofp i32 %i.anl to float             ; 4 uses
  %i.aof = fcmp ugt float %.055.i345.i.i.i.i.i.i.i, %i.aoe
  %i.aog = fcmp ugt float %.053.i347.i.i.i.i.i.i.i, %i.aoe
  %or.cond.i349.i.i.i.i.i.i.i = select i1 %i.aof, i1 true, i1 %i.aog
  br i1 %or.cond.i349.i.i.i.i.i.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aoi = load float, ptr %i.aoh, align 4
  %i.aoj = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %12 = sext i32 %i.anl to i64
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.aij, i64 %12 ; 2 uses
  %i.aol = load float, ptr %i.aok, align 4
  %i.aom = call float @llvm.fmuladd.f32(float %i.aoi, float %i.aoj, float %i.aol)
  store float %i.aom, ptr %i.aok, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.aon = add nsw i32 %i.als, 2
  %i.aoo = sitofp i32 %i.aon to float             ; 2 uses
  %i.aop = fcmp ult float %.055.i345.i.i.i.i.i.i.i, %i.aoo
  %i.aoq = fcmp ult float %.053.i347.i.i.i.i.i.i.i, %i.aoo
  %or.cond62.i350.i.i.i.i.i.i.i = select i1 %i.aop, i1 true, i1 %i.aoq
  br i1 %or.cond62.i350.i.i.i.i.i.i.i, label %bb.fy, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.aor = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aos = load float, ptr %i.aor, align 4
  %i.aot = fsub float %.0.i348.i.i.i.i.i.i.i, %.054.i346.i.i.i.i.i.i.i
  %i.aou = fmul float %i.aot, %i.aos
  %i.aov = fsub float %.055.i345.i.i.i.i.i.i.i, %i.aoe
  %i.aow = fsub float %.053.i347.i.i.i.i.i.i.i, %i.aoe
  %i.aox = fadd float %i.aov, %i.aow
  %i.aoy = fmul float %i.aox, 5.000000e-01
  %i.aoz = fsub float 1.000000e+00, %i.aoy
  %13 = sext i32 %i.anl to i64
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.aij, i64 %13 ; 2 uses
  %i.apb = load float, ptr %i.apa, align 4
  %i.apc = call float @llvm.fmuladd.f32(float %i.aou, float %i.aoz, float %i.apb)
  store float %i.apc, ptr %i.apa, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fd
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.apd = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28
  %i.ape = load float, ptr %i.apd, align 4        ; 4 uses
  %i.apf = fcmp olt float %i.ape, %i.aiz
  br i1 %i.apf, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.apg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24
  %i.aph = load float, ptr %i.apg, align 8        ; 4 uses
  %i.api = fcmp olt float %i.aja, %i.aph
  br i1 %i.api, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.apj = fcmp ogt float %i.aph, %i.aiz
  br i1 %i.apj, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %foldExtExtBinop731 = fsub <2 x float> %i.alm, %i.alm
  %i.apk = extractelement <2 x float> %foldExtExtBinop731, i64 0
  %i.apl = fsub float %i.aph, %i.aiz
  %i.apm = fmul float %i.apk, %i.apl
  %i.apn = fdiv float %i.apm, %i.ali
  %i.apo = fadd float %i.aln, %i.apn
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.055.i352.i.i.i.i.i.i.i = phi float [ %i.apo, %bb.gd ], [ %i.aln, %bb.gc ] ; 4 uses
  %.054.i353.i.i.i.i.i.i.i = phi float [ %i.aph, %bb.gd ], [ %i.aiz, %bb.gc ] ; 3 uses
  %i.app = fcmp ogt float %i.aja, %i.ape
  br i1 %i.app, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.apq = fsub float %i.aln, %.055.i352.i.i.i.i.i.i.i
  %i.apr = fsub float %i.ape, %i.aja
  %i.aps = fmul float %i.apr, %i.apq
  %i.apt = fsub float %i.aja, %.054.i353.i.i.i.i.i.i.i
  %i.apu = fdiv float %i.aps, %i.apt
  %i.apv = fadd float %i.aln, %i.apu
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.053.i354.i.i.i.i.i.i.i = phi float [ %i.apv, %bb.gf ], [ %i.aln, %bb.ge ] ; 3 uses
  %.0.i355.i.i.i.i.i.i.i = phi float [ %i.ape, %bb.gf ], [ %i.aja, %bb.ge ] ; 2 uses
  %i.apw = fcmp ugt float %.055.i352.i.i.i.i.i.i.i, 0.000000e+00
  %i.apx = fcmp ugt float %.053.i354.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i.i.i.i.i = select i1 %i.apw, i1 true, i1 %i.apx
  br i1 %or.cond.i356.i.i.i.i.i.i.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.apy = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.apz = load float, ptr %i.apy, align 4
  %i.aqa = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.aqb = load float, ptr %i.aij, align 4
  %i.aqc = call float @llvm.fmuladd.f32(float %i.apz, float %i.aqa, float %i.aqb)
  store float %i.aqc, ptr %i.aij, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gg
  %i.aqd = fcmp ult float %.055.i352.i.i.i.i.i.i.i, 1.000000e+00
  %i.aqe = fcmp ult float %.053.i354.i.i.i.i.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i.i.i.i.i = select i1 %i.aqd, i1 true, i1 %i.aqe
  br i1 %or.cond62.i357.i.i.i.i.i.i.i, label %bb.gj, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.aqf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.aqg = load float, ptr %i.aqf, align 4
  %i.aqh = fsub float %.0.i355.i.i.i.i.i.i.i, %.054.i353.i.i.i.i.i.i.i
  %i.aqi = fmul float %i.aqh, %i.aqg
  %i.aqj = fadd float %.055.i352.i.i.i.i.i.i.i, %.053.i354.i.i.i.i.i.i.i
  %i.aqk = fmul float %i.aqj, 5.000000e-01
  %i.aql = fsub float 1.000000e+00, %i.aqk
  %i.aqm = load float, ptr %i.aij, align 4
  %i.aqn = call float @llvm.fmuladd.f32(float %i.aqi, float %i.aql, float %i.aqm)
  store float %i.aqn, ptr %i.aij, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %bb.fb
  %i.aqo = fadd float %i.alo, %i.aln              ; 34 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 16
  %i.aqq = load float, ptr %i.aqp, align 8        ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.aqt = load <2 x float>, ptr %i.aqr, align 8  ; 3 uses
  %i.aqu = extractelement <2 x float> %i.aqt, i64 0 ; 2 uses
  %i.aqv = fcmp ogt float %i.aqu, %i.aiz          ; 2 uses
  %i.aqw = fsub <2 x float> %i.aqt, %i.alk
  %i.aqx = shufflevector <2 x float> %i.alm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aqy = shufflevector <2 x float> %i.alm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqx, <2 x float> %i.aqw, <2 x float> %i.aqy) ; 2 uses
  %i.ara = extractelement <2 x float> %i.aqz, i64 0
  %.0305.i.i.i.i.i.i.i = select i1 %i.aqv, float %i.ara, float %i.aln ; 7 uses
  %.0301.i.i.i.i.i.i.i = select i1 %i.aqv, float %i.aqu, float %i.aiz ; 3 uses
  %i.arb = extractelement <2 x float> %i.aqt, i64 1 ; 2 uses
  %i.arc = fcmp olt float %i.arb, %i.aja          ; 2 uses
  %i.ard = extractelement <2 x float> %i.aqz, i64 1
  %.0303.i.i.i.i.i.i.i = select i1 %i.arc, float %i.ard, float %i.aqo ; 7 uses
  %.0299.i.i.i.i.i.i.i = select i1 %i.arc, float %i.arb, float %i.aja ; 3 uses
  %i.are = fcmp oge float %.0305.i.i.i.i.i.i.i, 0.000000e+00
  %i.arf = fcmp oge float %.0303.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.are, i1 %i.arf, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gl, label %bb.gr

bb.gl:                                            ; preds = %bb.gk
  %i.arg = fcmp olt float %.0305.i.i.i.i.i.i.i, %i.aiy
  %i.arh = fcmp olt float %.0303.i.i.i.i.i.i.i, %i.aiy
  %or.cond338.i.i.i.i.i.i.i = select i1 %i.arg, i1 %i.arh, i1 false
  br i1 %or.cond338.i.i.i.i.i.i.i, label %bb.gm, label %bb.gr

bb.gm:                                            ; preds = %bb.gl
  %i.ari = fptosi float %.0305.i.i.i.i.i.i.i to i32 ; 5 uses
  %i.arj = fptosi float %.0303.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.ark = icmp eq i32 %i.ari, %i.arj
  br i1 %i.ark, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.arl = fsub float %.0299.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.arm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.arn = load float, ptr %i.arm, align 4
  %i.aro = fmul float %i.arl, %i.arn              ; 2 uses
  %i.arp = sitofp i32 %i.ari to float
  %i.arq = fadd float %i.arp, 1.000000e+00        ; 2 uses
  %i.arr = fsub float %i.arq, %.0305.i.i.i.i.i.i.i
  %i.ars = fsub float %i.arq, %.0303.i.i.i.i.i.i.i
  %i.art = fadd float %i.arr, %i.ars
  %i.aru = fmul float %i.art, 5.000000e-01
  %i.arv = fmul float %i.aru, %i.aro
  %14 = sext i32 %i.ari to i64                    ; 2 uses
  %i.arw = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %14 ; 2 uses
  %i.arx = load float, ptr %i.arw, align 4
  %i.ary = fadd float %i.arx, %i.arv
  store float %i.ary, ptr %i.arw, align 4
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.ais, i64 %14 ; 2 uses
  %i.asa = load float, ptr %i.arz, align 4
  %i.asb = fadd float %i.aro, %i.asa
  store float %i.asb, ptr %i.arz, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gm
  %i.asc = fcmp ogt float %.0305.i.i.i.i.i.i.i, %.0303.i.i.i.i.i.i.i
  br i1 %i.asc, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.asd = fsub float %i.aiz, %.0301.i.i.i.i.i.i.i
  %i.ase = fadd float %i.aja, %i.asd
  %i.asf = fsub float %i.aiz, %.0299.i.i.i.i.i.i.i
  %i.asg = fadd float %i.aja, %i.asf
  %i.ash = fneg float %i.aqq
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.pre-phi475.i.i.i.i.i.i.i = phi i32 [ %i.ari, %bb.gp ], [ %i.arj, %bb.go ] ; 7 uses
  %.pre-phi.i.i.i.i.i.i.i = phi i32 [ %i.arj, %bb.gp ], [ %i.ari, %bb.go ] ; 4 uses
  %.0307.i.i.i.i.i.i.i = phi float [ %i.aqo, %bb.gp ], [ %i.aln, %bb.go ]
  %.1306.i.i.i.i.i.i.i = phi float [ %.0303.i.i.i.i.i.i.i, %bb.gp ], [ %.0305.i.i.i.i.i.i.i, %bb.go ]
  %.1304.i.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i.i, %bb.gp ], [ %.0303.i.i.i.i.i.i.i, %bb.go ]
  %.1302.i.i.i.i.i.i.i = phi float [ %i.asg, %bb.gp ], [ %.0301.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %.1300.i.i.i.i.i.i.i = phi float [ %i.ase, %bb.gp ], [ %.0299.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %.0298.i.i.i.i.i.i.i = phi float [ %i.ash, %bb.gp ], [ %i.aqq, %bb.go ] ; 2 uses
  %i.asi = add nsw i32 %.pre-phi.i.i.i.i.i.i.i, 1 ; 3 uses
  %15 = insertelement <2 x i32> poison, i32 %.pre-phi475.i.i.i.i.i.i.i, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.asi, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x float>       ; 3 uses
  %18 = insertelement <2 x float> poison, float %.0307.i.i.i.i.i.i.i, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fsub <2 x float> %17, %19
  %21 = insertelement <2 x float> poison, float %.0298.i.i.i.i.i.i.i, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %20, <2 x float> %i.alk) ; 2 uses
  %24 = extractelement <2 x float> %23, i64 1     ; 2 uses
  %i.asj = fcmp ogt float %24, %i.aja
  %.0296.i.i.i.i.i.i.i = select i1 %i.asj, float %i.aja, float %24 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20
  %i.asl = load float, ptr %i.ask, align 4        ; 4 uses
  %i.asm = fsub float %.0296.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.asn = fmul float %i.asl, %i.asm              ; 5 uses
  %25 = extractelement <2 x float> %17, i64 1
  %i.aso = fsub nnan float %25, %.1306.i.i.i.i.i.i.i
  %i.asp = fmul float %i.aso, %i.asn
  %i.asq = fmul float %i.asp, 5.000000e-01
  %26 = sext i32 %.pre-phi.i.i.i.i.i.i.i to i64   ; 3 uses
  %i.asr = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %26 ; 2 uses
  %i.ass = load float, ptr %i.asr, align 4
  %i.ast = fadd float %i.ass, %i.asq
  store float %i.ast, ptr %i.asr, align 4
  %27 = extractelement <2 x float> %23, i64 0     ; 2 uses
  %i.asu = fcmp ogt float %27, %i.aja             ; 2 uses
  %i.asv = fsub float %i.aja, %.0296.i.i.i.i.i.i.i
  %i.asw = sub nsw i32 %.pre-phi475.i.i.i.i.i.i.i, %i.asi
  %i.asx = sitofp i32 %i.asw to float
  %i.asy = fdiv float %i.asv, %i.asx
  %.1.i.i.i.i.i.i.i = select i1 %i.asu, float %i.asy, float %.0298.i.i.i.i.i.i.i
  %.0295.i.i.i.i.i.i.i = select i1 %i.asu, float %i.aja, float %27
  %i.asz = fmul float %i.asl, %.1.i.i.i.i.i.i.i   ; 4 uses
  %i.ata = icmp slt i32 %i.asi, %.pre-phi475.i.i.i.i.i.i.i
  br i1 %i.ata, label %.lr.ph467.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph467.i.i.i.i.i.i.i:                          ; preds = %bb.gq
  %i.atb = fmul float %i.asz, 5.000000e-01        ; 3 uses
  %i.atc = add nsw i64 %26, 1                     ; 2 uses
  %i.atd = add i32 %.pre-phi475.i.i.i.i.i.i.i, -2
  %i.ate = sub i32 %.pre-phi.i.i.i.i.i.i.i, %.pre-phi475.i.i.i.i.i.i.i
  %i.atf = and i32 %i.ate, 1
  %lcmp.mod828.not.not = icmp eq i32 %i.atf, 0
  br i1 %lcmp.mod828.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i.i.i.i.i
  %i.atg = fadd float %i.atb, %i.asn
  %i.ath = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.atc ; 2 uses
  %i.ati = load float, ptr %i.ath, align 4
  %i.atj = fadd float %i.atg, %i.ati
  store float %i.atj, ptr %i.ath, align 4
  %i.atk = fadd float %i.asz, %i.asn              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.prol = add nsw i64 %26, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i.i.i.i.i
  %.lcssa746.unr = phi float [ poison, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.atk, %.prol.loopexit.unr-lcssa ]
  %indvars.iv471.i.i.i.i.i.i.i.unr = phi i64 [ %i.atc, %.lr.ph467.i.i.i.i.i.i.i ], [ %indvars.iv.next472.i.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.i.i.i.i.unr = phi float [ %i.asn, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.atk, %.prol.loopexit.unr-lcssa ]
  %i.atl = icmp eq i32 %i.atd, %.pre-phi.i.i.i.i.i.i.i
  br i1 %i.atl, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph467.i.i.i.i.i.i.i.new

.lr.ph467.i.i.i.i.i.i.i.new:                      ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new
  %indvars.iv471.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.i.i.i.i.1, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %indvars.iv471.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i.i.i.i.i = phi float [ %i.atw, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %.0294466.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.atm = fadd float %i.atb, %.0294466.i.i.i.i.i.i.i
  %i.atn = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i ; 2 uses
  %i.ato = load float, ptr %i.atn, align 4
  %i.atp = fadd float %i.atm, %i.ato
  store float %i.atp, ptr %i.atn, align 4
  %i.atq = fadd float %i.asz, %.0294466.i.i.i.i.i.i.i ; 2 uses
  %i.atr = fadd float %i.atb, %i.atq
  %i.ats = getelementptr [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i
  %i.att = getelementptr i8, ptr %i.ats, i64 4    ; 2 uses
  %i.atu = load float, ptr %i.att, align 4
  %i.atv = fadd float %i.atr, %i.atu
  store float %i.atv, ptr %i.att, align 4
  %i.atw = fadd float %i.asz, %i.atq              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv471.i.i.i.i.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i.1 = trunc i64 %indvars.iv.next472.i.i.i.i.i.i.i.1 to i32
  %exitcond474.not.i.i.i.i.i.i.i.1 = icmp eq i32 %.pre-phi475.i.i.i.i.i.i.i, %lftr.wideiv.i.i.i.i.i.i.i.1
  br i1 %exitcond474.not.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph467.i.i.i.i.i.i.i.new

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new, %bb.gq
  %.0294.lcssa.i.i.i.i.i.i.i = phi float [ %i.asn, %bb.gq ], [ %.lcssa746.unr, %.prol.loopexit ], [ %i.atw, %.lr.ph467.i.i.i.i.i.i.i.new ]
  %i.atx = fsub float %.1300.i.i.i.i.i.i.i, %.0295.i.i.i.i.i.i.i
  %28 = extractelement <2 x float> %17, i64 0     ; 2 uses
  %i.aty = fadd float %28, 1.000000e+00           ; 2 uses
  %i.atz = fsub nnan float %i.aty, %28
  %i.aua = fsub float %i.aty, %.1304.i.i.i.i.i.i.i
  %i.aub = fadd float %i.atz, %i.aua
  %i.auc = fmul float %i.aub, 5.000000e-01
  %i.aud = fmul float %i.auc, %i.atx
  %i.aue = call float @llvm.fmuladd.f32(float %i.asl, float %i.aud, float %.0294.lcssa.i.i.i.i.i.i.i)
  %29 = sext i32 %.pre-phi475.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.auf = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %29 ; 2 uses
  %i.aug = load float, ptr %i.auf, align 4
  %i.auh = fadd float %i.aue, %i.aug
  store float %i.auh, ptr %i.auf, align 4
  %i.aui = fsub float %.1300.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.ais, i64 %29 ; 2 uses
  %i.auk = load float, ptr %i.auj, align 4
  %i.aul = call float @llvm.fmuladd.f32(float %i.asl, float %i.aui, float %i.auk)
  store float %i.aul, ptr %i.auj, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gl, %bb.gk
  br i1 %i.aix, label %.lr.ph.i.i94.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i.i:                           ; preds = %bb.gr
  %i.aum = fsub float %i.aqo, %i.aln
  %i.aun = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.gs

bb.gs:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i.i, %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i, 1 ; 3 uses
  %i.auo = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i.i to i32
  %i.aup = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i to i32
  %i.auq = uitofp nneg i32 %i.auo to float        ; 60 uses
  %i.aur = uitofp nneg i32 %i.aup to float        ; 90 uses
  %i.aus = insertelement <2 x float> poison, float %i.aur, i64 0
  %i.aut = insertelement <2 x float> %i.aus, float %i.auq, i64 1
  %i.auu = fsub <2 x float> %i.aut, %i.aqy        ; 7 uses
  %i.auv = fdiv <2 x float> %i.auu, %i.aqx        ; 2 uses
  %i.auw = extractelement <2 x float> %i.auv, i64 0
  %i.aux = fadd float %i.auw, %i.aiz              ; 52 uses
  %i.auy = extractelement <2 x float> %i.auv, i64 1
  %i.auz = fadd float %i.auy, %i.aiz              ; 52 uses
  %i.ava = fcmp olt float %i.aln, %i.aur          ; 2 uses
  %i.avb = fcmp ogt float %i.aqo, %i.auq          ; 2 uses
  %or.cond339.i.i.i.i.i.i.i = select i1 %i.ava, i1 %i.avb, i1 false
  br i1 %or.cond339.i.i.i.i.i.i.i, label %bb.gt, label %bb.hy

bb.gt:                                            ; preds = %bb.gs
  %i.avc = fcmp oeq float %i.aux, %i.aiz
  br i1 %i.avc, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.avd = load float, ptr %i.aqs, align 4        ; 4 uses
  %i.ave = fcmp olt float %i.avd, %i.aiz
  br i1 %i.ave, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.avf = load float, ptr %i.aqr, align 8        ; 4 uses
  %i.avg = fcmp olt float %i.aux, %i.avf
  br i1 %i.avg, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.avh = fcmp ogt float %i.avf, %i.aiz
  br i1 %i.avh, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.avi = fsub float %i.avf, %i.aiz
  %i.avj = extractelement <2 x float> %i.auu, i64 0
  %i.avk = fmul float %i.avj, %i.avi
  %i.avl = fsub float %i.aux, %i.aiz
  %i.avm = fdiv float %i.avk, %i.avl
  %i.avn = fadd float %i.aln, %i.avm
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.055.i359.i.i.i.i.i.i.i = phi float [ %i.avn, %bb.gx ], [ %i.aln, %bb.gw ] ; 4 uses
  %.054.i360.i.i.i.i.i.i.i = phi float [ %i.avf, %bb.gx ], [ %i.aiz, %bb.gw ] ; 3 uses
  %i.avo = fcmp ogt float %i.aux, %i.avd
  br i1 %i.avo, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.avp = fsub float %i.aur, %.055.i359.i.i.i.i.i.i.i
  %i.avq = fsub float %i.avd, %i.aux
  %i.avr = fmul float %i.avq, %i.avp
  %i.avs = fsub float %i.aux, %.054.i360.i.i.i.i.i.i.i
  %i.avt = fdiv float %i.avr, %i.avs
  %i.avu = fadd float %i.avt, %i.aur
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.053.i361.i.i.i.i.i.i.i = phi float [ %i.avu, %bb.gz ], [ %i.aur, %bb.gy ] ; 3 uses
  %.0.i362.i.i.i.i.i.i.i = phi float [ %i.avd, %bb.gz ], [ %i.aux, %bb.gy ] ; 2 uses
  %i.avv = fcmp ugt float %.055.i359.i.i.i.i.i.i.i, %i.aur
  %i.avw = fcmp ugt float %.053.i361.i.i.i.i.i.i.i, %i.aur
  %or.cond.i363.i.i.i.i.i.i.i = select i1 %i.avv, i1 true, i1 %i.avw
  br i1 %or.cond.i363.i.i.i.i.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.avx = load float, ptr %i.aun, align 4
  %i.avy = fsub float %.0.i362.i.i.i.i.i.i.i, %.054.i360.i.i.i.i.i.i.i
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awa = load float, ptr %i.avz, align 4
  %i.awb = call float @llvm.fmuladd.f32(float %i.avx, float %i.avy, float %i.awa)
  store float %i.awb, ptr %i.avz, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.awc = fcmp ult float %.055.i359.i.i.i.i.i.i.i, %i.auq
  %i.awd = fcmp ult float %.053.i361.i.i.i.i.i.i.i, %i.auq
  %or.cond62.i364.i.i.i.i.i.i.i = select i1 %i.awc, i1 true, i1 %i.awd
  br i1 %or.cond62.i364.i.i.i.i.i.i.i, label %bb.hd, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.awe = load float, ptr %i.aun, align 4
  %i.awf = fsub float %.0.i362.i.i.i.i.i.i.i, %.054.i360.i.i.i.i.i.i.i
  %i.awg = fmul float %i.awf, %i.awe
  %i.awh = fsub float %.055.i359.i.i.i.i.i.i.i, %i.aur
  %i.awi = fsub float %.053.i361.i.i.i.i.i.i.i, %i.aur
  %i.awj = fadd float %i.awh, %i.awi
  %i.awk = fmul float %i.awj, 5.000000e-01
  %i.awl = fsub float 1.000000e+00, %i.awk
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awn = load float, ptr %i.awm, align 4
  %i.awo = call float @llvm.fmuladd.f32(float %i.awg, float %i.awl, float %i.awn)
  store float %i.awo, ptr %i.awm, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gv, %bb.gu, %bb.gt
  %i.awp = fcmp oeq float %i.aux, %i.auz
  br i1 %i.awp, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.awq = load float, ptr %i.aqs, align 4        ; 4 uses
  %i.awr = fcmp ogt float %i.aux, %i.awq
  br i1 %i.awr, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aws = load float, ptr %i.aqr, align 8        ; 4 uses
  %i.awt = fcmp olt float %i.auz, %i.aws
  br i1 %i.awt, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.awu = fcmp olt float %i.aux, %i.aws
  br i1 %i.awu, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.awv = fsub nnan float %i.auq, %i.aur
  %i.aww = fsub float %i.aws, %i.aux
  %i.awx = fmul float %i.awv, %i.aww
  %i.awy = fsub float %i.auz, %i.aux
  %i.awz = fdiv float %i.awx, %i.awy
  %i.axa = fadd float %i.awz, %i.aur
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.055.i366.i.i.i.i.i.i.i = phi float [ %i.axa, %bb.hh ], [ %i.aur, %bb.hg ] ; 4 uses
  %.054.i367.i.i.i.i.i.i.i = phi float [ %i.aws, %bb.hh ], [ %i.aux, %bb.hg ] ; 3 uses
  %i.axb = fcmp ogt float %i.auz, %i.awq
  br i1 %i.axb, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.axc = fsub float %i.auq, %.055.i366.i.i.i.i.i.i.i
  %i.axd = fsub float %i.awq, %i.auz
  %i.axe = fmul float %i.axd, %i.axc
  %i.axf = fsub float %i.auz, %.054.i367.i.i.i.i.i.i.i
  %i.axg = fdiv float %i.axe, %i.axf
  %i.axh = fadd float %i.axg, %i.auq
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.053.i368.i.i.i.i.i.i.i = phi float [ %i.axh, %bb.hj ], [ %i.auq, %bb.hi ] ; 3 uses
  %.0.i369.i.i.i.i.i.i.i = phi float [ %i.awq, %bb.hj ], [ %i.auz, %bb.hi ] ; 2 uses
  %i.axi = fcmp ugt float %.055.i366.i.i.i.i.i.i.i, %i.aur
  %i.axj = fcmp ugt float %.053.i368.i.i.i.i.i.i.i, %i.aur
  %or.cond.i370.i.i.i.i.i.i.i = select i1 %i.axi, i1 true, i1 %i.axj
  br i1 %or.cond.i370.i.i.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.axk = load float, ptr %i.aun, align 4
  %i.axl = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.axn = load float, ptr %i.axm, align 4
  %i.axo = call float @llvm.fmuladd.f32(float %i.axk, float %i.axl, float %i.axn)
  store float %i.axo, ptr %i.axm, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.axp = fcmp ult float %.055.i366.i.i.i.i.i.i.i, %i.auq
  %i.axq = fcmp ult float %.053.i368.i.i.i.i.i.i.i, %i.auq
  %or.cond62.i371.i.i.i.i.i.i.i = select i1 %i.axp, i1 true, i1 %i.axq
  br i1 %or.cond62.i371.i.i.i.i.i.i.i, label %bb.hn, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.axr = load float, ptr %i.aun, align 4
  %i.axs = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axt = fmul float %i.axs, %i.axr
  %i.axu = fsub float %.055.i366.i.i.i.i.i.i.i, %i.aur
  %i.axv = fsub float %.053.i368.i.i.i.i.i.i.i, %i.aur
  %i.axw = fadd float %i.axu, %i.axv
  %i.axx = fmul float %i.axw, 5.000000e-01
  %i.axy = fsub float 1.000000e+00, %i.axx
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.aya = load float, ptr %i.axz, align 4
  %i.ayb = call float @llvm.fmuladd.f32(float %i.axt, float %i.axy, float %i.aya)
  store float %i.ayb, ptr %i.axz, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i: ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hf, %bb.he, %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.ayc = fcmp oeq float %i.auz, %i.aja
  br i1 %i.ayc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %i.ayd = load float, ptr %i.aqs, align 4        ; 4 uses
  %i.aye = fcmp ogt float %i.auz, %i.ayd
end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
  %or.cond62.i448.i.i.i.i.i.i.i = select i1 %i.boi, i1 true, i1 %i.boj
  br i1 %or.cond62.i448.i.i.i.i.i.i.i, label %bb.md, label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

bb.md:                                            ; preds = %bb.mc
  %i.bok = load float, ptr %i.aun, align 4
  %i.bol = fsub float %.0.i446.i.i.i.i.i.i.i, %.054.i444.i.i.i.i.i.i.i
  %i.bom = fmul float %i.bol, %i.bok
  %i.bon = fsub float %.055.i443.i.i.i.i.i.i.i, %i.aur
  %i.boo = fsub float %.053.i445.i.i.i.i.i.i.i, %i.aur
  %i.bop = fadd float %i.bon, %i.boo
  %i.boq = fmul float %i.bop, 5.000000e-01
  %i.bor = fsub float 1.000000e+00, %i.boq
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bot = load float, ptr %i.bos, align 4
  %i.bou = call float @llvm.fmuladd.f32(float %i.bom, float %i.bor, float %i.bot)
  store float %i.bou, ptr %i.bos, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i: ; preds = %bb.md, %bb.mc, %bb.mb, %bb.lv, %bb.lu, %bb.lt
  %i.bov = fcmp oeq float %i.auz, %i.aja
  br i1 %i.bov, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.me

bb.me:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i
  %i.bow = load float, ptr %i.aqs, align 4        ; 4 uses
  %i.box = fcmp ogt float %i.auz, %i.bow
  br i1 %i.box, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.boy = load float, ptr %i.aqr, align 8        ; 4 uses
  %i.boz = fcmp olt float %i.aja, %i.boy
  br i1 %i.boz, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bpa = fcmp olt float %i.auz, %i.boy
  br i1 %i.bpa, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.bpb = fsub float %i.aqo, %i.auq
  %i.bpc = fsub float %i.boy, %i.auz
  %i.bpd = fmul float %i.bpb, %i.bpc
  %i.bpe = fsub float %i.aja, %i.auz
  %i.bpf = fdiv float %i.bpd, %i.bpe
  %i.bpg = fadd float %i.bpf, %i.auq
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %.055.i450.i.i.i.i.i.i.i = phi float [ %i.bpg, %bb.mh ], [ %i.auq, %bb.mg ] ; 4 uses
  %.054.i451.i.i.i.i.i.i.i = phi float [ %i.boy, %bb.mh ], [ %i.auz, %bb.mg ] ; 3 uses
  %i.bph = fcmp ogt float %i.aja, %i.bow
  br i1 %i.bph, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.bpi = fsub float %i.aqo, %.055.i450.i.i.i.i.i.i.i
  %i.bpj = fsub float %i.bow, %i.aja
  %i.bpk = fmul float %i.bpj, %i.bpi
  %i.bpl = fsub float %i.aja, %.054.i451.i.i.i.i.i.i.i
  %i.bpm = fdiv float %i.bpk, %i.bpl
  %i.bpn = fadd float %i.aqo, %i.bpm
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bpn, %bb.mj ], [ %i.aqo, %bb.mi ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %i.bow, %bb.mj ], [ %i.aja, %bb.mi ] ; 2 uses
  %i.bpo = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.aur
  %i.bpp = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.aur
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bpo, i1 true, i1 %i.bpp
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bpq = load float, ptr %i.aun, align 4
  %i.bpr = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bpt = load float, ptr %i.bps, align 4
  %i.bpu = call float @llvm.fmuladd.f32(float %i.bpq, float %i.bpr, float %i.bpt)
  store float %i.bpu, ptr %i.bps, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mm:                                            ; preds = %bb.mk
  %i.bpv = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.auq
  %i.bpw = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.auq
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bpv, i1 true, i1 %i.bpw
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.mn, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mn:                                            ; preds = %bb.mm
  %i.bpx = load float, ptr %i.aun, align 4
  %i.bpy = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bpz = fmul float %i.bpy, %i.bpx
  %i.bqa = fsub float %.055.i450.i.i.i.i.i.i.i, %i.aur
  %i.bqb = fsub float %.053.i452.i.i.i.i.i.i.i, %i.aur
  %i.bqc = fadd float %i.bqa, %i.bqb
  %i.bqd = fmul float %i.bqc, 5.000000e-01
  %i.bqe = fsub float 1.000000e+00, %i.bqd
  %i.bqf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bqg = load float, ptr %i.bqf, align 4
  %i.bqh = call float @llvm.fmuladd.f32(float %i.bpz, float %i.bqe, float %i.bqg)
  store float %i.bqh, ptr %i.bqf, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mo:                                            ; preds = %bb.ls
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bqi = load float, ptr %i.aqs, align 4        ; 4 uses
  %i.bqj = fcmp olt float %i.bqi, %i.aiz
  br i1 %i.bqj, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bqk = load float, ptr %i.aqr, align 8        ; 4 uses
  %i.bql = fcmp olt float %i.aja, %i.bqk
  br i1 %i.bql, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bqm = fcmp ogt float %i.bqk, %i.aiz          ; 2 uses
  %i.bqn = fsub float %i.bqk, %i.aiz
  %i.bqo = fmul float %i.aum, %i.bqn
  %i.bqp = fdiv float %i.bqo, %i.ali
  %i.bqq = fadd float %i.aln, %i.bqp
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.bqm, float %i.bqq, float %i.aln ; 4 uses
  %.054.i458.i.i.i.i.i.i.i = select i1 %i.bqm, float %i.bqk, float %i.aiz ; 3 uses
  %i.bqr = fcmp ogt float %i.aja, %i.bqi
  br i1 %i.bqr, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.bqs = fsub float %i.aqo, %.055.i457.i.i.i.i.i.i.i
  %i.bqt = fsub float %i.bqi, %i.aja
  %i.bqu = fmul float %i.bqt, %i.bqs
  %i.bqv = fsub float %i.aja, %.054.i458.i.i.i.i.i.i.i
  %i.bqw = fdiv float %i.bqu, %i.bqv
  %i.bqx = fadd float %i.aqo, %i.bqw
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.053.i459.i.i.i.i.i.i.i = phi float [ %i.bqx, %bb.ms ], [ %i.aqo, %bb.mr ] ; 3 uses
  %.0.i460.i.i.i.i.i.i.i = phi float [ %i.bqi, %bb.ms ], [ %i.aja, %bb.mr ] ; 2 uses
  %i.bqy = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.aur
  %i.bqz = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.aur
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.bqy, i1 true, i1 %i.bqz
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bra = load float, ptr %i.aun, align 4
  %i.brb = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.brd = load float, ptr %i.brc, align 4
  %i.bre = call float @llvm.fmuladd.f32(float %i.bra, float %i.brb, float %i.brd)
  store float %i.bre, ptr %i.brc, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.brf = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.auq
  %i.brg = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.auq
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.brf, i1 true, i1 %i.brg
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.mw, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mw:                                            ; preds = %bb.mv
  %i.brh = load float, ptr %i.aun, align 4
  %i.bri = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.brj = fmul float %i.bri, %i.brh
  %i.brk = fsub float %.055.i457.i.i.i.i.i.i.i, %i.aur
  %i.brl = fsub float %.053.i459.i.i.i.i.i.i.i, %i.aur
  %i.brm = fadd float %i.brk, %i.brl
  %i.brn = fmul float %i.brm, 5.000000e-01
  %i.bro = fsub float 1.000000e+00, %i.brn
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.brq = load float, ptr %i.brp, align 4
  %i.brr = call float @llvm.fmuladd.f32(float %i.brj, float %i.bro, float %i.brq)
  store float %i.brr, ptr %i.brp, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mf, %bb.me, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.lr, %bb.lq, %bb.lp, %bb.lj, %bb.li, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.kv, %bb.ku, %bb.kt, %bb.kn, %bb.km, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jz, %bb.jy, %bb.jx, %bb.jr, %bb.jq, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iv, %bb.iu, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hp, %bb.ho, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gs

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gr, %._crit_edge.i.i.i.i.i.i.i, %bb.gn, %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fq, %bb.fp, %bb.fe, %bb.fc
  %i.brs = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.brs, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aix, label %.lr.ph22.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.brt = mul nuw nsw i32 %.07630.i.i.i.i.i.i, %i.zy
  br label %.lr.ph22.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph22.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.brw, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i.i.i.i.i.i
  %i.brv = load float, ptr %i.bru, align 4
  %i.brw = fadd float %.07721.i.i.i.i.i.i, %i.brv ; 2 uses
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bry = load float, ptr %i.brx, align 4
  %i.brz = fadd float %i.bry, %i.brw
  %i.bsa = call float @llvm.fabs.f32(float %i.brz)
  %i.bsb = call float @llvm.fmuladd.f32(float %i.bsa, float 2.550000e+02, float 5.000000e-01)
  %i.bsc = fptosi float %i.bsb to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsc, i32 255)
  %i.bsd = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bse = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bsf = add nsw i32 %i.brt, %i.bse
  %i.bsg = sext i32 %i.bsf to i64
  %i.bsh = getelementptr inbounds i8, ptr %i.aag, i64 %i.bsg
  store i8 %i.bsd, ptr %i.bsh, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aii
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.bsi = phi ptr [ %i.bsn, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.224.i.i.i.i.i.i = phi ptr [ %i.bsm, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8 ; 2 uses
  %i.bsk = load <2 x float>, ptr %i.bsj, align 8
  %i.bsl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bsk)
  store float %i.bsl, ptr %i.bsj, align 8
  %i.bsm = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bsn = load ptr, ptr %i.bsm, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bsn, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bso = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.bsp = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bsp, %i.aab
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bsq, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.bsq = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bsq, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agn) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acf) #39
  call void @free(ptr noundef %i.aec) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zy, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zy, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zy, %bb.dp ], [ %i.zy, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aab, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aab, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aab, %bb.dp ], [ %i.aab, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aag, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aag, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.bsr = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.bsr) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zo, 32
  br i1 %.not141, label %bb.pf, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.bss = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.bst = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %stbtt_GetCodepointSDF.exit, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zp, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bsu = load i32, ptr %i.a, align 4            ; 4 uses
  %i.bsv = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bsw = icmp eq i32 %i.bsu, %i.bsv
  br i1 %i.bsw, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bsx = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bsy = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bsz = icmp eq i32 %i.bsx, %i.bsy
  br i1 %i.bsz, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bta = add i32 %i.bsu, -4                     ; 4 uses
  %i.btb = add i32 %i.bsx, -4                     ; 7 uses
  %i.btc = add i32 %i.bsv, 4                      ; 6 uses
  %i.btd = add i32 %i.bsy, 4                      ; 4 uses
  %i.bte = sub i32 %i.btc, %i.bta                 ; 4 uses
  %i.btf = sub nsw i32 %i.btd, %i.btb             ; 2 uses
  store i32 %i.bta, ptr %i.bss, align 4
  store i32 %i.btb, ptr %i.bst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.btg = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zp, ptr noundef %i.e) ; 5 uses
  %i.bth = mul nsw i32 %i.btf, %i.bte
  %i.bti = sext i32 %i.bth to i64
  %i.btj = call noalias ptr @malloc(i64 noundef %i.bti) #42 ; 23 uses
  %i.btk = sext i32 %i.btg to i64
  %i.btl = shl nsw i64 %i.btk, 2
  %i.btm = call noalias ptr @malloc(i64 noundef %i.btl) #42 ; 4 uses
  %i.btn = icmp sgt i32 %i.btg, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.btn, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.bto = add nsw i32 %i.btg, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.btg to i64
  %i.btp = zext nneg i32 %i.bto to i64
  br label %bb.pa

.preheader485.i.i:                                ; preds = %bb.pe, %bb.nc
  %i.btq = icmp slt i32 %i.btb, %i.btd
  br i1 %i.btq, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.btr = icmp slt i32 %i.bta, %i.btc
  %wide.trip.count.i.i.i156 = zext i32 %i.btg to i64 ; 2 uses
  br i1 %i.btr, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bts = zext i32 %i.bta to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bsu              ; 2 uses
  br i1 %i.btn, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.btt = add i32 %i.bsv, 7
  %i.btu = sub i32 %i.btt, %i.bsu                 ; 8 uses
  %i.btv = zext i32 %i.btu to i64
  %i.btw = add nuw nsw i64 %i.btv, 1              ; 15 uses
  %i.btx = add i32 %i.bsv, 3
  %i.bty = add i32 %i.bsv, 3
  %i.btz = add i32 %i.bsv, 3
  %min.iters.check672 = icmp ult i32 %i.btu, 7
  %min.iters.check700 = icmp ult i32 %i.btu, 31
  %i.bua = and i64 %i.btw, 24
  %n.vec702 = and i64 %i.btw, 8589934560          ; 4 uses
  %i.bub = add nuw nsw i64 %n.vec702, %i.bts
  %cmp.n707 = icmp eq i64 %i.btw, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.bua, 0
  %n.vec715 = and i64 %i.btw, 8589934584          ; 3 uses
  %i.buc = add nuw nsw i64 %n.vec715, %i.bts
  %cmp.n720 = icmp eq i64 %i.btw, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.btu, 31
  %i.bud = and i64 %i.btw, 24
  %n.vec676 = and i64 %i.btw, 8589934560          ; 4 uses
  %i.bue = add nuw nsw i64 %n.vec676, %i.bts
  %cmp.n681 = icmp eq i64 %i.btw, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.bud, 0
  %n.vec689 = and i64 %i.btw, 8589934584          ; 3 uses
  %i.buf = add nuw nsw i64 %n.vec689, %i.bts
  %cmp.n694 = icmp eq i64 %i.btw, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.btu, 7
  %min.iters.check648 = icmp ult i32 %i.btu, 31
  %i.bug = and i64 %i.btw, 24
  %n.vec650 = and i64 %i.btw, 8589934560          ; 4 uses
  %i.buh = add nuw nsw i64 %n.vec650, %i.bts
  %cmp.n655 = icmp eq i64 %i.btw, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.bug, 0
  %n.vec663 = and i64 %i.btw, 8589934584          ; 3 uses
  %i.bui = add nuw nsw i64 %n.vec663, %i.bts
  %cmp.n668 = icmp eq i64 %i.btw, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cmh, %._crit_edge493.i.split.us.us.i ], [ %i.btb, %.preheader.preheader.i.i ] ; 3 uses
  %i.buj = sitofp i32 %.0435494.i.us.i to float
  %i.buk = fadd float %i.buj, 5.000000e-01        ; 8 uses
  %i.bul = fdiv float %i.buk, %i.yu               ; 4 uses
  %i.bum = fpext float %i.bul to double
  %i.bun = fadd float %i.bul, f0xBC23D70A
  %i.buo = fadd float %i.bul, f0x3C23D70A
  %i.bup = sub nsw i32 %.0435494.i.us.i, %i.btb
  %i.buq = mul nuw nsw i32 %i.bup, %i.bte
  %.reass.i.us.i = add i32 %i.buq, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.oz, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bts, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.oz ] ; 2 uses
  %i.bur = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bus = sitofp i32 %i.bur to float
  %i.but = fadd float %i.bus, 5.000000e-01        ; 8 uses
  %i.buu = fdiv float %i.but, %i.yc               ; 7 uses
  %i.buv = call double @fmod(double noundef %i.bum, double noundef 1.000000e+00) #39 ; 2 uses
  %i.buw = fcmp olt double %i.buv, f0x3F847AE130000000
  br i1 %i.buw, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
end_hunk_1
begin_hunk_2_@stbtt__tesselate_cubic:bb.a
  %i.aw = insertelement <2 x float> %i.av, float %i.as, i64 1
  %i.ax = fmul <2 x float> %i.aw, splat (float 5.000000e-01) ; 6 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1
  %i.az = extractelement <2 x float> %i.ax, i64 0
  %i.ba = fadd <2 x float> %i.at, %i.au
  %i.bb = fmul <2 x float> %i.ba, splat (float 5.000000e-01) ; 3 uses
  %i.bc = fadd <2 x float> %i.au, %i.ax
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01) ; 6 uses
  %i.be = fadd <2 x float> %i.bb, %i.bd
  %i.bf = fmul <2 x float> %i.be, splat (float 5.000000e-01) ; 5 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bi = add i32 %.tr106115, 1                   ; 3 uses
  %i.bj = extractelement <2 x float> %i.bb, i64 0
  %i.bk = extractelement <2 x float> %i.bb, i64 1
  %i.bl = extractelement <2 x float> %i.at, i64 0
  %i.bm = extractelement <2 x float> %i.at, i64 1
  tail call fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr noundef %1, float noundef %.tr97109, float noundef %.tr98110, float noundef %i.bl, float noundef %i.bm, float noundef %i.bj, float noundef %i.bk, float noundef %i.bh, float noundef %i.bg, float noundef %10, i32 noundef %i.bi)
  %exitcond = icmp eq i32 %i.bi, %smax
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> %i.bd, <2 x float> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %stbtt__add_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = load i32, ptr %1, align 4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  store float %8, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
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
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

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
!11 = distinct !{!11, !"LoadFontEx"}
!12 = distinct !{!12, !11, !"LoadFontEx: argument 0"}
!13 = distinct !{!13, !"LoadBMFont"}
!14 = distinct !{!14, !13, !"LoadBMFont: argument 0"}
!15 = distinct !{!15, !"LVerDomain"}
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
!51 = distinct !{!51, !"LVerDomain"}
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
end_hunk_2
