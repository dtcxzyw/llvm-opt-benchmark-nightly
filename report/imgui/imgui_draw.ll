Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt:bb.a
bb.i:                                             ; preds = %bb.h
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %.not35 = icmp eq i64 %i.k, 0
  br i1 %.not35, label %.critedge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.m = icmp ugt ptr %i.n, %1
  br i1 %i.m, label %.lr.ph, label %.critedge, !llvm.loop !696

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.030 = phi ptr [ %i.n, %bb.j ], [ %i.l, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.030, i64 -1 ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  switch i8 %i.o, label %bb.j [
    i8 47, label %..critedge_crit_edge
    i8 92, label %..critedge_crit_edge
  ], !llvm.loop !696

..critedge_crit_edge:                             ; preds = %.lr.ph, %.lr.ph
  br label %.critedge, !llvm.loop !696

.critedge:                                        ; preds = %bb.j, %..critedge_crit_edge, %bb.i
  %.0.lcssa = phi ptr [ %.030, %..critedge_crit_edge ], [ %i.l, %bb.i ], [ %i.n, %bb.j ]
  %i.p = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %6, i64 noundef 40, ptr noundef nonnull @.str.18, ptr noundef nonnull %.0.lcssa) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.h
  %i.q = load i64, ptr %i.a, align 8, !tbaa !697
  %i.r = trunc i64 %i.q to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull readonly align 8 dereferenceable(160) %6, i64 160, i1 false), !tbaa.struct !431
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.b, ptr %i.s, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.r, ptr %i.t, align 8, !tbaa !436
  %i.u = fcmp ogt float %2, 0.000000e+00
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  %i.w = load float, ptr %i.v, align 4
  %i.x = select i1 %i.u, float %2, float %i.w
  store float %i.x, ptr %i.v, align 4, !tbaa !414
  %.not9.i = icmp eq ptr %4, null
  br i1 %.not9.i, label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %4, ptr %i.y, align 8, !tbaa !437
  br label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit

_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit: ; preds = %bb.k, %bb.l
  %i.z = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit
  %.020 = phi ptr [ %i.z, %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret ptr %.020
}

declare noundef ptr @_Z18ImFileLoadToMemoryPKcS0_Pmi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %6 = alloca %struct.ImFontConfig, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 8 dereferenceable(160) %4, i64 160, i1 false), !tbaa.struct !431
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN12ImFontConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(153) %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !354
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %2, ptr %i.b, align 8, !tbaa !436
  %i.c = fcmp ogt float %3, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = select i1 %i.c, float %3, float %i.e
  store float %i.f, ptr %i.d, align 4, !tbaa !414
  %.not9 = icmp eq ptr %5, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %5, ptr %i.g, align 8, !tbaa !437
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.b = trunc i64 %i.a to i32
  %i.c = add nsw i32 %i.b, 4
  %i.d = sdiv i32 %i.c, 5
  %i.e = shl nsw i32 %i.d, 2
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f) ; 3 uses
  %i.h = load i8, ptr %1, align 1, !tbaa !50      ; 2 uses
  %.not21.i = icmp eq i8 %i.h, 0
  br i1 %.not21.i, label %_ZL8Decode85PKhPh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.i = phi i8 [ %i.aq, %.lr.ph.i ], [ %i.h, %bb.a ] ; 2 uses
  %.023.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %1, %bb.a ] ; 5 uses
  %.01522.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = sext i8 %i.i to i32
  %i.k = icmp sgt i8 %i.i, 91
  %.v.i.i = select i1 %i.k, i32 -36, i32 -35
  %i.l = add nsw i32 %.v.i.i, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !50    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = icmp sgt i8 %i.n, 91
  %.v.i17.i = select i1 %i.p, i32 -36, i32 -35
  %i.q = add nsw i32 %.v.i17.i, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !50    ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp sgt i8 %i.s, 91
  %.v.i18.i = select i1 %i.u, i32 -36, i32 -35
  %i.v = add nsw i32 %.v.i18.i, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !50    ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = icmp sgt i8 %i.x, 91
  %.v.i19.i = select i1 %i.z, i32 -36, i32 -35
  %i.aa = add nsw i32 %.v.i19.i, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !50  ; 2 uses
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp sgt i8 %i.ac, 91
  %.v.i20.i = select i1 %i.ae, i32 -36, i32 -35
  %i.af = add nsw i32 %.v.i20.i, %i.ad
  %i.ag = mul nsw i32 %i.af, 85
  %i.ah = add nsw i32 %i.aa, %i.ag
  %i.ai = mul nsw i32 %i.ah, 85
  %i.aj = add nsw i32 %i.v, %i.ai
  %i.ak = mul nsw i32 %i.aj, 85
  %i.al = add nsw i32 %i.q, %i.ak
  %i.am = mul i32 %i.al, 85
  %i.an = add i32 %i.l, %i.am
  store i32 %i.an, ptr %.01522.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.023.i, i64 5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01522.i, i64 4
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !50  ; 2 uses
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_ZL8Decode85PKhPh.exit, label %.lr.ph.i, !llvm.loop !698

