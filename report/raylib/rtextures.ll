Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageDrawTriangle:bb.a

._crit_edge210.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.d
  %i.bj = add nsw <2 x i32> %i.bi, %i.ae
  %i.bk = add nsw i32 %.0184208, %i.be
  %i.bl = add nuw i32 %.0183209, 1
  %exitcond211.not = icmp eq i32 %.0183209, %i.bf
  br i1 %exitcond211.not, label %._crit_edge210.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %.0204 = phi i32 [ %i.bd, %.preheader ], [ %i.bs, %bb.d ] ; 3 uses
  %.0180203 = phi i32 [ %.0184208, %.preheader ], [ %i.br, %bb.d ] ; 2 uses
  %i.bm = phi <2 x i32> [ %i.bi, %.preheader ], [ %i.bq, %bb.d ] ; 3 uses
  %shift = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop229 = or <2 x i32> %i.bm, %shift
  %i.bn = extractelement <2 x i32> %foldExtExtBinop229, i64 0
  %i.bo = or i32 %i.bn, %.0180203
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %.0204, i32 noundef %.0183209, i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = add nsw <2 x i32> %i.bm, %i.af
  %i.br = add nsw i32 %.0180203, %i.bg
  %i.bs = add nuw i32 %.0204, 1
  %exitcond.not = icmp eq i32 %.0204, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #38 {
