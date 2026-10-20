Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i24.i.i.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !258
  %i.ku = add nsw i32 %i.kt, %.0874.i.i.i.i       ; 2 uses
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i, %i.gh
  br i1 %exitcond.not.i26.i.i.i, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i, !llvm.loop !766

._crit_edge.i27.i.i.i:                            ; preds = %.lr.ph.i23.i.i.i, %middle.block331
  %.lcssa319 = phi i32 [ %i.kr, %middle.block331 ], [ %i.ku, %.lr.ph.i23.i.i.i ]
  %i.kv = fneg float %i.ax
  %i.kw = add nsw i32 %.lcssa319, 1
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.kx, 20
  %i.kz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ky) ; 9 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, label %.lr.ph16.i.i.i.i.preheader

.lr.ph16.i.i.i.i.preheader:                       ; preds = %._crit_edge.i27.i.i.i
  %i.lb = insertelement <4 x float> poison, float %i.av, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.kv, i64 1
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.lr.ph16.i.i.i.i.preheader, %._crit_edge11.i.i.i.i
  %indvars.iv27.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.08315.i.i.i.i = phi i32 [ %i.li, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.18813.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %i.le = sext i32 %.08315.i.i.i.i to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.le ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv27.i.i.i.i ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !258 ; 4 uses
  %i.li = add nsw i32 %i.lh, %.08315.i.i.i.i
  %i.lj = icmp sgt i32 %i.lh, 0
  br i1 %i.lj, label %.lr.ph10.preheader.i.i.i.i, label %._crit_edge11.i.i.i.i

.lr.ph10.preheader.i.i.i.i:                       ; preds = %.lr.ph16.i.i.i.i
  %i.lk = add nsw i32 %i.lh, -1                   ; 2 uses
  %.phi.trans.insert.i.i.i.i = zext nneg i32 %i.lk to i64
  %.phi.trans.insert32.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.phi.trans.insert.i.i.i.i
  %.phi.trans.insert33.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32.i.i.i.i, i64 4
  %.pre.i.i.i.i = load float, ptr %.phi.trans.insert33.i.i.i.i, align 4, !tbaa !522
  br label %.lr.ph10.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph10.preheader.i.i.i.i
  %i.ll = phi i32 [ %i.lh, %.lr.ph10.preheader.i.i.i.i ], [ %i.mf, %.lr.ph10._crit_edge.i.i.i.i ]
  %i.lm = phi float [ %.pre.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %i.lp, %.lr.ph10._crit_edge.i.i.i.i ] ; 2 uses
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i = phi i32 [ %i.lk, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.26.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv24.i28.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !522 ; 3 uses
  %i.lq = fcmp oeq float %i.lm, %i.lp
  br i1 %i.lq, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.lr = sext i32 %.26.i.i.i.i to i64
  %i.ls = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = fcmp ogt float %i.lm, %i.lp             ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.lu to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.lt, align 4, !tbaa !794
  %i.lv = sext i32 %.0857.i.i.i.i to i64          ; 2 uses
  %i.lw = select i1 %i.lu, i64 %i.lv, i64 %indvars.iv24.i28.i.i.i
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lw
  %i.ly = select i1 %i.lu, i64 %indvars.iv24.i28.i.i.i, i64 %i.lv
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.ly
  %i.ma = load <2 x float>, ptr %i.lx, align 4, !tbaa !29
  %i.mb = load <2 x float>, ptr %i.lz, align 4, !tbaa !29
  %i.mc = shufflevector <2 x float> %i.ma, <2 x float> %i.mb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.md = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mc, <4 x float> %i.ld, <4 x float> zeroinitializer)
  store <4 x float> %i.md, ptr %i.ls, align 4, !tbaa !29
  %i.me = add nsw i32 %.26.i.i.i.i, 1
  %.pre34.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !258
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.ad, %.lr.ph10.i.i.i.i
  %i.mf = phi i32 [ %.pre34.i.i.i.i, %bb.ad ], [ %i.ll, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.me, %bb.ad ], [ %.26.i.i.i.i, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.mg
  br i1 %i.mh, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !767

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.gh
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !768

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.kz, i32 noundef %.2.lcssa.i.i.i.i)
  %i.mi = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.mi, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.mj = getelementptr inbounds nuw [20 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !29
  %i.mk = load <2 x float>, ptr %i.mj, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !795
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.af ] ; 4 uses
  %i.ml = getelementptr [20 x i8], ptr %i.kz, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 -16
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !524
  %i.mo = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.mn
  br i1 %i.mo, label %bb.af, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.mp = getelementptr i8, ptr %i.ml, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ml, ptr noundef nonnull align 4 dereferenceable(20) %i.mp, i64 20, i1 false), !tbaa.struct !293
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.mq = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.mq, label %bb.ae, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ae
  %i.mr = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.af, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.mr, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.ms = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.ms
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mt = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.mu = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.mt ; 2 uses
  store <2 x float> %i.mk, ptr %i.mu, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !795
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !769

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i: ; preds = %bb.ah, %._crit_edge17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.mv = icmp sgt i32 %i.cr, 64
  br i1 %i.mv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.mw = shl nuw nsw i32 %i.cr, 1
  %i.mx = or disjoint i32 %i.mw, 1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl nuw nsw i64 %i.my, 2
  %i.na = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.mz)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.na, %bb.ai ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ] ; 43 uses
  %i.nb = sext i32 %i.cr to i64                   ; 3 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.nb ; 9 uses
  %i.nd = add nsw i32 %i.eh, %i.cu
  %i.ne = sitofp i32 %i.nd to float
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nh = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store float %i.nf, ptr %i.ni, align 4, !tbaa !524
  %i.nj = icmp sgt i32 %i.cu, 0
  br i1 %i.nj, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nk = sitofp i32 %i.eg to float
  %i.nl = icmp ne i32 %i.eh, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %i.nn = shl nsw i64 %i.nb, 2
  %i.no = add nsw i32 %i.cr, 1
  %i.np = sext i32 %i.no to i64
  %i.nq = shl nsw i64 %i.np, 2
  %i.nr = sitofp i32 %i.cr to float               ; 3 uses
  %i.ns = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axf, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axg, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nt = sitofp i32 %.07530.i.i.i.i.i to float   ; 69 uses
  %i.nu = fadd float %i.nt, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.nn, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nc, i8 0, i64 %i.nq, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !524 ; 2 uses
  %i.nx = fcmp ugt float %i.nw, %i.nu
  br i1 %i.nx, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.ny = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nl, %i.ny
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.nz = phi ptr [ %i.of, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 28
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !799
  %i.oc = fcmp ugt float %i.ob, %i.nt
  br i1 %i.oc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.od = load ptr, ptr %i.nz, align 8, !tbaa !800
  store ptr %i.od, ptr %.07810.i.i.i.i.i, align 8, !tbaa !797
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 20
  store float 0.000000e+00, ptr %i.oe, align 4, !tbaa !801
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.nz, align 8, !tbaa !427
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.nz, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.of = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !797 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !770

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.og = phi float [ %i.nw, %.lr.ph15.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.oh = phi ptr [ %i.nv, %.lr.ph15.i.i.i.i.i ], [ %i.pu, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pt, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !802 ; 3 uses
  %i.ok = fcmp une float %i.og, %i.oj
  br i1 %i.ok, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ol = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !427
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.om = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.om, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.on = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oo = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.oo, align 8, !tbaa !805
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.oi, align 4, !tbaa !802
  %.pre41.pre.i.i.i.i.i = load float, ptr %i.oh, align 4, !tbaa !524
  br label %bb.as

bb.as:                                            ; preds = %.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.pre41.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.og, %._crit_edge.i.i.i.i.i.i.i ]
  %.pre40.i.i.i.i.i = phi float [ %.pre40.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.oj, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %i.oo, %.thread.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.oq = phi i32 [ 799, %.thread.i.i.i.i.i.i.i ], [ %i.on, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i, i64 8
  %i.os = zext nneg i32 %i.oq to i64
  %i.ot = shl nuw nsw i64 %i.os, 5
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ot
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.ov = phi float [ %.pre41.i.i.i.i.i, %bb.as ], [ %i.og, %bb.ap ] ; 3 uses
  %i.ow = phi float [ %.pre40.i.i.i.i.i, %bb.as ], [ %i.oj, %bb.ap ] ; 3 uses
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i, %bb.as ], [ %.sroa.0.111.i.i.i.i.i, %bb.ap ]
  %.sroa.7.4.i.i.i.i.i = phi ptr [ null, %bb.as ], [ %i.ol, %bb.ap ]
  %.sroa.11.2.i.i.i.i.i = phi i32 [ %i.oq, %bb.as ], [ %.sroa.11.113.i.i.i.i.i, %bb.ap ]
  %.1.i.ph.i.i.i.i.i.i = phi ptr [ %i.ou, %bb.as ], [ %.sroa.7.312.i.i.i.i.i, %bb.ap ] ; 9 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 8
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !806
  %i.oz = load float, ptr %.114.i.i.i.i.i, align 4, !tbaa !807 ; 2 uses
  %i.pa = fsub float %i.oy, %i.oz
  %i.pb = fsub float %i.ow, %i.ov
  %i.pc = fdiv float %i.pa, %i.pb                 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 12
  store float %i.pc, ptr %i.pd, align 4, !tbaa !808
  %i.pe = fcmp une float %i.pc, 0.000000e+00
  %i.pf = fdiv float 1.000000e+00, %i.pc
  %i.pg = select i1 %i.pe, float %i.pf, float 0.000000e+00
  %i.ph = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 16
  store float %i.pg, ptr %i.ph, align 8, !tbaa !809
  %i.pi = fsub float %i.nt, %i.ov
  %i.pj = call float @llvm.fmuladd.f32(float %i.pc, float %i.pi, float %i.oz)
  %i.pk = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 8
  %i.pl = fsub float %i.pj, %i.nk
  store float %i.pl, ptr %i.pk, align 8, !tbaa !810
  %i.pm = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 16
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !794
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.pn, 0
  %i.po = select i1 %.not28.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.pp = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 20
  store float %i.po, ptr %i.pp, align 4, !tbaa !801
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 24
  store float %i.ov, ptr %i.pq, align 8, !tbaa !811
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.ow, ptr %i.pr, align 4, !tbaa !799
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !800
  %i.ps = fcmp olt float %i.ow, %i.nt
  %or.cond136.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.ps, i1 false
  br i1 %or.cond136.i.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store float %i.nt, ptr %i.pr, align 4, !tbaa !799
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !797
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !800
  store ptr %.1.i.ph.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !797
  br label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i: ; preds = %bb.av, %bb.ar, %bb.an
  %.sroa.0.5.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i, %bb.an ], [ %.sroa.0.3.i.i.i.i.i, %bb.av ], [ %.sroa.0.111.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i, %bb.an ], [ %.sroa.7.4.i.i.i.i.i, %bb.av ], [ null, %bb.ar ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i, %bb.an ], [ %.sroa.11.2.i.i.i.i.i, %bb.av ], [ 0, %bb.ar ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 20 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 24 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !524 ; 2 uses
  %i.pw = fcmp ugt float %i.pv, %i.nu
  br i1 %i.pw, label %._crit_edge.i.i.i.i.i, label %bb.an, !llvm.loop !771

._crit_edge.i.i.i.i.i:                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.preheader7.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %i.pt, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !797 ; 4 uses
  %.not91.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.px = fcmp oeq float %i.nu, %i.nt             ; 3 uses
  %i.py = fsub float %i.nu, %i.nt                 ; 4 uses
  br label %bb.ax

bb.ax:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %bb.aw
  %.0295473.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %bb.aw ], [ %i.awk, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i ] ; 20 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 12
  %i.qa = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 8
  %i.qb = load float, ptr %i.pz, align 4, !tbaa !808 ; 5 uses
  %i.qc = fcmp oeq float %i.qb, 0.000000e+00
  %i.qd = load float, ptr %i.qa, align 8, !tbaa !810 ; 49 uses
  br i1 %i.qc, label %bb.ay, label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  %i.qe = fcmp olt float %i.qd, %i.nr
  br i1 %i.qe, label %bb.az, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.qf = fcmp ult float %i.qd, 0.000000e+00
  br i1 %i.qf, label %bb.bv, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qg = fptosi float %i.qd to i32               ; 6 uses
  br i1 %i.px, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !799 ; 4 uses
  %i.qj = fcmp olt float %i.qi, %i.nt
  br i1 %i.qj, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qk = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.ql = load float, ptr %i.qk, align 8, !tbaa !811 ; 4 uses
  %i.qm = fcmp olt float %i.nu, %i.ql
  br i1 %i.qm, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qn = fcmp ogt float %i.ql, %i.nt
  br i1 %i.qn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.qo = fsub float %i.qd, %i.qd
  %i.qp = fsub float %i.ql, %i.nt
  %i.qq = fmul float %i.qo, %i.qp
  %i.qr = fdiv float %i.qq, %i.py
  %i.qs = fadd float %i.qd, %i.qr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.057.i.i.i.i.i.i.i = phi float [ %i.qs, %bb.be ], [ %i.qd, %bb.bd ] ; 4 uses
  %.056.i.i.i.i.i.i.i = phi float [ %i.ql, %bb.be ], [ %i.nt, %bb.bd ] ; 3 uses
  %i.qt = fcmp ogt float %i.nu, %i.qi
  br i1 %i.qt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qu = fsub float %i.qd, %.057.i.i.i.i.i.i.i
  %i.qv = fsub float %i.qi, %i.nu
  %i.qw = fmul float %i.qv, %i.qu
  %i.qx = fsub float %i.nu, %.056.i.i.i.i.i.i.i
  %i.qy = fdiv float %i.qw, %i.qx
  %i.qz = fadd float %i.qd, %i.qy
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.055.i.i.i.i.i.i.i = phi float [ %i.qz, %bb.bg ], [ %i.qd, %bb.bf ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi float [ %i.qi, %bb.bg ], [ %i.nu, %bb.bf ] ; 2 uses
  %i.ra = sitofp i32 %i.qg to float               ; 4 uses
  %i.rb = fcmp ugt float %.057.i.i.i.i.i.i.i, %i.ra
  %i.rc = fcmp ugt float %.055.i.i.i.i.i.i.i, %i.ra
  %or.cond64.i.i.i.i.i.i.i = select i1 %i.rb, i1 true, i1 %i.rc
  br i1 %or.cond64.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rd = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.re = load float, ptr %i.rd, align 4, !tbaa !801
  %i.rf = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rg = zext nneg i32 %i.qg to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rg ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !29
  %i.rj = call float @llvm.fmuladd.f32(float %i.re, float %i.rf, float %i.ri)
  store float %i.rj, ptr %i.rh, align 4, !tbaa !29
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.rk = add nuw nsw i32 %i.qg, 1
  %i.rl = sitofp i32 %i.rk to float               ; 2 uses
  %i.rm = fcmp ult float %.057.i.i.i.i.i.i.i, %i.rl
  %i.rn = fcmp ult float %.055.i.i.i.i.i.i.i, %i.rl
  %or.cond65.i.i.i.i.i.i.i = select i1 %i.rm, i1 true, i1 %i.rn
  br i1 %or.cond65.i.i.i.i.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ro = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !801
  %i.rq = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rr = fmul float %i.rq, %i.rp
  %i.rs = fsub float %.057.i.i.i.i.i.i.i, %i.ra
  %i.rt = fsub float %.055.i.i.i.i.i.i.i, %i.ra
  %i.ru = fadd float %i.rs, %i.rt
  %i.rv = fmul float %i.ru, 5.000000e-01
  %i.rw = fsub float 1.000000e+00, %i.rv
  %i.rx = zext nneg i32 %i.qg to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rx ; 2 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !29
  %i.sa = call float @llvm.fmuladd.f32(float %i.rr, float %i.rw, float %i.rz)
  store float %i.sa, ptr %i.ry, align 4, !tbaa !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bc, %bb.bb
  %i.sb = add nuw nsw i32 %i.qg, 1                ; 3 uses
  %i.sc = load float, ptr %i.qh, align 4, !tbaa !799 ; 4 uses
  %i.sd = fcmp olt float %i.sc, %i.nt
  br i1 %i.sd, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.se = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.sf = load float, ptr %i.se, align 8, !tbaa !811 ; 4 uses
  %i.sg = fcmp olt float %i.nu, %i.sf
  br i1 %i.sg, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sh = fcmp ogt float %i.sf, %i.nt
  br i1 %i.sh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.si = fsub float %i.qd, %i.qd
  %i.sj = fsub float %i.sf, %i.nt
  %i.sk = fmul float %i.si, %i.sj
  %i.sl = fdiv float %i.sk, %i.py
  %i.sm = fadd float %i.qd, %i.sl
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.057.i350.i.i.i.i.i.i = phi float [ %i.sm, %bb.bo ], [ %i.qd, %bb.bn ] ; 4 uses
  %.056.i351.i.i.i.i.i.i = phi float [ %i.sf, %bb.bo ], [ %i.nt, %bb.bn ] ; 3 uses
  %i.sn = fcmp ogt float %i.nu, %i.sc
  br i1 %i.sn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.so = fsub float %i.qd, %.057.i350.i.i.i.i.i.i
  %i.sp = fsub float %i.sc, %i.nu
  %i.sq = fmul float %i.sp, %i.so
  %i.sr = fsub float %i.nu, %.056.i351.i.i.i.i.i.i
  %i.ss = fdiv float %i.sq, %i.sr
  %i.st = fadd float %i.qd, %i.ss
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.055.i352.i.i.i.i.i.i = phi float [ %i.st, %bb.bq ], [ %i.qd, %bb.bp ] ; 3 uses
  %.0.i353.i.i.i.i.i.i = phi float [ %i.sc, %bb.bq ], [ %i.nu, %bb.bp ] ; 2 uses
  %i.su = sitofp i32 %i.sb to float               ; 4 uses
  %i.sv = fcmp ugt float %.057.i350.i.i.i.i.i.i, %i.su
  %i.sw = fcmp ugt float %.055.i352.i.i.i.i.i.i, %i.su
  %or.cond64.i354.i.i.i.i.i.i = select i1 %i.sv, i1 true, i1 %i.sw
  br i1 %or.cond64.i354.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sx = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !801
  %i.sz = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.ta = zext nneg i32 %i.sb to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ta ; 2 uses
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !29
  %i.td = call float @llvm.fmuladd.f32(float %i.sy, float %i.sz, float %i.tc)
  store float %i.td, ptr %i.tb, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.te = add nuw nsw i32 %i.qg, 2
  %i.tf = sitofp i32 %i.te to float               ; 2 uses
  %i.tg = fcmp ult float %.057.i350.i.i.i.i.i.i, %i.tf
  %i.th = fcmp ult float %.055.i352.i.i.i.i.i.i, %i.tf
  %or.cond65.i355.i.i.i.i.i.i = select i1 %i.tg, i1 true, i1 %i.th
  br i1 %or.cond65.i355.i.i.i.i.i.i, label %bb.bu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ti = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !801
  %i.tk = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tl = fmul float %i.tk, %i.tj
  %i.tm = fsub float %.057.i350.i.i.i.i.i.i, %i.su
  %i.tn = fsub float %.055.i352.i.i.i.i.i.i, %i.su
  %i.to = fadd float %i.tm, %i.tn
  %i.tp = fmul float %i.to, 5.000000e-01
  %i.tq = fsub float 1.000000e+00, %i.tp
  %i.tr = zext nneg i32 %i.sb to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.tr ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !29
  %i.tu = call float @llvm.fmuladd.f32(float %i.tl, float %i.tq, float %i.tt)
  store float %i.tu, ptr %i.ts, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.az
  br i1 %i.px, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tv = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !799 ; 4 uses
  %i.tx = fcmp olt float %i.tw, %i.nt
  br i1 %i.tx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ty = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.tz = load float, ptr %i.ty, align 8, !tbaa !811 ; 4 uses
  %i.ua = fcmp olt float %i.nu, %i.tz
  br i1 %i.ua, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ub = fcmp ogt float %i.tz, %i.nt
  br i1 %i.ub, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.uc = fsub float %i.qd, %i.qd
  %i.ud = fsub float %i.tz, %i.nt
  %i.ue = fmul float %i.uc, %i.ud
  %i.uf = fdiv float %i.ue, %i.py
  %i.ug = fadd float %i.qd, %i.uf
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.057.i357.i.i.i.i.i.i = phi float [ %i.ug, %bb.bz ], [ %i.qd, %bb.by ] ; 4 uses
  %.056.i358.i.i.i.i.i.i = phi float [ %i.tz, %bb.bz ], [ %i.nt, %bb.by ] ; 3 uses
  %i.uh = fcmp ogt float %i.nu, %i.tw
  br i1 %i.uh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ui = fsub float %i.qd, %.057.i357.i.i.i.i.i.i
  %i.uj = fsub float %i.tw, %i.nu
  %i.uk = fmul float %i.uj, %i.ui
  %i.ul = fsub float %i.nu, %.056.i358.i.i.i.i.i.i
  %i.um = fdiv float %i.uk, %i.ul
  %i.un = fadd float %i.qd, %i.um
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.055.i359.i.i.i.i.i.i = phi float [ %i.un, %bb.cb ], [ %i.qd, %bb.ca ] ; 3 uses
  %.0.i360.i.i.i.i.i.i = phi float [ %i.tw, %bb.cb ], [ %i.nu, %bb.ca ] ; 2 uses
  %i.uo = fcmp ugt float %.057.i357.i.i.i.i.i.i, 0.000000e+00
  %i.up = fcmp ugt float %.055.i359.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i.i = select i1 %i.uo, i1 true, i1 %i.up
  br i1 %or.cond64.i361.i.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !801
  %i.us = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ut = load float, ptr %i.nc, align 4, !tbaa !29
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.ut)
  store float %i.uu, ptr %i.nc, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.uv = fcmp ult float %.057.i357.i.i.i.i.i.i, 1.000000e+00
  %i.uw = fcmp ult float %.055.i359.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i.i = select i1 %i.uv, i1 true, i1 %i.uw
  br i1 %or.cond65.i362.i.i.i.i.i.i, label %bb.cf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.ux = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !801
  %i.uz = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.va = fmul float %i.uz, %i.uy
  %i.vb = fadd float %.057.i357.i.i.i.i.i.i, %.055.i359.i.i.i.i.i.i
  %i.vc = fmul float %i.vb, 5.000000e-01
  %i.vd = fsub float 1.000000e+00, %i.vc
  %i.ve = load float, ptr %i.nc, align 4, !tbaa !29
  %i.vf = call float @llvm.fmuladd.f32(float %i.va, float %i.vd, float %i.ve)
  store float %i.vf, ptr %i.nc, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ax
  %i.vg = fadd float %i.qb, %i.qd                 ; 34 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 16
  %i.vi = load float, ptr %i.vh, align 8, !tbaa !809 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24 ; 16 uses
  %7 = load float, ptr %i.vj, align 8, !tbaa !811 ; 3 uses
  %i.vk = fcmp ogt float %7, %i.nt                ; 2 uses
  %8 = fsub float %7, %i.nt
  %9 = call float @llvm.fmuladd.f32(float %i.qb, float %8, float %i.qd)
  %.0307.i.i.i.i.i.i = select i1 %i.vk, float %9, float %i.qd ; 7 uses
  %.0303.i.i.i.i.i.i = select i1 %i.vk, float %7, float %i.nt ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 16 uses
  %11 = load float, ptr %10, align 4, !tbaa !799  ; 3 uses
  %12 = fcmp olt float %11, %i.nu                 ; 2 uses
  %13 = fsub float %11, %i.nt
  %14 = call float @llvm.fmuladd.f32(float %i.qb, float %13, float %i.qd)
  %.0305.i.i.i.i.i.i = select i1 %12, float %14, float %i.vg ; 7 uses
  %.0301.i.i.i.i.i.i = select i1 %12, float %11, float %i.nu ; 3 uses
  %i.vl = fcmp oge float %.0307.i.i.i.i.i.i, 0.000000e+00
  %i.vm = fcmp oge float %.0305.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.vl, i1 %i.vm, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.vn = fcmp olt float %.0307.i.i.i.i.i.i, %i.nr
  %i.vo = fcmp olt float %.0305.i.i.i.i.i.i, %i.nr
  %or.cond343.i.i.i.i.i.i = select i1 %i.vn, i1 %i.vo, i1 false
  br i1 %or.cond343.i.i.i.i.i.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.vp = fptosi float %.0307.i.i.i.i.i.i to i32  ; 5 uses
  %i.vq = fptosi float %.0305.i.i.i.i.i.i to i32  ; 3 uses
  %i.vr = icmp eq i32 %i.vp, %i.vq
  br i1 %i.vr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vs = fsub float %.0301.i.i.i.i.i.i, %.0303.i.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !801
  %i.vv = fmul float %i.vs, %i.vu                 ; 2 uses
  %i.vw = sitofp i32 %i.vp to float
  %i.vx = fadd float %i.vw, 1.000000e+00          ; 2 uses
  %i.vy = fsub float %i.vx, %.0307.i.i.i.i.i.i
  %i.vz = fsub float %i.vx, %.0305.i.i.i.i.i.i
  %i.wa = fadd float %i.vy, %i.vz
  %i.wb = fmul float %i.wa, 5.000000e-01
  %i.wc = fmul float %i.wb, %i.vv
  %i.wd = zext nneg i32 %i.vp to i64              ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.wd ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !29
  %i.wg = fadd float %i.wf, %i.wc
  store float %i.wg, ptr %i.we, align 4, !tbaa !29
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.wd ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !29
  %i.wj = fadd float %i.vv, %i.wi
  store float %i.wj, ptr %i.wh, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.wk = fcmp ogt float %.0307.i.i.i.i.i.i, %.0305.i.i.i.i.i.i
  br i1 %i.wk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wl = fsub float %i.nt, %.0303.i.i.i.i.i.i
  %i.wm = fadd float %i.nu, %i.wl
  %i.wn = fsub float %i.nt, %.0301.i.i.i.i.i.i
  %i.wo = fadd float %i.nu, %i.wn
  %i.wp = fneg float %i.vi
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi479.i.i.i.i.i.i = phi i32 [ %i.vp, %bb.cl ], [ %i.vq, %bb.ck ] ; 8 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.vq, %bb.cl ], [ %i.vp, %bb.ck ] ; 4 uses
  %.0309.i.i.i.i.i.i = phi float [ %i.vg, %bb.cl ], [ %i.qd, %bb.ck ] ; 2 uses
  %.1308.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i, %bb.cl ], [ %.0307.i.i.i.i.i.i, %bb.ck ]
  %.1306.i.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i.i, %bb.cl ], [ %.0305.i.i.i.i.i.i, %bb.ck ]
  %.1304.i.i.i.i.i.i = phi float [ %i.wo, %bb.cl ], [ %.0303.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.1302.i.i.i.i.i.i = phi float [ %i.wm, %bb.cl ], [ %.0301.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0300.i.i.i.i.i.i = phi float [ %i.wp, %bb.cl ], [ %i.vi, %bb.ck ] ; 4 uses
  %i.wq = add nuw i32 %.pre-phi.i.i.i.i.i.i, 1    ; 5 uses
  %i.wr = uitofp nneg i32 %i.wq to float          ; 2 uses
  %i.ws = fsub float %i.wr, %.0309.i.i.i.i.i.i
  %i.wt = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.ws, float %i.nt) ; 2 uses
  %i.wu = uitofp nneg i32 %.pre-phi479.i.i.i.i.i.i to float ; 3 uses
  %i.wv = fsub float %i.wu, %.0309.i.i.i.i.i.i
  %i.ww = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.wv, float %i.nt) ; 2 uses
  %i.wx = fcmp ogt float %i.wt, %i.nu
  %.0298.i.i.i.i.i.i = select i1 %i.wx, float %i.nu, float %i.wt ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !801 ; 4 uses
  %i.xa = fsub float %.0298.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.xb = fmul float %i.wz, %i.xa                 ; 5 uses
  %i.xc = fsub nnan float %i.wr, %.1308.i.i.i.i.i.i
  %i.xd = fmul float %i.xc, %i.xb
  %i.xe = fmul float %i.xd, 5.000000e-01
  %i.xf = zext nneg i32 %.pre-phi.i.i.i.i.i.i to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xf ; 2 uses
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !29
  %i.xi = fadd float %i.xh, %i.xe
  store float %i.xi, ptr %i.xg, align 4, !tbaa !29
  %i.xj = fcmp ogt float %i.ww, %i.nu
  br i1 %i.xj, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not342.i.i.i.i.i.i = icmp eq i32 %i.wq, %.pre-phi479.i.i.i.i.i.i
  %i.xk = sub nsw i32 %.pre-phi479.i.i.i.i.i.i, %i.wq
  %i.xl = fsub float %i.nu, %.0298.i.i.i.i.i.i
  %i.xm = sitofp i32 %i.xk to float
  %i.xn = fdiv float %i.xl, %i.xm
  %.1.i.i.i.i.i.i = select i1 %.not342.i.i.i.i.i.i, float %.0300.i.i.i.i.i.i, float %i.xn
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.2.i.i.i.i.i.i = phi float [ %.1.i.i.i.i.i.i, %bb.cn ], [ %.0300.i.i.i.i.i.i, %bb.cm ]
  %.0297.i.i.i.i.i.i = phi float [ %i.nu, %bb.cn ], [ %i.ww, %bb.cm ]
  %i.xo = fmul float %i.wz, %.2.i.i.i.i.i.i       ; 4 uses
  %i.xp = icmp slt i32 %i.wq, %.pre-phi479.i.i.i.i.i.i
  br i1 %i.xp, label %.lr.ph472.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.xq = fmul float %i.xo, 5.000000e-01          ; 3 uses
  %i.xr = zext i32 %i.wq to i64                   ; 3 uses
  %i.xs = add nsw i32 %.pre-phi479.i.i.i.i.i.i, -2
  %i.xt = sub nsw i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi479.i.i.i.i.i.i
  %i.xu = and i32 %i.xt, 1
  %lcmp.mod.not.not = icmp eq i32 %i.xu, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.xv = fadd float %i.xq, %i.xb
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xr ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !29
  %i.xy = fadd float %i.xv, %i.xx
  store float %i.xy, ptr %i.xw, align 4, !tbaa !29
  %i.xz = fadd float %i.xo, %i.xb                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nuw nsw i64 %i.xr, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %i.xr, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr = phi float [ %i.xb, %.lr.ph472.i.i.i.i.i.i ], [ %i.xz, %.prol.loopexit.unr-lcssa ]
  %.lcssa354.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.xz, %.prol.loopexit.unr-lcssa ]
  %i.ya = icmp eq i32 %i.xs, %.pre-phi.i.i.i.i.i.i
  br i1 %i.ya, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.yl, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.yb = fadd float %i.xq, %.0296471.i.i.i.i.i.i
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !29
  %i.ye = fadd float %i.yb, %i.yd
  store float %i.ye, ptr %i.yc, align 4, !tbaa !29
  %i.yf = fadd float %i.xo, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.yg = fadd float %i.xq, %i.yf
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !29
  %i.yk = fadd float %i.yg, %i.yj
  store float %i.yk, ptr %i.yi, align 4, !tbaa !29
  %i.yl = fadd float %i.xo, %i.yf                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %i.ym = trunc nuw i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %i.yn = icmp sgt i32 %.pre-phi479.i.i.i.i.i.i, %i.ym
  br i1 %i.yn, label %.lr.ph472.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !772

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xb, %bb.co ], [ %.lcssa354.unr, %.prol.loopexit ], [ %i.yl, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.yo = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %i.yp = fadd float %i.wu, 1.000000e+00          ; 2 uses
  %i.yq = fsub nnan float %i.yp, %i.wu
  %i.yr = fsub float %i.yp, %.1306.i.i.i.i.i.i
  %i.ys = fadd float %i.yq, %i.yr
  %i.yt = fmul float %i.ys, 5.000000e-01
  %i.yu = fmul float %i.yt, %i.yo
  %i.yv = call float @llvm.fmuladd.f32(float %i.wz, float %i.yu, float %.0296.lcssa.i.i.i.i.i.i)
  %i.yw = zext nneg i32 %.pre-phi479.i.i.i.i.i.i to i64 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.yw ; 2 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !29
  %i.yz = fadd float %i.yv, %i.yy
  store float %i.yz, ptr %i.yx, align 4, !tbaa !29
  %i.za = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.yw ; 2 uses
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !29
  %i.zd = call float @llvm.fmuladd.f32(float %i.wz, float %i.za, float %i.zc)
  store float %i.zd, ptr %i.zb, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.ns, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.ze = fsub float %i.vg, %i.qd
  %i.zf = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  %15 = insertelement <2 x float> poison, float %i.qd, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x float> poison, float %i.qb, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zg = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zh = uitofp nneg i32 %i.zg to float          ; 90 uses
  %i.zi = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zj = uitofp nneg i32 %i.zi to float          ; 60 uses
  %i.zk = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.zl = insertelement <2 x float> %i.zk, float %i.zj, i64 1
  %i.zm = fsub <2 x float> %i.zl, %16             ; 7 uses
  %i.zn = fdiv <2 x float> %i.zm, %18             ; 2 uses
  %i.zo = extractelement <2 x float> %i.zn, i64 0
  %i.zp = fadd float %i.zo, %i.nt                 ; 52 uses
  %i.zq = extractelement <2 x float> %i.zn, i64 1
  %i.zr = fadd float %i.zq, %i.nt                 ; 52 uses
  %i.zs = fcmp olt float %i.qd, %i.zh             ; 2 uses
  %i.zt = fcmp ogt float %i.vg, %i.zj             ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.zs, i1 %i.zt, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.zu = fcmp oeq float %i.zp, %i.nt
  br i1 %i.zu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zv = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.zw = fcmp olt float %i.zv, %i.nt
  br i1 %i.zw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zx = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.zy = fcmp olt float %i.zp, %i.zx
  br i1 %i.zy, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zz = fcmp ogt float %i.zx, %i.nt
  br i1 %i.zz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aaa = fsub float %i.zx, %i.nt
  %i.aab = extractelement <2 x float> %i.zm, i64 0
  %i.aac = fmul float %i.aab, %i.aaa
  %i.aad = fsub float %i.zp, %i.nt
  %i.aae = fdiv float %i.aac, %i.aad
  %i.aaf = fadd float %i.qd, %i.aae
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.057.i364.i.i.i.i.i.i = phi float [ %i.aaf, %bb.cv ], [ %i.qd, %bb.cu ] ; 4 uses
  %.056.i365.i.i.i.i.i.i = phi float [ %i.zx, %bb.cv ], [ %i.nt, %bb.cu ] ; 3 uses
  %i.aag = fcmp ogt float %i.zp, %i.zv
  br i1 %i.aag, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aah = fsub float %i.zh, %.057.i364.i.i.i.i.i.i
  %i.aai = fsub float %i.zv, %i.zp
  %i.aaj = fmul float %i.aai, %i.aah
  %i.aak = fsub float %i.zp, %.056.i365.i.i.i.i.i.i
  %i.aal = fdiv float %i.aaj, %i.aak
  %i.aam = fadd float %i.aal, %i.zh
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i366.i.i.i.i.i.i = phi float [ %i.aam, %bb.cx ], [ %i.zh, %bb.cw ] ; 3 uses
  %.0.i367.i.i.i.i.i.i = phi float [ %i.zv, %bb.cx ], [ %i.zp, %bb.cw ] ; 2 uses
  %i.aan = fcmp ugt float %.057.i364.i.i.i.i.i.i, %i.zh
  %i.aao = fcmp ugt float %.055.i366.i.i.i.i.i.i, %i.zh
  %or.cond64.i368.i.i.i.i.i.i = select i1 %i.aan, i1 true, i1 %i.aao
  br i1 %or.cond64.i368.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aap = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aaq = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !29
  %i.aat = call float @llvm.fmuladd.f32(float %i.aap, float %i.aaq, float %i.aas)
  store float %i.aat, ptr %i.aar, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.aau = fcmp ult float %.057.i364.i.i.i.i.i.i, %i.zj
  %i.aav = fcmp ult float %.055.i366.i.i.i.i.i.i, %i.zj
  %or.cond65.i369.i.i.i.i.i.i = select i1 %i.aau, i1 true, i1 %i.aav
  br i1 %or.cond65.i369.i.i.i.i.i.i, label %bb.db, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.aaw = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aax = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.aay = fmul float %i.aax, %i.aaw
  %i.aaz = fsub float %.057.i364.i.i.i.i.i.i, %i.zh
  %i.aba = fsub float %.055.i366.i.i.i.i.i.i, %i.zh
  %i.abb = fadd float %i.aaz, %i.aba
  %i.abc = fmul float %i.abb, 5.000000e-01
  %i.abd = fsub float 1.000000e+00, %i.abc
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !29
  %i.abg = call float @llvm.fmuladd.f32(float %i.aay, float %i.abd, float %i.abf)
  store float %i.abg, ptr %i.abe, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cr
  %i.abh = fcmp oeq float %i.zp, %i.zr
  br i1 %i.abh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.abi = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.abj = fcmp ogt float %i.zp, %i.abi
  br i1 %i.abj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abk = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.abl = fcmp olt float %i.zr, %i.abk
  br i1 %i.abl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.abm = fcmp olt float %i.zp, %i.abk
  br i1 %i.abm, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abn = fsub nnan float %i.zj, %i.zh
  %i.abo = fsub float %i.abk, %i.zp
  %i.abp = fmul float %i.abn, %i.abo
  %i.abq = fsub float %i.zr, %i.zp
  %i.abr = fdiv float %i.abp, %i.abq
  %i.abs = fadd float %i.abr, %i.zh
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.057.i371.i.i.i.i.i.i = phi float [ %i.abs, %bb.df ], [ %i.zh, %bb.de ] ; 4 uses
  %.056.i372.i.i.i.i.i.i = phi float [ %i.abk, %bb.df ], [ %i.zp, %bb.de ] ; 3 uses
  %i.abt = fcmp ogt float %i.zr, %i.abi
  br i1 %i.abt, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.abu = fsub float %i.zj, %.057.i371.i.i.i.i.i.i
  %i.abv = fsub float %i.abi, %i.zr
  %i.abw = fmul float %i.abv, %i.abu
  %i.abx = fsub float %i.zr, %.056.i372.i.i.i.i.i.i
  %i.aby = fdiv float %i.abw, %i.abx
  %i.abz = fadd float %i.aby, %i.zj
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.055.i373.i.i.i.i.i.i = phi float [ %i.abz, %bb.dh ], [ %i.zj, %bb.dg ] ; 3 uses
  %.0.i374.i.i.i.i.i.i = phi float [ %i.abi, %bb.dh ], [ %i.zr, %bb.dg ] ; 2 uses
  %i.aca = fcmp ugt float %.057.i371.i.i.i.i.i.i, %i.zh
  %i.acb = fcmp ugt float %.055.i373.i.i.i.i.i.i, %i.zh
  %or.cond64.i375.i.i.i.i.i.i = select i1 %i.aca, i1 true, i1 %i.acb
  br i1 %or.cond64.i375.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acc = load float, ptr %i.zf, align 4, !tbaa !801
  %i.acd = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !29
  %i.acg = call float @llvm.fmuladd.f32(float %i.acc, float %i.acd, float %i.acf)
  store float %i.acg, ptr %i.ace, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.ach = fcmp ult float %.057.i371.i.i.i.i.i.i, %i.zj
  %i.aci = fcmp ult float %.055.i373.i.i.i.i.i.i, %i.zj
  %or.cond65.i376.i.i.i.i.i.i = select i1 %i.ach, i1 true, i1 %i.aci
  br i1 %or.cond65.i376.i.i.i.i.i.i, label %bb.dl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.acj = load float, ptr %i.zf, align 4, !tbaa !801
  %i.ack = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.acl = fmul float %i.ack, %i.acj
  %i.acm = fsub float %.057.i371.i.i.i.i.i.i, %i.zh
  %i.acn = fsub float %.055.i373.i.i.i.i.i.i, %i.zh
  %i.aco = fadd float %i.acm, %i.acn
  %i.acp = fmul float %i.aco, 5.000000e-01
  %i.acq = fsub float 1.000000e+00, %i.acp
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !29
  %i.act = call float @llvm.fmuladd.f32(float %i.acl, float %i.acq, float %i.acs)
  store float %i.act, ptr %i.acr, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dd, %bb.dc, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.acu = fcmp oeq float %i.zr, %i.nu
  br i1 %i.acu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %i.acv = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.acw = fcmp ogt float %i.zr, %i.acv
  br i1 %i.acw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.acx = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.acy = fcmp olt float %i.nu, %i.acx
  br i1 %i.acy, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.acz = fcmp olt float %i.zr, %i.acx
  br i1 %i.acz, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ada = fsub float %i.vg, %i.zj
  %i.adb = fsub float %i.acx, %i.zr
  %i.adc = fmul float %i.ada, %i.adb
  %i.add = fsub float %i.nu, %i.zr
  %i.ade = fdiv float %i.adc, %i.add
  %i.adf = fadd float %i.ade, %i.zj
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.057.i378.i.i.i.i.i.i = phi float [ %i.adf, %bb.dp ], [ %i.zj, %bb.do ] ; 4 uses
  %.056.i379.i.i.i.i.i.i = phi float [ %i.acx, %bb.dp ], [ %i.zr, %bb.do ] ; 3 uses
  %i.adg = fcmp ogt float %i.nu, %i.acv
  br i1 %i.adg, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.adh = fsub float %i.vg, %.057.i378.i.i.i.i.i.i
  %i.adi = fsub float %i.acv, %i.nu
  %i.adj = fmul float %i.adi, %i.adh
  %i.adk = fsub float %i.nu, %.056.i379.i.i.i.i.i.i
  %i.adl = fdiv float %i.adj, %i.adk
  %i.adm = fadd float %i.vg, %i.adl
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.055.i380.i.i.i.i.i.i = phi float [ %i.adm, %bb.dr ], [ %i.vg, %bb.dq ] ; 3 uses
  %.0.i381.i.i.i.i.i.i = phi float [ %i.acv, %bb.dr ], [ %i.nu, %bb.dq ] ; 2 uses
  %i.adn = fcmp ugt float %.057.i378.i.i.i.i.i.i, %i.zh
  %i.ado = fcmp ugt float %.055.i380.i.i.i.i.i.i, %i.zh
  %or.cond64.i382.i.i.i.i.i.i = select i1 %i.adn, i1 true, i1 %i.ado
  br i1 %or.cond64.i382.i.i.i.i.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.adp = load float, ptr %i.zf, align 4, !tbaa !801
  %i.adq = fsub float %.0.i381.i.i.i.i.i.i, %.056.i379.i.i.i.i.i.i
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !29
  %i.adt = call float @llvm.fmuladd.f32(float %i.adp, float %i.adq, float %i.ads)
  store float %i.adt, ptr %i.adr, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.adu = fcmp ult float %.057.i378.i.i.i.i.i.i, %i.zj
  %i.adv = fcmp ult float %.055.i380.i.i.i.i.i.i, %i.zj
  %or.cond65.i383.i.i.i.i.i.i = select i1 %i.adu, i1 true, i1 %i.adv
  br i1 %or.cond65.i383.i.i.i.i.i.i, label %bb.dv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.adw = load float, ptr %i.zf, align 4, !tbaa !801
  %i.adx = fsub float %.0.i381.i.i.i.i.i.i, %.056.i379.i.i.i.i.i.i
  %i.ady = fmul float %i.adx, %i.adw
  %i.adz = fsub float %.057.i378.i.i.i.i.i.i, %i.zh
  %i.aea = fsub float %.055.i380.i.i.i.i.i.i, %i.zh
  %i.aeb = fadd float %i.adz, %i.aea
  %i.aec = fmul float %i.aeb, 5.000000e-01
  %i.aed = fsub float 1.000000e+00, %i.aec
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !29
  %i.aeg = call float @llvm.fmuladd.f32(float %i.ady, float %i.aed, float %i.aef)
  store float %i.aeg, ptr %i.aee, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.dw:                                            ; preds = %bb.cq
  %i.aeh = fcmp olt float %i.vg, %i.zh            ; 2 uses
  %i.aei = fcmp ogt float %i.qd, %i.zj            ; 2 uses
  %or.cond345.i.i.i.i.i.i = select i1 %i.aeh, i1 %i.aei, i1 false
  br i1 %or.cond345.i.i.i.i.i.i, label %bb.dx, label %bb.fc

bb.dx:                                            ; preds = %bb.dw
  %i.aej = fcmp oeq float %i.zr, %i.nt
  br i1 %i.aej, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aek = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.ael = fcmp olt float %i.aek, %i.nt
  br i1 %i.ael, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aem = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.aen = fcmp olt float %i.zr, %i.aem
  br i1 %i.aen, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aeo = fcmp ogt float %i.aem, %i.nt
  br i1 %i.aeo, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aep = fsub float %i.aem, %i.nt
  %i.aeq = extractelement <2 x float> %i.zm, i64 1
  %i.aer = fmul float %i.aeq, %i.aep
  %i.aes = fsub float %i.zr, %i.nt
  %i.aet = fdiv float %i.aer, %i.aes
  %i.aeu = fadd float %i.qd, %i.aet
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.057.i385.i.i.i.i.i.i = phi float [ %i.aeu, %bb.eb ], [ %i.qd, %bb.ea ] ; 4 uses
  %.056.i386.i.i.i.i.i.i = phi float [ %i.aem, %bb.eb ], [ %i.nt, %bb.ea ] ; 3 uses
  %i.aev = fcmp ogt float %i.zr, %i.aek
  br i1 %i.aev, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aew = fsub float %i.zj, %.057.i385.i.i.i.i.i.i
  %i.aex = fsub float %i.aek, %i.zr
  %i.aey = fmul float %i.aex, %i.aew
  %i.aez = fsub float %i.zr, %.056.i386.i.i.i.i.i.i
  %i.afa = fdiv float %i.aey, %i.aez
  %i.afb = fadd float %i.afa, %i.zj
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.055.i387.i.i.i.i.i.i = phi float [ %i.afb, %bb.ed ], [ %i.zj, %bb.ec ] ; 3 uses
  %.0.i388.i.i.i.i.i.i = phi float [ %i.aek, %bb.ed ], [ %i.zr, %bb.ec ] ; 2 uses
  %i.afc = fcmp ugt float %.057.i385.i.i.i.i.i.i, %i.zh
  %i.afd = fcmp ugt float %.055.i387.i.i.i.i.i.i, %i.zh
  %or.cond64.i389.i.i.i.i.i.i = select i1 %i.afc, i1 true, i1 %i.afd
  br i1 %or.cond64.i389.i.i.i.i.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.afe = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aff = fsub float %.0.i388.i.i.i.i.i.i, %.056.i386.i.i.i.i.i.i
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !29
  %i.afi = call float @llvm.fmuladd.f32(float %i.afe, float %i.aff, float %i.afh)
  store float %i.afi, ptr %i.afg, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.afj = fcmp ult float %.057.i385.i.i.i.i.i.i, %i.zj
  %i.afk = fcmp ult float %.055.i387.i.i.i.i.i.i, %i.zj
  %or.cond65.i390.i.i.i.i.i.i = select i1 %i.afj, i1 true, i1 %i.afk
  br i1 %or.cond65.i390.i.i.i.i.i.i, label %bb.eh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.afl = load float, ptr %i.zf, align 4, !tbaa !801
  %i.afm = fsub float %.0.i388.i.i.i.i.i.i, %.056.i386.i.i.i.i.i.i
  %i.afn = fmul float %i.afm, %i.afl
  %i.afo = fsub float %.057.i385.i.i.i.i.i.i, %i.zh
  %i.afp = fsub float %.055.i387.i.i.i.i.i.i, %i.zh
  %i.afq = fadd float %i.afo, %i.afp
  %i.afr = fmul float %i.afq, 5.000000e-01
  %i.afs = fsub float 1.000000e+00, %i.afr
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !29
  %i.afv = call float @llvm.fmuladd.f32(float %i.afn, float %i.afs, float %i.afu)
  store float %i.afv, ptr %i.aft, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.dz, %bb.dy, %bb.dx
  %i.afw = fcmp oeq float %i.zr, %i.zp
  br i1 %i.afw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i
  %i.afx = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.afy = fcmp ogt float %i.zr, %i.afx
  br i1 %i.afy, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.afz = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.aga = fcmp olt float %i.zp, %i.afz
  br i1 %i.aga, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.agb = fcmp olt float %i.zr, %i.afz
  br i1 %i.agb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.agc = fsub nnan float %i.zh, %i.zj
  %i.agd = fsub float %i.afz, %i.zr
  %i.age = fmul float %i.agc, %i.agd
  %i.agf = fsub float %i.zp, %i.zr
  %i.agg = fdiv float %i.age, %i.agf
  %i.agh = fadd float %i.agg, %i.zj
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.057.i392.i.i.i.i.i.i = phi float [ %i.agh, %bb.el ], [ %i.zj, %bb.ek ] ; 4 uses
  %.056.i393.i.i.i.i.i.i = phi float [ %i.afz, %bb.el ], [ %i.zr, %bb.ek ] ; 3 uses
  %i.agi = fcmp ogt float %i.zp, %i.afx
  br i1 %i.agi, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agj = fsub float %i.zh, %.057.i392.i.i.i.i.i.i
  %i.agk = fsub float %i.afx, %i.zp
  %i.agl = fmul float %i.agk, %i.agj
  %i.agm = fsub float %i.zp, %.056.i393.i.i.i.i.i.i
  %i.agn = fdiv float %i.agl, %i.agm
  %i.ago = fadd float %i.agn, %i.zh
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.055.i394.i.i.i.i.i.i = phi float [ %i.ago, %bb.en ], [ %i.zh, %bb.em ] ; 3 uses
  %.0.i395.i.i.i.i.i.i = phi float [ %i.afx, %bb.en ], [ %i.zp, %bb.em ] ; 2 uses
  %i.agp = fcmp ugt float %.057.i392.i.i.i.i.i.i, %i.zh
  %i.agq = fcmp ugt float %.055.i394.i.i.i.i.i.i, %i.zh
  %or.cond64.i396.i.i.i.i.i.i = select i1 %i.agp, i1 true, i1 %i.agq
  br i1 %or.cond64.i396.i.i.i.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.agr = load float, ptr %i.zf, align 4, !tbaa !801
  %i.ags = fsub float %.0.i395.i.i.i.i.i.i, %.056.i393.i.i.i.i.i.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !29
  %i.agv = call float @llvm.fmuladd.f32(float %i.agr, float %i.ags, float %i.agu)
  store float %i.agv, ptr %i.agt, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.agw = fcmp ult float %.057.i392.i.i.i.i.i.i, %i.zj
  %i.agx = fcmp ult float %.055.i394.i.i.i.i.i.i, %i.zj
  %or.cond65.i397.i.i.i.i.i.i = select i1 %i.agw, i1 true, i1 %i.agx
  br i1 %or.cond65.i397.i.i.i.i.i.i, label %bb.er, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.agy = load float, ptr %i.zf, align 4, !tbaa !801
  %i.agz = fsub float %.0.i395.i.i.i.i.i.i, %.056.i393.i.i.i.i.i.i
  %i.aha = fmul float %i.agz, %i.agy
  %i.ahb = fsub float %.057.i392.i.i.i.i.i.i, %i.zh
  %i.ahc = fsub float %.055.i394.i.i.i.i.i.i, %i.zh
  %i.ahd = fadd float %i.ahb, %i.ahc
  %i.ahe = fmul float %i.ahd, 5.000000e-01
  %i.ahf = fsub float 1.000000e+00, %i.ahe
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !29
  %i.ahi = call float @llvm.fmuladd.f32(float %i.aha, float %i.ahf, float %i.ahh)
  store float %i.ahi, ptr %i.ahg, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i: ; preds = %bb.er, %bb.eq, %bb.ep, %bb.ej, %bb.ei, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i
  %i.ahj = fcmp oeq float %i.zp, %i.nu
  br i1 %i.ahj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i
  %i.ahk = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.ahl = fcmp ogt float %i.zp, %i.ahk
  br i1 %i.ahl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahm = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ahn = fcmp olt float %i.nu, %i.ahm
  br i1 %i.ahn, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aho = fcmp olt float %i.zp, %i.ahm
  br i1 %i.aho, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ahp = fsub float %i.vg, %i.zh
  %i.ahq = fsub float %i.ahm, %i.zp
  %i.ahr = fmul float %i.ahp, %i.ahq
  %i.ahs = fsub float %i.nu, %i.zp
  %i.aht = fdiv float %i.ahr, %i.ahs
  %i.ahu = fadd float %i.aht, %i.zh
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.057.i399.i.i.i.i.i.i = phi float [ %i.ahu, %bb.ev ], [ %i.zh, %bb.eu ] ; 4 uses
  %.056.i400.i.i.i.i.i.i = phi float [ %i.ahm, %bb.ev ], [ %i.zp, %bb.eu ] ; 3 uses
  %i.ahv = fcmp ogt float %i.nu, %i.ahk
  br i1 %i.ahv, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ahw = fsub float %i.vg, %.057.i399.i.i.i.i.i.i
  %i.ahx = fsub float %i.ahk, %i.nu
  %i.ahy = fmul float %i.ahx, %i.ahw
  %i.ahz = fsub float %i.nu, %.056.i400.i.i.i.i.i.i
  %i.aia = fdiv float %i.ahy, %i.ahz
  %i.aib = fadd float %i.vg, %i.aia
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.055.i401.i.i.i.i.i.i = phi float [ %i.aib, %bb.ex ], [ %i.vg, %bb.ew ] ; 3 uses
  %.0.i402.i.i.i.i.i.i = phi float [ %i.ahk, %bb.ex ], [ %i.nu, %bb.ew ] ; 2 uses
  %i.aic = fcmp ugt float %.057.i399.i.i.i.i.i.i, %i.zh
  %i.aid = fcmp ugt float %.055.i401.i.i.i.i.i.i, %i.zh
  %or.cond64.i403.i.i.i.i.i.i = select i1 %i.aic, i1 true, i1 %i.aid
  br i1 %or.cond64.i403.i.i.i.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aie = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aif = fsub float %.0.i402.i.i.i.i.i.i, %.056.i400.i.i.i.i.i.i
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !29
  %i.aii = call float @llvm.fmuladd.f32(float %i.aie, float %i.aif, float %i.aih)
  store float %i.aii, ptr %i.aig, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.aij = fcmp ult float %.057.i399.i.i.i.i.i.i, %i.zj
  %i.aik = fcmp ult float %.055.i401.i.i.i.i.i.i, %i.zj
  %or.cond65.i404.i.i.i.i.i.i = select i1 %i.aij, i1 true, i1 %i.aik
  br i1 %or.cond65.i404.i.i.i.i.i.i, label %bb.fb, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.ail = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aim = fsub float %.0.i402.i.i.i.i.i.i, %.056.i400.i.i.i.i.i.i
  %i.ain = fmul float %i.aim, %i.ail
  %i.aio = fsub float %.057.i399.i.i.i.i.i.i, %i.zh
  %i.aip = fsub float %.055.i401.i.i.i.i.i.i, %i.zh
  %i.aiq = fadd float %i.aio, %i.aip
  %i.air = fmul float %i.aiq, 5.000000e-01
  %i.ais = fsub float 1.000000e+00, %i.air
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !29
  %i.aiv = call float @llvm.fmuladd.f32(float %i.ain, float %i.ais, float %i.aiu)
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.dw
  %i.aiw = fcmp ogt float %i.vg, %i.zh
  %or.cond346.i.i.i.i.i.i = and i1 %i.zs, %i.aiw
  br i1 %or.cond346.i.i.i.i.i.i, label %bb.fd, label %bb.fy

bb.fd:                                            ; preds = %bb.fc
  %i.aix = fcmp oeq float %i.zp, %i.nt
  br i1 %i.aix, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aiy = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.aiz = fcmp olt float %i.aiy, %i.nt
  br i1 %i.aiz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aja = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ajb = fcmp olt float %i.zp, %i.aja
  br i1 %i.ajb, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ajc = fcmp ogt float %i.aja, %i.nt
  br i1 %i.ajc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ajd = fsub float %i.aja, %i.nt
  %i.aje = extractelement <2 x float> %i.zm, i64 0
  %i.ajf = fmul float %i.aje, %i.ajd
  %i.ajg = fsub float %i.zp, %i.nt
  %i.ajh = fdiv float %i.ajf, %i.ajg
  %i.aji = fadd float %i.qd, %i.ajh
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.057.i406.i.i.i.i.i.i = phi float [ %i.aji, %bb.fh ], [ %i.qd, %bb.fg ] ; 4 uses
  %.056.i407.i.i.i.i.i.i = phi float [ %i.aja, %bb.fh ], [ %i.nt, %bb.fg ] ; 3 uses
  %i.ajj = fcmp ogt float %i.zp, %i.aiy
  br i1 %i.ajj, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ajk = fsub float %i.zh, %.057.i406.i.i.i.i.i.i
  %i.ajl = fsub float %i.aiy, %i.zp
  %i.ajm = fmul float %i.ajl, %i.ajk
  %i.ajn = fsub float %i.zp, %.056.i407.i.i.i.i.i.i
  %i.ajo = fdiv float %i.ajm, %i.ajn
  %i.ajp = fadd float %i.ajo, %i.zh
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.055.i408.i.i.i.i.i.i = phi float [ %i.ajp, %bb.fj ], [ %i.zh, %bb.fi ] ; 3 uses
  %.0.i409.i.i.i.i.i.i = phi float [ %i.aiy, %bb.fj ], [ %i.zp, %bb.fi ] ; 2 uses
  %i.ajq = fcmp ugt float %.057.i406.i.i.i.i.i.i, %i.zh
  %i.ajr = fcmp ugt float %.055.i408.i.i.i.i.i.i, %i.zh
  %or.cond64.i410.i.i.i.i.i.i = select i1 %i.ajq, i1 true, i1 %i.ajr
  br i1 %or.cond64.i410.i.i.i.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ajs = load float, ptr %i.zf, align 4, !tbaa !801
  %i.ajt = fsub float %.0.i409.i.i.i.i.i.i, %.056.i407.i.i.i.i.i.i
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !29
  %i.ajw = call float @llvm.fmuladd.f32(float %i.ajs, float %i.ajt, float %i.ajv)
  store float %i.ajw, ptr %i.aju, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fk
  %i.ajx = fcmp ult float %.057.i406.i.i.i.i.i.i, %i.zj
  %i.ajy = fcmp ult float %.055.i408.i.i.i.i.i.i, %i.zj
  %or.cond65.i411.i.i.i.i.i.i = select i1 %i.ajx, i1 true, i1 %i.ajy
  br i1 %or.cond65.i411.i.i.i.i.i.i, label %bb.fn, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.ajz = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aka = fsub float %.0.i409.i.i.i.i.i.i, %.056.i407.i.i.i.i.i.i
  %i.akb = fmul float %i.aka, %i.ajz
  %i.akc = fsub float %.057.i406.i.i.i.i.i.i, %i.zh
  %i.akd = fsub float %.055.i408.i.i.i.i.i.i, %i.zh
  %i.ake = fadd float %i.akc, %i.akd
  %i.akf = fmul float %i.ake, 5.000000e-01
  %i.akg = fsub float 1.000000e+00, %i.akf
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !29
  %i.akj = call float @llvm.fmuladd.f32(float %i.akb, float %i.akg, float %i.aki)
  store float %i.akj, ptr %i.akh, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i: ; preds = %bb.fn, %bb.fm, %bb.fl, %bb.ff, %bb.fe, %bb.fd
  %i.akk = fcmp oeq float %i.zp, %i.nu
  br i1 %i.akk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i
  %i.akl = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.akm = fcmp ogt float %i.zp, %i.akl
  br i1 %i.akm, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.akn = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ako = fcmp olt float %i.nu, %i.akn
  br i1 %i.ako, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.akp = fcmp olt float %i.zp, %i.akn
  br i1 %i.akp, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.akq = fsub float %i.vg, %i.zh
  %i.akr = fsub float %i.akn, %i.zp
  %i.aks = fmul float %i.akq, %i.akr
  %i.akt = fsub float %i.nu, %i.zp
  %i.aku = fdiv float %i.aks, %i.akt
  %i.akv = fadd float %i.aku, %i.zh
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.057.i413.i.i.i.i.i.i = phi float [ %i.akv, %bb.fr ], [ %i.zh, %bb.fq ] ; 4 uses
  %.056.i414.i.i.i.i.i.i = phi float [ %i.akn, %bb.fr ], [ %i.zp, %bb.fq ] ; 3 uses
  %i.akw = fcmp ogt float %i.nu, %i.akl
  br i1 %i.akw, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.akx = fsub float %i.vg, %.057.i413.i.i.i.i.i.i
  %i.aky = fsub float %i.akl, %i.nu
  %i.akz = fmul float %i.aky, %i.akx
  %i.ala = fsub float %i.nu, %.056.i414.i.i.i.i.i.i
  %i.alb = fdiv float %i.akz, %i.ala
  %i.alc = fadd float %i.vg, %i.alb
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.055.i415.i.i.i.i.i.i = phi float [ %i.alc, %bb.ft ], [ %i.vg, %bb.fs ] ; 3 uses
  %.0.i416.i.i.i.i.i.i = phi float [ %i.akl, %bb.ft ], [ %i.nu, %bb.fs ] ; 2 uses
  %i.ald = fcmp ugt float %.057.i413.i.i.i.i.i.i, %i.zh
  %i.ale = fcmp ugt float %.055.i415.i.i.i.i.i.i, %i.zh
  %or.cond64.i417.i.i.i.i.i.i = select i1 %i.ald, i1 true, i1 %i.ale
  br i1 %or.cond64.i417.i.i.i.i.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.alf = load float, ptr %i.zf, align 4, !tbaa !801
  %i.alg = fsub float %.0.i416.i.i.i.i.i.i, %.056.i414.i.i.i.i.i.i
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !29
  %i.alj = call float @llvm.fmuladd.f32(float %i.alf, float %i.alg, float %i.ali)
  store float %i.alj, ptr %i.alh, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.fu
  %i.alk = fcmp ult float %.057.i413.i.i.i.i.i.i, %i.zj
  %i.all = fcmp ult float %.055.i415.i.i.i.i.i.i, %i.zj
  %or.cond65.i418.i.i.i.i.i.i = select i1 %i.alk, i1 true, i1 %i.all
  br i1 %or.cond65.i418.i.i.i.i.i.i, label %bb.fx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.alm = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aln = fsub float %.0.i416.i.i.i.i.i.i, %.056.i414.i.i.i.i.i.i
  %i.alo = fmul float %i.aln, %i.alm
  %i.alp = fsub float %.057.i413.i.i.i.i.i.i, %i.zh
  %i.alq = fsub float %.055.i415.i.i.i.i.i.i, %i.zh
  %i.alr = fadd float %i.alp, %i.alq
  %i.als = fmul float %i.alr, 5.000000e-01
  %i.alt = fsub float 1.000000e+00, %i.als
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !29
  %i.alw = call float @llvm.fmuladd.f32(float %i.alo, float %i.alt, float %i.alv)
  store float %i.alw, ptr %i.alu, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fc
  %i.alx = fcmp ogt float %i.qd, %i.zh
  %or.cond347.i.i.i.i.i.i = and i1 %i.aeh, %i.alx
  br i1 %or.cond347.i.i.i.i.i.i, label %bb.fz, label %bb.gu

bb.fz:                                            ; preds = %bb.fy
  %i.aly = fcmp oeq float %i.zp, %i.nt
  br i1 %i.aly, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.alz = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.ama = fcmp olt float %i.alz, %i.nt
  br i1 %i.ama, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.amb = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.amc = fcmp olt float %i.zp, %i.amb
  br i1 %i.amc, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.amd = fcmp ogt float %i.amb, %i.nt
  br i1 %i.amd, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.ame = fsub float %i.amb, %i.nt
  %i.amf = extractelement <2 x float> %i.zm, i64 0
  %i.amg = fmul float %i.amf, %i.ame
  %i.amh = fsub float %i.zp, %i.nt
  %i.ami = fdiv float %i.amg, %i.amh
  %i.amj = fadd float %i.qd, %i.ami
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.057.i420.i.i.i.i.i.i = phi float [ %i.amj, %bb.gd ], [ %i.qd, %bb.gc ] ; 4 uses
  %.056.i421.i.i.i.i.i.i = phi float [ %i.amb, %bb.gd ], [ %i.nt, %bb.gc ] ; 3 uses
  %i.amk = fcmp ogt float %i.zp, %i.alz
  br i1 %i.amk, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aml = fsub float %i.zh, %.057.i420.i.i.i.i.i.i
  %i.amm = fsub float %i.alz, %i.zp
  %i.amn = fmul float %i.amm, %i.aml
  %i.amo = fsub float %i.zp, %.056.i421.i.i.i.i.i.i
  %i.amp = fdiv float %i.amn, %i.amo
  %i.amq = fadd float %i.amp, %i.zh
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.055.i422.i.i.i.i.i.i = phi float [ %i.amq, %bb.gf ], [ %i.zh, %bb.ge ] ; 3 uses
  %.0.i423.i.i.i.i.i.i = phi float [ %i.alz, %bb.gf ], [ %i.zp, %bb.ge ] ; 2 uses
  %i.amr = fcmp ugt float %.057.i420.i.i.i.i.i.i, %i.zh
  %i.ams = fcmp ugt float %.055.i422.i.i.i.i.i.i, %i.zh
  %or.cond64.i424.i.i.i.i.i.i = select i1 %i.amr, i1 true, i1 %i.ams
  br i1 %or.cond64.i424.i.i.i.i.i.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.amt = load float, ptr %i.zf, align 4, !tbaa !801
  %i.amu = fsub float %.0.i423.i.i.i.i.i.i, %.056.i421.i.i.i.i.i.i
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !29
  %i.amx = call float @llvm.fmuladd.f32(float %i.amt, float %i.amu, float %i.amw)
  store float %i.amx, ptr %i.amv, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gg
  %i.amy = fcmp ult float %.057.i420.i.i.i.i.i.i, %i.zj
  %i.amz = fcmp ult float %.055.i422.i.i.i.i.i.i, %i.zj
  %or.cond65.i425.i.i.i.i.i.i = select i1 %i.amy, i1 true, i1 %i.amz
  br i1 %or.cond65.i425.i.i.i.i.i.i, label %bb.gj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.ana = load float, ptr %i.zf, align 4, !tbaa !801
  %i.anb = fsub float %.0.i423.i.i.i.i.i.i, %.056.i421.i.i.i.i.i.i
  %i.anc = fmul float %i.anb, %i.ana
  %i.and = fsub float %.057.i420.i.i.i.i.i.i, %i.zh
  %i.ane = fsub float %.055.i422.i.i.i.i.i.i, %i.zh
  %i.anf = fadd float %i.and, %i.ane
  %i.ang = fmul float %i.anf, 5.000000e-01
  %i.anh = fsub float 1.000000e+00, %i.ang
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !29
  %i.ank = call float @llvm.fmuladd.f32(float %i.anc, float %i.anh, float %i.anj)
  store float %i.ank, ptr %i.ani, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i: ; preds = %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz
  %i.anl = fcmp oeq float %i.zp, %i.nu
  br i1 %i.anl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i
  %i.anm = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.ann = fcmp ogt float %i.zp, %i.anm
  br i1 %i.ann, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ano = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.anp = fcmp olt float %i.nu, %i.ano
  br i1 %i.anp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.anq = fcmp olt float %i.zp, %i.ano
  br i1 %i.anq, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.anr = fsub float %i.vg, %i.zh
  %i.ans = fsub float %i.ano, %i.zp
  %i.ant = fmul float %i.anr, %i.ans
  %i.anu = fsub float %i.nu, %i.zp
  %i.anv = fdiv float %i.ant, %i.anu
  %i.anw = fadd float %i.anv, %i.zh
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.057.i427.i.i.i.i.i.i = phi float [ %i.anw, %bb.gn ], [ %i.zh, %bb.gm ] ; 4 uses
  %.056.i428.i.i.i.i.i.i = phi float [ %i.ano, %bb.gn ], [ %i.zp, %bb.gm ] ; 3 uses
  %i.anx = fcmp ogt float %i.nu, %i.anm
  br i1 %i.anx, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.any = fsub float %i.vg, %.057.i427.i.i.i.i.i.i
  %i.anz = fsub float %i.anm, %i.nu
  %i.aoa = fmul float %i.anz, %i.any
  %i.aob = fsub float %i.nu, %.056.i428.i.i.i.i.i.i
  %i.aoc = fdiv float %i.aoa, %i.aob
  %i.aod = fadd float %i.vg, %i.aoc
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.055.i429.i.i.i.i.i.i = phi float [ %i.aod, %bb.gp ], [ %i.vg, %bb.go ] ; 3 uses
  %.0.i430.i.i.i.i.i.i = phi float [ %i.anm, %bb.gp ], [ %i.nu, %bb.go ] ; 2 uses
  %i.aoe = fcmp ugt float %.057.i427.i.i.i.i.i.i, %i.zh
  %i.aof = fcmp ugt float %.055.i429.i.i.i.i.i.i, %i.zh
  %or.cond64.i431.i.i.i.i.i.i = select i1 %i.aoe, i1 true, i1 %i.aof
  br i1 %or.cond64.i431.i.i.i.i.i.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aog = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aoh = fsub float %.0.i430.i.i.i.i.i.i, %.056.i428.i.i.i.i.i.i
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !29
  %i.aok = call float @llvm.fmuladd.f32(float %i.aog, float %i.aoh, float %i.aoj)
  store float %i.aok, ptr %i.aoi, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.gs:                                            ; preds = %bb.gq
  %i.aol = fcmp ult float %.057.i427.i.i.i.i.i.i, %i.zj
  %i.aom = fcmp ult float %.055.i429.i.i.i.i.i.i, %i.zj
  %or.cond65.i432.i.i.i.i.i.i = select i1 %i.aol, i1 true, i1 %i.aom
  br i1 %or.cond65.i432.i.i.i.i.i.i, label %bb.gt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.gt:                                            ; preds = %bb.gs
  %i.aon = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aoo = fsub float %.0.i430.i.i.i.i.i.i, %.056.i428.i.i.i.i.i.i
  %i.aop = fmul float %i.aoo, %i.aon
  %i.aoq = fsub float %.057.i427.i.i.i.i.i.i, %i.zh
  %i.aor = fsub float %.055.i429.i.i.i.i.i.i, %i.zh
  %i.aos = fadd float %i.aoq, %i.aor
  %i.aot = fmul float %i.aos, 5.000000e-01
  %i.aou = fsub float 1.000000e+00, %i.aot
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !29
  %i.aox = call float @llvm.fmuladd.f32(float %i.aop, float %i.aou, float %i.aow)
  store float %i.aox, ptr %i.aov, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.fy
  %i.aoy = fcmp olt float %i.qd, %i.zj
  %or.cond348.i.i.i.i.i.i = and i1 %i.aoy, %i.zt
  br i1 %or.cond348.i.i.i.i.i.i, label %bb.gv, label %bb.hq

bb.gv:                                            ; preds = %bb.gu
  %i.aoz = fcmp oeq float %i.zr, %i.nt
  br i1 %i.aoz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.apa = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.apb = fcmp olt float %i.apa, %i.nt
  br i1 %i.apb, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.apc = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.apd = fcmp olt float %i.zr, %i.apc
  br i1 %i.apd, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ape = fcmp ogt float %i.apc, %i.nt
  br i1 %i.ape, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.apf = fsub float %i.apc, %i.nt
  %i.apg = extractelement <2 x float> %i.zm, i64 1
  %i.aph = fmul float %i.apg, %i.apf
  %i.api = fsub float %i.zr, %i.nt
  %i.apj = fdiv float %i.aph, %i.api
  %i.apk = fadd float %i.qd, %i.apj
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.057.i434.i.i.i.i.i.i = phi float [ %i.apk, %bb.gz ], [ %i.qd, %bb.gy ] ; 4 uses
  %.056.i435.i.i.i.i.i.i = phi float [ %i.apc, %bb.gz ], [ %i.nt, %bb.gy ] ; 3 uses
  %i.apl = fcmp ogt float %i.zr, %i.apa
  br i1 %i.apl, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.apm = fsub float %i.zj, %.057.i434.i.i.i.i.i.i
  %i.apn = fsub float %i.apa, %i.zr
  %i.apo = fmul float %i.apn, %i.apm
  %i.app = fsub float %i.zr, %.056.i435.i.i.i.i.i.i
  %i.apq = fdiv float %i.apo, %i.app
  %i.apr = fadd float %i.apq, %i.zj
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.055.i436.i.i.i.i.i.i = phi float [ %i.apr, %bb.hb ], [ %i.zj, %bb.ha ] ; 3 uses
  %.0.i437.i.i.i.i.i.i = phi float [ %i.apa, %bb.hb ], [ %i.zr, %bb.ha ] ; 2 uses
  %i.aps = fcmp ugt float %.057.i434.i.i.i.i.i.i, %i.zh
  %i.apt = fcmp ugt float %.055.i436.i.i.i.i.i.i, %i.zh
  %or.cond64.i438.i.i.i.i.i.i = select i1 %i.aps, i1 true, i1 %i.apt
  br i1 %or.cond64.i438.i.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.apu = load float, ptr %i.zf, align 4, !tbaa !801
  %i.apv = fsub float %.0.i437.i.i.i.i.i.i, %.056.i435.i.i.i.i.i.i
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !29
  %i.apy = call float @llvm.fmuladd.f32(float %i.apu, float %i.apv, float %i.apx)
  store float %i.apy, ptr %i.apw, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  %i.apz = fcmp ult float %.057.i434.i.i.i.i.i.i, %i.zj
  %i.aqa = fcmp ult float %.055.i436.i.i.i.i.i.i, %i.zj
  %or.cond65.i439.i.i.i.i.i.i = select i1 %i.apz, i1 true, i1 %i.aqa
  br i1 %or.cond65.i439.i.i.i.i.i.i, label %bb.hf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.he
  %i.aqb = load float, ptr %i.zf, align 4, !tbaa !801
  %i.aqc = fsub float %.0.i437.i.i.i.i.i.i, %.056.i435.i.i.i.i.i.i
  %i.aqd = fmul float %i.aqc, %i.aqb
  %i.aqe = fsub float %.057.i434.i.i.i.i.i.i, %i.zh
  %i.aqf = fsub float %.055.i436.i.i.i.i.i.i, %i.zh
  %i.aqg = fadd float %i.aqe, %i.aqf
  %i.aqh = fmul float %i.aqg, 5.000000e-01
  %i.aqi = fsub float 1.000000e+00, %i.aqh
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !29
  %i.aql = call float @llvm.fmuladd.f32(float %i.aqd, float %i.aqi, float %i.aqk)
  store float %i.aql, ptr %i.aqj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i: ; preds = %bb.hf, %bb.he, %bb.hd, %bb.gx, %bb.gw, %bb.gv
  %i.aqm = fcmp oeq float %i.zr, %i.nu
  br i1 %i.aqm, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i
  %i.aqn = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.aqo = fcmp ogt float %i.zr, %i.aqn
  br i1 %i.aqo, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aqp = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.aqq = fcmp olt float %i.nu, %i.aqp
  br i1 %i.aqq, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aqr = fcmp olt float %i.zr, %i.aqp
  br i1 %i.aqr, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aqs = fsub float %i.vg, %i.zj
  %i.aqt = fsub float %i.aqp, %i.zr
  %i.aqu = fmul float %i.aqs, %i.aqt
  %i.aqv = fsub float %i.nu, %i.zr
  %i.aqw = fdiv float %i.aqu, %i.aqv
  %i.aqx = fadd float %i.aqw, %i.zj
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.057.i441.i.i.i.i.i.i = phi float [ %i.aqx, %bb.hj ], [ %i.zj, %bb.hi ] ; 4 uses
  %.056.i442.i.i.i.i.i.i = phi float [ %i.aqp, %bb.hj ], [ %i.zr, %bb.hi ] ; 3 uses
  %i.aqy = fcmp ogt float %i.nu, %i.aqn
  br i1 %i.aqy, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aqz = fsub float %i.vg, %.057.i441.i.i.i.i.i.i
  %i.ara = fsub float %i.aqn, %i.nu
  %i.arb = fmul float %i.ara, %i.aqz
  %i.arc = fsub float %i.nu, %.056.i442.i.i.i.i.i.i
  %i.ard = fdiv float %i.arb, %i.arc
  %i.are = fadd float %i.vg, %i.ard
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.055.i443.i.i.i.i.i.i = phi float [ %i.are, %bb.hl ], [ %i.vg, %bb.hk ] ; 3 uses
  %.0.i444.i.i.i.i.i.i = phi float [ %i.aqn, %bb.hl ], [ %i.nu, %bb.hk ] ; 2 uses
  %i.arf = fcmp ugt float %.057.i441.i.i.i.i.i.i, %i.zh
  %i.arg = fcmp ugt float %.055.i443.i.i.i.i.i.i, %i.zh
  %or.cond64.i445.i.i.i.i.i.i = select i1 %i.arf, i1 true, i1 %i.arg
  br i1 %or.cond64.i445.i.i.i.i.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.arh = load float, ptr %i.zf, align 4, !tbaa !801
  %i.ari = fsub float %.0.i444.i.i.i.i.i.i, %.056.i442.i.i.i.i.i.i
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !29
  %i.arl = call float @llvm.fmuladd.f32(float %i.arh, float %i.ari, float %i.ark)
  store float %i.arl, ptr %i.arj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hm
  %i.arm = fcmp ult float %.057.i441.i.i.i.i.i.i, %i.zj
  %i.arn = fcmp ult float %.055.i443.i.i.i.i.i.i, %i.zj
  %or.cond65.i446.i.i.i.i.i.i = select i1 %i.arm, i1 true, i1 %i.arn
  br i1 %or.cond65.i446.i.i.i.i.i.i, label %bb.hp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.hp:                                            ; preds = %bb.ho
  %i.aro = load float, ptr %i.zf, align 4, !tbaa !801
  %i.arp = fsub float %.0.i444.i.i.i.i.i.i, %.056.i442.i.i.i.i.i.i
  %i.arq = fmul float %i.arp, %i.aro
  %i.arr = fsub float %.057.i441.i.i.i.i.i.i, %i.zh
  %i.ars = fsub float %.055.i443.i.i.i.i.i.i, %i.zh
  %i.art = fadd float %i.arr, %i.ars
  %i.aru = fmul float %i.art, 5.000000e-01
  %i.arv = fsub float 1.000000e+00, %i.aru
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !29
  %i.ary = call float @llvm.fmuladd.f32(float %i.arq, float %i.arv, float %i.arx)
  store float %i.ary, ptr %i.arw, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.hq:                                            ; preds = %bb.gu
  %i.arz = fcmp olt float %i.vg, %i.zj
  %or.cond349.i.i.i.i.i.i = and i1 %i.arz, %i.aei
  br i1 %or.cond349.i.i.i.i.i.i, label %bb.hr, label %bb.im

bb.hr:                                            ; preds = %bb.hq
  %i.asa = fcmp oeq float %i.zr, %i.nt
  br i1 %i.asa, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.asb = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.asc = fcmp olt float %i.asb, %i.nt
  br i1 %i.asc, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.asd = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ase = fcmp olt float %i.zr, %i.asd
  br i1 %i.ase, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.asf = fcmp ogt float %i.asd, %i.nt
  br i1 %i.asf, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.asg = fsub float %i.asd, %i.nt
  %i.ash = extractelement <2 x float> %i.zm, i64 1
  %i.asi = fmul float %i.ash, %i.asg
  %i.asj = fsub float %i.zr, %i.nt
  %i.ask = fdiv float %i.asi, %i.asj
  %i.asl = fadd float %i.qd, %i.ask
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.057.i448.i.i.i.i.i.i = phi float [ %i.asl, %bb.hv ], [ %i.qd, %bb.hu ] ; 4 uses
  %.056.i449.i.i.i.i.i.i = phi float [ %i.asd, %bb.hv ], [ %i.nt, %bb.hu ] ; 3 uses
  %i.asm = fcmp ogt float %i.zr, %i.asb
  br i1 %i.asm, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.asn = fsub float %i.zj, %.057.i448.i.i.i.i.i.i
  %i.aso = fsub float %i.asb, %i.zr
  %i.asp = fmul float %i.aso, %i.asn
  %i.asq = fsub float %i.zr, %.056.i449.i.i.i.i.i.i
  %i.asr = fdiv float %i.asp, %i.asq
  %i.ass = fadd float %i.asr, %i.zj
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.055.i450.i.i.i.i.i.i = phi float [ %i.ass, %bb.hx ], [ %i.zj, %bb.hw ] ; 3 uses
  %.0.i451.i.i.i.i.i.i = phi float [ %i.asb, %bb.hx ], [ %i.zr, %bb.hw ] ; 2 uses
  %i.ast = fcmp ugt float %.057.i448.i.i.i.i.i.i, %i.zh
  %i.asu = fcmp ugt float %.055.i450.i.i.i.i.i.i, %i.zh
  %or.cond64.i452.i.i.i.i.i.i = select i1 %i.ast, i1 true, i1 %i.asu
  br i1 %or.cond64.i452.i.i.i.i.i.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.asv = load float, ptr %i.zf, align 4, !tbaa !801
  %i.asw = fsub float %.0.i451.i.i.i.i.i.i, %.056.i449.i.i.i.i.i.i
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !29
  %i.asz = call float @llvm.fmuladd.f32(float %i.asv, float %i.asw, float %i.asy)
  store float %i.asz, ptr %i.asx, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i

bb.ia:                                            ; preds = %bb.hy
  %i.ata = fcmp ult float %.057.i448.i.i.i.i.i.i, %i.zj
  %i.atb = fcmp ult float %.055.i450.i.i.i.i.i.i, %i.zj
  %or.cond65.i453.i.i.i.i.i.i = select i1 %i.ata, i1 true, i1 %i.atb
  br i1 %or.cond65.i453.i.i.i.i.i.i, label %bb.ib, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i

bb.ib:                                            ; preds = %bb.ia
  %i.atc = load float, ptr %i.zf, align 4, !tbaa !801
  %i.atd = fsub float %.0.i451.i.i.i.i.i.i, %.056.i449.i.i.i.i.i.i
  %i.ate = fmul float %i.atd, %i.atc
  %i.atf = fsub float %.057.i448.i.i.i.i.i.i, %i.zh
  %i.atg = fsub float %.055.i450.i.i.i.i.i.i, %i.zh
  %i.ath = fadd float %i.atf, %i.atg
  %i.ati = fmul float %i.ath, 5.000000e-01
  %i.atj = fsub float 1.000000e+00, %i.ati
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !29
  %i.atm = call float @llvm.fmuladd.f32(float %i.ate, float %i.atj, float %i.atl)
  store float %i.atm, ptr %i.atk, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i: ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.ht, %bb.hs, %bb.hr
  %i.atn = fcmp oeq float %i.zr, %i.nu
  br i1 %i.atn, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i
  %i.ato = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.atp = fcmp ogt float %i.zr, %i.ato
  br i1 %i.atp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.atq = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.atr = fcmp olt float %i.nu, %i.atq
  br i1 %i.atr, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ats = fcmp olt float %i.zr, %i.atq
  br i1 %i.ats, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.att = fsub float %i.vg, %i.zj
  %i.atu = fsub float %i.atq, %i.zr
  %i.atv = fmul float %i.att, %i.atu
  %i.atw = fsub float %i.nu, %i.zr
  %i.atx = fdiv float %i.atv, %i.atw
  %i.aty = fadd float %i.atx, %i.zj
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.057.i455.i.i.i.i.i.i = phi float [ %i.aty, %bb.if ], [ %i.zj, %bb.ie ] ; 4 uses
  %.056.i456.i.i.i.i.i.i = phi float [ %i.atq, %bb.if ], [ %i.zr, %bb.ie ] ; 3 uses
  %i.atz = fcmp ogt float %i.nu, %i.ato
  br i1 %i.atz, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.aua = fsub float %i.vg, %.057.i455.i.i.i.i.i.i
  %i.aub = fsub float %i.ato, %i.nu
  %i.auc = fmul float %i.aub, %i.aua
  %i.aud = fsub float %i.nu, %.056.i456.i.i.i.i.i.i
  %i.aue = fdiv float %i.auc, %i.aud
  %i.auf = fadd float %i.vg, %i.aue
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.055.i457.i.i.i.i.i.i = phi float [ %i.auf, %bb.ih ], [ %i.vg, %bb.ig ] ; 3 uses
  %.0.i458.i.i.i.i.i.i = phi float [ %i.ato, %bb.ih ], [ %i.nu, %bb.ig ] ; 2 uses
  %i.aug = fcmp ugt float %.057.i455.i.i.i.i.i.i, %i.zh
  %i.auh = fcmp ugt float %.055.i457.i.i.i.i.i.i, %i.zh
  %or.cond64.i459.i.i.i.i.i.i = select i1 %i.aug, i1 true, i1 %i.auh
  br i1 %or.cond64.i459.i.i.i.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aui = load float, ptr %i.zf, align 4, !tbaa !801
  %i.auj = fsub float %.0.i458.i.i.i.i.i.i, %.056.i456.i.i.i.i.i.i
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !29
  %i.aum = call float @llvm.fmuladd.f32(float %i.aui, float %i.auj, float %i.aul)
  store float %i.aum, ptr %i.auk, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  %i.aun = fcmp ult float %.057.i455.i.i.i.i.i.i, %i.zj
  %i.auo = fcmp ult float %.055.i457.i.i.i.i.i.i, %i.zj
  %or.cond65.i460.i.i.i.i.i.i = select i1 %i.aun, i1 true, i1 %i.auo
  br i1 %or.cond65.i460.i.i.i.i.i.i, label %bb.il, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.aup = load float, ptr %i.zf, align 4, !tbaa !801
  %i.auq = fsub float %.0.i458.i.i.i.i.i.i, %.056.i456.i.i.i.i.i.i
  %i.aur = fmul float %i.auq, %i.aup
  %i.aus = fsub float %.057.i455.i.i.i.i.i.i, %i.zh
  %i.aut = fsub float %.055.i457.i.i.i.i.i.i, %i.zh
  %i.auu = fadd float %i.aus, %i.aut
  %i.auv = fmul float %i.auu, 5.000000e-01
  %i.auw = fsub float 1.000000e+00, %i.auv
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.auy = load float, ptr %i.aux, align 4, !tbaa !29
  %i.auz = call float @llvm.fmuladd.f32(float %i.aur, float %i.auw, float %i.auy)
  store float %i.auz, ptr %i.aux, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.im:                                            ; preds = %bb.hq
  br i1 %i.px, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ava = load float, ptr %10, align 4, !tbaa !799 ; 4 uses
  %i.avb = fcmp olt float %i.ava, %i.nt
  br i1 %i.avb, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.avc = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.avd = fcmp olt float %i.nu, %i.avc
  br i1 %i.avd, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ave = fcmp ogt float %i.avc, %i.nt           ; 2 uses
  %i.avf = fsub float %i.avc, %i.nt
  %i.avg = fmul float %i.ze, %i.avf
  %i.avh = fdiv float %i.avg, %i.py
  %i.avi = fadd float %i.qd, %i.avh
  %.057.i462.i.i.i.i.i.i = select i1 %i.ave, float %i.avi, float %i.qd ; 4 uses
  %.056.i463.i.i.i.i.i.i = select i1 %i.ave, float %i.avc, float %i.nt ; 3 uses
  %i.avj = fcmp ogt float %i.nu, %i.ava
  br i1 %i.avj, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.avk = fsub float %i.vg, %.057.i462.i.i.i.i.i.i
  %i.avl = fsub float %i.ava, %i.nu
  %i.avm = fmul float %i.avl, %i.avk
  %i.avn = fsub float %i.nu, %.056.i463.i.i.i.i.i.i
  %i.avo = fdiv float %i.avm, %i.avn
  %i.avp = fadd float %i.vg, %i.avo
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.055.i464.i.i.i.i.i.i = phi float [ %i.avp, %bb.iq ], [ %i.vg, %bb.ip ] ; 3 uses
  %.0.i465.i.i.i.i.i.i = phi float [ %i.ava, %bb.iq ], [ %i.nu, %bb.ip ] ; 2 uses
  %i.avq = fcmp ugt float %.057.i462.i.i.i.i.i.i, %i.zh
  %i.avr = fcmp ugt float %.055.i464.i.i.i.i.i.i, %i.zh
  %or.cond64.i466.i.i.i.i.i.i = select i1 %i.avq, i1 true, i1 %i.avr
  br i1 %or.cond64.i466.i.i.i.i.i.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.avs = load float, ptr %i.zf, align 4, !tbaa !801
  %i.avt = fsub float %.0.i465.i.i.i.i.i.i, %.056.i463.i.i.i.i.i.i
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !29
  %i.avw = call float @llvm.fmuladd.f32(float %i.avs, float %i.avt, float %i.avv)
  store float %i.avw, ptr %i.avu, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.ir
  %i.avx = fcmp ult float %.057.i462.i.i.i.i.i.i, %i.zj
  %i.avy = fcmp ult float %.055.i464.i.i.i.i.i.i, %i.zj
  %or.cond65.i467.i.i.i.i.i.i = select i1 %i.avx, i1 true, i1 %i.avy
  br i1 %or.cond65.i467.i.i.i.i.i.i, label %bb.iu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.avz = load float, ptr %i.zf, align 4, !tbaa !801
  %i.awa = fsub float %.0.i465.i.i.i.i.i.i, %.056.i463.i.i.i.i.i.i
  %i.awb = fmul float %i.awa, %i.avz
  %i.awc = fsub float %.057.i462.i.i.i.i.i.i, %i.zh
  %i.awd = fsub float %.055.i464.i.i.i.i.i.i, %i.zh
  %i.awe = fadd float %i.awc, %i.awd
  %i.awf = fmul float %i.awe, 5.000000e-01
  %i.awg = fsub float 1.000000e+00, %i.awf
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !29
  %i.awj = call float @llvm.fmuladd.f32(float %i.awb, float %i.awg, float %i.awi)
  store float %i.awj, ptr %i.awh, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i: ; preds = %bb.iu, %bb.it, %bb.is, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.id, %bb.ic, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i, %bb.hp, %bb.ho, %bb.hn, %bb.hh, %bb.hg, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i, %bb.gt, %bb.gs, %bb.gr, %bb.gl, %bb.gk, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i, %bb.fx, %bb.fw, %bb.fv, %bb.fp, %bb.fo, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, %bb.fb, %bb.fa, %bb.ez, %bb.et, %bb.es, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, %bb.dv, %bb.du, %bb.dt, %bb.dn, %bb.dm, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.cq, !llvm.loop !773

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i: ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %bb.cp, %._crit_edge.i.i.i.i.i.i, %bb.cj, %bb.cf, %bb.ce, %bb.cd, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bl, %bb.ba, %bb.ay
  %i.awk = load ptr, ptr %.0295473.i.i.i.i.i.i, align 8, !tbaa !800 ; 2 uses
  %.not.i.i93.i.i.i.i = icmp eq ptr %i.awk, null
  br i1 %.not.i.i93.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.ax, !llvm.loop !774

_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i: ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br i1 %i.ns, label %.lr.ph22.i.i.i.preheader.i.i, label %.preheader.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i:                     ; preds = %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i
  %i.awl = mul nsw i32 %.07629.i.i.i.i.i, %i.ct
  br label %.lr.ph22.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i, %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %.lr.ph22.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph22.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i ] ; 4 uses
  %.07721.i.i.i.i.i = phi float [ %i.awo, %.lr.ph22.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i ]
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i.i.i.i
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !29
  %i.awo = fadd float %.07721.i.i.i.i.i, %i.awn   ; 2 uses
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !29
  %i.awr = fadd float %i.awq, %i.awo
  %i.aws = call float @llvm.fabs.f32(float %i.awr)
  %i.awt = call float @llvm.fmuladd.f32(float %i.aws, float 2.550000e+02, float 5.000000e-01)
  %i.awu = fptosi float %i.awt to i32
  %spec.store.select.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.awu, i32 255)
  %i.awv = trunc nuw i32 %spec.store.select.i.i.i.i.i to i8
  %i.aww = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.awx = add nsw i32 %i.awl, %i.aww
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds i8, ptr %i.ed, i64 %i.awy
  store i8 %i.awv, ptr %i.awz, align 1, !tbaa !50
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.nb
  br i1 %exitcond.not.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i, !llvm.loop !775