_ZL8Decode85PKhPh.exit:                           ; preds = %.lr.ph.i, %bb.a
  %i.ar = tail call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %i.g, i32 poison, float noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.g)
  ret ptr %i.ar
}

declare noundef ptr @_ZN5ImGui17GetCurrentContextEv() local_unnamed_addr #2

declare void @_ZN5ImGui17SetCurrentContextEP12ImGuiContext(ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14SetCurrentFontEP6ImFontff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_Z28ImFontAtlasFontDestroyOutputP11ImFontAtlasP6ImFont(ptr noundef nonnull %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !400  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph21, label %._crit_edge

.lr.ph21:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.g

.lr.ph:                                           ; preds = %bb.a, %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit
  %.01219 = phi ptr [ %i.t, %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.01219, align 8, !tbaa !381 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i8, ptr %i.l, align 4, !tbaa !298, !range !351, !noundef !352
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !354
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.s)
  br label %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit

_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit: ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.r, align 8, !tbaa !355
  %i.t = getelementptr inbounds nuw i8, ptr %.01219, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.f
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !335  ; 6 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !338  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %.idx.i.i = shl nsw i64 %i.y, 3
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %.idx.i.i
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.e
  %.07.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.w, %._crit_edge ] ; 3 uses
  %i.ab = load ptr, ptr %.07.i.i, align 8, !tbaa !340
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %i.z
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, !llvm.loop !699

_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i:         ; preds = %bb.e, %.lr.ph.i.i, %._crit_edge
  %.0.lcssa.i.i = phi ptr [ %i.w, %._crit_edge ], [ %.07.i.i, %.lr.ph.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.ag = icmp ult ptr %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %bb.f, label %_Z9IM_DELETEI6ImFontEvPT_.exit

bb.f:                                             ; preds = %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i
  %i.ah = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ai = ptrtoint ptr %i.w to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = getelementptr inbounds i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = xor i64 %i.ak, -1
  %i.ao = add nsw i64 %i.an, %i.y
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false)
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !338
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.u, align 8, !tbaa !338
  br label %_Z9IM_DELETEI6ImFontEvPT_.exit

_Z9IM_DELETEI6ImFontEvPT_.exit:                   ; preds = %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, %bb.f
  tail call void @_Z30ImFontAtlasBuildUpdatePointersP11ImFontAtlas(ptr noundef nonnull %0)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !364
  tail call void @_ZN6ImFontD1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %1) #38
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %1)
  %i.at = load i32, ptr %i.u, align 8, !tbaa !338
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.j

bb.g:                                             ; preds = %.lr.ph21, %bb.i
  %i.av = phi i32 [ %i.h, %.lr.ph21 ], [ %i.bj, %bb.i ] ; 2 uses
  %.020 = phi i32 [ 0, %.lr.ph21 ], [ %i.bk, %bb.i ] ; 3 uses
  %2 = load ptr, ptr %i.j, align 8, !tbaa !334
  %i.aw = sext i32 %.020 to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [160 x i8], ptr %2, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !417
  %i.ba = icmp eq ptr %i.az, %1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = add nsw i32 %.020, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.bd = sext i32 %i.av to i64
  %i.be = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %i.bd, %i.be
  %i.bg = mul nuw nsw i64 %i.bf, 160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.bc, i64 %i.bg, i1 false)
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !353
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.g, align 8, !tbaa !353
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bj = phi i32 [ %i.bi, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.bb, %bb.h ], [ %.020, %bb.g ]
  %i.bk = add nsw i32 %.1, 1                      ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.bj
  br i1 %i.bl, label %bb.g, label %._crit_edge, !llvm.loop !700

bb.j:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !335
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !340
  br label %bb.k

