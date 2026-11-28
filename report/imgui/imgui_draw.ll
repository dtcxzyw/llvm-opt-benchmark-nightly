Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL34ImFontAtlasBuildUpdateTexDataBasicP11ImFontAtlas:bb.a
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dhl, i64 432
  store <4 x i32> zeroinitializer, ptr %i.dil, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dim, align 4, !tbaa !258
  %i.din = getelementptr inbounds nuw i8, ptr %i.dhl, i64 448
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dhl, i64 464
  store <4 x i32> zeroinitializer, ptr %i.din, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dio, align 4, !tbaa !258
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dhl, i64 480
  store i32 0, ptr %i.dip, align 4, !tbaa !258
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dhl, i64 484
  store i32 0, ptr %i.diq, align 4, !tbaa !258
  %i.dir = load i32, ptr %i.cbt, align 4, !tbaa !311
  %i.dis = sext i32 %i.dir to i64
  %i.dit = getelementptr inbounds [4 x i8], ptr %i.dhl, i64 %i.dis ; 33 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 16
  store <4 x i32> zeroinitializer, ptr %i.dit, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.diu, align 4, !tbaa !258
  %i.div = getelementptr inbounds nuw i8, ptr %i.dit, i64 32
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dit, i64 48
  store <4 x i32> zeroinitializer, ptr %i.div, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.diw, align 4, !tbaa !258
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dit, i64 64
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dit, i64 80
  store <4 x i32> zeroinitializer, ptr %i.dix, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.diy, align 4, !tbaa !258
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dit, i64 96
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dit, i64 112
  store <4 x i32> zeroinitializer, ptr %i.diz, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dja, align 4, !tbaa !258
  %i.djb = getelementptr inbounds nuw i8, ptr %i.dit, i64 128
  %i.djc = getelementptr inbounds nuw i8, ptr %i.dit, i64 144
  store <4 x i32> zeroinitializer, ptr %i.djb, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djc, align 4, !tbaa !258
  %i.djd = getelementptr inbounds nuw i8, ptr %i.dit, i64 160
  %i.dje = getelementptr inbounds nuw i8, ptr %i.dit, i64 176
  store <4 x i32> zeroinitializer, ptr %i.djd, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dje, align 4, !tbaa !258
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dit, i64 192
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dit, i64 208
  store <4 x i32> zeroinitializer, ptr %i.djf, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djg, align 4, !tbaa !258
  %i.djh = getelementptr inbounds nuw i8, ptr %i.dit, i64 224
  %i.dji = getelementptr inbounds nuw i8, ptr %i.dit, i64 240
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %i.djh, align 4, !tbaa !258
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.dji, align 4, !tbaa !258
  %i.djj = getelementptr inbounds nuw i8, ptr %i.dit, i64 256
  %i.djk = getelementptr inbounds nuw i8, ptr %i.dit, i64 272
  store <4 x i32> zeroinitializer, ptr %i.djj, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djk, align 4, !tbaa !258
  %i.djl = getelementptr inbounds nuw i8, ptr %i.dit, i64 288
  %i.djm = getelementptr inbounds nuw i8, ptr %i.dit, i64 304
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.djl, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djm, align 4, !tbaa !258
  %i.djn = getelementptr inbounds nuw i8, ptr %i.dit, i64 320
  %i.djo = getelementptr inbounds nuw i8, ptr %i.dit, i64 336
  store <4 x i32> zeroinitializer, ptr %i.djn, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djo, align 4, !tbaa !258
  %i.djp = getelementptr inbounds nuw i8, ptr %i.dit, i64 352
  %i.djq = getelementptr inbounds nuw i8, ptr %i.dit, i64 368
  store <4 x i32> zeroinitializer, ptr %i.djp, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djq, align 4, !tbaa !258
  %i.djr = getelementptr inbounds nuw i8, ptr %i.dit, i64 384
  %i.djs = getelementptr inbounds nuw i8, ptr %i.dit, i64 400
  store <4 x i32> zeroinitializer, ptr %i.djr, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djs, align 4, !tbaa !258
  %i.djt = getelementptr inbounds nuw i8, ptr %i.dit, i64 416
  %i.dju = getelementptr inbounds nuw i8, ptr %i.dit, i64 432
  store <4 x i32> zeroinitializer, ptr %i.djt, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dju, align 4, !tbaa !258
  %i.djv = getelementptr inbounds nuw i8, ptr %i.dit, i64 448
  %i.djw = getelementptr inbounds nuw i8, ptr %i.dit, i64 464
  store <4 x i32> zeroinitializer, ptr %i.djv, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.djw, align 4, !tbaa !258
  %i.djx = getelementptr inbounds nuw i8, ptr %i.dit, i64 480
  store i32 0, ptr %i.djx, align 4, !tbaa !258
  %i.djy = getelementptr inbounds nuw i8, ptr %i.dit, i64 484
  store i32 0, ptr %i.djy, align 4, !tbaa !258
  %i.djz = load i32, ptr %i.cbt, align 4, !tbaa !311
  %i.dka = sext i32 %i.djz to i64
  %i.dkb = getelementptr inbounds [4 x i8], ptr %i.dit, i64 %i.dka ; 32 uses
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.dkb, i64 16
  store <4 x i32> zeroinitializer, ptr %i.dkb, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dkc, align 4, !tbaa !258
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkb, i64 32
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkb, i64 48
  store <4 x i32> zeroinitializer, ptr %i.dkd, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dke, align 4, !tbaa !258
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dkb, i64 64
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkb, i64 80
  store <4 x i32> zeroinitializer, ptr %i.dkf, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dkg, align 4, !tbaa !258
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkb, i64 96
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dkb, i64 112
  store <4 x i32> zeroinitializer, ptr %i.dkh, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dki, align 4, !tbaa !258
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dkb, i64 128
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dkb, i64 144
  store <4 x i32> zeroinitializer, ptr %i.dkj, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dkk, align 4, !tbaa !258
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkb, i64 160
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.dkb, i64 176
  store <4 x i32> zeroinitializer, ptr %i.dkl, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dkm, align 4, !tbaa !258
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkb, i64 192
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dkb, i64 208
  store <4 x i32> zeroinitializer, ptr %i.dkn, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dko, align 4, !tbaa !258
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dkb, i64 224
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkb, i64 240
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %i.dkp, align 4, !tbaa !258
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.dkq, align 4, !tbaa !258
  %i.dkr = getelementptr inbounds nuw i8, ptr %i.dkb, i64 256
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkb, i64 272
  store <4 x i32> zeroinitializer, ptr %i.dkr, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dks, align 4, !tbaa !258
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dkb, i64 288
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkb, i64 304
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.dkt, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dku, align 4, !tbaa !258
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkb, i64 320
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkb, i64 336
  store <4 x i32> zeroinitializer, ptr %i.dkv, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dkw, align 4, !tbaa !258
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkb, i64 352
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkb, i64 368
  store <4 x i32> zeroinitializer, ptr %i.dkx, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dky, align 4, !tbaa !258
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkb, i64 384
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkb, i64 400
  store <4 x i32> zeroinitializer, ptr %i.dkz, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dla, align 4, !tbaa !258
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dkb, i64 416
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkb, i64 432
  store <4 x i32> zeroinitializer, ptr %i.dlb, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dlc, align 4, !tbaa !258
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dkb, i64 448
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dkb, i64 464
  store <4 x i32> zeroinitializer, ptr %i.dld, align 4, !tbaa !258
  store <4 x i32> zeroinitializer, ptr %i.dle, align 4, !tbaa !258
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dkb, i64 480
  store i32 0, ptr %i.dlf, align 4, !tbaa !258
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dkb, i64 484
  store i32 0, ptr %i.dlg, align 4, !tbaa !258
  br label %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit

_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit: ; preds = %.preheader45.i35, %iter.check1068, %._Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit_crit_edge, %.preheader45.i, %.preheader.i, %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit34, %bb.k
  %i.dlh = phi <2 x i16> [ %i.y, %._Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit_crit_edge ], [ %i.bz, %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit34 ], [ %i.bz, %.preheader45.i ], [ %i.bz, %iter.check1068 ], [ %i.bz, %bb.k ], [ %i.bz, %.preheader.i ], [ %i.bz, %.preheader45.i35 ]
  %i.dli = uitofp <2 x i16> %i.dlh to <2 x float>
  %i.dlj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dlk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dll = fadd nnan <2 x float> %i.dli, splat (float 5.000000e-01)
  %i.dlm = load <2 x float>, ptr %i.dlj, align 4, !tbaa !29
  %i.dln = fmul <2 x float> %i.dlm, %i.dll
  store <2 x float> %i.dln, ptr %i.dlk, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL34ImFontAtlasBuildUpdateTexDataLinesP11ImFontAtlas(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !481
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.split103.us

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !425  ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 524287                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !438
  %.not.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !439
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = xor i32 %i.q, %i.h
  %i.s = and i32 %i.r, 1072693248
  %.not16.i.i = icmp ne i32 %i.s, 0
  %i.t = and i32 %i.q, 1073741824
  %.not17.i.i = icmp eq i32 %i.t, 0
  %or.cond30.i = or i1 %.not17.i.i, %.not16.i.i
  br i1 %or.cond30.i, label %thread-pre-split, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !331  ; 2 uses
  %.not161 = icmp eq ptr %i.v, null
  br i1 %.not161, label %thread-pre-split, label %.split.us

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %bb.c, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.w = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef 34, i32 noundef 33, ptr noundef null), !inline_history !534 ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.split.preheader, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  %i.y = and i32 %i.w, 524287                     ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !535
  %.pre.i147 = load ptr, ptr %i.e, align 8, !tbaa !339
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %.pre.i147, %bb.f ], [ %i.z, %bb.e ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !438
  %.not.i.i138 = icmp slt i32 %i.y, %i.ad
  br i1 %.not.i.i138, label %bb.h, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !439
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4            ; 3 uses
  %i.aj = xor i32 %i.ai, %i.w
  %i.ak = and i32 %i.aj, 1072693248
  %.not16.i.i139 = icmp ne i32 %i.ak, 0
  %i.al = and i32 %i.ai, 1073741824
  %.not17.i.i140 = icmp eq i32 %i.al, 0
  %or.cond30.i141 = or i1 %.not17.i.i140, %.not16.i.i139
  br i1 %or.cond30.i141, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !331 ; 2 uses
  %.not162 = icmp eq ptr %i.an, null
  br i1 %.not162, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %bb.i

bb.i:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142
  %i.ao = shl i32 %i.ai, 12
  %i.ap = ashr exact i32 %i.ao, 12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !440
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !441
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !442
  br label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148: ; preds = %bb.g, %bb.h, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142, %bb.i
  %.sroa.0.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.as, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.7.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.au, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.aw, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !325, !range !351, !noundef !352
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %.split.preheader

bb.j:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !439
  %i.bc = zext nneg i32 %i.y to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = shl i32 %i.be, 12
  %i.bg = ashr exact i32 %i.bf, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !331
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj ; 4 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.bm = load i16, ptr %i.bk, align 2, !tbaa !440
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !441
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !442
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !443
  %i.bw = zext i16 %i.bv to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.bx, align 2, !tbaa !347
  br label %.split.preheader

.split.preheader:                                 ; preds = %thread-pre-split, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, %bb.j
  %.sroa.0.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.0.2, %bb.j ], [ %.sroa.0.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.7.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.7.2, %bb.j ], [ %.sroa.7.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.11.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.11.2, %bb.j ], [ %.sroa.11.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ] ; 2 uses
  store i32 %i.w, ptr %i.g, align 8, !tbaa !425
  %i.by = zext i16 %.sroa.11.0 to i32             ; 2 uses
  %i.bz = zext i16 %.sroa.0.0 to i32              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.ch = zext i16 %.sroa.11.0 to i64
  %i.ci = zext i16 %.sroa.7.0 to i64
  br label %.split

.split.us:                                        ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %1 = shl i32 %i.q, 12
  %2 = ashr exact i32 %1, 12
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [8 x i8], ptr %i.v, i64 %3 ; 3 uses
  %5 = load i16, ptr %4, align 2, !tbaa !440
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !441      ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %9 = load i16, ptr %8, align 2, !tbaa !442      ; 2 uses
  %10 = zext i16 %5 to i32                        ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %14 = load float, ptr %11, align 4, !tbaa !237  ; 2 uses
  %15 = load float, ptr %12, align 8, !tbaa !238  ; 3 uses
  %16 = zext i16 %9 to i64
  %17 = zext i16 %7 to i32                        ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %14, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %15, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert180 = insertelement <4 x i64> poison, i64 %16, i64 0
  %broadcast.splat181 = shufflevector <4 x i64> %broadcast.splatinsert180, <4 x i64> poison, <4 x i32> zeroinitializer
  %18 = zext i16 %7 to i32
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat183, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add nsw <4 x i32> %broadcast.splat, splat (i32 -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split.us
  %index = phi i64 [ 0, %.split.us ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.split.us ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind184 = phi <4 x i32> [ %induction, %.split.us ], [ %vec.ind.next186, %vector.body ] ; 3 uses
  %vec.ind185 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %.split.us ], [ %vec.ind.next187, %vector.body ] ; 2 uses
  %19 = sub nsw <4 x i64> %broadcast.splat181, %vec.ind
  %i.cj = trunc nsw <4 x i64> %19 to <4 x i32>
  %i.ck = sdiv <4 x i32> %i.cj, splat (i32 2)     ; 2 uses
  %i.cl = add nsw <4 x i32> %i.ck, %broadcast.splat
  %.reass = add nsw <4 x i32> %i.ck, %invariant.op
  %i.cm = sitofp <4 x i32> %.reass to <4 x float>
  %20 = uitofp nneg <4 x i32> %vec.ind184 to <4 x float>
  %i.cn = fmul <4 x float> %broadcast.splat177, %i.cm
  %i.co = fmul <4 x float> %broadcast.splat179, %20
  %i.cp = add <4 x i32> %i.cl, %vec.ind185
  %i.cq = sitofp <4 x i32> %i.cp to <4 x float>
  %i.cr = add <4 x i32> %vec.ind184, splat (i32 1)
  %21 = uitofp nneg <4 x i32> %i.cr to <4 x float>
  %i.cs = fmul <4 x float> %broadcast.splat177, %i.cq
  %i.ct = fmul <4 x float> %broadcast.splat179, %21
  %i.cu = fadd <4 x float> %i.co, %i.ct
  %i.cv = fmul <4 x float> %i.cu, splat (float 5.000000e-01) ; 2 uses
  %22 = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %index
  %i.cw = shufflevector <4 x float> %i.cn, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x float> %i.cs, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec.a = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.a, ptr %22, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next186 = add <4 x i32> %vec.ind184, splat (i32 4)
  %vec.ind.next187 = add <4 x i32> %vec.ind185, splat (i32 4)
  %23 = icmp eq i64 %index.next, 32
  br i1 %23, label %.critedge.us, label %vector.body, !llvm.loop !852

.critedge.us:                                     ; preds = %vector.body
  %24 = zext i16 %9 to i32
  %25 = add nsw i32 %24, -32
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %26, %10
  %28 = add nuw nsw i32 %17, 32
  %29 = uitofp nneg i32 %28 to float
  %30 = fmul float %15, %29
  %31 = insertelement <2 x i32> poison, i32 %27, i64 0
  %32 = add nuw nsw i32 %17, 33
  %33 = uitofp nneg i32 %32 to float
  %34 = fmul float %15, %33
  %35 = fadd float %30, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %37 = shufflevector <2 x i32> %31, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %38 = add <4 x i32> %37, <i32 -1, i32 poison, i32 33, i32 poison>
  %39 = sitofp <4 x i32> %38 to <4 x float>
  %40 = insertelement <4 x float> %39, float %35, i64 1
  %41 = shufflevector <4 x float> %40, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %42 = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, float %14, i64 0
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %44 = fmul <4 x float> %41, %43
  store <4 x float> %44, ptr %36, align 8, !tbaa !29
  br label %.split103.us

.split:                                           ; preds = %.split.preheader, %.critedge
  %indvars.iv115 = phi i32 [ %i.by, %.split.preheader ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.critedge ] ; 11 uses
  %i.cy = shl nuw nsw i64 %indvar, 2
  %i.cz = sub nsw i64 %i.ch, %indvar              ; 3 uses
  %i.da = trunc nsw i64 %i.cz to i32
  %i.db = sdiv i32 %i.da, 2                       ; 10 uses
  %i.dc = trunc nuw nsw i64 %indvar to i32
  %i.dd = add i32 %i.db, %i.dc
  %i.de = sub i32 %i.by, %i.dd                    ; 3 uses
  %i.df = load i32, ptr %i.cd, align 8, !tbaa !309
  %.pre = add nuw nsw i64 %indvar, %i.ci          ; 3 uses
  switch i32 %i.df, label %.split..critedge_crit_edge [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre134 = trunc i64 %.pre to i32
  br label %.critedge

bb.k:                                             ; preds = %.split
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.dh = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.di = trunc i64 %.pre to i32                  ; 3 uses
  %i.dj = mul i32 %i.dh, %i.di
  %i.dk = add i32 %i.dj, %i.bz
  %i.dl = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.dm = mul i32 %i.dk, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.dg, i64 %i.dn  ; 3 uses
  %i.dp = icmp sgt i64 %i.cz, 1
  br i1 %i.dp, label %.lr.ph95.preheader, label %.preheader85

.lr.ph95.preheader:                               ; preds = %bb.k
  %i.dq = add nsw i32 %i.db, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.do, i8 0, i64 %i.ds, i1 false), !tbaa !50
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph95.preheader, %bb.k
  %.not105 = icmp eq i64 %indvar, 0
  br i1 %.not105, label %.preheader, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader85
  %i.dt = sext i32 %i.db to i64
  %i.du = getelementptr inbounds i8, ptr %i.do, i64 %i.dt
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.du, i8 -1, i64 range(i64 0, 33) %indvar, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph97, %.preheader85
  %i.dv = icmp sgt i32 %i.de, 0
  br i1 %i.dv, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.preheader
  %i.dw = sext i32 %i.db to i64
  %i.dx = getelementptr inbounds i8, ptr %i.do, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvar
  %i.dz = zext nneg i32 %i.de to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dy, i8 0, i64 %i.dz, i1 false), !tbaa !50
  br label %.critedge

bb.l:                                             ; preds = %.split
  %i.ea = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.eb = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.ec = trunc i64 %.pre to i32                  ; 4 uses
  %i.ed = mul nsw i32 %i.eb, %i.ec
  %i.ee = add nsw i32 %i.ed, %i.bz
  %i.ef = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.eg = mul nsw i32 %i.ee, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ea, i64 %i.eh ; 4 uses
  %i.ej = icmp sgt i64 %i.cz, 1
  br i1 %i.ej, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %i.db to i64        ; 3 uses
  %min.iters.check195 = icmp ult i32 %i.db, 8
  br i1 %min.iters.check195, label %.lr.ph.preheader204, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.preheader
  %n.vec197 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next200, %vector.body198 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index199 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.ek, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.el, align 4, !tbaa !258
  %index.next200 = add nuw i64 %index199, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next200, %n.vec197
  br i1 %i.em, label %middle.block201, label %vector.body198, !llvm.loop !853

middle.block201:                                  ; preds = %vector.body198
  %cmp.n202 = icmp eq i64 %n.vec197, %wide.trip.count
  br i1 %cmp.n202, label %.preheader88, label %.lr.ph.preheader204

.lr.ph.preheader204:                              ; preds = %.lr.ph.preheader, %middle.block201
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec197, %middle.block201 ]
  br label %.lr.ph

.preheader88:                                     ; preds = %.lr.ph, %middle.block201, %bb.l
  %.not104 = icmp eq i64 %indvar, 0
  br i1 %.not104, label %.preheader86, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader88
  %i.en = sext i32 %i.db to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.en
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eo, i8 -1, i64 range(i64 0, 129) %i.cy, i1 false), !tbaa !258
  br label %.preheader86

.lr.ph:                                           ; preds = %.lr.ph.preheader204, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader204 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  store i32 16777215, ptr %i.ep, align 4, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !854

