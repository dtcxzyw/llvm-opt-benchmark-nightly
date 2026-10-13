Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN6ImFont12AddRemapCharEtt:bb.a
  %i.b = zext i16 %1 to i32
  %i.c = zext i16 %2 to i32
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.b, i32 noundef %i.c)
  ret void
}

declare void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.ImFontGlyph, align 4        ; 10 uses
  %4 = alloca %struct.ImFontGlyph, align 4        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !364  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load i8, ptr %i.e, align 8, !tbaa !473, !range !351, !noundef !352
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !363
  %i.j = and i32 %i.i, 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !262
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 134217728
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL38ImFontAtlasBuildSetupFontBakedFallbackP11ImFontBaked(ptr noundef nonnull %0)
  br label %bb.af

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !485
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZL34ImFontAtlas_FontHookRemapCodepointP11ImFontAtlasP6ImFontPt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = zext i16 %1 to i32                       ; 2 uses
  %i.u = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef %i.t, i32 noundef %i.t)
  %i.v = trunc i32 %i.u to i16
  br label %_ZL34ImFontAtlas_FontHookRemapCodepointP11ImFontAtlasP6ImFontPt.exit

_ZL34ImFontAtlas_FontHookRemapCodepointP11ImFontAtlasP6ImFontPt.exit: ; preds = %bb.f, %bb.g
  %.0103 = phi i16 [ %1, %bb.f ], [ %i.v, %bb.g ] ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load i16, ptr %i.w, align 8, !tbaa !483
  %i.y = icmp eq i16 %.0103, %i.x
  br i1 %i.y, label %bb.h, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit.thread

