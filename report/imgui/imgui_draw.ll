Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a

bb.v:                                             ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.i.i.i.i
  %i.ia = load i32, ptr %i.e, align 4, !tbaa !258 ; 2 uses
  %i.ib = sub nsw i32 %i.ia, %.2.us.i.i.i.i
  %i.ic = sext i32 %.397.us.i.i.i.i to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.ic
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !258
  %i.ie = sext i32 %i.ia to i64
  %i.if = shl nsw i64 %i.ie, 3
  %i.ig = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.if) ; 7 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.split.us.i.i.i.i, label %.lr.ph15.us.1.i.i.i.i

.lr.ph15.us.1.i.i.i.i:                            ; preds = %bb.v
  store i32 0, ptr %i.e, align 4, !tbaa !258
  br label %bb.w

bb.w:                                             ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i, %.lr.ph15.us.1.i.i.i.i
  %indvars.iv24.1.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.1.i.i.i.i ], [ %indvars.iv.next25.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 2 uses
  %.19311.us.1.i.i.i.i = phi i32 [ %.2.us.i.i.i.i, %.lr.ph15.us.1.i.i.i.i ], [ %.2.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %.29610.us.1.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.1.i.i.i.i ], [ %.397.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 7 uses
  %i.ii = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.1.i.i.i.i ], [ %i.kh, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %i.ij = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %indvars.iv24.1.i.i.i.i ; 12 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !514
  switch i8 %i.il, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i [
    i8 1, label %bb.aa
    i8 2, label %bb.z
    i8 3, label %bb.y
    i8 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.in = load i16, ptr %i.im, align 2, !tbaa !515
  %i.io = sitofp i16 %i.in to float
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !516
  %i.ir = sitofp i16 %i.iq to float
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.it = load i16, ptr %i.is, align 2, !tbaa !517
  %i.iu = sitofp i16 %i.it to float
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !518
  %i.ix = sitofp i16 %i.iw to float
  %i.iy = load i16, ptr %i.ij, align 2, !tbaa !519
  %i.iz = sitofp i16 %i.iy to float
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !520
  %i.jc = sitofp i16 %i.jb to float
  %i.jd = extractelement <2 x float> %i.ii, i64 0
  %i.je = extractelement <2 x float> %i.ii, i64 1
  call fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr noundef nonnull %i.ig, ptr noundef %i.e, float noundef %i.jd, float noundef %i.je, float noundef %i.io, float noundef %i.ir, float noundef %i.iu, float noundef %i.ix, float noundef %i.iz, float noundef %i.jc, float noundef %i.el, i32 noundef 0)
  %i.jf = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.jg = sitofp <2 x i16> %i.jf to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.jh = load <4 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.ji = sitofp <4 x i16> %i.jh to <4 x float>   ; 4 uses
  %i.jj = extractelement <2 x float> %i.ii, i64 0
  %i.jk = extractelement <2 x float> %i.ii, i64 1
  %i.jl = extractelement <4 x float> %i.ji, i64 0
  %i.jm = extractelement <4 x float> %i.ji, i64 1
  %i.jn = extractelement <4 x float> %i.ji, i64 2
  %i.jo = extractelement <4 x float> %i.ji, i64 3
  call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef nonnull %i.ig, ptr noundef %i.e, float noundef %i.jj, float noundef %i.jk, float noundef %i.jn, float noundef %i.jo, float noundef %i.jl, float noundef %i.jm, float noundef %i.el, i32 noundef 0)
  %i.jp = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.jq = sitofp <2 x i16> %i.jp to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.jr = load i32, ptr %i.e, align 4, !tbaa !258 ; 2 uses
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.e, align 4, !tbaa !258
  %i.jt = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.ju = sitofp <2 x i16> %i.jt to <2 x float>   ; 2 uses
  %i.jv = sext i32 %i.jr to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.jv
  store <2 x float> %i.ju, ptr %i.jw, align 4, !tbaa !29
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.aa:                                            ; preds = %bb.w
  %i.jx = icmp sgt i32 %.29610.us.1.i.i.i.i, -1
  %.pre32.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !258 ; 4 uses
  br i1 %i.jx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jy = sub nsw i32 %.pre32.i.i.i.i, %.19311.us.1.i.i.i.i
  %i.jz = zext nneg i32 %.29610.us.1.i.i.i.i to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.jz
  store i32 %i.jy, ptr %i.ka, align 4, !tbaa !258
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kb = add nsw i32 %.pre32.i.i.i.i, 1
  store i32 %i.kb, ptr %i.e, align 4, !tbaa !258
  %i.kc = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.kd = sitofp <2 x i16> %i.kc to <2 x float>   ; 2 uses
  %i.ke = add nsw i32 %.29610.us.1.i.i.i.i, 1
  %i.kf = sext i32 %.pre32.i.i.i.i to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.kf
  store <2 x float> %i.kd, ptr %i.kg, align 4, !tbaa !29
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i: ; preds = %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w
  %.397.us.1.i.i.i.i = phi i32 [ %.29610.us.1.i.i.i.i, %bb.w ], [ %.29610.us.1.i.i.i.i, %bb.x ], [ %i.ke, %bb.ac ], [ %.29610.us.1.i.i.i.i, %bb.y ], [ %.29610.us.1.i.i.i.i, %bb.z ] ; 2 uses
  %.2.us.1.i.i.i.i = phi i32 [ %.19311.us.1.i.i.i.i, %bb.w ], [ %.19311.us.1.i.i.i.i, %bb.x ], [ %.pre32.i.i.i.i, %bb.ac ], [ %.19311.us.1.i.i.i.i, %bb.y ], [ %.19311.us.1.i.i.i.i, %bb.z ] ; 2 uses
  %i.kh = phi <2 x float> [ %i.ii, %bb.w ], [ %i.jg, %bb.x ], [ %i.kd, %bb.ac ], [ %i.jq, %bb.y ], [ %i.ju, %bb.z ]
  %indvars.iv.next25.1.i.i.i.i = add nuw nsw i64 %indvars.iv24.1.i.i.i.i, 1 ; 2 uses
  %exitcond28.1.not.i.i.i.i = icmp eq i64 %indvars.iv.next25.1.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond28.1.not.i.i.i.i, label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, label %bb.w, !llvm.loop !764

.split.us.i.i.i.i:                                ; preds = %bb.v
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef null)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.gj)
  br label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i: ; preds = %.split.us.i.i.i.i, %bb.n, %._crit_edge.i.i.i.i, %_ZN8ImVectorIhE6resizeEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i: ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i
  %i.ki = load i32, ptr %i.e, align 4, !tbaa !258
  %i.kj = sub nsw i32 %i.ki, %.2.us.1.i.i.i.i
  %i.kk = sext i32 %.397.us.1.i.i.i.i to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.kk
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  %min.iters.check322 = icmp ult i32 %spec.select.i.i.i.i.lcssa, 8
  br i1 %min.iters.check322, label %.lr.ph.i23.i.i.i.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i
  %n.vec324 = and i64 %i.gh, 2147483640           ; 3 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next330, %vector.body325 ] ; 2 uses
  %vec.phi327 = phi <4 x i32> [ zeroinitializer, %vector.ph323 ], [ %i.ko, %vector.body325 ]
  %vec.phi328 = phi <4 x i32> [ zeroinitializer, %vector.ph323 ], [ %i.kp, %vector.body325 ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index326 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !tbaa !258
  %wide.load329 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !258
  %i.ko = add <4 x i32> %wide.load, %vec.phi327   ; 2 uses
  %i.kp = add <4 x i32> %wide.load329, %vec.phi328 ; 2 uses
  %index.next330 = add nuw i64 %index326, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.kq, label %middle.block331, label %vector.body325, !llvm.loop !765

middle.block331:                                  ; preds = %vector.body325
  %bin.rdx332 = add <4 x i32> %i.kp, %i.ko
  %i.kr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx332) ; 2 uses
  %cmp.n333 = icmp eq i64 %n.vec324, %i.gh
  br i1 %cmp.n333, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, %middle.block331
  %indvars.iv.i24.i.i.i.ph = phi i64 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %n.vec324, %middle.block331 ]
  %.0874.i.i.i.i.ph = phi i32 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %i.kr, %middle.block331 ]
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i.preheader, %.lr.ph.i23.i.i.i
  %indvars.iv.i24.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %.lr.ph.i23.i.i.i ], [ %indvars.iv.i24.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ] ; 2 uses
  %.0874.i.i.i.i = phi i32 [ %i.ku, %.lr.ph.i23.i.i.i ], [ %.0874.i.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ]
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
  %i.ll = phi i32 [ %i.lh, %.lr.ph10.preheader.i.i.i.i ], [ %i.md, %.lr.ph10._crit_edge.i.i.i.i ]
  %7 = phi float [ %.pre.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %i.lo, %.lr.ph10._crit_edge.i.i.i.i ] ; 2 uses
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i.a = phi i32 [ %i.lk, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.26.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv24.i28.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !522 ; 3 uses
  %i.lp = fcmp oeq float %7, %i.lo
  br i1 %i.lp, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.lq = sext i32 %.26.i.i.i.i to i64
  %i.lr = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = fcmp ogt float %7, %i.lo                ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.lt to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.ls, align 4, !tbaa !794
  %8 = sext i32 %.0857.i.i.i.i.a to i64           ; 2 uses
  %i.lu = select i1 %i.lt, i64 %8, i64 %indvars.iv24.i28.i.i.i
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lu
  %i.lw = select i1 %i.lt, i64 %indvars.iv24.i28.i.i.i, i64 %8
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lw
  %i.ly = load <2 x float>, ptr %i.lv, align 4, !tbaa !29
  %i.lz = load <2 x float>, ptr %i.lx, align 4, !tbaa !29
  %i.ma = shufflevector <2 x float> %i.ly, <2 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ma, <4 x float> %i.ld, <4 x float> zeroinitializer)
  store <4 x float> %i.mb, ptr %i.lr, align 4, !tbaa !29
  %i.mc = add nsw i32 %.26.i.i.i.i, 1
  %.pre34.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !258
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.ad, %.lr.ph10.i.i.i.i
  %i.md = phi i32 [ %.pre34.i.i.i.i, %bb.ad ], [ %i.ll, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.mc, %bb.ad ], [ %.26.i.i.i.i, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.me
  br i1 %i.mf, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !767

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.gh
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !768

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.kz, i32 noundef %.2.lcssa.i.i.i.i)
  %i.mg = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.mg, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.mh = getelementptr inbounds nuw [20 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !29
  %i.mi = load <2 x float>, ptr %i.mh, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !795
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.af ] ; 4 uses
  %i.mj = getelementptr [20 x i8], ptr %i.kz, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -16
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !524
  %i.mm = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.ml
  br i1 %i.mm, label %bb.af, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.mn = getelementptr i8, ptr %i.mj, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mj, ptr noundef nonnull align 4 dereferenceable(20) %i.mn, i64 20, i1 false), !tbaa.struct !293
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.mo = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.mo, label %bb.ae, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ae
  %i.mp = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.af, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.mp, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.mq = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.mq
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mr = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.ms = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.mr ; 2 uses
  store <2 x float> %i.mi, ptr %i.ms, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
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
  %i.mt = icmp sgt i32 %i.cr, 64
  br i1 %i.mt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.mu = shl nuw nsw i32 %i.cr, 1
  %i.mv = or disjoint i32 %i.mu, 1
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.mx)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.my, %bb.ai ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ] ; 43 uses
  %i.mz = sext i32 %i.cr to i64                   ; 3 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.mz ; 9 uses
  %i.nb = add nsw i32 %i.eh, %i.cu
  %i.nc = sitofp i32 %i.nb to float
  %i.nd = fadd float %i.nc, 1.000000e+00
  %i.ne = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nf = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.nd, ptr %i.ng, align 4, !tbaa !524
  %i.nh = icmp sgt i32 %i.cu, 0
  br i1 %i.nh, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.ni = sitofp i32 %i.eg to float
  %i.nj = icmp ne i32 %i.eh, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.nl = shl nsw i64 %i.mz, 2
  %i.nm = add nsw i32 %i.cr, 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = shl nsw i64 %i.nn, 2
  %i.np = sitofp i32 %i.cr to float               ; 3 uses
  %i.nq = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axp, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axq, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nr = sitofp i32 %.07530.i.i.i.i.i to float   ; 69 uses
  %i.ns = fadd float %i.nr, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.nl, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.na, i8 0, i64 %i.no, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !524 ; 2 uses
  %i.nv = fcmp ugt float %i.nu, %i.ns
  br i1 %i.nv, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.nw = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nj, %i.nw
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.nx = phi ptr [ %i.od, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 28
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !799
  %i.oa = fcmp ugt float %i.nz, %i.nr
  br i1 %i.oa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ob = load ptr, ptr %i.nx, align 8, !tbaa !800
  store ptr %i.ob, ptr %.07810.i.i.i.i.i, align 8, !tbaa !797
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 20
  store float 0.000000e+00, ptr %i.oc, align 4, !tbaa !801
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.nx, align 8, !tbaa !427
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.nx, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.od = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !797 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !770

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.oe = phi float [ %i.nu, %.lr.ph15.i.i.i.i.i ], [ %i.pt, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.of = phi ptr [ %i.nt, %.lr.ph15.i.i.i.i.i ], [ %i.ps, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pr, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !802 ; 3 uses
  %i.oi = fcmp une float %i.oe, %i.oh
  br i1 %i.oi, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oj = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !427
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.ok = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.ok, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.ol = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.om = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.om, align 8, !tbaa !805
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.og, align 4, !tbaa !802
end_hunk_0
