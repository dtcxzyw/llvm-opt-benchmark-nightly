Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 351
begin_hunk_0_@_Z22ImFontAtlasTextureGrowP11ImFontAtlasii:bb.a
  %i.v = add i32 %i.u, %i.t                       ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v                        ; 2 uses
  %i.y = ashr i32 %i.x, 2
  %i.z = or i32 %i.y, %i.x                        ; 2 uses
  %i.aa = ashr i32 %i.z, 4
  %i.ab = or i32 %i.aa, %i.z                      ; 2 uses
  %i.ac = ashr i32 %i.ab, 8
  %i.ad = or i32 %i.ac, %i.ab                     ; 2 uses
  %i.ae = ashr i32 %i.ad, 16
  %i.af = or i32 %i.ae, %i.ad
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 %i.ag) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !455
  %i.ak = add i32 %i.u, %i.aj                     ; 2 uses
  %i.al = ashr i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak                     ; 2 uses
  %i.an = ashr i32 %i.am, 2
  %i.ao = or i32 %i.an, %i.am                     ; 2 uses
  %i.ap = ashr i32 %i.ao, 4
  %i.aq = or i32 %i.ap, %i.ao                     ; 2 uses
  %i.ar = ashr i32 %i.aq, 8
  %i.as = or i32 %i.ar, %i.aq                     ; 2 uses
  %i.at = ashr i32 %i.as, 16
  %i.au = or i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 1
  %i.aw = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.av) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !743 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !744
  %i.bb = icmp slt i32 %i.ah, %i.ay
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ba)
  %i.bd = select i1 %i.bb, i32 %i.ay, i32 %i.bc   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !745 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !260
  %i.bi = icmp slt i32 %i.aw, %i.bf
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bh)
  %i.bk = select i1 %i.bi, i32 %i.bf, i32 %i.bj   ; 2 uses
  %i.bl = icmp eq i32 %i.bd, %.032
  %i.bm = icmp eq i32 %i.bk, %.0
  %or.cond = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z24ImFontAtlasTextureRepackP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef %i.bd, i32 noundef %i.bk)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL34ImFontAtlasBuildUpdateLinesTexDataP11ImFontAtlas(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !485
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.split103.us

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !439  ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 1048575                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !473
  %.not.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !448
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = shl i32 %i.q, 2
  %i.s = ashr i32 %i.r, 22
  %i.t = lshr i32 %i.h, 20
  %i.u = and i32 %i.t, 1023
  %.not16.i.i = icmp ne i32 %i.s, %i.u
  %i.v = and i32 %i.q, 1073741824
  %.not17.i.i = icmp eq i32 %i.v, 0
  %or.cond30.i = or i1 %.not17.i.i, %.not16.i.i
  br i1 %or.cond30.i, label %thread-pre-split, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !267  ; 2 uses
  %.not161.a = icmp eq ptr %i.x, null
  br i1 %.not161.a, label %thread-pre-split, label %.split.us

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %bb.c, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.y = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef 34, i32 noundef 33, ptr noundef null), !inline_history !496 ; 4 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.split.preheader, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  %i.aa = and i32 %i.y, 1048575                   ; 3 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !180 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !497
  %.pre.i147 = load ptr, ptr %i.e, align 8, !tbaa !180
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %.pre.i147, %bb.f ], [ %i.ab, %bb.e ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !473
  %.not.i.i138 = icmp slt i32 %i.aa, %i.af
  br i1 %.not.i.i138, label %bb.h, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !448
  %i.ai = zext nneg i32 %i.aa to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.al = shl i32 %i.ak, 2
  %i.am = ashr i32 %i.al, 22
  %i.an = lshr i32 %i.y, 20
  %i.ao = and i32 %i.an, 1023
  %.not16.i.i139 = icmp ne i32 %i.am, %i.ao
  %i.ap = and i32 %i.ak, 1073741824
  %.not17.i.i140 = icmp eq i32 %i.ap, 0
  %or.cond30.i141 = or i1 %.not17.i.i140, %.not16.i.i139
  br i1 %or.cond30.i141, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !267 ; 2 uses
  %.not162 = icmp eq ptr %i.ar, null
  br i1 %.not162, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %bb.i

bb.i:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142
  %i.as = shl i32 %i.ak, 12
  %i.at = ashr exact i32 %i.as, 12
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.au ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !449
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !450
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !451
  br label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148: ; preds = %bb.g, %bb.h, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142, %bb.i
  %.sroa.0.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.aw, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.7.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ay, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ba, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !263, !range !189, !noundef !190
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %.split.preheader

bb.j:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !448
  %i.bg = zext nneg i32 %i.aa to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = shl i32 %i.bi, 12
  %i.bk = ashr exact i32 %i.bj, 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !267
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.bq = load i16, ptr %i.bo, align 2, !tbaa !449
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !450
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !451
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !452
  %i.ca = zext i16 %i.bz to i32
  tail call void @_Z34ImFontAtlasTextureBlockQueueUploadP11ImFontAtlasP13ImTextureDataiiii(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %i.bp, i32 noundef %i.br, i32 noundef %i.bu, i32 noundef %i.bx, i32 noundef %i.ca), !inline_history !496
  br label %.split.preheader

.split.preheader:                                 ; preds = %thread-pre-split, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, %bb.j
  %.sroa.0.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.0.2, %bb.j ], [ %.sroa.0.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.7.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.7.2, %bb.j ], [ %.sroa.7.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.11.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.11.2, %bb.j ], [ %.sroa.11.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ] ; 2 uses
  store i32 %i.y, ptr %i.g, align 8, !tbaa !439
  %1 = zext i16 %.sroa.11.0 to i32                ; 2 uses
  %i.cb = zext i16 %.sroa.0.0 to i32              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.cj = zext i16 %.sroa.11.0 to i64
  %i.ck = zext i16 %.sroa.7.0 to i64
  br label %.split