.lr.ph24.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph24.i.i.i.i.i
  %i.axa = phi ptr [ %i.axe, %.lr.ph24.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8 ; 2 uses
  %i.axc = load <2 x float>, ptr %i.axb, align 8, !tbaa !29
  %i.axd = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axc)
  store float %i.axd, ptr %i.axb, align 8, !tbaa !810
  %i.axe = load ptr, ptr %i.axa, align 8, !tbaa !797 ; 2 uses
  %.not92.i.i.i.i.i = icmp eq ptr %i.axe, null
  br i1 %.not92.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, !llvm.loop !776

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.axf = add nsw i32 %.07530.i.i.i.i.i, 1
  %i.axg = add nuw nsw i32 %.07629.i.i.i.i.i, 1   ; 2 uses
  %exitcond31.not.i.i = icmp eq i32 %i.axg, %i.cu
  br i1 %exitcond31.not.i.i, label %._crit_edge34.i.i.i.i.i, label %bb.ak, !llvm.loop !777

._crit_edge34.i.i.i.i.i:                          ; preds = %._crit_edge25.i.i.i.i.i
  %.not1.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i:                             ; preds = %._crit_edge34.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i
  %.02.i.i.i.i.i.i = phi ptr [ %i.axh, %.lr.ph.i94.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge34.i.i.i.i.i ] ; 2 uses
  %i.axh = load ptr, ptr %.02.i.i.i.i.i.i, align 8, !tbaa !805 ; 2 uses
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.02.i.i.i.i.i.i)
  %.not.i95.i.i.i.i.i = icmp eq ptr %i.axh, null
  br i1 %.not.i95.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i, !llvm.loop !778