bb.k:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit, %bb.j
  %i.bo = phi ptr [ %i.bn, %bb.j ], [ null, %_Z9IM_DELETEI6ImFontEvPT_.exit ]
  tail call void @_Z29ImFontAtlasBuildNotifySetFontP11ImFontAtlasP6ImFontS2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bo)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN11ImFontAtlas13AddCustomRectEiiP15ImFontAtlasRect(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef null) ; 5 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = and i32 %i.d, 524287                     ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !339  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !701
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = phi ptr [ %.pre.i, %bb.f ], [ %i.g, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !438
  %.not.i.i = icmp slt i32 %i.f, %i.k
  br i1 %.not.i.i, label %bb.h, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !439
  %i.n = zext nneg i32 %i.f to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = xor i32 %i.p, %i.d
  %i.r = and i32 %i.q, 1072693248
  %.not16.i.i = icmp ne i32 %i.r, 0
  %i.s = and i32 %i.p, 1073741824
  %.not17.i.i = icmp eq i32 %i.s, 0
  %or.cond30.i = or i1 %.not17.i.i, %.not16.i.i
  br i1 %or.cond30.i, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !331  ; 2 uses
  %.not15 = icmp eq ptr %i.u, null
  br i1 %.not15, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit, label %bb.i

bb.i:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.v = shl i32 %i.p, 12
  %i.w = ashr exact i32 %i.v, 12
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  %i.z = load <4 x i16>, ptr %i.y, align 2, !tbaa !243 ; 3 uses
  store <4 x i16> %i.z, ptr %3, align 4, !tbaa !243
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ab = shufflevector <4 x i16> %i.z, <4 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ac = uitofp <2 x i16> %i.ab to <2 x float>
  %i.ad = load <2 x float>, ptr %i.aa, align 4, !tbaa !29
  %i.ae = fmul <2 x float> %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.ae, ptr %i.af, align 4, !tbaa !29
  %i.ag = zext <2 x i16> %i.ab to <2 x i32>
  %i.ah = shufflevector <4 x i16> %i.z, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.ai = zext <2 x i16> %i.ah to <2 x i32>
  %i.aj = add nuw nsw <2 x i32> %i.ai, %i.ag
  %i.ak = uitofp nneg <2 x i32> %i.aj to <2 x float>
  %i.al = load <2 x float>, ptr %i.aa, align 4, !tbaa !29
  %i.am = fmul <2 x float> %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %i.am, ptr %i.an, align 4, !tbaa !29
  br label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit

_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit: ; preds = %bb.i, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i, %bb.h, %bb.g, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !325, !range !351, !noundef !352
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit
  %i.ar = and i32 %i.d, 524287
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !339 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !439
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = shl i32 %i.ax, 12
  %i.az = ashr exact i32 %i.ay, 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !331
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !332
  %i.bg = load i16, ptr %i.bd, align 2, !tbaa !440
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !441
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !442
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !443
  %i.bq = zext i16 %i.bp to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef %i.bn, i32 noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.br, align 2, !tbaa !347
  br label %bb.k

bb.k:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit, %bb.j, %bb.c
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !444  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !445
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1)
  store i32 %i.g, ptr %i.e, align 8, !tbaa !445
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !446
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %2)
  store i32 %i.j, ptr %i.h, align 4, !tbaa !446
  %i.k = add nsw i32 %i.d, %1                     ; 4 uses
  %i.l = add nsw i32 %i.d, %2                     ; 6 uses
  %i.m = icmp eq i32 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.r = icmp eq i32 %i.l, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.r
  %i.s = add i32 %i.k, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %or.cond, label %.thread, label %.preheader55.split.split.i

.preheader55.split.split.i:                       ; preds = %bb.a, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit
  %.04586 = phi i32 [ %i.go, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit ], [ 3, %bb.a ] ; 2 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !448  ; 2 uses
  %i.x = add i32 %i.s, %i.w                       ; 2 uses
  %i.y = srem i32 %i.x, %i.w
  %i.z = sub nsw i32 %i.x, %i.y                   ; 11 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !449 ; 3 uses
  %i.ab = icmp sgt i32 %i.z, %i.aa
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ab, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.i

.preheader55.split.split.split.i:                 ; preds = %.preheader55.split.split.i
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !450 ; 4 uses
  %i.ae = icmp sgt i32 %i.l, %i.ad
  br i1 %i.ae, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.split.i

.preheader.i:                                     ; preds = %bb.ae, %.critedge.i.i
  %i.af = icmp eq i32 %.287.i.i.i, 2147483647
  br i1 %i.af, label %.preheader.split58.us.i, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit

.preheader.split58.us.i:                          ; preds = %.preheader.i
  %.not85 = icmp eq i32 %i.dp, 2147483647
  br i1 %.not85, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.thread

.preheader55.split.split.split.split.i:           ; preds = %.preheader55.split.split.split.i
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !451 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !453 ; 3 uses
  %i.ai = add nsw i32 %i.ah, %i.z                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_:bb.a
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1, !tbaa !50
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1, !tbaa !50
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1, !tbaa !50
  %i.bu = getelementptr i8, ptr %i.be, i64 7
  %.val35.i = load i8, ptr %i.bu, align 1, !tbaa !50
  %i.bv = zext i8 %.val34.i to i16
  %i.bw = shl nuw i16 %i.bv, 8
  %i.bx = zext i8 %.val35.i to i16
  %i.by = or disjoint i16 %i.bw, %i.bx
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %i.cb = getelementptr i8, ptr %i.be, i64 9
  %.val33.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.cc = zext i8 %.val.i to i16
  %i.cd = shl nuw i16 %i.cc, 8
  %i.ce = zext i8 %.val33.i to i16
  %i.cf = or disjoint i16 %i.cd, %i.ce
  %i.cg = sext i16 %i.cf to i32
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.d
  store i32 0, ptr %4, align 4, !tbaa !258
  store i32 0, ptr %5, align 4, !tbaa !258
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %6, align 4, !tbaa !258
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not32 = icmp eq ptr %7, null
  br i1 %.not32, label %bb.p, label %.sink.split

