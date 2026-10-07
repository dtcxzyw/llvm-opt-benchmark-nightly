Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN11ImFontAtlas29AddCustomRectFontGlyphForSizeEP6ImFontftiifRK6ImVec2:bb.a

_ZN11ImFontBaked9FindGlyphEt.exit:                ; preds = %_ZN11ImFontBaked13IsGlyphLoadedEt.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !261
  %i.at = zext i16 %i.aq to i64
  %i.au = getelementptr inbounds nuw [44 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !465 ; 2 uses
  %.not.i = icmp eq i32 %i.aw, -1
  br i1 %.not.i, label %_Z32ImFontAtlasBakedDiscardFontGlyphP11ImFontAtlasP6ImFontP11ImFontBakedP11ImFontGlyph.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit
  %i.ax = and i32 %i.aw, 524287                   ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !339 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !439
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 4 uses
  %i.be = shl i32 %i.bd, 12
  %i.bf = ashr exact i32 %i.be, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !331
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = and i32 %i.bd, -1073741825
  store i32 %i.bk, ptr %i.bc, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 144 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !424
  %i.bn = and i32 %i.bm, 1048575
  %i.bo = and i32 %i.bd, -2147483648
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = add i32 %i.bd, 1048576
  %i.br = and i32 %i.bq, 1072693248               ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %storemerge.v.i.i = select i1 %i.bs, i32 1048576, i32 %i.br
  %storemerge.i.i = or disjoint i32 %i.bp, %storemerge.v.i.i
  store i32 %storemerge.i.i, ptr %i.bc, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !444 ; 2 uses
  store i32 %i.ax, ptr %i.bl, align 8, !tbaa !424
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 156 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !385
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !385
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !442
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add nsw i32 %i.bu, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 6 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !443
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.bu, %i.ce
  %i.cg = mul nsw i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 160 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !459
  %i.cj = add nsw i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !459
  store i16 0, ptr %i.cc, align 2, !tbaa !443
  store i16 0, ptr %i.by, align 2, !tbaa !442
  store i32 -1, ptr %i.av, align 4, !tbaa !465
  br label %_Z32ImFontAtlasBakedDiscardFontGlyphP11ImFontAtlasP6ImFontP11ImFontBakedP11ImFontGlyph.exit

_Z32ImFontAtlasBakedDiscardFontGlyphP11ImFontAtlasP6ImFontP11ImFontBakedP11ImFontGlyph.exit: ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit, %bb.e
  %i.ck = load i32, ptr %i.au, align 4
  %i.cl = lshr i32 %i.ck, 6
  %i.cm = and i32 %i.cl, 65535
  %i.cn = load ptr, ptr %i.an, align 8, !tbaa !83
  %i.co = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.co
  store i16 -1, ptr %i.cp, align 2, !tbaa !243
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !466
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !467
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.co
  store float %i.cr, ptr %i.cu, align 4, !tbaa !29
  br label %_ZN11ImFontBaked13IsGlyphLoadedEt.exit.thread

_ZN11ImFontBaked13IsGlyphLoadedEt.exit.thread:    ; preds = %bb.d, %_Z32ImFontAtlasBakedDiscardFontGlyphP11ImFontAtlasP6ImFontP11ImFontBakedP11ImFontGlyph.exit, %_ZN11ImFontBaked13IsGlyphLoadedEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cx = zext i16 %3 to i32
  %i.cy = shl nuw nsw i32 %i.cx, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %6, ptr %i.cz, align 4, !tbaa !264
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load <2 x float>, ptr %7, align 4, !tbaa !29 ; 2 uses
  store <2 x float> %i.dd, ptr %i.da, align 4, !tbaa !29
  %i.de = load <2 x i16>, ptr %i.db, align 2, !tbaa !243
  %i.df = uitofp <2 x i16> %i.de to <2 x float>
  %i.dg = fadd <2 x float> %i.dd, %i.df
  store <2 x float> %i.dg, ptr %i.dc, align 4, !tbaa !29
  %i.dh = or disjoint i32 %i.cy, 3
  store i32 %i.dh, ptr %8, align 4
  store i32 %i.b, ptr %i.cw, align 4, !tbaa !465
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !359
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !381
  %i.dl = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.dk, ptr noundef nonnull %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN11ImFontBaked13IsGlyphLoadedEt.exit.thread
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %1, float noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %3 = alloca %struct.anon, align 4               ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !380    ; 4 uses
  %i.b = fadd float %1, 5.000000e-01
  %i.c = fptosi float %i.b to i32
  %i.d = sitofp i32 %i.c to float                 ; 4 uses
  %i.e = fcmp olt float %2, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load float, ptr %i.f, align 4
  %.0 = select i1 %i.e, float %i.g, float %2      ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !256
  %i.j = fcmp oeq float %i.i, %i.d
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load float, ptr %i.k, align 8, !tbaa !468
  %i.m = fcmp oeq float %i.l, %.0
  br i1 %i.m, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !364  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 688 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store i32 %i.s, ptr %3, align 4, !tbaa !470
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.d, ptr %i.t, align 4, !tbaa !471
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.0, ptr %i.u, align 4, !tbaa !472
  %i.v = call noundef i32 @_Z10ImHashDataPKvmj(ptr noundef nonnull %3, i64 noundef 12, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !339
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.y = call noundef ptr @_ZN12ImGuiStorage13GetVoidPtrRefEjPv(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.v, ptr noundef null) ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !377  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.e, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !363
  %i.ac = and i32 %i.ab, 8
  %.not28.i = icmp eq i32 %i.ac, 0
  br i1 %.not28.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !473, !range !351, !noundef !352
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = call noundef ptr @_Z31ImFontAtlasBakedGetClosestMatchP11ImFontAtlasP6ImFontff(ptr noundef nonnull %i.o, ptr noundef nonnull %0, float noundef %i.d, float noundef %.0) ; 2 uses
  %.not29.i = icmp eq ptr %i.ag, null
  br i1 %.not29.i, label %bb.h, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !473, !range !351, !noundef !352
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread25, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit

_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit: ; preds = %bb.f, %bb.h
  %i.ak = call noundef ptr @_Z19ImFontAtlasBakedAddP11ImFontAtlasP6ImFontffj(ptr noundef nonnull %i.o, ptr noundef nonnull %0, float noundef %i.d, float noundef %.0, i32 noundef %i.v) ; 3 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !377
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread25, label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread

_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread: ; preds = %bb.g, %bb.d, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit
  %.0.i24 = phi ptr [ %i.ak, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit ], [ %i.ag, %bb.g ], [ %i.z, %bb.d ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.an = load i32, ptr %i.am, align 4, !tbaa !379
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i24, i64 80
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !378
  store ptr %.0.i24, ptr %0, align 8, !tbaa !380
  br label %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread25

_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread25: ; preds = %bb.h, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit, %bb.c
  %.1 = phi ptr [ %i.a, %bb.c ], [ %.0.i24, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit.thread ], [ null, %_Z24ImFontAtlasBakedGetOrAddP11ImFontAtlasP6ImFontff.exit ], [ null, %bb.h ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i16 noundef zeroext %1) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !259
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ult i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.a
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243
  %switch = icmp ult i16 %i.i, -2
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %switch, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z32ImFontAtlasBakedDiscardFontGlyphP11ImFontAtlasP6ImFontP11ImFontBakedP11ImFontGlyph(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !465  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 524287                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 4 uses
  %i.k = shl i32 %i.j, 12
  %i.l = ashr exact i32 %i.k, 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !331
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = and i32 %i.j, -1073741825
  store i32 %i.q, ptr %i.i, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !424
  %i.t = and i32 %i.s, 1048575
  %i.u = and i32 %i.j, -2147483648
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = add i32 %i.j, 1048576
  %i.x = and i32 %i.w, 1072693248                 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %storemerge.v.i = select i1 %i.y, i32 1048576, i32 %i.x
  %storemerge.i = or disjoint i32 %i.v, %storemerge.v.i
  store i32 %storemerge.i, ptr %i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !444 ; 2 uses
  store i32 %i.c, ptr %i.r, align 8, !tbaa !424
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 156 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !385
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !385
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !442
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nsw i32 %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 6 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !443
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.aa, %i.ak
  %i.am = mul nsw i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !459
  %i.ap = add nsw i32 %i.am, %i.ao
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !459
  store i16 0, ptr %i.ai, align 2, !tbaa !443
  store i16 0, ptr %i.ae, align 2, !tbaa !442
  store i32 -1, ptr %i.a, align 4, !tbaa !465
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = load i32, ptr %3, align 4
  %i.ar = lshr i32 %i.aq, 6
  %i.as = and i32 %i.ar, 65535
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.av = zext nneg i32 %i.as to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  store i16 -1, ptr %i.aw, align 2, !tbaa !243
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !466
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !467
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  store float %i.ay, ptr %i.bb, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !259
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ult i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.a
  %i.i = load i16, ptr %i.h, align 2, !tbaa !243  ; 2 uses
  switch i16 %i.i, label %bb.d [
    i16 -2, label %bb.c
    i16 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !262
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [44 x i8], ptr %i.k, i64 %i.n
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !261
  %i.r = zext i16 %i.i to i64
  %i.s = getelementptr inbounds nuw [44 x i8], ptr %i.q, i64 %i.r
  br label %.thread

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef null) ; 2 uses
  %.not14 = icmp eq ptr %i.t, null
  br i1 %.not14, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !261
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !262
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [44 x i8], ptr %i.v, i64 %i.y
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %.1 = phi ptr [ %i.t, %bb.e ], [ %i.z, %bb.f ], [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !713  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !474
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN8ImVectorI11ImFontGlyphE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI11ImFontGlyphE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !475
  br label %_ZN8ImVectorI11ImFontGlyphE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i32 %i.b, 2
  %i.h = add nsw i32 %i.g, %i.b
  br label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i

_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.h, %bb.c ], [ 8, %bb.b ]
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.f) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 44
  %i.m = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !475  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i
  %i.p = load i32, ptr %i.a, align 8, !tbaa !476
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 44
end_hunk_0
begin_hunk_1_@_ZL33ImGui_ImplStbTrueType_FontSrcInitP11ImFontAtlasP12ImFontConfig:bb.a
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1: ; preds = %bb.ci, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i
  %i.lu = phi i32 [ %i.lo, %bb.ci ], [ %i.lm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %.0.i.i19.i.i.i.1 = phi i32 [ %i.lt, %bb.ci ], [ %i.ln, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i.i
  %.epil.init = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.lu, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %.0.i.i19.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.lv = shl i32 %.056.i16.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i17.i.i.i.epil = icmp slt i32 %.epil.init, %i.jt
  br i1 %.not.i.i17.i.i.i.epil, label %bb.cj, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.lw = add nsw i32 %.epil.init, 1
  %i.lx = sext i32 %.epil.init to i64
  %i.ly = getelementptr inbounds i8, ptr %i.lc, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !50
  %i.ma = zext i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.lv, %i.ma
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.cj, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa
  %.lcssa160.a = phi i32 [ %i.lu, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.lw, %bb.cj ], [ %.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.0.i.i19.i.i.i.lcssa = phi i32 [ %.0.i.i19.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.mb, %bb.cj ], [ %i.lv, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.mc = add i32 %.0.i.i19.i.i.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i:   ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.md = phi i32 [ %..i.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ], [ %.lcssa160.a, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i ]
  %.05.lcssa.i.i.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ], [ %i.mc, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i ]
  %i.me = add nsw i32 %.05.lcssa.i.i.i.i, %i.md   ; 2 uses
  %i.mf = icmp slt i32 %i.me, 0
  %i.mg = tail call i32 @llvm.smin.i32(i32 %i.me, i32 %i.jt)
  %..i.i22.i.i.i = select i1 %i.mf, i32 %i.jt, i32 %i.mg ; 2 uses
  store i32 %..i.i22.i.i.i, ptr %i.jp, align 8, !tbaa !503
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i:  ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i
  %i.mh = phi i32 [ %..i.i22.i.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i ], [ %i.kr, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i ] ; 7 uses
  %.not.i.i.i234.i.i = icmp slt i32 %i.mh, %i.jt
  br i1 %.not.i.i.i234.i.i, label %bb.ck, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i

bb.ck:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i
  %i.mi = load ptr, ptr %2, align 8, !tbaa !505
  %i.mj = add nsw i32 %i.mh, 1                    ; 2 uses
  store i32 %i.mj, ptr %i.jp, align 8, !tbaa !503
  %i.mk = sext i32 %i.mh to i64
  %i.ml = getelementptr inbounds i8, ptr %i.mi, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !50
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i: ; preds = %bb.ck, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i
  %i.mp = phi i32 [ %i.mj, %bb.ck ], [ %i.mh, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.i236.i.i = phi i32 [ %i.mo, %bb.ck ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i.1.i237.i.i = icmp slt i32 %i.mp, %i.jt
  br i1 %.not.i.i.1.i237.i.i, label %bb.cl, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i

bb.cl:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i
  %i.mq = load ptr, ptr %2, align 8, !tbaa !505
  %i.mr = add nsw i32 %i.mp, 1                    ; 2 uses
  store i32 %i.mr, ptr %i.jp, align 8, !tbaa !503
  %i.ms = sext i32 %i.mp to i64
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !50
  %i.mv = zext i8 %i.mu to i32
  %i.mw = or disjoint i32 %.0.i.i.i236.i.i, %i.mv
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i: ; preds = %bb.cl, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i
  %i.mx = phi i32 [ %i.mr, %bb.cl ], [ %i.mp, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i ] ; 5 uses
  %.0.i.i.1.i239.i.i = phi i32 [ %i.mw, %bb.cl ], [ %.0.i.i.i236.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i ] ; 2 uses
  %.not.i240.i.i = icmp eq i32 %.0.i.i.1.i239.i.i, 0
  br i1 %.not.i240.i.i, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i
  %.not.i.i241.i.i = icmp slt i32 %i.mx, %i.jt
  br i1 %.not.i.i241.i.i, label %bb.cn, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.my = load ptr, ptr %2, align 8, !tbaa !505
  %i.mz = add nsw i32 %i.mx, 1
  %i.na = sext i32 %i.mx to i64
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !50
  %i.nd = zext i8 %i.nc to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i:  ; preds = %bb.cn, %bb.cm
  %.promoted403.i.i = phi i32 [ %i.mz, %bb.cn ], [ %i.mx, %bb.cm ]
  %.0.i.i243.i.i = phi i32 [ %i.nd, %bb.cn ], [ 0, %bb.cm ] ; 6 uses
  %i.ne = mul nuw nsw i32 %.0.i.i243.i.i, %.0.i.i.1.i239.i.i
  %i.nf = add nsw i32 %i.ne, %.promoted403.i.i    ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 0
  %i.nh = tail call i32 @llvm.smin.i32(i32 %i.nf, i32 %i.jt)
  %..i.i.i244.i.i = select i1 %i.ng, i32 %i.jt, i32 %i.nh ; 3 uses
  %.not.i13.i245.i.i = icmp eq i32 %.0.i.i243.i.i, 0
  br i1 %.not.i13.i245.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i254.i.i, label %.lr.ph.i.i246.preheader.i.i

.lr.ph.i.i246.preheader.i.i:                      ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i
  %i.ni = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter173 = and i32 %.0.i.i243.i.i, 1
  %i.nj = icmp eq i32 %.0.i.i243.i.i, 1
  br i1 %i.nj, label %.lr.ph.i.i246.i.i.epil.preheader, label %.lr.ph.i.i246.preheader.i.i.new

.lr.ph.i.i246.preheader.i.i.new:                  ; preds = %.lr.ph.i.i246.preheader.i.i
  %unroll_iter180 = and i32 %.0.i.i243.i.i, 254
  br label %.lr.ph.i.i246.i.i

.lr.ph.i.i246.i.i:                                ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1, %.lr.ph.i.i246.preheader.i.i.new
  %i.nk = phi i32 [ %..i.i.i244.i.i, %.lr.ph.i.i246.preheader.i.i.new ], [ %i.oa, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1 ] ; 4 uses
  %.056.i16.i248.i.i = phi i32 [ 0, %.lr.ph.i.i246.preheader.i.i.new ], [ %.0.i.i19.i251.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1 ]
  %niter181 = phi i32 [ 0, %.lr.ph.i.i246.preheader.i.i.new ], [ %niter181.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1 ]
  %i.nl = shl i32 %.056.i16.i248.i.i, 8           ; 2 uses
  %.not.i.i17.i249.i.i = icmp slt i32 %i.nk, %i.jt
  br i1 %.not.i.i17.i249.i.i, label %bb.co, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i

bb.co:                                            ; preds = %.lr.ph.i.i246.i.i
  %i.nm = add nsw i32 %i.nk, 1
  %i.nn = sext i32 %i.nk to i64
  %i.no = getelementptr inbounds i8, ptr %i.ni, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !50
  %i.nq = zext i8 %i.np to i32
  %i.nr = or disjoint i32 %i.nl, %i.nq
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i: ; preds = %bb.co, %.lr.ph.i.i246.i.i
  %i.ns = phi i32 [ %i.nm, %bb.co ], [ %i.nk, %.lr.ph.i.i246.i.i ] ; 4 uses
  %.0.i.i19.i251.i.i = phi i32 [ %i.nr, %bb.co ], [ %i.nl, %.lr.ph.i.i246.i.i ]
  %i.nt = shl i32 %.0.i.i19.i251.i.i, 8           ; 2 uses
  %.not.i.i17.i249.i.i.1 = icmp slt i32 %i.ns, %i.jt
  br i1 %.not.i.i17.i249.i.i.1, label %bb.cp, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1

bb.cp:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i
  %i.nu = add nsw i32 %i.ns, 1
  %i.nv = sext i32 %i.ns to i64
  %i.nw = getelementptr inbounds i8, ptr %i.ni, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !50
  %i.ny = zext i8 %i.nx to i32
  %i.nz = or disjoint i32 %i.nt, %i.ny
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1: ; preds = %bb.cp, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i
  %i.oa = phi i32 [ %i.nu, %bb.cp ], [ %i.ns, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i ] ; 3 uses
  %.0.i.i19.i251.i.i.1 = phi i32 [ %i.nz, %bb.cp ], [ %i.nt, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i ] ; 3 uses
  %niter181.next.1 = add nuw nsw i32 %niter181, 2 ; 2 uses
  %niter181.ncmp.1 = icmp eq i32 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa, label %.lr.ph.i.i246.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i250.i.i.1
  %lcmp.mod176.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod176.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i, label %.lr.ph.i.i246.i.i.epil.preheader

.lr.ph.i.i246.i.i.epil.preheader:                 ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa, %.lr.ph.i.i246.preheader.i.i
  %.epil.init175 = phi i32 [ %..i.i.i244.i.i, %.lr.ph.i.i246.preheader.i.i ], [ %i.oa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i248.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i246.preheader.i.i ], [ %.0.i.i19.i251.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %.0.i.i243.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.ob = shl i32 %.056.i16.i248.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i249.i.i.epil = icmp slt i32 %.epil.init175, %i.jt
  br i1 %.not.i.i17.i249.i.i.epil, label %bb.cq, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i

bb.cq:                                            ; preds = %.lr.ph.i.i246.i.i.epil.preheader
  %i.oc = add nsw i32 %.epil.init175, 1
  %i.od = sext i32 %.epil.init175 to i64
  %i.oe = getelementptr inbounds i8, ptr %i.ni, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !50
  %i.og = zext i8 %i.of to i32
  %i.oh = or disjoint i32 %i.ob, %i.og
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i: ; preds = %.lr.ph.i.i246.i.i.epil.preheader, %bb.cq, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa
  %.lcssa159.a = phi i32 [ %i.oa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa ], [ %i.oc, %bb.cq ], [ %.epil.init175, %.lr.ph.i.i246.i.i.epil.preheader ]
  %.0.i.i19.i251.i.i.lcssa = phi i32 [ %.0.i.i19.i251.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i.unr-lcssa ], [ %i.oh, %bb.cq ], [ %i.ob, %.lr.ph.i.i246.i.i.epil.preheader ]
  %i.oi = add i32 %.0.i.i19.i251.i.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i254.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i254.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i
  %i.oj = phi i32 [ %..i.i.i244.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i ], [ %.lcssa159.a, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i ]
  %.05.lcssa.i.i255.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i242.i.i ], [ %i.oi, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i253.i.i ]
  %i.ok = add nsw i32 %.05.lcssa.i.i255.i.i, %i.oj ; 2 uses
  %i.ol = icmp slt i32 %i.ok, 0
  %i.om = tail call i32 @llvm.smin.i32(i32 %i.ok, i32 %i.jt)
  %..i.i22.i256.i.i = select i1 %i.ol, i32 %i.jt, i32 %i.om ; 2 uses
  store i32 %..i.i22.i256.i.i, ptr %i.jp, align 8, !tbaa !503
  br label %bb.cr

bb.cr:                                            ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i254.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i
  %i.on = phi i32 [ %..i.i22.i256.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i254.i.i ], [ %i.mx, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i238.i.i ] ; 6 uses
  %i.oo = sub nsw i32 %i.on, %i.mh                ; 14 uses
  %i.op = or i32 %i.oo, %i.mh
  %or.cond.not.i.i257.i.i = icmp slt i32 %i.op, 0
  %i.oq = icmp sgt i32 %i.on, %i.jt
  %or.cond.i258.i.i = or i1 %i.oq, %or.cond.not.i.i257.i.i
  br i1 %or.cond.i258.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i: ; preds = %bb.cr
  %i.or = load ptr, ptr %2, align 8, !tbaa !505
  %i.os = zext nneg i32 %i.mh to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.os ; 16 uses
  %.not.i.i.i264.not.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not.i.i.i264.not.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a: ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !50
  %i.ov = zext i8 %i.ou to i32
  %i.ow = shl nuw nsw i32 %i.ov, 8                ; 2 uses
  %.not.i.i.1.i267.not.i.i = icmp eq i32 %i.oo, 1
  br i1 %.not.i.i.1.i267.not.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !50
  %i.oz = zext i8 %i.oy to i32
  %i.pa = or disjoint i32 %i.ow, %i.oz            ; 5 uses
  %.not.i.i270.i.i = icmp samesign ugt i32 %i.oo, 2
  br i1 %.not.i.i270.i.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i:  ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !50  ; 4 uses
  %i.pd = zext i8 %i.pc to i32                    ; 8 uses
  %.not.i9.i.i.i = icmp eq i8 %i.pc, 0
  br i1 %.not.i9.i.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i, label %.lr.ph.i.i278.i.i.preheader

.lr.ph.i.i278.i.i.preheader:                      ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i
  %i.pe = add nsw i32 %i.pd, -1                   ; 2 uses
  %xtraiter182 = and i32 %i.pd, 1
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %.lr.ph.i.i278.i.i.epil.preheader, label %.lr.ph.i.i278.i.i.preheader.new

.lr.ph.i.i278.i.i.preheader.new:                  ; preds = %.lr.ph.i.i278.i.i.preheader
  %unroll_iter189 = and i32 %i.pd, 254
  br label %.lr.ph.i.i278.i.i

.lr.ph.i.i278.i.i:                                ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1, %.lr.ph.i.i278.i.i.preheader.new
  %.sroa.6.3.i.i.i = phi i32 [ 3, %.lr.ph.i.i278.i.i.preheader.new ], [ %.sroa.6.4.i.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1 ]
  %i.pg = phi i32 [ 3, %.lr.ph.i.i278.i.i.preheader.new ], [ %i.pw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1 ] ; 4 uses
  %.056.i12.i.i.i = phi i32 [ 0, %.lr.ph.i.i278.i.i.preheader.new ], [ %.0.i.i15.i.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1 ]
  %niter190 = phi i32 [ 0, %.lr.ph.i.i278.i.i.preheader.new ], [ %niter190.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1 ]
  %i.ph = shl i32 %.056.i12.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i = icmp slt i32 %i.pg, %i.oo
  br i1 %.not.i.i13.i.i.i, label %bb.cs, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i

bb.cs:                                            ; preds = %.lr.ph.i.i278.i.i
  %i.pi = add nsw i32 %i.pg, 1                    ; 2 uses
  %i.pj = sext i32 %i.pg to i64
  %i.pk = getelementptr inbounds i8, ptr %i.ot, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !50
  %i.pm = zext i8 %i.pl to i32
  %i.pn = or disjoint i32 %i.ph, %i.pm
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i: ; preds = %bb.cs, %.lr.ph.i.i278.i.i
  %.sroa.6.4.i.i.i = phi i32 [ %i.pi, %bb.cs ], [ %.sroa.6.3.i.i.i, %.lr.ph.i.i278.i.i ]
  %i.po = phi i32 [ %i.pi, %bb.cs ], [ %i.pg, %.lr.ph.i.i278.i.i ] ; 4 uses
  %.0.i.i15.i.i.i = phi i32 [ %i.pn, %bb.cs ], [ %i.ph, %.lr.ph.i.i278.i.i ]
  %i.pp = shl i32 %.0.i.i15.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i.1 = icmp slt i32 %i.po, %i.oo
  br i1 %.not.i.i13.i.i.i.1, label %bb.ct, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1

bb.ct:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i
  %i.pq = add nsw i32 %i.po, 1                    ; 2 uses
  %i.pr = sext i32 %i.po to i64
  %i.ps = getelementptr inbounds i8, ptr %i.ot, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !50
  %i.pu = zext i8 %i.pt to i32
  %i.pv = or disjoint i32 %i.pp, %i.pu
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1: ; preds = %bb.ct, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i
  %.sroa.6.4.i.i.i.1 = phi i32 [ %i.pq, %bb.ct ], [ %.sroa.6.4.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i ] ; 3 uses
  %i.pw = phi i32 [ %i.pq, %bb.ct ], [ %i.po, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i ] ; 2 uses
  %.0.i.i15.i.i.i.1 = phi i32 [ %i.pv, %bb.ct ], [ %i.pp, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i ] ; 3 uses
  %niter190.next.1 = add i32 %niter190, 2         ; 2 uses
  %niter190.ncmp.1 = icmp eq i32 %niter190.next.1, %unroll_iter189
  br i1 %niter190.ncmp.1, label %.lr.ph.i19.i.i.i.preheader.unr-lcssa, label %.lr.ph.i.i278.i.i, !llvm.loop !19

.lr.ph.i19.i.i.i.preheader.unr-lcssa:             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i14.i.i.i.1
  %lcmp.mod185.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i19.i.i.i.preheader, label %.lr.ph.i.i278.i.i.epil.preheader

.lr.ph.i.i278.i.i.epil.preheader:                 ; preds = %.lr.ph.i19.i.i.i.preheader.unr-lcssa, %.lr.ph.i.i278.i.i.preheader
  %.sroa.6.3.i.i.i.epil.init = phi i32 [ 3, %.lr.ph.i.i278.i.i.preheader ], [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %.epil.init184 = phi i32 [ 3, %.lr.ph.i.i278.i.i.preheader ], [ %i.pw, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i278.i.i.preheader ], [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod188 = trunc i8 %i.pc to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.px = shl i32 %.056.i12.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i13.i.i.i.epil = icmp slt i32 %.epil.init184, %i.oo
  br i1 %.not.i.i13.i.i.i.epil, label %bb.cu, label %.lr.ph.i19.i.i.i.preheader

bb.cu:                                            ; preds = %.lr.ph.i.i278.i.i.epil.preheader
  %i.py = add nsw i32 %.epil.init184, 1
  %i.pz = sext i32 %.epil.init184 to i64
  %i.qa = getelementptr inbounds i8, ptr %i.ot, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !50
  %i.qc = zext i8 %i.qb to i32
  %i.qd = or disjoint i32 %i.px, %i.qc
  br label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %.lr.ph.i.i278.i.i.epil.preheader, %bb.cu, %.lr.ph.i19.i.i.i.preheader.unr-lcssa
  %.sroa.6.4.i.i.i.lcssa = phi i32 [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.py, %bb.cu ], [ %.sroa.6.3.i.i.i.epil.init, %.lr.ph.i.i278.i.i.epil.preheader ] ; 2 uses
  %.0.i.i15.i.i.i.lcssa = phi i32 [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.qd, %bb.cu ], [ %i.px, %.lr.ph.i.i278.i.i.epil.preheader ] ; 3 uses
  %xtraiter191 = and i32 %i.pd, 1
  %i.qe = icmp eq i32 %i.pe, 0
  br i1 %i.qe, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter197 = and i32 %i.pd, 254
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.new
  %i.qf = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader.new ], [ %i.qv, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1 ] ; 4 uses
  %.056.i22.i.i.i = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %.0.i.i25.i.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1 ]
  %niter198 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter198.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1 ]
  %i.qg = shl i32 %.056.i22.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i = icmp slt i32 %i.qf, %i.oo
  br i1 %.not.i.i23.i.i.i, label %bb.cv, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i

bb.cv:                                            ; preds = %.lr.ph.i19.i.i.i
  %i.qh = add nsw i32 %i.qf, 1
  %i.qi = sext i32 %i.qf to i64
  %i.qj = getelementptr inbounds i8, ptr %i.ot, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !50
  %i.ql = zext i8 %i.qk to i32
  %i.qm = or disjoint i32 %i.qg, %i.ql
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i: ; preds = %bb.cv, %.lr.ph.i19.i.i.i
  %i.qn = phi i32 [ %i.qh, %bb.cv ], [ %i.qf, %.lr.ph.i19.i.i.i ] ; 4 uses
  %.0.i.i25.i.i.i = phi i32 [ %i.qm, %bb.cv ], [ %i.qg, %.lr.ph.i19.i.i.i ]
  %i.qo = shl i32 %.0.i.i25.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i.1 = icmp slt i32 %i.qn, %i.oo
  br i1 %.not.i.i23.i.i.i.1, label %bb.cw, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1

bb.cw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i
  %i.qp = add nsw i32 %i.qn, 1
  %i.qq = sext i32 %i.qn to i64
  %i.qr = getelementptr inbounds i8, ptr %i.ot, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !50
  %i.qt = zext i8 %i.qs to i32
  %i.qu = or disjoint i32 %i.qo, %i.qt
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1: ; preds = %bb.cw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i
  %i.qv = phi i32 [ %i.qp, %bb.cw ], [ %i.qn, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i ] ; 2 uses
  %.0.i.i25.i.i.i.1 = phi i32 [ %i.qu, %bb.cw ], [ %i.qo, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i ] ; 3 uses
  %niter198.next.1 = add i32 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i32 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i24.i.i.i.1
  %lcmp.mod194.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod194.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %.epil.init193 = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader ], [ %i.qv, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader ], [ %.0.i.i25.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod196 = trunc i8 %i.pc to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.qw = shl i32 %.056.i22.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i23.i.i.i.epil = icmp slt i32 %.epil.init193, %i.oo
  br i1 %.not.i.i23.i.i.i.epil, label %bb.cx, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i

bb.cx:                                            ; preds = %.lr.ph.i19.i.i.i.epil.preheader
  %i.qx = sext i32 %.epil.init193 to i64
  %i.qy = getelementptr inbounds i8, ptr %i.ot, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !50
  %i.ra = zext i8 %i.qz to i32
  %i.rb = or disjoint i32 %i.qw, %i.ra
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i:   ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa, %bb.cx, %.lr.ph.i19.i.i.i.epil.preheader, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i, %bb.cr
  %.0.i.i.1.i269382.i.i = phi i32 [ %i.pa, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ %i.pa, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ 0, %bb.cr ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ %i.ow, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %i.pa, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.pa, %bb.cx ], [ %i.pa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i367373381.i.i = phi i32 [ %i.oo, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ 2, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ 0, %bb.cr ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %i.oo, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.oo, %bb.cx ], [ %i.oo, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i259366374380.i.i = phi ptr [ %i.ot, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ %i.ot, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ null, %bb.cr ], [ %i.ot, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ %i.ot, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %i.ot, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.ot, %bb.cx ], [ %i.ot, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ]
  %.0.i55.i.i.i = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ 0, %bb.cr ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %i.pd, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.pd, %bb.cx ], [ %i.pd, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i.i.i = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ 0, %bb.cr ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %.0.i.i15.i.i.i.lcssa, %.lr.ph.i19.i.i.i.epil.preheader ], [ %.0.i.i15.i.i.i.lcssa, %bb.cx ], [ %.0.i.i15.i.i.i.lcssa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i.i.i = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i276.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i268.i.i.a ], [ 0, %bb.cr ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit263.i.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i265.i.i.a ], [ %.0.i.i25.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i.loopexit.unr-lcssa ], [ %i.rb, %bb.cx ], [ %i.qw, %.lr.ph.i19.i.i.i.epil.preheader ]
  %i.rc = add nuw nsw i32 %.0.i.i.1.i269382.i.i, 1
  %i.rd = mul nuw nsw i32 %.0.i55.i.i.i, %i.rc
  %i.re = add nuw nsw i32 %i.rd, 2
  %i.rf = add nsw i32 %i.re, %.05.lcssa.i42.i.i.i ; 4 uses
  %i.rg = sub nsw i32 %.05.lcssa.i27.i.i.i, %.05.lcssa.i42.i.i.i ; 3 uses
  %i.rh = or i32 %i.rg, %i.rf
  %or.cond.not.i.i271.i.i = icmp sgt i32 %i.rh, -1
  br i1 %or.cond.not.i.i271.i.i, label %bb.cy, label %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i

bb.cy:                                            ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i
  %i.ri = icmp sgt i32 %i.rf, %.sroa.18.8.extract.trunc.i367373381.i.i
  %i.rj = sub nsw i32 %.sroa.18.8.extract.trunc.i367373381.i.i, %i.rf
  %i.rk = icmp sgt i32 %i.rg, %i.rj
  %or.cond.i.i.i.i = select i1 %i.ri, i1 true, i1 %i.rk
  br i1 %or.cond.i.i.i.i, label %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rl = zext nneg i32 %i.rf to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259366374380.i.i, i64 %i.rl
  %i.rn = zext nneg i32 %i.rg to i64
  %i.ro = shl nuw nsw i64 %i.rn, 32
  br label %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i

_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i:  ; preds = %bb.cz, %bb.cy, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i
  %.sroa.0.0.i.i272.i.i = phi ptr [ null, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i ], [ null, %bb.cy ], [ %i.rm, %bb.cz ]
  %.sroa.5.0.i.i273.i.i = phi i64 [ 0, %_ZL14stbtt__buf_getP10stbtt__bufi.exit28.i.i.i ], [ 0, %bb.cy ], [ %i.ro, %bb.cz ]
  store ptr %.sroa.0.0.i.i272.i.i, ptr %3, align 8, !tbaa !411
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i273.i.i, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !tbaa !258
  %.not.i.i.i279.i.i = icmp slt i32 %i.on, %i.jt
  br i1 %.not.i.i.i279.i.i, label %bb.da, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i

bb.da:                                            ; preds = %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i
  %i.rp = load ptr, ptr %2, align 8, !tbaa !505
  %i.rq = add nsw i32 %i.on, 1                    ; 2 uses
  store i32 %i.rq, ptr %i.jp, align 8, !tbaa !503
  %i.rr = sext i32 %i.on to i64
  %i.rs = getelementptr inbounds i8, ptr %i.rp, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !50
  %i.ru = zext i8 %i.rt to i32
  %i.rv = shl nuw nsw i32 %i.ru, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i: ; preds = %bb.da, %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i
  %i.rw = phi i32 [ %i.rq, %bb.da ], [ %i.on, %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i ] ; 4 uses
  %.0.i.i.i281.i.i = phi i32 [ %i.rv, %bb.da ], [ 0, %_ZL20stbtt__cff_index_get10stbtt__bufi.exit.i.i ] ; 2 uses
  %.not.i.i.1.i282.i.i = icmp slt i32 %i.rw, %i.jt
  br i1 %.not.i.i.1.i282.i.i, label %bb.db, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i

bb.db:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i
  %i.rx = load ptr, ptr %2, align 8, !tbaa !505
  %i.ry = add nsw i32 %i.rw, 1                    ; 2 uses
  store i32 %i.ry, ptr %i.jp, align 8, !tbaa !503
  %i.rz = sext i32 %i.rw to i64
  %i.sa = getelementptr inbounds i8, ptr %i.rx, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !50
  %i.sc = zext i8 %i.sb to i32
  %i.sd = or disjoint i32 %.0.i.i.i281.i.i, %i.sc
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i: ; preds = %bb.db, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i
  %i.se = phi i32 [ %i.ry, %bb.db ], [ %i.rw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i ] ; 5 uses
  %.0.i.i.1.i284.i.i = phi i32 [ %i.sd, %bb.db ], [ %.0.i.i.i281.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i280.i.i ] ; 2 uses
  %.not.i285.i.i = icmp eq i32 %.0.i.i.1.i284.i.i, 0
  br i1 %.not.i285.i.i, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i
  %.not.i.i286.i.i = icmp slt i32 %i.se, %i.jt
  br i1 %.not.i.i286.i.i, label %bb.dd, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.sf = load ptr, ptr %2, align 8, !tbaa !505
  %i.sg = add nsw i32 %i.se, 1
  %i.sh = sext i32 %i.se to i64
  %i.si = getelementptr inbounds i8, ptr %i.sf, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !50
  %i.sk = zext i8 %i.sj to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i:  ; preds = %bb.dd, %bb.dc
  %.promoted405.i.i = phi i32 [ %i.sg, %bb.dd ], [ %i.se, %bb.dc ]
  %.0.i.i288.i.i = phi i32 [ %i.sk, %bb.dd ], [ 0, %bb.dc ] ; 6 uses
  %i.sl = mul nuw nsw i32 %.0.i.i288.i.i, %.0.i.i.1.i284.i.i
  %i.sm = add nsw i32 %i.sl, %.promoted405.i.i    ; 2 uses
  %i.sn = icmp slt i32 %i.sm, 0
  %i.so = tail call i32 @llvm.smin.i32(i32 %i.sm, i32 %i.jt)
  %..i.i.i289.i.i = select i1 %i.sn, i32 %i.jt, i32 %i.so ; 3 uses
  %.not.i13.i290.i.i = icmp eq i32 %.0.i.i288.i.i, 0
  br i1 %.not.i13.i290.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i299.i.i, label %.lr.ph.i.i291.preheader.i.i

.lr.ph.i.i291.preheader.i.i:                      ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i
  %i.sp = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter199 = and i32 %.0.i.i288.i.i, 1
  %i.sq = icmp eq i32 %.0.i.i288.i.i, 1
  br i1 %i.sq, label %.lr.ph.i.i291.i.i.epil.preheader, label %.lr.ph.i.i291.preheader.i.i.new

.lr.ph.i.i291.preheader.i.i.new:                  ; preds = %.lr.ph.i.i291.preheader.i.i
  %unroll_iter206 = and i32 %.0.i.i288.i.i, 254
  br label %.lr.ph.i.i291.i.i

.lr.ph.i.i291.i.i:                                ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1, %.lr.ph.i.i291.preheader.i.i.new
  %i.sr = phi i32 [ %..i.i.i289.i.i, %.lr.ph.i.i291.preheader.i.i.new ], [ %i.th, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1 ] ; 4 uses
  %.056.i16.i293.i.i = phi i32 [ 0, %.lr.ph.i.i291.preheader.i.i.new ], [ %.0.i.i19.i296.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1 ]
  %niter207 = phi i32 [ 0, %.lr.ph.i.i291.preheader.i.i.new ], [ %niter207.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1 ]
  %i.ss = shl i32 %.056.i16.i293.i.i, 8           ; 2 uses
  %.not.i.i17.i294.i.i = icmp slt i32 %i.sr, %i.jt
  br i1 %.not.i.i17.i294.i.i, label %bb.de, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i

bb.de:                                            ; preds = %.lr.ph.i.i291.i.i
  %i.st = add nsw i32 %i.sr, 1
  %i.su = sext i32 %i.sr to i64
  %i.sv = getelementptr inbounds i8, ptr %i.sp, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !50
  %i.sx = zext i8 %i.sw to i32
  %i.sy = or disjoint i32 %i.ss, %i.sx
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i: ; preds = %bb.de, %.lr.ph.i.i291.i.i
  %i.sz = phi i32 [ %i.st, %bb.de ], [ %i.sr, %.lr.ph.i.i291.i.i ] ; 4 uses
  %.0.i.i19.i296.i.i = phi i32 [ %i.sy, %bb.de ], [ %i.ss, %.lr.ph.i.i291.i.i ]
  %i.ta = shl i32 %.0.i.i19.i296.i.i, 8           ; 2 uses
  %.not.i.i17.i294.i.i.1 = icmp slt i32 %i.sz, %i.jt
  br i1 %.not.i.i17.i294.i.i.1, label %bb.df, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1

bb.df:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i
  %i.tb = add nsw i32 %i.sz, 1
  %i.tc = sext i32 %i.sz to i64
  %i.td = getelementptr inbounds i8, ptr %i.sp, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !50
  %i.tf = zext i8 %i.te to i32
  %i.tg = or disjoint i32 %i.ta, %i.tf
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1: ; preds = %bb.df, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i
  %i.th = phi i32 [ %i.tb, %bb.df ], [ %i.sz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i ] ; 3 uses
  %.0.i.i19.i296.i.i.1 = phi i32 [ %i.tg, %bb.df ], [ %i.ta, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i ] ; 3 uses
  %niter207.next.1 = add nuw nsw i32 %niter207, 2 ; 2 uses
  %niter207.ncmp.1 = icmp eq i32 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa, label %.lr.ph.i.i291.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i295.i.i.1
  %lcmp.mod202.not = icmp eq i32 %xtraiter199, 0
  br i1 %lcmp.mod202.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i, label %.lr.ph.i.i291.i.i.epil.preheader

.lr.ph.i.i291.i.i.epil.preheader:                 ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa, %.lr.ph.i.i291.preheader.i.i
  %.epil.init201 = phi i32 [ %..i.i.i289.i.i, %.lr.ph.i.i291.preheader.i.i ], [ %i.th, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i293.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i291.preheader.i.i ], [ %.0.i.i19.i296.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa ]
  %lcmp.mod205 = trunc i32 %.0.i.i288.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %i.ti = shl i32 %.056.i16.i293.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i294.i.i.epil = icmp slt i32 %.epil.init201, %i.jt
  br i1 %.not.i.i17.i294.i.i.epil, label %bb.dg, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i

bb.dg:                                            ; preds = %.lr.ph.i.i291.i.i.epil.preheader
  %i.tj = add nsw i32 %.epil.init201, 1
  %i.tk = sext i32 %.epil.init201 to i64
  %i.tl = getelementptr inbounds i8, ptr %i.sp, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !50
  %i.tn = zext i8 %i.tm to i32
  %i.to = or disjoint i32 %i.ti, %i.tn
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i: ; preds = %.lr.ph.i.i291.i.i.epil.preheader, %bb.dg, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa
  %.lcssa158.a = phi i32 [ %i.th, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa ], [ %i.tj, %bb.dg ], [ %.epil.init201, %.lr.ph.i.i291.i.i.epil.preheader ]
  %.0.i.i19.i296.i.i.lcssa = phi i32 [ %.0.i.i19.i296.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i.unr-lcssa ], [ %i.to, %bb.dg ], [ %i.ti, %.lr.ph.i.i291.i.i.epil.preheader ]
  %i.tp = add i32 %.0.i.i19.i296.i.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i299.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i299.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i
  %i.tq = phi i32 [ %..i.i.i289.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i ], [ %.lcssa158.a, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i ]
  %.05.lcssa.i.i300.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i287.i.i ], [ %i.tp, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i298.i.i ]
  %i.tr = add nsw i32 %.05.lcssa.i.i300.i.i, %i.tq ; 2 uses
  %i.ts = icmp slt i32 %i.tr, 0
  %i.tt = tail call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.jt)
  %..i.i22.i301.i.i = select i1 %i.ts, i32 %i.jt, i32 %i.tt ; 2 uses
  store i32 %..i.i22.i301.i.i, ptr %i.jp, align 8, !tbaa !503
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i299.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i
  %i.tu = phi i32 [ %..i.i22.i301.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i299.i.i ], [ %i.se, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i283.i.i ] ; 7 uses
  %.not.i.i.i309.i.i = icmp slt i32 %i.tu, %i.jt
  br i1 %.not.i.i.i309.i.i, label %bb.dh, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i310.i.i

bb.dh:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i
  %i.tv = load ptr, ptr %2, align 8, !tbaa !505
  %i.tw = add nsw i32 %i.tu, 1                    ; 2 uses
  store i32 %i.tw, ptr %i.jp, align 8, !tbaa !503
  %i.tx = sext i32 %i.tu to i64
  %i.ty = getelementptr inbounds i8, ptr %i.tv, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !50
  %i.ua = zext i8 %i.tz to i32
  %i.ub = shl nuw nsw i32 %i.ua, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i310.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i310.i.i: ; preds = %bb.dh, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i
  %i.uc = phi i32 [ %i.tw, %bb.dh ], [ %i.tu, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i ] ; 4 uses
  %.0.i.i.i311.i.i = phi i32 [ %i.ub, %bb.dh ], [ 0, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit308.i.i ] ; 2 uses
  %.not.i.i.1.i312.i.i = icmp slt i32 %i.uc, %i.jt
  br i1 %.not.i.i.1.i312.i.i, label %bb.di, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i313.i.i

end_hunk_1