bb.h:                                             ; preds = %_ZL34ImFontAtlas_FontHookRemapCodepointP11ImFontAtlasP6ImFontPt.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !486, !range !351, !noundef !352
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !259 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 46
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !243 ; 2 uses
  switch i16 %i.aj, label %bb.k [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread
    i16 -1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261
  %i.am = zext i16 %i.aj to i64
  %i.an = getelementptr inbounds nuw [44 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, 134217728
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext 46, ptr noundef null), !inline_history !844
  %i.as = load i32, ptr %i.ao, align 4
  %i.at = and i32 %i.as, -134217729
  store i32 %i.at, ptr %i.ao, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94:   ; preds = %bb.k, %bb.l
  %.1.i91 = phi ptr [ %i.ar, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %i.au = icmp eq ptr %.1.i91, null
  br i1 %i.au, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94._ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread_crit_edge, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94._ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread_crit_edge: ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !259
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread: ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94._ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread_crit_edge, %bb.j
  %i.av = phi i32 [ %.pre, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94._ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread_crit_edge ], [ %i.ae, %bb.j ]
  %i.aw = icmp ugt i32 %i.av, 65294
  br i1 %i.aw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !260
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 130588
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !243 ; 2 uses
  switch i16 %i.ba, label %bb.n [
    i16 -2, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit.thread
    i16 -1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !261
  %i.bd = zext i16 %i.ba to i64
  %i.be = getelementptr inbounds nuw [44 x i8], ptr %i.bc, i64 %i.bd
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

bb.o:                                             ; preds = %bb.m, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 134217728
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext -242, ptr noundef null), !inline_history !844
  %i.bj = load i32, ptr %i.bf, align 4
  %i.bk = and i32 %i.bj, -134217729
  store i32 %i.bk, ptr %i.bf, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit:     ; preds = %bb.n, %bb.o
  %.058.i = phi ptr [ %i.bi, %bb.o ], [ %i.be, %bb.n ] ; 2 uses
  %i.bl = icmp eq ptr %.058.i, null
  br i1 %i.bl, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit.thread, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread: ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %.058.i111 = phi ptr [ %.058.i, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit ], [ %.1.i91, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit94 ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i111, i64 40
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !465
  %i.bo = and i32 %i.bn, 524287
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 688 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !339 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !439
  %i.bt = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = shl i32 %i.bv, 12
  %i.bx = ashr exact i32 %i.bw, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !331
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.058.i111, i64 16
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !479
  %i.ce = getelementptr inbounds nuw i8, ptr %.058.i111, i64 8 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !478
  %i.cg = fsub float %i.cd, %i.cf
  %i.ch = fadd float %i.cg, 1.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !442
  %i.ck = zext i16 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.ck, 3
  %i.cm = add nuw nsw i32 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !443
  %i.cp = zext i16 %i.co to i32
  %i.cq = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull %i.d, i32 noundef %i.cm, i32 noundef %i.cp, ptr noundef null), !inline_history !845 ; 2 uses
  %i.cr = and i32 %i.cq, 524287
  %i.cs = load ptr, ptr %i.bp, align 8, !tbaa !339 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !439
  %i.cv = zext nneg i32 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = shl i32 %i.cx, 12
  %i.cz = ashr exact i32 %i.cy, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !331
  %i.dc = sext i32 %i.cz to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !483
  %i.di = zext i16 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %.058.i111, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !264 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = load <2 x float>, ptr %i.ce, align 4, !tbaa !29 ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.ch, float 3.000000e+00, float %i.dp)
  %i.dr = fadd float %i.dq, -1.000000e+00         ; 3 uses
  %i.ds = fcmp oge float %i.dl, %i.dr
  %i.dt = select i1 %i.ds, float %i.dl, float %i.dr
  store float %i.dt, ptr %i.dm, align 4, !tbaa !264
  store <2 x float> %i.do, ptr %i.dn, align 4, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.dr, ptr %i.du, align 4, !tbaa !479
  %i.dv = getelementptr inbounds nuw i8, ptr %.058.i111, i64 20
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !527
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.dw, ptr %i.dx, align 4, !tbaa !527
  %i.dy = or disjoint i32 %i.dj, 2
  store i32 %i.dy, ptr %3, align 4
  store i32 %i.cq, ptr %i.df, align 4, !tbaa !465
  %i.dz = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3), !inline_history !845
  %i.ea = load ptr, ptr %i.bp, align 8, !tbaa !339 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !439
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.bt
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = shl i32 %i.ee, 12
  %i.eg = ashr exact i32 %i.ef, 12
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !331
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !332 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 6 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 48 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 36 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 44 ; 3 uses
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !443 ; 2 uses
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
  %i.ew = load i16, ptr %i.ek, align 2, !tbaa !440
  %i.ex = zext i16 %i.ew to i32
  %i.ey = load i16, ptr %i.en, align 2, !tbaa !441
  %i.ez = zext i16 %i.ey to i32
  %i.fa = load i16, ptr %i.dd, align 2, !tbaa !440
  %i.fb = zext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.eo, align 2, !tbaa !442
  %i.fd = zext i16 %i.fc to i32
  %i.fe = load i16, ptr %i.ep, align 2, !tbaa !441
  %i.ff = zext i16 %i.fe to i32
  %i.fg = zext i16 %i.eu to i32
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader, %.lr.ph.i88
  %.012.i = phi i32 [ %i.fy, %.lr.ph.i88 ], [ 0, %.lr.ph.i88.preheader ] ; 3 uses
  %i.fh = add nuw nsw i32 %.012.i, %i.ff
  %i.fi = load ptr, ptr %i.er, align 8, !tbaa !308 ; 2 uses
  %i.fj = load i32, ptr %i.es, align 4, !tbaa !311 ; 2 uses
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = add nsw i32 %i.fk, %i.fb
  %i.fm = load i32, ptr %i.et, align 4, !tbaa !313 ; 3 uses
  %i.fn = mul nsw i32 %i.fl, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fi, i64 %i.fo
  %i.fq = add nuw nsw i32 %.012.i, %i.ez
  %i.fr = mul nsw i32 %i.fj, %i.fq
  %i.fs = add nsw i32 %i.fr, %i.ex
  %i.ft = mul nsw i32 %i.fs, %i.fm
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fi, i64 %i.fu
  %i.fw = mul nsw i32 %i.fm, %i.fd
  %i.fx = sext i32 %i.fw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr align 1 %i.fv, i64 %i.fx, i1 false)
  %i.fy = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fy, %i.fg
  br i1 %exitcond.not.i, label %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit, label %.lr.ph.i88, !llvm.loop !15