_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit: ; preds = %bb.i, %bb.b
  %.041 = phi i32 [ %i.bl, %bb.i ], [ %i.f, %bb.b ]
  %.040 = phi i32 [ %i.bs, %bb.i ], [ %i.i, %bb.b ]
  %.039 = phi i32 [ %i.bz, %bb.i ], [ %i.l, %bb.b ]
  %.0 = phi i32 [ %i.cg, %bb.i ], [ %i.o, %bb.b ]
  %i.ch = sub nsw i32 0, %.0
  %i.ci = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %.041, i64 1
  %i.ck = sitofp <2 x i32> %i.cj to <2 x float>
  %i.cl = insertelement <2 x float> poison, float %3, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %2, i64 1
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> zeroinitializer) ; 3 uses
  %i.co = fptosi <2 x float> %i.cn to <2 x i32>   ; 2 uses
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = fcmp une <2 x float> %i.cn, %i.cp
  %i.cr = fcmp ult <2 x float> %i.cn, zeroinitializer
  %i.cs = and <2 x i1> %i.cr, %i.cq
  %i.ct = sext <2 x i1> %i.cs to <2 x i32>
  %i.cu = add nsw <2 x i32> %i.ct, %i.co
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fptosi <2 x float> %i.cv to <2 x i32>   ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cw, i64 1
  store i32 %i.cx, ptr %4, align 4, !tbaa !258
  %i.cy = extractelement <2 x i32> %i.cw, i64 0
  store i32 %i.cy, ptr %5, align 4, !tbaa !258
  %.not33 = icmp eq ptr %6, null
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %i.cz = sitofp i32 %.039 to float
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %2, float 0.000000e+00)
  %i.db = call float @llvm.ceil.f32(float %i.da)
  %i.dc = fptosi float %i.db to i32
  store i32 %i.dc, ptr %6, align 4, !tbaa !258
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %.not34 = icmp eq ptr %7, null
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = sub nsw i32 0, %.040
  %i.de = sitofp i32 %i.dd to float
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %3, float 0.000000e+00)
  %i.dg = call float @llvm.ceil.f32(float %i.df)
  %i.dh = fptosi float %i.dg to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ %i.dh, %bb.o ], [ 0, %bb.l ]
  store i32 %.sink, ptr %7, align 4, !tbaa !258
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #21 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !411
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.065.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !411
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.266.0.copyload = load i64, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !258
  %i.d = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.065.0.copyload, i64 %.sroa.266.0.copyload, i32 noundef %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !411
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.f, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph:     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i311 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep443.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep443.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, %.thread
  %i.aj = phi i32 [ %i.j, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vs, %.thread ] ; 9 uses
  %i.ak = phi i32 [ %i.h, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vr, %.thread ] ; 6 uses
  %.0236380 = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1237353, %.thread ] ; 22 uses
  %.0238379 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2240352, %.thread ] ; 26 uses
  %.0241378 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1242351, %.thread ] ; 28 uses
  %.0244375 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vq, %.thread ] ; 45 uses
  %.sroa.5.0374 = phi i64 [ %.sroa.5.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.5.3350, %.thread ] ; 27 uses
  %.sroa.073.0373 = phi ptr [ %.sroa.073.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.073.3349, %.thread ] ; 27 uses
  %.0255372 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2257348, %.thread ] ; 26 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !505   ; 6 uses
  %i.am = add nsw i32 %i.ak, 1                    ; 7 uses
  store i32 %i.am, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !503
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !50  ; 6 uses
  switch i8 %i.ap, label %bb.eo [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.dh
    i8 11, label %bb.do
    i8 14, label %bb.dq
    i8 12, label %bb.ef
  ]

bb.b:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not276 = icmp eq i32 %.0236380, 0
  br i1 %.not276, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = sdiv i32 %.0244375, 2
  %i.ar = add nsw i32 %.0238379, %i.aq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1239 = phi i32 [ %i.ar, %bb.c ], [ %.0238379, %bb.b ] ; 2 uses
  %i.as = add nsw i32 %.1239, 7
  %i.at = sdiv i32 %i.as, 8
  %i.au = add nsw i32 %i.at, %i.am                ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.aj)
  %..i.i = select i1 %i.av, i32 %i.aj, i32 %i.aw
  store i32 %..i.i, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !503
  br label %.thread

bb.e:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.ax = sdiv i32 %.0244375, 2
  %i.ay = add nsw i32 %.0238379, %i.ax
  br label %.thread

bb.f:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.az = icmp slt i32 %.0244375, 2
  br i1 %i.az, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = zext nneg i32 %.0244375 to i64
  %i.bb = getelementptr [4 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29
  %i.be = getelementptr i8, ptr %i.bb, i64 -4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.bd, float noundef %i.bf)
  br label %.thread

bb.h:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bg = icmp slt i32 %.0244375, 1
  br i1 %i.bg, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = zext nneg i32 %.0244375 to i64
  %i.bi = getelementptr [4 x i8], ptr %i.a, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !29
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bk)
  br label %.thread