bb.a:
  %.sroa.280.0.extract.shift = lshr i32 %5, 8
  %.sroa.482.0.extract.shift = lshr i32 %5, 24
  %.sroa.2.0.extract.shift = lshr i32 %6, 8
  %.sroa.4.0.extract.shift = lshr i32 %6, 24
  %i.a = fcmp olt <2 x float> %1, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.c = fcmp olt <2 x float> %i.b, %3
  %i.d = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> %3
  %i.e = fptosi <2 x float> %i.d to <2 x i32>
  %i.f = fcmp ogt <2 x float> %1, %2
  %i.g = select <2 x i1> %i.f, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.h = fcmp ogt <2 x float> %i.g, %3
  %i.i = select <2 x i1> %i.h, <2 x float> %i.g, <2 x float> %3 ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fptosi float %i.j to i32
  %i.l = extractelement <2 x float> %i.i, i64 1
  %i.m = fptosi float %i.l to i32
  %i.n = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.e, <2 x i32> zeroinitializer) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.k) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %.0210 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.m) ; 2 uses
  %.sroa.385.0.extract.shift = lshr i32 %4, 16
  %i.s = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.t = insertelement <4 x i32> %i.s, i32 %4, i64 1
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = lshr <4 x i32> %i.u, <i32 16, i32 8, i32 0, i32 24>
  %.sroa.3.0.extract.shift = lshr i32 %6, 16
  %foldExtExtBinop = fsub <2 x float> %2, %3
  %i.w = fsub <2 x float> %2, %1                  ; 2 uses
  %i.x = fsub <2 x float> %3, %1                  ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.z = fmul <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = fcmp ogt float %i.aa, %i.ab
  %foldExtExtBinop253 = fsub <2 x float> %1, %3
  %foldExtExtBinop255 = fsub <2 x float> %3, %2
  %i.ad = shufflevector <2 x float> %foldExtExtBinop253, <2 x float> %foldExtExtBinop255, <2 x i32> <i32 1, i32 3>
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 4 uses
  %i.af = shufflevector <2 x float> %i.x, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>   ; 4 uses
  %foldExtExtBinop257 = fsub <2 x float> %1, %2
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> %foldExtExtBinop257, <2 x i32> <i32 1, i32 2>
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>   ; 2 uses
  %i.aj = shufflevector <2 x i32> %i.ae, <2 x i32> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ak = shufflevector <2 x i32> %i.ag, <2 x i32> %i.ae, <2 x i32> <i32 0, i32 3>
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = sub nsw <2 x i32> zeroinitializer, %i.ae ; 3 uses
  %i.am = sub nsw <2 x i32> zeroinitializer, %i.ag ; 3 uses
  %i.an = sub nsw <2 x i32> zeroinitializer, %i.ai
  %i.ao = shufflevector <2 x i32> %i.al, <2 x i32> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <2 x i32> %i.am, <2 x i32> %i.al, <2 x i32> <i32 0, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi <2 x i32> [ %i.am, %bb.b ], [ %i.ag, %bb.a ]
  %i.ar = phi <2 x i32> [ %i.ao, %bb.b ], [ %i.aj, %bb.a ]
  %i.as = phi <2 x i32> [ %i.ap, %bb.b ], [ %i.ak, %bb.a ]
  %i.at = phi <2 x i32> [ %i.al, %bb.b ], [ %i.ae, %bb.a ]
  %i.au = phi <2 x i32> [ %i.an, %bb.b ], [ %i.ai, %bb.a ] ; 3 uses
  %i.av = uitofp nneg <2 x i32> %i.n to <2 x float> ; 3 uses
  %i.aw = sitofp <2 x i32> %i.as to <2 x float>
  %i.ax = sitofp <2 x i32> %i.ar to <2 x float>
  %i.ay = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.az = fsub <2 x float> %i.av, %i.ay
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 3, i32 0>
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, %i.aw
  %i.bf = fadd <2 x float> %i.ba, %i.be
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>   ; 3 uses
  %i.bh = sitofp <2 x i32> %i.au to <2 x float>
  %i.bi = fsub <2 x float> %i.av, %1
  %i.bj = fmul <2 x float> %i.bi, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop259 = fadd <2 x float> %i.bj, %shift
  %i.bk = extractelement <2 x float> %foldExtExtBinop259, i64 0
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = extractelement <2 x i32> %i.bg, i64 0
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = extractelement <2 x i32> %i.bg, i64 1
  %i.bp = add i32 %i.bn, %i.bo
  %i.bq = sitofp i32 %i.bp to float
  %i.br = fdiv float 2.550000e+02, %i.bq          ; 2 uses
  %i.bs = extractelement <2 x i32> %i.n, i64 1    ; 2 uses
  %.not235 = icmp sgt i32 %i.bs, %.0210
  br i1 %.not235, label %._crit_edge240.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bt = extractelement <2 x i32> %i.n, i64 0    ; 2 uses
  %.not229230 = icmp sgt i32 %i.bt, %spec.select
  %i.bu = insertelement <4 x i32> poison, i32 %.sroa.385.0.extract.shift, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %.sroa.280.0.extract.shift, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %4, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %.sroa.482.0.extract.shift, i64 3
  %i.by = and <4 x i32> %i.bx, <i32 255, i32 255, i32 255, i32 -1>
  %i.bz = and <4 x i32> %i.v, <i32 255, i32 255, i32 255, i32 -1>
  %i.ca = insertelement <4 x i32> poison, i32 %.sroa.3.0.extract.shift, i64 0
  %i.cb = insertelement <4 x i32> %i.ca, i32 %.sroa.2.0.extract.shift, i64 1
  %i.cc = insertelement <4 x i32> %i.cb, i32 %6, i64 2
  %i.cd = insertelement <4 x i32> %i.cc, i32 %.sroa.4.0.extract.shift, i64 3
  %i.ce = and <4 x i32> %i.cd, <i32 255, i32 255, i32 255, i32 -1>
  br i1 %.not229230, label %._crit_edge240.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.cf = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cg = extractelement <2 x i32> %i.au, i64 0
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ci = extractelement <2 x i32> %i.au, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0216239 = phi i32 [ %i.cm, %._crit_edge ], [ %i.bs, %.preheader.preheader ] ; 3 uses
  %.0217238 = phi i32 [ %i.cl, %._crit_edge ], [ %i.bl, %.preheader.preheader ] ; 2 uses
  %i.cj = phi <2 x i32> [ %i.ck, %._crit_edge ], [ %i.bg, %.preheader.preheader ] ; 2 uses
  br label %bb.d

._crit_edge240.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.c
  ret void

