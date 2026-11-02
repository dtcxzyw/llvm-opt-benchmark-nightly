Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN11ImFontAtlas10RemoveFontEP6ImFont:bb.a
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
  %i.av = phi i32 [ %i.h, %.lr.ph21 ], [ %i.bk, %bb.i ] ; 2 uses
  %i.aw = phi ptr [ %.pre22, %.lr.ph21 ], [ %i.bl, %bb.i ] ; 2 uses
  %.020 = phi i32 [ 0, %.lr.ph21 ], [ %i.bm, %bb.i ] ; 3 uses
  %i.ax = sext i32 %.020 to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [160 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !417
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i32 %.020, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.be = sext i32 %i.av to i64
  %i.bf = xor i64 %i.ax, -1
  %i.bg = add nsw i64 %i.be, %i.bf
  %i.bh = mul nuw nsw i64 %i.bg, 160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.bd, i64 %i.bh, i1 false)
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !353
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.g, align 8, !tbaa !353
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !334
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bk = phi i32 [ %i.bj, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %i.bl = phi ptr [ %.pre, %bb.h ], [ %i.aw, %bb.g ]
  %.1 = phi i32 [ %i.bc, %bb.h ], [ %.020, %bb.g ]
  %i.bm = add nsw i32 %.1, 1                      ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bk
  br i1 %i.bn, label %bb.g, label %._crit_edge, !llvm.loop !700

bb.j:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !335
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !340
  br label %bb.k

bb.k:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit, %bb.j
  %i.bq = phi ptr [ %i.bp, %bb.j ], [ null, %_Z9IM_DELETEI6ImFontEvPT_.exit ]
  tail call void @_Z29ImFontAtlasBuildNotifySetFontP11ImFontAtlasP6ImFontS2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bq)
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
  %4 = icmp eq i32 %i.l, 0
  %or.cond = select i1 %i.m, i1 true, i1 %4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = add i32 %i.k, -1
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %or.cond, label %.thread, label %.preheader55.split.split.i

.preheader55.split.split.i:                       ; preds = %bb.a, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit
  %.04586 = phi i32 [ %i.gh, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit ], [ 3, %bb.a ] ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !448  ; 2 uses
  %i.s = add i32 %5, %i.r                         ; 2 uses
  %i.t = srem i32 %i.s, %i.r
  %i.u = sub nsw i32 %i.s, %i.t                   ; 11 uses
  %i.v = load i32, ptr %i.b, align 8, !tbaa !449  ; 3 uses
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.i

.preheader55.split.split.split.i:                 ; preds = %.preheader55.split.split.i
  %i.x = load i32, ptr %6, align 4, !tbaa !450    ; 4 uses
  %i.y = icmp sgt i32 %i.l, %i.x
  br i1 %i.y, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.split.i

.preheader55.split.split.split.split.i:           ; preds = %.preheader55.split.split.split.i
  %i.z = load ptr, ptr %7, align 8, !tbaa !451    ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !453 ; 3 uses
  %i.ab = add nsw i32 %i.aa, %i.u                 ; 2 uses
  %.not127.i.i.i = icmp sgt i32 %i.ab, %i.v
  br i1 %.not127.i.i.i, label %.._crit_edge.thread.i_crit_edge.i.i, label %.lr.ph.i.i.i

