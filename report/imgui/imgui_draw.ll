Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZL34ImFontAtlasBuildUpdateTexDataBasicP11ImFontAtlas:bb.a
  %i.dlh = phi <2 x i16> [ %i.y, %._Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit_crit_edge ], [ %i.bz, %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit34 ], [ %i.bz, %.preheader45.i ], [ %i.bz, %iter.check1069 ], [ %i.bz, %bb.k ], [ %i.bz, %.preheader.i ], [ %i.bz, %.preheader45.i35 ]
  %i.dli = uitofp <2 x i16> %i.dlh to <2 x float>
  %i.dlj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dlk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dll = fadd nnan <2 x float> %i.dli, splat (float 5.000000e-01)
  %i.dlm = load <2 x float>, ptr %i.dlj, align 4, !tbaa !29
  %i.dln = fmul <2 x float> %i.dlm, %i.dll
  store <2 x float> %i.dln, ptr %i.dlk, align 4
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !340  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !426  ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 524287                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !461
  %.not.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !438
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !332  ; 2 uses
  %.not161 = icmp eq ptr %i.v, null
  br i1 %.not161, label %thread-pre-split, label %.split.us

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %bb.c, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.w = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef 34, i32 noundef 33, ptr noundef null), !inline_history !534 ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.split.preheader, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  %i.y = and i32 %i.w, 524287                     ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !340  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !535
  %.pre.i147 = load ptr, ptr %i.e, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %.pre.i147, %bb.f ], [ %i.z, %bb.e ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !461
  %.not.i.i138 = icmp slt i32 %i.y, %i.ad
  br i1 %.not.i.i138, label %bb.h, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !438
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !332 ; 2 uses
  %.not162 = icmp eq ptr %i.an, null
  br i1 %.not162, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %bb.i

bb.i:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142
  %i.ao = shl i32 %i.ai, 12
  %i.ap = ashr exact i32 %i.ao, 12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !439
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !440
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !441
  br label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148: ; preds = %bb.g, %bb.h, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142, %bb.i
  %.sroa.0.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.as, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.7.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.au, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.aw, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !326, !range !352, !noundef !353
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %.split.preheader

bb.j:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !438
  %i.bc = zext nneg i32 %i.y to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = shl i32 %i.be, 12
  %i.bg = ashr exact i32 %i.bf, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !332
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj ; 4 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.bm = load i16, ptr %i.bk, align 2, !tbaa !439
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !440
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !441
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !442
  %i.bw = zext i16 %i.bv to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.bx, align 2, !tbaa !348
  br label %.split.preheader

.split.preheader:                                 ; preds = %thread-pre-split, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, %bb.j
  %.sroa.0.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.0.2, %bb.j ], [ %.sroa.0.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.7.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.7.2, %bb.j ], [ %.sroa.7.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.11.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.11.2, %bb.j ], [ %.sroa.11.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ] ; 2 uses
  store i32 %i.w, ptr %i.g, align 8, !tbaa !426
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
  %i.cj = shl i32 %i.q, 12
  %i.ck = ashr exact i32 %i.cj, 12
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cl ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !439
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !440 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !441 ; 2 uses
  %i.cs = zext i16 %i.cn to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !237 ; 2 uses
  %i.cx = load float, ptr %i.cu, align 8, !tbaa !238 ; 3 uses
  %i.cy = zext i16 %i.cr to i64
  %i.cz = zext i16 %i.cp to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.cw, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert180 = insertelement <4 x i64> poison, i64 %i.cy, i64 0
  %broadcast.splat181 = shufflevector <4 x i64> %broadcast.splatinsert180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat183 = shufflevector <4 x i64> %broadcast.splatinsert182, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = add <4 x i32> %broadcast.splat, splat (i32 -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split.us
  %index = phi i64 [ 0, %.split.us ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.split.us ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.da = sub nsw <4 x i64> %broadcast.splat181, %vec.ind
  %i.db = trunc nsw <4 x i64> %i.da to <4 x i32>
  %i.dc = sdiv <4 x i32> %i.db, splat (i32 2)     ; 2 uses
  %i.dd = add nsw <4 x i32> %i.dc, %broadcast.splat
  %.reass = add <4 x i32> %i.dc, %invariant.op
  %i.de = sitofp <4 x i32> %.reass to <4 x float>
  %i.df = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat183
  %i.dg = trunc <4 x i64> %i.df to <4 x i32>      ; 2 uses
  %i.dh = uitofp nneg <4 x i32> %i.dg to <4 x float>
  %i.di = fmul <4 x float> %broadcast.splat177, %i.de
  %i.dj = fmul <4 x float> %broadcast.splat179, %i.dh
  %1 = trunc <4 x i64> %vec.ind to <4 x i32>
  %2 = add <4 x i32> %1, splat (i32 1)
  %i.dk = add <4 x i32> %i.dd, %2
  %i.dl = sitofp <4 x i32> %i.dk to <4 x float>
  %i.dm = add <4 x i32> %i.dg, splat (i32 1)
  %i.dn = uitofp nneg <4 x i32> %i.dm to <4 x float>
  %i.do = fmul <4 x float> %broadcast.splat177, %i.dl
  %i.dp = fmul <4 x float> %broadcast.splat179, %i.dn
  %i.dq = fadd <4 x float> %i.dj, %i.dp
  %i.dr = fmul <4 x float> %i.dq, splat (float 5.000000e-01) ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %index
  %i.dt = shufflevector <4 x float> %i.di, <4 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.du = shufflevector <4 x float> %i.do, <4 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dt, <8 x float> %i.du, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ds, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.dv = icmp eq i64 %index.next, 32
  br i1 %i.dv, label %.critedge.us, label %vector.body, !llvm.loop !849

.critedge.us:                                     ; preds = %vector.body
  %i.dw = zext i16 %i.cr to i32
  %i.dx = add nsw i32 %i.dw, -32
  %i.dy = sdiv i32 %i.dx, 2
  %i.dz = add nsw i32 %i.dy, %i.cs
  %i.ea = zext i16 %i.cp to i32                   ; 2 uses
  %i.eb = add nuw nsw i32 %i.ea, 32
  %i.ec = uitofp nneg i32 %i.eb to float
  %i.ed = fmul float %i.cx, %i.ec
  %i.ee = insertelement <2 x i32> poison, i32 %i.dz, i64 0
  %i.ef = add nuw nsw i32 %i.ea, 33
  %i.eg = uitofp nneg i32 %i.ef to float
  %i.eh = fmul float %i.cx, %i.eg
  %i.ei = fadd float %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ek = shufflevector <2 x i32> %i.ee, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.el = add <4 x i32> %i.ek, <i32 -1, i32 undef, i32 33, i32 undef>
  %i.em = sitofp <4 x i32> %i.el to <4 x float>
  %i.en = insertelement <4 x float> %i.em, float %i.ei, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ep = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, float %i.cw, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.er = fmul <4 x float> %i.eo, %i.eq
  store <4 x float> %i.er, ptr %i.ej, align 8, !tbaa !29
  br label %.split103.us

.split:                                           ; preds = %.split.preheader, %.critedge
  %indvars.iv115 = phi i32 [ %i.by, %.split.preheader ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.critedge ] ; 11 uses
  %i.es = shl nuw nsw i64 %indvar, 2
  %i.et = sub nsw i64 %i.ch, %indvar              ; 3 uses
  %i.eu = trunc nsw i64 %i.et to i32
  %i.ev = sdiv i32 %i.eu, 2                       ; 10 uses
  %i.ew = trunc nuw nsw i64 %indvar to i32
  %i.ex = add i32 %i.ev, %i.ew
  %i.ey = sub i32 %i.by, %i.ex                    ; 3 uses
  %i.ez = load i32, ptr %i.cd, align 8, !tbaa !310
  %.pre = add nuw nsw i64 %indvar, %i.ci          ; 3 uses
  switch i32 %i.ez, label %.split..critedge_crit_edge [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre134 = trunc i64 %.pre to i32
  br label %.critedge

bb.k:                                             ; preds = %.split
  %i.fa = load ptr, ptr %i.ce, align 8, !tbaa !309
  %i.fb = load i32, ptr %i.cf, align 4, !tbaa !312
  %i.fc = trunc i64 %.pre to i32                  ; 3 uses
  %i.fd = mul i32 %i.fb, %i.fc
  %i.fe = add i32 %i.fd, %i.bz
  %i.ff = load i32, ptr %i.cg, align 4, !tbaa !314
  %i.fg = mul i32 %i.fe, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.fh  ; 3 uses
  %i.fj = icmp sgt i64 %i.et, 1
  br i1 %i.fj, label %.lr.ph95.preheader, label %.preheader85

.lr.ph95.preheader:                               ; preds = %bb.k
  %i.fk = add nsw i32 %i.ev, -1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, i8 0, i64 %i.fm, i1 false), !tbaa !50
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph95.preheader, %bb.k
  %.not105 = icmp eq i64 %indvar, 0
  br i1 %.not105, label %.preheader, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader85
  %i.fn = sext i32 %i.ev to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fi, i64 %i.fn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fo, i8 -1, i64 %indvar, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph97, %.preheader85
  %i.fp = icmp sgt i32 %i.ey, 0
  br i1 %i.fp, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.preheader
  %i.fq = sext i32 %i.ev to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fi, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvar
  %i.ft = zext nneg i32 %i.ey to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %i.ft, i1 false), !tbaa !50
  br label %.critedge

bb.l:                                             ; preds = %.split
  %i.fu = load ptr, ptr %i.ce, align 8, !tbaa !309
  %i.fv = load i32, ptr %i.cf, align 4, !tbaa !312
  %i.fw = trunc i64 %.pre to i32                  ; 4 uses
  %i.fx = mul nsw i32 %i.fv, %i.fw
  %i.fy = add nsw i32 %i.fx, %i.bz
  %i.fz = load i32, ptr %i.cg, align 4, !tbaa !314
  %i.ga = mul nsw i32 %i.fy, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fu, i64 %i.gb ; 4 uses
  %i.gd = icmp sgt i64 %i.et, 1
  br i1 %i.gd, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %i.ev to i64        ; 3 uses
  %min.iters.check191 = icmp ult i32 %i.ev, 8
  br i1 %min.iters.check191, label %.lr.ph.preheader200, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.preheader
  %n.vec193 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next196, %vector.body194 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index195 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.ge, align 4, !tbaa !259
  store <4 x i32> splat (i32 16777215), ptr %i.gf, align 4, !tbaa !259
  %index.next196 = add nuw i64 %index195, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next196, %n.vec193
  br i1 %i.gg, label %middle.block197, label %vector.body194, !llvm.loop !850

middle.block197:                                  ; preds = %vector.body194
  %cmp.n198 = icmp eq i64 %n.vec193, %wide.trip.count
  br i1 %cmp.n198, label %.preheader88, label %.lr.ph.preheader200

.lr.ph.preheader200:                              ; preds = %.lr.ph.preheader, %middle.block197
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec193, %middle.block197 ]
  br label %.lr.ph