._crit_edge:                                      ; preds = %bb.f
  %i.ck = add nsw <2 x i32> %i.cj, %i.aq
  %i.cl = add nsw i32 %.0217238, %i.ci
  %i.cm = add nuw i32 %.0216239, 1
  %exitcond241.not = icmp eq i32 %.0216239, %.0210
  br i1 %exitcond241.not, label %._crit_edge240.split, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.f
  %.0212234 = phi i32 [ %i.bt, %.preheader ], [ %i.dl, %bb.f ] ; 3 uses
  %.0213233 = phi i32 [ %.0217238, %.preheader ], [ %i.dk, %bb.f ] ; 3 uses
  %i.cn = phi <2 x i32> [ %i.cj, %.preheader ], [ %i.dj, %bb.f ] ; 4 uses
  %shift261 = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop262 = or <2 x i32> %i.cn, %shift261
  %i.co = extractelement <2 x i32> %foldExtExtBinop262, i64 0
  %i.cp = or i32 %i.co, %.0213233
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cr = sitofp <2 x i32> %i.cn to <2 x float>
  %i.cs = sitofp i32 %.0213233 to float
  %i.ct = fmul float %i.br, %i.cs
  %i.cu = fptoui float %i.ct to i8
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cx = fmul <4 x float> %i.ch, %i.cw
  %i.cy = fptoui <4 x float> %i.cx to <4 x i8>
  %i.cz = zext <4 x i8> %i.cy to <4 x i32>        ; 2 uses
  %i.da = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.db = mul nuw nsw <4 x i32> %i.bz, %i.da
  %i.dc = mul nuw nsw <4 x i32> %i.by, %i.cz
  %i.dd = add nuw nsw <4 x i32> %i.dc, %i.db
  %i.de = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dg = mul nuw nsw <4 x i32> %i.ce, %i.df
  %i.dh = add nuw nsw <4 x i32> %i.dd, %i.dg
  %i.di = udiv <4 x i32> %i.dh, splat (i32 255)
  %7 = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %8 = trunc <4 x i32> %7 to <4 x i8>
  %9 = bitcast <4 x i8> %8 to i32
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %.0212234, i32 noundef %.0216239, i32 %9)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dj = add nsw <2 x i32> %i.cn, %i.at
  %i.dk = add nsw i32 %.0213233, %i.cg
  %i.dl = add nuw i32 %.0212234, 1
  %exitcond.not = icmp eq i32 %.0212234, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleLines(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %.sroa.015.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.015.0.vec.extract to i32 ; 4 uses
  %.sroa.015.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fptosi float %.sroa.015.4.vec.extract to i32 ; 4 uses
  %.sroa.010.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.c = fptosi float %.sroa.010.0.vec.extract to i32 ; 4 uses
  %.sroa.010.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = fptosi float %.sroa.010.4.vec.extract to i32 ; 4 uses
  %i.e = sub nsw i32 %i.d, %i.b                   ; 4 uses
  %i.f = sub nsw i32 %i.c, %i.a                   ; 4 uses
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.i = icmp samesign ugt i32 %i.g, %i.h         ; 3 uses
  %spec.select.i = select i1 %i.i, i32 %i.e, i32 %i.f ; 3 uses
  %.inv.i = icmp sgt i32 %spec.select.i, -1
  %.041.i = select i1 %.inv.i, i32 1, i32 -1      ; 2 uses
  %i.j = icmp eq i32 %spec.select.i, 0
  br i1 %i.j, label %ImageDrawLine.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %.1.i = tail call i32 @llvm.abs.i32(i32 %spec.select.i, i1 true)
  %spec.select46.i = select i1 %i.i, i32 %i.f, i32 %i.e
  %i.k = shl i32 %spec.select46.i, 16
  %i.l = sdiv i32 %i.k, %.1.i                     ; 2 uses
  br i1 %i.i, label %.lr.ph55.i, label %.lr.ph.i

.lr.ph55.i:                                       ; preds = %.thread.i, %.lr.ph55.i
  %.03954.i = phi i32 [ %i.q, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %.04053.i = phi i32 [ %i.p, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %i.m = ashr i32 %.03954.i, 16
  %i.n = add nsw i32 %i.m, %i.a
  %i.o = add nsw i32 %.04053.i, %i.b
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.n, i32 noundef %i.o, i32 %4)
  %i.p = add nsw i32 %.04053.i, %.041.i           ; 2 uses
  %i.q = add nsw i32 %.03954.i, %i.l
  %.not45.i = icmp eq i32 %i.p, %i.e
  br i1 %.not45.i, label %ImageDrawLine.exit, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %.051.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %.03850.i = phi i32 [ %i.u, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %i.r = add nsw i32 %.03850.i, %i.a
  %i.s = ashr i32 %.051.i, 16
  %i.t = add nsw i32 %i.s, %i.b
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.r, i32 noundef %i.t, i32 %4)
  %i.u = add nsw i32 %.03850.i, %.041.i           ; 2 uses
  %i.v = add nsw i32 %.051.i, %i.l
  %.not.i = icmp eq i32 %i.u, %i.f
  br i1 %.not.i, label %ImageDrawLine.exit, label %.lr.ph.i

ImageDrawLine.exit:                               ; preds = %.lr.ph.i, %.lr.ph55.i, %bb.a
  %.sroa.05.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.w = fptosi float %.sroa.05.0.vec.extract to i32 ; 4 uses
  %.sroa.05.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.x = fptosi float %.sroa.05.4.vec.extract to i32 ; 4 uses
  %i.y = sub nsw i32 %i.x, %i.d                   ; 4 uses
  %i.z = sub nsw i32 %i.w, %i.c                   ; 4 uses
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.ab = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ac = icmp samesign ugt i32 %i.aa, %i.ab      ; 3 uses
  %spec.select.i20 = select i1 %i.ac, i32 %i.y, i32 %i.z ; 3 uses
  %.inv.i21 = icmp sgt i32 %spec.select.i20, -1
  %.041.i22 = select i1 %.inv.i21, i32 1, i32 -1  ; 2 uses
  %i.ad = icmp eq i32 %spec.select.i20, 0
  br i1 %i.ad, label %ImageDrawLine.exit34, label %.thread.i23

.thread.i23:                                      ; preds = %ImageDrawLine.exit
  %.1.i24 = tail call i32 @llvm.abs.i32(i32 %spec.select.i20, i1 true)
  %spec.select46.i25 = select i1 %i.ac, i32 %i.z, i32 %i.y
  %i.ae = shl i32 %spec.select46.i25, 16
  %i.af = sdiv i32 %i.ae, %.1.i24                 ; 2 uses
  br i1 %i.ac, label %.lr.ph55.i30, label %.lr.ph.i26

.lr.ph55.i30:                                     ; preds = %.thread.i23, %.lr.ph55.i30
  %.03954.i31 = phi i32 [ %i.ak, %.lr.ph55.i30 ], [ 0, %.thread.i23 ] ; 2 uses
  %.04053.i32 = phi i32 [ %i.aj, %.lr.ph55.i30 ], [ 0, %.thread.i23 ] ; 2 uses
  %i.ag = ashr i32 %.03954.i31, 16
  %i.ah = add nsw i32 %i.ag, %i.c
  %i.ai = add nsw i32 %.04053.i32, %i.d
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.ah, i32 noundef %i.ai, i32 %4)
  %i.aj = add nsw i32 %.04053.i32, %.041.i22      ; 2 uses
  %i.ak = add nsw i32 %.03954.i31, %i.af
  %.not45.i33 = icmp eq i32 %i.aj, %i.y
  br i1 %.not45.i33, label %ImageDrawLine.exit34, label %.lr.ph55.i30

.lr.ph.i26:                                       ; preds = %.thread.i23, %.lr.ph.i26
  %.051.i27 = phi i32 [ %i.ap, %.lr.ph.i26 ], [ 0, %.thread.i23 ] ; 2 uses
  %.03850.i28 = phi i32 [ %i.ao, %.lr.ph.i26 ], [ 0, %.thread.i23 ] ; 2 uses
  %i.al = add nsw i32 %.03850.i28, %i.c
  %i.am = ashr i32 %.051.i27, 16
  %i.an = add nsw i32 %i.am, %i.d
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.al, i32 noundef %i.an, i32 %4)
  %i.ao = add nsw i32 %.03850.i28, %.041.i22      ; 2 uses
  %i.ap = add nsw i32 %.051.i27, %i.af
  %.not.i29 = icmp eq i32 %i.ao, %i.z
  br i1 %.not.i29, label %ImageDrawLine.exit34, label %.lr.ph.i26

