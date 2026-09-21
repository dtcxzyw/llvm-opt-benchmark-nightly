Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_Z21ImFontAtlasBuildClearP11ImFontAtlas:bb.a
bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 688 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !340 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN6ImFont15ClearOutputDataEv.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 192 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !376 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN6ImFont15ClearOutputDataEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %i.bf = phi i32 [ %i.bc, %.lr.ph.i.i.i ], [ %i.bz, %bb.p ] ; 2 uses
  %.020.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ca, %bb.p ] ; 3 uses
  %i.bg = lshr i32 %.020.i.i.i, 5
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !377
  %i.bi = zext nneg i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !378
  %i.bl = and i32 %.020.i.i.i, 31
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %i.bk, i64 %i.bm ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !379
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !340
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 164
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !380
  %i.bt = icmp sle i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not17.i.i.i = icmp eq ptr %i.bv, %i.ak
  %or.cond.i.i.i = select i1 %i.bt, i1 %.not17.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 76
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 67108864
  %.not18.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not18.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_Z23ImFontAtlasBakedDiscardP11ImFontAtlasP6ImFontP11ImFontBaked(ptr noundef nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(76) %i.ak, ptr noundef nonnull %i.bn)
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !376
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bz = phi i32 [ %i.bf, %bb.n ], [ %i.bf, %bb.m ], [ %.pre.i.i.i, %bb.o ] ; 2 uses
  %i.ca = add nuw nsw i32 %.020.i.i.i, 1          ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.bz
  br i1 %i.cb, label %bb.m, label %_ZN6ImFont15ClearOutputDataEv.exit.i, !llvm.loop !8

_ZN6ImFont15ClearOutputDataEv.exit.i:             ; preds = %bb.p, %.preheader.i.i.i, %bb.l, %bb.k
  store i8 0, ptr %i.as, align 4
  store ptr null, ptr %i.ak, align 8, !tbaa !381
  store ptr %0, ptr %i.ar, align 8, !tbaa !365
  br label %_Z30ImFontAtlasFontSourceAddToFontP11ImFontAtlasP6ImFontP12ImFontConfig.exit

_Z30ImFontAtlasFontSourceAddToFontP11ImFontAtlasP6ImFontP12ImFontConfig.exit: ; preds = %bb.j, %_ZN6ImFont15ClearOutputDataEv.exit.i
  store i8 0, ptr %i.ab, align 2, !tbaa !348
  tail call void @_Z38ImFontAtlasBuildSetupFontSpecialGlyphsP11ImFontAtlasP6ImFontP12ImFontConfig(ptr nonnull poison, ptr noundef %i.ak, ptr noundef readonly %i.au)
  %i.cc = getelementptr inbounds nuw i8, ptr %.039, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.cc, %i.aq
  br i1 %.not33, label %._crit_edge42, label %bb.j
}

; Function Attrs: mustprogress uwtable
define void @_Z43ImFontAtlasBuildLegacyPreloadAllGlyphRangesP11ImFontAtlas(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 185
  store i8 1, ptr %i.c, align 1, !tbaa !392
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !336  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !339  ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nsw i64 %i.h, 3
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %.idx
  %.not63 = icmp eq i32 %i.g, 0
  br i1 %.not63, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %._crit_edge62, %bb.a
  ret void

.lr.ph66:                                         ; preds = %bb.a, %._crit_edge62
  %.03664 = phi ptr [ %i.at, %._crit_edge62 ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.03664, align 8, !tbaa !341 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !416
  %i.m = tail call noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76) %i.j, float noundef %i.l, float noundef -1.000000e+00) ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.o = load i16, ptr %i.n, align 2, !tbaa !482  ; 3 uses
  %.not39 = icmp eq i16 %i.o, 0
  br i1 %.not39, label %_ZN11ImFontBaked9FindGlyphEt.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph66
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !260
  %i.s = sext i32 %i.r to i64
  %i.t = icmp ult i64 %i.p, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !261
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.p
  %i.x = load i16, ptr %i.w, align 2, !tbaa !243
  %cond = icmp eq i16 %i.x, -1
  br i1 %cond, label %bb.d, label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i16 noundef zeroext %i.o, ptr noundef null) ; 0 uses
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

_ZN11ImFontBaked9FindGlyphEt.exit:                ; preds = %bb.d, %bb.c, %.lr.ph66
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !483 ; 3 uses
  %.not40 = icmp eq i16 %i.aa, 0
  br i1 %.not40, label %_ZN11ImFontBaked9FindGlyphEt.exit46, label %bb.e