.preheader86:                                     ; preds = %.lr.ph91, %.preheader88
  %i.eq = icmp sgt i32 %i.de, 0
  br i1 %i.eq, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader86
  %i.er = sext i32 %i.db to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvar ; 2 uses
  %i.eu = sub i32 %indvars.iv115, %i.db           ; 2 uses
  %wide.trip.count117 = zext i32 %i.eu to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.eu, 8
  br i1 %min.iters.check, label %scalar.ph188.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph93
  %n.vec = and i64 %wide.trip.count117, 4294967288 ; 3 uses
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph189
  %index191 = phi i64 [ 0, %vector.ph189 ], [ %index.next192, %vector.body190 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index191 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.ev, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.ew, align 4, !tbaa !258
  %index.next192 = add nuw i64 %index191, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next192, %n.vec
  br i1 %i.ex, label %middle.block193, label %vector.body190, !llvm.loop !855

middle.block193:                                  ; preds = %vector.body190
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count117
  br i1 %cmp.n, label %.critedge, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %.lr.ph93, %middle.block193
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph93 ], [ %n.vec, %middle.block193 ]
  br label %scalar.ph188

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %scalar.ph188 ], [ %indvars.iv112.ph, %scalar.ph188.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv112
  store i32 16777215, ptr %i.ey, align 4, !tbaa !258
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count117
  br i1 %exitcond118.not, label %.critedge, label %scalar.ph188, !llvm.loop !856

.critedge:                                        ; preds = %scalar.ph188, %middle.block193, %.split..critedge_crit_edge, %.lr.ph99, %.preheader86, %.preheader
  %.pre-phi = phi i32 [ %i.di, %.preheader ], [ %.pre134, %.split..critedge_crit_edge ], [ %i.di, %.lr.ph99 ], [ %i.ec, %.preheader86 ], [ %i.ec, %middle.block193 ], [ %i.ec, %scalar.ph188 ] ; 2 uses
  %i.ez = add nsw i32 %i.db, %i.bz                ; 2 uses
  %i.fa = add nsw i32 %i.ez, -1
  %i.fb = sitofp i32 %i.fa to float
  %i.fc = uitofp nneg i32 %.pre-phi to float
  %i.fd = load float, ptr %i.ca, align 4, !tbaa !237 ; 2 uses
  %i.fe = fmul float %i.fd, %i.fb
  %i.ff = load float, ptr %i.cb, align 8, !tbaa !238 ; 2 uses
  %i.fg = fmul float %i.ff, %i.fc
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 3 uses
  %i.fh = trunc nuw nsw i64 %indvar.next to i32
  %i.fi = add i32 %i.ez, %i.fh
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = add i32 %.pre-phi, 1
  %i.fl = uitofp nneg i32 %i.fk to float
  %i.fm = fmul float %i.fd, %i.fj
  %i.fn = fmul float %i.ff, %i.fl
  %i.fo = fadd float %i.fg, %i.fn
  %i.fp = fmul float %i.fo, 5.000000e-01          ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvar ; 4 uses
  store float %i.fe, ptr %i.fq, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store float %i.fp, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store float %i.fm, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store float %i.fp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !29
  %indvars.iv.next116 = add nsw i32 %indvars.iv115, -1
  %exitcond129.not = icmp eq i64 %indvar.next, 33
  br i1 %exitcond129.not, label %.split103.us, label %.split, !llvm.loop !857

.split103.us:                                     ; preds = %.critedge, %.critedge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZL20stbtt__cff_get_indexP10stbtt__buf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !503  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !504  ; 11 uses
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !505
  %i.f = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !503
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !50
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.l, %i.d
  br i1 %.not.i.i.1, label %bb.c, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1

bb.c:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !505
  %i.n = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !503
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !50
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %.0.i.i, %i.r
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1:       ; preds = %bb.c, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %i.t = phi i32 [ %i.n, %bb.c ], [ %i.l, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ] ; 5 uses
  %.0.i.i.1 = phi i32 [ %i.s, %bb.c ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1
  %.not.i = icmp slt i32 %i.t, %i.d
  br i1 %.not.i, label %bb.e, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !505
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !503
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !50
  %i.z = zext i8 %i.y to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.v, %bb.e ], [ %i.t, %bb.d ]
  %.0.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.ab = mul nuw nsw i32 %.0.i, %.0.i.i.1
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.d)
  %..i.i = select i1 %i.ad, i32 %i.d, i32 %i.ae   ; 3 uses
  %.not.i13 = icmp eq i32 %.0.i, 0
  br i1 %.not.i13, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %xtraiter = and i32 %.0.i, 1
  %i.af = icmp eq i32 %.0.i, 1
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1 ] ; 4 uses
  %.056.i16 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i19.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1 ]
  %i.ah = shl i32 %.056.i16, 8                    ; 2 uses
  %.not.i.i17 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i17, label %bb.f, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !505
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !503
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !50
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18:       ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1

bb.g:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !505
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !503
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !50
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1:     ; preds = %bb.g, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !505
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !503
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !50
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit: ; preds = %.lr.ph.i.epil.preheader, %bb.h, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21