ImageDrawLine.exit34:                             ; preds = %.lr.ph.i26, %.lr.ph55.i30, %ImageDrawLine.exit
  %i.aq = sub nsw i32 %i.b, %i.x                  ; 4 uses
  %i.ar = sub nsw i32 %i.a, %i.w                  ; 4 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.at = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.au = icmp samesign ugt i32 %i.as, %i.at      ; 3 uses
  %spec.select.i35 = select i1 %i.au, i32 %i.aq, i32 %i.ar ; 3 uses
  %.inv.i36 = icmp sgt i32 %spec.select.i35, -1
  %.041.i37 = select i1 %.inv.i36, i32 1, i32 -1  ; 2 uses
  %i.av = icmp eq i32 %spec.select.i35, 0
  br i1 %i.av, label %ImageDrawLine.exit49, label %.thread.i38

.thread.i38:                                      ; preds = %ImageDrawLine.exit34
  %.1.i39 = tail call i32 @llvm.abs.i32(i32 %spec.select.i35, i1 true)
  %spec.select46.i40 = select i1 %i.au, i32 %i.ar, i32 %i.aq
  %i.aw = shl i32 %spec.select46.i40, 16
  %i.ax = sdiv i32 %i.aw, %.1.i39                 ; 2 uses
  br i1 %i.au, label %.lr.ph55.i45, label %.lr.ph.i41