bb.e:                                             ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !260
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !261
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !243
  %cond50 = icmp eq i16 %i.aj, -1
  br i1 %cond50, label %bb.g, label %_ZN11ImFontBaked9FindGlyphEt.exit46

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i16 noundef zeroext %i.aa, ptr noundef null) ; 0 uses
  br label %_ZN11ImFontBaked9FindGlyphEt.exit46

_ZN11ImFontBaked9FindGlyphEt.exit46:              ; preds = %bb.g, %bb.f, %_ZN11ImFontBaked9FindGlyphEt.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !360 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !362 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %.idx68 = shl nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %.idx68
  %.not4159 = icmp eq i32 %i.ao, 0
  br i1 %.not4159, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.h

._crit_edge62:                                    ; preds = %._crit_edge58, %_ZN11ImFontBaked9FindGlyphEt.exit46
  %i.at = getelementptr inbounds nuw i8, ptr %.03664, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.i
  br i1 %.not, label %._crit_edge67, label %.lr.ph66

bb.h:                                             ; preds = %.lr.ph61, %._crit_edge58
  %.03560 = phi ptr [ %i.an, %.lr.ph61 ], [ %i.bq, %._crit_edge58 ] ; 2 uses
  %i.au = load ptr, ptr %.03560, align 8, !tbaa !382
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !437 ; 2 uses
  %.not42 = icmp eq ptr %i.aw, null
  %spec.select = select i1 %.not42, ptr @_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges, ptr %i.aw ; 2 uses
  %i.ax = load i16, ptr %spec.select, align 2, !tbaa !243 ; 2 uses
  %.not4354 = icmp eq i16 %i.ax, 0
  br i1 %.not4354, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.h, %._crit_edge
  %i.ay = phi i16 [ %i.bd, %._crit_edge ], [ %i.ax, %bb.h ] ; 2 uses
  %.03455 = phi ptr [ %i.bc, %._crit_edge ], [ %spec.select, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03455, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !243 ; 2 uses
  %.not69 = icmp ugt i16 %i.ay, %i.ba
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph57
  %i.bb = zext i16 %i.ay to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit49, %.lr.ph57
  %i.bc = getelementptr inbounds nuw i8, ptr %.03455, i64 4 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !243 ; 2 uses
  %.not43 = icmp eq i16 %i.bd, 0
  br i1 %.not43, label %._crit_edge58, label %.lr.ph57, !llvm.loop !712

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN11ImFontBaked9FindGlyphEt.exit49
  %i.be = phi i16 [ %i.ba, %.lr.ph.preheader ], [ %i.bn, %_ZN11ImFontBaked9FindGlyphEt.exit49 ]
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN11ImFontBaked9FindGlyphEt.exit49 ] ; 5 uses
  %i.bf = trunc nuw i64 %indvars.iv to i16
  %i.bg = load i32, ptr %i.ar, align 8, !tbaa !260
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !261
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !243
  %cond51 = icmp eq i16 %i.bl, -1
  br i1 %cond51, label %bb.j, label %_ZN11ImFontBaked9FindGlyphEt.exit49

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.bm = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i16 noundef zeroext %i.bf, ptr noundef null) ; 0 uses
  %.pre = load i16, ptr %i.az, align 2, !tbaa !243
  br label %_ZN11ImFontBaked9FindGlyphEt.exit49

_ZN11ImFontBaked9FindGlyphEt.exit49:              ; preds = %bb.j, %bb.i
  %i.bn = phi i16 [ %.pre, %bb.j ], [ %i.be, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !713

._crit_edge58:                                    ; preds = %._crit_edge, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.03560, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bq, %i.aq
  br i1 %.not41, label %._crit_edge62, label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.b = load i8, ptr %i.a, align 1, !tbaa !484   ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i8 %i.b to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !257
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 8, !tbaa !468
  %i.h = fmul float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load float, ptr %i.i, align 8, !tbaa !417
  %i.k = fmul float %i.h, %i.j
  %i.l = fcmp ogt float %i.k, 3.600000e+01
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.n = load i8, ptr %i.m, align 2, !tbaa !432, !range !352, !noundef !353
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.q = phi i32 [ %i.c, %bb.b ], [ 1, %bb.c ], [ %i.p, %bb.d ]
  store i32 %i.q, ptr %2, align 4, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !300
  %narrow = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1)
  %spec.select = sext i8 %narrow to i32
  store i32 %spec.select, ptr %3, align 4, !tbaa !259
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z25ImFontAtlasFontInitOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  br label %bb.b

