Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
.loopexit.i35.i:                                  ; preds = %.lr.ph.i31.i, %.lr.ph135.i.i.epil.preheader, %.loopexit.i35.i.loopexit338.unr-lcssa, %.lr.ph141.i.i, %.lr.ph147.i.i, %.lr.ph153.i.i, %.preheader.i43.i, %.preheader120.i.i, %.preheader122.i.i, %.preheader124.i.i, %.preheader126.i.i
  %.5108.i.i = phi i32 [ %i.cu, %.lr.ph141.i.i ], [ %i.cu, %.lr.ph135.i.i.epil.preheader ], [ %i.cu, %.lr.ph153.i.i ], [ %i.cu, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.cu, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.cu, %.lr.ph.i31.i ] ; 2 uses
  %.5.i36.i = phi i32 [ %i.ber, %.lr.ph141.i.i ], [ %i.bho, %.lr.ph135.i.i.epil.preheader ], [ %i.bgx, %.lr.ph153.i.i ], [ %i.bec, %.lr.ph147.i.i ], [ 0, %.preheader.i43.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.bfu, %.loopexit.i35.i.loopexit338.unr-lcssa ], [ %i.bgi, %.lr.ph.i31.i ] ; 2 uses
  %i.bht = icmp slt i32 %.5108.i.i, %i.cw
  br i1 %i.bht, label %.lr.ph158.preheader.i.i, label %._crit_edge.i37.i

.lr.ph158.preheader.i.i:                          ; preds = %.loopexit.i35.i
  %i.bhu = sext i32 %.5108.i.i to i64             ; 6 uses
  %i.bhv = sub nsw i64 %wide.trip.count202.i.i, %i.bhu
  %xtraiter378 = and i64 %i.bhv, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph158.i.i.prol.loopexit, label %.lr.ph158.i.i.prol

.lr.ph158.i.i.prol:                               ; preds = %.lr.ph158.preheader.i.i
  %i.bhw = and i64 %i.bhu, 7
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhw
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !50
  %i.bhz = zext i8 %i.bhy to i32
  %i.bia = sub i32 %.5.i36.i, %i.bhz              ; 2 uses
  %i.bib = udiv i32 %i.bia, %spec.select.i
  %i.bic = trunc i32 %i.bib to i8
  %i.bid = mul nsw i64 %i.bhu, %i.bdq
  %i.bie = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bid
  store i8 %i.bic, ptr %i.bie, align 1, !tbaa !50
  %indvars.iv.next200.i.i.prol = add nuw nsw i64 %i.bhu, 1
  br label %.lr.ph158.i.i.prol.loopexit