_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i: ; preds = %.lr.ph.i94.i.i.i.i.i, %._crit_edge34.i.i.i.i.i, %bb.aj
  %.not.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %.080.i.i.i.i.i)
  br label %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i

_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i: ; preds = %bb.iv, %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.kz)
  %.pre.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !427
  br label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i

_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i: ; preds = %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i, %._crit_edge.i27.i.i.i
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i ], [ %.pre32.i.i, %._crit_edge.i27.i.i.i ]
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.gj)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ig)
  br label %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i

_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i: ; preds = %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i
  %i.axi = phi ptr [ %.pre.i.i, %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i ], [ %.pre32.i.i, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i ]
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.axi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  %i.axj = icmp sgt i32 %i.al, 1
  br i1 %i.axj, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8
  %i.axk = icmp sgt i32 %i.cv, 1
  br i1 %i.axk, label %.lr.ph148.i.i, label %_ZL18stbtt__h_prefilterPhiiij.exit.i

.lr.ph148.i.i:                                    ; preds = %bb.iw
  %i.axl = sub i32 %i.ct, %i.al
  %i.axm = zext nneg i32 %i.al to i64
  %.not113.i.i = icmp slt i32 %i.axl, 0           ; 5 uses
  %i.axn = sext i32 %i.ct to i64
  %wide.trip.count.i.i = zext i32 %i.cr to i64    ; 8 uses
  %i.axo = add nsw i64 %wide.trip.count.i.i, -1   ; 2 uses
  %xtraiter362 = and i64 %wide.trip.count.i.i, 1
  %i.axp = icmp eq i64 %i.axo, 0
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  %lcmp.mod365 = trunc i32 %i.cr to i1
  %xtraiter366 = and i64 %wide.trip.count.i.i, 1
  %i.axq = icmp eq i64 %i.axo, 0
  %unroll_iter370 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  %lcmp.mod369 = trunc i32 %i.cr to i1
  br label %bb.ix

bb.ix:                                            ; preds = %._crit_edge.i.i, %.lr.ph148.i.i
  %.095146.i.i = phi i32 [ 0, %.lr.ph148.i.i ], [ %i.bcz, %._crit_edge.i.i ]
  %.096144.i.i = phi ptr [ %i.ed, %.lr.ph148.i.i ], [ %i.bcy, %._crit_edge.i.i ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 %i.axm, i1 false)
  switch i32 %i.al, label %.preheader.i.i [
    i32 2, label %.preheader105.i.i
    i32 3, label %.preheader107.i.i
    i32 4, label %.preheader109.i.i
    i32 5, label %.preheader111.i.i
  ]
end_hunk_0