_ZL14stbtt__buf_getP10stbtt__bufi.exit21:         ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bi = phi i32 [ %..i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ %.lcssa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ %i.bh, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8, !tbaa !503
  br label %bb.i

bb.i:                                             ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21 ], [ %i.t, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !505
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit

_ZL16stbtt__buf_rangePK10stbtt__bufii.exit:       ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #32 {
bb.a:
  %.sroa.18.8.extract.shift = lshr i64 %1, 32
  %.sroa.18.8.extract.trunc = trunc nuw i64 %.sroa.18.8.extract.shift to i32 ; 14 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %.sroa.18.8.extract.trunc, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.18.8.extract.trunc, 0
  br i1 %.not.i.i, label %bb.b, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZL20stbtt__cff_index_get10stbtt__bufi:bb.a
  %.not.i.i13.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.1, label %bb.e, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.1

bb.e:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14
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
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, !llvm.loop !858

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
  br i1 %or.cond.i.i, label %_ZL23stbtt__cff_skip_operandP10stbtt__buf.exit.i, label %bb.c, !llvm.loop !858

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
  br i1 %.not.i.i, label %_ZL16stbtt__buf_peek8P10stbtt__buf.exit.i, label %.thread38.i, !llvm.loop !859

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
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bf
  %i.bj = load i32, ptr %i.bd, align 8
  %i.bk = load i32, ptr %i.be, align 4
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !860

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
  store i32 0, ptr %i.a, align 4, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %4, i32 noundef 18, i32 noundef 2, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !258  ; 6 uses
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
  %i.l = icmp sgt i32 %i.g, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.e to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = zext nneg i32 %i.g to i64
  %i.p = shl nuw nsw i64 %i.o, 32
  br label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit

_ZL16stbtt__buf_rangePK10stbtt__bufii.exit:       ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  store ptr %.sroa.0.0.i, ptr %5, align 8, !tbaa !411
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !258
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %5, i32 noundef 19, i32 noundef 1, ptr noundef %i.a)
  %i.q = load i32, ptr %i.a, align 4, !tbaa !258  ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit
  %i.r = add i32 %i.q, %i.e                       ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.sroa.15.8.extract.trunc)
  %..i = select i1 %i.s, i32 %.sroa.15.8.extract.trunc, i32 %i.t ; 7 uses
  %.not.i.i.i = icmp slt i32 %..i, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.i, label %bb.f, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %..i, 1
  %i.v = sext i32 %..i to i64
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !50
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.u, %bb.f ], [ %..i, %bb.e ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.z, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.aa, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.1.i, label %bb.g, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.g:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !50
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %.0.i.i.i, %i.af
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.g, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.ah = phi i32 [ %i.ab, %bb.g ], [ %i.aa, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.ag, %bb.g ], [ %.0.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit, label %bb.h

bb.h:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.ah, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i, label %bb.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !50
  %i.am = zext i8 %i.al to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.i, %bb.h
  %i.an = phi i32 [ %i.ai, %bb.i ], [ %i.ah, %bb.h ]
  %.0.i.i = phi i32 [ %i.am, %bb.i ], [ 0, %bb.h ] ; 6 uses
  %i.ao = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.ap = add nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.sroa.15.8.extract.trunc)
  %..i.i.i = select i1 %i.aq, i32 %.sroa.15.8.extract.trunc, i32 %i.ar ; 3 uses
  %.not.i13.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i13.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %xtraiter = and i32 %.0.i.i, 1
  %i.as = icmp eq i32 %.0.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1, %.lr.ph.i.i.preheader.new
  %i.at = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.bj, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ] ; 4 uses
  %.056.i16.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i19.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ]
  %i.au = shl i32 %.056.i16.i, 8                  ; 2 uses
  %.not.i.i17.i = icmp slt i32 %i.at, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i, label %bb.j, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.av = add nsw i32 %i.at, 1
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !50
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.au, %i.az
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i:     ; preds = %bb.j, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.av, %bb.j ], [ %i.at, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i19.i = phi i32 [ %i.ba, %bb.j ], [ %i.au, %.lr.ph.i.i ]
  %i.bc = shl i32 %.0.i.i19.i, 8                  ; 2 uses
  %.not.i.i17.i.1 = icmp slt i32 %i.bb, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i.1, label %bb.k, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1

bb.k:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i
  %i.bd = add nsw i32 %i.bb, 1
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bc, %i.bh
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1:   ; preds = %bb.k, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i
  %i.bj = phi i32 [ %i.bd, %bb.k ], [ %i.bb, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i ] ; 3 uses
  %.0.i.i19.i.1 = phi i32 [ %i.bi, %bb.k ], [ %i.bc, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.bj, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i19.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.bk = shl i32 %.056.i16.i.epil.init, 8        ; 2 uses
  %.not.i.i17.i.epil = icmp slt i32 %.epil.init, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i.epil, label %bb.l, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bl = add nsw i32 %.epil.init, 1
  %i.bm = sext i32 %.epil.init to i64
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !50
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bk, %i.bp
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bj, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ], [ %i.bl, %bb.l ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i19.i.lcssa = phi i32 [ %.0.i.i19.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ], [ %i.bq, %bb.l ], [ %i.bk, %.lr.ph.i.i.epil.preheader ]
  %i.br = add i32 %.0.i.i19.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i

end_hunk_1
begin_hunk_2_@_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi:bb.a
  %i.f = zext i8 %.val174 to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 3 uses
  switch i16 %i.g, label %bb.l [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.val171 = load i8, ptr %i.h, align 1, !tbaa !50
  %i.i = getelementptr i8, ptr %i.b, i64 3
  %.val172 = load i8, ptr %i.i, align 1, !tbaa !50
  %i.j = zext i8 %.val171 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val172 to i32
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, -6
  %i.o = icmp slt i32 %0, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.q = zext nneg i32 %0 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !50
  %i.t = zext i8 %i.s to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val169 = load i8, ptr %i.u, align 1, !tbaa !50
  %i.v = getelementptr i8, ptr %i.b, i64 7
  %.val170 = load i8, ptr %i.v, align 1, !tbaa !50
  %i.w = zext i8 %.val169 to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = zext i8 %.val170 to i32
  %i.z = or disjoint i32 %i.x, %i.y               ; 3 uses
  %.not143 = icmp samesign ult i32 %0, %i.z
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val167 = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ab = zext i8 %.val167 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr i8, ptr %i.b, i64 9
  %.val168 = load i8, ptr %i.ad, align 1, !tbaa !50
  %i.ae = zext i8 %.val168 to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = add nuw nsw i32 %i.af, %i.z
  %i.ah = icmp samesign ult i32 %0, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aj = sub nuw nsw i32 %0, %i.z
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 2 uses
  %.val165 = load i8, ptr %i.am, align 1, !tbaa !50
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %.val166 = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ao = zext i8 %.val165 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = zext i8 %.val166 to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val163 = load i8, ptr %i.as, align 1, !tbaa !50
  %i.at = getelementptr i8, ptr %i.b, i64 7
  %.val164 = load i8, ptr %i.at, align 1, !tbaa !50
  %i.au = zext i8 %.val163 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val164 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val159 = load i8, ptr %i.az, align 1, !tbaa !50
  %i.ba = getelementptr i8, ptr %i.b, i64 11
  %.val160 = load i8, ptr %i.ba, align 1, !tbaa !50
  %i.bb = zext i8 %.val159 to i16
  %i.bc = shl nuw i16 %i.bb, 8                    ; 2 uses
  %i.bd = zext i8 %.val160 to i16                 ; 3 uses
  %i.be = or disjoint i16 %i.bc, %i.bd            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val157 = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bg = getelementptr i8, ptr %i.b, i64 13
  %.val158 = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bh = zext i8 %.val157 to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = add i32 %.56.val, 14
  %i.bk = and i8 %.val158, -2
  %.masked = zext i8 %i.bk to i16
  %i.bl = or disjoint i16 %i.bi, %.masked         ; 2 uses
  %i.bm = zext i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bm ; 2 uses
  %i.bo = zext i16 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo ; 2 uses
  %.val155 = load i8, ptr %i.bp, align 1, !tbaa !50
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  %.val156 = load i8, ptr %i.bq, align 1, !tbaa !50
  %i.br = zext i8 %.val155 to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = zext i8 %.val156 to i32
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %.not = icmp samesign ult i32 %0, %i.bu
  %i.bv = zext i16 %i.bl to i32
  %i.bw = select i1 %.not, i32 0, i32 %i.bv
  %.0123 = add i32 %.56.val, 12
  %i.bx = add i32 %.0123, %i.bw                   ; 4 uses
  %.not1427 = icmp eq i16 %i.be, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.by, align 1, !tbaa !50
  %i.bz = zext i8 %.val161 to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.cc = zext i8 %.val162 to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc            ; 2 uses
  %i.ce = or disjoint i16 %i.bc, %i.bd
  %xtraiter = and i16 %i.bd, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.cd, 1                 ; 2 uses
  %i.cf = zext i32 %i.bx to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cf
  %i.ch = and i16 %.0127.prol, 32766              ; 2 uses
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %.val153.prol = load i8, ptr %i.cj, align 1, !tbaa !50
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %.val154.prol = load i8, ptr %i.ck, align 1, !tbaa !50
  %i.cl = zext i8 %.val153.prol to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = zext i8 %.val154.prol to i32
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = icmp samesign ugt i32 %0, %i.co
  %i.cq = zext nneg i16 %i.ch to i32
  %i.cr = select i1 %i.cp, i32 %i.cq, i32 0
  %.2125.prol = add i32 %i.cr, %i.bx              ; 2 uses
  %i.cs = add nsw i16 %i.be, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.bx, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.be, %.lr.ph.preheader ], [ %i.cs, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %i.cd, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.ct = icmp eq i16 %i.ce, 1
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.du, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cu = zext i32 %.112410 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cu
  %i.cw = and i16 %.0127, 32766                   ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %.val153 = load i8, ptr %i.cy, align 1, !tbaa !50
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %.val154 = load i8, ptr %i.cz, align 1, !tbaa !50
  %i.da = zext i8 %.val153 to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = zext i8 %.val154 to i32
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = icmp samesign ugt i32 %0, %i.dd
  %i.df = zext nneg i16 %i.cw to i32
  %i.dg = select i1 %i.de, i32 %i.df, i32 0
  %.2125 = add i32 %i.dg, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.dh = zext i32 %.2125 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.dh
  %i.dj = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %.val153.1 = load i8, ptr %i.dl, align 1, !tbaa !50
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %.val154.1 = load i8, ptr %i.dm, align 1, !tbaa !50
  %i.dn = zext i8 %.val153.1 to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val154.1 to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp samesign ugt i32 %0, %i.dq
  %i.ds = zext nneg i16 %i.dj to i32
  %i.dt = select i1 %i.dr, i32 %i.ds, i32 0
  %.2125.1 = add i32 %i.dt, %.2125                ; 2 uses
  %i.du = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.du, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !861

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g
  %.1124.lcssa = phi i32 [ %i.bx, %bb.g ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dv = add i32 %reass.sub, 131060
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dx = and i32 %i.ax, 65534
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = and i32 %i.dv, 131070
  %i.ec = zext nneg i32 %i.eb to i64              ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %.val151 = load i8, ptr %i.ed, align 1, !tbaa !50
  %i.ee = getelementptr i8, ptr %i.ed, i64 1
  %.val152 = load i8, ptr %i.ee, align 1, !tbaa !50
  %i.ef = zext i8 %.val151 to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = zext i8 %.val152 to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ec ; 2 uses
  %.val149 = load i8, ptr %i.ej, align 1, !tbaa !50
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  %.val150 = load i8, ptr %i.ek, align 1, !tbaa !50
  %i.el = zext i8 %.val149 to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = zext i8 %.val150 to i32
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = icmp samesign ult i32 %0, %i.ei
  %i.eq = icmp samesign ugt i32 %0, %i.eo
  %or.cond145 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond145, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.er = mul nuw nsw i32 %i.ay, 6
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ec ; 2 uses
  %.val147 = load i8, ptr %i.ev, align 1, !tbaa !50
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  %.val148 = load i8, ptr %i.ew, align 1, !tbaa !50
  %i.ex = zext i8 %.val147 to i16
  %i.ey = shl nuw i16 %i.ex, 8
  %i.ez = zext i8 %.val148 to i16
  %i.fa = or disjoint i16 %i.ey, %i.ez            ; 2 uses
  %i.fb = icmp eq i16 %i.fa, 0
  br i1 %i.fb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fc = shl nuw nsw i32 %i.ay, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ec ; 2 uses
  %.val175 = load i8, ptr %i.fg, align 1, !tbaa !50
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %.val176 = load i8, ptr %i.fh, align 1, !tbaa !50
  %i.fi = zext i8 %.val175 to i32
  %i.fj = shl nuw nsw i32 %i.fi, 8
  %i.fk = zext i8 %.val176 to i32
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = add nuw nsw i32 %i.fl, %0
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fn = zext i16 %i.fa to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fn
  %i.fp = sub nuw nsw i32 %0, %i.ei
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.es
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ec ; 2 uses
  %.val = load i8, ptr %i.fw, align 1, !tbaa !50
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1, !tbaa !50
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %._crit_edge
  %.2132.shrunk = phi i32 [ %i.gb, %bb.j ], [ %i.fm, %bb.i ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph14, %bb.q
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.q ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.q ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.q

.thread:                                          ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub nsw i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.n
  %.2122 = phi i32 [ %.012011, %bb.n ], [ %i.gw, %bb.p ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.n ], [ %.012, %bb.p ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.n, label %.loopexit, !llvm.loop !862

.loopexit:                                        ; preds = %bb.q, %bb.m, %.thread, %bb.l, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k
  %.8 = phi i32 [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.d ], [ %.2132, %bb.k ], [ 0, %bb.a ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.5, %.thread ], [ 0, %bb.m ], [ 0, %bb.q ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #21 {
bb.a:
  %8 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !536
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 1, ptr %8, align 8
  %i.c = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef range(i32 1, 0) %1, ptr noundef %8)
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i, i32 0, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, i32 0, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %.not.i.i, i32 0, i32 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %.not.i.i, i32 0, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !506
  %.not.i40.i = icmp slt i32 %1, %i.q
  br i1 %.not.i40.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !508  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !499
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !497  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !498
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1, !tbaa !50
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
end_hunk_2
begin_hunk_3_@_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:bb.a
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
  %i.bs = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %.pre459 = load i32, ptr %2, align 8, !tbaa !538
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit
  %i.bt = phi i32 [ %.pre459, %.preheader.preheader ], [ %i.cv, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ] ; 2 uses
  %indvars.iv436 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next437, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ] ; 2 uses
  %i.bu = phi <2 x float> [ %i.bs, %.preheader.preheader ], [ %i.cx, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv436
  %i.bw = load <2 x float>, ptr %i.bv, align 8, !tbaa !29
  %i.bx = fadd <2 x float> %i.bw, %i.bu           ; 3 uses
  store <2 x float> %i.bx, ptr %i.ab, align 8, !tbaa !29
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.ca = extractelement <2 x i32> %i.by, i64 0   ; 4 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.ca, ptr %i.ad, align 4, !tbaa !539
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = load i32, ptr %i.af, align 4, !tbaa !541
  %i.ce = extractelement <2 x i32> %i.by, i64 1   ; 4 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ce, ptr %i.af, align 4, !tbaa !541
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.ci = icmp sgt i32 %i.ch, %i.ca
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.ca, ptr %i.ag, align 8, !tbaa !542
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.cl = icmp sgt i32 %i.ck, %i.ce
  br i1 %i.cl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not22.i.i.i, label %bb.x, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ce, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

bb.y:                                             ; preds = %.preheader
  %i.cn = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.co = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [14 x i8], ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i8 2, ptr %i.cr, align 2, !tbaa !514
  %i.cs = trunc <2 x i32> %i.by to <2 x i16>
  store <2 x i16> %i.cs, ptr %i.cq, align 2, !tbaa !243
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i64 0, ptr %i.ct, align 2
  %i.cu = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %.pre458 = load i32, ptr %2, align 8, !tbaa !538
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i, %bb.y
  %i.cv = phi i32 [ %i.bt, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre458, %bb.y ]
  %i.cw = phi i32 [ %.pre.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.co, %bb.y ]
  %i.cx = phi <2 x float> [ %i.bx, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.cu, %bb.y ]
  %i.cy = add nsw i32 %i.cw, 1
  store i32 %i.cy, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 2 ; 2 uses
  %i.cz = or disjoint i64 %indvars.iv.next437, 1
  %i.da = icmp samesign ult i64 %i.cz, %i.br
  br i1 %i.da, label %.preheader, label %.thread, !llvm.loop !863

bb.z:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.db = icmp slt i32 %.0244375, 1
  br i1 %i.db, label %.critedge, label %bb.aq

bb.aa:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.dc = icmp slt i32 %.0244375, 1
  br i1 %i.dc, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295
  %.1248 = phi i32 [ %i.fo, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295 ], [ 0, %bb.aa ] ; 3 uses
  %.not275 = icmp slt i32 %.1248, %.0244375
  br i1 %.not275, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dd = sext i32 %.1248 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !29
  %i.dg = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.dh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  %i.di = fadd <2 x float> %i.dg, %i.dh           ; 2 uses
  store <2 x float> %i.di, ptr %i.ab, align 8, !tbaa !29
  %i.dj = fptosi <2 x float> %i.di to <2 x i32>   ; 3 uses
  %i.dk = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i278 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i278, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.dm = extractelement <2 x i32> %i.dj, i64 0   ; 4 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i279 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i279, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.dm, ptr %i.ad, align 4, !tbaa !539
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dp = load i32, ptr %i.af, align 4, !tbaa !541
  %i.dq = extractelement <2 x i32> %i.dj, i64 1   ; 4 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i280 = icmp eq i32 %i.ds, 0
  br i1 %.not20.i.i.i280, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.dq, ptr %i.af, align 4, !tbaa !541
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.du = icmp sgt i32 %i.dt, %i.dm
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i281 = icmp eq i32 %i.dv, 0
  br i1 %.not21.i.i.i281, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.dm, ptr %i.ag, align 8, !tbaa !542
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.dx = icmp sgt i32 %i.dw, %i.dq
  br i1 %i.dx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i282 = icmp eq i32 %i.dy, 0
  br i1 %.not22.i.i.i282, label %bb.ao, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.dq, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283: ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i285 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286

bb.ap:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.ea = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [14 x i8], ptr %i.dz, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i8 2, ptr %i.ed, align 2, !tbaa !514
  %i.ee = trunc <2 x i32> %i.dj to <2 x i16>
  store <2 x i16> %i.ee, ptr %i.ec, align 2, !tbaa !243
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i64 0, ptr %i.ef, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283, %bb.ap
  %i.eg = phi i32 [ %.pre.i285, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i283 ], [ %i.ea, %bb.ap ]
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %i.ei = add nsw i32 %.1248, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286
  %.2249 = phi i32 [ 0, %bb.z ], [ %i.ei, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit286 ] ; 3 uses
  %.not274 = icmp slt i32 %.2249, %.0244375
  br i1 %.not274, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ej = sext i32 %.2249 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !29
  %i.em = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.en = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.el, i64 1
  %i.eo = fadd <2 x float> %i.em, %i.en           ; 2 uses
  store <2 x float> %i.eo, ptr %i.ab, align 8, !tbaa !29
  %i.ep = fptosi <2 x float> %i.eo to <2 x i32>   ; 3 uses
  %i.eq = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i287 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i287, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.es = extractelement <2 x i32> %i.ep, i64 0   ; 4 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i288 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i288, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.es, ptr %i.ad, align 4, !tbaa !539
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ev = load i32, ptr %i.af, align 4, !tbaa !541
  %i.ew = extractelement <2 x i32> %i.ep, i64 1   ; 4 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i289 = icmp eq i32 %i.ey, 0
  br i1 %.not20.i.i.i289, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.ew, ptr %i.af, align 4, !tbaa !541
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ez = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.fa = icmp sgt i32 %i.ez, %i.es
  br i1 %i.fa, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i290 = icmp eq i32 %i.fb, 0
  br i1 %.not21.i.i.i290, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.es, ptr %i.ag, align 8, !tbaa !542
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fc = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.fd = icmp sgt i32 %i.fc, %i.ew
  br i1 %i.fd, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fe = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i291 = icmp eq i32 %i.fe, 0
  br i1 %.not22.i.i.i291, label %bb.bd, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.ew, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292: ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i294 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295

bb.be:                                            ; preds = %bb.ar
  %i.ff = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.fg = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [14 x i8], ptr %i.ff, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i8 2, ptr %i.fj, align 2, !tbaa !514
  %i.fk = trunc <2 x i32> %i.ep to <2 x i16>
  store <2 x i16> %i.fk, ptr %i.fi, align 2, !tbaa !243
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i64 0, ptr %i.fl, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit295: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292, %bb.be
  %i.fm = phi i32 [ %.pre.i294, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i292 ], [ %i.fg, %bb.be ]
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %i.fo = add nsw i32 %.2249, 1
  br label %bb.ab, !llvm.loop !864

bb.bf:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.fp = icmp slt i32 %.0244375, 4
  br i1 %i.fp, label %.critedge, label %bb.bl

bb.bg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.fq = icmp slt i32 %.0244375, 4
  br i1 %i.fq, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bo
  %.3250 = phi i32 [ %i.gy, %bb.bo ], [ 0, %bb.bg ] ; 4 uses
  %i.fr = add nsw i32 %.3250, 3                   ; 2 uses
  %.not273 = icmp slt i32 %i.fr, %.0244375
  br i1 %.not273, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %bb.bh
  %i.fs = sext i32 %.3250 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fs ; 4 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !29
  %i.fv = getelementptr i8, ptr %i.ft, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !29
  %i.fx = getelementptr i8, ptr %i.ft, i64 8
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !29
  %i.fz = sext i32 %i.fr to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !29
  %i.gc = sub nsw i32 %.0244375, %.3250
  %i.gd = icmp eq i32 %i.gc, 5
  br i1 %i.gd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ge = getelementptr i8, ptr %i.ft, i64 16
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.gg = phi float [ %i.gf, %bb.bj ], [ 0.000000e+00, %bb.bi ]
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.fu, float noundef %i.fw, float noundef %i.fy, float noundef %i.gb, float noundef %i.gg)
  %i.gh = add nsw i32 %.3250, 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.gh, %bb.bk ]  ; 4 uses
  %i.gi = add nsw i32 %.4, 3                      ; 2 uses
  %.not272 = icmp slt i32 %i.gi, %.0244375
  br i1 %.not272, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gj = sext i32 %.4 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gj ; 4 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !29
  %i.gm = getelementptr i8, ptr %i.gk, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !29
  %i.go = getelementptr i8, ptr %i.gk, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !29
  %i.gq = sub nsw i32 %.0244375, %.4
  %i.gr = icmp eq i32 %i.gq, 5
  br i1 %i.gr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gs = getelementptr i8, ptr %i.gk, i64 16
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.gu = phi float [ %i.gt, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.gv = sext i32 %i.gi to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.gl, float noundef 0.000000e+00, float noundef %i.gn, float noundef %i.gp, float noundef %i.gu, float noundef %i.gx)
  %i.gy = add nsw i32 %.4, 4
  br label %bb.bh, !llvm.loop !865

bb.bp:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.gz = icmp slt i32 %.0244375, 6
  br i1 %i.gz, label %.critedge, label %.preheader354.preheader

.preheader354.preheader:                          ; preds = %bb.bp
  %i.ha = zext nneg i32 %.0244375 to i64
  br label %.preheader354

.preheader354:                                    ; preds = %.preheader354.preheader, %.preheader354
  %indvars.iv433 = phi i64 [ 0, %.preheader354.preheader ], [ %indvars.iv.next434, %.preheader354 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv433 ; 6 uses
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.hc, float noundef %i.he, float noundef %i.hg, float noundef %i.hi, float noundef %i.hk, float noundef %i.hm)
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 6
  %i.hn = add nuw nsw i64 %indvars.iv433, 11
  %i.ho = icmp samesign ult i64 %i.hn, %i.ha
  br i1 %i.ho, label %.preheader354, label %.thread, !llvm.loop !866

bb.bq:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.hp = icmp slt i32 %.0244375, 8
  br i1 %i.hp, label %.critedge, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %bb.bq
  %i.hq = add nsw i32 %.0244375, -2
  %i.hr = zext nneg i32 %i.hq to i64
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader, %.lr.ph366
  %indvars.iv430 = phi i64 [ 0, %.lr.ph366.preheader ], [ %indvars.iv.next431, %.lr.ph366 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv430 ; 6 uses
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !29
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !29
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !29
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.id = load float, ptr %i.ic, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ht, float noundef %i.hv, float noundef %i.hx, float noundef %i.hz, float noundef %i.ib, float noundef %i.id)
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 6 ; 3 uses
  %i.ie = add nuw nsw i64 %indvars.iv430, 11
  %i.if = icmp samesign ult i64 %i.ie, %i.hr
  br i1 %i.if, label %.lr.ph366, label %._crit_edge367, !llvm.loop !867

._crit_edge367:                                   ; preds = %.lr.ph366
  %i.ig = trunc nuw nsw i64 %indvars.iv.next431 to i32
  %i.ih = or disjoint i32 %i.ig, 1
  %.not271 = icmp slt i32 %i.ih, %.0244375
  br i1 %.not271, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge367
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next431
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !29
  %i.ik = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %i.il = fadd <2 x float> %i.ij, %i.ik           ; 2 uses
  store <2 x float> %i.il, ptr %i.ab, align 8, !tbaa !29
  %i.im = fptosi <2 x float> %i.il to <2 x i32>   ; 3 uses
  %i.in = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i296 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i296, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.io = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.ip = extractelement <2 x i32> %i.im, i64 0   ; 4 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ir = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i297 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i297, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.ip, ptr %i.ad, align 4, !tbaa !539
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.is = load i32, ptr %i.af, align 4, !tbaa !541
  %i.it = extractelement <2 x i32> %i.im, i64 1   ; 4 uses
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iv = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i298 = icmp eq i32 %i.iv, 0
  br i1 %.not20.i.i.i298, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.it, ptr %i.af, align 4, !tbaa !541
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.iw = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.ix = icmp sgt i32 %i.iw, %i.ip
  br i1 %i.ix, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iy = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i299 = icmp eq i32 %i.iy, 0
  br i1 %.not21.i.i.i299, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.ip, ptr %i.ag, align 8, !tbaa !542
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.iz = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.ja = icmp sgt i32 %i.iz, %i.it
  br i1 %i.ja, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jb = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i300 = icmp eq i32 %i.jb, 0
  br i1 %.not22.i.i.i300, label %bb.cd, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.it, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301: ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i303 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304

bb.ce:                                            ; preds = %bb.br
  %i.jc = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.jd = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [14 x i8], ptr %i.jc, i64 %i.je ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store i8 2, ptr %i.jg, align 2, !tbaa !514
  %i.jh = trunc <2 x i32> %i.im to <2 x i16>
  store <2 x i16> %i.jh, ptr %i.jf, align 2, !tbaa !243
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i64 0, ptr %i.ji, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301, %bb.ce
  %i.jj = phi i32 [ %.pre.i303, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i301 ], [ %i.jd, %bb.ce ]
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %.thread

bb.cf:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.jl = icmp slt i32 %.0244375, 8
  br i1 %i.jl, label %.critedge, label %.lr.ph363.preheader

.lr.ph363.preheader:                              ; preds = %bb.cf
  %i.jm = add nsw i32 %.0244375, -6
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %.pre453 = load i32, ptr %2, align 8, !tbaa !538
  br label %.lr.ph363

.lr.ph363:                                        ; preds = %.lr.ph363.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313
  %i.jp = phi i32 [ %.pre453, %.lr.ph363.preheader ], [ %i.kr, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313 ] ; 2 uses
  %indvars.iv427 = phi i64 [ 0, %.lr.ph363.preheader ], [ %indvars.iv.next428, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313 ] ; 2 uses
  %i.jq = phi <2 x float> [ %i.jo, %.lr.ph363.preheader ], [ %i.kt, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313 ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv427
  %i.js = load <2 x float>, ptr %i.jr, align 8, !tbaa !29
  %i.jt = fadd <2 x float> %i.js, %i.jq           ; 3 uses
  store <2 x float> %i.jt, ptr %i.ab, align 8, !tbaa !29
  %i.ju = fptosi <2 x float> %i.jt to <2 x i32>   ; 3 uses
  %.not.i.i305 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i305, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph363
  %i.jv = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.jw = extractelement <2 x i32> %i.ju, i64 0   ; 4 uses
  %i.jx = icmp slt i32 %i.jv, %i.jw
  br i1 %i.jx, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jy = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not.i.i.i306 = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i.i306, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.jw, ptr %i.ad, align 4, !tbaa !539
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jz = load i32, ptr %i.af, align 4, !tbaa !541
  %i.ka = extractelement <2 x i32> %i.ju, i64 1   ; 4 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kc = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not20.i.i.i307 = icmp eq i32 %i.kc, 0
  br i1 %.not20.i.i.i307, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.ka, ptr %i.af, align 4, !tbaa !541
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.kd = load i32, ptr %i.ag, align 8, !tbaa !542
  %i.ke = icmp sgt i32 %i.kd, %i.jw
  br i1 %i.ke, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kf = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not21.i.i.i308 = icmp eq i32 %i.kf, 0
  br i1 %.not21.i.i.i308, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.jw, ptr %i.ag, align 8, !tbaa !542
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.kg = load i32, ptr %i.ah, align 8, !tbaa !543
  %i.kh = icmp sgt i32 %i.kg, %i.ka
  br i1 %i.kh, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ki = load i32, ptr %i.ae, align 4, !tbaa !540
  %.not22.i.i.i309 = icmp eq i32 %i.ki, 0
  br i1 %.not22.i.i.i309, label %bb.cr, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.ka, ptr %i.ah, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310: ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.ae, align 4, !tbaa !540
  %.pre.i312 = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313

bb.cs:                                            ; preds = %.lr.ph363
  %i.kj = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.kk = load i32, ptr %.phi.trans.insert.i311, align 8, !tbaa !544 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [14 x i8], ptr %i.kj, i64 %i.kl ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i8 2, ptr %i.kn, align 2, !tbaa !514
  %i.ko = trunc <2 x i32> %i.ju to <2 x i16>
  store <2 x i16> %i.ko, ptr %i.km, align 2, !tbaa !243
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i64 0, ptr %i.kp, align 2
  %i.kq = load <2 x float>, ptr %i.ab, align 8, !tbaa !29
  %.pre452 = load i32, ptr %2, align 8, !tbaa !538
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313

_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313: ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310, %bb.cs
  %i.kr = phi i32 [ %i.jp, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310 ], [ %.pre452, %bb.cs ]
  %i.ks = phi i32 [ %.pre.i312, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310 ], [ %i.kk, %bb.cs ]
  %i.kt = phi <2 x float> [ %i.jt, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i310 ], [ %i.kq, %bb.cs ]
  %i.ku = add nsw i32 %i.ks, 1
  store i32 %i.ku, ptr %.phi.trans.insert.i311, align 8, !tbaa !544
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 2 ; 4 uses
  %i.kv = or disjoint i64 %indvars.iv.next428, 1
  %i.kw = icmp samesign ult i64 %i.kv, %i.jn
  br i1 %i.kw, label %.lr.ph363, label %._crit_edge, !llvm.loop !868

._crit_edge:                                      ; preds = %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit313
  %i.kx = trunc nuw nsw i64 %indvars.iv.next428 to i32
  %i.ky = add nuw nsw i32 %i.kx, 5                ; 2 uses
  %.not270 = icmp slt i32 %i.ky, %.0244375
  br i1 %.not270, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.kz = add nuw i32 %.0244375, 2147483640
  %i.la = and i32 %i.kz, 2147483646
  %narrow = add nuw i32 %i.la, 3
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next428 ; 4 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !29
  %i.ld = zext nneg i32 %narrow to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !29
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !29
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.lj = load float, ptr %i.li, align 4, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !29
  %i.lm = zext nneg i32 %i.ky to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.lc, float noundef %i.lf, float noundef %i.lh, float noundef %i.lj, float noundef %i.ll, float noundef %i.lo)
  br label %.thread

bb.cu:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.lp = icmp slt i32 %.0244375, 4
  br i1 %i.lp, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0244375, 1
  %i.lq = add nuw nsw i32 %.8, 3
  %i.lr = icmp samesign ult i32 %i.lq, %.0244375
  br i1 %i.lr, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not269 = trunc i32 %.0244375 to i1            ; 6 uses
  %i.ls = load float, ptr %i.a, align 16
  %.0251 = select i1 %.not269, float %i.ls, float 0.000000e+00 ; 2 uses
  %i.lt = icmp eq i8 %i.ap, 27
  %.not269.mask485 = and i32 %.0244375, 1
  %i.lu = zext nneg i32 %.not269.mask485 to i64   ; 6 uses
  %i.lv = zext nneg i32 %.0244375 to i64          ; 3 uses
  %.val486 = load float, ptr %i.l, align 4        ; 3 uses
  %.val487 = load float, ptr %i.a, align 16
  %i.lw = select i1 %.not269, float %.val486, float %.val487 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !29 ; 2 uses
  %i.ma = add nuw nsw i64 %i.lu, 7
  %i.mb = icmp samesign ult i64 %i.ma, %i.lv      ; 2 uses
  br i1 %i.lt, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep440.val = load float, ptr %.sroa.gep.sroa.gep440, align 8 ; 2 uses
  %i.mc = select i1 %.not269, float %.sroa.gep.sroa.gep440.val, float %.val486
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.md = select i1 %.not269, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep440.val
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %.0251, float noundef %i.lw, float noundef %i.mc, float noundef %i.md, float noundef 0.000000e+00, float noundef %i.lz)
  br i1 %i.mb, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.lu, 7
  %indvars.iv.next414.peel = or disjoint i64 %i.lu, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep443.sroa.gep446.val = load float, ptr %.sroa.gep443.sroa.gep446, align 8 ; 2 uses
  %i.me = select i1 %.not269, float %.sroa.gep443.sroa.gep446.val, float %.val486
  %.sroa.gep443.sroa.gep.val = load float, ptr %.sroa.gep443.sroa.gep, align 4
  %i.mf = select i1 %.not269, float %.sroa.gep443.sroa.gep.val, float %.sroa.gep443.sroa.gep446.val
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.lw, float noundef %.0251, float noundef %i.me, float noundef %i.mf, float noundef %i.lz, float noundef 0.000000e+00)
  br i1 %i.mb, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next420.peel = add nuw nsw i64 %i.lu, 7
  %indvars.iv.next422.peel = or disjoint i64 %i.lu, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next422, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next420, %.lr.ph.split.us ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv421 ; 3 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !29
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !29
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !29
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv419
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.mh, float noundef 0.000000e+00, float noundef %i.mj, float noundef %i.ml, float noundef %i.mn, float noundef 0.000000e+00)
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 4
  %i.mo = add nuw nsw i64 %indvars.iv421, 7
  %i.mp = icmp samesign ult i64 %i.mo, %i.lv
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 4
  br i1 %i.mp, label %.lr.ph.split.us, label %.thread, !llvm.loop !869

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv413 = phi i64 [ %indvars.iv.next414.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next414, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv413 ; 3 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !29
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !29
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !29
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mr, float noundef %i.mt, float noundef %i.mv, float noundef 0.000000e+00, float noundef %i.mx)
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 4
  %i.my = add nuw nsw i64 %indvars.iv413, 7
  %i.mz = icmp samesign ult i64 %i.my, %i.lv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.mz, label %.lr.ph.split, label %.thread, !llvm.loop !870

bb.cw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not = icmp eq i32 %.0255372, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.na = load i32, ptr %i.w, align 4, !tbaa !873 ; 13 uses
  %.not268 = icmp eq i32 %i.na, 0
  br i1 %.not268, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload53.i = load ptr, ptr %i.x, align 8, !tbaa !411 ; 9 uses
  %i.nb = tail call i32 @llvm.smin.i32(i32 %i.na, i32 0) ; 2 uses
  %.not.i.i314 = icmp sgt i32 %i.na, 0
  br i1 %.not.i.i314, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.cy
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !50
  switch i8 %i.ne, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit [
    i8 0, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.na, 1
  br i1 %.not.i.i.not.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, label %bb.da

_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i:  ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.cy
  %.sroa.9.168.i = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.nb, %bb.cy ]
  %i.nf = add nsw i32 %.sroa.9.168.i, %1          ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 0
  %i.nh = tail call i32 @llvm.smin.i32(i32 %i.nf, i32 %i.na)
  %..i.i.i = select i1 %i.ng, i32 %i.na, i32 %i.nh ; 2 uses
  %.not.i26.i = icmp slt i32 %..i.i.i, %i.na
  br i1 %.not.i26.i, label %bb.cz, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.cz:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %i.ni = sext i32 %..i.i.i to i64
  %i.nj = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !50
  %i.nl = zext i8 %i.nk to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !50
  %i.no = zext i8 %i.nn to i32
  %i.np = shl nuw nsw i32 %i.no, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.np, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.na
  br i1 %.not.i.i.1.i, label %bb.db, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.db:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.nq = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.nr = zext nneg i32 %.sroa.9.3.i to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !50
  %i.nu = zext i8 %i.nt to i32
  %i.nv = or disjoint i32 %.0.i.i.i, %i.nu
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.db, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nq, %bb.db ], [ %.sroa.9.3.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.nv, %bb.db ], [ %.0.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i32.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.na
  br i1 %.not.i.i32.i, label %bb.dc, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i

bb.dc:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %i.nw = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.nx = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !50
  %i.oa = zext i8 %i.nz to i32
  %i.ob = shl nuw nsw i32 %i.oa, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i:     ; preds = %bb.dc, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %.sroa.9.5.i = phi i32 [ %i.nw, %bb.dc ], [ %.sroa.9.3.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 4 uses
  %.0.i.i34.i = phi i32 [ %i.ob, %bb.dc ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 2 uses
  %.not.i.i32.1.i = icmp samesign ult i32 %.sroa.9.5.i, %i.na
  br i1 %.not.i.i32.1.i, label %bb.dd, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i

bb.dd:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i
  %i.oc = add nuw nsw i32 %.sroa.9.5.i, 1
  %i.od = zext nneg i32 %.sroa.9.5.i to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !50
  %i.og = zext i8 %i.of to i32
  %i.oh = or disjoint i32 %.0.i.i34.i, %i.og
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i:   ; preds = %bb.dd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i
  %.sroa.9.5.1.i = phi i32 [ %i.oc, %bb.dd ], [ %.sroa.9.5.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i ]
  %.0.i.i34.1.i = phi i32 [ %i.oh, %bb.dd ], [ %.0.i.i34.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i ]
  %.not78.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not78.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i
  %i.oi = add nuw nsw i32 %.02171.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.oi, %.0.i.i.1.i
  br i1 %exitcond.not.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i, !llvm.loop !871

.lr.ph.i:                                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i
  %.072.i = phi i32 [ %.0.i.i45.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ %.0.i.i34.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ]
  %.02171.i = phi i32 [ %i.oi, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ]
  %.sroa.9.070.i = phi i32 [ %.sroa.9.8.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ %.sroa.9.5.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ] ; 4 uses
  %.not.i37.i = icmp slt i32 %.sroa.9.070.i, %i.na
  br i1 %.not.i37.i, label %bb.de, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i

bb.de:                                            ; preds = %.lr.ph.i
  %i.oj = add nsw i32 %.sroa.9.070.i, 1
  %i.ok = sext i32 %.sroa.9.070.i to i64
  %i.ol = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !50
  %i.on = zext i8 %i.om to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i:       ; preds = %bb.de, %.lr.ph.i
  %.sroa.9.6.i = phi i32 [ %i.oj, %bb.de ], [ %.sroa.9.070.i, %.lr.ph.i ] ; 4 uses
  %.0.i38.i = phi i32 [ %i.on, %bb.de ], [ 0, %.lr.ph.i ]
  %.not.i.i43.i = icmp slt i32 %.sroa.9.6.i, %i.na
  br i1 %.not.i.i43.i, label %bb.df, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i

bb.df:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i
  %i.oo = add nsw i32 %.sroa.9.6.i, 1
  %i.op = sext i32 %.sroa.9.6.i to i64
  %i.oq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !50
  %i.os = zext i8 %i.or to i32
  %i.ot = shl nuw nsw i32 %i.os, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i:     ; preds = %bb.df, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i
  %.sroa.9.8.i = phi i32 [ %i.oo, %bb.df ], [ %.sroa.9.6.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i ] ; 4 uses
  %.0.i.i45.i = phi i32 [ %i.ot, %bb.df ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i ] ; 2 uses
  %.not.i.i43.1.i = icmp slt i32 %.sroa.9.8.i, %i.na
  br i1 %.not.i.i43.1.i, label %bb.dg, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i

bb.dg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i
  %i.ou = add nsw i32 %.sroa.9.8.i, 1
  %i.ov = sext i32 %.sroa.9.8.i to i64
  %i.ow = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !50
  %i.oy = zext i8 %i.ox to i32
  %i.oz = or disjoint i32 %.0.i.i45.i, %i.oy
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i:   ; preds = %bb.dg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i
  %.sroa.9.8.1.i = phi i32 [ %i.ou, %bb.dg ], [ %.sroa.9.8.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i ]
  %.0.i.i45.1.i = phi i32 [ %i.oz, %bb.dg ], [ %.0.i.i45.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i ] ; 2 uses
  %.not.i315 = icmp sge i32 %1, %.072.i
  %i.pa = icmp slt i32 %1, %.0.i.i45.1.i
  %or.cond.i = and i1 %.not.i315, %i.pa
  br i1 %or.cond.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i, %bb.cz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %.022.i = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i ], [ %i.nl, %bb.cz ], [ %.0.i38.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i ]
  %.sroa.03.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !411
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !258
  %.sroa.0.0.copyload.i = load ptr, ptr %i.z, align 8, !tbaa !411
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !258
  %i.pb = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %.022.i) ; 2 uses
  %i.pc = extractvalue { ptr, i64 } %i.pb, 0
  %i.pd = extractvalue { ptr, i64 } %i.pb, 1
  %i.pe = tail call fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i, ptr %i.pc, i64 %i.pd)
  br label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit

_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i
  %.pn.i = phi { ptr, i64 } [ %i.pe, %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i ], [ zeroinitializer, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ zeroinitializer, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ], [ zeroinitializer, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ] ; 2 uses
  %i.pf = extractvalue { ptr, i64 } %.pn.i, 0
  %i.pg = extractvalue { ptr, i64 } %.pn.i, 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cx, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, %bb.cw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.1256 = phi i32 [ 1, %bb.cw ], [ %.0255372, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ 1, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ 1, %bb.cx ]
  %.sroa.073.2 = phi ptr [ %.sroa.073.0373, %bb.cw ], [ %.sroa.073.0373, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ %i.pf, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ %.sroa.073.0373, %bb.cx ] ; 2 uses
  %.sroa.5.2 = phi i64 [ %.sroa.5.0374, %bb.cw ], [ %.sroa.5.0374, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ], [ %i.pg, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ %.sroa.5.0374, %bb.cx ] ; 2 uses
  %i.ph = icmp slt i32 %.0244375, 1
  br i1 %i.ph, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pi = add nsw i32 %.0244375, -1               ; 2 uses
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pj
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !29
  %i.pm = fptosi float %i.pl to i32
  %i.pn = icmp sgt i32 %.0241378, 9
  br i1 %i.pn, label %.critedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.po = add nsw i32 %.0241378, 1
  %i.pp = sext i32 %.0241378 to i64
  %i.pq = getelementptr inbounds [16 x i8], ptr %3, i64 %i.pp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !502
  %i.pr = icmp eq i8 %i.ap, 10
  br i1 %i.pr, label %.cont, label %.else

.else:                                            ; preds = %bb.dj
  %.sroa.0.0.copyload.else.val = load ptr, ptr %i.aa, align 8, !tbaa !411
  %.sroa.2.0.copyload.else.val = load i64, ptr %.sroa.gep72, align 8, !tbaa !258
  br label %.cont

.cont:                                            ; preds = %bb.dj, %.else
  %.sroa.0.0.copyload338 = phi ptr [ %.sroa.0.0.copyload.else.val, %.else ], [ %.sroa.073.2, %bb.dj ] ; 3 uses
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.else.val, %.else ], [ %.sroa.5.2, %bb.dj ] ; 2 uses
  %.sroa.9.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32
  %.sroa.9.8.extract.trunc.i = trunc nuw i64 %.sroa.9.8.extract.shift.i to i32 ; 3 uses
  %i.ps = tail call i32 @llvm.smin.i32(i32 %.sroa.9.8.extract.trunc.i, i32 0) ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %.sroa.9.8.extract.trunc.i, 0
  br i1 %.not.i.i.i.i, label %bb.dk, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

bb.dk:                                            ; preds = %.cont
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload338, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !50
  %i.pw = zext i8 %i.pv to i32
  %i.px = shl nuw nsw i32 %i.pw, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.dk, %.cont
  %.sroa.4.0.i = phi i32 [ 1, %bb.dk ], [ %i.ps, %.cont ] ; 4 uses
  %.0.i.i.i.i = phi i32 [ %i.px, %bb.dk ], [ 0, %.cont ] ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %.sroa.4.0.i, %.sroa.9.8.extract.trunc.i
  br i1 %.not.i.i.1.i.i, label %bb.dl, label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

bb.dl:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.py = add nsw i32 %.sroa.4.0.i, 1
  %i.pz = sext i32 %.sroa.4.0.i to i64
  %i.qa = getelementptr inbounds i8, ptr %.sroa.0.0.copyload338, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !50
  %i.qc = zext i8 %i.qb to i32
  %i.qd = or disjoint i32 %.0.i.i.i.i, %i.qc
  br label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i:  ; preds = %bb.dl, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %.sroa.4.1.i = phi i32 [ %i.py, %bb.dl ], [ %.sroa.4.0.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ]
  %.0.i.i.1.i.i = phi i32 [ %i.qd, %bb.dl ], [ %.0.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ] ; 3 uses
  %i.qe = icmp samesign ugt i32 %.0.i.i.1.i.i, 33899
  %i.qf = icmp samesign ugt i32 %.0.i.i.1.i.i, 1239
  %spec.select.i = select i1 %i.qf, i32 1131, i32 107
  %.0.i316 = select i1 %i.qe, i32 32768, i32 %spec.select.i
  %i.qg = add nsw i32 %.0.i316, %i.pm             ; 3 uses
  %i.qh = icmp sgt i32 %i.qg, -1
  %.not.i317 = icmp slt i32 %i.qg, %.0.i.i.1.i.i
  %or.cond.i318 = and i1 %i.qh, %.not.i317
  br i1 %or.cond.i318, label %bb.dm, label %_ZL15stbtt__get_subr10stbtt__bufi.exit

bb.dm:                                            ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i
  %.sroa.9.8.insert.shift.i = and i64 %.sroa.2.0.copyload, -4294967296
  %.sroa.4.8.insert.ext.i = zext i32 %.sroa.4.1.i to i64
  %.sroa.4.8.insert.insert.i = or disjoint i64 %.sroa.9.8.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.qi = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr readonly %.sroa.0.0.copyload338, i64 %.sroa.4.8.insert.insert.i, i32 noundef %i.qg)
  br label %_ZL15stbtt__get_subr10stbtt__bufi.exit

_ZL15stbtt__get_subr10stbtt__bufi.exit:           ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i, %bb.dm
  %.pn.i319 = phi { ptr, i64 } [ %i.qi, %bb.dm ], [ zeroinitializer, %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i ] ; 2 uses
  %i.qj = extractvalue { ptr, i64 } %.pn.i319, 0
  %i.qk = extractvalue { ptr, i64 } %.pn.i319, 1  ; 2 uses
  store ptr %i.qj, ptr %4, align 8, !tbaa !411
  store i64 %i.qk, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !258
  %i.ql = icmp ult i64 %i.qk, 4294967296
  br i1 %i.ql, label %.critedge, label %bb.dn

bb.dn:                                            ; preds = %_ZL15stbtt__get_subr10stbtt__bufi.exit
  store i32 0, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !503
  br label %.thread

bb.do:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.qm = icmp slt i32 %.0241378, 1
  br i1 %i.qm, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qn = add nsw i32 %.0241378, -1               ; 2 uses
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.qp, i64 16, i1 false), !tbaa.struct !502
  br label %.thread

bb.dq:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qr = load float, ptr %i.ab, align 8, !tbaa !546
  %i.qs = load <2 x float>, ptr %i.qq, align 8, !tbaa !29 ; 3 uses
  %i.qt = extractelement <2 x float> %i.qs, i64 0
  %i.qu = fcmp une float %i.qt, %i.qr
  br i1 %i.qu, label %._crit_edge.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qv = load float, ptr %i.ac, align 4, !tbaa !547
  %i.qw = extractelement <2 x float> %i.qs, i64 1
  %i.qx = fcmp une float %i.qw, %i.qv
  br i1 %i.qx, label %._crit_edge.i, label %.critedge

._crit_edge.i:                                    ; preds = %bb.dr, %bb.dq
  %i.qy = fptosi <2 x float> %i.qs to <2 x i32>   ; 3 uses
  %i.qz = load i32, ptr %2, align 8, !tbaa !538
  %.not.i.i322 = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i322, label %bb.ee, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge.i
  %i.ra = load i32, ptr %i.ad, align 4, !tbaa !539
  %i.rb = extractelement <2 x i32> %i.qy, i64 0   ; 4 uses
end_hunk_3
begin_hunk_4_@_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:bb.a
  %i.sf = load float, ptr %i.n, align 4, !tbaa !29
  %i.sg = load float, ptr %i.o, align 16, !tbaa !29
  %i.sh = load float, ptr %i.p, align 4, !tbaa !29
  %i.si = load float, ptr %i.q, align 8, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sc, float noundef 0.000000e+00, float noundef %i.sd, float noundef %i.se, float noundef %i.sf, float noundef 0.000000e+00)
  %i.sj = fneg float %i.se
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sg, float noundef 0.000000e+00, float noundef %i.sh, float noundef %i.sj, float noundef %i.si, float noundef 0.000000e+00)
  br label %.thread

bb.ei:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit330
  %i.sk = icmp slt i32 %.0244375, 13
  br i1 %i.sk, label %.critedge, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sl = load float, ptr %i.a, align 16, !tbaa !29
  %i.sm = load float, ptr %i.l, align 4, !tbaa !29
  %i.sn = load float, ptr %i.m, align 8, !tbaa !29
  %i.so = load float, ptr %i.n, align 4, !tbaa !29
  %i.sp = load float, ptr %i.o, align 16, !tbaa !29
  %i.sq = load float, ptr %i.p, align 4, !tbaa !29
  %i.sr = load float, ptr %i.q, align 8, !tbaa !29
  %i.ss = load float, ptr %i.r, align 4, !tbaa !29
  %i.st = load float, ptr %i.s, align 16, !tbaa !29
  %i.su = load float, ptr %i.t, align 4, !tbaa !29
  %i.sv = load float, ptr %i.u, align 8, !tbaa !29
  %i.sw = load float, ptr %i.v, align 4, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sl, float noundef %i.sm, float noundef %i.sn, float noundef %i.so, float noundef %i.sp, float noundef %i.sq)
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sr, float noundef %i.ss, float noundef %i.st, float noundef %i.su, float noundef %i.sv, float noundef %i.sw)
  br label %.thread

bb.ek:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit330
  %i.sx = icmp slt i32 %.0244375, 9
  br i1 %i.sx, label %.critedge, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sy = load float, ptr %i.a, align 16, !tbaa !29
  %i.sz = load float, ptr %i.l, align 4, !tbaa !29 ; 2 uses
  %i.ta = load float, ptr %i.m, align 8, !tbaa !29
  %i.tb = load float, ptr %i.n, align 4, !tbaa !29 ; 2 uses
  %i.tc = load float, ptr %i.o, align 16, !tbaa !29
  %i.td = load float, ptr %i.p, align 4, !tbaa !29
  %i.te = load float, ptr %i.q, align 8, !tbaa !29
  %i.tf = load float, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %i.tg = load float, ptr %i.s, align 16, !tbaa !29
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sy, float noundef %i.sz, float noundef %i.ta, float noundef %i.tb, float noundef %i.tc, float noundef 0.000000e+00)
  %i.th = fadd float %i.sz, %i.tb
  %i.ti = fadd float %i.th, %i.tf
  %i.tj = fneg float %i.ti
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.td, float noundef 0.000000e+00, float noundef %i.te, float noundef %i.tf, float noundef %i.tg, float noundef %i.tj)
  br label %.thread

bb.em:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit330
  %i.tk = icmp slt i32 %.0244375, 11
  br i1 %i.tk, label %.critedge, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tl = load float, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.tm = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 3 uses
  %i.tn = load <2 x float>, ptr %i.m, align 8, !tbaa !29 ; 3 uses
  %i.to = load <2 x float>, ptr %i.o, align 16, !tbaa !29 ; 3 uses
  %i.tp = load <2 x float>, ptr %i.q, align 8, !tbaa !29 ; 3 uses
  %i.tq = load <2 x float>, ptr %i.s, align 16, !tbaa !29 ; 3 uses
  %i.tr = fadd <2 x float> %i.tm, %i.tn
  %i.ts = fadd <2 x float> %i.tr, %i.to
  %i.tt = fadd <2 x float> %i.ts, %i.tp
  %i.tu = fadd <2 x float> %i.tt, %i.tq           ; 2 uses
  %i.tv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.tu) ; 2 uses
  %i.tw = extractelement <2 x float> %i.tv, i64 0
  %i.tx = extractelement <2 x float> %i.tv, i64 1
  %i.ty = fcmp ogt float %i.tw, %i.tx             ; 2 uses
  %i.tz = fneg <2 x float> %i.tu                  ; 2 uses
  %i.ua = extractelement <2 x float> %i.tz, i64 0
  %.0234 = select i1 %i.ty, float %i.tl, float %i.ua
  %i.ub = extractelement <2 x float> %i.tz, i64 1
  %.0 = select i1 %i.ty, float %i.ub, float %i.tl
  %i.uc = extractelement <2 x float> %i.tm, i64 0
  %i.ud = extractelement <2 x float> %i.tm, i64 1
  %i.ue = extractelement <2 x float> %i.tn, i64 0
  %i.uf = extractelement <2 x float> %i.tn, i64 1
  %i.ug = extractelement <2 x float> %i.to, i64 0
  %i.uh = extractelement <2 x float> %i.to, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.uc, float noundef %i.ud, float noundef %i.ue, float noundef %i.uf, float noundef %i.ug, float noundef %i.uh)
  %i.ui = extractelement <2 x float> %i.tp, i64 0
  %i.uj = extractelement <2 x float> %i.tp, i64 1
  %i.uk = extractelement <2 x float> %i.tq, i64 0
  %i.ul = extractelement <2 x float> %i.tq, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ui, float noundef %i.uj, float noundef %i.uk, float noundef %i.ul, float noundef %.0234, float noundef %.0)
  br label %.thread

bb.eo:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.um = icmp ne i8 %i.ap, 28
  %i.un = icmp ult i8 %i.ap, 32
  %or.cond3 = and i1 %i.un, %i.um
  br i1 %or.cond3, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.uo = icmp eq i8 %i.ap, -1
  br i1 %i.uo, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %.not.i.i332 = icmp slt i32 %i.am, %i.aj
  br i1 %.not.i.i332, label %bb.er, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333