.._crit_edge.thread.i_crit_edge.i.i:              ; preds = %.preheader55.split.split.split.split.i
  %.pre.i.i = load i32, ptr %8, align 8, !tbaa !454
  br label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader55.split.split.split.split.i
  %9 = icmp sgt i32 %i.u, 0
  %10 = load i32, ptr %8, align 8, !tbaa !454     ; 3 uses
  %i.ac = icmp eq i32 %10, 0                      ; 2 uses
  br i1 %9, label %.lr.ph.i.preheader.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.i.preheader.us.i.i.i:                      ; preds = %.lr.ph.i.i.i, %bb.l
  %i.ad = phi i32 [ %i.bl, %bb.l ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ae = phi i32 [ %i.bk, %bb.l ], [ %i.aa, %.lr.ph.i.i.i ] ; 3 uses
  %.0132.us.i.i.i = phi ptr [ %.1.us.i.i.i, %bb.l ], [ null, %.lr.ph.i.i.i ] ; 3 uses
  %.074131.us.i.i.i = phi ptr [ %i.bj, %bb.l ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %.077130.us.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %7, %.lr.ph.i.i.i ] ; 2 uses
  %.080129.us.i.i.i = phi i32 [ %.181.us.i.i.i, %bb.l ], [ 1073741824, %.lr.ph.i.i.i ] ; 6 uses
  %.088128.us.i.i.i = phi i32 [ %.189.us.i.i.i, %bb.l ], [ 1073741824, %.lr.ph.i.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %bb.f, %.lr.ph.i.preheader.us.i.i.i
  %i.af = phi i32 [ %i.ba, %bb.f ], [ %i.ae, %.lr.ph.i.preheader.us.i.i.i ] ; 3 uses
  %.0364.i.us.i.i.i = phi i32 [ %.1.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ]
  %.0373.i.us.i.i.i = phi i32 [ %.138.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ] ; 4 uses
  %.0392.i.us.i.i.i = phi i32 [ %.140.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ] ; 4 uses
  %.0411.i.us.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %.074131.us.i.i.i, %.lr.ph.i.preheader.us.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !455 ; 5 uses
  %i.ai = icmp sgt i32 %i.ah, %.0392.i.us.i.i.i
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !456 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !453 ; 2 uses
  %i.am = sub nsw i32 %i.al, %i.af                ; 2 uses
  %i.an = add nsw i32 %i.am, %.0373.i.us.i.i.i
  %i.ao = icmp sgt i32 %i.an, %i.u
  %i.ap = sub nsw i32 %i.u, %.0373.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ao, i32 %i.ap, i32 %i.am ; 2 uses
  %i.aq = sub nsw i32 %.0392.i.us.i.i.i, %i.ah
  %i.ar = mul nsw i32 %spec.select.i.us.i.i.i, %i.aq
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.us.i.i.i
  %i.as = sub nsw i32 %i.ah, %.0392.i.us.i.i.i
  %i.at = mul nsw i32 %i.as, %.0373.i.us.i.i.i    ; 2 uses
  %i.au = icmp slt i32 %i.af, %i.ae
  %i.av = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !456 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !453 ; 4 uses
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = sub nsw i32 %i.ax, %i.af
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = sub nsw i32 %i.ax, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ba = phi i32 [ %i.ax, %bb.e ], [ %i.ax, %bb.d ], [ %i.al, %bb.b ] ; 2 uses
  %i.bb = phi ptr [ %i.aw, %bb.e ], [ %i.aw, %bb.d ], [ %i.ak, %bb.b ]
  %.140.i.us.i.i.i = phi i32 [ %i.ah, %bb.e ], [ %i.ah, %bb.d ], [ %.0392.i.us.i.i.i, %bb.b ] ; 7 uses
  %.pn.i.us.i.i.i = phi i32 [ %i.az, %bb.e ], [ %i.ay, %bb.d ], [ %spec.select.i.us.i.i.i, %bb.b ]
  %.pn46.i.us.i.i.i = phi i32 [ %i.at, %bb.e ], [ %i.at, %bb.d ], [ %i.ar, %bb.b ]
  %.1.i.us.i.i.i = add nsw i32 %.pn46.i.us.i.i.i, %.0364.i.us.i.i.i ; 3 uses
  %.138.i.us.i.i.i = add nsw i32 %.pn.i.us.i.i.i, %.0373.i.us.i.i.i
  %i.bc = icmp slt i32 %i.ba, %i.ad
  br i1 %i.bc, label %.lr.ph.i.us.i.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i.i, !llvm.loop !702

bb.g:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i.i
  %i.bd = add nsw i32 %.140.i.us.i.i.i, %i.l
  %.not103.us.i.i.i = icmp sgt i32 %i.bd, %i.x
  br i1 %.not103.us.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp slt i32 %.140.i.us.i.i.i, %.080129.us.i.i.i
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp eq i32 %.140.i.us.i.i.i, %.080129.us.i.i.i
  %i.bg = icmp slt i32 %.1.i.us.i.i.i, %.088128.us.i.i.i
  %or.cond.us.i.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.us.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.l

bb.k:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i.i
  %i.bh = icmp slt i32 %.140.i.us.i.i.i, %.080129.us.i.i.i
  %spec.select.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %.140.i.us.i.i.i, i32 %.080129.us.i.i.i)
  %spec.select104.us.i.i.i = select i1 %i.bh, ptr %.077130.us.i.i.i, ptr %.0132.us.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.189.us.i.i.i = phi i32 [ %.088128.us.i.i.i, %bb.g ], [ %.088128.us.i.i.i, %bb.i ], [ %.1.i.us.i.i.i, %bb.j ], [ %.088128.us.i.i.i, %bb.k ] ; 3 uses
  %.181.us.i.i.i = phi i32 [ %.080129.us.i.i.i, %bb.g ], [ %.080129.us.i.i.i, %bb.i ], [ %.140.i.us.i.i.i, %bb.j ], [ %spec.select.us.i.i.i, %bb.k ] ; 3 uses
  %.1.us.i.i.i = phi ptr [ %.0132.us.i.i.i, %bb.g ], [ %.0132.us.i.i.i, %bb.i ], [ %.077130.us.i.i.i, %bb.j ], [ %spec.select104.us.i.i.i, %bb.k ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.074131.us.i.i.i, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !456 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !453 ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.u                 ; 2 uses
  %.not.us.i.i.i = icmp sgt i32 %i.bl, %i.v
  br i1 %.not.us.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.preheader.us.i.i.i, !llvm.loop !703

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.k, label %bb.g

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %spec.select.i.i = select i1 %i.ac, i32 1073741824, i32 0
  br label %._crit_edge.thread211.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l
  %i.bm = icmp eq ptr %.1.us.i.i.i, null
  br i1 %i.bm, label %._crit_edge.thread.i.i.i, label %._crit_edge.thread211.i.i.i

._crit_edge.thread211.i.i.i:                      ; preds = %._crit_edge.i.i.i, %.lr.ph.split.i.i.i
  %.0.lcssa217.i.i.i = phi ptr [ %.1.us.i.i.i, %._crit_edge.i.i.i ], [ %7, %.lr.ph.split.i.i.i ] ; 2 uses
  %.080.lcssa216.i.i.i = phi i32 [ %.181.us.i.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph.split.i.i.i ]
  %.088.lcssa215.i.i.i = phi i32 [ %.189.us.i.i.i, %._crit_edge.i.i.i ], [ %spec.select.i.i, %.lr.ph.split.i.i.i ]
  %i.bn = load ptr, ptr %.0.lcssa217.i.i.i, align 8, !tbaa !708
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !453
  br label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread211.i.i.i, %._crit_edge.i.i.i, %.._crit_edge.thread.i_crit_edge.i.i
  %11 = phi i32 [ %10, %._crit_edge.thread211.i.i.i ], [ %10, %._crit_edge.i.i.i ], [ %.pre.i.i, %.._crit_edge.thread.i_crit_edge.i.i ]
  %.0.lcssa210.i.i.i = phi ptr [ %.0.lcssa217.i.i.i, %._crit_edge.thread211.i.i.i ], [ null, %._crit_edge.i.i.i ], [ null, %.._crit_edge.thread.i_crit_edge.i.i ] ; 2 uses
  %.080.lcssa209.i.i.i = phi i32 [ %.080.lcssa216.i.i.i, %._crit_edge.thread211.i.i.i ], [ %.181.us.i.i.i, %._crit_edge.i.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i.i ] ; 2 uses
  %.088.lcssa208.i.i.i = phi i32 [ %.088.lcssa215.i.i.i, %._crit_edge.thread211.i.i.i ], [ %.189.us.i.i.i, %._crit_edge.i.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i.i ]
  %i.bp = phi i32 [ %i.bo, %._crit_edge.thread211.i.i.i ], [ 0, %._crit_edge.i.i.i ], [ 0, %.._crit_edge.thread.i_crit_edge.i.i ] ; 2 uses
  %i.bq = icmp eq i32 %11, 1
  br i1 %i.bq, label %.preheader126.i.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i.i

.preheader126.i.i.i:                              ; preds = %._crit_edge.thread.i.i.i
  %i.br = icmp slt i32 %i.aa, %i.u
  br i1 %i.br, label %.lr.ph172.i.i.i, label %.preheader.i.i.i.preheader

.lr.ph172.i.i.i:                                  ; preds = %.preheader126.i.i.i, %.lr.ph172.i.i.i
  %.072171.i.i.i = phi ptr [ %i.bt, %.lr.ph172.i.i.i ], [ %i.z, %.preheader126.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.072171.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !456 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !453
  %i.bv = icmp slt i32 %i.bu, %i.u
  br i1 %i.bv, label %.lr.ph172.i.i.i, label %.preheader.i.i.i.preheader, !llvm.loop !704

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph172.i.i.i, %.preheader126.i.i.i
  %.173179.i.i.i.ph = phi ptr [ %i.z, %.preheader126.i.i.i ], [ %i.bt, %.lr.ph172.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.w
  %.2180.i.i.i = phi ptr [ %.3.i.i.i, %bb.w ], [ %.0.lcssa210.i.i.i, %.preheader.i.i.i.preheader ] ; 2 uses
  %.173179.i.i.i = phi ptr [ %i.dh, %bb.w ], [ %.173179.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 2 uses
  %.175178.i.i.i = phi ptr [ %.276.i.i.i, %bb.w ], [ %i.z, %.preheader.i.i.i.preheader ]
  %.178177.i.i.i = phi ptr [ %.279.i.i.i, %bb.w ], [ %7, %.preheader.i.i.i.preheader ]
  %.282176.i.i.i = phi i32 [ %.383.i.i.i, %bb.w ], [ %.080.lcssa209.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %.085175.i.i.i = phi i32 [ %.186.i.i.i, %bb.w ], [ %i.bp, %.preheader.i.i.i.preheader ] ; 3 uses
  %.290174.i.i.i = phi i32 [ %.391.i.i.i, %bb.w ], [ %.088.lcssa208.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.bw = load i32, ptr %.173179.i.i.i, align 8, !tbaa !453 ; 3 uses
  %i.bx = sub nsw i32 %i.bw, %i.u                 ; 5 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i.i.i
  %.279.i.i.i = phi ptr [ %.178177.i.i.i, %.preheader.i.i.i ], [ %i.by, %bb.m ] ; 2 uses
  %.276.i.i.i = phi ptr [ %.175178.i.i.i, %.preheader.i.i.i ], [ %i.bz, %bb.m ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.276.i.i.i, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !456 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !453
  %.not100.i.i.i = icmp sgt i32 %i.ca, %i.bx
  br i1 %.not100.i.i.i, label %bb.n, label %bb.m, !llvm.loop !705

bb.n:                                             ; preds = %bb.m
  %i.cb = load i32, ptr %.276.i.i.i, align 8, !tbaa !453 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bw
  br i1 %i.cc, label %.lr.ph.i110.i.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i

.lr.ph.i110.i.i.i:                                ; preds = %bb.n, %bb.s
  %i.cd = phi i32 [ %i.cy, %bb.s ], [ %i.cb, %bb.n ] ; 3 uses
  %.0364.i111.i.i.i = phi i32 [ %.1.i119.i.i.i, %bb.s ], [ 0, %bb.n ]
  %.0373.i112.i.i.i = phi i32 [ %.138.i120.i.i.i, %bb.s ], [ 0, %bb.n ] ; 4 uses
  %.0392.i113.i.i.i = phi i32 [ %.140.i116.i.i.i, %bb.s ], [ 0, %bb.n ] ; 4 uses
  %.0411.i114.i.i.i = phi ptr [ %i.cz, %bb.s ], [ %.276.i.i.i, %bb.n ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !455 ; 5 uses
  %i.cg = icmp sgt i32 %i.cf, %.0392.i113.i.i.i
  br i1 %i.cg, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph.i110.i.i.i
  %i.ch = sub nsw i32 %i.cf, %.0392.i113.i.i.i
  %i.ci = mul nsw i32 %i.ch, %.0373.i112.i.i.i    ; 2 uses
  %i.cj = icmp slt i32 %i.cd, %i.bx
  %i.ck = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !456 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !453 ; 4 uses
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = sub nsw i32 %i.cm, %i.bx
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.co = sub nsw i32 %i.cm, %i.cd
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i110.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !456 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !453 ; 2 uses
  %i.cs = sub nsw i32 %i.cr, %i.cd                ; 2 uses
  %i.ct = add nsw i32 %i.cs, %.0373.i112.i.i.i
  %i.cu = icmp sgt i32 %i.ct, %i.u
  %i.cv = sub nsw i32 %i.u, %.0373.i112.i.i.i
  %spec.select.i115.i.i.i = select i1 %i.cu, i32 %i.cv, i32 %i.cs ; 2 uses
  %i.cw = sub nsw i32 %.0392.i113.i.i.i, %i.cf
  %i.cx = mul nsw i32 %spec.select.i115.i.i.i, %i.cw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.cy = phi i32 [ %i.cm, %bb.p ], [ %i.cm, %bb.q ], [ %i.cr, %bb.r ] ; 2 uses
  %i.cz = phi ptr [ %i.cl, %bb.p ], [ %i.cl, %bb.q ], [ %i.cq, %bb.r ]
  %.140.i116.i.i.i = phi i32 [ %i.cf, %bb.p ], [ %i.cf, %bb.q ], [ %.0392.i113.i.i.i, %bb.r ] ; 2 uses
  %.pn.i117.i.i.i = phi i32 [ %i.cn, %bb.p ], [ %i.co, %bb.q ], [ %spec.select.i115.i.i.i, %bb.r ]
  %.pn46.i118.i.i.i = phi i32 [ %i.ci, %bb.p ], [ %i.ci, %bb.q ], [ %i.cx, %bb.r ]
  %.1.i119.i.i.i = add nsw i32 %.pn46.i118.i.i.i, %.0364.i111.i.i.i ; 2 uses
  %.138.i120.i.i.i = add nsw i32 %.pn.i117.i.i.i, %.0373.i112.i.i.i
  %i.da = icmp slt i32 %i.cy, %i.bw
  br i1 %i.da, label %.lr.ph.i110.i.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i, !llvm.loop !702

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i: ; preds = %bb.s, %bb.n
  %.039.lcssa.i108.i.i.i = phi i32 [ 0, %bb.n ], [ %.140.i116.i.i.i, %bb.s ] ; 4 uses
  %.036.lcssa.i109.i.i.i = phi i32 [ 0, %bb.n ], [ %.1.i119.i.i.i, %bb.s ] ; 3 uses
  %i.db = add nsw i32 %.039.lcssa.i108.i.i.i, %i.l
  %.not101.i.i.i = icmp sgt i32 %i.db, %i.x
  %.not102.i.i.i = icmp sgt i32 %.039.lcssa.i108.i.i.i, %.282176.i.i.i
  %or.cond106.i.i.i = select i1 %.not101.i.i.i, i1 true, i1 %.not102.i.i.i
  br i1 %or.cond106.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i
  %i.dc = icmp slt i32 %.039.lcssa.i108.i.i.i, %.282176.i.i.i
  %i.dd = icmp slt i32 %.036.lcssa.i109.i.i.i, %.290174.i.i.i
  %or.cond125.i.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond125.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = icmp eq i32 %.036.lcssa.i109.i.i.i, %.290174.i.i.i
  %i.df = icmp slt i32 %i.bx, %.085175.i.i.i
  %or.cond107.i.i.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond107.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i
  %.391.i.i.i = phi i32 [ %.036.lcssa.i109.i.i.i, %bb.v ], [ %.290174.i.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i ], [ %.290174.i.i.i, %bb.u ]
  %.186.i.i.i = phi i32 [ %i.bx, %bb.v ], [ %.085175.i.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i ], [ %.085175.i.i.i, %bb.u ] ; 2 uses
  %.383.i.i.i = phi i32 [ %.039.lcssa.i108.i.i.i, %bb.v ], [ %.282176.i.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i ], [ %.282176.i.i.i, %bb.u ] ; 2 uses
  %.3.i.i.i = phi ptr [ %.279.i.i.i, %bb.v ], [ %.2180.i.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit121.i.i.i ], [ %.2180.i.i.i, %bb.u ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.173179.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !456 ; 2 uses
  %.not99.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not99.i.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i.i, label %.preheader.i.i.i, !llvm.loop !706

_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i.i: ; preds = %bb.w, %._crit_edge.thread.i.i.i
  %.287.i.i.i = phi i32 [ %i.bp, %._crit_edge.thread.i.i.i ], [ %.186.i.i.i, %bb.w ] ; 5 uses
  %.484.i.i.i = phi i32 [ %.080.lcssa209.i.i.i, %._crit_edge.thread.i.i.i ], [ %.383.i.i.i, %bb.w ]
  %.4.i.i.i = phi ptr [ %.0.lcssa210.i.i.i, %._crit_edge.thread.i.i.i ], [ %.3.i.i.i, %bb.w ] ; 3 uses
  %i.di = freeze i32 %.484.i.i.i                  ; 4 uses
  %i.dj = icmp eq ptr %.4.i.i.i, null
  br i1 %i.dj, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i.i
  %i.dk = add nsw i32 %i.di, %i.l                 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, %i.x
  br i1 %i.dl, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !457 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %.287.i.i.i, ptr %i.dm, align 8, !tbaa !453
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !455
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !456
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !457
  %i.dr = load ptr, ptr %.4.i.i.i, align 8, !tbaa !708 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !453
  %i.dt = icmp slt i32 %i.ds, %.287.i.i.i
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !456
  store ptr %i.dm, ptr %i.du, align 8, !tbaa !456
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store ptr %i.dm, ptr %.4.i.i.i, align 8, !tbaa !708
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi ptr [ %i.dv, %bb.aa ], [ %i.dr, %bb.ab ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !456 ; 2 uses
  %.not54.i.i = icmp eq ptr %i.dx, null
  %.pre58.i.i = add nsw i32 %.287.i.i.i, %i.k     ; 3 uses
  br i1 %.not54.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %i.dy = phi ptr [ %i.ed, %bb.ad ], [ %i.dx, %bb.ac ] ; 4 uses
  %i.dz = phi ptr [ %i.ec, %bb.ad ], [ %i.dw, %bb.ac ]
  %.155.i.i = phi ptr [ %i.dy, %bb.ad ], [ %.0.i.i, %bb.ac ] ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 8, !tbaa !453
  %.not44.i.i = icmp sgt i32 %i.ea, %.pre58.i.i
  br i1 %.not44.i.i, label %.critedge.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !457
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !456
  store ptr %.155.i.i, ptr %i.o, align 8, !tbaa !457
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !456 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !707

.critedge.i.i:                                    ; preds = %bb.ad, %.lr.ph.i.i, %bb.ac
  %.1.lcssa.i.i = phi ptr [ %.0.i.i, %bb.ac ], [ %i.dy, %bb.ad ], [ %.155.i.i, %.lr.ph.i.i ] ; 3 uses
  store ptr %.1.lcssa.i.i, ptr %i.dp, align 8, !tbaa !456
  %i.ee = load i32, ptr %.1.lcssa.i.i, align 8, !tbaa !453
  %i.ef = icmp slt i32 %i.ee, %.pre58.i.i
  br i1 %i.ef, label %bb.ae, label %.critedge51.i

bb.ae:                                            ; preds = %.critedge.i.i
  store i32 %.pre58.i.i, ptr %.1.lcssa.i.i, align 8, !tbaa !453
  br label %.critedge51.i

.critedge51.i:                                    ; preds = %bb.ae, %.critedge.i.i
  %12 = icmp eq i32 %.287.i.i.i, 2147483647
  br i1 %12, label %.critedge51.split.us.i, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit

.critedge51.split.us.i:                           ; preds = %.critedge51.i
  %.not85 = icmp eq i32 %i.di, 2147483647
  br i1 %.not85, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.thread

_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit: ; preds = %.critedge51.i
  %i.eg = trunc i32 %.287.i.i.i to i16
  br label %.thread

_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread: ; preds = %.preheader55.split.split.split.i, %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i.i, %bb.x, %bb.y, %.preheader55.split.split.i, %.critedge51.split.us.i
  %i.eh = icmp eq i32 %.04586, 0
  br i1 %i.eh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread
  %i.ei = load i8, ptr %i.p, align 8, !tbaa !458, !range !351, !noundef !352
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, %bb.af
  %i.ek = load ptr, ptr @GImGui, align 8, !tbaa !336 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, null
  br i1 %.not50, label %.thread80, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 10404
  %i.em = load i32, ptr %i.el, align 4, !tbaa !337
  %i.en = and i32 %i.em, 256
  %.not51 = icmp eq i32 %i.en, 0
  br i1 %.not51, label %.thread80, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.24, i32 noundef %1, i32 noundef %2)
  br label %.thread80

bb.aj:                                            ; preds = %bb.af
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !339 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 192 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !375 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i, label %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit

.lr.ph.i:                                         ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 208
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i
  %i.et = phi i32 [ %i.eq, %.lr.ph.i ], [ %i.fr, %bb.ao ] ; 3 uses
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fs, %bb.ao ] ; 3 uses
  %i.eu = lshr i32 %.014.i, 5
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !376
  %i.ew = zext nneg i32 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !377
  %i.ez = and i32 %.014.i, 31
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [104 x i8], ptr %i.ey, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !378
  %i.fe = add nsw i32 %i.fd, 2
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !339
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 164
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !379
  %i.fi = icmp sgt i32 %i.fe, %i.fh
  br i1 %i.fi, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 76
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = and i32 %i.fk, 67108864
  %.not.i56 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !384 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !363
  %i.fq = and i32 %i.fp, 8
  %.not13.i = icmp eq i32 %i.fq, 0
  br i1 %.not13.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @_Z23ImFontAtlasBakedDiscardP11ImFontAtlasP6ImFontP11ImFontBaked(ptr noundef nonnull %0, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fb)
  %.pre.i57 = load i32, ptr %i.ep, align 8, !tbaa !375
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.fr = phi i32 [ %i.et, %bb.al ], [ %i.et, %bb.am ], [ %i.et, %bb.ak ], [ %.pre.i57, %bb.an ] ; 2 uses
  %i.fs = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %i.fr
  br i1 %i.ft, label %bb.ak, label %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit, !llvm.loop !9

_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit: ; preds = %bb.ao, %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eo, i64 160
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !459
  %i.fw = sitofp i32 %i.fv to float
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 152
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !460
  %i.fz = sitofp i32 %i.fy to float
  %i.ga = fmul nnan float %i.fz, 2.000000e-01
  %i.gb = fcmp ogt float %i.ga, %i.fw
  br i1 %i.gb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit
  tail call void @_Z22ImFontAtlasTextureGrowP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1), !inline_history !709
  br label %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit

bb.aq:                                            ; preds = %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !332 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !311
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !312
  tail call void @_Z24ImFontAtlasTextureRepackP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef %i.ge, i32 noundef %i.gg), !inline_history !709
  br label %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit

_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit: ; preds = %bb.ap, %bb.aq
  %i.gh = add nsw i32 %.04586, -1
  br label %.preheader55.split.split.i

.thread:                                          ; preds = %.critedge51.split.us.i, %bb.a, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit
  %.sroa.058.179 = phi i16 [ %i.eg, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit ], [ 0, %bb.a ], [ -1, %.critedge51.split.us.i ] ; 2 uses
  %.sroa.6.178.in = phi i32 [ %i.di, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit ], [ 0, %bb.a ], [ %i.di, %.critedge51.split.us.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !710
  %i.gk = zext i16 %.sroa.058.179 to i32
  %i.gl = and i32 %1, 65535                       ; 2 uses
  %i.gm = add i32 %i.d, %i.gl
  %i.gn = add i32 %i.gm, %i.gk
  %i.go = tail call noundef i32 @llvm.smax.i32(i32 %i.gj, i32 %i.gn)
  store i32 %i.go, ptr %i.gi, align 8, !tbaa !710
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 180 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !711
  %i.gr = and i32 %.sroa.6.178.in, 65535
  %i.gs = and i32 %2, 65535                       ; 2 uses
  %i.gt = add i32 %i.d, %i.gs
  %i.gu = add i32 %i.gt, %i.gr
  %i.gv = tail call noundef i32 @llvm.smax.i32(i32 %i.gq, i32 %i.gu)
  store i32 %i.gv, ptr %i.gp, align 4, !tbaa !711
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !461
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !461
  %i.gz = mul nsw i32 %i.k, %i.l
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !460
  %i.hc = add nsw i32 %i.hb, %i.gz
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !460
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !395 ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !394
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.ar, label %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i: ; preds = %.thread
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !331
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

bb.ar:                                            ; preds = %.thread
  %i.hi = add nsw i32 %i.he, 1
  %.not.i.i53 = icmp eq i32 %i.he, 0
  br i1 %.not.i.i53, label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hj = sdiv i32 %i.he, 2
  %i.hk = add nsw i32 %i.hj, %i.he
  br label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i: ; preds = %bb.as, %bb.ar
  %i.hl = phi i32 [ %i.hk, %bb.as ], [ 8, %bb.ar ]
  %i.hm = tail call noundef i32 @llvm.smax.i32(i32 %i.hl, i32 %i.hi) ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 3
  %i.hp = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ho) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !331 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.hr, null
  br i1 %.not6.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  %i.hs = load i32, ptr %i.hd, align 8, !tbaa !395
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hp, ptr nonnull align 2 %i.hr, i64 %i.hu, i1 false)
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !331
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.hv)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !331
  store i32 %i.hm, ptr %i.hf, align 4, !tbaa !394
  %.pre3.i = load i32, ptr %i.hd, align 8, !tbaa !395
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i, %bb.au
  %i.hw = phi i32 [ %i.he, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.au ]
  %i.hx = phi ptr [ %.pre.i, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %i.hp, %bb.au ]
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hy
  %.sroa.1160.0.insert.ext = zext nneg i32 %i.gs to i64
  %.sroa.1160.0.insert.shift = shl nuw i64 %.sroa.1160.0.insert.ext, 48
  %.sroa.9.0.insert.ext = zext nneg i32 %i.gl to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1160.0.insert.shift, %.sroa.9.0.insert.shift
  %i.ia = shl i32 %.sroa.6.178.in, 16
  %.sroa.6.0.insert.shift = zext i32 %i.ia to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.058.0.insert.ext = zext i16 %.sroa.058.179 to i64
  %.sroa.058.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.058.0.insert.ext
  store i64 %.sroa.058.0.insert.insert, ptr %i.hz, align 2
  %i.ib = load i32, ptr %i.hd, align 8, !tbaa !395 ; 2 uses
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.hd, align 8, !tbaa !395
  %.not52 = icmp eq ptr %3, null
  %.val = load ptr, ptr %i.a, align 8, !tbaa !339 ; 7 uses
  br i1 %.not52, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit
  %i.id = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !712
  %i.if = add i32 %i.ie, 1048575
  %i.ig = load i32, ptr %3, align 4               ; 2 uses
  %i.ih = and i32 %i.if, 1048575
  %i.ii = and i32 %i.ig, -1048576
  %i.ij = or disjoint i32 %i.ii, %i.ih
  store i32 %i.ij, ptr %3, align 4
  %i.ik = load ptr, ptr %i.a, align 8, !tbaa !339
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !439
  %i.in = ptrtoint ptr %3 to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = lshr exact i64 %i.ip, 2
  %i.ir = trunc i64 %i.iq to i32
  %i.is = and i32 %i.ig, 1072693248
  %i.it = or i32 %i.is, %i.ir
  br label %.thread80

bb.aw:                                            ; preds = %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !424 ; 3 uses
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.ix = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !438 ; 4 uses
  %i.iz = add nsw i32 %i.iy, 1                    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val, i64 116 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !462 ; 4 uses
  %.not.i = icmp slt i32 %i.iy, %i.jb
  br i1 %.not.i, label %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i, label %bb.ay

._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i: ; preds = %bb.ax
  %.phi.trans.insert.i54 = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %.pre.i55 = load ptr, ptr %.phi.trans.insert.i54, align 8, !tbaa !439
  br label %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jc = sdiv i32 %i.jb, 2
  %i.jd = add nsw i32 %i.jc, %i.jb
  br label %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i: ; preds = %bb.az, %bb.ay
  %i.je = phi i32 [ %i.jd, %bb.az ], [ 8, %bb.ay ]
  %i.jf = tail call noundef i32 @llvm.smax.i32(i32 %i.je, i32 %i.iz) ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %i.ji = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.jh) ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !439 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not6.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i
  %i.jl = load i32, ptr %i.ix, align 8, !tbaa !463
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ji, ptr nonnull align 4 %i.jk, i64 %i.jn, i1 false)
  %i.jo = load ptr, ptr %i.jj, align 8, !tbaa !439
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.jo)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !439
  store i32 %i.jf, ptr %i.ja, align 4, !tbaa !462
  br label %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i

_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i: ; preds = %bb.bb, %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i
  %i.jp = phi ptr [ %.pre.i55, %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i ], [ %i.ji, %bb.bb ]
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !463
  %i.jq = sext i32 %i.iy to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jq ; 2 uses
  store i32 0, ptr %i.jr, align 4
  br label %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit

bb.bc:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !439
  %i.ju = zext nneg i32 %i.iv to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ju ; 3 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = shl i32 %i.jw, 12
  %i.jy = ashr exact i32 %i.jx, 12
  store i32 %i.jy, ptr %i.iu, align 8, !tbaa !424
  %.pre1.i = load i32, ptr %i.jv, align 4
  br label %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit

_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit: ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i, %bb.bc
  %i.jz = phi i32 [ 0, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %.pre1.i, %bb.bc ] ; 2 uses
  %.017.i = phi i32 [ %i.iy, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %i.iv, %bb.bc ]
  %.0.i = phi ptr [ %i.jr, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %i.jv, %bb.bc ]
  %i.ka = and i32 %i.ib, 1048575
  %i.kb = and i32 %i.jz, -1074790400
  %i.kc = or disjoint i32 %i.ka, %i.kb
  %i.kd = or disjoint i32 %i.kc, 1073741824
  store i32 %i.kd, ptr %.0.i, align 4
end_hunk_0
