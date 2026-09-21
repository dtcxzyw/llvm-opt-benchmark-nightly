Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_gpu?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@GPU_CreateTexture:bb.a
  store ptr %i.bh, ptr %i.bi, align 8
  %.not124 = icmp eq ptr %i.bh, null
  br i1 %.not124, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  store i8 1, ptr %i.c, align 8
  br label %bb.u

bb.t:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call ptr @SDL_CreateGPUTexture_REAL(ptr noundef %i.bk, ptr noundef nonnull %3) #10 ; 2 uses
  store ptr %i.bl, ptr %i.bi, align 8
  %.not125 = icmp eq ptr %i.bl, null
  br i1 %.not125, label %.thread138, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bm = call i32 @SDL_GetTextureProperties_REAL(ptr noundef nonnull %1) #10 ; 4 uses
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.bm, ptr noundef nonnull @.str.20, ptr noundef %i.bn) #10 ; 0 uses
  %i.bp = load i32, ptr %1, align 8               ; 2 uses
  switch i32 %i.bp, label %bb.ac [
    i32 842094169, label %bb.v
    i32 1448433993, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 1, ptr %i.bq, align 8
  %i.br = load <2 x i32>, ptr %i.bc, align 4
  %i.bs = add <2 x i32> %i.br, splat (i32 1)
  %i.bt = lshr <2 x i32> %i.bs, splat (i32 1)
  store <2 x i32> %i.bt, ptr %i.bc, align 4
  %i.bu = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %2, ptr noundef nonnull @.str.21, ptr noundef null) #10 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8
  %.not126 = icmp eq ptr %i.bu, null
  br i1 %.not126, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  store i8 1, ptr %i.bw, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call ptr @SDL_CreateGPUTexture_REAL(ptr noundef %i.by, ptr noundef nonnull %3) #10 ; 3 uses
  store ptr %i.bz, ptr %i.bv, align 8
  %.not127 = icmp eq ptr %i.bz, null
  br i1 %.not127, label %.thread138, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = phi ptr [ %i.bz, %bb.x ], [ %i.bu, %bb.w ]
  %i.cb = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.bm, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.ca) #10 ; 0 uses
  %i.cc = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %2, ptr noundef nonnull @.str.23, ptr noundef null) #10 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8
  %.not128 = icmp eq ptr %i.cc, null
  br i1 %.not128, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  store i8 1, ptr %i.ce, align 2
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr @SDL_CreateGPUTexture_REAL(ptr noundef %i.cg, ptr noundef nonnull %3) #10 ; 2 uses
  store ptr %i.ch, ptr %i.cd, align 8
  %.not129 = icmp eq ptr %i.ch, null
  br i1 %.not129, label %.thread138, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ci = load ptr, ptr %i.bv, align 8
  %i.cj = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.bm, ptr noundef nonnull @.str.24, ptr noundef %i.ci) #10 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = load i32, ptr %i.bb, align 4
  %i.cn = load i32, ptr %i.bd, align 8
  %i.co = call ptr @SDL_GetYCbCRtoRGBConversionMatrix(i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 8) #10 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.co, ptr %i.cp, align 8
  %.not130 = icmp eq ptr %i.co, null
  br i1 %.not130, label %.thread138.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ab
  %.pr = load i32, ptr %1, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %bb.u
  %i.cq = phi i32 [ %.pr, %thread-pre-split ], [ %i.bp, %bb.u ]
  switch i32 %i.cq, label %.thread138 [
    i32 842094158, label %bb.ad
    i32 825382478, label %bb.ad
    i32 808530000, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 1, ptr %i.cr, align 8
  %i.cs = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %2, ptr noundef nonnull @.str.26, ptr noundef null) #10 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8
  %.not131 = icmp eq ptr %i.cs, null
  br i1 %.not131, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  store i8 1, ptr %i.cu, align 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cv = load <2 x i32>, ptr %i.bc, align 4
  %i.cw = add <2 x i32> %i.cv, splat (i32 1)
  %i.cx = lshr <2 x i32> %i.cw, splat (i32 1)
  store <2 x i32> %i.cx, ptr %i.bc, align 4
  %i.cy = load i32, ptr %1, align 8
  %i.cz = icmp eq i32 %i.cy, 808530000
  %. = select i1 %i.cz, i32 6, i32 3
  store i32 %., ptr %i.ax, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call ptr @SDL_CreateGPUTexture_REAL(ptr noundef %i.db, ptr noundef nonnull %3) #10 ; 3 uses
  store ptr %i.dc, ptr %i.ct, align 8
  %.not132 = icmp eq ptr %i.dc, null
  br i1 %.not132, label %.thread138, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dd = phi ptr [ %i.dc, %bb.af ], [ %i.cs, %bb.ae ]
  %i.de = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.bm, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.dd) #10 ; 0 uses
  %i.df = load i32, ptr %1, align 8
  %cond1 = icmp eq i32 %i.df, 808530000
  %.134 = select i1 %cond1, i32 10, i32 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = load i32, ptr %i.bb, align 4
  %i.dj = load i32, ptr %i.bd, align 8
  %i.dk = call ptr @SDL_GetYCbCRtoRGBConversionMatrix(i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %.134) #10 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.dk, ptr %i.dl, align 8
  %.not133 = icmp eq ptr %i.dk, null
  br i1 %.not133, label %.thread138.sink.split, label %.thread138