.split.us:                                        ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.cl = shl i32 %i.q, 12
  %i.cm = ashr exact i32 %i.cl, 12
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cn ; 3 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !449
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !450 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !451 ; 2 uses
  %i.cu = zext i16 %i.cp to i32                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cy = load float, ptr %i.cv, align 4, !tbaa !129 ; 2 uses
  %i.cz = load float, ptr %i.cw, align 8, !tbaa !130 ; 3 uses
  %i.da = zext i16 %i.ct to i64
  %i.db = zext i16 %i.cr to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert180 = insertelement <4 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat181 = shufflevector <4 x i64> %broadcast.splatinsert180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i64> poison, i64 %i.db, i64 0
  %broadcast.splat183 = shufflevector <4 x i64> %broadcast.splatinsert182, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = add nsw <4 x i32> %broadcast.splat, splat (i32 -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split.us
  %index = phi i64 [ 0, %.split.us ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.split.us ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.dc = sub nsw <4 x i64> %broadcast.splat181, %vec.ind
  %i.dd = trunc nsw <4 x i64> %i.dc to <4 x i32>
  %i.de = sdiv <4 x i32> %i.dd, splat (i32 2)     ; 2 uses
  %i.df = add nsw <4 x i32> %i.de, %broadcast.splat
  %.reass = add nsw <4 x i32> %i.de, %invariant.op
  %i.dg = sitofp <4 x i32> %.reass to <4 x float>
  %i.dh = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat183
  %i.di = trunc <4 x i64> %i.dh to <4 x i32>      ; 2 uses
  %i.dj = uitofp nneg <4 x i32> %i.di to <4 x float>
  %i.dk = fmul <4 x float> %broadcast.splat177, %i.dg
  %i.dl = fmul <4 x float> %broadcast.splat179, %i.dj
  %i.dm = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dn = add <4 x i32> %i.dm, splat (i32 1)
  %i.do = add <4 x i32> %i.df, %i.dn
  %i.dp = sitofp <4 x i32> %i.do to <4 x float>
  %i.dq = add <4 x i32> %i.di, splat (i32 1)
  %i.dr = uitofp nneg <4 x i32> %i.dq to <4 x float>
  %i.ds = fmul <4 x float> %broadcast.splat177, %i.dp
  %i.dt = fmul <4 x float> %broadcast.splat179, %i.dr
  %i.du = fadd <4 x float> %i.dl, %i.dt
  %i.dv = fmul <4 x float> %i.du, splat (float 5.000000e-01) ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %index
  %i.dx = shufflevector <4 x float> %i.dk, <4 x float> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dy = shufflevector <4 x float> %i.ds, <4 x float> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dx, <8 x float> %i.dy, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.dw, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.dz = icmp eq i64 %index.next, 32
  br i1 %i.dz, label %.critedge.us, label %vector.body, !llvm.loop !746

.critedge.us:                                     ; preds = %vector.body
  %i.ea = zext i16 %i.ct to i32
  %i.eb = add nsw i32 %i.ea, -32
  %i.ec = sdiv i32 %i.eb, 2
  %i.ed = add nsw i32 %i.ec, %i.cu
  %i.ee = zext i16 %i.cr to i32                   ; 2 uses
  %i.ef = add nuw nsw i32 %i.ee, 32
  %i.eg = uitofp nneg i32 %i.ef to float
  %i.eh = fmul float %i.cz, %i.eg
  %i.ei = insertelement <2 x i32> poison, i32 %i.ed, i64 0
  %i.ej = add nuw nsw i32 %i.ee, 33
  %i.ek = uitofp nneg i32 %i.ej to float
  %i.el = fmul float %i.cz, %i.ek
  %i.em = fadd float %i.eh, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eo = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ep = add <4 x i32> %i.eo, <i32 -1, i32 undef, i32 33, i32 undef>
  %i.eq = sitofp <4 x i32> %i.ep to <4 x float>
  %i.er = insertelement <4 x float> %i.eq, float %i.em, i64 1
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.et = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, float %i.cy, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ev = fmul <4 x float> %i.es, %i.eu
  store <4 x float> %i.ev, ptr %i.en, align 8, !tbaa !31
  br label %.split103.us

.split:                                           ; preds = %.split.preheader, %.critedge
  %indvars.iv115 = phi i32 [ %1, %.split.preheader ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.critedge ] ; 11 uses
  %i.ew = shl nuw nsw i64 %indvar, 2
  %i.ex = sub nsw i64 %i.cj, %indvar              ; 3 uses
  %i.ey = trunc nsw i64 %i.ex to i32
  %i.ez = sdiv i32 %i.ey, 2                       ; 10 uses
  %2 = trunc nuw nsw i64 %indvar to i32
  %3 = add i32 %i.ez, %2
  %i.fa = sub i32 %1, %3                          ; 3 uses
  %i.fb = load i32, ptr %i.cf, align 8, !tbaa !255
  %.pre = add nuw nsw i64 %indvar, %i.ck          ; 3 uses
  switch i32 %i.fb, label %.split..critedge_crit_edge [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre134 = trunc i64 %.pre to i32
  br label %.critedge

bb.k:                                             ; preds = %.split
  %i.fc = load ptr, ptr %i.cg, align 8, !tbaa !254
  %i.fd = load i32, ptr %i.ch, align 4, !tbaa !256
  %i.fe = trunc i64 %.pre to i32                  ; 3 uses
  %i.ff = mul i32 %i.fd, %i.fe
  %i.fg = add i32 %i.ff, %i.cb
  %i.fh = load i32, ptr %i.ci, align 4, !tbaa !258
  %i.fi = mul i32 %i.fg, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.fc, i64 %i.fj  ; 3 uses
  %i.fl = icmp sgt i64 %i.ex, 1
  br i1 %i.fl, label %.lr.ph95.preheader, label %.preheader85.a

.lr.ph95.preheader:                               ; preds = %bb.k
  %i.fm = add nsw i32 %i.ez, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, i8 0, i64 %i.fo, i1 false), !tbaa !53
  br label %.preheader85.a

.preheader85.a:                                   ; preds = %.lr.ph95.preheader, %bb.k
  %.not105 = icmp eq i64 %indvar, 0
  br i1 %.not105, label %.preheader, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader85.a
  %i.fp = sext i32 %i.ez to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 %i.fp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fq, i8 -1, i64 %indvar, i1 false), !tbaa !53
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph97, %.preheader85.a
  %i.fr = icmp sgt i32 %i.fa, 0
  br i1 %i.fr, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.preheader
  %i.fs = sext i32 %i.ez to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fk, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvar
  %i.fv = zext nneg i32 %i.fa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %i.fv, i1 false), !tbaa !53
  br label %.critedge