_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit: ; preds = %.lr.ph.i88
  %.pre144 = load i16, ptr %i.ek, align 2, !tbaa !440
  %.pre145 = load i16, ptr %i.en, align 2, !tbaa !441
  %.pre147 = load i16, ptr %i.eo, align 2, !tbaa !442
  %.pre148 = load i16, ptr %i.ep, align 2, !tbaa !441
  %.pre149 = load i16, ptr %i.eq, align 2, !tbaa !443 ; 2 uses
  %.pre156 = zext i16 %.pre144 to i32
  %.pre157 = zext i16 %.pre145 to i32
  %.pre161 = zext i16 %.pre147 to i32             ; 2 uses
  %.pre163 = zext i16 %.pre148 to i32
  %.pre165 = zext i16 %.pre149 to i32
  %.pre146 = load i16, ptr %i.dd, align 2, !tbaa !440
  %.pre159 = zext i16 %.pre146 to i32
  %i.fz = add nuw nsw i32 %.pre161, 1
  %i.ga = add nuw nsw i32 %i.fz, %.pre159
  %.not128.1 = icmp eq i16 %.pre149, 0
  br i1 %.not128.1, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit, label %.lr.ph.i88.1

.lr.ph.i88.1:                                     ; preds = %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit, %.lr.ph.i88.1
  %.012.i.1 = phi i32 [ %i.gs, %.lr.ph.i88.1 ], [ 0, %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit ] ; 3 uses
  %i.gb = add nuw nsw i32 %.012.i.1, %.pre163
  %i.gc = load ptr, ptr %i.er, align 8, !tbaa !308 ; 2 uses
  %i.gd = load i32, ptr %i.es, align 4, !tbaa !311 ; 2 uses
  %i.ge = mul nsw i32 %i.gd, %i.gb
  %i.gf = add nsw i32 %i.ga, %i.ge
  %i.gg = load i32, ptr %i.et, align 4, !tbaa !313 ; 3 uses
  %i.gh = mul nsw i32 %i.gf, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.gc, i64 %i.gi
  %i.gk = add nuw nsw i32 %.012.i.1, %.pre157
  %i.gl = mul nsw i32 %i.gd, %i.gk
  %i.gm = add nsw i32 %i.gl, %.pre156
  %i.gn = mul nsw i32 %i.gm, %i.gg
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gc, i64 %i.go
  %i.gq = mul nsw i32 %i.gg, %.pre161
  %i.gr = sext i32 %i.gq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gp, i64 %i.gr, i1 false)
  %i.gs = add nuw nsw i32 %.012.i.1, 1            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gs, %.pre165
  br i1 %exitcond.not.i.1, label %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit.1, label %.lr.ph.i88.1, !llvm.loop !15

_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit.1: ; preds = %.lr.ph.i88.1
  %.pre150 = load i16, ptr %i.ek, align 2, !tbaa !440
  %.pre151 = load i16, ptr %i.en, align 2, !tbaa !441
  %.pre152 = load i16, ptr %i.dd, align 2, !tbaa !440
  %.pre153 = load i16, ptr %i.eo, align 2, !tbaa !442
  %.pre154 = load i16, ptr %i.ep, align 2, !tbaa !441
  %.pre155 = load i16, ptr %i.eq, align 2, !tbaa !443 ; 2 uses
  %.pre167 = zext i16 %.pre150 to i32
  %.pre169 = zext i16 %.pre151 to i32
  %.pre171 = zext i16 %.pre152 to i32
  %.pre173 = zext i16 %.pre153 to i32             ; 2 uses
  %.pre177 = zext i16 %.pre154 to i32
  %.pre175 = shl nuw nsw i32 %.pre173, 1
  %i.gt = add nuw nsw i32 %.pre175, 2
  %i.gu = add nuw nsw i32 %i.gt, %.pre171
  %i.gv = zext i16 %.pre155 to i32
  %.not128.2 = icmp eq i16 %.pre155, 0
  br i1 %.not128.2, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit, label %.lr.ph.i88.2