._crit_edge:                                      ; preds = %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit, %bb.a
  %.09.lcssa = phi i1 [ true, %bb.a ], [ %i.p, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ]
  ret i1 %.09.lcssa

bb.b:                                             ; preds = %.lr.ph, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit
  %.013 = phi ptr [ %i.c, %.lr.ph ], [ %i.q, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ] ; 2 uses
  %.0912 = phi i1 [ true, %.lr.ph ], [ %i.p, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ]
  %i.h = load ptr, ptr %.013, align 8, !tbaa !382 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !383  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !389  ; 2 uses
  %.not10.i = icmp eq ptr %i.n, null
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef %0, ptr noundef nonnull %i.h), !inline_history !419
  br i1 %i.o, label %bb.f, label %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  br label %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit

_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit: ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ %.0912, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas21GetGlyphRangesDefaultEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i8 noundef signext %6) local_unnamed_addr #21 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !310
  switch i32 %i.e, label %.loopexit [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.h = icmp sgt i32 %3, 0
  %i.i = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = load i32, ptr %i.f, align 4, !tbaa !312
  %i.m = mul nsw i32 %i.l, %2
  %i.n = add nsw i32 %i.m, %1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.r
  %wide.trip.count62 = zext nneg i32 %3 to i64    ; 8 uses
  %min.iters.check76 = icmp ult i32 %3, 4
  %min.iters.check77 = icmp ult i32 %3, 32
  %i.t = and i64 %wide.trip.count62, 28
  %n.vec79 = and i64 %wide.trip.count62, 2147483616 ; 4 uses
  %broadcast.splatinsert80 = insertelement <16 x i8> poison, i8 %6, i64 0
  %broadcast.splat81 = shufflevector <16 x i8> %broadcast.splatinsert80, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %wide.trip.count62
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  %n.vec89 = and i64 %wide.trip.count62, 2147483644 ; 3 uses
  %broadcast.splatinsert90 = insertelement <4 x i8> poison, i8 %6, i64 0
  %broadcast.splat91 = shufflevector <4 x i8> %broadcast.splatinsert90, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n95 = icmp eq i64 %n.vec89, %wide.trip.count62
  %xtraiter98 = and i64 %wide.trip.count62, 3     ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge52
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge52 ] ; 2 uses
  %.04055 = phi i32 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge52 ]
  %.04154 = phi ptr [ %i.s, %.preheader.preheader ], [ %i.av, %._crit_edge52 ] ; 9 uses
  %.04253 = phi ptr [ %5, %.preheader.preheader ], [ %i.aw, %._crit_edge52 ] ; 8 uses
  br i1 %min.iters.check76, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check
  %i.u = mul i64 %indvar, %i.i
  %i.v = add i64 %i.u, %i.a
  %.0415474 = ptrtoaddr ptr %.04154 to i64
  %i.w = sub i64 %i.v, %.0415474
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck73
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.body82

vector.body82:                                    ; preds = %vector.main.loop.iter.check, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04253, i64 %index83 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.x, align 1, !tbaa !50
  %wide.load85 = load <16 x i8>, ptr %i.y, align 1, !tbaa !50
  %i.z = icmp eq <16 x i8> %wide.load84, %broadcast.splat81
  %i.aa = icmp eq <16 x i8> %wide.load85, %broadcast.splat81
  %i.ab = sext <16 x i1> %i.z to <16 x i8>
  %i.ac = sext <16 x i1> %i.aa to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %.04154, i64 %index83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !tbaa !50
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !50
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.af = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.af, label %middle.block87, label %vector.body82, !llvm.loop !714

middle.block87:                                   ; preds = %vector.body82
  br i1 %cmp.n88, label %._crit_edge52, label %vec.epilog.iter.check

end_hunk_0
begin_hunk_1_@_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(20) @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.3, %bb.d ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, i64 20), %bb.b ], [ %i.x, %bb.d ] ; 9 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.v, %bb.d ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 8, !tbaa !243
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !243
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !243
  store i16 %i.j, ptr %i.f, align 2, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !243
  %i.p = add i16 %i.o, %i.j                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !243
  store i16 %i.p, ptr %i.l, align 2, !tbaa !243
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i, i64 12 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.i, 2996
  br i1 %exitcond.not.i.2, label %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !243
  %i.v = add i16 %i.u, %i.p                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i, i64 14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !243
  store i16 %i.v, ptr %i.r, align 2, !tbaa !243
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  br label %bb.c