bb.j:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bl = icmp slt i32 %.0244375, 1
  br i1 %i.bl, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %.0244375 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.bp, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bq = icmp slt i32 %.0244375, 2
  br i1 %i.bq, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.br = zext nneg i32 %.0244375 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit
  %indvars.iv436 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next437, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ] ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv436
  %6 = load <2 x float>, ptr %5, align 8, !tbaa !29
  %i.bs = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.bt = fadd <2 x float> %6, %i.bs              ; 2 uses
  store <2 x float> %i.bt, ptr %i.ab, align 8, !tbaa !29
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>   ; 3 uses
  %7 = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i = icmp eq i32 %7, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bv = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.bw = extractelement <2 x i32> %i.bu, i64 0   ; 4 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.bw, ptr %i.ad, align 4, !tbaa !539
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = load i32, ptr %i.af, align 4, !tbaa !541
  %i.ca = extractelement <2 x i32> %i.bu, i64 1   ; 4 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ca, ptr %i.af, align 4, !tbaa !541
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cd = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.ce = icmp sgt i32 %i.cd, %i.bw
  br i1 %i.ce, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bw, ptr %i.ag, align 8, !tbaa !542
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cg = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.ch = icmp sgt i32 %i.cg, %i.ca
  br i1 %i.ch, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not22.i.i.i, label %bb.x, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ca, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

bb.y:                                             ; preds = %.preheader
  %i.cj = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.ck = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [14 x i8], ptr %i.cj, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i8 2, ptr %i.cn, align 2, !tbaa !514
  %i.co = trunc <2 x i32> %i.bu to <2 x i16>
  store <2 x i16> %i.co, ptr %i.cm, align 2, !tbaa !243
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i64 0, ptr %i.cp, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i, %bb.y
  %i.cq = phi i32 [ %.pre.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.ck, %bb.y ]
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 2 ; 2 uses
  %i.cs = or disjoint i64 %indvars.iv.next437, 1
  %i.ct = icmp samesign ult i64 %i.cs, %i.br
  br i1 %i.ct, label %.preheader, label %.thread, !llvm.loop !863

bb.z:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.cu = icmp slt i32 %.0244375, 1
  br i1 %i.cu, label %.critedge, label %bb.aq

bb.aa:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.cv = icmp slt i32 %.0244375, 1
  br i1 %i.cv, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295
  %.1248 = phi i32 [ %i.fh, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295 ], [ 0, %bb.aa ] ; 3 uses
  %.not275 = icmp slt i32 %.1248, %.0244375
  br i1 %.not275, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cw = sext i32 %.1248 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !29
  %i.cz = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.da = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  %i.db = fadd <2 x float> %i.cz, %i.da           ; 2 uses
  store <2 x float> %i.db, ptr %i.ab, align 8, !tbaa !29
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 3 uses
  %i.dd = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i278 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i278, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.df = extractelement <2 x i32> %i.dc, i64 0   ; 4 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i279 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i279, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.df, ptr %i.ad, align 4, !tbaa !539
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.di = load i32, ptr %i.af, align 4, !tbaa !541
  %i.dj = extractelement <2 x i32> %i.dc, i64 1   ; 4 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i280 = icmp eq i32 %i.dl, 0
  br i1 %.not20.i.i.i280, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.dj, ptr %i.af, align 4, !tbaa !541
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dm = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.dn = icmp sgt i32 %i.dm, %i.df
  br i1 %i.dn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i281 = icmp eq i32 %i.do, 0
  br i1 %.not21.i.i.i281, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.df, ptr %i.ag, align 8, !tbaa !542
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.dq = icmp sgt i32 %i.dp, %i.dj
  br i1 %i.dq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i282 = icmp eq i32 %i.dr, 0
  br i1 %.not22.i.i.i282, label %bb.ao, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.dj, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283: ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i285 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286

bb.ap:                                            ; preds = %bb.ac
  %i.ds = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.dt = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [14 x i8], ptr %i.ds, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i8 2, ptr %i.dw, align 2, !tbaa !514
  %i.dx = trunc <2 x i32> %i.dc to <2 x i16>
  store <2 x i16> %i.dx, ptr %i.dv, align 2, !tbaa !243
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i64 0, ptr %i.dy, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283, %bb.ap
  %i.dz = phi i32 [ %.pre.i285, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283 ], [ %i.dt, %bb.ap ]
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %i.eb = add nsw i32 %.1248, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286
  %.2249 = phi i32 [ 0, %bb.z ], [ %i.eb, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286 ] ; 3 uses
  %.not274 = icmp slt i32 %.2249, %.0244375
  br i1 %.not274, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ec = sext i32 %.2249 to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !29
  %i.ef = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.eg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ee, i64 1
  %i.eh = fadd <2 x float> %i.ef, %i.eg           ; 2 uses
  store <2 x float> %i.eh, ptr %i.ab, align 8, !tbaa !29
  %i.ei = fptosi <2 x float> %i.eh to <2 x i32>   ; 3 uses
  %i.ej = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i287 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i287, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.el = extractelement <2 x i32> %i.ei, i64 0   ; 4 uses
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.en = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i288 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i288, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.el, ptr %i.ad, align 4, !tbaa !539
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eo = load i32, ptr %i.af, align 4, !tbaa !541
  %i.ep = extractelement <2 x i32> %i.ei, i64 1   ; 4 uses
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i289 = icmp eq i32 %i.er, 0
  br i1 %.not20.i.i.i289, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.ep, ptr %i.af, align 4, !tbaa !541
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.es = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.et = icmp sgt i32 %i.es, %i.el
  br i1 %i.et, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i290 = icmp eq i32 %i.eu, 0
  br i1 %.not21.i.i.i290, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.el, ptr %i.ag, align 8, !tbaa !542
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ev = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.ew = icmp sgt i32 %i.ev, %i.ep
  br i1 %i.ew, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ex = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i291 = icmp eq i32 %i.ex, 0
  br i1 %.not22.i.i.i291, label %bb.bd, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.ep, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292: ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i294 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295