.lr.ph.i88.2:                                     ; preds = %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit.1, %.lr.ph.i88.2
  %.012.i.2 = phi i32 [ %i.hn, %.lr.ph.i88.2 ], [ 0, %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit.1 ] ; 3 uses
  %i.gw = add nuw nsw i32 %.012.i.2, %.pre177
  %i.gx = load ptr, ptr %i.er, align 8, !tbaa !308 ; 2 uses
  %i.gy = load i32, ptr %i.es, align 4, !tbaa !311 ; 2 uses
  %i.gz = mul nsw i32 %i.gy, %i.gw
  %i.ha = add nsw i32 %i.gu, %i.gz
  %i.hb = load i32, ptr %i.et, align 4, !tbaa !313 ; 3 uses
  %i.hc = mul nsw i32 %i.ha, %i.hb
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.gx, i64 %i.hd
  %i.hf = add nuw nsw i32 %.012.i.2, %.pre169
  %i.hg = mul nsw i32 %i.gy, %i.hf
  %i.hh = add nsw i32 %i.hg, %.pre167
  %i.hi = mul nsw i32 %i.hh, %i.hb
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.gx, i64 %i.hj
  %i.hl = mul nsw i32 %i.hb, %.pre173
  %i.hm = sext i32 %i.hl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr align 1 %i.hk, i64 %i.hm, i1 false)
  %i.hn = add nuw nsw i32 %.012.i.2, 1            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.hn, %i.gv
  br i1 %exitcond.not.i.2, label %_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit, label %.lr.ph.i88.2, !llvm.loop !15

_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit: ; preds = %.lr.ph.i88.2, %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit, %_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii.exit.1, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
  %i.ho = load i16, ptr %i.dd, align 2, !tbaa !440
  %i.hp = zext i16 %i.ho to i32
  %i.hq = load i16, ptr %i.ep, align 2, !tbaa !441
  %i.hr = zext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !442
  %i.hu = zext i16 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !443
  %i.hx = zext i16 %i.hw to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.em, i32 noundef %i.hp, i32 noundef %i.hr, i32 noundef %i.hu, i32 noundef %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 0, ptr %i.hy, align 2, !tbaa !347
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.af

_ZL38ImFontAtlasBuildSetupFontBakedEllipsisP11ImFontAtlasP11ImFontBaked.exit.thread: ; preds = %bb.m, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit, %bb.h, %_ZL34ImFontAtlas_FontHookRemapCodepointP11ImFontAtlasP6ImFontPt.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !359 ; 3 uses
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !361 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %.idx = shl nsw i64 %i.id, 3
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %.idx ; 2 uses
  %.not80133 = icmp eq i32 %i.ic, 0