.thread138.sink.split:                            ; preds = %bb.ag, %bb.ab
  %i.dm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #10
  br label %.thread138

.thread138:                                       ; preds = %.thread138.sink.split, %bb.af, %bb.ac, %bb.ag, %bb.x, %bb.aa, %bb.t
  %.4 = phi i1 [ false, %bb.t ], [ false, %bb.aa ], [ true, %bb.ac ], [ false, %bb.af ], [ false, %bb.x ], [ true, %bb.ag ], [ %i.dm, %.thread138.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.r, %bb.a, %.thread138, %bb.i
  %.5 = phi i1 [ %i.m, %bb.i ], [ %.4, %.thread138 ], [ false, %bb.r ], [ false, %bb.a ]
  ret i1 %.5
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @GPU_UpdateTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @SDL_BeginGPUCopyPass_REAL(ptr noundef %i.f) #10 ; 5 uses
  %i.h = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  %.mask = and i32 %i.h, -268435456
  %.not99 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not99
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %bb.c [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b
  br label %switch.edge

bb.d:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.b, %bb.b, %bb.b, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ 2, %bb.b ], [ 2, %bb.b ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %i.l, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %3, i32 noundef %4) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.v = load i8, ptr %i.u, align 8, !range !3, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.edge
  %i.x = shl nuw nsw i32 %i.j, 1
  %i.y = load i32, ptr %1, align 8
  %i.z = icmp eq i32 %i.y, 808530000
  %i.aa = add nsw i32 %4, 3
  %i.ab = and i32 %i.aa, -4
  %i.ac = add nsw i32 %4, 1
  %i.ad = and i32 %i.ac, -2
  %.0 = select i1 %i.z, i32 %i.ab, i32 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i32, ptr %i.r, align 4
  %i.ah = load <4 x i32>, ptr %2, align 4
  %i.ai = mul nsw i32 %i.ag, %4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj
  %i.al = add nsw <4 x i32> %i.ah, <i32 0, i32 0, i32 1, i32 1>
  %i.am = sdiv <4 x i32> %i.al, splat (i32 2)     ; 4 uses
  %i.an = extractelement <4 x i32> %i.am, i64 0
  %i.ao = extractelement <4 x i32> %i.am, i64 1
  %i.ap = extractelement <4 x i32> %i.am, i64 2
  %i.aq = extractelement <4 x i32> %i.am, i64 3
  %i.ar = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %i.af, i32 noundef %i.x, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.ak, i32 noundef %.0)
  %i.as = and i1 %i.t, %i.ar
  br label %bb.h