bb.be:                                            ; preds = %bb.ar
  %i.ey = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.ez = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:bb.a
  %i.fz = phi float [ %i.fy, %bb.bj ], [ 0.000000e+00, %bb.bi ]
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.fn, float noundef %i.fp, float noundef %i.fr, float noundef %i.fu, float noundef %i.fz)
  %i.ga = add nsw i32 %.3250, 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.ga, %bb.bk ]  ; 4 uses
  %i.gb = add nsw i32 %.4, 3                      ; 2 uses
  %.not272 = icmp slt i32 %i.gb, %.0244375
  br i1 %.not272, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gc = sext i32 %.4 to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gc ; 4 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !29
  %i.gf = getelementptr i8, ptr %i.gd, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !29
  %i.gh = getelementptr i8, ptr %i.gd, i64 8
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !29
  %i.gj = sub nsw i32 %.0244375, %.4
  %i.gk = icmp eq i32 %i.gj, 5
  br i1 %i.gk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gl = getelementptr i8, ptr %i.gd, i64 16
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.gn = phi float [ %i.gm, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.go = sext i32 %i.gb to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ge, float noundef 0.000000e+00, float noundef %i.gg, float noundef %i.gi, float noundef %i.gn, float noundef %i.gq)
  %i.gr = add nsw i32 %.4, 4
  br label %bb.bh, !llvm.loop !865

bb.bp:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.gs = icmp slt i32 %.0244375, 6
  br i1 %i.gs, label %.critedge, label %.preheader354.preheader

.preheader354.preheader:                          ; preds = %bb.bp
  %i.gt = zext nneg i32 %.0244375 to i64
  br label %.preheader354

.preheader354:                                    ; preds = %.preheader354.preheader, %.preheader354
  %indvars.iv433 = phi i64 [ 0, %.preheader354.preheader ], [ %indvars.iv.next434, %.preheader354 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv433 ; 6 uses
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !29
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !29
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !29
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.hf = load float, ptr %i.he, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.gv, float noundef %i.gx, float noundef %i.gz, float noundef %i.hb, float noundef %i.hd, float noundef %i.hf)
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 6
  %i.hg = add nuw nsw i64 %indvars.iv433, 11
  %i.hh = icmp samesign ult i64 %i.hg, %i.gt
  br i1 %i.hh, label %.preheader354, label %.thread, !llvm.loop !866

bb.bq:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.hi = icmp slt i32 %.0244375, 8
  br i1 %i.hi, label %.critedge, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %bb.bq
  %i.hj = add nsw i32 %.0244375, -2
  %i.hk = zext nneg i32 %i.hj to i64
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader, %.lr.ph366
  %indvars.iv430 = phi i64 [ 0, %.lr.ph366.preheader ], [ %indvars.iv.next431, %.lr.ph366 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv430 ; 6 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !29
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !29
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !29
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !29
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.hm, float noundef %i.ho, float noundef %i.hq, float noundef %i.hs, float noundef %i.hu, float noundef %i.hw)
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 6 ; 3 uses
  %i.hx = add nuw nsw i64 %indvars.iv430, 11
  %i.hy = icmp samesign ult i64 %i.hx, %i.hk
  br i1 %i.hy, label %.lr.ph366, label %._crit_edge367, !llvm.loop !867

._crit_edge367:                                   ; preds = %.lr.ph366
  %i.hz = trunc nuw nsw i64 %indvars.iv.next431 to i32
  %i.ia = or disjoint i32 %i.hz, 1
  %.not271 = icmp slt i32 %i.ia, %.0244375
  br i1 %.not271, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge367
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next431
  %i.ic = load <2 x float>, ptr %i.ib, align 4, !tbaa !29
  %i.id = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.ie = fadd <2 x float> %i.ic, %i.id           ; 2 uses
  store <2 x float> %i.ie, ptr %i.ab, align 8, !tbaa !29
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>   ; 3 uses
  %i.ig = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i296 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i296, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ih = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.ii = extractelement <2 x i32> %i.if, i64 0   ; 4 uses
  %i.ij = icmp slt i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i297 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i.i297, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.ii, ptr %i.ad, align 4, !tbaa !539
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.il = load i32, ptr %i.af, align 4, !tbaa !541
  %i.im = extractelement <2 x i32> %i.if, i64 1   ; 4 uses
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.io = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i298 = icmp eq i32 %i.io, 0
  br i1 %.not20.i.i.i298, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.im, ptr %i.af, align 4, !tbaa !541
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ip = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.iq = icmp sgt i32 %i.ip, %i.ii
  br i1 %i.iq, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ir = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i299 = icmp eq i32 %i.ir, 0
  br i1 %.not21.i.i.i299, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.ii, ptr %i.ag, align 8, !tbaa !542
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.is = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.it = icmp sgt i32 %i.is, %i.im
  br i1 %i.it, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iu = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i300 = icmp eq i32 %i.iu, 0
  br i1 %.not22.i.i.i300, label %bb.cd, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.im, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301: ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i303 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304