end_hunk_0
begin_hunk_1_@_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff:bb.a
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

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.m, %bb.l
  %i.at = phi i32 [ %i.ap, %bb.l ], [ %i.ad, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 1, ptr %i.au, align 4, !tbaa !540
  %i.av = extractelement <4 x i32> %i.q, i64 2    ; 6 uses
  %i.aw = icmp slt i32 %i.aa, %i.av
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  store i32 %i.av, ptr %i.u, align 4, !tbaa !539
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  %i.ax = phi i32 [ %i.aa, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.av, %bb.n ]
  %i.ay = extractelement <4 x i32> %i.q, i64 3    ; 6 uses
  %i.az = icmp slt i32 %i.ah, %i.ay
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !541
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = phi i32 [ %i.ah, %bb.o ], [ %i.ay, %bb.p ]
  %i.bb = icmp sgt i32 %i.an, %i.av
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
  %i.a = alloca ptr, align 8                      ; 5 uses
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
end_hunk_1
begin_hunk_2_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
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
  %.0273.i38 = phi ptr [ %i.km, %bb.bg ], [ %.2275.i, %bb.bz ] ; 9 uses
  %.0278.i37 = phi ptr [ null, %bb.bg ], [ %.1279.i, %bb.bz ] ; 6 uses
  %.6.i36 = phi i32 [ 0, %bb.bg ], [ %.7.i, %bb.bz ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
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
  %i.kv = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 4 ; 2 uses
  %i.kw = and i32 %i.ko, 2
  %.not342.i = icmp eq i32 %i.kw, 0
  br i1 %.not342.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = and i32 %i.ko, 1
  %.not343.i = icmp eq i32 %i.kx, 0
  %i.ky = load i8, ptr %i.kv, align 1, !tbaa !50  ; 2 uses
  br i1 %.not343.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kz = getelementptr i8, ptr %.0273.i38, i64 5
  %i.la = getelementptr i8, ptr %.0273.i38, i64 7
  %.val387.i = load i8, ptr %i.la, align 1, !tbaa !50
  %i.lb = load <2 x i8>, ptr %i.kz, align 1, !tbaa !50
  %i.lc = shufflevector <2 x i8> %i.lb, <2 x i8> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ld = insertelement <2 x i8> %i.lc, i8 %i.ky, i64 1
  %i.le = zext <2 x i8> %i.ld to <2 x i16>
  %i.lf = shl nuw <2 x i16> %i.le, splat (i16 8)
  %i.lg = insertelement <2 x i8> %i.lc, i8 %.val387.i, i64 0
  %i.lh = zext <2 x i8> %i.lg to <2 x i16>
  %i.li = or disjoint <2 x i16> %i.lf, %i.lh
  %i.lj = sitofp <2 x i16> %i.li to <2 x float>
  %i.lk = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ll = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 5
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !50
  %i.ln = insertelement <2 x i8> poison, i8 %i.lm, i64 0
  %i.lo = insertelement <2 x i8> %i.ln, i8 %i.ky, i64 1
  %i.lp = sitofp <2 x i8> %i.lo to <2 x float>
  %i.lq = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1274.i = phi ptr [ %i.lk, %bb.bj ], [ %i.lq, %bb.bk ], [ %i.kv, %bb.bh ] ; 11 uses
  %i.lr = phi <2 x float> [ %i.lj, %bb.bj ], [ %i.lp, %bb.bk ], [ zeroinitializer, %bb.bh ] ; 3 uses
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lt = and i32 %i.ko, 8
  %.not344.i = icmp eq i32 %i.lt, 0
  br i1 %.not344.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.1274.val384.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %i.lu = getelementptr i8, ptr %.1274.i, i64 1
  %.1274.val385.i = load i8, ptr %i.lu, align 1, !tbaa !50
  %i.lv = zext i8 %.1274.val384.i to i16
  %i.lw = shl nuw i16 %i.lv, 8
  %i.lx = zext i8 %.1274.val385.i to i16
  %i.ly = or disjoint i16 %i.lw, %i.lx
  %i.lz = sitofp i16 %i.ly to float
  %i.ma = fmul nnan float %i.lz, f0x38800000      ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.mc = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ma, i64 1
  %i.md = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ma, i64 0
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.me = and i32 %i.ko, 64
  %.not345.i = icmp eq i32 %i.me, 0
  br i1 %.not345.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mf = getelementptr i8, ptr %.1274.i, i64 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.mh = getelementptr i8, ptr %.1274.i, i64 3
  %.1274.val382.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %.1274.val383.i = load i8, ptr %i.mf, align 1, !tbaa !50
  %i.mi = zext i8 %.1274.val382.i to i16
  %i.mj = shl nuw i16 %i.mi, 8
  %i.mk = zext i8 %.1274.val383.i to i16
  %i.ml = or disjoint i16 %i.mj, %i.mk
  %.val380.i = load i8, ptr %i.mg, align 1, !tbaa !50
  %.val381.i = load i8, ptr %i.mh, align 1, !tbaa !50
  %i.mm = zext i8 %.val380.i to i16
  %i.mn = shl nuw i16 %i.mm, 8
  %i.mo = zext i8 %.val381.i to i16
  %i.mp = or disjoint i16 %i.mn, %i.mo
  %i.mq = insertelement <2 x i16> poison, i16 %i.ml, i64 0
  %i.mr = insertelement <2 x i16> %i.mq, i16 %i.mp, i64 1
  %i.ms = sitofp <2 x i16> %i.mr to <2 x float>
  %i.mt = fmul nnan <2 x float> %i.ms, splat (float f0x38800000) ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1274.i, i64 4
  %i.mv = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.mt, <2 x i32> <i32 0, i32 2>
  %i.mw = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.mt, <2 x i32> <i32 3, i32 1>
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not346.i = icmp sgt i8 %.0273.val392.i, -1
  br i1 %.not346.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mx = load <8 x i8>, ptr %.1274.i, align 1, !tbaa !50 ; 4 uses
  %i.my = shufflevector <8 x i8> %i.mx, <8 x i8> poison, <2 x i32> <i32 4, i32 0>
  %i.mz = zext <2 x i8> %i.my to <2 x i16>
  %i.na = shl nuw <2 x i16> %i.mz, splat (i16 8)
  %i.nb = shufflevector <8 x i8> %i.mx, <8 x i8> poison, <2 x i32> <i32 5, i32 1>
  %i.nc = zext <2 x i8> %i.nb to <2 x i16>
  %i.nd = or disjoint <2 x i16> %i.na, %i.nc
  %i.ne = sitofp <2 x i16> %i.nd to <2 x float>
  %i.nf = shufflevector <8 x i8> %i.mx, <8 x i8> poison, <2 x i32> <i32 6, i32 2>
  %i.ng = zext <2 x i8> %i.nf to <2 x i16>
  %i.nh = shl nuw <2 x i16> %i.ng, splat (i16 8)
  %i.ni = shufflevector <8 x i8> %i.mx, <8 x i8> poison, <2 x i32> <i32 7, i32 3>
  %i.nj = zext <2 x i8> %i.ni to <2 x i16>
  %i.nk = or disjoint <2 x i16> %i.nh, %i.nj
  %i.nl = sitofp <2 x i16> %i.nk to <2 x float>
  %i.nm = fmul nnan <2 x float> %i.ne, splat (float f0x38800000)
  %i.nn = fmul nnan <2 x float> %i.nl, splat (float f0x38800000)
  %i.no = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2275.i = phi ptr [ %i.mb, %bb.bm ], [ %i.mu, %bb.bo ], [ %i.no, %bb.bq ], [ %.1274.i, %bb.bp ]
  %i.np = phi <2 x float> [ %i.mc, %bb.bm ], [ %i.mv, %bb.bo ], [ %i.nm, %bb.bq ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bp ] ; 6 uses
  %i.nq = phi <2 x float> [ %i.md, %bb.bm ], [ %i.mw, %bb.bo ], [ %i.nn, %bb.bq ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bp ] ; 6 uses
  %i.nr = fmul nnan <2 x float> %i.nq, %i.nq
  %i.ns = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> %i.np, <2 x float> %i.nr)
  %i.nt = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ns) ; 3 uses
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nv = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef %0, i32 noundef %i.ku, ptr noundef %i.a), !inline_history !876 ; 4 uses
  %i.nw = icmp sgt i32 %i.nv, 0
  br i1 %i.nw, label %.preheader32, label %bb.bz