.lr.ph55.i45:                                     ; preds = %.thread.i38, %.lr.ph55.i45
  %.03954.i46 = phi i32 [ %i.bc, %.lr.ph55.i45 ], [ 0, %.thread.i38 ] ; 2 uses
  %.04053.i47 = phi i32 [ %i.bb, %.lr.ph55.i45 ], [ 0, %.thread.i38 ] ; 2 uses
  %i.ay = ashr i32 %.03954.i46, 16
  %i.az = add nsw i32 %i.ay, %i.w
  %i.ba = add nsw i32 %.04053.i47, %i.x
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.az, i32 noundef %i.ba, i32 %4)
  %i.bb = add nsw i32 %.04053.i47, %.041.i37      ; 2 uses
  %i.bc = add nsw i32 %.03954.i46, %i.ax
  %.not45.i48 = icmp eq i32 %i.bb, %i.aq
  br i1 %.not45.i48, label %ImageDrawLine.exit49, label %.lr.ph55.i45

.lr.ph.i41:                                       ; preds = %.thread.i38, %.lr.ph.i41
  %.051.i42 = phi i32 [ %i.bh, %.lr.ph.i41 ], [ 0, %.thread.i38 ] ; 2 uses
  %.03850.i43 = phi i32 [ %i.bg, %.lr.ph.i41 ], [ 0, %.thread.i38 ] ; 2 uses
  %i.bd = add nsw i32 %.03850.i43, %i.w
  %i.be = ashr i32 %.051.i42, 16
  %i.bf = add nsw i32 %i.be, %i.x
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bd, i32 noundef %i.bf, i32 %4)
  %i.bg = add nsw i32 %.03850.i43, %.041.i37      ; 2 uses
  %i.bh = add nsw i32 %.051.i42, %i.ax
  %.not.i44 = icmp eq i32 %i.bg, %i.ar
  br i1 %.not.i44, label %ImageDrawLine.exit49, label %.lr.ph.i41

