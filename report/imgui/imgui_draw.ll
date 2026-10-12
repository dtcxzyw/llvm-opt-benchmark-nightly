Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL34ImFontAtlasBuildUpdateTexDataLinesP11ImFontAtlas:bb.a
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
  %i.cj = shl i32 %i.q, 12
  %i.ck = ashr exact i32 %i.cj, 12
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cl ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !440
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !441 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !442 ; 2 uses
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
  %invariant.op = add nsw <4 x i32> %broadcast.splat, splat (i32 -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split.us
  %index = phi i64 [ 0, %.split.us ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.split.us ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.da = sub nsw <4 x i64> %broadcast.splat181, %vec.ind
  %i.db = trunc nsw <4 x i64> %i.da to <4 x i32>
  %i.dc = sdiv <4 x i32> %i.db, splat (i32 2)     ; 2 uses
  %i.dd = add nsw <4 x i32> %i.dc, %broadcast.splat
  %.reass = add nsw <4 x i32> %i.dc, %invariant.op
  %i.de = sitofp <4 x i32> %.reass to <4 x float>
  %i.df = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat183
  %i.dg = trunc <4 x i64> %i.df to <4 x i32>      ; 2 uses
  %i.dh = uitofp nneg <4 x i32> %i.dg to <4 x float>
  %i.di = fmul <4 x float> %broadcast.splat177, %i.de
  %i.dj = fmul <4 x float> %broadcast.splat179, %i.dh
  %i.dk = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dl = add <4 x i32> %i.dk, splat (i32 1)
  %i.dm = add <4 x i32> %i.dd, %i.dl
  %i.dn = sitofp <4 x i32> %i.dm to <4 x float>
  %i.do = add <4 x i32> %i.dg, splat (i32 1)
  %i.dp = uitofp nneg <4 x i32> %i.do to <4 x float>
  %i.dq = fmul <4 x float> %broadcast.splat177, %i.dn
  %i.dr = fmul <4 x float> %broadcast.splat179, %i.dp
  %i.ds = fadd <4 x float> %i.dj, %i.dr
  %i.dt = fmul <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %index
  %i.dv = shufflevector <4 x float> %i.di, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <4 x float> %i.dq, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dv, <8 x float> %i.dw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.du, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.dx = icmp eq i64 %index.next, 32
  br i1 %i.dx, label %.critedge.us, label %vector.body, !llvm.loop !852

.critedge.us:                                     ; preds = %vector.body
  %i.dy = zext i16 %i.cr to i32
  %i.dz = add nsw i32 %i.dy, -32
  %i.ea = sdiv i32 %i.dz, 2
  %i.eb = add nsw i32 %i.ea, %i.cs
  %i.ec = zext i16 %i.cp to i32                   ; 2 uses
  %i.ed = add nuw nsw i32 %i.ec, 32
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = fmul float %i.cx, %i.ee
  %i.eg = insertelement <2 x i32> poison, i32 %i.eb, i64 0
  %i.eh = add nuw nsw i32 %i.ec, 33
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fmul float %i.cx, %i.ei
  %i.ek = fadd float %i.ef, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.em = shufflevector <2 x i32> %i.eg, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.en = add <4 x i32> %i.em, <i32 -1, i32 undef, i32 33, i32 undef>
  %i.eo = sitofp <4 x i32> %i.en to <4 x float>
  %i.ep = insertelement <4 x float> %i.eo, float %i.ek, i64 1
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.er = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, float %i.cw, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.et = fmul <4 x float> %i.eq, %i.es
  store <4 x float> %i.et, ptr %i.el, align 8, !tbaa !29
  br label %.split103.us

.split:                                           ; preds = %.split.preheader, %.critedge
  %indvars.iv115 = phi i32 [ %i.by, %.split.preheader ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.critedge ] ; 11 uses
  %i.eu = shl nuw nsw i64 %indvar, 2
  %i.ev = sub nsw i64 %i.ch, %indvar              ; 3 uses
  %i.ew = trunc nsw i64 %i.ev to i32
  %i.ex = sdiv i32 %i.ew, 2                       ; 10 uses
  %i.ey = trunc nuw nsw i64 %indvar to i32
  %i.ez = add i32 %i.ex, %i.ey
  %i.fa = sub i32 %i.by, %i.ez                    ; 3 uses
  %i.fb = load i32, ptr %i.cd, align 8, !tbaa !309
  %.pre = add nuw nsw i64 %indvar, %i.ci          ; 3 uses
  switch i32 %i.fb, label %.split..critedge_crit_edge [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre134 = trunc i64 %.pre to i32
  br label %.critedge

bb.k:                                             ; preds = %.split
  %i.fc = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.fd = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.fe = trunc i64 %.pre to i32                  ; 3 uses
  %i.ff = mul i32 %i.fd, %i.fe
  %i.fg = add i32 %i.ff, %i.bz
  %i.fh = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.fi = mul i32 %i.fg, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.fc, i64 %i.fj  ; 3 uses
  %i.fl = icmp sgt i64 %i.ev, 1
  br i1 %i.fl, label %.lr.ph95.preheader, label %.preheader85

.lr.ph95.preheader:                               ; preds = %bb.k
  %i.fm = add nsw i32 %i.ex, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, i8 0, i64 %i.fo, i1 false), !tbaa !50
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph95.preheader, %bb.k
  %.not105 = icmp eq i64 %indvar, 0
  br i1 %.not105, label %.preheader, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader85
  %i.fp = sext i32 %i.ex to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 %i.fp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fq, i8 -1, i64 %indvar, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph97, %.preheader85
  %i.fr = icmp sgt i32 %i.fa, 0
  br i1 %i.fr, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.preheader
  %i.fs = sext i32 %i.ex to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fk, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvar
  %i.fv = zext nneg i32 %i.fa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %i.fv, i1 false), !tbaa !50
  br label %.critedge

bb.l:                                             ; preds = %.split
  %i.fw = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.fx = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.fy = trunc i64 %.pre to i32                  ; 4 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = add nsw i32 %i.fz, %i.bz
  %i.gb = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.gc = mul nsw i32 %i.ga, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fw, i64 %i.gd ; 4 uses
  %i.gf = icmp sgt i64 %i.ev, 1
  br i1 %i.gf, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %i.ex to i64        ; 3 uses
  %min.iters.check191 = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check191, label %.lr.ph.preheader200, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.preheader
  %n.vec193 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next196, %vector.body194 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index195 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gg, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.gh, align 4, !tbaa !258
  %index.next196 = add nuw i64 %index195, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next196, %n.vec193
  br i1 %i.gi, label %middle.block197, label %vector.body194, !llvm.loop !853

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
  %i.gj = sext i32 %i.ex to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 -1, i64 %i.eu, i1 false), !tbaa !258
  br label %.preheader86