bb.l:                                             ; preds = %.split
  %i.fw = load ptr, ptr %i.cg, align 8, !tbaa !254
  %i.fx = load i32, ptr %i.ch, align 4, !tbaa !256
  %i.fy = trunc i64 %.pre to i32                  ; 4 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = add nsw i32 %i.fz, %i.cb
  %i.gb = load i32, ptr %i.ci, align 4, !tbaa !258
  %i.gc = mul nsw i32 %i.ga, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fw, i64 %i.gd ; 4 uses
  %i.gf = icmp sgt i64 %i.ex, 1
  br i1 %i.gf, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %i.ez to i64        ; 3 uses
  %min.iters.check191 = icmp ult i32 %i.ez, 8
  br i1 %min.iters.check191, label %.lr.ph.preheader200, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.preheader
  %n.vec193 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next196, %vector.body194 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index195 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gg, align 4, !tbaa !205
  store <4 x i32> splat (i32 16777215), ptr %i.gh, align 4, !tbaa !205
  %index.next196 = add nuw i64 %index195, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next196, %n.vec193
  br i1 %i.gi, label %middle.block197, label %vector.body194, !llvm.loop !747

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
  %i.gj = sext i32 %i.ez to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 -1, i64 %i.ew, i1 false), !tbaa !205
  br label %.preheader86