_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit: ; preds = %bb.c
  store i16 0, ptr %i.r, align 2, !tbaa !243
  br label %bb.e

bb.e:                                             ; preds = %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, %bb.a
  ret ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas22GetGlyphRangesCyrillicEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas18GetGlyphRangesThaiEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas18GetGlyphRangesThaiEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas24GetGlyphRangesVietnameseEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas24GetGlyphRangesVietnameseEvE6ranges
}

; Function Attrs: mustprogress uwtable
define void @_ZN24ImFontGlyphRangesBuilder7AddTextEPKcS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = icmp ult ptr %1, %.011
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.01215 = phi ptr [ %1, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %i.g = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %.01215, ptr noundef nonnull %.011) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds i8, ptr %.01215, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !259  ; 2 uses
  %i.l = and i32 %i.k, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !525
  %i.o = lshr i32 %i.k, 5
  %i.p = and i32 %i.o, 2047
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !259
  %i.t = or i32 %i.s, %i.m
  store i32 %i.t, ptr %i.r, align 4, !tbaa !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.u = icmp ult ptr %i.j, %.011
  br i1 %i.u, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.thread
  ret void
}

declare noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN24ImFontGlyphRangesBuilder9AddRangesEPKt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !243    ; 2 uses
  %.not11 = icmp eq i16 %i.a, 0
  br i1 %.not11, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph14, %._crit_edge
  %i.d = phi i16 [ %i.a, %.lr.ph14 ], [ %i.u, %._crit_edge ] ; 3 uses
  %.0812 = phi ptr [ %1, %.lr.ph14 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0812, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !243  ; 3 uses
  %.not16 = icmp ugt i16 %i.d, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = zext i16 %i.d to i32                     ; 5 uses
  %i.i = add nuw nsw i32 %i.g, %i.h
  %i.j = and i32 %i.i, 1
  %lcmp.mod.not.not = icmp eq i32 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.k = and i32 %i.h, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = lshr i32 %i.h, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !259
  %i.q = or i32 %i.p, %i.l
  store i32 %i.q, ptr %i.o, align 4, !tbaa !259
  %i.r = add nuw nsw i32 %i.h, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp eq i16 %i.f, %i.d
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.0812, i64 4 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !243  ; 2 uses
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %._crit_edge15, label %bb.b, !llvm.loop !810

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi i32 [ %i.ak, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.v = and i32 %.010, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = lshr i32 %.010, 5
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !259
  %i.ab = or i32 %i.aa, %i.w
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !259
  %i.ac = add nuw nsw i32 %.010, 1                ; 3 uses
  %i.ad = and i32 %i.ac, 31
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = lshr i32 %i.ac, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !259
  %i.aj = or i32 %i.ai, %i.ae
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !259
  %i.ak = add nuw nsw i32 %.010, 2
  %exitcond.not.1 = icmp eq i32 %i.ac, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !811

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN24ImFontGlyphRangesBuilder11BuildRangesEP8ImVectorItE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.r
  %i.c = load i32, ptr %1, align 8, !tbaa !88     ; 6 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !87
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i

._ZN8ImVectorItE7reserveEi.exit_crit_edge.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  br label %_ZN8ImVectorItE9push_backERKt.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sdiv i32 %i.c, 2
  %i.h = add nsw i32 %i.g, %i.c
  br label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i

_ZNK8ImVectorItE14_grow_capacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.h, %bb.d ], [ 8, %bb.c ]
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.f) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 1
  %i.m = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.l) ; 3 uses
  %i.n = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorItE14_grow_capacityEi.exit.i
  %i.o = load i32, ptr %1, align 8, !tbaa !88
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.m, ptr nonnull align 2 %i.n, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorItE14_grow_capacityEi.exit.i
  store ptr %i.m, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  store i32 %i.j, ptr %i.b, align 4, !tbaa !87
  %.pre3.i = load i32, ptr %1, align 8, !tbaa !88
  br label %_ZN8ImVectorItE9push_backERKt.exit