ImageDrawLine.exit49:                             ; preds = %.lr.ph.i41, %.lr.ph55.i45, %ImageDrawLine.exit34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleFan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.e = load <2 x float>, ptr %1, align 4
  %i.f = load <2 x float>, ptr %i.c, align 4
  %i.g = load <2 x float>, ptr %i.d, align 4
  tail call void @ImageDrawTriangle(ptr noundef %0, <2 x float> %i.e, <2 x float> %i.f, <2 x float> %i.g, i32 %3)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleStrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
end_hunk_0
begin_hunk_1_@stbir__vertical_scatter_with_8_coeffs_cont:bb.a

.lr.ph400:                                        ; preds = %.preheader, %.lr.ph400
  %.2399 = phi ptr [ %i.id, %.lr.ph400 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2331398 = phi ptr [ %i.ie, %.lr.ph400 ], [ %.1330.lcssa, %.preheader ] ; 4 uses
  %.2334397 = phi ptr [ %i.if, %.lr.ph400 ], [ %.1333.lcssa, %.preheader ] ; 3 uses
  %.2337396 = phi ptr [ %i.ig, %.lr.ph400 ], [ %.1336.lcssa, %.preheader ] ; 3 uses
  %.2340395 = phi ptr [ %i.ih, %.lr.ph400 ], [ %.1339.lcssa, %.preheader ] ; 3 uses
  %.2343394 = phi ptr [ %i.ii, %.lr.ph400 ], [ %.1342.lcssa, %.preheader ] ; 3 uses
  %.2346393 = phi ptr [ %i.il, %.lr.ph400 ], [ %.1345.lcssa, %.preheader ] ; 3 uses
  %.2349392 = phi ptr [ %i.ik, %.lr.ph400 ], [ %.1348.lcssa, %.preheader ] ; 3 uses
  %.2352391 = phi ptr [ %i.ij, %.lr.ph400 ], [ %.1351.lcssa, %.preheader ] ; 3 uses
  %i.ha = load float, ptr %.2399, align 4
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2331398) #52, !srcloc !1046
  %i.hb = load float, ptr %.2331398, align 4
  %i.hc = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <4 x float> %i.h, %i.hd            ; 4 uses
  %i.hf = extractelement <4 x float> %i.he, i64 0
  %i.hg = fadd float %i.hf, %i.hb
  store float %i.hg, ptr %.2331398, align 4
  %i.hh = load float, ptr %.2334397, align 4
  %i.hi = extractelement <4 x float> %i.he, i64 1
  %i.hj = fadd float %i.hi, %i.hh
  store float %i.hj, ptr %.2334397, align 4
  %i.hk = load float, ptr %.2337396, align 4
  %i.hl = extractelement <4 x float> %i.he, i64 2
  %i.hm = fadd float %i.hl, %i.hk
  store float %i.hm, ptr %.2337396, align 4
  %i.hn = load float, ptr %.2340395, align 4
  %i.ho = extractelement <4 x float> %i.he, i64 3
  %i.hp = fadd float %i.ho, %i.hn
  store float %i.hp, ptr %.2340395, align 4
  %i.hq = load float, ptr %.2343394, align 4
  %i.hr = fmul <4 x float> %i.r, %i.hd            ; 4 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  %i.ht = fadd float %i.hs, %i.hq
  store float %i.ht, ptr %.2343394, align 4
  %i.hu = load float, ptr %.2352391, align 4
  %i.hv = extractelement <4 x float> %i.hr, i64 1
  %i.hw = fadd float %i.hv, %i.hu
  store float %i.hw, ptr %.2352391, align 4
  %i.hx = load float, ptr %.2349392, align 4
  %i.hy = extractelement <4 x float> %i.hr, i64 2
  %i.hz = fadd float %i.hy, %i.hx
  store float %i.hz, ptr %.2349392, align 4
  %i.ia = load float, ptr %.2346393, align 4
  %i.ib = extractelement <4 x float> %i.hr, i64 3
  %i.ic = fadd float %i.ib, %i.ia
  store float %i.ic, ptr %.2346393, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %.2399, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.2331398, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.2334397, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.2337396, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.2340395, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.2343394, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.2352391, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.2349392, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.2346393, i64 4
  %i.im = icmp ult ptr %i.id, %3
  br i1 %i.im, label %.lr.ph400, label %._crit_edge, !llvm.loop !1043