bb.ce:                                            ; preds = %bb.br
  %i.iv = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.iw = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [14 x i8], ptr %i.iv, i64 %i.ix ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i8 2, ptr %i.iz, align 2, !tbaa !514
  %i.ja = trunc <2 x i32> %i.if to <2 x i16>
  store <2 x i16> %i.ja, ptr %i.iy, align 2, !tbaa !243
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i64 0, ptr %i.jb, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301, %bb.ce
  %i.jc = phi i32 [ %.pre.i303, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301 ], [ %i.iw, %bb.ce ]
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %.thread

bb.cf:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.je = icmp slt i32 %.0244375, 8
  br i1 %i.je, label %.critedge, label %.lr.ph363.preheader

.lr.ph363.preheader:                              ; preds = %bb.cf
  %i.jf = add nsw i32 %.0244375, -6
  %i.jg = zext nneg i32 %i.jf to i64
  br label %.lr.ph363

.lr.ph363:                                        ; preds = %.lr.ph363.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313
  %indvars.iv427 = phi i64 [ 0, %.lr.ph363.preheader ], [ %indvars.iv.next428, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313 ] ; 2 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv427
  %9 = load <2 x float>, ptr %8, align 8, !tbaa !29
  %i.jh = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.ji = fadd <2 x float> %9, %i.jh              ; 2 uses
  store <2 x float> %i.ji, ptr %i.ab, align 8, !tbaa !29
  %i.jj = fptosi <2 x float> %i.ji to <2 x i32>   ; 3 uses
  %10 = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i305 = icmp eq i32 %10, 0
  br i1 %.not.i.i305, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph363
  %i.jk = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.jl = extractelement <2 x i32> %i.jj, i64 0   ; 4 uses
  %i.jm = icmp slt i32 %i.jk, %i.jl
  br i1 %i.jm, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jn = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i306 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i.i306, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.jl, ptr %i.ad, align 4, !tbaa !539
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jo = load i32, ptr %i.af, align 4, !tbaa !541
  %i.jp = extractelement <2 x i32> %i.jj, i64 1   ; 4 uses
  %i.jq = icmp slt i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jr = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i307 = icmp eq i32 %i.jr, 0
  br i1 %.not20.i.i.i307, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.jp, ptr %i.af, align 4, !tbaa !541
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.js = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.jt = icmp sgt i32 %i.js, %i.jl
  br i1 %i.jt, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ju = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i308 = icmp eq i32 %i.ju, 0
  br i1 %.not21.i.i.i308, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.jl, ptr %i.ag, align 8, !tbaa !542
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.jv = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.jw = icmp sgt i32 %i.jv, %i.jp
  br i1 %i.jw, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jx = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i309 = icmp eq i32 %i.jx, 0
  br i1 %.not22.i.i.i309, label %bb.cr, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.jp, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310: ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i312 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313

bb.cs:                                            ; preds = %.lr.ph363
  %i.jy = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.jz = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [14 x i8], ptr %i.jy, i64 %i.ka ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i8 2, ptr %i.kc, align 2, !tbaa !514
  %i.kd = trunc <2 x i32> %i.jj to <2 x i16>
  store <2 x i16> %i.kd, ptr %i.kb, align 2, !tbaa !243
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i64 0, ptr %i.ke, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310, %bb.cs
  %i.kf = phi i32 [ %.pre.i312, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310 ], [ %i.jz, %bb.cs ]
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 2 ; 4 uses
  %i.kh = or disjoint i64 %indvars.iv.next428, 1
  %i.ki = icmp samesign ult i64 %i.kh, %i.jg
  br i1 %i.ki, label %.lr.ph363, label %._crit_edge, !llvm.loop !868

._crit_edge:                                      ; preds = %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313
  %i.kj = trunc nuw nsw i64 %indvars.iv.next428 to i32
  %i.kk = add nuw nsw i32 %i.kj, 5                ; 2 uses
  %.not270 = icmp slt i32 %i.kk, %.0244375
  br i1 %.not270, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.kl = add nuw i32 %.0244375, 2147483640
  %i.km = and i32 %i.kl, 2147483646
  %narrow = add nuw i32 %i.km, 3
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next428 ; 4 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !29
  %i.kp = zext nneg i32 %narrow to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !29
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !29
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !29
  %i.ky = zext nneg i32 %i.kk to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ko, float noundef %i.kr, float noundef %i.kt, float noundef %i.kv, float noundef %i.kx, float noundef %i.la)
  br label %.thread