_ZN8ImVectorItE9push_backERKt.exit:               ; preds = %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i, %bb.f
  %i.s = phi i32 [ %i.c, %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.t = phi ptr [ %.pre.i, %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i ], [ %i.m, %bb.f ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  store i16 0, ptr %i.v, align 2
  %i.w = load i32, ptr %1, align 8, !tbaa !88
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %1, align 8, !tbaa !88
  ret void

bb.g:                                             ; preds = %bb.a, %bb.r
  %.030 = phi i32 [ 0, %bb.a ], [ %i.ci, %bb.r ]  ; 7 uses
  %i.y = and i32 %.030, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !525
  %i.ab = ashr i32 %.030, 5
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !259
  %i.af = and i32 %i.ae, %i.z
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i32 %.030 to i16
  %i.ah = load i32, ptr %1, align 8, !tbaa !88    ; 6 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !87
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i11

._ZN8ImVectorItE7reserveEi.exit_crit_edge.i11:    ; preds = %bb.h
  %.pre.i13 = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  br label %_ZN8ImVectorItE9push_backERKt.exit18

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.ah, 1
  %.not.i.i14 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i14, label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sdiv i32 %i.ah, 2
  %i.am = add nsw i32 %i.al, %i.ah
  br label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i15

_ZNK8ImVectorItE14_grow_capacityEi.exit.i15:      ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.am, %bb.j ], [ 8, %bb.i ]
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %i.an, i32 %i.ak) ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 1
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq) ; 3 uses
  %i.as = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not6.i.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8ImVectorItE14_grow_capacityEi.exit.i15
  %i.at = load i32, ptr %1, align 8, !tbaa !88
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ar, ptr nonnull align 2 %i.as, i64 %i.av, i1 false)
  %i.aw = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aw)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8ImVectorItE14_grow_capacityEi.exit.i15
  store ptr %i.ar, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !87
  %.pre3.i17 = load i32, ptr %1, align 8, !tbaa !88
  br label %_ZN8ImVectorItE9push_backERKt.exit18

_ZN8ImVectorItE9push_backERKt.exit18:             ; preds = %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i11, %bb.l
  %i.ax = phi i32 [ %i.ah, %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i11 ], [ %.pre3.i17, %bb.l ]
  %i.ay = phi ptr [ %.pre.i13, %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i11 ], [ %i.ar, %bb.l ]
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.az
  store i16 %i.ag, ptr %i.ba, align 2
  %i.bb = load i32, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 6 uses
  store i32 %i.bc, ptr %1, align 8, !tbaa !88
  %exitcond.not39 = icmp eq i32 %.030, 65535
  br i1 %exitcond.not39, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8ImVectorItE9push_backERKt.exit18
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !525
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.be, 65535
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !812

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.140 = phi i32 [ %i.be, %bb.m ], [ %.030, %.lr.ph.preheader ] ; 2 uses
  %i.be = add i32 %.140, 1                        ; 5 uses
  %i.bf = and i32 %i.be, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = ashr i32 %i.be, 5
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !259
  %i.bl = and i32 %i.bk, %i.bg
  %.not29 = icmp eq i32 %i.bl, 0
  br i1 %.not29, label %..critedge_crit_edge41, label %bb.m, !llvm.loop !812

..critedge_crit_edge41:                           ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !812

.critedge:                                        ; preds = %bb.m, %..critedge_crit_edge41, %_ZN8ImVectorItE9push_backERKt.exit18
  %.1.lcssa = phi i32 [ %.030, %_ZN8ImVectorItE9push_backERKt.exit18 ], [ %.140, %..critedge_crit_edge41 ], [ %i.be, %bb.m ] ; 2 uses
  %i.bm = trunc i32 %.1.lcssa to i16
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !87
  %i.bo = icmp eq i32 %i.bc, %i.bn
  br i1 %i.bo, label %bb.n, label %._ZN8ImVectorItE7reserveEi.exit_crit_edge.i19

._ZN8ImVectorItE7reserveEi.exit_crit_edge.i19:    ; preds = %.critedge
  %.pre.i21 = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83
  br label %_ZN8ImVectorItE9push_backERKt.exit26

bb.n:                                             ; preds = %.critedge
  %i.bp = add nsw i32 %i.bb, 2
  %.not.i.i22 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i22, label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i23, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = sdiv i32 %i.bc, 2
  %i.br = add nsw i32 %i.bq, %i.bc
  br label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i23