.preheader88:                                     ; preds = %.lr.ph, %middle.block197, %bb.l
  %.not104 = icmp eq i64 %indvar, 0
  br i1 %.not104, label %.preheader86, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader88
  %i.gh = sext i32 %i.ev to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gh
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gi, i8 -1, i64 %i.es, i1 false), !tbaa !259
  br label %.preheader86

.lr.ph:                                           ; preds = %.lr.ph.preheader200, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader200 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  store i32 16777215, ptr %i.gj, align 4, !tbaa !259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !851

.preheader86:                                     ; preds = %.lr.ph91, %.preheader88
  %i.gk = icmp sgt i32 %i.ey, 0
  br i1 %i.gk, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader86
  %i.gl = sext i32 %i.ev to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvar ; 2 uses
  %i.go = sub i32 %indvars.iv115, %i.ev           ; 2 uses
  %wide.trip.count117 = zext i32 %i.go to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.go, 8
  br i1 %min.iters.check, label %scalar.ph184.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph93
  %n.vec = and i64 %wide.trip.count117, 4294967288 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph185
  %index187 = phi i64 [ 0, %vector.ph185 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index187 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gp, align 4, !tbaa !259
  store <4 x i32> splat (i32 16777215), ptr %i.gq, align 4, !tbaa !259
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next188, %n.vec
  br i1 %i.gr, label %middle.block189, label %vector.body186, !llvm.loop !852

middle.block189:                                  ; preds = %vector.body186
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count117
  br i1 %cmp.n, label %.critedge, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %.lr.ph93, %middle.block189
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph93 ], [ %n.vec, %middle.block189 ]
  br label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %scalar.ph184 ], [ %indvars.iv112.ph, %scalar.ph184.preheader ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv112
  store i32 16777215, ptr %i.gs, align 4, !tbaa !259
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count117
  br i1 %exitcond118.not, label %.critedge, label %scalar.ph184, !llvm.loop !853

.critedge:                                        ; preds = %scalar.ph184, %middle.block189, %.split..critedge_crit_edge, %.lr.ph99, %.preheader86, %.preheader
  %.pre-phi = phi i32 [ %i.fc, %.preheader ], [ %.pre134, %.split..critedge_crit_edge ], [ %i.fc, %.lr.ph99 ], [ %i.fw, %.preheader86 ], [ %i.fw, %middle.block189 ], [ %i.fw, %scalar.ph184 ] ; 2 uses
  %i.gt = add nsw i32 %i.ev, %i.bz                ; 2 uses
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = uitofp nneg i32 %.pre-phi to float
  %i.gx = load float, ptr %i.ca, align 4, !tbaa !237 ; 2 uses
end_hunk_0