.preheader32:                                     ; preds = %bb.br
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !427 ; 13 uses
  %wide.trip.count = zext nneg i32 %i.nv to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.nv, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader32
  %i.ny = and i64 %wide.trip.count, 7             ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 0
  %i.oa = select i1 %i.nz, i64 8, i64 %i.ny
  %n.vec = sub nsw i64 %wide.trip.count, %i.oa    ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.lr, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <2 x float> %i.nt, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %i.nq, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat104 = shufflevector <2 x float> %i.nq, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat106 = shufflevector <2 x float> %i.lr, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat108 = shufflevector <2 x float> %i.nt, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.ob = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 5 uses
  %i.oc = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 14 ; 2 uses
  %i.oe = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 28 ; 2 uses
  %i.og = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 42 ; 2 uses
  %i.oi = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 56 ; 2 uses
  %i.ok = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 70 ; 2 uses
  %i.om = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 84 ; 2 uses
  %i.oo = getelementptr inbounds nuw [14 x i8], ptr %i.nx, i64 %index ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 98 ; 2 uses
  %i.oq = load i16, ptr %i.ob, align 2, !tbaa !519
  %i.or = load i16, ptr %i.od, align 2, !tbaa !519
  %i.os = load i16, ptr %i.of, align 2, !tbaa !519
  %i.ot = load i16, ptr %i.oh, align 2, !tbaa !519
  %i.ou = load i16, ptr %i.oj, align 2, !tbaa !519
  %i.ov = load i16, ptr %i.ol, align 2, !tbaa !519
  %i.ow = load i16, ptr %i.on, align 2, !tbaa !519
  %i.ox = load i16, ptr %i.op, align 2, !tbaa !519
  %i.oy = insertelement <8 x i16> poison, i16 %i.oq, i64 0
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 1
  %i.pa = insertelement <8 x i16> %i.oz, i16 %i.os, i64 2
  %i.pb = insertelement <8 x i16> %i.pa, i16 %i.ot, i64 3
  %i.pc = insertelement <8 x i16> %i.pb, i16 %i.ou, i64 4
  %i.pd = insertelement <8 x i16> %i.pc, i16 %i.ov, i64 5
  %i.pe = insertelement <8 x i16> %i.pd, i16 %i.ow, i64 6
  %i.pf = insertelement <8 x i16> %i.pe, i16 %i.ox, i64 7
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 30
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 44
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oi, i64 58 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ok, i64 72 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.om, i64 86 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oo, i64 100 ; 2 uses
  %i.po = load i16, ptr %i.pg, align 2, !tbaa !520
end_hunk_2