.lr.ph158.i.i.prol.loopexit:                      ; preds = %.lr.ph158.i.i.prol, %.lr.ph158.preheader.i.i
  %indvars.iv199.i.i.unr = phi i64 [ %i.bhu, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next200.i.i.prol, %.lr.ph158.i.i.prol ]
  %.6157.i.i.unr = phi i32 [ %.5.i36.i, %.lr.ph158.preheader.i.i ], [ %i.bia, %.lr.ph158.i.i.prol ]
  %i.bif = icmp eq i64 %i.bds, %i.bhu
  br i1 %i.bif, label %._crit_edge.i37.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i
  %indvars.iv199.i.i = phi i64 [ %indvars.iv.next200.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv199.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 4 uses
  %.6157.i.i = phi i32 [ %i.bit, %.lr.ph158.i.i ], [ %.6157.i.i.unr, %.lr.ph158.i.i.prol.loopexit ]
  %i.big = and i64 %indvars.iv199.i.i, 7
  %i.bih = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !50
  %i.bij = zext i8 %i.bii to i32
  %i.bik = sub i32 %.6157.i.i, %i.bij             ; 2 uses
  %i.bil = udiv i32 %i.bik, %spec.select.i
  %i.bim = trunc i32 %i.bil to i8
  %i.bin = mul nsw i64 %indvars.iv199.i.i, %i.bdq
  %i.bio = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.bin
  store i8 %i.bim, ptr %i.bio, align 1, !tbaa !50
  %indvars.iv.next200.i.i = add nuw nsw i64 %indvars.iv199.i.i, 1 ; 2 uses
  %i.bip = and i64 %indvars.iv.next200.i.i, 7
  %i.biq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bip
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !50
  %i.bis = zext i8 %i.bir to i32
  %i.bit = sub i32 %i.bik, %i.bis                 ; 2 uses
  %i.biu = udiv i32 %i.bit, %spec.select.i
  %i.biv = trunc i32 %i.biu to i8
  %i.biw = mul nsw i64 %indvars.iv.next200.i.i, %i.bdq
  %i.bix = getelementptr inbounds i8, ptr %.0111159.i.i, i64 %i.biw
  store i8 %i.biv, ptr %i.bix, align 1, !tbaa !50
  %indvars.iv.next200.i.i.1 = add nuw nsw i64 %indvars.iv199.i.i, 2 ; 2 uses
  %exitcond203.not.i.i.1 = icmp eq i64 %indvars.iv.next200.i.i.1, %wide.trip.count202.i.i
  br i1 %exitcond203.not.i.i.1, label %._crit_edge.i37.i, label %.lr.ph158.i.i, !llvm.loop !791

._crit_edge.i37.i:                                ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i, %.loopexit.i35.i
  %i.biy = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 1
  %i.biz = add nuw nsw i32 %.0110161.i.i, 1       ; 2 uses
  %exitcond204.not.i.i = icmp eq i32 %i.biz, %i.ct
  br i1 %exitcond204.not.i.i, label %_ZL18stbtt__v_prefilterPhiiij.exit.i, label %bb.ja, !llvm.loop !792

_ZL18stbtt__v_prefilterPhiiij.exit.i:             ; preds = %._crit_edge.i37.i, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit

_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit: ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit.i, %bb.iy
  %i.bja = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bjb = insertelement <2 x i32> %i.bja, i32 %spec.select.i, i64 1
  %i.bjc = sub nsw <2 x i32> splat (i32 1), %i.bjb
  %i.bjd = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bje = insertelement <2 x float> %i.bjd, float %i.aw, i64 1 ; 2 uses
  %i.bjf = fmul nnan <2 x float> %i.bje, splat (float 2.000000e+00)
  %i.bjg = sitofp <2 x i32> %i.bjc to <2 x float>
  %i.bjh = fdiv <2 x float> %i.bjg, %i.bjf        ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !384
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 40
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !359
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !381
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 60
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !414 ; 2 uses
  %i.bjp = fcmp une float %i.bjo, 0.000000e+00
  br i1 %i.bjp, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit
  %i.bjq = load float, ptr %i.aq, align 4, !tbaa !256
  %i.bjr = fdiv float %i.bjq, %i.bjo
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit, %bb.jb
  %i.bjs = phi float [ %i.bjr, %bb.jb ], [ 1.000000e+00, %_ZL38stbtt_MakeGlyphBitmapSubpixelPrefilterPK14stbtt_fontinfoPhiiiffffiiPfS3_i.exit ]
  %i.bjt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bju = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bjv = load float, ptr %i.bju, align 4, !tbaa !512
  %i.bjw = fadd float %i.bjv, 5.000000e-01
  %i.bjx = fptosi float %i.bjw to i32
  %i.bjy = sitofp i32 %i.bjx to float
  %i.bjz = extractelement <2 x float> %i.bjh, i64 1
  %i.bka = fadd float %i.bjz, %i.bjy
  %i.bkb = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bkc = shufflevector <2 x float> %i.bkb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bkd = shufflevector <2 x float> %i.bje, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bke = fmul <4 x float> %i.bkc, %i.bkd
  %i.bkf = load i32, ptr %i.i, align 4, !tbaa !258 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bkh = load i32, ptr %i.j, align 4, !tbaa !258 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.bkj = load <2 x i16>, ptr %i.bki, align 2, !tbaa !243
  %i.bkk = zext <2 x i16> %i.bkj to <2 x i32>
  %i.bkl = insertelement <2 x i32> poison, i32 %i.bkf, i64 0
  %i.bkm = insertelement <2 x i32> %i.bkl, i32 %i.bkh, i64 1
  %i.bkn = add nsw <2 x i32> %i.bkm, %i.bkk
  %i.bko = load <2 x float>, ptr %i.bjt, align 8, !tbaa !29
  %i.bkp = insertelement <2 x float> poison, float %i.bjs, i64 0
  %i.bkq = shufflevector <2 x float> %i.bkp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bko, <2 x float> %i.bkq, <2 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.bks = fcmp ult <2 x float> %i.bkr, zeroinitializer
  %i.bkt = fptosi <2 x float> %i.bkr to <2 x i32> ; 2 uses
  %i.bku = sitofp <2 x i32> %i.bkt to <2 x float>
  %i.bkv = fcmp une <2 x float> %i.bkr, %i.bku
  %i.bkw = and <2 x i1> %i.bks, %i.bkv
  %i.bkx = sext <2 x i1> %i.bkw to <2 x i32>
  %i.bky = add nsw <2 x i32> %i.bkx, %i.bkt
  %i.bkz = sitofp <2 x i32> %i.bky to <2 x float>
  %i.bla = insertelement <2 x float> %i.bjh, float %i.bka, i64 1
  %i.blb = fadd <2 x float> %i.bla, %i.bkz
  %i.blc = shufflevector <2 x float> %i.blb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bld = fdiv <4 x float> splat (float 1.000000e+00), %i.bke
  %i.ble = insertelement <4 x i32> poison, i32 %i.bkf, i64 0
  %i.blf = insertelement <4 x i32> %i.ble, i32 %i.bkh, i64 1
  %i.blg = shufflevector <2 x i32> %i.bkn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.blh = shufflevector <4 x i32> %i.blf, <4 x i32> %i.blg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bli = sitofp <4 x i32> %i.blh to <4 x float>
  %i.blj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bli, <4 x float> %i.bld, <4 x float> %i.blc)
  store <4 x float> %i.blj, ptr %i.bkg, align 4, !tbaa !29
  %i.blk = load i32, ptr %5, align 4
  %i.bll = or i32 %i.blk, 2
  store i32 %i.bll, ptr %5, align 4
  %i.blm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.cx, ptr %i.blm, align 4, !tbaa !465
  call void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr noundef %0, ptr nonnull poison, ptr noundef %1, ptr nonnull poison, ptr noundef nonnull %i.dl, ptr noundef %i.ed, i32 noundef 1, i32 noundef %i.ct)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.jc, %bb.h, %bb.f
  %.2 = phi i1 [ true, %bb.f ], [ false, %bb.h ], [ true, %bb.jc ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  br label %bb.jd

bb.jd:                                            ; preds = %bb.a, %.critedge
  %.3 = phi i1 [ %.2, %.critedge ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas19GetGlyphRangesGreekEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas19GetGlyphRangesGreekEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas20GetGlyphRangesKoreanEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas25GetGlyphRangesChineseFullEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas25GetGlyphRangesChineseFullEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, align 16, !tbaa !243
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11base_ranges, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.4, %bb.c ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, i64 24), %bb.b ], [ %i.ad, %bb.c ] ; 11 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.ab, %bb.c ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 2, !tbaa !243
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !243
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !243
  store i16 %i.j, ptr %i.f, align 2, !tbaa !243
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !243
  %i.p = add i16 %i.o, %i.j                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !243
  store i16 %i.p, ptr %i.l, align 2, !tbaa !243
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i, i64 12
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !243
  %i.v = add i16 %i.u, %i.p                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i, i64 14
  store i16 %i.v, ptr %i.w, align 2, !tbaa !243
  store i16 %i.v, ptr %i.r, align 2, !tbaa !243
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !243
  %i.ab = add i16 %i.aa, %i.v                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !243
  store i16 %i.ab, ptr %i.x, align 2, !tbaa !243
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i, i64 20 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 2500
  br i1 %exitcond.not.i.4, label %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, label %bb.c, !llvm.loop !812