bb.f:                                             ; preds = %switch.edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = load i8, ptr %i.at, align 8, !range !3, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = add nsw i32 %4, 1
  %i.ax = sdiv i32 %i.aw, 2                       ; 3 uses
  %i.ay = load i32, ptr %i.r, align 4             ; 2 uses
  %i.az = mul nsw i32 %i.ay, %4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %3, i64 %i.ba ; 2 uses
  %i.bc = add nsw i32 %i.ay, 1
  %i.bd = sdiv i32 %i.bc, 2                       ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.ax
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = load i32, ptr %1, align 8
  %i.bi = icmp eq i32 %i.bh, 842094169            ; 2 uses
  %i.bj = load i32, ptr %2, align 4
  %i.bk = sdiv i32 %i.bj, 2
  %i.bl = load i32, ptr %i.n, align 4
  %i.bm = sdiv i32 %i.bl, 2
  %i.bn = load i32, ptr %i.p, align 4
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = sdiv i32 %i.bo, 2
  %. = select i1 %i.bi, i64 80, i64 72
  %.117 = select i1 %i.bi, i64 72, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %i.br, i32 noundef %i.j, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bp, i32 noundef %i.bd, ptr noundef %i.bb, i32 noundef %i.ax)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 %.117
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i32, ptr %2, align 4
  %i.bw = sdiv i32 %i.bv, 2
  %i.bx = load i32, ptr %i.n, align 4
  %i.by = sdiv i32 %i.bx, 2
  %5 = load i32, ptr %i.p, align 4
  %6 = add nsw i32 %5, 1
  %7 = sdiv i32 %6, 2
  %8 = load i32, ptr %i.r, align 4
  %9 = add nsw i32 %8, 1
  %10 = sdiv i32 %9, 2
  %i.bz = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %i.bu, i32 noundef %i.j, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %7, i32 noundef %10, ptr noundef %i.bg, i32 noundef %i.ax)
  %i.ca = and i1 %i.bs, %i.bz
  %.097.in = and i1 %i.t, %i.ca
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1.in = phi i1 [ %i.as, %bb.e ], [ %.097.in, %bb.g ], [ %i.t, %bb.f ]
  tail call void @SDL_EndGPUCopyPass_REAL(ptr noundef %i.g) #10
  ret i1 %.1.in
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @GPU_UpdateTextureYUV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  %.mask = and i32 %i.e, -268435456
  %.not45 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not45
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.c [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b
  br label %switch.edge

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %i.e, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.b, %bb.b, %bb.b, %bb.d
  %i.g = phi i32 [ %i.f, %bb.d ], [ 2, %bb.b ], [ 2, %bb.b ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @SDL_BeginGPUCopyPass_REAL(ptr noundef %i.i) #10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.g, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %3, i32 noundef %4)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load <4 x i32>, ptr %2, align 4
  %i.x = add nsw <4 x i32> %i.w, <i32 0, i32 0, i32 1, i32 1>
  %i.y = sdiv <4 x i32> %i.x, splat (i32 2)       ; 4 uses
  %i.z = extractelement <4 x i32> %i.y, i64 0
  %i.aa = extractelement <4 x i32> %i.y, i64 1
  %i.ab = extractelement <4 x i32> %i.y, i64 2
  %i.ac = extractelement <4 x i32> %i.y, i64 3
  %i.ad = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %i.v, i32 noundef %i.g, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %5, i32 noundef %6)
  %i.ae = and i1 %i.t, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load <4 x i32>, ptr %2, align 4
  %i.ai = add nsw <4 x i32> %i.ah, <i32 0, i32 0, i32 1, i32 1>
  %i.aj = sdiv <4 x i32> %i.ai, splat (i32 2)     ; 4 uses
  %i.ak = extractelement <4 x i32> %i.aj, i64 0
  %i.al = extractelement <4 x i32> %i.aj, i64 1
  %i.am = extractelement <4 x i32> %i.aj, i64 2
  %i.an = extractelement <4 x i32> %i.aj, i64 3
  %i.ao = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %i.ag, i32 noundef %i.g, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.an, ptr noundef %7, i32 noundef %8)
  %i.ap = and i1 %i.ae, %i.ao
  tail call void @SDL_EndGPUCopyPass_REAL(ptr noundef %i.j) #10
  ret i1 %i.ap
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @GPU_UpdateTextureNV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  %.mask = and i32 %i.e, -268435456
  %.not35 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not35
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.c [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b
  br label %switch.edge

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %i.e, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.b, %bb.b, %bb.b, %bb.d
  %i.g = phi i32 [ %i.f, %bb.d ], [ 2, %bb.b ], [ 2, %bb.b ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @SDL_BeginGPUCopyPass_REAL(ptr noundef %i.i) #10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.g, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %3, i32 noundef %4)
  %i.u = shl nuw nsw i32 %i.g, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load <4 x i32>, ptr %2, align 4
  %i.y = add nsw <4 x i32> %i.x, <i32 0, i32 0, i32 1, i32 1>
  %i.z = sdiv <4 x i32> %i.y, splat (i32 2)       ; 4 uses
  %i.aa = extractelement <4 x i32> %i.z, i64 0
  %i.ab = extractelement <4 x i32> %i.z, i64 1
  %i.ac = extractelement <4 x i32> %i.z, i64 2
  %i.ad = extractelement <4 x i32> %i.z, i64 3
  %i.ae = tail call fastcc zeroext i1 @GPU_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %i.w, i32 noundef %i.u, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef %5, i32 noundef %6)
  %i.af = and i1 %i.t, %i.ae
  tail call void @SDL_EndGPUCopyPass_REAL(ptr noundef %i.j) #10
  ret i1 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @GPU_LockTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %2, align 4
  %i.k = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.k, 0
  %.mask = and i32 %i.k, -268435456
  %.not17 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not17
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.k, label %bb.c [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b
  br label %switch.edge

bb.d:                                             ; preds = %bb.a
  %i.l = and i32 %i.k, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.b, %bb.b, %bb.b, %bb.d
  %i.m = phi i32 [ %i.l, %bb.d ], [ 2, %bb.b ], [ 2, %bb.b ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %bb.b ]
  %i.n = mul nsw i32 %i.i, %i.g
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o
  %i.q = mul i32 %i.m, %i.j
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store ptr %i.s, ptr %3, align 8
  %i.t = load i32, ptr %i.h, align 8
  store i32 %i.t, ptr %4, align 4
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @GPU_UnlockTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i32, ptr %i.f, align 8
end_hunk_0