._crit_edge:                                      ; preds = %.lr.ph400, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #17

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.fshl.v8i16(<8 x i16>, <8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.fshl.v4i16(<4 x i16>, <4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn }
attributes #46 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #52 = { nounwind }
attributes #53 = { nounwind allocsize(0) }
attributes #54 = { nounwind allocsize(1) }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !15, !19}
!4 = distinct !{!4, !15, !19}
!5 = distinct !{!5, !15, !19}
!6 = distinct !{ptr @stbi__get8, null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"branch_weights", i32 8, i32 24}
!18 = !{i64 2150573481}
!19 = !{!"llvm.loop.vectorize.width", i32 1}
!20 = !{i64 2150573910}
!21 = !{i64 2150575012}
!22 = !{!"llvm.loop.unswitch.partial.disable"}
!23 = !{ptr @stbi__skip}
!24 = !{!"unknown", !"jump-table-to-switch"}
!25 = distinct !{ptr @stbi_load_from_file, null, null, null}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !12, !11}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !12, !11}
!32 = distinct !{ptr @stbi_load_from_file_16, null, null, null}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !11}
!35 = distinct !{ptr @stbi_loadf_from_file, null, null, null}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !11, !12}
!38 = distinct !{!38, !11, !12}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !11}
!41 = distinct !{ptr @stbi_info_from_file, null, null, null}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{!44, !12, !11}
!45 = distinct !{!45, !11, !12}
!46 = distinct !{!46, !11, !12}
!47 = distinct !{!47, !12, !11}
!48 = distinct !{!48, !15}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null, null}
!55 = distinct !{null, null}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !11, !12}
!58 = distinct !{!58, !12, !11}
!59 = distinct !{!59, !11, !12}
!60 = distinct !{!60, !12, !11}
!61 = distinct !{!61, !11, !12}
!62 = distinct !{!62, !12, !11}
!63 = distinct !{!63, !11, !12}
!64 = distinct !{!64, !12, !11}
!65 = distinct !{!65, !11, !12}
!66 = distinct !{!66, !12, !11}
!67 = distinct !{!67, !11, !12}
!68 = distinct !{!68, !11, !12}
!69 = distinct !{!69, !11, !12}
!70 = distinct !{!70, !11, !12}
!71 = distinct !{!71, !11, !12}
!72 = distinct !{!72, !11, !12}
!73 = distinct !{!73, !11, !12}
!74 = distinct !{!74, !11, !12}
!75 = distinct !{!75, !11, !12}
!76 = distinct !{!76, !11, !12}
!77 = distinct !{!77, !11, !12}
!78 = distinct !{!78, !11, !12}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11, !12}
!86 = distinct !{null}
!87 = distinct !{!87, !11, !12}
!88 = distinct !{null, ptr @stbir__resample_horizontal_gather}
!89 = distinct !{null, null}
!90 = distinct !{null, null, null}
!91 = distinct !{null}
!92 = distinct !{!92, !14}
!93 = distinct !{null, null}
!94 = !{ptr @stbir__encode_first_scanline_from_scatter, ptr @stbir__horizontal_resample_and_encode_first_scanline_from_scatter}
!95 = distinct !{!95, !"LoadImage"}
!96 = distinct !{!96, !95, !"LoadImage: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, !11, !12}
!99 = distinct !{!99, !12, !11}
!100 = distinct !{!100, !11, !12}
!101 = distinct !{!101, !11, !12}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11, !12}
!104 = distinct !{!104, !11, !12}
!105 = distinct !{!105, !12, !11}
!106 = distinct !{!106, !11, !12}
!107 = distinct !{!107, !12, !11}
!108 = distinct !{!108, !"GenImageColor"}
!109 = distinct !{!109, !108, !"GenImageColor: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !11, !12}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11, !12}
end_hunk_1