_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit: ; preds = %bb.c
  store i16 0, ptr %i.ad, align 2, !tbaa !243
  br label %bb.d

bb.d:                                             ; preds = %_ZL35UnpackAccumulativeOffsetsIntoRangesiPKsiPt.exit, %bb.a
  ret ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges, align 16, !tbaa !243
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

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
  store i32 0, ptr %i.a, align 4, !tbaa !258
  %i.g = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %.01215, ptr noundef nonnull %.011) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds i8, ptr %.01215, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !258  ; 2 uses
  %i.l = and i32 %i.k, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !525
  %i.o = lshr i32 %i.k, 5
  %i.p = and i32 %i.o, 2047
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !258
  %i.t = or i32 %i.s, %i.m
  store i32 %i.t, ptr %i.r, align 4, !tbaa !258
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !258
  %i.q = or i32 %i.p, %i.l
  store i32 %i.q, ptr %i.o, align 4, !tbaa !258
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
  br i1 %.not, label %._crit_edge15, label %bb.b, !llvm.loop !813

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi i32 [ %i.ak, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.v = and i32 %.010, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = lshr i32 %.010, 5
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !258
  %i.ab = or i32 %i.aa, %i.w
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !258
  %i.ac = add nuw nsw i32 %.010, 1                ; 3 uses
  %i.ad = and i32 %i.ac, 31
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = lshr i32 %i.ac, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !258
  %i.aj = or i32 %i.ai, %i.ae
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !258
  %i.ak = add nuw nsw i32 %.010, 2
  %i.al = icmp samesign ult i32 %i.ac, %i.g
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !814

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
end_hunk_0