bb.er:                                            ; preds = %bb.eq
  %i.up = add nsw i32 %i.ak, 2
  %i.uq = sext i32 %i.am to i64
  %i.ur = getelementptr inbounds i8, ptr %i.al, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !50
  %i.ut = zext i8 %i.us to i32
  %i.uu = shl nuw nsw i32 %i.ut, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333:      ; preds = %bb.er, %bb.eq
  %i.uv = phi i32 [ %i.up, %bb.er ], [ %i.am, %bb.eq ] ; 4 uses
  %.0.i.i = phi i32 [ %i.uu, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %.not.i.i332.1 = icmp slt i32 %i.uv, %i.aj
  br i1 %.not.i.i332.1, label %bb.es, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1

bb.es:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333
  %i.uw = add nsw i32 %i.uv, 1
  %i.ux = sext i32 %i.uv to i64
  %i.uy = getelementptr inbounds i8, ptr %i.al, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !50
  %i.va = zext i8 %i.uz to i32
  %i.vb = or disjoint i32 %.0.i.i, %i.va
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1:    ; preds = %bb.es, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333
  %i.vc = phi i32 [ %i.uw, %bb.es ], [ %i.uv, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333 ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.vb, %bb.es ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333 ]
  %i.vd = shl nuw nsw i32 %.0.i.i.1, 8            ; 2 uses
  %.not.i.i332.2 = icmp slt i32 %i.vc, %i.aj
  br i1 %.not.i.i332.2, label %bb.et, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2

bb.et:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1
  %i.ve = add nsw i32 %i.vc, 1
  %i.vf = sext i32 %i.vc to i64
  %i.vg = getelementptr inbounds i8, ptr %i.al, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !50
  %i.vi = zext i8 %i.vh to i32
  %i.vj = or disjoint i32 %i.vd, %i.vi
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2:    ; preds = %bb.et, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1
  %i.vk = phi i32 [ %i.ve, %bb.et ], [ %i.vc, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1 ] ; 4 uses
  %.0.i.i.2 = phi i32 [ %i.vj, %bb.et ], [ %i.vd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.1 ]
  %i.vl = shl nuw i32 %.0.i.i.2, 8                ; 2 uses
  %.not.i.i332.3 = icmp slt i32 %i.vk, %i.aj
  br i1 %.not.i.i332.3, label %bb.eu, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.3

bb.eu:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2
  %i.vm = add nsw i32 %i.vk, 1
  %i.vn = sext i32 %i.vk to i64
  %i.vo = getelementptr inbounds i8, ptr %i.al, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !50
  %i.vq = zext i8 %i.vp to i32
  %i.vr = or disjoint i32 %i.vl, %i.vq
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.3

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.3:    ; preds = %bb.eu, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2
  %i.vs = phi i32 [ %i.vm, %bb.eu ], [ %i.vk, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2 ]
  %.0.i.i.3 = phi i32 [ %i.vr, %bb.eu ], [ %i.vl, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.2 ]
  store i32 %i.vs, ptr %.sroa.468.0..sroa_idx, align 8
  %i.vt = sitofp i32 %.0.i.i.3 to float
  %i.vu = fmul nnan float %i.vt, f0x37800000
  br label %bb.ew

bb.ev:                                            ; preds = %bb.ep
  %i.vv = icmp slt i32 %i.ak, 0
  %i.vw = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.aj)
  %..i.i336 = select i1 %i.vv, i32 %i.aj, i32 %i.vw
  store i32 %..i.i336, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !503
  %i.vx = call fastcc noundef i32 @_ZL14stbtt__cff_intP10stbtt__buf(ptr noundef %4)
  %i.vy = trunc i32 %i.vx to i16
  %i.vz = sitofp i16 %i.vy to float
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.3
  %.2253 = phi float [ %i.vu, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i333.3 ], [ %i.vz, %bb.ev ]
  %i.wa = icmp sgt i32 %.0244375, 47
  br i1 %i.wa, label %.critedge, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.wb = add nsw i32 %.0244375, 1
  %i.wc = sext i32 %.0244375 to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.wc
  store float %.2253, ptr %i.wd, align 4, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader354, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.cv, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ct, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304, %bb.bh, %bb.bl, %bb.ab, %bb.aq, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.ex, %bb.dp, %bb.dn
  %.1237353 = phi i32 [ %.0236380, %bb.dp ], [ %.0236380, %bb.ex ], [ %.0236380, %bb.dn ], [ %.0236380, %bb.en ], [ %.0236380, %bb.el ], [ %.0236380, %bb.ej ], [ %.0236380, %bb.eh ], [ %.0236380, %bb.cv ], [ %.0236380, %bb.ct ], [ %.0236380, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0236380, %.lr.ph.split.us.preheader ], [ %.0236380, %bb.bh ], [ %.0236380, %bb.bl ], [ %.0236380, %bb.ab ], [ %.0236380, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ %.0236380, %bb.e ], [ %.0236380, %.lr.ph.split.preheader ], [ %.0236380, %.preheader354 ], [ %.0236380, %.lr.ph.split.us ], [ %.0236380, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0236380, %.lr.ph.split ]
  %.2240352 = phi i32 [ %.0238379, %bb.dp ], [ %.0238379, %bb.ex ], [ %.0238379, %bb.dn ], [ %.0238379, %bb.en ], [ %.0238379, %bb.el ], [ %.0238379, %bb.ej ], [ %.0238379, %bb.eh ], [ %.0238379, %bb.cv ], [ %.0238379, %bb.ct ], [ %.0238379, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0238379, %.lr.ph.split.us.preheader ], [ %.0238379, %bb.bh ], [ %.0238379, %bb.bl ], [ %.0238379, %bb.ab ], [ %.0238379, %bb.aq ], [ %.1239, %bb.d ], [ %.0238379, %bb.k ], [ %.0238379, %bb.i ], [ %.0238379, %bb.g ], [ %i.ay, %bb.e ], [ %.0238379, %.lr.ph.split.preheader ], [ %.0238379, %.preheader354 ], [ %.0238379, %.lr.ph.split.us ], [ %.0238379, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0238379, %.lr.ph.split ]
  %.1242351 = phi i32 [ %i.qn, %bb.dp ], [ %.0241378, %bb.ex ], [ %i.po, %bb.dn ], [ %.0241378, %bb.en ], [ %.0241378, %bb.el ], [ %.0241378, %bb.ej ], [ %.0241378, %bb.eh ], [ %.0241378, %bb.cv ], [ %.0241378, %bb.ct ], [ %.0241378, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0241378, %.lr.ph.split.us.preheader ], [ %.0241378, %bb.bh ], [ %.0241378, %bb.bl ], [ %.0241378, %bb.ab ], [ %.0241378, %bb.aq ], [ %.0241378, %bb.d ], [ %.0241378, %bb.k ], [ %.0241378, %bb.i ], [ %.0241378, %bb.g ], [ %.0241378, %bb.e ], [ %.0241378, %.lr.ph.split.preheader ], [ %.0241378, %.preheader354 ], [ %.0241378, %.lr.ph.split.us ], [ %.0241378, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0241378, %.lr.ph.split ]
  %.sroa.5.3350 = phi i64 [ %.sroa.5.0374, %bb.dp ], [ %.sroa.5.0374, %bb.ex ], [ %.sroa.5.2, %bb.dn ], [ %.sroa.5.0374, %bb.en ], [ %.sroa.5.0374, %bb.el ], [ %.sroa.5.0374, %bb.ej ], [ %.sroa.5.0374, %bb.eh ], [ %.sroa.5.0374, %bb.cv ], [ %.sroa.5.0374, %bb.ct ], [ %.sroa.5.0374, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.sroa.5.0374, %.lr.ph.split.us.preheader ], [ %.sroa.5.0374, %bb.bh ], [ %.sroa.5.0374, %bb.bl ], [ %.sroa.5.0374, %bb.ab ], [ %.sroa.5.0374, %bb.aq ], [ %.sroa.5.0374, %bb.d ], [ %.sroa.5.0374, %bb.k ], [ %.sroa.5.0374, %bb.i ], [ %.sroa.5.0374, %bb.g ], [ %.sroa.5.0374, %bb.e ], [ %.sroa.5.0374, %.lr.ph.split.preheader ], [ %.sroa.5.0374, %.preheader354 ], [ %.sroa.5.0374, %.lr.ph.split.us ], [ %.sroa.5.0374, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.sroa.5.0374, %.lr.ph.split ]
  %.sroa.073.3349 = phi ptr [ %.sroa.073.0373, %bb.dp ], [ %.sroa.073.0373, %bb.ex ], [ %.sroa.073.2, %bb.dn ], [ %.sroa.073.0373, %bb.en ], [ %.sroa.073.0373, %bb.el ], [ %.sroa.073.0373, %bb.ej ], [ %.sroa.073.0373, %bb.eh ], [ %.sroa.073.0373, %bb.cv ], [ %.sroa.073.0373, %bb.ct ], [ %.sroa.073.0373, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.sroa.073.0373, %.lr.ph.split.us.preheader ], [ %.sroa.073.0373, %bb.bh ], [ %.sroa.073.0373, %bb.bl ], [ %.sroa.073.0373, %bb.ab ], [ %.sroa.073.0373, %bb.aq ], [ %.sroa.073.0373, %bb.d ], [ %.sroa.073.0373, %bb.k ], [ %.sroa.073.0373, %bb.i ], [ %.sroa.073.0373, %bb.g ], [ %.sroa.073.0373, %bb.e ], [ %.sroa.073.0373, %.lr.ph.split.preheader ], [ %.sroa.073.0373, %.preheader354 ], [ %.sroa.073.0373, %.lr.ph.split.us ], [ %.sroa.073.0373, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.sroa.073.0373, %.lr.ph.split ]
  %.2257348 = phi i32 [ %.0255372, %bb.dp ], [ %.0255372, %bb.ex ], [ %.1256, %bb.dn ], [ %.0255372, %bb.en ], [ %.0255372, %bb.el ], [ %.0255372, %bb.ej ], [ %.0255372, %bb.eh ], [ %.0255372, %bb.cv ], [ %.0255372, %bb.ct ], [ %.0255372, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ %.0255372, %.lr.ph.split.us.preheader ], [ %.0255372, %bb.bh ], [ %.0255372, %bb.bl ], [ %.0255372, %bb.ab ], [ %.0255372, %bb.aq ], [ %.0255372, %bb.d ], [ %.0255372, %bb.k ], [ %.0255372, %bb.i ], [ %.0255372, %bb.g ], [ %.0255372, %bb.e ], [ %.0255372, %.lr.ph.split.preheader ], [ %.0255372, %.preheader354 ], [ %.0255372, %.lr.ph.split.us ], [ %.0255372, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0255372, %.lr.ph.split ]
  %i.we = phi i32 [ %.0244375, %bb.dp ], [ %i.wb, %bb.ex ], [ %i.pi, %bb.dn ], [ 0, %bb.en ], [ 0, %bb.el ], [ 0, %bb.ej ], [ 0, %bb.eh ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit304 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %.lr.ph.split.preheader ], [ 0, %.preheader354 ], [ 0, %.lr.ph.split.us ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ 0, %.lr.ph.split ]
  %i.wf = load i32, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !503 ; 2 uses
  %i.wg = load i32, ptr %i.g, align 4, !tbaa !504 ; 2 uses
  %i.wh = icmp slt i32 %i.wf, %i.wg
  br i1 %i.wh, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit, label %.critedge, !llvm.loop !872

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.z, %bb.aa, %bb.bf, %bb.bg, %bb.bp, %bb.bq, %._crit_edge367, %bb.cf, %._crit_edge, %bb.cu, %bb.dh, %bb.di, %_ZL15stbtt__get_subr10stbtt__bufi.exit, %bb.do, %bb.eo, %bb.ew, %.thread, %bb.ei, %bb.eg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit330, %bb.ek, %bb.em, %bb.ef, %bb.a, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i, %bb.dr
  %.3 = phi i32 [ 1, %bb.dr ], [ 1, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ], [ 0, %bb.a ], [ 0, %bb.ef ], [ 0, %bb.em ], [ 0, %bb.ek ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit330 ], [ 0, %bb.eg ], [ 0, %bb.ei ], [ 0, %.thread ], [ 0, %bb.ew ], [ 0, %bb.eo ], [ 0, %bb.do ], [ 0, %_ZL15stbtt__get_subr10stbtt__bufi.exit ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.cu ], [ 0, %._crit_edge ], [ 0, %bb.cf ], [ 0, %._crit_edge367 ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !546 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !29 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !547 ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge.i, label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !538
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !539
  %i.o = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !540
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.o, ptr %i.m, align 4, !tbaa !539
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !541
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !540
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !541
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !542
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !540
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !542
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !543
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !540
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !540
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !544
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !545
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !544 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !514
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !243
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !546
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.o, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i
  %.pre = phi float [ %i.c, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !544
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !547
  br label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit: ; preds = %bb.b, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !546
  store float %i.ax, ptr %i.a, align 8, !tbaa !874
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !547
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !875
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !538
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !539
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !540
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !539
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !541
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !540
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !541
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !542
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !540
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !542
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !543
  %i.bu = icmp sgt i32 %i.bt, %i.bb
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !540
  %.not22.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not22.i.i, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 %i.bb, ptr %i.bs, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !540
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 8, !tbaa !544
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !545
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !544 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [14 x i8], ptr %i.bz, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i8 1, ptr %i.ce, align 2, !tbaa !514
  %i.cf = trunc i32 %i.ba to i16
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !519
  %i.cg = trunc i32 %i.bb to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !520
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i64 0, ptr %i.ci, align 2
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i, %bb.ab
  %i.cj = phi i32 [ %.pre15, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.cb, %bb.ab ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !544
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !29
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1
  %i.f = fadd <2 x float> %i.e, %i.c              ; 3 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fadd float %3, %i.g                      ; 2 uses
  %i.i = extractelement <2 x float> %i.f, i64 1
  %i.j = fadd float %4, %i.i                      ; 2 uses
  %i.k = fadd float %5, %i.h                      ; 2 uses
  store float %i.k, ptr %i.a, align 8, !tbaa !546
  %i.l = fadd float %6, %i.j                      ; 2 uses
  store float %i.l, ptr %i.b, align 4, !tbaa !547
  %i.m = insertelement <4 x float> poison, float %i.k, i64 0
  %i.n = insertelement <4 x float> %i.m, float %i.l, i64 1
  %i.o = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = fptosi <4 x float> %i.p to <4 x i32>     ; 5 uses
  %i.r = fptosi float %i.h to i32                 ; 5 uses
  %i.s = fptosi float %i.j to i32                 ; 5 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !538
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !539  ; 2 uses
  %i.w = extractelement <4 x i32> %i.q, i64 0     ; 6 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !540
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.w, ptr %i.u, align 4, !tbaa !539
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i32 [ %i.w, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !541 ; 2 uses
  %i.ad = extractelement <4 x i32> %i.q, i64 1    ; 6 uses
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !540
  %.not20.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !541
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = phi i32 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !542 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %i.w
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !540
  %.not21.i.i = icmp eq i32 %i.am, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.w, ptr %i.ai, align 8, !tbaa !542
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.w, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !543 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.ad
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !540
  %.not22.i.i = icmp eq i32 %i.as, 0
  br i1 %.not22.i.i, label %bb.m, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.ad, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

end_hunk_4
begin_hunk_5_@_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff:bb.a
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.av, ptr %i.ai, align 8, !tbaa !542
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = phi i32 [ %i.an, %bb.q ], [ %i.av, %bb.r ]
  %i.bd = icmp sgt i32 %i.at, %i.ay
  br i1 %i.bd, label %bb.t, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i: ; preds = %bb.t, %bb.s
  %i.be = phi i32 [ %i.at, %bb.s ], [ %i.ay, %bb.t ]
  %i.bf = icmp slt i32 %i.ax, %i.r
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  store i32 %i.r, ptr %i.u, align 4, !tbaa !539
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  %i.bg = icmp slt i32 %i.ba, %i.s
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !541
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bh = icmp sgt i32 %i.bc, %i.r
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.r, ptr %i.ai, align 8, !tbaa !542
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = icmp sgt i32 %i.be, %i.s
  br i1 %i.bi, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.s, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i: ; preds = %bb.aa, %bb.z
  store i32 1, ptr %i.au, align 4, !tbaa !540
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !544
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !545
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !544 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [14 x i8], ptr %i.bk, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i8 4, ptr %i.bp, align 2, !tbaa !514
  %i.bq = trunc <4 x i32> %i.q to <4 x i16>
  store <4 x i16> %i.bq, ptr %i.bo, align 2, !tbaa !243
  %i.br = trunc i32 %i.r to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !517
  %i.bt = trunc i32 %i.s to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !518
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i, %bb.ab
  %i.bv = phi i32 [ %.pre, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i ], [ %i.bm, %bb.ab ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = add nsw i32 %i.bv, 1
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !544
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !536
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !497  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !506
  %.not.i17 = icmp slt i32 %1, %i.g
  br i1 %.not.i17, label %bb.c, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !508  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !499
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !498
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1, !tbaa !50
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1, !tbaa !50
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i19 = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1, !tbaa !50
  %i.ac = zext i8 %.val.i19 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i18 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i18
  br i1 %i.ap, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit

_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread: ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit: ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !427
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit, label %bb.h

bb.h:                                             ; preds = %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val393.i = load i8, ptr %i.as, align 1, !tbaa !50
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val394.i = load i8, ptr %i.at, align 1, !tbaa !50
  %i.au = zext i8 %.val393.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val394.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val371.i = load i8, ptr %i.bd, align 1, !tbaa !50
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val372.i = load i8, ptr %i.be, align 1, !tbaa !50
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val369.i = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val370.i = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bh = zext i8 %.val369.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 3 uses
  %i.bj = zext i8 %.val370.i to i32               ; 3 uses
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = or disjoint i32 %i.bb, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %narrow.i = mul nuw nsw i32 %i.bm, 14
  %i.bn = zext nneg i32 %narrow.i to i64
  %i.bo = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn), !inline_history !876 ; 17 uses
  %.not367.i = icmp eq ptr %i.bo, null
  br i1 %.not367.i, label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i8 %.val371.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = zext i8 %.val372.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = zext i16 %i.ba to i64                   ; 3 uses
  %i.bw = or disjoint i32 %i.bi, %i.bj
  %i.bx = add nuw nsw i32 %i.bw, 1
  %wide.trip.count71 = zext nneg i32 %i.bx to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv ; 3 uses
  %i.by = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %xtraiter = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.by, 0
  br i1 %i.cb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.ca, 131070
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.new
  %indvars.iv69 = phi i64 [ 0, %.new ], [ %indvars.iv.next70.1, %bb.s ] ; 3 uses
  %.0283.i42 = phi ptr [ %i.bu, %.new ], [ %.1284.i.1, %bb.s ] ; 4 uses
  %.0322.i40 = phi i8 [ 0, %.new ], [ %.1323.i.1, %bb.s ] ; 2 uses
  %.0324.i39 = phi i8 [ 0, %.new ], [ %.1325.i.1, %bb.s ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.cc = icmp eq i8 %.0322.i40, 0
  br i1 %i.cc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.0283.i42, align 1, !tbaa !50 ; 3 uses
  %i.cf = and i8 %i.ce, 8
  %.not366.i = icmp eq i8 %i.cf, 0
  br i1 %.not366.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 2
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !50
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ci = add i8 %.0322.i40, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1325.i = phi i8 [ %i.ce, %bb.m ], [ %i.ce, %bb.l ], [ %.0324.i39, %bb.n ] ; 2 uses
  %.1323.i = phi i8 [ %i.ch, %bb.m ], [ 0, %bb.l ], [ %i.ci, %bb.n ] ; 2 uses
  %.1284.i = phi ptr [ %i.cg, %bb.m ], [ %i.cd, %bb.l ], [ %.0283.i42, %bb.n ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1325.i, ptr %i.cj, align 2, !tbaa !514
  %i.ck = icmp eq i8 %.1323.i, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = add i8 %.1323.i, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.1284.i, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.1284.i, align 1, !tbaa !50 ; 3 uses
  %i.co = and i8 %i.cn, 8
  %.not366.i.1 = icmp eq i8 %i.co, 0
  br i1 %.not366.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.1284.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1325.i.1 = phi i8 [ %i.cn, %bb.r ], [ %i.cn, %bb.q ], [ %.1325.i, %bb.p ] ; 3 uses
  %.1323.i.1 = phi i8 [ %i.cq, %bb.r ], [ 0, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %.1284.i.1 = phi ptr [ %i.cp, %bb.r ], [ %i.cm, %bb.q ], [ %.1284.i, %bb.p ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 26
  store i8 %.1325.i.1, ptr %i.cs, align 2, !tbaa !514
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader31.preheader.unr-lcssa, label %bb.k, !llvm.loop !877

.preheader31.preheader.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader31.preheader.unr-lcssa, %bb.j
  %indvars.iv69.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next70.1, %.preheader31.preheader.unr-lcssa ]
  %.0283.i42.epil.init = phi ptr [ %i.bu, %bb.j ], [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ] ; 4 uses
  %.0322.i40.epil.init = phi i8 [ 0, %bb.j ], [ %.1323.i.1, %.preheader31.preheader.unr-lcssa ]
  %.0324.i39.epil.init = phi i8 [ 0, %bb.j ], [ %.1325.i.1, %.preheader31.preheader.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ct = icmp eq i8 %.0322.i40.epil.init, 0
  br i1 %i.ct, label %bb.t, label %.preheader31.preheader.epilog-lcssa

bb.t:                                             ; preds = %.epil.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 1
  %i.cv = load i8, ptr %.0283.i42.epil.init, align 1, !tbaa !50 ; 2 uses
  %i.cw = and i8 %i.cv, 8
  %.not366.i.epil = icmp eq i8 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 2
  %spec.select = select i1 %.not366.i.epil, ptr %i.cu, ptr %i.cx
  br label %.preheader31.preheader.epilog-lcssa

.preheader31.preheader.epilog-lcssa:              ; preds = %bb.t, %.epil.preheader
  %.1325.i.epil = phi i8 [ %.0324.i39.epil.init, %.epil.preheader ], [ %i.cv, %bb.t ]
  %.1284.i.epil = phi ptr [ %.0283.i42.epil.init, %.epil.preheader ], [ %spec.select, %bb.t ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69.epil.init
  %i.cy = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1325.i.epil, ptr %i.cy, align 2, !tbaa !514
  br label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.preheader.unr-lcssa, %.preheader31.preheader.epilog-lcssa
  %.1284.i.lcssa = phi ptr [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ], [ %.1284.i.epil, %.preheader31.preheader.epilog-lcssa ]
  %invariant.gep89 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %bb.x
  %indvars.iv73 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next74, %bb.x ] ; 2 uses
  %.2285.i45 = phi ptr [ %.1284.i.lcssa, %.preheader31.preheader ], [ %.3286.i, %bb.x ] ; 6 uses
  %.0306.i44 = phi i16 [ 0, %.preheader31.preheader ], [ %.1307.i, %bb.x ] ; 3 uses
  %gep90 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep89, i64 %indvars.iv73 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %gep90, i64 12
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !514
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = and i32 %i.db, 2
  %.not363.i = icmp eq i32 %i.dc, 0
  br i1 %.not363.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader31
  %i.dd = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.de = load i8, ptr %.2285.i45, align 1, !tbaa !50
  %i.df = and i32 %i.db, 16
  %.not365.i = icmp eq i32 %i.df, 0
  %i.dg = zext i8 %i.de to i16                    ; 2 uses
  %i.dh = sub nsw i16 0, %i.dg
  %i.di = select i1 %.not365.i, i16 %i.dh, i16 %i.dg
  %i.dj = add i16 %i.di, %.0306.i44
  br label %bb.x

bb.v:                                             ; preds = %.preheader31
  %i.dk = and i32 %i.db, 16
  %.not364.i = icmp eq i32 %i.dk, 0
  br i1 %.not364.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = load i8, ptr %.2285.i45, align 1, !tbaa !50
  %i.dm = zext i8 %i.dl to i16
  %i.dn = shl nuw i16 %i.dm, 8
  %i.do = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !50
  %i.dq = zext i8 %i.dp to i16
  %i.dr = or disjoint i16 %i.dn, %i.dq
  %i.ds = add i16 %i.dr, %.0306.i44
  %i.dt = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1307.i = phi i16 [ %i.dj, %bb.u ], [ %.0306.i44, %bb.v ], [ %i.ds, %bb.w ] ; 2 uses
  %.3286.i = phi ptr [ %i.dd, %bb.u ], [ %.2285.i45, %bb.v ], [ %i.dt, %bb.w ] ; 2 uses
  store i16 %.1307.i, ptr %gep90, align 2, !tbaa !519
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count71
  br i1 %exitcond76.not, label %.preheader30.preheader, label %.preheader31, !llvm.loop !878

.preheader30.preheader:                           ; preds = %bb.x
  %invariant.gep91 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader, %bb.ab
  %indvars.iv77 = phi i64 [ 0, %.preheader30.preheader ], [ %indvars.iv.next78, %bb.ab ] ; 2 uses
  %.4287.i48 = phi ptr [ %.3286.i, %.preheader30.preheader ], [ %.5.i, %bb.ab ] ; 6 uses
  %.0304.i47 = phi i16 [ 0, %.preheader30.preheader ], [ %.1305.i, %bb.ab ] ; 3 uses
  %gep92 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep91, i64 %indvars.iv77 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %gep92, i64 12
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !514
  %i.dw = zext i8 %i.dv to i32                    ; 3 uses
  %i.dx = and i32 %i.dw, 4
  %.not360.i = icmp eq i32 %i.dx, 0
  br i1 %.not360.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader30
  %i.dy = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.dz = load i8, ptr %.4287.i48, align 1, !tbaa !50
  %i.ea = and i32 %i.dw, 32
  %.not362.i = icmp eq i32 %i.ea, 0
  %i.eb = zext i8 %i.dz to i16                    ; 2 uses
  %i.ec = sub nsw i16 0, %i.eb
  %i.ed = select i1 %.not362.i, i16 %i.ec, i16 %i.eb
  %i.ee = add i16 %i.ed, %.0304.i47
  br label %bb.ab

bb.z:                                             ; preds = %.preheader30
  %i.ef = and i32 %i.dw, 32
  %.not361.i = icmp eq i32 %i.ef, 0
  br i1 %.not361.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = load i8, ptr %.4287.i48, align 1, !tbaa !50
  %i.eh = zext i8 %i.eg to i16
  %i.ei = shl nuw i16 %i.eh, 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !50
  %i.el = zext i8 %i.ek to i16
  %i.em = or disjoint i16 %i.ei, %i.el
  %i.en = add i16 %i.em, %.0304.i47
  %i.eo = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1305.i = phi i16 [ %i.ee, %bb.y ], [ %.0304.i47, %bb.z ], [ %i.en, %bb.aa ] ; 2 uses
  %.5.i = phi ptr [ %i.dy, %bb.y ], [ %.4287.i48, %bb.z ], [ %i.eo, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %gep92, i64 2
  store i16 %.1305.i, ptr %i.ep, align 2, !tbaa !520
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count71
  br i1 %exitcond80.not, label %.preheader, label %.preheader30, !llvm.loop !879

.preheader:                                       ; preds = %bb.ab, %bb.aw
  %.0288.i65 = phi i32 [ %.2290.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0291.i63 = phi i32 [ %.2293.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0294.i62 = phi i32 [ %.2296.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0297.i61 = phi i32 [ %.2299.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0300.i58 = phi i32 [ %.1301.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0302.i55 = phi i32 [ %.1303.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0308.i54 = phi i32 [ %.1309.i, %bb.aw ], [ 0, %bb.ab ] ; 4 uses
  %.0310.i53 = phi i32 [ %.1311.i, %bb.aw ], [ 0, %bb.ab ] ; 2 uses
  %.0312.i52 = phi i32 [ %.1313.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0314.i51 = phi i32 [ %.1315.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.3319.i50 = phi i32 [ %i.iz, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0329.i49 = phi i32 [ %.4333.i, %bb.aw ], [ 0, %bb.ab ] ; 12 uses
  %i.eq = add nsw i32 %.3319.i50, %i.bb
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.er ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !514 ; 2 uses
  %i.ev = load i16, ptr %i.es, align 2, !tbaa !519 ; 3 uses
  %i.ew = sext i16 %i.ev to i32                   ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !520 ; 3 uses
  %i.ez = sext i16 %i.ey to i32                   ; 7 uses
  %i.fa = icmp eq i32 %.0312.i52, %.3319.i50
  br i1 %i.fa, label %bb.ac, label %bb.ap

bb.ac:                                            ; preds = %.preheader
  %.not357.i = icmp eq i32 %.0312.i52, 0
  br i1 %.not357.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i10 = icmp eq i32 %.0308.i54, 0
  %.not27.i11 = icmp eq i32 %.0310.i53, 0         ; 2 uses
  br i1 %.not.i10, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not27.i11, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = add nsw i32 %.0329.i49, 1
  %i.fc = sext i32 %.0329.i49 to i64
  %i.fd = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.fc ; 5 uses
  %i.fe = add nsw i32 %.0291.i63, %.0302.i55
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = add nsw i32 %.0288.i65, %.0300.i58
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i8 3, ptr %i.fi, align 2, !tbaa !514
  %i.fj = trunc i32 %i.ff to i16
  store i16 %i.fj, ptr %i.fd, align 2, !tbaa !519
  %i.fk = trunc i32 %i.fh to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !520
  %i.fm = trunc nsw i32 %.0302.i55 to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !515
  %i.fo = trunc nsw i32 %.0300.i58 to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 6
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !516
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i12 = phi i32 [ %i.fb, %bb.af ], [ %.0329.i49, %bb.ae ] ; 2 uses
  %i.fq = sext i32 %.0.i12 to i64                 ; 2 uses
  %i.fr = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i8 3, ptr %i.fs, align 2, !tbaa !514
  %i.ft = trunc i32 %.0297.i61 to i16
  store i16 %i.ft, ptr %i.fr, align 2, !tbaa !519
  %i.fu = trunc i32 %.0294.i62 to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !520
  %i.fw = trunc nsw i32 %.0291.i63 to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !515
  %i.fy = trunc nsw i32 %.0288.i65 to i16
  br label %_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16

bb.ah:                                            ; preds = %bb.ad
  %i.fz = sext i32 %.0329.i49 to i64              ; 3 uses
  %i.ga = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.fz ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12 ; 2 uses
  %i.gc = trunc i32 %.0297.i61 to i16             ; 2 uses
  %i.gd = trunc i32 %.0294.i62 to i16             ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 2 ; 2 uses
  br i1 %.not27.i11, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 3, ptr %i.gb, align 2, !tbaa !514
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !519
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !520
  %i.gf = trunc nsw i32 %.0302.i55 to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !515
  %i.gh = trunc nsw i32 %.0300.i58 to i16
  br label %_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16

bb.aj:                                            ; preds = %bb.ah
  store i8 2, ptr %i.gb, align 2, !tbaa !514
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !519
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !520
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i16 0, ptr %i.gi, align 2, !tbaa !515
  br label %_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16

_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16: ; preds = %bb.ag, %bb.ai, %bb.aj
  %i.gj = phi i64 [ %i.fz, %bb.ai ], [ %i.fz, %bb.aj ], [ %i.fq, %bb.ag ]
  %.sink.i13 = phi i16 [ %i.gh, %bb.ai ], [ 0, %bb.aj ], [ %i.fy, %bb.ag ]
  %.1.in.i14 = phi i32 [ %.0329.i49, %bb.ai ], [ %.0329.i49, %bb.aj ], [ %.0.i12, %bb.ag ]
  %i.gk = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 6
  store i16 %.sink.i13, ptr %i.gl, align 2, !tbaa !516
  %.1.i15 = add nsw i32 %.1.in.i14, 1
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16, %bb.ac
  %.1330.i = phi i32 [ %.1.i15, %_ZL18stbtt__close_shapeP12stbtt_vertexiiiiiiiii.exit16 ], [ %.0329.i49, %bb.ac ] ; 2 uses
  %i.gm = and i8 %i.eu, 1                         ; 2 uses
  %.not358.i = icmp eq i8 %i.gm, 0
  %i.gn = xor i8 %i.gm, 1
  %i.go = zext nneg i8 %i.gn to i32
  br i1 %.not358.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.gp = getelementptr i8, ptr %i.es, i64 14
  %i.gq = getelementptr i8, ptr %i.es, i64 26
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !514
  %i.gs = and i8 %i.gr, 1
  %.not359.i = icmp eq i8 %i.gs, 0
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !519 ; 2 uses
  br i1 %.not359.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, %i.ew
  %i.gw = ashr i32 %i.gv, 1
  %i.gx = getelementptr i8, ptr %i.es, i64 16
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !520
  %i.gz = sext i16 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, %i.ez
  %i.hb = ashr i32 %i.ha, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hc = zext i16 %i.gt to i32
  %i.hd = getelementptr i8, ptr %i.es, i64 16
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !520
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nuw nsw i32 %.0312.i52, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak
  %.4320.i = phi i32 [ %i.hg, %bb.an ], [ %.0312.i52, %bb.am ], [ %.0312.i52, %bb.ak ]
  %.1298.i = phi i32 [ %i.hc, %bb.an ], [ %i.gw, %bb.am ], [ %i.ew, %bb.ak ] ; 2 uses
  %.1295.i = phi i32 [ %i.hf, %bb.an ], [ %i.hb, %bb.am ], [ %i.ez, %bb.ak ] ; 2 uses
  %.1292.i = phi i32 [ %i.ew, %bb.an ], [ %i.ew, %bb.am ], [ %.0291.i63, %bb.ak ]
  %.1289.i = phi i32 [ %i.ez, %bb.an ], [ %i.ez, %bb.am ], [ %.0288.i65, %bb.ak ]
  %i.hh = add nsw i32 %.1330.i, 1
  %i.hi = sext i32 %.1330.i to i64
  %i.hj = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.hi ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i8 1, ptr %i.hk, align 2, !tbaa !514
  %i.hl = trunc i32 %.1298.i to i16
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !519
  %i.hm = trunc i32 %.1295.i to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !520
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i16 0, ptr %i.ho, align 2, !tbaa !515
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 6
  store i16 0, ptr %i.hp, align 2, !tbaa !516
  %i.hq = shl nsw i32 %.0314.i51, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.az, i64 %i.hr ; 2 uses
  %.val.i = load i8, ptr %i.hs, align 1, !tbaa !50
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %.val368.i = load i8, ptr %i.ht, align 1, !tbaa !50
  %i.hu = zext i8 %.val.i to i32
  %i.hv = shl nuw nsw i32 %i.hu, 8
  %i.hw = zext i8 %.val368.i to i32
  %i.hx = or disjoint i32 %i.hv, %i.hw
  %i.hy = add nuw nsw i32 %i.hx, 1
  %i.hz = add nsw i32 %.0314.i51, 1
  br label %bb.aw

bb.ap:                                            ; preds = %.preheader
  %i.ia = and i8 %i.eu, 1
  %.not354.i = icmp eq i8 %i.ia, 0
  %.not355.i = icmp eq i32 %.0310.i53, 0          ; 2 uses
  br i1 %.not354.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not355.i, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = add nsw i32 %.0329.i49, 1
  %i.ic = sext i32 %.0329.i49 to i64
  %i.id = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.ic ; 5 uses
  %i.ie = add nsw i32 %.0302.i55, %i.ew
  %i.if = lshr i32 %i.ie, 1
  %i.ig = add nsw i32 %.0300.i58, %i.ez
  %i.ih = lshr i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i8 3, ptr %i.ii, align 2, !tbaa !514
  %i.ij = trunc i32 %i.if to i16
  store i16 %i.ij, ptr %i.id, align 2, !tbaa !519
  %i.ik = trunc i32 %i.ih to i16
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !520
  %i.im = trunc nsw i32 %.0302.i55 to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i16 %i.im, ptr %i.in, align 2, !tbaa !515
  %i.io = trunc nsw i32 %.0300.i58 to i16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !516
  br label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.iq = sext i32 %.0329.i49 to i64
  %i.ir = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.iq ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 2 ; 2 uses
  br i1 %.not355.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 3, ptr %i.is, align 2, !tbaa !514
  store i16 %i.ev, ptr %i.ir, align 2, !tbaa !519
  store i16 %i.ey, ptr %i.it, align 2, !tbaa !520
  %i.iu = trunc nsw i32 %.0302.i55 to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !515
  %i.iw = trunc nsw i32 %.0300.i58 to i16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  store i8 2, ptr %i.is, align 2, !tbaa !514
  store i16 %i.ev, ptr %i.ir, align 2, !tbaa !519
  store i16 %i.ey, ptr %i.it, align 2, !tbaa !520
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 0, ptr %i.ix, align 2, !tbaa !515
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink = phi i16 [ 0, %bb.au ], [ %i.iw, %bb.at ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 6
  store i16 %.sink, ptr %i.iy, align 2, !tbaa !516
  %.3332.i = add nsw i32 %.0329.i49, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar, %bb.aq, %bb.ao
  %.4333.i = phi i32 [ %i.hh, %bb.ao ], [ %.3332.i, %bb.av ], [ %i.ib, %bb.ar ], [ %.0329.i49, %bb.aq ] ; 7 uses
  %.5321.i = phi i32 [ %.4320.i, %bb.ao ], [ %.3319.i50, %bb.av ], [ %.3319.i50, %bb.ar ], [ %.3319.i50, %bb.aq ] ; 2 uses
  %.1315.i = phi i32 [ %i.hz, %bb.ao ], [ %.0314.i51, %bb.av ], [ %.0314.i51, %bb.ar ], [ %.0314.i51, %bb.aq ]
  %.1313.i = phi i32 [ %i.hy, %bb.ao ], [ %.0312.i52, %bb.av ], [ %.0312.i52, %bb.ar ], [ %.0312.i52, %bb.aq ]
  %.not27.i = phi i1 [ true, %bb.ao ], [ true, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ] ; 2 uses
  %.1311.i = phi i32 [ 0, %bb.ao ], [ 0, %bb.av ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %.1309.i = phi i32 [ %i.go, %bb.ao ], [ %.0308.i54, %bb.av ], [ %.0308.i54, %bb.ar ], [ %.0308.i54, %bb.aq ] ; 2 uses
  %.1303.i = phi i32 [ %.0302.i55, %bb.ao ], [ %.0302.i55, %bb.av ], [ %i.ew, %bb.ar ], [ %i.ew, %bb.aq ] ; 4 uses
  %.1301.i = phi i32 [ %.0300.i58, %bb.ao ], [ %.0300.i58, %bb.av ], [ %i.ez, %bb.ar ], [ %i.ez, %bb.aq ] ; 4 uses
  %.2299.i = phi i32 [ %.1298.i, %bb.ao ], [ %.0297.i61, %bb.av ], [ %.0297.i61, %bb.ar ], [ %.0297.i61, %bb.aq ] ; 3 uses
  %.2296.i = phi i32 [ %.1295.i, %bb.ao ], [ %.0294.i62, %bb.av ], [ %.0294.i62, %bb.ar ], [ %.0294.i62, %bb.aq ] ; 3 uses
  %.2293.i = phi i32 [ %.1292.i, %bb.ao ], [ %.0291.i63, %bb.av ], [ %.0291.i63, %bb.ar ], [ %.0291.i63, %bb.aq ] ; 3 uses
  %.2290.i = phi i32 [ %.1289.i, %bb.ao ], [ %.0288.i65, %bb.av ], [ %.0288.i65, %bb.ar ], [ %.0288.i65, %bb.aq ] ; 3 uses
  %i.iz = add nsw i32 %.5321.i, 1
  %.not353.i.not = icmp slt i32 %.5321.i, %i.bk
  br i1 %.not353.i.not, label %.preheader, label %bb.ax, !llvm.loop !880

bb.ax:                                            ; preds = %bb.aw
  %.not.i8 = icmp eq i32 %.1309.i, 0
  br i1 %.not.i8, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not27.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nsw i32 %.4333.i, 1
  %i.jb = sext i32 %.4333.i to i64
  %i.jc = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jb ; 5 uses
  %i.jd = add nsw i32 %.2293.i, %.1303.i
  %i.je = lshr i32 %i.jd, 1
  %i.jf = add nsw i32 %.2290.i, %.1301.i
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i8 3, ptr %i.jh, align 2, !tbaa !514
  %i.ji = trunc i32 %i.je to i16
  store i16 %i.ji, ptr %i.jc, align 2, !tbaa !519
  %i.jj = trunc i32 %i.jg to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !520
  %i.jl = trunc nsw i32 %.1303.i to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !515
  %i.jn = trunc nsw i32 %.1301.i to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 6
  store i16 %i.jn, ptr %i.jo, align 2, !tbaa !516
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i9 = phi i32 [ %i.ja, %bb.az ], [ %.4333.i, %bb.ay ] ; 2 uses
  %i.jp = sext i32 %.0.i9 to i64                  ; 2 uses
  %i.jq = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jp ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i8 3, ptr %i.jr, align 2, !tbaa !514
  %i.js = trunc i32 %.2299.i to i16
  store i16 %i.js, ptr %i.jq, align 2, !tbaa !519
  %i.jt = trunc i32 %.2296.i to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !520
  %i.jv = trunc nsw i32 %.2293.i to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !515
  %i.jx = trunc nsw i32 %.2290.i to i16
  br label %bb.be

bb.bb:                                            ; preds = %bb.ax
  %i.jy = sext i32 %.4333.i to i64                ; 3 uses
  %i.jz = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jy ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 12 ; 2 uses
  %i.kb = trunc i32 %.2299.i to i16               ; 2 uses
  %i.kc = trunc i32 %.2296.i to i16               ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 2 ; 2 uses
  br i1 %.not27.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 3, ptr %i.ka, align 2, !tbaa !514
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !519
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !520
  %i.ke = trunc nsw i32 %.1303.i to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !515
  %i.kg = trunc nsw i32 %.1301.i to i16
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i8 2, ptr %i.ka, align 2, !tbaa !514
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !519
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !520
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i16 0, ptr %i.kh, align 2, !tbaa !515
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.ki = phi i64 [ %i.jy, %bb.bc ], [ %i.jy, %bb.bd ], [ %i.jp, %bb.ba ]
  %.sink.i = phi i16 [ %i.kg, %bb.bc ], [ 0, %bb.bd ], [ %i.jx, %bb.ba ]
  %.1.in.i = phi i32 [ %.4333.i, %bb.bc ], [ %.4333.i, %bb.bd ], [ %.0.i9, %bb.ba ]
  %i.kj = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 6
  store i16 %.sink.i, ptr %i.kk, align 2, !tbaa !516
  %.1.i = add nsw i32 %.1.in.i, 1
  br label %.thread28

bb.bf:                                            ; preds = %bb.h
  %i.kl = icmp slt i16 %i.av, 0
  br i1 %i.kl, label %bb.bg, label %.thread28

bb.bg:                                            ; preds = %bb.bf
  %i.km = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bz
  %.0273.i38 = phi ptr [ %i.km, %bb.bg ], [ %.2275.i, %bb.bz ] ; 6 uses
  %.0278.i37 = phi ptr [ null, %bb.bg ], [ %.1279.i, %bb.bz ] ; 6 uses
  %.6.i36 = phi i32 [ 0, %bb.bg ], [ %.7.i, %bb.bz ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr null, ptr %i.a, align 8, !tbaa !427
  %i.kn = getelementptr i8, ptr %.0273.i38, i64 1
  %.0273.val392.i = load i8, ptr %i.kn, align 1, !tbaa !50 ; 2 uses
  %i.ko = zext i8 %.0273.val392.i to i32          ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 2
  %.val390.i = load i8, ptr %i.kp, align 1, !tbaa !50
  %i.kq = getelementptr i8, ptr %.0273.i38, i64 3
  %.val391.i = load i8, ptr %i.kq, align 1, !tbaa !50
  %i.kr = zext i8 %.val390.i to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  %i.kt = zext i8 %.val391.i to i32
  %i.ku = or disjoint i32 %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 4 ; 4 uses
  %i.kw = and i32 %i.ko, 2
  %.not342.i = icmp eq i32 %i.kw, 0
  br i1 %.not342.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = and i32 %i.ko, 1
  %.not343.i = icmp eq i32 %i.kx, 0
  br i1 %.not343.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ky = load i8, ptr %i.kv, align 1, !tbaa !50
  %i.kz = load <4 x i8>, ptr %i.kv, align 1, !tbaa !50 ; 2 uses
  %i.la = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <2 x i32> <i32 2, i32 poison>
  %i.lb = insertelement <2 x i8> %i.la, i8 %i.ky, i64 1
  %i.lc = zext <2 x i8> %i.lb to <2 x i16>
  %i.ld = shl nuw <2 x i16> %i.lc, splat (i16 8)
  %i.le = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <2 x i32> <i32 3, i32 1>
  %i.lf = zext <2 x i8> %i.le to <2 x i16>
  %i.lg = or disjoint <2 x i16> %i.ld, %i.lf
  %i.lh = sitofp <2 x i16> %i.lg to <2 x float>
  %i.li = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.lj = load <2 x i8>, ptr %i.kv, align 1, !tbaa !50
  %i.lk = shufflevector <2 x i8> %i.lj, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = sitofp <2 x i8> %i.lk to <2 x float>
  %i.lm = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1274.i = phi ptr [ %i.li, %bb.bj ], [ %i.lm, %bb.bk ], [ %i.kv, %bb.bh ] ; 11 uses
  %i.ln = phi <2 x float> [ %i.lh, %bb.bj ], [ %i.ll, %bb.bk ], [ zeroinitializer, %bb.bh ] ; 3 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lp = and i32 %i.ko, 8
  %.not344.i = icmp eq i32 %i.lp, 0
  br i1 %.not344.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.1274.val384.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %i.lq = getelementptr i8, ptr %.1274.i, i64 1
  %.1274.val385.i = load i8, ptr %i.lq, align 1, !tbaa !50
  %i.lr = zext i8 %.1274.val384.i to i16
  %i.ls = shl nuw i16 %i.lr, 8
  %i.lt = zext i8 %.1274.val385.i to i16
  %i.lu = or disjoint i16 %i.ls, %i.lt
  %i.lv = sitofp i16 %i.lu to float
  %i.lw = fmul nnan float %i.lv, f0x38800000      ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.ly = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.lw, i64 1
  %i.lz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lw, i64 0
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ma = and i32 %i.ko, 64
  %.not345.i = icmp eq i32 %i.ma, 0
  br i1 %.not345.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mb = getelementptr i8, ptr %.1274.i, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.md = getelementptr i8, ptr %.1274.i, i64 3
  %.1274.val382.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %.1274.val383.i = load i8, ptr %i.mb, align 1, !tbaa !50
  %i.me = zext i8 %.1274.val382.i to i16
  %i.mf = shl nuw i16 %i.me, 8
  %i.mg = zext i8 %.1274.val383.i to i16
  %i.mh = or disjoint i16 %i.mf, %i.mg
  %.val380.i = load i8, ptr %i.mc, align 1, !tbaa !50
  %.val381.i = load i8, ptr %i.md, align 1, !tbaa !50
  %i.mi = zext i8 %.val380.i to i16
  %i.mj = shl nuw i16 %i.mi, 8
  %i.mk = zext i8 %.val381.i to i16
  %i.ml = or disjoint i16 %i.mj, %i.mk
  %i.mm = insertelement <2 x i16> poison, i16 %i.mh, i64 0
  %i.mn = insertelement <2 x i16> %i.mm, i16 %i.ml, i64 1
  %i.mo = sitofp <2 x i16> %i.mn to <2 x float>
  %i.mp = fmul nnan <2 x float> %i.mo, splat (float f0x38800000) ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.1274.i, i64 4
  %i.mr = shufflevector <2 x float> %i.mp, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.ms = shufflevector <2 x float> %i.mp, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not346.i = icmp sgt i8 %.0273.val392.i, -1
  br i1 %.not346.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mt = load <8 x i8>, ptr %.1274.i, align 1, !tbaa !50 ; 4 uses
  %i.mu = shufflevector <8 x i8> %i.mt, <8 x i8> poison, <2 x i32> <i32 4, i32 0>
  %i.mv = zext <2 x i8> %i.mu to <2 x i16>
  %i.mw = shl nuw <2 x i16> %i.mv, splat (i16 8)
  %i.mx = shufflevector <8 x i8> %i.mt, <8 x i8> poison, <2 x i32> <i32 5, i32 1>
  %i.my = zext <2 x i8> %i.mx to <2 x i16>
  %i.mz = or disjoint <2 x i16> %i.mw, %i.my
  %i.na = sitofp <2 x i16> %i.mz to <2 x float>
  %i.nb = shufflevector <8 x i8> %i.mt, <8 x i8> poison, <2 x i32> <i32 6, i32 2>
  %i.nc = zext <2 x i8> %i.nb to <2 x i16>
  %i.nd = shl nuw <2 x i16> %i.nc, splat (i16 8)
  %i.ne = shufflevector <8 x i8> %i.mt, <8 x i8> poison, <2 x i32> <i32 7, i32 3>
  %i.nf = zext <2 x i8> %i.ne to <2 x i16>
  %i.ng = or disjoint <2 x i16> %i.nd, %i.nf
  %i.nh = sitofp <2 x i16> %i.ng to <2 x float>
  %i.ni = fmul nnan <2 x float> %i.na, splat (float f0x38800000)
  %i.nj = fmul nnan <2 x float> %i.nh, splat (float f0x38800000)
  %i.nk = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2275.i = phi ptr [ %i.lx, %bb.bm ], [ %i.mq, %bb.bo ], [ %i.nk, %bb.bq ], [ %.1274.i, %bb.bp ]
  %i.nl = phi <2 x float> [ %i.ly, %bb.bm ], [ %i.mr, %bb.bo ], [ %i.ni, %bb.bq ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bp ] ; 6 uses
  %i.nm = phi <2 x float> [ %i.lz, %bb.bm ], [ %i.ms, %bb.bo ], [ %i.nj, %bb.bq ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bp ] ; 6 uses
  %i.nn = fmul nnan <2 x float> %i.nm, %i.nm
  %i.no = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.nl, <2 x float> %i.nn)
  %i.np = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.no) ; 3 uses
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nr = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef %0, i32 noundef %i.ku, ptr noundef %i.a), !inline_history !876 ; 4 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %.preheader32, label %bb.bz

.preheader32:                                     ; preds = %bb.br
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !427 ; 13 uses
  %wide.trip.count = zext nneg i32 %i.nr to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.nr, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader32
  %i.nu = and i64 %wide.trip.count, 7             ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0
  %i.nw = select i1 %i.nv, i64 8, i64 %i.nu
  %n.vec = sub nsw i64 %wide.trip.count, %i.nw    ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.nl, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x float> %i.nl, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %i.nm, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat104 = shufflevector <2 x float> %i.nm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat106 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat108 = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.nx = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 5 uses
  %i.ny = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 14 ; 2 uses
  %i.oa = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 28 ; 2 uses
  %i.oc = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 42 ; 2 uses
  %i.oe = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 56 ; 2 uses
  %i.og = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 70 ; 2 uses
  %i.oi = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 84 ; 2 uses
  %i.ok = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %index ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 98 ; 2 uses
  %i.om = load i16, ptr %i.nx, align 2, !tbaa !519
  %i.on = load i16, ptr %i.nz, align 2, !tbaa !519
  %i.oo = load i16, ptr %i.ob, align 2, !tbaa !519
  %i.op = load i16, ptr %i.od, align 2, !tbaa !519
  %i.oq = load i16, ptr %i.of, align 2, !tbaa !519
  %i.or = load i16, ptr %i.oh, align 2, !tbaa !519
  %i.os = load i16, ptr %i.oj, align 2, !tbaa !519
  %i.ot = load i16, ptr %i.ol, align 2, !tbaa !519
  %i.ou = insertelement <8 x i16> poison, i16 %i.om, i64 0
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 1
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 2
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 3
  %i.oy = insertelement <8 x i16> %i.ox, i16 %i.oq, i64 4
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 5
  %i.pa = insertelement <8 x i16> %i.oz, i16 %i.os, i64 6
  %i.pb = insertelement <8 x i16> %i.pa, i16 %i.ot, i64 7
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nx, i64 2
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oa, i64 30
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oc, i64 44
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oe, i64 58 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 72 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oi, i64 86 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ok, i64 100 ; 2 uses
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !520
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !520
  %i.pm = load i16, ptr %i.pe, align 2, !tbaa !520
  %i.pn = load i16, ptr %i.pf, align 2, !tbaa !520
  %i.po = load i16, ptr %i.pg, align 2, !tbaa !520
  %i.pp = load i16, ptr %i.ph, align 2, !tbaa !520
  %i.pq = load i16, ptr %i.pi, align 2, !tbaa !520
  %i.pr = load i16, ptr %i.pj, align 2, !tbaa !520
  %i.ps = insertelement <8 x i16> poison, i16 %i.pk, i64 0
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 1
  %i.pu = insertelement <8 x i16> %i.pt, i16 %i.pm, i64 2
  %i.pv = insertelement <8 x i16> %i.pu, i16 %i.pn, i64 3
  %i.pw = insertelement <8 x i16> %i.pv, i16 %i.po, i64 4
  %i.px = insertelement <8 x i16> %i.pw, i16 %i.pp, i64 5
  %i.py = insertelement <8 x i16> %i.px, i16 %i.pq, i64 6
  %i.pz = insertelement <8 x i16> %i.py, i16 %i.pr, i64 7
  %i.qa = sitofp <8 x i16> %i.pb to <8 x float>   ; 2 uses
  %i.qb = sitofp <8 x i16> %i.pz to <8 x float>   ; 2 uses
  %i.qc = fmul nnan <8 x float> %broadcast.splat, %i.qb
  %i.qd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.qa, <8 x float> %i.qc)
  %i.qe = fadd <8 x float> %broadcast.splat98, %i.qd
  %i.qf = fmul <8 x float> %broadcast.splat100, %i.qe
  %i.qg = fptosi <8 x float> %i.qf to <8 x i16>   ; 8 uses
  %i.qh = extractelement <8 x i16> %i.qg, i64 4
  store i16 %i.qh, ptr %i.of, align 2, !tbaa !519
  %i.qi = extractelement <8 x i16> %i.qg, i64 5
  store i16 %i.qi, ptr %i.oh, align 2, !tbaa !519
  %i.qj = extractelement <8 x i16> %i.qg, i64 6
  store i16 %i.qj, ptr %i.oj, align 2, !tbaa !519
  %i.qk = extractelement <8 x i16> %i.qg, i64 7
  store i16 %i.qk, ptr %i.ol, align 2, !tbaa !519
  %i.ql = fmul nnan <8 x float> %broadcast.splat102, %i.qb
  %i.qm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.qa, <8 x float> %i.ql)
  %i.qn = fadd <8 x float> %broadcast.splat106, %i.qm
  %i.qo = fmul <8 x float> %broadcast.splat108, %i.qn
  %i.qp = fptosi <8 x float> %i.qo to <8 x i16>   ; 8 uses
  %i.qq = extractelement <8 x i16> %i.qp, i64 4
  store i16 %i.qq, ptr %i.pg, align 2, !tbaa !520
  %i.qr = extractelement <8 x i16> %i.qp, i64 5
  store i16 %i.qr, ptr %i.ph, align 2, !tbaa !520
  %i.qs = extractelement <8 x i16> %i.qp, i64 6
  store i16 %i.qs, ptr %i.pi, align 2, !tbaa !520
  %i.qt = extractelement <8 x i16> %i.qp, i64 7
  store i16 %i.qt, ptr %i.pj, align 2, !tbaa !520
  %i.qu = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ny, i64 18
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oc, i64 46
  %i.qy = getelementptr inbounds nuw i8, ptr %i.oe, i64 60 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.og, i64 74 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.oi, i64 88 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ok, i64 102 ; 2 uses
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !515
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !515
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !515
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !515
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !515
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !515
  %i.ri = load i16, ptr %i.ra, align 2, !tbaa !515
  %i.rj = load i16, ptr %i.rb, align 2, !tbaa !515
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7
  %i.rs = getelementptr inbounds nuw i8, ptr %i.nx, i64 6
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ny, i64 20
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oa, i64 34
  %i.rv = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.rw = getelementptr inbounds nuw i8, ptr %i.oe, i64 62 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.og, i64 76 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.oi, i64 90 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ok, i64 104 ; 2 uses
  %i.sa = load i16, ptr %i.rs, align 2, !tbaa !516
  %i.sb = load i16, ptr %i.rt, align 2, !tbaa !516
  %i.sc = load i16, ptr %i.ru, align 2, !tbaa !516
  %i.sd = load i16, ptr %i.rv, align 2, !tbaa !516
  %i.se = load i16, ptr %i.rw, align 2, !tbaa !516
  %i.sf = load i16, ptr %i.rx, align 2, !tbaa !516
  %i.sg = load i16, ptr %i.ry, align 2, !tbaa !516
  %i.sh = load i16, ptr %i.rz, align 2, !tbaa !516
  %i.si = insertelement <8 x i16> poison, i16 %i.sa, i64 0
  %i.sj = insertelement <8 x i16> %i.si, i16 %i.sb, i64 1
  %i.sk = insertelement <8 x i16> %i.sj, i16 %i.sc, i64 2
  %i.sl = insertelement <8 x i16> %i.sk, i16 %i.sd, i64 3
  %i.sm = insertelement <8 x i16> %i.sl, i16 %i.se, i64 4
  %i.sn = insertelement <8 x i16> %i.sm, i16 %i.sf, i64 5
  %i.so = insertelement <8 x i16> %i.sn, i16 %i.sg, i64 6
  %i.sp = insertelement <8 x i16> %i.so, i16 %i.sh, i64 7
  %i.sq = sitofp <8 x i16> %i.rr to <8 x float>   ; 2 uses
  %i.sr = sitofp <8 x i16> %i.sp to <8 x float>   ; 2 uses
  %i.ss = fmul nnan <8 x float> %broadcast.splat, %i.sr
  %i.st = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.sq, <8 x float> %i.ss)
  %i.su = fadd <8 x float> %broadcast.splat98, %i.st
  %i.sv = fmul <8 x float> %broadcast.splat100, %i.su
  %i.sw = fptosi <8 x float> %i.sv to <8 x i16>   ; 8 uses
  %i.sx = extractelement <8 x i16> %i.sw, i64 4
  store i16 %i.sx, ptr %i.qy, align 2, !tbaa !515
  %i.sy = extractelement <8 x i16> %i.sw, i64 5
  store i16 %i.sy, ptr %i.qz, align 2, !tbaa !515
  %i.sz = extractelement <8 x i16> %i.sw, i64 6
  store i16 %i.sz, ptr %i.ra, align 2, !tbaa !515
  %i.ta = extractelement <8 x i16> %i.sw, i64 7
  store i16 %i.ta, ptr %i.rb, align 2, !tbaa !515
  %i.tb = fmul nnan <8 x float> %broadcast.splat102, %i.sr
  %i.tc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.sq, <8 x float> %i.tb)
  %i.td = fadd <8 x float> %broadcast.splat106, %i.tc
  %i.te = fmul <8 x float> %broadcast.splat108, %i.td
  %i.tf = fptosi <8 x float> %i.te to <8 x i16>   ; 8 uses
  %i.tg = shufflevector <8 x i16> %i.qg, <8 x i16> %i.qp, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.th = shufflevector <8 x i16> %i.sw, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x i16> %i.tg, <4 x i16> %i.th, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.tj = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tk = shufflevector <4 x i16> %i.ti, <4 x i16> %i.tj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.tk, ptr %i.nx, align 2, !tbaa !243
  %i.tl = shufflevector <8 x i16> %i.qg, <8 x i16> %i.qp, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.tm = shufflevector <8 x i16> %i.sw, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tn = shufflevector <4 x i16> %i.tl, <4 x i16> %i.tm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.to = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tp = shufflevector <4 x i16> %i.tn, <4 x i16> %i.to, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.tp, ptr %i.nz, align 2, !tbaa !243
  %i.tq = shufflevector <8 x i16> %i.qg, <8 x i16> %i.qp, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.tr = shufflevector <8 x i16> %i.sw, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ts = shufflevector <4 x i16> %i.tq, <4 x i16> %i.tr, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.tt = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.tu = shufflevector <4 x i16> %i.ts, <4 x i16> %i.tt, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.tu, ptr %i.ob, align 2, !tbaa !243
  %i.tv = shufflevector <8 x i16> %i.qg, <8 x i16> %i.qp, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.tw = shufflevector <8 x i16> %i.sw, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.tx = shufflevector <4 x i16> %i.tv, <4 x i16> %i.tw, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ty = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.tz = shufflevector <4 x i16> %i.tx, <4 x i16> %i.ty, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.tz, ptr %i.od, align 2, !tbaa !243
  %i.ua = extractelement <8 x i16> %i.tf, i64 4
  store i16 %i.ua, ptr %i.rw, align 2, !tbaa !516
  %i.ub = extractelement <8 x i16> %i.tf, i64 5
  store i16 %i.ub, ptr %i.rx, align 2, !tbaa !516
  %i.uc = extractelement <8 x i16> %i.tf, i64 6
  store i16 %i.uc, ptr %i.ry, align 2, !tbaa !516
  %i.ud = extractelement <8 x i16> %i.tf, i64 7
  store i16 %i.ud, ptr %i.rz, align 2, !tbaa !516
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ue = icmp eq i64 %index.next, %n.vec
  br i1 %i.ue, label %scalar.ph.preheader, label %vector.body, !llvm.loop !881

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader32
  %indvars.iv.ph = phi i64 [ 0, %.preheader32 ], [ %n.vec, %vector.body ]
  %i.uf = shufflevector <2 x float> %i.nl, <2 x float> %i.nm, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ug = shufflevector <2 x float> %i.nl, <2 x float> %i.nm, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [14 x i8], ptr %i.nt, i64 %indvars.iv ; 2 uses
  %i.ui = load <4 x i16>, ptr %i.uh, align 2, !tbaa !243 ; 2 uses
  %i.uj = shufflevector <4 x i16> %i.ui, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.uk = sitofp <4 x i16> %i.uj to <4 x float>
  %i.ul = shufflevector <4 x i16> %i.ui, <4 x i16> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.um = sitofp <4 x i16> %i.ul to <4 x float>
  %i.un = fmul nnan <4 x float> %i.uf, %i.um
  %i.uo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ug, <4 x float> %i.uk, <4 x float> %i.un)
  %i.up = fadd <4 x float> %i.lo, %i.uo
  %i.uq = fmul <4 x float> %i.nq, %i.up
  %i.ur = fptosi <4 x float> %i.uq to <4 x i16>
  store <4 x i16> %i.ur, ptr %i.uh, align 2, !tbaa !243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bs, label %scalar.ph, !llvm.loop !882

bb.bs:                                            ; preds = %scalar.ph
  %i.us = add nuw nsw i32 %i.nr, %.6.i36          ; 2 uses
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = mul nuw nsw i64 %i.ut, 14
  %i.uv = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.uu), !inline_history !876 ; 5 uses
  %.not347.i = icmp eq ptr %i.uv, null
  br i1 %.not347.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not348.i = icmp eq ptr %.0278.i37, null
  br i1 %.not348.i, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i37), !inline_history !876
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bs
  %i.uw = icmp sgt i32 %.6.i36, 0
  %i.ux = icmp ne ptr %.0278.i37, null            ; 2 uses
  %or.cond.i = select i1 %i.uw, i1 %i.ux, i1 false
  %i.uy = zext nneg i32 %.6.i36 to i64            ; 3 uses
  br i1 %or.cond.i, label %.thread22, label %bb.bw

.thread22:                                        ; preds = %bb.bv
  %i.uz = mul nuw nsw i64 %i.uy, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.uv, ptr nonnull align 2 %.0278.i37, i64 %i.uz, i1 false)
  %i.va = getelementptr inbounds nuw [14 x i8], ptr %i.uv, i64 %i.uy
  %i.vb = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.va, ptr nonnull align 2 %i.nt, i64 %i.vb, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.vc = getelementptr inbounds nuw [14 x i8], ptr %i.uv, i64 %i.uy
  %i.vd = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vc, ptr nonnull align 2 %i.nt, i64 %i.vd, i1 false)
  br i1 %i.ux, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread22, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i37), !inline_history !876
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.nt), !inline_history !876
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by
  %.7.i = phi i32 [ %i.us, %bb.by ], [ %.6.i36, %bb.br ] ; 2 uses
  %.1279.i = phi ptr [ %i.uv, %bb.by ], [ %.0278.i37, %bb.br ] ; 2 uses
  %i.ve = and i32 %i.ko, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.not.i = icmp eq i32 %i.ve, 0
  br i1 %.not.i, label %.thread28, label %bb.bh, !llvm.loop !883

bb.ca:                                            ; preds = %bb.bu, %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.nt), !inline_history !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

.thread28:                                        ; preds = %bb.bz, %bb.be, %bb.bf
  %.10.i = phi i32 [ %.1.i, %bb.be ], [ 0, %bb.bf ], [ %.7.i, %bb.bz ]
  %.4282.i = phi ptr [ %i.bo, %bb.be ], [ null, %bb.bf ], [ %.1279.i, %bb.bz ]
  store ptr %.4282.i, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.vf = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %3)
  %.not.i7 = icmp eq i32 %i.vf, 0
  br i1 %.not.i7, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !544
  %i.vi = sext i32 %i.vh to i64
  %i.vj = mul nsw i64 %i.vi, 14
  %i.vk = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.vj) ; 2 uses
  store ptr %i.vk, ptr %2, align 8, !tbaa !427
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.vk, ptr %i.vl, align 8, !tbaa !545
  %i.vm = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4)
  %.not7.i = icmp eq i32 %i.vm, 0
  br i1 %.not7.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !544
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.cd, %bb.ce
  %.0.i = phi i32 [ %i.vo, %bb.cd ], [ 0, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.ca, %bb.i, %.thread28, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit
  %.0 = phi i32 [ %.0.i, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit ], [ 0, %bb.ca ], [ %.10.i, %.thread28 ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #34 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.ae, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  tail call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa)
  %i.ad = fadd <2 x float> %i.h, %i.i
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !548
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !522
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !258
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #34 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = insertelement <2 x float> %i.g, float %5, i64 1
  %i.i = insertelement <2 x float> poison, float %5, i64 0
  %i.j = insertelement <2 x float> %i.i, float %7, i64 1
  %i.k = insertelement <2 x float> %i.e, float %4, i64 1
  %i.l = insertelement <2 x float> %i.a, float %6, i64 1
  %i.m = insertelement <2 x float> poison, float %8, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x float> poison, float %9, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr106115 = phi i32 [ %i.bi, %tailrecurse ], [ %11, %.lr.ph.preheader ]
  %.tr102114 = phi float [ %i.ba, %tailrecurse ], [ %7, %.lr.ph.preheader ]
  %.tr101113 = phi float [ %i.bb, %tailrecurse ], [ %6, %.lr.ph.preheader ]
  %.tr98110 = phi float [ %i.bg, %tailrecurse ], [ %3, %.lr.ph.preheader ]
  %.tr97109 = phi float [ %i.bh, %tailrecurse ], [ %2, %.lr.ph.preheader ]
  %i.q = phi <2 x float> [ %i.bn, %tailrecurse ], [ %i.l, %.lr.ph.preheader ]
  %i.r = phi <2 x float> [ %i.bo, %tailrecurse ], [ %i.k, %.lr.ph.preheader ]
  %i.s = phi <2 x float> [ %i.bp, %tailrecurse ], [ %i.j, %.lr.ph.preheader ]
  %i.t = phi <2 x float> [ %i.br, %tailrecurse ], [ %i.h, %.lr.ph.preheader ]
  %i.u = phi <2 x float> [ %i.bf, %tailrecurse ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.v = phi <2 x float> [ %i.bd, %tailrecurse ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.w = phi <2 x float> [ %i.az, %tailrecurse ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %i.x = shufflevector <2 x float> %i.u, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.y = fsub <2 x float> %i.n, %i.x              ; 2 uses
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.aa = fsub <2 x float> %i.p, %i.z             ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.ab)
  %i.ad = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = fsub <2 x float> %i.q, %i.r             ; 2 uses
  %i.af = fsub <2 x float> %i.s, %i.t             ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.af
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ae, <2 x float> %i.ag)
  %i.ai = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ah) ; 2 uses
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ai, %shift
  %shift117 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fadd <2 x float> %shift117, %foldExtExtBinop
  %i.aj = extractelement <2 x float> %foldExtExtBinop118, i64 0 ; 2 uses
  %i.ak = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.al = fneg float %i.ak
  %i.am = fmul float %i.ak, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.am)
  %i.ao = fcmp ogt float %i.an, %10
  br i1 %i.ao, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.ap = fadd <2 x float> %i.u, %i.v
  %i.aq = fadd <2 x float> %i.v, %i.w
  %i.ar = fadd float %8, %.tr101113
  %i.as = fadd float %9, %.tr102114
  %i.at = fmul <2 x float> %i.ap, splat (float 5.000000e-01) ; 3 uses
  %i.au = fmul <2 x float> %i.aq, splat (float 5.000000e-01) ; 2 uses
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = fmul <2 x float> %i.av, splat (float 5.000000e-01) ; 3 uses
  %i.ax = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.as, i64 1
  %i.az = fmul <2 x float> %i.ay, splat (float 5.000000e-01) ; 6 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1
  %i.bb = extractelement <2 x float> %i.az, i64 0
  %i.bc = fadd <2 x float> %i.au, %i.az
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01) ; 6 uses
  %i.be = fadd <2 x float> %i.aw, %i.bd
  %i.bf = fmul <2 x float> %i.be, splat (float 5.000000e-01) ; 5 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bi = add i32 %.tr106115, 1                   ; 3 uses
  %i.bj = extractelement <2 x float> %i.aw, i64 0
  %i.bk = extractelement <2 x float> %i.aw, i64 1
  %i.bl = extractelement <2 x float> %i.at, i64 0
  %i.bm = extractelement <2 x float> %i.at, i64 1
  tail call fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr noundef %0, ptr noundef %1, float noundef %.tr97109, float noundef %.tr98110, float noundef %i.bl, float noundef %i.bm, float noundef %i.bj, float noundef %i.bk, float noundef %i.bh, float noundef %i.bg, float noundef %10, i32 noundef %i.bi)
  %exitcond = icmp eq i32 %i.bi, %smax
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> %i.bd, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.bs = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  store float %8, ptr %i.bu, align 4, !tbaa !548
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store float %9, ptr %i.bv, align 4, !tbaa !522
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.bw = add nsw i32 %i.bs, 1
  store i32 %i.bw, ptr %1, align 4, !tbaa !258
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #34 {
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
  %i.d = load float, ptr %i.c, align 4, !tbaa !524 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !524 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !524 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !524 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !524
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader, !llvm.loop !884

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !524
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !885

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d, !llvm.loop !886

bb.i:                                             ; preds = %bb.g
  %i.ah = trunc nsw i64 %indvars.iv to i32
  %i.ai = sub nsw i32 %.06977, %i.ah              ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef %.078, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef %i.v, i32 noundef %i.ai)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.170 = phi i32 [ %i.ai, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.v, %bb.j ], [ %.078, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ak = icmp sgt i32 %.170, 12
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !887

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL38ImFontAtlasBuildSetupFontBakedFallbackP11ImFontBaked(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %1 = alloca %struct.ImFontGlyph, align 4        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !482  ; 3 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !259
  %i.h = sext i32 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.e
  %i.m = load i16, ptr %i.l, align 2, !tbaa !243  ; 2 uses
  switch i16 %i.m, label %bb.d [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
    i16 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr inbounds nuw [44 x i8], ptr %i.o, i64 %i.p
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, 134217728
  store i32 %i.t, ptr %i.r, align 4
  %i.u = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %i.d, ptr noundef null), !inline_history !490
  %i.v = load i32, ptr %i.r, align 4
  %i.w = and i32 %i.v, -134217729
  store i32 %i.w, ptr %i.r, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit:     ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ %i.q, %bb.d ]  ; 2 uses
  %i.x = icmp eq ptr %.0, null
  br i1 %i.x, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread, label %bb.l

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread: ; preds = %bb.c, %bb.a, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !259
  %i.aa = icmp ugt i32 %i.z, 32
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !243 ; 2 uses
  switch i16 %i.ae, label %bb.g [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21.thread
    i16 -1, label %bb.h
  ]

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.ag, align 4, !tbaa !465
  store i32 0, ptr %1, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !261
  %i.aj = zext i16 %i.ae to i64
  %i.ak = getelementptr inbounds nuw [44 x i8], ptr %i.ai, i64 %i.aj
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21

bb.h:                                             ; preds = %bb.f, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = or i32 %i.am, 134217728
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext 32, ptr noundef null), !inline_history !490
  %i.ap = load i32, ptr %i.al, align 4
  %i.aq = and i32 %i.ap, -134217729
  store i32 %i.aq, ptr %i.al, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21:   ; preds = %bb.g, %bb.h
  %.1.i18 = phi ptr [ %i.ao, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.as, align 4, !tbaa !465
  store i32 0, ptr %1, align 4
  %.not17 = icmp eq ptr %.1.i18, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i18, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !264
  br label %bb.k

bb.j:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21.thread, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit21
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !256
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float 4.000000e-01, float 5.000000e-01)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = phi float [ %i.au, %bb.i ], [ %i.az, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !264
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !364
  %i.be = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %.1 = phi ptr [ %i.be, %bb.k ], [ %.0, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !475
  %i.bh = ptrtoint ptr %.1 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 44
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !262
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !264
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bo, ptr %i.bp, align 8, !tbaa !466
  ret void
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18ImFontAtlasBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN12ImGuiStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZN12ImGuiStorageD2Ev.exit:                       ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !487  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx.i = shl nsw i64 %i.i, 3
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !376
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN12ImGuiStorageD2Ev.exit
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.k)
          to label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit unwind label %bb.e

end_hunk_5
begin_hunk_6_@llvm.sqrt.v2f32
!653 = distinct !{!653, !46, !294, !295}
!654 = distinct !{!654, !46, !295, !294}
!655 = distinct !{!655, !46}
!656 = distinct !{!656, !46, !294, !295}
!657 = distinct !{!657, !46}
!658 = distinct !{!658, !46, !295, !294}
!659 = !{!307, !125, i64 68}
!660 = !{!307, !125, i64 64}
!661 = !{!307, !125, i64 70}
!662 = !{!307, !125, i64 66}
!663 = !{!307, !125, i64 56}
!664 = !{!307, !125, i64 58}
!665 = !{!307, !125, i64 60}
!666 = !{!307, !125, i64 62}
!667 = distinct !{!667, !46}
!668 = !{!323, !25, i64 104}
!669 = !{!362, !28, i64 20}
!670 = !{ptr @_Z38ImFontAtlasGetFontLoaderForStbTruetypev}
!671 = !{!323, !43, i64 728}
!672 = !{!230, !28, i64 3208}
!673 = !{!230, !28, i64 3212}
!674 = !{!230, !28, i64 3216}
!675 = distinct !{!675, !46, !294, !295}
!676 = distinct !{!676, !112}
!677 = distinct !{!677, !46, !294}
!678 = distinct !{!678, !46, !294, !295}
!679 = distinct !{!679, !112}
!680 = distinct !{!680, !46, !294}
!681 = distinct !{!681, !46, !294, !295}
!682 = distinct !{!682, !112}
!683 = distinct !{!683, !46, !294}
!684 = distinct !{!684, !46, !294, !295}
!685 = distinct !{!685, !46, !294, !295}
!686 = distinct !{!686, !112}
!687 = distinct !{!687, !46, !294}
!688 = distinct !{!688, !46, !294, !295}
!689 = distinct !{!689, !112}
!690 = distinct !{!690, !46, !294}
!691 = distinct !{!691, !46, !294, !295}
!692 = distinct !{!692, !46, !294, !295}
!693 = distinct !{!693, !112}
!694 = distinct !{!694, !46, !294}
!695 = distinct !{!695, !46}
!696 = distinct !{!696, !46}
!697 = !{!342, !342, i64 0}
!698 = distinct !{!698, !46}
!699 = distinct !{!699, !46}
!700 = distinct !{!700, !46}
!701 = !{ptr @_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect, ptr @_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi}
!702 = distinct !{!702, !46}
!703 = distinct !{!703, !46}
!704 = distinct !{!704, !46}
!705 = distinct !{!705, !46}
!706 = distinct !{!706, !46}
!707 = distinct !{!707, !46}
!708 = !{!366, !366, i64 0}
!709 = !{ptr @_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas}
!710 = !{!374, !25, i64 176}
!711 = !{!374, !25, i64 180}
!712 = !{!374, !25, i64 96}
!713 = !{!207, !25, i64 48}
!714 = !{!323, !122, i64 83}
!715 = distinct !{!715, !46}
!716 = distinct !{!716, !46}
!717 = distinct !{!717, !46, !294, !295}
!718 = distinct !{!718, !46, !294, !295}
!719 = distinct !{!719, !112}
!720 = distinct !{!720, !46}
!721 = distinct !{!721, !46, !294}
!722 = distinct !{!722, i1 false, !"LVerDomain"}
!723 = distinct !{!723, !722}
!724 = distinct !{!724, !722}
!725 = distinct !{!725, !46, !294, !295}
!726 = distinct !{!726, !112}
!727 = distinct !{!727, !46}
!728 = distinct !{!728, !46, !294}
!729 = !{!723}
!730 = !{!724}
!731 = !{ptr @_ZN6ImFont13IsGlyphInFontEt}
!732 = distinct !{!732, !46}
!733 = !{!373, !25, i64 0}
!734 = !{!373, !25, i64 4}
!735 = !{!372, !25, i64 4}
!736 = distinct !{!736, !46}
!737 = !{!362, !25, i64 32}
!738 = !{!320, !25, i64 4}
!739 = distinct !{!739, !46}
!740 = !{!230, !122, i64 1}
!741 = distinct !{!741, !46}
!742 = distinct !{!742, !46}
!743 = distinct !{!743, !112}
!744 = !{!367, !25, i64 4}
!745 = !{!374, !366, i64 88}
!746 = !{!367, !25, i64 0}
!747 = !{!447, !25, i64 12}
!748 = !{!447, !25, i64 20}
!749 = !{!323, !25, i64 12}
!750 = !{!323, !25, i64 20}
!751 = !{!323, !25, i64 16}
!752 = !{!307, !25, i64 72}
!753 = distinct !{!753, !46}
!754 = distinct !{!754, !46}
!755 = !{!297, !25, i64 100}
!756 = !{!496, !25, i64 16}
!757 = !{!496, !25, i64 28}
!758 = !{!496, !25, i64 44}
!759 = !{!496, !25, i64 48}
!760 = !{!496, !25, i64 52}
!761 = !{!207, !28, i64 72}
!762 = distinct !{!762, !46, !294, !295}
!763 = distinct !{!763, !46, !295, !294}
!764 = distinct !{!764, !46}
!765 = distinct !{!765, !46, !294, !295}
!766 = distinct !{!766, !46, !295, !294}
!767 = distinct !{!767, !46}
!768 = distinct !{!768, !46}
!769 = distinct !{!769, !46}
!770 = distinct !{!770, !46}
!771 = distinct !{!771, !46}
!772 = distinct !{!772, !46}
!773 = distinct !{!773, !46}
!774 = distinct !{!774, !46}
!775 = distinct !{!775, !46}
!776 = distinct !{!776, !46}
!777 = distinct !{!777, !46}
!778 = distinct !{!778, !46}
!779 = distinct !{!779, !46}
!780 = distinct !{!780, !46}
!781 = distinct !{!781, !46}
!782 = distinct !{!782, !46}
!783 = distinct !{!783, !46}
!784 = distinct !{!784, !46}
!785 = distinct !{!785, !46}
!786 = distinct !{!786, !46}
!787 = distinct !{!787, !46}
!788 = distinct !{!788, !46}
!789 = distinct !{!789, !46}
!790 = distinct !{!790, !46}
!791 = distinct !{!791, !46}
!792 = distinct !{!792, !46}
!793 = !{!374, !70, i64 136}
!794 = !{!523, !25, i64 16}
!795 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !258}
!796 = !{!"p1 _ZTS18stbtt__active_edge", !34, i64 0}
!797 = !{!796, !796, i64 0}
!798 = !{!"_ZTS18stbtt__active_edge", !796, i64 0, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28}
!799 = !{!798, !28, i64 28}
!800 = !{!798, !796, i64 0}
!801 = !{!798, !28, i64 20}
!802 = !{!523, !28, i64 12}
!803 = !{!"p1 _ZTS18stbtt__hheap_chunk", !34, i64 0}
!804 = !{!"_ZTS18stbtt__hheap_chunk", !803, i64 0}
!805 = !{!804, !803, i64 0}
!806 = !{!523, !28, i64 8}
!807 = !{!523, !28, i64 0}
!808 = !{!798, !28, i64 12}
!809 = !{!798, !28, i64 16}
!810 = !{!798, !28, i64 8}
!811 = !{!798, !28, i64 24}
!812 = distinct !{!812, !46}
!813 = distinct !{!813, !46}
!814 = distinct !{!814, !46}
!815 = distinct !{!815, !46}
!816 = distinct !{!816, !46}
!817 = !{!362, !28, i64 72}
!818 = distinct !{!818, !46, !294, !295}
!819 = distinct !{!819, !46, !295, !294}
!820 = distinct !{!820, !112}
!821 = distinct !{!821, !46}
!822 = distinct !{!822, !112}
!823 = distinct !{!823, !46}
!824 = distinct !{!824, !112}
!825 = distinct !{!825, i1 false, !"LVerDomain"}
!826 = distinct !{!826, !825}
!827 = distinct !{!827, !825}
!828 = distinct !{!828, !46, !294, !295}
!829 = distinct !{!829, !46, !294}
!830 = distinct !{!830, i1 false, !"LVerDomain"}
!831 = distinct !{!831, !830}
!832 = distinct !{!832, !830}
!833 = distinct !{!833, !46, !294, !295}
!834 = distinct !{!834, !46, !294}
!835 = distinct !{!835, !46, !294, !295}
!836 = distinct !{!836, !46, !294, !295}
!837 = distinct !{!837, !46, !295, !294}
!838 = distinct !{!838, !46, !294, !295}
!839 = distinct !{!839, !46, !295, !294}
!840 = !{!826}
!841 = !{!827}
!842 = !{!831}
!843 = !{!832}
!844 = distinct !{ptr @_ZN11ImFontBaked19FindGlyphNoFallbackEt, null}
!845 = distinct !{null}
!846 = distinct !{!846, !46}
!847 = distinct !{!847, !46}
!848 = distinct !{!848, !46}
!849 = !{!263, !28, i64 12}
!850 = distinct !{!850, !46}
!851 = distinct !{!851, !46}
!852 = distinct !{!852, !46, !294, !295}
!853 = distinct !{!853, !46, !294, !295}
!854 = distinct !{!854, !46, !295, !294}
!855 = distinct !{!855, !46, !294, !295}
!856 = distinct !{!856, !46, !295, !294}
!857 = distinct !{!857, !46}
!858 = distinct !{!858, !46}
!859 = distinct !{!859, !46}
!860 = distinct !{!860, !46}
!861 = distinct !{!861, !46}
!862 = distinct !{!862, !46}
!863 = distinct !{!863, !46}
!864 = distinct !{!864, !46}
!865 = distinct !{!865, !46}
!866 = distinct !{!866, !46}
!867 = distinct !{!867, !46}
!868 = distinct !{!868, !46}
!869 = distinct !{!869, !46, !52}
!870 = distinct !{!870, !46, !52}
!871 = distinct !{!871, !46}
!872 = distinct !{!872, !46}
!873 = !{!496, !25, i64 156}
!874 = !{!537, !28, i64 8}
!875 = !{!537, !28, i64 12}
!876 = distinct !{null}
!877 = distinct !{!877, !46}
!878 = distinct !{!878, !46}
!879 = distinct !{!879, !46}
!880 = distinct !{!880, !46}
!881 = distinct !{!881, !46, !294, !295}
!882 = distinct !{!882, !46, !295, !294}
!883 = distinct !{!883, !46}
!884 = distinct !{!884, !46}
!885 = distinct !{!885, !46}
!886 = distinct !{!886, !46}
!887 = distinct !{!887, !46}
end_hunk_6