_ZNK8ImVectorItE14_grow_capacityEi.exit.i23:      ; preds = %bb.o, %bb.n
  %i.bs = phi i32 [ %i.br, %bb.o ], [ 8, %bb.n ]
  %i.bt = tail call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bp) ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bv) ; 3 uses
  %i.bx = load ptr, ptr %.phi.trans.insert.i12, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i24 = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK8ImVectorItE14_grow_capacityEi.exit.i23
  %i.by = load i32, ptr %1, align 8, !tbaa !88
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bw, ptr nonnull align 2 %i.bx, i64 %i.ca, i1 false)
end_hunk_1
begin_hunk_2_@_ZL20stbtt__cff_index_get10stbtt__bufi:bb.a
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !50
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.1:     ; preds = %bb.e, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14 ] ; 2 uses
  %.0.i.i15.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14 ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i19.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i19.preheader.unr-lcssa:                   ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i19.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i19.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i19.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ao = shl i32 %.056.i12.epil.init, 8          ; 2 uses
  %.not.i.i13.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.epil, label %bb.f, label %.lr.ph.i19.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i19.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i15.lcssa = phi i32 [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter59 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i19.epil.preheader, label %.lr.ph.i19.preheader.new

.lr.ph.i19.preheader.new:                         ; preds = %.lr.ph.i19.preheader
  %unroll_iter65 = and i32 %i.p, 254
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1, %.lr.ph.i19.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader.new ], [ %i.bm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1 ] ; 4 uses
  %.056.i22 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %.0.i.i25.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1 ]
  %niter66 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %niter66.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1 ]
  %i.ax = shl i32 %.056.i22, 8                    ; 2 uses
  %.not.i.i23 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23, label %bb.g, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24

bb.g:                                             ; preds = %.lr.ph.i19
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !50
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24:       ; preds = %bb.g, %.lr.ph.i19
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i19 ] ; 4 uses
  %.0.i.i25 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i19 ]
  %i.bf = shl i32 %.0.i.i25, 8                    ; 2 uses
  %.not.i.i23.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.1, label %bb.h, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1

bb.h:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !50
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1:     ; preds = %bb.h, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24 ] ; 2 uses
  %.0.i.i25.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24 ] ; 3 uses
  %niter66.next.1 = add i32 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i32 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa, label %.lr.ph.i19, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.1
  %lcmp.mod62.not = icmp eq i32 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28, label %.lr.ph.i19.epil.preheader

.lr.ph.i19.epil.preheader:                        ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa, %.lr.ph.i19.preheader
  %.epil.init61 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader ], [ %i.bm, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.epil.init = phi i32 [ 0, %.lr.ph.i19.preheader ], [ %.0.i.i25.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bn = shl i32 %.056.i22.epil.init, 8          ; 2 uses
  %.not.i.i23.epil = icmp slt i32 %.epil.init61, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.epil, label %bb.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28

bb.i:                                             ; preds = %.lr.ph.i19.epil.preheader
  %i.bo = sext i32 %.epil.init61 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !50
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28

_ZL14stbtt__buf_getP10stbtt__bufi.exit28:         ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa, %bb.i, %.lr.ph.i19.epil.preheader, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.0.i55 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1 ], [ %i.p, %.lr.ph.i19.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa ]
  %.05.lcssa.i42 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1 ], [ %.0.i.i15.lcssa, %.lr.ph.i19.epil.preheader ], [ %.0.i.i15.lcssa, %bb.i ], [ %.0.i.i15.lcssa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1 ], [ %.0.i.i25.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i19.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i55, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i42       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i27, %.05.lcssa.i42 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit

bb.j:                                             ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext nneg i32 %i.bx to i64
  %i.cf = shl nuw nsw i64 %i.ce, 32
  br label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit

_ZL16stbtt__buf_rangePK10stbtt__bufii.exit:       ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr nofree noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #13 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !504  ; 17 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !503
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.preheader.i, label %._crit_edge

.preheader.i:                                     ; preds = %bb.a, %.thread38.i
  %.promoted5759.i = phi i32 [ %.promoted55.i, %.thread38.i ], [ %i.c, %bb.a ] ; 7 uses
  %.not.i52.i = icmp slt i32 %.promoted5759.i, %i.b
  br i1 %.not.i52.i, label %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.lr.ph.i, label %.thread38.i

_ZL16stbtt__buf_peek8P10stbtt__buf.exit.lr.ph.i:  ; preds = %.preheader.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !505    ; 4 uses
  br label %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i

_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i:        ; preds = %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i, %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.lr.ph.i
  %spec.select454853.i = phi i32 [ %.promoted5759.i, %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.lr.ph.i ], [ %spec.select4549.i, %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i ] ; 11 uses
  %i.g = sext i32 %spec.select454853.i to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !50    ; 2 uses
  %i.j = icmp ugt i8 %i.i, 27
  br i1 %i.j, label %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i.i:      ; preds = %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i
  %i.k = icmp eq i8 %i.i, 30
  %i.l = add nsw i32 %spec.select454853.i, 1      ; 14 uses
  br i1 %i.k, label %bb.b, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i34.i

bb.b:                                             ; preds = %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i.i
  %i.m = icmp slt i32 %spec.select454853.i, -1
  %..i.i.i.i = select i1 %i.m, i32 %i.b, i32 %i.l ; 4 uses
  store i32 %..i.i.i.i, ptr %i.d, align 8, !tbaa !503
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %..i.i.i.i, i32 %i.b)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i53.not = icmp slt i32 %..i.i.i.i, %i.b
  br i1 %exitcond.not.i.i53.not, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.lr.ph, label %._crit_edge

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.lr.ph: ; preds = %bb.b
  %i.n = sext i32 %..i.i.i.i to i64
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