.lr.ph:                                           ; preds = %.lr.ph.preheader200, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader200 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv
  store i32 16777215, ptr %i.gl, align 4, !tbaa !205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !748

.preheader86:                                     ; preds = %.lr.ph91, %.preheader88
  %i.gm = icmp sgt i32 %i.fa, 0
  br i1 %i.gm, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader86
  %i.gn = sext i32 %i.ez to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvar ; 2 uses
  %i.gq = sub i32 %indvars.iv115, %i.ez           ; 2 uses
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
  store <4 x i32> splat (i32 16777215), ptr %i.gr, align 4, !tbaa !205
  store <4 x i32> splat (i32 16777215), ptr %i.gs, align 4, !tbaa !205
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next188, %n.vec
  br i1 %i.gt, label %middle.block189, label %vector.body186, !llvm.loop !749

middle.block189:                                  ; preds = %vector.body186
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count117
  br i1 %cmp.n, label %.critedge, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %.lr.ph93, %middle.block189
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph93 ], [ %n.vec, %middle.block189 ]
  br label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %scalar.ph184 ], [ %indvars.iv112.ph, %scalar.ph184.preheader ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv112
  store i32 16777215, ptr %i.gu, align 4, !tbaa !205
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count117
  br i1 %exitcond118.not, label %.critedge, label %scalar.ph184, !llvm.loop !750

.critedge:                                        ; preds = %scalar.ph184, %middle.block189, %.split..critedge_crit_edge, %.lr.ph99, %.preheader86, %.preheader
  %.pre-phi = phi i32 [ %i.fe, %.preheader ], [ %.pre134, %.split..critedge_crit_edge ], [ %i.fe, %.lr.ph99 ], [ %i.fy, %.preheader86 ], [ %i.fy, %middle.block189 ], [ %i.fy, %scalar.ph184 ] ; 2 uses
  %i.gv = add nsw i32 %i.ez, %i.cb                ; 2 uses
  %i.gw = add nsw i32 %i.gv, -1
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = uitofp nneg i32 %.pre-phi to float
  %i.gz = load float, ptr %i.cc, align 4, !tbaa !129 ; 2 uses
  %i.ha = fmul float %i.gz, %i.gx
  %i.hb = load float, ptr %i.cd, align 8, !tbaa !130 ; 2 uses
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
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvar ; 4 uses
  store float %i.ha, ptr %i.hm, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store float %i.hl, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store float %i.hi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store float %i.hl, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !31
  %indvars.iv.next116 = add nsw i32 %indvars.iv115, -1
  %exitcond129.not = icmp eq i64 %indvar.next, 33
  br i1 %exitcond129.not, label %.split103.us, label %.split, !llvm.loop !751

.split103.us:                                     ; preds = %.critedge, %.critedge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL34ImFontAtlasBuildUpdateBasicTexDataP11ImFontAtlas(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !485
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 245, i32 2
  %spec.select56 = select i1 %.not, i32 27, i32 2
end_hunk_0