bb.cu:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.lb = icmp slt i32 %.0244375, 4
  br i1 %i.lb, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0244375, 1
  %i.lc = add nuw nsw i32 %.8, 3
  %i.ld = icmp samesign ult i32 %i.lc, %.0244375
  br i1 %i.ld, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not269 = trunc i32 %.0244375 to i1            ; 6 uses
  %i.le = load float, ptr %i.a, align 16
  %.0251 = select i1 %.not269, float %i.le, float 0.000000e+00 ; 2 uses
  %i.lf = icmp eq i8 %i.ap, 27
  %.not269.mask472 = and i32 %.0244375, 1
  %i.lg = zext nneg i32 %.not269.mask472 to i64   ; 6 uses
  %i.lh = zext nneg i32 %.0244375 to i64          ; 3 uses
  %.val473 = load float, ptr %i.l, align 4        ; 3 uses
  %.val474 = load float, ptr %i.a, align 16
  %i.li = select i1 %.not269, float %.val473, float %.val474 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lg
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !29 ; 2 uses
  %i.lm = add nuw nsw i64 %i.lg, 7
  %i.ln = icmp samesign ult i64 %i.lm, %i.lh      ; 2 uses
  br i1 %i.lf, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep440.val = load float, ptr %.sroa.gep.sroa.gep440, align 8 ; 2 uses
  %i.lo = select i1 %.not269, float %.sroa.gep.sroa.gep440.val, float %.val473
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.lp = select i1 %.not269, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep440.val
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %.0251, float noundef %i.li, float noundef %i.lo, float noundef %i.lp, float noundef 0.000000e+00, float noundef %i.ll)
  br i1 %i.ln, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.lg, 7
  %indvars.iv.next414.peel = or disjoint i64 %i.lg, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep443.sroa.gep446.val = load float, ptr %.sroa.gep443.sroa.gep446, align 8 ; 2 uses
  %i.lq = select i1 %.not269, float %.sroa.gep443.sroa.gep446.val, float %.val473
  %.sroa.gep443.sroa.gep.val = load float, ptr %.sroa.gep443.sroa.gep, align 4
  %i.lr = select i1 %.not269, float %.sroa.gep443.sroa.gep.val, float %.sroa.gep443.sroa.gep446.val
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.li, float noundef %.0251, float noundef %i.lq, float noundef %i.lr, float noundef %i.ll, float noundef 0.000000e+00)
  br i1 %i.ln, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next420.peel = add nuw nsw i64 %i.lg, 7
  %indvars.iv.next422.peel = or disjoint i64 %i.lg, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next422, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next420, %.lr.ph.split.us ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv421 ; 3 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !29
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !29
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !29
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv419
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.lt, float noundef 0.000000e+00, float noundef %i.lv, float noundef %i.lx, float noundef %i.lz, float noundef 0.000000e+00)
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 4
  %i.ma = add nuw nsw i64 %indvars.iv421, 7
  %i.mb = icmp samesign ult i64 %i.ma, %i.lh
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 4
  br i1 %i.mb, label %.lr.ph.split.us, label %.thread, !llvm.loop !869

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv413 = phi i64 [ %indvars.iv.next414.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next414, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv413 ; 3 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !29
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !29
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !29
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.md, float noundef %i.mf, float noundef %i.mh, float noundef 0.000000e+00, float noundef %i.mj)
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 4
  %i.mk = add nuw nsw i64 %indvars.iv413, 7
  %i.ml = icmp samesign ult i64 %i.mk, %i.lh
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.ml, label %.lr.ph.split, label %.thread, !llvm.loop !870

bb.cw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not = icmp eq i32 %.0255372, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.mm = load i32, ptr %i.w, align 4, !tbaa !873 ; 13 uses
  %.not268 = icmp eq i32 %i.mm, 0
  br i1 %.not268, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload53.i = load ptr, ptr %i.x, align 8, !tbaa !411 ; 9 uses
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.mm, i32 0) ; 2 uses
  %.not.i.i314 = icmp sgt i32 %i.mm, 0
  br i1 %.not.i.i314, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.cy
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !50
  switch i8 %i.mq, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit [
    i8 0, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.mm, 1
  br i1 %.not.i.i.not.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, label %bb.da

_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i:  ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.cy
  %.sroa.9.168.i = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.mn, %bb.cy ]
  %i.mr = add nsw i32 %.sroa.9.168.i, %1          ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 0
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.mm)
  %..i.i.i = select i1 %i.ms, i32 %i.mm, i32 %i.mt ; 2 uses
  %.not.i26.i = icmp slt i32 %..i.i.i, %i.mm
  br i1 %.not.i26.i, label %bb.cz, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.cz:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %i.mu = sext i32 %..i.i.i to i64
  %i.mv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !50
  %i.mx = zext i8 %i.mw to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !50
  %i.na = zext i8 %i.mz to i32
  %i.nb = shl nuw nsw i32 %i.na, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.nb, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.mm
  br i1 %.not.i.i.1.i, label %bb.db, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.db:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.nc = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.nd = zext nneg i32 %.sroa.9.3.i to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !50
  %i.ng = zext i8 %i.nf to i32
  %i.nh = or disjoint i32 %.0.i.i.i, %i.ng
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.db, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nc, %bb.db ], [ %.sroa.9.3.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.nh, %bb.db ], [ %.0.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i32.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.mm
  br i1 %.not.i.i32.i, label %bb.dc, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i

bb.dc:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %i.ni = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.nj = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nj
end_hunk_2