bb.c:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, !llvm.loop !855

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.lr.ph, %bb.c
  %indvars.iv.i.i54 = phi i64 [ %i.n, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.lr.ph ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i54, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %i.d, align 8, !tbaa !503
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i54
  %i.p = load i8, ptr %i.o, align 1, !tbaa !50
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 15
  %i.s = icmp eq i32 %i.r, 15
  %.mask.i.i = and i32 %i.q, 240
  %i.t = icmp eq i32 %.mask.i.i, 240
  %or.cond.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i, label %bb.c, !llvm.loop !855

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i34.i:     ; preds = %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i.i
  store i32 %i.l, ptr %i.d, align 8, !tbaa !503
  %i.u = load i8, ptr %i.h, align 1, !tbaa !50    ; 4 uses
  %i.v = add i8 %i.u, -32
  %or.cond.i35.i = icmp ult i8 %i.v, -41
  br i1 %or.cond.i35.i, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i34.i
  %or.cond3.i.i = icmp slt i8 %i.u, -5
  br i1 %or.cond3.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i22.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i22.i.i, label %bb.f, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %spec.select454853.i, 2
  br label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i

bb.g:                                             ; preds = %bb.d
  %or.cond5.i.i = icmp slt i8 %i.u, -1
  br i1 %or.cond5.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i25.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i25.i.i, label %bb.i, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %spec.select454853.i, 2
  br label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i

bb.j:                                             ; preds = %bb.g
  switch i8 %i.u, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i [
    i8 28, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
    i8 29, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.i.i
  ]

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.j
  %.not.i.i.i.i = icmp slt i32 %i.l, %i.b         ; 2 uses
  %i.y = add nsw i32 %spec.select454853.i, 2
  %i.z = select i1 %.not.i.i.i.i, i32 %i.y, i32 %i.l ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %i.z, %i.b       ; 2 uses
  %i.aa = or i1 %.not.i.i.i.i, %.not.i.i.1.i.i
  br i1 %i.aa, label %bb.k, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.i.i:   ; preds = %bb.j
  %.not.i.i31.i.i = icmp slt i32 %i.l, %i.b       ; 2 uses
  %i.ab = add nsw i32 %spec.select454853.i, 2
  %i.ac = select i1 %.not.i.i31.i.i, i32 %i.ab, i32 %i.l ; 2 uses
  %.not.i.i31.1.i.i = icmp slt i32 %i.ac, %i.b    ; 2 uses
  %i.ad = zext i1 %.not.i.i31.1.i.i to i32
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  %i.af = or i1 %.not.i.i31.i.i, %.not.i.i31.1.i.i
  %.not.i.i31.2.i.i = icmp slt i32 %i.ae, %i.b    ; 2 uses
  %i.ag = zext i1 %.not.i.i31.2.i.i to i32
  %spec.select.i = add nsw i32 %i.ae, %i.ag       ; 2 uses
  %i.ah = or i1 %i.af, %.not.i.i31.2.i.i
  %.not.i.i31.3.i.i = icmp slt i32 %spec.select.i, %i.b ; 2 uses
  %i.ai = or i1 %i.ah, %.not.i.i31.3.i.i
  br i1 %i.ai, label %bb.l, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i

bb.k:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.aj = zext i1 %.not.i.i.1.i.i to i32
  %simplifycfg.merge.i = add nsw i32 %i.z, %i.aj
  br label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.i.i
  %i.ak = zext i1 %.not.i.i31.3.i.i to i32
  %spec.select45.i = add nsw i32 %spec.select.i, %i.ak
  br label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i

_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.f
  %spec.select45.sink.i = phi i32 [ %spec.select45.i, %bb.l ], [ %simplifycfg.merge.i, %bb.k ], [ %i.x, %bb.i ], [ %i.w, %bb.f ] ; 2 uses
  store i32 %spec.select45.sink.i, ptr %i.d, align 8, !tbaa !503
  br label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i

_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i, %bb.j, %bb.h, %bb.e, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i34.i
  %spec.select4549.i = phi i32 [ %i.l, %bb.j ], [ %i.l, %bb.e ], [ %i.l, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i32.i.i ], [ %spec.select45.sink.i, %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.sink.split.i ], [ %i.l, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ], [ %i.l, %bb.h ], [ %i.l, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i34.i ], [ %indvars.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 3 uses
  %.not.i.i = icmp slt i32 %spec.select4549.i, %i.b
  br i1 %.not.i.i, label %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i, label %.thread38.i, !llvm.loop !856

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i
  %i.al = add nsw i32 %spec.select454853.i, 1     ; 5 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !503
  %i.am = load i8, ptr %i.h, align 1, !tbaa !50   ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 12
  br i1 %i.ao, label %bb.m, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i

bb.m:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.not.i22.i = icmp slt i32 %i.al, %i.b
  br i1 %.not.i22.i, label %bb.n, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %spec.select454853.i, 2     ; 2 uses
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !503
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr inbounds i8, ptr %i.f, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.at, 256
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i:       ; preds = %bb.n, %bb.m, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.promoted58.i = phi i32 [ %i.al, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.ap, %bb.n ], [ %i.al, %bb.m ]
  %.017.i = phi i32 [ %i.an, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.au, %bb.n ], [ 256, %bb.m ]
  %i.av = icmp eq i32 %.017.i, %1
  br i1 %i.av, label %bb.o, label %.thread38.i

bb.o:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i
  %i.aw = sub nsw i32 %spec.select454853.i, %.promoted5759.i ; 2 uses
  %i.ax = or i32 %i.aw, %.promoted5759.i
  %or.cond.not.i.i = icmp slt i32 %i.ax, 0
  br i1 %or.cond.not.i.i, label %._crit_edge, label %_ZL15stbtt__dict_getP10stbtt__bufi.exit

.thread38.i:                                      ; preds = %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i, %.preheader.i
  %.promoted55.i = phi i32 [ %.promoted58.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit24.i ], [ %.promoted5759.i, %.preheader.i ], [ %spec.select4549.i, %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i ] ; 2 uses
  %i.ay = icmp slt i32 %.promoted55.i, %i.b
  br i1 %i.ay, label %.preheader.i, label %._crit_edge

_ZL15stbtt__dict_getP10stbtt__bufi.exit:          ; preds = %bb.o
  %i.az = zext nneg i32 %.promoted5759.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  store ptr %i.ba, ptr %4, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.not = icmp eq i32 %spec.select454853.i, %.promoted5759.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL15stbtt__dict_getP10stbtt__bufi.exit
  %i.bf = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bg = call fastcc noundef i32 @_ZL14stbtt__cff_intP10stbtt__buf(ptr noundef %4)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bf
  %i.bj = load i32, ptr %i.bd, align 8
  %i.bk = load i32, ptr %i.be, align 4
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !857

._crit_edge:                                      ; preds = %.thread38.i, %bb.b, %bb.c, %.lr.ph, %bb.a, %bb.o, %_ZL15stbtt__dict_getP10stbtt__bufi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #26 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %5 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %.sroa.15.8.extract.shift = lshr i64 %1, 32
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.8.extract.shift to i32 ; 15 uses
  store ptr %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 0, ptr %i.a, align 4, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %4, i32 noundef 18, i32 noundef 2, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !259  ; 6 uses
  %i.f = icmp ne i32 %i.e, 0
  %i.g = load i32, ptr %i.b, align 8              ; 4 uses
  %i.h = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i, label %bb.c, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.e, %.sroa.15.8.extract.trunc
  %i.k = sub nsw i32 %.sroa.15.8.extract.trunc, %i.e
end_hunk_2