.lr.ph:                                           ; preds = %.lr.ph.preheader200, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader200 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv
  store i32 16777215, ptr %i.gl, align 4, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !854

.preheader86:                                     ; preds = %.lr.ph91, %.preheader88
  %i.gm = icmp sgt i32 %i.fa, 0
  br i1 %i.gm, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader86
  %i.gn = sext i32 %i.ex to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvar ; 2 uses
  %i.gq = sub i32 %indvars.iv115, %i.ex           ; 2 uses
  %wide.trip.count117 = zext i32 %i.gq to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.gq, 8
  br i1 %min.iters.check, label %scalar.ph184.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph93
  %n.vec = and i64 %wide.trip.count117, 4294967288 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph185
  %index187 = phi i64 [ 0, %vector.ph185 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index187 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gr, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.gs, align 4, !tbaa !258
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next188, %n.vec
  br i1 %i.gt, label %middle.block189, label %vector.body186, !llvm.loop !855

middle.block189:                                  ; preds = %vector.body186
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count117
  br i1 %cmp.n, label %.critedge, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %.lr.ph93, %middle.block189
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph93 ], [ %n.vec, %middle.block189 ]
  br label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %scalar.ph184 ], [ %indvars.iv112.ph, %scalar.ph184.preheader ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv112
  store i32 16777215, ptr %i.gu, align 4, !tbaa !258
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count117
  br i1 %exitcond118.not, label %.critedge, label %scalar.ph184, !llvm.loop !856

.critedge:                                        ; preds = %scalar.ph184, %middle.block189, %.split..critedge_crit_edge, %.lr.ph99, %.preheader86, %.preheader
  %.pre-phi = phi i32 [ %i.fe, %.preheader ], [ %.pre134, %.split..critedge_crit_edge ], [ %i.fe, %.lr.ph99 ], [ %i.fy, %.preheader86 ], [ %i.fy, %middle.block189 ], [ %i.fy, %scalar.ph184 ] ; 2 uses
  %i.gv = add nsw i32 %i.ex, %i.bz                ; 2 uses
  %i.gw = add nsw i32 %i.gv, -1
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = uitofp nneg i32 %.pre-phi to float
  %i.gz = load float, ptr %i.ca, align 4, !tbaa !237 ; 2 uses
  %i.ha = fmul float %i.gz, %i.gx
  %i.hb = load float, ptr %i.cb, align 8, !tbaa !238 ; 2 uses
  %i.hc = fmul float %i.hb, %i.gy
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 3 uses
  %i.hd = trunc nuw nsw i64 %indvar.next to i32
  %i.he = add i32 %i.gv, %i.hd
  %i.hf = sitofp i32 %i.he to float
  %i.hg = add i32 %.pre-phi, 1
  %i.hh = uitofp nneg i32 %i.hg to float
  %i.hi = fmul float %i.gz, %i.hf
  %i.hj = fmul float %i.hb, %i.hh
  %i.hk = fadd float %i.hc, %i.hj
  %i.hl = fmul float %i.hk, 5.000000e-01          ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvar ; 4 uses
  store float %i.ha, ptr %i.hm, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store float %i.hl, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store float %i.hi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store float %i.hl, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !29
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
end_hunk_0
