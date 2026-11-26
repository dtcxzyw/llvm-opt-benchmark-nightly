Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.f = shl i32 %3, 1                            ; 6 uses
  %i.g = sdiv i32 %1, 2                           ; 6 uses
  %i.h = and i32 %1, 1                            ; 3 uses
  %i.i = sdiv i32 %0, 2                           ; 18 uses
  %i.j = and i32 %0, 1                            ; 9 uses
  %i.k = zext i32 %7 to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr @RGB2YUVFactorTables, i64 %i.k ; 90 uses
  switch i32 %4, label %bb.eb [
    i32 842094169, label %bb.b
    i32 1448433993, label %bb.b
    i32 842094158, label %bb.b
    i32 825382478, label %bb.b
    i32 844715353, label %bb.cj
    i32 1498831189, label %bb.cj
    i32 1431918169, label %bb.cj
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.m = call fastcc zeroext i1 @GetYUVPlanes(i32 noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = load i32, ptr %i.d, align 4              ; 2 uses
  %i.p = mul i32 %i.o, %1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q ; 4 uses
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.preheader1442.lr.ph, label %.._crit_edge1484_crit_edge

.._crit_edge1484_crit_edge:                       ; preds = %bb.c
  %.pre1637 = sext i32 %3 to i64
  br label %._crit_edge1484

.preheader1442.lr.ph:                             ; preds = %bb.c
  %i.t = sub i32 %i.o, %0
  %i.u = icmp sgt i32 %0, 0
  %i.v = zext i32 %i.t to i64
  %i.w = sext i32 %3 to i64                       ; 4 uses
  br i1 %i.u, label %.preheader1442.lr.ph.split.us, label %._crit_edge1484

.preheader1442.lr.ph.split.us:                    ; preds = %.preheader1442.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = load float, ptr %i.y, align 8           ; 2 uses
  %i.ac = load float, ptr %i.x, align 4           ; 2 uses
  %i.ad = load i32, ptr %i.l, align 8             ; 2 uses
  %wide.trip.count1600 = zext nneg i32 %0 to i64  ; 5 uses
  %i.ae = add nsw i32 %1, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.w, %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count1600, 2
  %i.ai = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep1866 = getelementptr i8, ptr %i.ai, i64 %i.ah
  %min.iters.check1868 = icmp ult i32 %0, 4
  %stride.check1873 = icmp slt i32 %3, 0
  %n.vec1875 = and i64 %wide.trip.count1600, 2147483644 ; 4 uses
  %broadcast.splatinsert1876 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat1877 = shufflevector <4 x float> %broadcast.splatinsert1876, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1878 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat1879 = shufflevector <4 x float> %broadcast.splatinsert1878, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1880 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat1881 = shufflevector <4 x float> %broadcast.splatinsert1880, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1882 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat1883 = shufflevector <4 x i32> %broadcast.splatinsert1882, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1889 = icmp eq i64 %n.vec1875, %wide.trip.count1600
  br label %.preheader1442.us

.preheader1442.us:                                ; preds = %._crit_edge1477.us, %.preheader1442.lr.ph.split.us
  %.013191483.us = phi ptr [ %2, %.preheader1442.lr.ph.split.us ], [ %i.cb, %._crit_edge1477.us ] ; 3 uses
  %.013231482.us = phi i32 [ 0, %.preheader1442.lr.ph.split.us ], [ %i.cc, %._crit_edge1477.us ]
  %.lcssa14801481.us = phi ptr [ %i.n, %.preheader1442.lr.ph.split.us ], [ %i.ca, %._crit_edge1477.us ] ; 6 uses
  br i1 %min.iters.check1868, label %scalar.ph1867.preheader, label %vector.memcheck1869

vector.memcheck1869:                              ; preds = %.preheader1442.us
  %i.aj = getelementptr i8, ptr %.lcssa14801481.us, i64 %wide.trip.count1600
  %bound01870 = icmp ult ptr %.lcssa14801481.us, %scevgep1866
  %bound11871 = icmp ult ptr %2, %i.aj
  %found.conflict1872 = and i1 %bound01870, %bound11871
  %i.ak = or i1 %found.conflict1872, %stride.check1873
  br i1 %i.ak, label %scalar.ph1867.preheader, label %vector.ph1874

vector.ph1874:                                    ; preds = %vector.memcheck1869
  %i.al = getelementptr i8, ptr %.lcssa14801481.us, i64 %n.vec1875 ; 2 uses
  br label %vector.body1884

vector.body1884:                                  ; preds = %vector.body1884, %vector.ph1874
  %index1885 = phi i64 [ 0, %vector.ph1874 ], [ %index.next1887, %vector.body1884 ] ; 3 uses
  %next.gep1886 = getelementptr i8, ptr %.lcssa14801481.us, i64 %index1885
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.013191483.us, i64 %index1885
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !alias.scope !71 ; 3 uses
  %i.an = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.ao = and <4 x i32> %i.an, splat (i32 255)
  %i.ap = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.aq = and <4 x i32> %i.ap, splat (i32 255)
  %i.ar = and <4 x i32> %wide.load, splat (i32 255)
  %i.as = uitofp nneg <4 x i32> %i.ao to <4 x float>
  %i.at = uitofp nneg <4 x i32> %i.aq to <4 x float>
  %i.au = fmul <4 x float> %broadcast.splat1877, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1879, <4 x float> %i.as, <4 x float> %i.au)
  %i.aw = uitofp nneg <4 x i32> %i.ar to <4 x float>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1881, <4 x float> %i.aw, <4 x float> %i.av)
  %i.ay = fadd <4 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fptosi <4 x float> %i.ay to <4 x i32>
  %i.ba = add nsw <4 x i32> %broadcast.splat1883, %i.az
  %i.bb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ba, <4 x i32> zeroinitializer)
  %i.bc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bb, <4 x i32> splat (i32 255))
  %i.bd = trunc nuw <4 x i32> %i.bc to <4 x i8>
  store <4 x i8> %i.bd, ptr %next.gep1886, align 1, !alias.scope !72, !noalias !71
  %index.next1887 = add nuw i64 %index1885, 4     ; 2 uses
  %i.be = icmp eq i64 %index.next1887, %n.vec1875
  br i1 %i.be, label %middle.block1888, label %vector.body1884, !llvm.loop !10

middle.block1888:                                 ; preds = %vector.body1884
  br i1 %cmp.n1889, label %._crit_edge1477.us, label %scalar.ph1867.preheader

scalar.ph1867.preheader:                          ; preds = %vector.memcheck1869, %.preheader1442.us, %middle.block1888
  %indvars.iv1597.ph = phi i64 [ 0, %vector.memcheck1869 ], [ 0, %.preheader1442.us ], [ %n.vec1875, %middle.block1888 ]
  %.ph2327 = phi ptr [ %.lcssa14801481.us, %vector.memcheck1869 ], [ %.lcssa14801481.us, %.preheader1442.us ], [ %i.al, %middle.block1888 ]
  br label %scalar.ph1867

scalar.ph1867:                                    ; preds = %scalar.ph1867.preheader, %scalar.ph1867
  %indvars.iv1597 = phi i64 [ %indvars.iv.next1598, %scalar.ph1867 ], [ %indvars.iv1597.ph, %scalar.ph1867.preheader ] ; 2 uses
  %i.bf = phi ptr [ %i.bz, %scalar.ph1867 ], [ %.ph2327, %scalar.ph1867.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.013191483.us, i64 %indvars.iv1597
  %i.bh = load i32, ptr %i.bg, align 4            ; 3 uses
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = and i32 %i.bi, 255
  %i.bk = lshr i32 %i.bh, 8
  %i.bl = and i32 %i.bk, 255
  %i.bm = and i32 %i.bh, 255
  %i.bn = uitofp nneg i32 %i.bj to float
  %i.bo = uitofp nneg i32 %i.bl to float
  %i.bp = fmul float %i.ab, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bn, float %i.bp)
  %i.br = uitofp nneg i32 %i.bm to float
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.br, float %i.bq)
  %i.bt = fadd float %i.bs, 5.000000e-01
  %i.bu = fptosi float %i.bt to i32
  %i.bv = add nsw i32 %i.ad, %i.bu
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store i8 %i.by, ptr %i.bf, align 1
  %indvars.iv.next1598 = add nuw nsw i64 %indvars.iv1597, 1 ; 2 uses
  %exitcond1601.not = icmp eq i64 %indvars.iv.next1598, %wide.trip.count1600
  br i1 %exitcond1601.not, label %._crit_edge1477.us, label %scalar.ph1867, !llvm.loop !11

._crit_edge1477.us:                               ; preds = %scalar.ph1867, %middle.block1888
  %.lcssa1725 = phi ptr [ %i.al, %middle.block1888 ], [ %i.bz, %scalar.ph1867 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa1725, i64 %i.v
  %i.cb = getelementptr inbounds i8, ptr %.013191483.us, i64 %i.w
  %i.cc = add nuw nsw i32 %.013231482.us, 1       ; 2 uses
  %exitcond1602.not = icmp eq i32 %i.cc, %1
  br i1 %exitcond1602.not, label %._crit_edge1484, label %.preheader1442.us, !llvm.loop !12

._crit_edge1484:                                  ; preds = %._crit_edge1477.us, %.preheader1442.lr.ph, %.._crit_edge1484_crit_edge
  %.pre-phi = phi i64 [ %.pre1637, %.._crit_edge1484_crit_edge ], [ %i.w, %.preheader1442.lr.ph ], [ %i.w, %._crit_edge1477.us ] ; 4 uses
  %i.cd = getelementptr i8, ptr %2, i64 %.pre-phi ; 7 uses
  switch i32 %4, label %bb.bh [
    i32 1448433993, label %bb.d
    i32 842094169, label %bb.d
    i32 842094158, label %bb.af
  ]

bb.d:                                             ; preds = %._crit_edge1484, %._crit_edge1484
  %.promoted1513 = load ptr, ptr %i.b, align 8    ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.ce = icmp sgt i32 %1, 1
  br i1 %i.ce, label %.preheader1439.lr.ph, label %._crit_edge1523

.preheader1439.lr.ph:                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.e, align 4
  %i.cg = add nsw i32 %0, 1
  %.neg1408 = sdiv i32 %i.cg, -2
  %i.ch = add i32 %i.cf, %.neg1408
  %i.ci = icmp sgt i32 %0, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1411 = icmp eq i32 %i.j, 0
  %i.cp = zext i32 %i.ch to i64                   ; 2 uses
  %i.cq = sext i32 %i.f to i64                    ; 3 uses
  %wide.trip.count1617 = zext i32 %i.i to i64     ; 6 uses
  %i.cr = shl nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.cs = add nsw i32 %i.g, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cq, %i.ct                ; 2 uses
  %i.cv = shl nuw nsw i64 %wide.trip.count1617, 3 ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 %.pre-phi
  %scevgep2015.a = getelementptr i8, ptr %i.cw, i64 %i.cu
  %i.cx = getelementptr i8, ptr %scevgep2015.a, i64 %i.cv ; 2 uses
  %i.cy = getelementptr i8, ptr %2, i64 %i.cu
  %scevgep2016 = getelementptr i8, ptr %i.cy, i64 %i.cv ; 2 uses
  %min.iters.check2018 = icmp ult i32 %0, 8
  %stride.check2026 = icmp slt i32 %i.f, 0
  %n.vec2041 = and i64 %wide.trip.count1617, 1073741820 ; 5 uses
  %cmp.n2070 = icmp eq i64 %n.vec2041, %wide.trip.count1617
  br label %.preheader1439

.preheader1439:                                   ; preds = %.preheader1439.lr.ph, %bb.r
  %.013161522 = phi ptr [ %i.cd, %.preheader1439.lr.ph ], [ %i.jo, %bb.r ] ; 5 uses
  %.113201521 = phi ptr [ %2, %.preheader1439.lr.ph ], [ %i.jn, %bb.r ] ; 5 uses
  %.113241520 = phi i32 [ 0, %.preheader1439.lr.ph ], [ %i.jp, %bb.r ]
  %.lcssa15141519 = phi ptr [ %.promoted1513, %.preheader1439.lr.ph ], [ %i.jl, %bb.r ] ; 9 uses
  %.lcssa150615161518 = phi ptr [ %.promoted, %.preheader1439.lr.ph ], [ %i.jm, %bb.r ] ; 9 uses
  br i1 %i.ci, label %.lr.ph1508, label %._crit_edge1509

.lr.ph1508:                                       ; preds = %.preheader1439
  %i.cz = load float, ptr %i.cj, align 8          ; 2 uses
  %i.da = load float, ptr %i.ck, align 4          ; 2 uses
  %i.db = load float, ptr %i.cl, align 8          ; 2 uses
  %i.dc = load float, ptr %i.cm, align 4          ; 2 uses
  %i.dd = load float, ptr %i.cn, align 8          ; 2 uses
  %i.de = load float, ptr %i.co, align 4          ; 2 uses
  br i1 %min.iters.check2018, label %scalar.ph2017.preheader, label %vector.memcheck2019

vector.memcheck2019:                              ; preds = %.lr.ph1508
  %i.df = getelementptr i8, ptr %.lcssa15141519, i64 %wide.trip.count1617 ; 3 uses
  %i.dg = getelementptr i8, ptr %.lcssa150615161518, i64 %wide.trip.count1617 ; 3 uses
  %bound02020 = icmp ult ptr %.lcssa15141519, %i.dg
  %bound12021 = icmp ult ptr %.lcssa150615161518, %i.df
  %found.conflict2022 = and i1 %bound02020, %bound12021
  %bound02023 = icmp ult ptr %.lcssa15141519, %scevgep2016
  %bound12024 = icmp ult ptr %2, %i.df
  %found.conflict2025 = and i1 %bound02023, %bound12024
  %i.dh = or i1 %found.conflict2025, %stride.check2026
  %conflict.rdx2027 = or i1 %found.conflict2022, %i.dh
  %bound02028 = icmp ult ptr %.lcssa15141519, %i.cx
  %bound12029 = icmp ult ptr %i.cd, %i.df
  %found.conflict2030 = and i1 %bound02028, %bound12029
  %conflict.rdx2031 = or i1 %conflict.rdx2027, %found.conflict2030
  %bound02032 = icmp ult ptr %.lcssa150615161518, %scevgep2016
  %bound12033 = icmp ult ptr %2, %i.dg
  %found.conflict2034 = and i1 %bound02032, %bound12033
  %conflict.rdx2035 = or i1 %conflict.rdx2031, %found.conflict2034
  %bound02036 = icmp ult ptr %.lcssa150615161518, %i.cx
  %bound12037 = icmp ult ptr %i.cd, %i.dg
  %found.conflict2038 = and i1 %bound02036, %bound12037
  %conflict.rdx2039 = or i1 %conflict.rdx2035, %found.conflict2038
  br i1 %conflict.rdx2039, label %scalar.ph2017.preheader, label %vector.ph2040

vector.ph2040:                                    ; preds = %vector.memcheck2019
  %i.di = getelementptr i8, ptr %.lcssa15141519, i64 %n.vec2041 ; 2 uses
  %i.dj = getelementptr i8, ptr %.lcssa150615161518, i64 %n.vec2041 ; 2 uses
  %broadcast.splatinsert2042 = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat2043 = shufflevector <4 x float> %broadcast.splatinsert2042, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2044 = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat2045 = shufflevector <4 x float> %broadcast.splatinsert2044, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2046 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat2047 = shufflevector <4 x float> %broadcast.splatinsert2046, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2048 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat2049 = shufflevector <4 x float> %broadcast.splatinsert2048, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2050 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat2051 = shufflevector <4 x float> %broadcast.splatinsert2050, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2052 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat2053 = shufflevector <4 x float> %broadcast.splatinsert2052, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2054

vector.body2054:                                  ; preds = %vector.body2054, %vector.ph2040
  %index2055 = phi i64 [ 0, %vector.ph2040 ], [ %index.next2068, %vector.body2054 ] ; 4 uses
  %next.gep2056 = getelementptr i8, ptr %.lcssa15141519, i64 %index2055
  %next.gep2057 = getelementptr i8, ptr %.lcssa150615161518, i64 %index2055
  %i.dk = shl nuw nsw i64 %index2055, 1           ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.dk
  %wide.vec2058 = load <8 x i32>, ptr %i.dl, align 4, !alias.scope !73 ; 2 uses
  %strided.vec2059 = shufflevector <8 x i32> %wide.vec2058, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2060 = shufflevector <8 x i32> %wide.vec2058, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.dk
  %wide.vec2061 = load <8 x i32>, ptr %i.dm, align 4, !alias.scope !74 ; 2 uses
  %strided.vec2062 = shufflevector <8 x i32> %wide.vec2061, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2063 = shufflevector <8 x i32> %wide.vec2061, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.dn = and <4 x i32> %strided.vec2059, splat (i32 16711680)
  %i.do = and <4 x i32> %strided.vec2060, splat (i32 16711680)
  %i.dp = add nuw nsw <4 x i32> %i.do, %i.dn
  %i.dq = and <4 x i32> %strided.vec2062, splat (i32 16711680)
  %i.dr = add nuw nsw <4 x i32> %i.dp, %i.dq
  %i.ds = and <4 x i32> %strided.vec2063, splat (i32 16711680)
  %i.dt = add nuw nsw <4 x i32> %i.dr, %i.ds
  %i.du = lshr <4 x i32> %i.dt, splat (i32 18)
  %i.dv = and <4 x i32> %strided.vec2059, splat (i32 65280)
  %i.dw = and <4 x i32> %strided.vec2060, splat (i32 65280)
  %i.dx = add nuw nsw <4 x i32> %i.dw, %i.dv
  %i.dy = and <4 x i32> %strided.vec2062, splat (i32 65280)
  %i.dz = add nuw nsw <4 x i32> %i.dx, %i.dy
  %i.ea = and <4 x i32> %strided.vec2063, splat (i32 65280)
  %i.eb = add nuw nsw <4 x i32> %i.dz, %i.ea
  %i.ec = lshr <4 x i32> %i.eb, splat (i32 10)
  %i.ed = and <4 x i32> %strided.vec2059, splat (i32 255)
  %i.ee = and <4 x i32> %strided.vec2060, splat (i32 255)
  %i.ef = add nuw nsw <4 x i32> %i.ee, %i.ed
  %i.eg = and <4 x i32> %strided.vec2062, splat (i32 255)
  %i.eh = add nuw nsw <4 x i32> %i.ef, %i.eg
  %i.ei = and <4 x i32> %strided.vec2063, splat (i32 255)
  %i.ej = add nuw nsw <4 x i32> %i.eh, %i.ei
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 2)
  %i.el = uitofp nneg <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.em = uitofp nneg <4 x i32> %i.ec to <4 x float> ; 2 uses
  %i.en = fmul <4 x float> %broadcast.splat2045, %i.em
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2043, <4 x float> %i.el, <4 x float> %i.en)
  %i.ep = uitofp nneg <4 x i32> %i.ek to <4 x float> ; 2 uses
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2047, <4 x float> %i.ep, <4 x float> %i.eo)
  %i.er = fadd <4 x float> %i.eq, splat (float 5.000000e-01)
  %i.es = fptosi <4 x float> %i.er to <4 x i32>   ; 3 uses
  %i.et = icmp sgt <4 x i32> %i.es, splat (i32 -129)
  %i.eu = icmp sgt <4 x i32> %i.es, splat (i32 127)
  %i.ev = trunc <4 x i32> %i.es to <4 x i8>
  %i.ew = xor <4 x i8> %i.ev, splat (i8 -128)
  %predphi2064 = select <4 x i1> %i.eu, <4 x i8> splat (i8 -1), <4 x i8> %i.ew
  %predphi2065 = select <4 x i1> %i.et, <4 x i8> %predphi2064, <4 x i8> zeroinitializer
  store <4 x i8> %predphi2065, ptr %next.gep2056, align 1, !alias.scope !75, !noalias !76
  %i.ex = fmul <4 x float> %broadcast.splat2051, %i.em
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2049, <4 x float> %i.el, <4 x float> %i.ex)
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2053, <4 x float> %i.ep, <4 x float> %i.ey)
  %i.fa = fadd <4 x float> %i.ez, splat (float 5.000000e-01)
  %i.fb = fptosi <4 x float> %i.fa to <4 x i32>   ; 3 uses
  %i.fc = icmp sgt <4 x i32> %i.fb, splat (i32 -129)
  %i.fd = icmp sgt <4 x i32> %i.fb, splat (i32 127)
  %i.fe = trunc <4 x i32> %i.fb to <4 x i8>
  %i.ff = xor <4 x i8> %i.fe, splat (i8 -128)
  %predphi2066 = select <4 x i1> %i.fd, <4 x i8> splat (i8 -1), <4 x i8> %i.ff
  %predphi2067 = select <4 x i1> %i.fc, <4 x i8> %predphi2066, <4 x i8> zeroinitializer
  store <4 x i8> %predphi2067, ptr %next.gep2057, align 1, !alias.scope !77, !noalias !78
  %index.next2068 = add nuw i64 %index2055, 4     ; 2 uses
  %i.fg = icmp eq i64 %index.next2068, %n.vec2041
  br i1 %i.fg, label %middle.block2069, label %vector.body2054, !llvm.loop !18

middle.block2069:                                 ; preds = %vector.body2054
  br i1 %cmp.n2070, label %._crit_edge1509, label %scalar.ph2017.preheader

scalar.ph2017.preheader:                          ; preds = %vector.memcheck2019, %.lr.ph1508, %middle.block2069
  %indvars.iv1614.ph = phi i64 [ 0, %vector.memcheck2019 ], [ 0, %.lr.ph1508 ], [ %n.vec2041, %middle.block2069 ]
  %.ph2316 = phi ptr [ %.lcssa15141519, %vector.memcheck2019 ], [ %.lcssa15141519, %.lr.ph1508 ], [ %i.di, %middle.block2069 ]
  %.ph2317 = phi ptr [ %.lcssa150615161518, %vector.memcheck2019 ], [ %.lcssa150615161518, %.lr.ph1508 ], [ %i.dj, %middle.block2069 ]
  br label %scalar.ph2017

scalar.ph2017:                                    ; preds = %scalar.ph2017.preheader, %bb.j
  %indvars.iv1614 = phi i64 [ %indvars.iv.next1615, %bb.j ], [ %indvars.iv1614.ph, %scalar.ph2017.preheader ] ; 2 uses
  %i.fh = phi ptr [ %i.he, %bb.j ], [ %.ph2316, %scalar.ph2017.preheader ] ; 2 uses
  %i.fi = phi ptr [ %i.hp, %bb.j ], [ %.ph2317, %scalar.ph2017.preheader ] ; 2 uses
  %i.fj = shl nuw nsw i64 %indvars.iv1614, 1      ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4            ; 3 uses
  %i.fm = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4            ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fj
  %i.fq = load i32, ptr %i.fp, align 4            ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fm
  %i.fs = load i32, ptr %i.fr, align 4            ; 3 uses
  %i.ft = and i32 %i.fl, 16711680
  %i.fu = and i32 %i.fo, 16711680
  %i.fv = add nuw nsw i32 %i.fu, %i.ft
  %i.fw = and i32 %i.fq, 16711680
  %i.fx = add nuw nsw i32 %i.fv, %i.fw
  %i.fy = and i32 %i.fs, 16711680
  %i.fz = add nuw nsw i32 %i.fx, %i.fy
  %i.ga = lshr i32 %i.fz, 18
  %i.gb = and i32 %i.fl, 65280
  %i.gc = and i32 %i.fo, 65280
  %i.gd = add nuw nsw i32 %i.gc, %i.gb
  %i.ge = and i32 %i.fq, 65280
  %i.gf = add nuw nsw i32 %i.gd, %i.ge
  %i.gg = and i32 %i.fs, 65280
  %i.gh = add nuw nsw i32 %i.gf, %i.gg
  %i.gi = lshr i32 %i.gh, 10
  %i.gj = and i32 %i.fl, 255
  %i.gk = and i32 %i.fo, 255
  %i.gl = add nuw nsw i32 %i.gk, %i.gj
  %i.gm = and i32 %i.fq, 255
  %i.gn = add nuw nsw i32 %i.gl, %i.gm
  %i.go = and i32 %i.fs, 255
  %i.gp = add nuw nsw i32 %i.gn, %i.go
  %i.gq = lshr i32 %i.gp, 2
  %i.gr = uitofp nneg i32 %i.ga to float          ; 2 uses
  %i.gs = uitofp nneg i32 %i.gi to float          ; 2 uses
  %i.gt = fmul float %i.da, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.gr, float %i.gt)
  %i.gv = uitofp nneg i32 %i.gq to float          ; 2 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.db, float %i.gv, float %i.gu)
  %i.gx = fadd float %i.gw, 5.000000e-01
  %i.gy = fptosi float %i.gx to i32               ; 3 uses
  %i.gz = icmp slt i32 %i.gy, -128
  br i1 %i.gz, label %bb.g, label %bb.e

bb.e:                                             ; preds = %scalar.ph2017
  %i.ha = icmp sgt i32 %i.gy, 127
  br i1 %i.ha, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hb = trunc nsw i32 %i.gy to i8
  %i.hc = xor i8 %i.hb, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %scalar.ph2017
  %i.hd = phi i8 [ 0, %scalar.ph2017 ], [ %i.hc, %bb.f ], [ -1, %bb.e ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store i8 %i.hd, ptr %i.fh, align 1
  %i.hf = fmul float %i.dd, %i.gs
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.gr, float %i.hf)
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.de, float %i.gv, float %i.hg)
  %i.hi = fadd float %i.hh, 5.000000e-01
  %i.hj = fptosi float %i.hi to i32               ; 3 uses
  %i.hk = icmp slt i32 %i.hj, -128
  br i1 %i.hk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hl = icmp sgt i32 %i.hj, 127
  br i1 %i.hl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hm = trunc nsw i32 %i.hj to i8
  %i.hn = xor i8 %i.hm, -128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ho = phi i8 [ 0, %bb.g ], [ %i.hn, %bb.i ], [ -1, %bb.h ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  store i8 %i.ho, ptr %i.fi, align 1
  %indvars.iv.next1615 = add nuw nsw i64 %indvars.iv1614, 1 ; 2 uses
  %exitcond1618.not = icmp eq i64 %indvars.iv.next1615, %wide.trip.count1617
  br i1 %exitcond1618.not, label %._crit_edge1509, label %scalar.ph2017, !llvm.loop !19

._crit_edge1509:                                  ; preds = %bb.j, %middle.block2069, %.preheader1439
  %.lcssa1506 = phi ptr [ %.lcssa150615161518, %.preheader1439 ], [ %i.dj, %middle.block2069 ], [ %i.hp, %bb.j ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa15141519, %.preheader1439 ], [ %i.di, %middle.block2069 ], [ %i.he, %bb.j ] ; 3 uses
  %.11331.lcssa.shrunk = phi i32 [ 0, %.preheader1439 ], [ %i.cr, %middle.block2069 ], [ %i.cr, %bb.j ]
  br i1 %.not1411, label %bb.r, label %bb.k

bb.k:                                             ; preds = %._crit_edge1509
  %.11331.lcssa = zext nneg i32 %.11331.lcssa.shrunk to i64 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %.11331.lcssa
  %i.hr = load i32, ptr %i.hq, align 4            ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %.11331.lcssa
  %i.ht = load i32, ptr %i.hs, align 4            ; 3 uses
  %i.hu = and i32 %i.hr, 16711680
  %i.hv = and i32 %i.ht, 16711680
  %i.hw = add nuw nsw i32 %i.hv, %i.hu
end_hunk_0
begin_hunk_1_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.lt = xor <2 x i8> %i.ls, splat (i8 -128)
  %predphi2186 = select <2 x i1> %i.lr, <2 x i8> splat (i8 -1), <2 x i8> %i.lt
  %predphi2187 = select <2 x i1> %i.lq, <2 x i8> %predphi2186, <2 x i8> zeroinitializer
  store <2 x i8> %predphi2187, ptr %next.gep2179, align 1, !alias.scope !82, !noalias !79
  %index.next2188 = add nuw i64 %index2176, 2     ; 2 uses
  %i.lu = icmp eq i64 %index.next2188, %n.vec2162
  br i1 %i.lu, label %middle.block2189, label %vector.body2175, !llvm.loop !26

middle.block2189:                                 ; preds = %vector.body2175
  %i.lv = or disjoint i64 %index2176, 1           ; 2 uses
  %next.gep2180 = getelementptr i8, ptr %.promoted1528, i64 %i.lv
  %i.lw = getelementptr inbounds nuw i8, ptr %next.gep2180, i64 1
  %next.gep2178 = getelementptr i8, ptr %.promoted1527, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %next.gep2178, i64 1
  store ptr %i.lx, ptr %i.b, align 8, !alias.scope !83, !noalias !84
  store ptr %i.lw, ptr %i.c, align 8, !alias.scope !85, !noalias !86
  %cmp.n2190 = icmp eq i64 %n.vec2162, %wide.trip.count1623
  br i1 %cmp.n2190, label %._crit_edge1531.loopexit, label %scalar.ph2119.preheader

scalar.ph2119.preheader:                          ; preds = %vector.memcheck2121, %.lr.ph1530, %middle.block2189
  %indvars.iv1620.ph = phi i64 [ 0, %vector.memcheck2121 ], [ 0, %.lr.ph1530 ], [ %n.vec2162, %middle.block2189 ]
  %.ph = phi ptr [ %.promoted1527, %vector.memcheck2121 ], [ %.promoted1527, %.lr.ph1530 ], [ %i.kj, %middle.block2189 ]
  %.ph2315 = phi ptr [ %.promoted1528, %vector.memcheck2121 ], [ %.promoted1528, %.lr.ph1530 ], [ %i.kk, %middle.block2189 ]
  br label %scalar.ph2119

scalar.ph2119:                                    ; preds = %scalar.ph2119.preheader, %bb.x
  %indvars.iv1620 = phi i64 [ %indvars.iv.next1621, %bb.x ], [ %indvars.iv1620.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.ly = phi ptr [ %i.nd, %bb.x ], [ %.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.lz = phi ptr [ %i.no, %bb.x ], [ %.ph2315, %scalar.ph2119.preheader ] ; 2 uses
  %.idx1689 = shl nuw nsw i64 %indvars.iv1620, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.11320.lcssa, i64 %.idx1689 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4            ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = load i32, ptr %i.mc, align 4            ; 3 uses
  %i.me = and i32 %i.mb, 16711680
  %i.mf = and i32 %i.md, 16711680
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = lshr i32 %i.mg, 17
  %i.mi = and i32 %i.mb, 65280
  %i.mj = and i32 %i.md, 65280
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  %i.ml = lshr i32 %i.mk, 9
  %i.mm = and i32 %i.mb, 255
  %i.mn = and i32 %i.md, 255
  %i.mo = add nuw nsw i32 %i.mn, %i.mm
  %i.mp = lshr i32 %i.mo, 1
  %i.mq = uitofp nneg i32 %i.mh to float          ; 2 uses
  %i.mr = uitofp nneg i32 %i.ml to float          ; 2 uses
  %i.ms = fmul float %i.ju, %i.mr
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.js, float %i.mq, float %i.ms)
  %i.mu = uitofp nneg i32 %i.mp to float          ; 2 uses
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.mu, float %i.mt)
  %i.mw = fadd float %i.mv, 5.000000e-01
  %i.mx = fptosi float %i.mw to i32               ; 3 uses
  %i.my = icmp slt i32 %i.mx, -128
  br i1 %i.my, label %bb.u, label %bb.s

bb.s:                                             ; preds = %scalar.ph2119
  %i.mz = icmp sgt i32 %i.mx, 127
  br i1 %i.mz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.na = trunc nsw i32 %i.mx to i8
  %i.nb = xor i8 %i.na, -128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %scalar.ph2119
  %i.nc = phi i8 [ 0, %scalar.ph2119 ], [ %i.nb, %bb.t ], [ -1, %bb.s ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ly, i64 1 ; 2 uses
  store ptr %i.nd, ptr %i.b, align 8
  store i8 %i.nc, ptr %i.ly, align 1
  %i.ne = fmul float %i.ka, %i.mr
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.mq, float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.mu, float %i.nf)
  %i.nh = fadd float %i.ng, 5.000000e-01
  %i.ni = fptosi float %i.nh to i32               ; 3 uses
  %i.nj = icmp slt i32 %i.ni, -128
  br i1 %i.nj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nk = icmp sgt i32 %i.ni, 127
  br i1 %i.nk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nl = trunc nsw i32 %i.ni to i8
  %i.nm = xor i8 %i.nl, -128
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.nn = phi i8 [ 0, %bb.u ], [ %i.nm, %bb.w ], [ -1, %bb.v ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  store ptr %i.no, ptr %i.c, align 8
  store i8 %i.nn, ptr %i.lz, align 1
  %indvars.iv.next1621 = add nuw nsw i64 %indvars.iv1620, 1 ; 2 uses
  %exitcond1624.not = icmp eq i64 %indvars.iv.next1621, %wide.trip.count1623
  br i1 %exitcond1624.not, label %._crit_edge1531.loopexit, label %scalar.ph2119, !llvm.loop !28

._crit_edge1531.loopexit:                         ; preds = %bb.x, %middle.block2189
  %i.np = shl nuw nsw i32 %i.i, 1
  %i.nq = zext nneg i32 %i.np to i64
  br label %._crit_edge1531

._crit_edge1531:                                  ; preds = %._crit_edge1531.loopexit, %.preheader1438
  %.21332.lcssa = phi i64 [ 0, %.preheader1438 ], [ %i.nq, %._crit_edge1531.loopexit ]
  %.not1410 = icmp eq i32 %i.j, 0
  br i1 %.not1410, label %._crit_edge1531._crit_edge, label %bb.y

bb.y:                                             ; preds = %._crit_edge1531
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.11320.lcssa, i64 %.21332.lcssa
  %i.ns = load i32, ptr %i.nr, align 4            ; 3 uses
  %i.nt = lshr i32 %i.ns, 16
  %i.nu = and i32 %i.nt, 255
  %i.nv = lshr i32 %i.ns, 8
  %i.nw = and i32 %i.nv, 255
  %i.nx = and i32 %i.ns, 255
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.nz = load float, ptr %i.ny, align 8
  %i.oa = uitofp nneg i32 %i.nu to float          ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = uitofp nneg i32 %i.nw to float          ; 2 uses
  %i.oe = fmul float %i.oc, %i.od
  %i.of = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.oa, float %i.oe)
  %i.og = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oh = load float, ptr %i.og, align 8
  %i.oi = uitofp nneg i32 %i.nx to float          ; 2 uses
  %i.oj = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.oi, float %i.of)
  %i.ok = fadd float %i.oj, 5.000000e-01
  %i.ol = fptosi float %i.ok to i32               ; 3 uses
  %i.om = icmp slt i32 %i.ol, -128
  br i1 %i.om, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.on = icmp sgt i32 %i.ol, 127
  br i1 %i.on, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oo = trunc nsw i32 %i.ol to i8
  %i.op = xor i8 %i.oo, -128
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.oq = phi i8 [ 0, %bb.y ], [ %i.op, %bb.aa ], [ -1, %bb.z ]
  %i.or = load ptr, ptr %i.b, align 8
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ot = load float, ptr %i.os, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ov = load float, ptr %i.ou, align 8
  %i.ow = fmul float %i.ov, %i.od
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.oa, float %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.oi, float %i.ox)
  %i.pb = fadd float %i.pa, 5.000000e-01
  %i.pc = fptosi float %i.pb to i32               ; 3 uses
  %i.pd = icmp slt i32 %i.pc, -128
  br i1 %i.pd, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pe = icmp sgt i32 %i.pc, 127
  br i1 %i.pe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pf = trunc nsw i32 %i.pc to i8
  %i.pg = xor i8 %i.pf, -128
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ph = phi i8 [ 0, %bb.ab ], [ %i.pg, %bb.ad ], [ -1, %bb.ac ]
  %i.pi = load ptr, ptr %i.c, align 8
  store i8 %i.ph, ptr %i.pi, align 1
  br label %._crit_edge1531._crit_edge

bb.af:                                            ; preds = %._crit_edge1484
  %i.pj = icmp sgt i32 %1, 1
  br i1 %i.pj, label %.preheader1441.lr.ph, label %._crit_edge1496

.preheader1441.lr.ph:                             ; preds = %bb.af
  %i.pk = load i32, ptr %i.e, align 4
  %i.pl = add nsw i32 %0, 1
  %.neg1403 = sdiv i32 %i.pl, -2
  %.neg1404 = shl nsw i32 %.neg1403, 1
  %i.pm = add i32 %i.pk, %.neg1404
  %i.pn = icmp sgt i32 %0, 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1407 = icmp eq i32 %i.j, 0
  %i.pu = zext i32 %i.pm to i64
  %i.pv = sext i32 %i.f to i64                    ; 3 uses
  %wide.trip.count1606 = zext i32 %i.i to i64     ; 5 uses
  %i.pw = shl nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.px = add nsw i32 %i.g, -1
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nsw i64 %i.pv, %i.py                ; 2 uses
  %i.qa = shl nuw nsw i64 %wide.trip.count1606, 3 ; 2 uses
  %i.qb = getelementptr i8, ptr %2, i64 %.pre-phi
  %scevgep1903.a = getelementptr i8, ptr %i.qb, i64 %i.pz
  %i.qc = getelementptr i8, ptr %scevgep1903.a, i64 %i.qa
  %i.qd = getelementptr i8, ptr %2, i64 %i.pz
  %scevgep1904 = getelementptr i8, ptr %i.qd, i64 %i.qa
  %i.qe = shl nuw nsw i64 %wide.trip.count1606, 1
  %min.iters.check1906 = icmp ult i32 %0, 8
  %stride.check1911 = icmp slt i32 %i.f, 0
  %n.vec1916 = and i64 %wide.trip.count1606, 1073741820 ; 4 uses
  %i.qf = shl nuw nsw i64 %n.vec1916, 1
  %cmp.n1945 = icmp eq i64 %n.vec1916, %wide.trip.count1606
  br label %.preheader1441

.preheader1441:                                   ; preds = %.preheader1441.lr.ph, %bb.at
  %.013081495 = phi ptr [ %i.r, %.preheader1441.lr.ph ], [ %i.wp, %bb.at ] ; 8 uses
  %.113171494 = phi ptr [ %i.cd, %.preheader1441.lr.ph ], [ %i.wr, %bb.at ] ; 5 uses
  %.213211493 = phi ptr [ %2, %.preheader1441.lr.ph ], [ %i.wq, %bb.at ] ; 5 uses
  %.213251492 = phi i32 [ 0, %.preheader1441.lr.ph ], [ %i.ws, %bb.at ]
  br i1 %i.pn, label %.lr.ph1488, label %._crit_edge1489

.lr.ph1488:                                       ; preds = %.preheader1441
  %i.qg = load float, ptr %i.po, align 8          ; 2 uses
  %i.qh = load float, ptr %i.pp, align 4          ; 2 uses
  %i.qi = load float, ptr %i.pq, align 8          ; 2 uses
  %i.qj = load float, ptr %i.pr, align 4          ; 2 uses
  %i.qk = load float, ptr %i.ps, align 8          ; 2 uses
  %i.ql = load float, ptr %i.pt, align 4          ; 2 uses
  br i1 %min.iters.check1906, label %scalar.ph1905.preheader, label %vector.memcheck1907

vector.memcheck1907:                              ; preds = %.lr.ph1488
  %i.qm = getelementptr i8, ptr %.013081495, i64 %i.qe ; 2 uses
  %bound01908 = icmp ult ptr %.013081495, %scevgep1904
  %bound11909 = icmp ult ptr %2, %i.qm
  %found.conflict1910 = and i1 %bound01908, %bound11909
  %i.qn = or i1 %found.conflict1910, %stride.check1911
  %bound01912 = icmp ult ptr %.013081495, %i.qc
  %bound11913 = icmp ult ptr %i.cd, %i.qm
  %found.conflict1914 = and i1 %bound01912, %bound11913
  %conflict.rdx = or i1 %i.qn, %found.conflict1914
  br i1 %conflict.rdx, label %scalar.ph1905.preheader, label %vector.ph1915

vector.ph1915:                                    ; preds = %vector.memcheck1907
  %i.qo = getelementptr i8, ptr %.013081495, i64 %i.qf ; 2 uses
  %broadcast.splatinsert1917 = insertelement <4 x float> poison, float %i.qg, i64 0
  %broadcast.splat1918 = shufflevector <4 x float> %broadcast.splatinsert1917, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1919 = insertelement <4 x float> poison, float %i.qh, i64 0
  %broadcast.splat1920 = shufflevector <4 x float> %broadcast.splatinsert1919, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1921 = insertelement <4 x float> poison, float %i.qi, i64 0
  %broadcast.splat1922 = shufflevector <4 x float> %broadcast.splatinsert1921, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1923 = insertelement <4 x float> poison, float %i.qj, i64 0
  %broadcast.splat1924 = shufflevector <4 x float> %broadcast.splatinsert1923, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1925 = insertelement <4 x float> poison, float %i.qk, i64 0
  %broadcast.splat1926 = shufflevector <4 x float> %broadcast.splatinsert1925, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1927 = insertelement <4 x float> poison, float %i.ql, i64 0
  %broadcast.splat1928 = shufflevector <4 x float> %broadcast.splatinsert1927, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1929

vector.body1929:                                  ; preds = %vector.body1929, %vector.ph1915
  %index1930 = phi i64 [ 0, %vector.ph1915 ], [ %index.next1943, %vector.body1929 ] ; 3 uses
  %i.qp = shl i64 %index1930, 1
  %next.gep1931 = getelementptr i8, ptr %.013081495, i64 %i.qp
  %i.qq = shl nuw nsw i64 %index1930, 1           ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.qq
  %wide.vec1932 = load <8 x i32>, ptr %i.qr, align 4, !alias.scope !87 ; 2 uses
  %strided.vec1933 = shufflevector <8 x i32> %wide.vec1932, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1934 = shufflevector <8 x i32> %wide.vec1932, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.qq
  %wide.vec1935 = load <8 x i32>, ptr %i.qs, align 4, !alias.scope !88 ; 2 uses
  %strided.vec1936 = shufflevector <8 x i32> %wide.vec1935, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1937 = shufflevector <8 x i32> %wide.vec1935, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qt = and <4 x i32> %strided.vec1933, splat (i32 16711680)
  %i.qu = and <4 x i32> %strided.vec1934, splat (i32 16711680)
  %i.qv = add nuw nsw <4 x i32> %i.qu, %i.qt
  %i.qw = and <4 x i32> %strided.vec1936, splat (i32 16711680)
  %i.qx = add nuw nsw <4 x i32> %i.qv, %i.qw
  %i.qy = and <4 x i32> %strided.vec1937, splat (i32 16711680)
  %i.qz = add nuw nsw <4 x i32> %i.qx, %i.qy
  %i.ra = lshr <4 x i32> %i.qz, splat (i32 18)
  %i.rb = and <4 x i32> %strided.vec1933, splat (i32 65280)
  %i.rc = and <4 x i32> %strided.vec1934, splat (i32 65280)
  %i.rd = add nuw nsw <4 x i32> %i.rc, %i.rb
  %i.re = and <4 x i32> %strided.vec1936, splat (i32 65280)
  %i.rf = add nuw nsw <4 x i32> %i.rd, %i.re
  %i.rg = and <4 x i32> %strided.vec1937, splat (i32 65280)
  %i.rh = add nuw nsw <4 x i32> %i.rf, %i.rg
  %i.ri = lshr <4 x i32> %i.rh, splat (i32 10)
  %i.rj = and <4 x i32> %strided.vec1933, splat (i32 255)
  %i.rk = and <4 x i32> %strided.vec1934, splat (i32 255)
  %i.rl = add nuw nsw <4 x i32> %i.rk, %i.rj
  %i.rm = and <4 x i32> %strided.vec1936, splat (i32 255)
  %i.rn = add nuw nsw <4 x i32> %i.rl, %i.rm
  %i.ro = and <4 x i32> %strided.vec1937, splat (i32 255)
  %i.rp = add nuw nsw <4 x i32> %i.rn, %i.ro
  %i.rq = lshr <4 x i32> %i.rp, splat (i32 2)
  %i.rr = uitofp nneg <4 x i32> %i.ra to <4 x float> ; 2 uses
  %i.rs = uitofp nneg <4 x i32> %i.ri to <4 x float> ; 2 uses
  %i.rt = fmul <4 x float> %broadcast.splat1920, %i.rs
  %i.ru = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1918, <4 x float> %i.rr, <4 x float> %i.rt)
  %i.rv = uitofp nneg <4 x i32> %i.rq to <4 x float> ; 2 uses
  %i.rw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1922, <4 x float> %i.rv, <4 x float> %i.ru)
  %i.rx = fadd <4 x float> %i.rw, splat (float 5.000000e-01)
  %i.ry = fptosi <4 x float> %i.rx to <4 x i32>   ; 3 uses
  %i.rz = fmul <4 x float> %broadcast.splat1926, %i.rs
  %i.sa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1924, <4 x float> %i.rr, <4 x float> %i.rz)
  %i.sb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1928, <4 x float> %i.rv, <4 x float> %i.sa)
  %i.sc = fadd <4 x float> %i.sb, splat (float 5.000000e-01)
  %i.sd = fptosi <4 x float> %i.sc to <4 x i32>   ; 3 uses
  %i.se = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sf = icmp sgt <8 x i32> %i.se, splat (i32 -129)
  %i.sg = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sh = icmp sgt <8 x i32> %i.sg, splat (i32 127)
  %i.si = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sj = trunc <8 x i32> %i.si to <8 x i8>
  %i.sk = xor <8 x i8> %i.sj, splat (i8 -128)
  %i.sl = select <8 x i1> %i.sh, <8 x i8> splat (i8 -1), <8 x i8> %i.sk
  %interleaved.vec1942 = select <8 x i1> %i.sf, <8 x i8> %i.sl, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec1942, ptr %next.gep1931, align 1, !alias.scope !89, !noalias !90
  %index.next1943 = add nuw i64 %index1930, 4     ; 2 uses
  %i.sm = icmp eq i64 %index.next1943, %n.vec1916
  br i1 %i.sm, label %middle.block1944, label %vector.body1929, !llvm.loop !33

middle.block1944:                                 ; preds = %vector.body1929
  br i1 %cmp.n1945, label %._crit_edge1489, label %scalar.ph1905.preheader

scalar.ph1905.preheader:                          ; preds = %vector.memcheck1907, %.lr.ph1488, %middle.block1944
  %indvars.iv1603.ph = phi i64 [ 0, %vector.memcheck1907 ], [ 0, %.lr.ph1488 ], [ %n.vec1916, %middle.block1944 ]
  %.113091487.ph = phi ptr [ %.013081495, %vector.memcheck1907 ], [ %.013081495, %.lr.ph1488 ], [ %i.qo, %middle.block1944 ]
  br label %scalar.ph1905

scalar.ph1905:                                    ; preds = %scalar.ph1905.preheader, %bb.al
  %indvars.iv1603 = phi i64 [ %indvars.iv.next1604, %bb.al ], [ %indvars.iv1603.ph, %scalar.ph1905.preheader ] ; 2 uses
  %.113091487 = phi ptr [ %i.ut, %bb.al ], [ %.113091487.ph, %scalar.ph1905.preheader ] ; 3 uses
  %i.sn = shl nuw nsw i64 %indvars.iv1603, 1      ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4            ; 3 uses
  %i.sq = or disjoint i64 %i.sn, 1                ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4            ; 3 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.sn
  %i.su = load i32, ptr %i.st, align 4            ; 3 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.sq
  %i.sw = load i32, ptr %i.sv, align 4            ; 3 uses
  %i.sx = and i32 %i.sp, 16711680
  %i.sy = and i32 %i.ss, 16711680
  %i.sz = add nuw nsw i32 %i.sy, %i.sx
  %i.ta = and i32 %i.su, 16711680
  %i.tb = add nuw nsw i32 %i.sz, %i.ta
  %i.tc = and i32 %i.sw, 16711680
  %i.td = add nuw nsw i32 %i.tb, %i.tc
  %i.te = lshr i32 %i.td, 18
  %i.tf = and i32 %i.sp, 65280
  %i.tg = and i32 %i.ss, 65280
  %i.th = add nuw nsw i32 %i.tg, %i.tf
  %i.ti = and i32 %i.su, 65280
  %i.tj = add nuw nsw i32 %i.th, %i.ti
  %i.tk = and i32 %i.sw, 65280
  %i.tl = add nuw nsw i32 %i.tj, %i.tk
  %i.tm = lshr i32 %i.tl, 10
  %i.tn = and i32 %i.sp, 255
  %i.to = and i32 %i.ss, 255
  %i.tp = add nuw nsw i32 %i.to, %i.tn
  %i.tq = and i32 %i.su, 255
  %i.tr = add nuw nsw i32 %i.tp, %i.tq
  %i.ts = and i32 %i.sw, 255
  %i.tt = add nuw nsw i32 %i.tr, %i.ts
  %i.tu = lshr i32 %i.tt, 2
  %i.tv = uitofp nneg i32 %i.te to float          ; 2 uses
  %i.tw = uitofp nneg i32 %i.tm to float          ; 2 uses
  %i.tx = fmul float %i.qh, %i.tw
  %i.ty = tail call float @llvm.fmuladd.f32(float %i.qg, float %i.tv, float %i.tx)
  %i.tz = uitofp nneg i32 %i.tu to float          ; 2 uses
  %i.ua = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.tz, float %i.ty)
  %i.ub = fadd float %i.ua, 5.000000e-01
  %i.uc = fptosi float %i.ub to i32               ; 3 uses
  %i.ud = icmp slt i32 %i.uc, -128
  br i1 %i.ud, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %scalar.ph1905
  %i.ue = icmp sgt i32 %i.uc, 127
  br i1 %i.ue, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.uf = trunc nsw i32 %i.uc to i8
  %i.ug = xor i8 %i.uf, -128
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %scalar.ph1905
  %i.uh = phi i8 [ 0, %scalar.ph1905 ], [ %i.ug, %bb.ah ], [ -1, %bb.ag ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.113091487, i64 1
  store i8 %i.uh, ptr %.113091487, align 1
  %i.uj = fmul float %i.qk, %i.tw
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.tv, float %i.uj)
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.ql, float %i.tz, float %i.uk)
  %i.um = fadd float %i.ul, 5.000000e-01
  %i.un = fptosi float %i.um to i32               ; 3 uses
  %i.uo = icmp slt i32 %i.un, -128
  br i1 %i.uo, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.up = icmp sgt i32 %i.un, 127
  br i1 %i.up, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.uq = trunc nsw i32 %i.un to i8
  %i.ur = xor i8 %i.uq, -128
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.us = phi i8 [ 0, %bb.ai ], [ %i.ur, %bb.ak ], [ -1, %bb.aj ]
  %i.ut = getelementptr inbounds nuw i8, ptr %.113091487, i64 2 ; 2 uses
  store i8 %i.us, ptr %i.ui, align 1
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %wide.trip.count1606
  br i1 %exitcond1607.not, label %._crit_edge1489, label %scalar.ph1905, !llvm.loop !34

._crit_edge1489:                                  ; preds = %bb.al, %middle.block1944, %.preheader1441
  %.31333.lcssa.shrunk = phi i32 [ 0, %.preheader1441 ], [ %i.pw, %middle.block1944 ], [ %i.pw, %bb.al ]
  %.11309.lcssa = phi ptr [ %.013081495, %.preheader1441 ], [ %i.qo, %middle.block1944 ], [ %i.ut, %bb.al ] ; 4 uses
  br i1 %.not1407, label %bb.at, label %bb.am

bb.am:                                            ; preds = %._crit_edge1489
  %.31333.lcssa = zext nneg i32 %.31333.lcssa.shrunk to i64 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %.31333.lcssa
  %i.uv = load i32, ptr %i.uu, align 4            ; 3 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %.31333.lcssa
  %i.ux = load i32, ptr %i.uw, align 4            ; 3 uses
  %i.uy = and i32 %i.uv, 16711680
  %i.uz = and i32 %i.ux, 16711680
  %i.va = add nuw nsw i32 %i.uz, %i.uy
  %i.vb = lshr i32 %i.va, 17
  %i.vc = and i32 %i.uv, 65280
  %i.vd = and i32 %i.ux, 65280
  %i.ve = add nuw nsw i32 %i.vd, %i.vc
  %i.vf = lshr i32 %i.ve, 9
  %i.vg = and i32 %i.uv, 255
  %i.vh = and i32 %i.ux, 255
  %i.vi = add nuw nsw i32 %i.vh, %i.vg
end_hunk_1
begin_hunk_2_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.yk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1969, <4 x float> %i.yb, <4 x float> %i.yj)
  %i.yl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1973, <4 x float> %i.yf, <4 x float> %i.yk)
  %i.ym = fadd <4 x float> %i.yl, splat (float 5.000000e-01)
  %i.yn = fptosi <4 x float> %i.ym to <4 x i32>   ; 3 uses
  %i.yo = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yp = icmp sgt <8 x i32> %i.yo, splat (i32 -129)
  %i.yq = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yr = icmp sgt <8 x i32> %i.yq, splat (i32 127)
  %i.ys = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yt = trunc <8 x i32> %i.ys to <8 x i8>
  %i.yu = xor <8 x i8> %i.yt, splat (i8 -128)
  %i.yv = select <8 x i1> %i.yr, <8 x i8> splat (i8 -1), <8 x i8> %i.yu
  %interleaved.vec1984 = select <8 x i1> %i.yp, <8 x i8> %i.yv, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec1984, ptr %next.gep1976, align 1, !alias.scope !92, !noalias !91
  %index.next1985 = add nuw i64 %index1975, 4     ; 2 uses
  %i.yw = icmp eq i64 %index.next1985, %n.vec1961
  br i1 %i.yw, label %middle.block1986, label %vector.body1974, !llvm.loop !39

middle.block1986:                                 ; preds = %vector.body1974
  %cmp.n1987 = icmp eq i64 %n.vec1961, %wide.trip.count1612
  br i1 %cmp.n1987, label %._crit_edge1502.loopexit, label %scalar.ph1954.preheader

scalar.ph1954.preheader:                          ; preds = %vector.memcheck1956, %.lr.ph1501, %middle.block1986
  %indvars.iv1609.ph = phi i64 [ 0, %vector.memcheck1956 ], [ 0, %.lr.ph1501 ], [ %n.vec1961, %middle.block1986 ]
  %.313111500.ph = phi ptr [ %.01308.lcssa, %vector.memcheck1956 ], [ %.01308.lcssa, %.lr.ph1501 ], [ %i.xl, %middle.block1986 ]
  br label %scalar.ph1954

scalar.ph1954:                                    ; preds = %scalar.ph1954.preheader, %bb.az
  %indvars.iv1609 = phi i64 [ %indvars.iv.next1610, %bb.az ], [ %indvars.iv1609.ph, %scalar.ph1954.preheader ] ; 2 uses
  %.313111500 = phi ptr [ %i.aal, %bb.az ], [ %.313111500.ph, %scalar.ph1954.preheader ] ; 3 uses
  %.idx1688 = shl nuw nsw i64 %indvars.iv1609, 3
  %i.yx = getelementptr inbounds nuw i8, ptr %.21321.lcssa, i64 %.idx1688 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4            ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.za = load i32, ptr %i.yz, align 4            ; 3 uses
  %i.zb = and i32 %i.yy, 16711680
  %i.zc = and i32 %i.za, 16711680
  %i.zd = add nuw nsw i32 %i.zc, %i.zb
  %i.ze = lshr i32 %i.zd, 17
  %i.zf = and i32 %i.yy, 65280
  %i.zg = and i32 %i.za, 65280
  %i.zh = add nuw nsw i32 %i.zg, %i.zf
  %i.zi = lshr i32 %i.zh, 9
  %i.zj = and i32 %i.yy, 255
  %i.zk = and i32 %i.za, 255
  %i.zl = add nuw nsw i32 %i.zk, %i.zj
  %i.zm = lshr i32 %i.zl, 1
  %i.zn = uitofp nneg i32 %i.ze to float          ; 2 uses
  %i.zo = uitofp nneg i32 %i.zi to float          ; 2 uses
  %i.zp = fmul float %i.wx, %i.zo
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.wv, float %i.zn, float %i.zp)
  %i.zr = uitofp nneg i32 %i.zm to float          ; 2 uses
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.wz, float %i.zr, float %i.zq)
  %i.zt = fadd float %i.zs, 5.000000e-01
  %i.zu = fptosi float %i.zt to i32               ; 3 uses
  %i.zv = icmp slt i32 %i.zu, -128
  br i1 %i.zv, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %scalar.ph1954
  %i.zw = icmp sgt i32 %i.zu, 127
  br i1 %i.zw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zx = trunc nsw i32 %i.zu to i8
  %i.zy = xor i8 %i.zx, -128
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %scalar.ph1954
  %i.zz = phi i8 [ 0, %scalar.ph1954 ], [ %i.zy, %bb.av ], [ -1, %bb.au ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.313111500, i64 1
  store i8 %i.zz, ptr %.313111500, align 1
  %i.aab = fmul float %i.xd, %i.zo
  %i.aac = tail call float @llvm.fmuladd.f32(float %i.xb, float %i.zn, float %i.aab)
  %i.aad = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.zr, float %i.aac)
  %i.aae = fadd float %i.aad, 5.000000e-01
  %i.aaf = fptosi float %i.aae to i32             ; 3 uses
  %i.aag = icmp slt i32 %i.aaf, -128
  br i1 %i.aag, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aah = icmp sgt i32 %i.aaf, 127
  br i1 %i.aah, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aai = trunc nsw i32 %i.aaf to i8
  %i.aaj = xor i8 %i.aai, -128
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.aak = phi i8 [ 0, %bb.aw ], [ %i.aaj, %bb.ay ], [ -1, %bb.ax ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.313111500, i64 2 ; 2 uses
  store i8 %i.aak, ptr %i.aaa, align 1
  %indvars.iv.next1610 = add nuw nsw i64 %indvars.iv1609, 1 ; 2 uses
  %exitcond1613.not = icmp eq i64 %indvars.iv.next1610, %wide.trip.count1612
  br i1 %exitcond1613.not, label %._crit_edge1502.loopexit, label %scalar.ph1954, !llvm.loop !40

._crit_edge1502.loopexit:                         ; preds = %bb.az, %middle.block1986
  %.lcssa1721 = phi ptr [ %i.xl, %middle.block1986 ], [ %i.aal, %bb.az ]
  %i.aam = shl nuw nsw i32 %i.i, 1
  %i.aan = zext nneg i32 %i.aam to i64
  br label %._crit_edge1502

._crit_edge1502:                                  ; preds = %._crit_edge1502.loopexit, %.preheader1440
  %.41334.lcssa = phi i64 [ 0, %.preheader1440 ], [ %i.aan, %._crit_edge1502.loopexit ]
  %.31311.lcssa = phi ptr [ %.01308.lcssa, %.preheader1440 ], [ %.lcssa1721, %._crit_edge1502.loopexit ] ; 2 uses
  %.not1406 = icmp eq i32 %i.j, 0
  br i1 %.not1406, label %._crit_edge1531._crit_edge, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1502
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.21321.lcssa, i64 %.41334.lcssa
  %i.aap = load i32, ptr %i.aao, align 4          ; 3 uses
  %i.aaq = lshr i32 %i.aap, 16
  %i.aar = and i32 %i.aaq, 255
  %i.aas = lshr i32 %i.aap, 8
  %i.aat = and i32 %i.aas, 255
  %i.aau = and i32 %i.aap, 255
  %i.aav = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aaw = load float, ptr %i.aav, align 8
  %i.aax = uitofp nneg i32 %i.aar to float        ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aaz = load float, ptr %i.aay, align 4
  %i.aba = uitofp nneg i32 %i.aat to float        ; 2 uses
  %i.abb = fmul float %i.aaz, %i.aba
  %i.abc = tail call float @llvm.fmuladd.f32(float %i.aaw, float %i.aax, float %i.abb)
  %i.abd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.abe = load float, ptr %i.abd, align 8
  %i.abf = uitofp nneg i32 %i.aau to float        ; 2 uses
  %i.abg = tail call float @llvm.fmuladd.f32(float %i.abe, float %i.abf, float %i.abc)
  %i.abh = fadd float %i.abg, 5.000000e-01
  %i.abi = fptosi float %i.abh to i32             ; 3 uses
  %i.abj = icmp slt i32 %i.abi, -128
  br i1 %i.abj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abk = icmp sgt i32 %i.abi, 127
  br i1 %i.abk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.abl = trunc nsw i32 %i.abi to i8
  %i.abm = xor i8 %i.abl, -128
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.abn = phi i8 [ 0, %bb.ba ], [ %i.abm, %bb.bc ], [ -1, %bb.bb ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.31311.lcssa, i64 1
  store i8 %i.abn, ptr %.31311.lcssa, align 1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.abq = load float, ptr %i.abp, align 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.abs = load float, ptr %i.abr, align 8
  %i.abt = fmul float %i.abs, %i.aba
  %i.abu = tail call float @llvm.fmuladd.f32(float %i.abq, float %i.aax, float %i.abt)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.abw = load float, ptr %i.abv, align 4
  %i.abx = tail call float @llvm.fmuladd.f32(float %i.abw, float %i.abf, float %i.abu)
  %i.aby = fadd float %i.abx, 5.000000e-01
  %i.abz = fptosi float %i.aby to i32             ; 3 uses
  %i.aca = icmp slt i32 %i.abz, -128
  br i1 %i.aca, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.acb = icmp sgt i32 %i.abz, 127
  br i1 %i.acb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.acc = trunc nsw i32 %i.abz to i8
  %i.acd = xor i8 %i.acc, -128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ace = phi i8 [ 0, %bb.bd ], [ %i.acd, %bb.bf ], [ -1, %bb.be ]
  store i8 %i.ace, ptr %i.abo, align 1
  br label %._crit_edge1531._crit_edge

bb.bh:                                            ; preds = %._crit_edge1484
  %i.acf = icmp sgt i32 %1, 1
  br i1 %i.acf, label %.preheader1437.lr.ph, label %._crit_edge1543

.preheader1437.lr.ph:                             ; preds = %bb.bh
  %i.acg = load i32, ptr %i.e, align 4
  %i.ach = add nsw i32 %0, 1
  %.neg = sdiv i32 %i.ach, -2
  %.neg1399 = shl nsw i32 %.neg, 1
  %i.aci = add i32 %i.acg, %.neg1399
  %i.acj = icmp sgt i32 %0, 1
  %i.ack = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not1402 = icmp eq i32 %i.j, 0
  %i.acq = zext i32 %i.aci to i64
  %i.acr = sext i32 %i.f to i64                   ; 3 uses
  %wide.trip.count1628 = zext i32 %i.i to i64     ; 5 uses
  %i.acs = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %i.act = add nsw i32 %i.g, -1
  %i.acu = zext i32 %i.act to i64
  %i.acv = mul nsw i64 %i.acr, %i.acu             ; 2 uses
  %i.acw = shl nuw nsw i64 %wide.trip.count1628, 3 ; 2 uses
  %i.acx = getelementptr i8, ptr %2, i64 %.pre-phi
  %scevgep2206.a = getelementptr i8, ptr %i.acx, i64 %i.acv
  %i.acy = getelementptr i8, ptr %scevgep2206.a, i64 %i.acw
  %i.acz = getelementptr i8, ptr %2, i64 %i.acv
  %scevgep2207 = getelementptr i8, ptr %i.acz, i64 %i.acw
  %i.ada = shl nuw nsw i64 %wide.trip.count1628, 1
  %min.iters.check2209 = icmp ult i32 %0, 8
  %stride.check2214 = icmp slt i32 %i.f, 0
  %n.vec2220 = and i64 %wide.trip.count1628, 1073741820 ; 4 uses
  %i.adb = shl nuw nsw i64 %n.vec2220, 1
  %cmp.n2249 = icmp eq i64 %n.vec2220, %wide.trip.count1628
  br label %.preheader1437

.preheader1437:                                   ; preds = %.preheader1437.lr.ph, %bb.bv
  %.413121542 = phi ptr [ %i.r, %.preheader1437.lr.ph ], [ %i.ajl, %bb.bv ] ; 8 uses
  %.213181541 = phi ptr [ %i.cd, %.preheader1437.lr.ph ], [ %i.ajn, %bb.bv ] ; 5 uses
  %.313221540 = phi ptr [ %2, %.preheader1437.lr.ph ], [ %i.ajm, %bb.bv ] ; 5 uses
  %.313261539 = phi i32 [ 0, %.preheader1437.lr.ph ], [ %i.ajo, %bb.bv ]
  br i1 %i.acj, label %.lr.ph1535, label %._crit_edge1536

.lr.ph1535:                                       ; preds = %.preheader1437
  %i.adc = load float, ptr %i.ack, align 4        ; 2 uses
  %i.add = load float, ptr %i.acl, align 8        ; 2 uses
  %i.ade = load float, ptr %i.acm, align 4        ; 2 uses
  %i.adf = load float, ptr %i.acn, align 8        ; 2 uses
  %i.adg = load float, ptr %i.aco, align 4        ; 2 uses
  %i.adh = load float, ptr %i.acp, align 8        ; 2 uses
  br i1 %min.iters.check2209, label %scalar.ph2208.preheader, label %vector.memcheck2210

vector.memcheck2210:                              ; preds = %.lr.ph1535
  %i.adi = getelementptr i8, ptr %.413121542, i64 %i.ada ; 2 uses
  %bound02211 = icmp ult ptr %.413121542, %scevgep2207
  %bound12212 = icmp ult ptr %2, %i.adi
  %found.conflict2213 = and i1 %bound02211, %bound12212
  %i.adj = or i1 %found.conflict2213, %stride.check2214
  %bound02215 = icmp ult ptr %.413121542, %i.acy
  %bound12216 = icmp ult ptr %i.cd, %i.adi
  %found.conflict2217 = and i1 %bound02215, %bound12216
  %conflict.rdx2218 = or i1 %i.adj, %found.conflict2217
  br i1 %conflict.rdx2218, label %scalar.ph2208.preheader, label %vector.ph2219

vector.ph2219:                                    ; preds = %vector.memcheck2210
  %i.adk = getelementptr i8, ptr %.413121542, i64 %i.adb ; 2 uses
  %broadcast.splatinsert2221 = insertelement <4 x float> poison, float %i.adc, i64 0
  %broadcast.splat2222 = shufflevector <4 x float> %broadcast.splatinsert2221, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2223 = insertelement <4 x float> poison, float %i.add, i64 0
  %broadcast.splat2224 = shufflevector <4 x float> %broadcast.splatinsert2223, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2225 = insertelement <4 x float> poison, float %i.ade, i64 0
  %broadcast.splat2226 = shufflevector <4 x float> %broadcast.splatinsert2225, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2227 = insertelement <4 x float> poison, float %i.adf, i64 0
  %broadcast.splat2228 = shufflevector <4 x float> %broadcast.splatinsert2227, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2229 = insertelement <4 x float> poison, float %i.adg, i64 0
  %broadcast.splat2230 = shufflevector <4 x float> %broadcast.splatinsert2229, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2231 = insertelement <4 x float> poison, float %i.adh, i64 0
  %broadcast.splat2232 = shufflevector <4 x float> %broadcast.splatinsert2231, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2233

vector.body2233:                                  ; preds = %vector.body2233, %vector.ph2219
  %index2234 = phi i64 [ 0, %vector.ph2219 ], [ %index.next2247, %vector.body2233 ] ; 3 uses
  %i.adl = shl i64 %index2234, 1
  %next.gep2235 = getelementptr i8, ptr %.413121542, i64 %i.adl
  %i.adm = shl nuw nsw i64 %index2234, 1          ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.adm
  %wide.vec2236 = load <8 x i32>, ptr %i.adn, align 4, !alias.scope !93 ; 2 uses
  %strided.vec2237 = shufflevector <8 x i32> %wide.vec2236, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2238 = shufflevector <8 x i32> %wide.vec2236, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.adm
  %wide.vec2239 = load <8 x i32>, ptr %i.ado, align 4, !alias.scope !94 ; 2 uses
  %strided.vec2240 = shufflevector <8 x i32> %wide.vec2239, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2241 = shufflevector <8 x i32> %wide.vec2239, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.adp = and <4 x i32> %strided.vec2237, splat (i32 16711680)
  %i.adq = and <4 x i32> %strided.vec2238, splat (i32 16711680)
  %i.adr = add nuw nsw <4 x i32> %i.adq, %i.adp
  %i.ads = and <4 x i32> %strided.vec2240, splat (i32 16711680)
  %i.adt = add nuw nsw <4 x i32> %i.adr, %i.ads
  %i.adu = and <4 x i32> %strided.vec2241, splat (i32 16711680)
  %i.adv = add nuw nsw <4 x i32> %i.adt, %i.adu
  %i.adw = lshr <4 x i32> %i.adv, splat (i32 18)
  %i.adx = and <4 x i32> %strided.vec2237, splat (i32 65280)
  %i.ady = and <4 x i32> %strided.vec2238, splat (i32 65280)
  %i.adz = add nuw nsw <4 x i32> %i.ady, %i.adx
  %i.aea = and <4 x i32> %strided.vec2240, splat (i32 65280)
  %i.aeb = add nuw nsw <4 x i32> %i.adz, %i.aea
  %i.aec = and <4 x i32> %strided.vec2241, splat (i32 65280)
  %i.aed = add nuw nsw <4 x i32> %i.aeb, %i.aec
  %i.aee = lshr <4 x i32> %i.aed, splat (i32 10)
  %i.aef = and <4 x i32> %strided.vec2237, splat (i32 255)
  %i.aeg = and <4 x i32> %strided.vec2238, splat (i32 255)
  %i.aeh = add nuw nsw <4 x i32> %i.aeg, %i.aef
  %i.aei = and <4 x i32> %strided.vec2240, splat (i32 255)
  %i.aej = add nuw nsw <4 x i32> %i.aeh, %i.aei
  %i.aek = and <4 x i32> %strided.vec2241, splat (i32 255)
  %i.ael = add nuw nsw <4 x i32> %i.aej, %i.aek
  %i.aem = lshr <4 x i32> %i.ael, splat (i32 2)
  %i.aen = uitofp nneg <4 x i32> %i.adw to <4 x float> ; 2 uses
  %i.aeo = uitofp nneg <4 x i32> %i.aee to <4 x float> ; 2 uses
  %i.aep = fmul <4 x float> %broadcast.splat2224, %i.aeo
  %i.aeq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2222, <4 x float> %i.aen, <4 x float> %i.aep)
  %i.aer = uitofp nneg <4 x i32> %i.aem to <4 x float> ; 2 uses
  %i.aes = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2226, <4 x float> %i.aer, <4 x float> %i.aeq)
  %i.aet = fadd <4 x float> %i.aes, splat (float 5.000000e-01)
  %i.aeu = fptosi <4 x float> %i.aet to <4 x i32> ; 3 uses
  %i.aev = fmul <4 x float> %broadcast.splat2230, %i.aeo
  %i.aew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2228, <4 x float> %i.aen, <4 x float> %i.aev)
  %i.aex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2232, <4 x float> %i.aer, <4 x float> %i.aew)
  %i.aey = fadd <4 x float> %i.aex, splat (float 5.000000e-01)
  %i.aez = fptosi <4 x float> %i.aey to <4 x i32> ; 3 uses
  %i.afa = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.afb = icmp sgt <8 x i32> %i.afa, splat (i32 -129)
  %i.afc = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.afd = icmp sgt <8 x i32> %i.afc, splat (i32 127)
  %i.afe = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aff = trunc <8 x i32> %i.afe to <8 x i8>
  %i.afg = xor <8 x i8> %i.aff, splat (i8 -128)
  %i.afh = select <8 x i1> %i.afd, <8 x i8> splat (i8 -1), <8 x i8> %i.afg
  %interleaved.vec2246 = select <8 x i1> %i.afb, <8 x i8> %i.afh, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec2246, ptr %next.gep2235, align 1, !alias.scope !95, !noalias !96
  %index.next2247 = add nuw i64 %index2234, 4     ; 2 uses
  %i.afi = icmp eq i64 %index.next2247, %n.vec2220
  br i1 %i.afi, label %middle.block2248, label %vector.body2233, !llvm.loop !45

middle.block2248:                                 ; preds = %vector.body2233
  br i1 %cmp.n2249, label %._crit_edge1536, label %scalar.ph2208.preheader

scalar.ph2208.preheader:                          ; preds = %vector.memcheck2210, %.lr.ph1535, %middle.block2248
  %indvars.iv1625.ph = phi i64 [ 0, %vector.memcheck2210 ], [ 0, %.lr.ph1535 ], [ %n.vec2220, %middle.block2248 ]
  %.513131534.ph = phi ptr [ %.413121542, %vector.memcheck2210 ], [ %.413121542, %.lr.ph1535 ], [ %i.adk, %middle.block2248 ]
  br label %scalar.ph2208

scalar.ph2208:                                    ; preds = %scalar.ph2208.preheader, %bb.bn
  %indvars.iv1625 = phi i64 [ %indvars.iv.next1626, %bb.bn ], [ %indvars.iv1625.ph, %scalar.ph2208.preheader ] ; 2 uses
  %.513131534 = phi ptr [ %i.ahp, %bb.bn ], [ %.513131534.ph, %scalar.ph2208.preheader ] ; 3 uses
  %i.afj = shl nuw nsw i64 %indvars.iv1625, 1     ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.afm = or disjoint i64 %i.afj, 1              ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4          ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.afj
  %i.afq = load i32, ptr %i.afp, align 4          ; 3 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.afm
  %i.afs = load i32, ptr %i.afr, align 4          ; 3 uses
  %i.aft = and i32 %i.afl, 16711680
  %i.afu = and i32 %i.afo, 16711680
  %i.afv = add nuw nsw i32 %i.afu, %i.aft
  %i.afw = and i32 %i.afq, 16711680
  %i.afx = add nuw nsw i32 %i.afv, %i.afw
  %i.afy = and i32 %i.afs, 16711680
  %i.afz = add nuw nsw i32 %i.afx, %i.afy
  %i.aga = lshr i32 %i.afz, 18
  %i.agb = and i32 %i.afl, 65280
  %i.agc = and i32 %i.afo, 65280
  %i.agd = add nuw nsw i32 %i.agc, %i.agb
  %i.age = and i32 %i.afq, 65280
  %i.agf = add nuw nsw i32 %i.agd, %i.age
  %i.agg = and i32 %i.afs, 65280
  %i.agh = add nuw nsw i32 %i.agf, %i.agg
  %i.agi = lshr i32 %i.agh, 10
  %i.agj = and i32 %i.afl, 255
  %i.agk = and i32 %i.afo, 255
  %i.agl = add nuw nsw i32 %i.agk, %i.agj
  %i.agm = and i32 %i.afq, 255
  %i.agn = add nuw nsw i32 %i.agl, %i.agm
  %i.ago = and i32 %i.afs, 255
  %i.agp = add nuw nsw i32 %i.agn, %i.ago
  %i.agq = lshr i32 %i.agp, 2
  %i.agr = uitofp nneg i32 %i.aga to float        ; 2 uses
  %i.ags = uitofp nneg i32 %i.agi to float        ; 2 uses
  %i.agt = fmul float %i.add, %i.ags
  %i.agu = tail call float @llvm.fmuladd.f32(float %i.adc, float %i.agr, float %i.agt)
  %i.agv = uitofp nneg i32 %i.agq to float        ; 2 uses
  %i.agw = tail call float @llvm.fmuladd.f32(float %i.ade, float %i.agv, float %i.agu)
  %i.agx = fadd float %i.agw, 5.000000e-01
  %i.agy = fptosi float %i.agx to i32             ; 3 uses
  %i.agz = icmp slt i32 %i.agy, -128
  br i1 %i.agz, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %scalar.ph2208
  %i.aha = icmp sgt i32 %i.agy, 127
  br i1 %i.aha, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ahb = trunc nsw i32 %i.agy to i8
  %i.ahc = xor i8 %i.ahb, -128
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %scalar.ph2208
  %i.ahd = phi i8 [ 0, %scalar.ph2208 ], [ %i.ahc, %bb.bj ], [ -1, %bb.bi ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %.513131534, i64 1
  store i8 %i.ahd, ptr %.513131534, align 1
  %i.ahf = fmul float %i.adg, %i.ags
  %i.ahg = tail call float @llvm.fmuladd.f32(float %i.adf, float %i.agr, float %i.ahf)
  %i.ahh = tail call float @llvm.fmuladd.f32(float %i.adh, float %i.agv, float %i.ahg)
  %i.ahi = fadd float %i.ahh, 5.000000e-01
  %i.ahj = fptosi float %i.ahi to i32             ; 3 uses
  %i.ahk = icmp slt i32 %i.ahj, -128
  br i1 %i.ahk, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ahl = icmp sgt i32 %i.ahj, 127
  br i1 %i.ahl, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ahm = trunc nsw i32 %i.ahj to i8
  %i.ahn = xor i8 %i.ahm, -128
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.aho = phi i8 [ 0, %bb.bk ], [ %i.ahn, %bb.bm ], [ -1, %bb.bl ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %.513131534, i64 2 ; 2 uses
  store i8 %i.aho, ptr %i.ahe, align 1
  %indvars.iv.next1626 = add nuw nsw i64 %indvars.iv1625, 1 ; 2 uses
  %exitcond1629.not = icmp eq i64 %indvars.iv.next1626, %wide.trip.count1628
  br i1 %exitcond1629.not, label %._crit_edge1536, label %scalar.ph2208, !llvm.loop !46

._crit_edge1536:                                  ; preds = %bb.bn, %middle.block2248, %.preheader1437
  %.51335.lcssa.shrunk = phi i32 [ 0, %.preheader1437 ], [ %i.acs, %middle.block2248 ], [ %i.acs, %bb.bn ]
  %.51313.lcssa = phi ptr [ %.413121542, %.preheader1437 ], [ %i.adk, %middle.block2248 ], [ %i.ahp, %bb.bn ] ; 4 uses
  br i1 %.not1402, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1536
  %.51335.lcssa = zext nneg i32 %.51335.lcssa.shrunk to i64 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %.51335.lcssa
  %i.ahr = load i32, ptr %i.ahq, align 4          ; 3 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %.51335.lcssa
  %i.aht = load i32, ptr %i.ahs, align 4          ; 3 uses
  %i.ahu = and i32 %i.ahr, 16711680
  %i.ahv = and i32 %i.aht, 16711680
  %i.ahw = add nuw nsw i32 %i.ahv, %i.ahu
  %i.ahx = lshr i32 %i.ahw, 17
  %i.ahy = and i32 %i.ahr, 65280
  %i.ahz = and i32 %i.aht, 65280
  %i.aia = add nuw nsw i32 %i.ahz, %i.ahy
  %i.aib = lshr i32 %i.aia, 9
  %i.aic = and i32 %i.ahr, 255
  %i.aid = and i32 %i.aht, 255
  %i.aie = add nuw nsw i32 %i.aid, %i.aic
end_hunk_2
begin_hunk_3_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge
  %.8 = phi ptr [ %i.bqy, %bb.dz ], [ %.7.lcssa, %._crit_edge ]
  %i.bqz = getelementptr inbounds i8, ptr %.8, i64 %i.apr
  %i.bra = getelementptr inbounds i8, ptr %.213051455, i64 %i.aps
  %i.brb = add nuw nsw i32 %.613291454, 1         ; 2 uses
  %exitcond1584.not = icmp eq i32 %i.brb, %1
  br i1 %exitcond1584.not, label %.thread1425, label %.preheader1448, !llvm.loop !70

bb.eb:                                            ; preds = %bb.a
  %i.brc = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %4) #6
  %i.brd = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15, ptr noundef %i.brc) #6
  br label %.thread1425

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread1425

.thread1425:                                      ; preds = %bb.ea, %bb.dm, %bb.cy, %.preheader1449, %.preheader1446, %.preheader1444, %bb.ck, %._crit_edge1531._crit_edge, %.thread, %.critedge, %bb.eb
  %.21341 = phi i1 [ %i.brd, %bb.eb ], [ %i.ape, %.thread ], [ false, %.critedge ], [ true, %.preheader1446 ], [ true, %.preheader1444 ], [ true, %bb.ck ], [ true, %._crit_edge1531._crit_edge ], [ true, %.preheader1449 ], [ true, %bb.dm ], [ true, %bb.cy ], [ true, %bb.ea ]
  ret i1 %.21341
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @SDL_ConvertPixels_XBGR2101010_to_P010(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = shl i32 %3, 1                            ; 2 uses
  %i.b = sdiv i32 %1, 2                           ; 2 uses
  %i.c = and i32 %1, 1
  %i.d = sdiv i32 %0, 2                           ; 4 uses
  %i.e = and i32 %0, 1                            ; 2 uses
  %i.f = zext i32 %6 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @RGB2YUVFactorTables, i64 %i.f ; 14 uses
  %i.h = add nsw i32 %0, 1                        ; 2 uses
  %i.i = sdiv i32 %i.h, 2
  %i.j = shl i32 %i.i, 2
  %i.k = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.j)
  %i.l = lshr i32 %5, 1                           ; 2 uses
  %i.m = lshr i32 %i.k, 1
  %i.n = mul i32 %i.l, %1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.preheader185.lr.ph, label %._crit_edge201

.preheader185.lr.ph:                              ; preds = %bb.a
  %i.r = sub i32 %i.l, %0
  %i.s = icmp sgt i32 %0, 0
  %i.t = zext i32 %i.r to i64
  %i.u = sext i32 %3 to i64                       ; 3 uses
  br i1 %i.s, label %.preheader185.lr.ph.split, label %._crit_edge191.split

.preheader185.lr.ph.split:                        ; preds = %.preheader185.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = load float, ptr %i.w, align 8            ; 2 uses
  %i.aa = load float, ptr %i.v, align 4           ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8             ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.ac = add nsw i32 %1, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.u, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2
  %i.ag = getelementptr i8, ptr %2, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check = icmp ult i32 %0, 4
  %stride.check = icmp slt i32 %3, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.ai = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.lr.ph.split, %._crit_edge
  %.0160190 = phi i32 [ 0, %.preheader185.lr.ph.split ], [ %i.bz, %._crit_edge ]
  %.0162189 = phi ptr [ %2, %.preheader185.lr.ph.split ], [ %i.by, %._crit_edge ] ; 3 uses
  %.0188 = phi ptr [ %4, %.preheader185.lr.ph.split ], [ %i.bx, %._crit_edge ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader185
  %i.aj = getelementptr i8, ptr %.0188, i64 %i.ah
  %bound0 = icmp ult ptr %.0188, %scevgep
  %bound1 = icmp ult ptr %2, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %i.ak = or i1 %found.conflict, %stride.check
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = getelementptr i8, ptr %.0188, i64 %i.ai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0188, i64 %i.am
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %index
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !alias.scope !123 ; 3 uses
  %i.ao = and <4 x i32> %wide.load, splat (i32 1023)
  %i.ap = lshr <4 x i32> %wide.load, splat (i32 10)
  %i.aq = and <4 x i32> %i.ap, splat (i32 1023)
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 20)
  %i.as = and <4 x i32> %i.ar, splat (i32 1023)
  %i.at = uitofp nneg <4 x i32> %i.ao to <4 x float>
  %i.au = uitofp nneg <4 x i32> %i.aq to <4 x float>
  %i.av = fmul <4 x float> %broadcast.splat, %i.au
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat7, <4 x float> %i.at, <4 x float> %i.av)
  %i.ax = uitofp nneg <4 x i32> %i.as to <4 x float>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ax, <4 x float> %i.aw)
  %i.az = fadd <4 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fptosi <4 x float> %i.az to <4 x i32>
  %i.bb = add nsw <4 x i32> %broadcast.splat11, %i.ba
  %i.bc = trunc <4 x i32> %i.bb to <4 x i16>
  %i.bd = shl <4 x i16> %i.bc, splat (i16 6)
  store <4 x i16> %i.bd, ptr %next.gep, align 2, !alias.scope !124, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader185, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader185 ], [ %n.vec, %middle.block ]
  %.1183186.ph = phi ptr [ %.0188, %vector.memcheck ], [ %.0188, %.preheader185 ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1183186 = phi ptr [ %i.bw, %scalar.ph ], [ %.1183186.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = and i32 %i.bg, 1023
  %i.bi = lshr i32 %i.bg, 10
  %i.bj = and i32 %i.bi, 1023
  %i.bk = lshr i32 %i.bg, 20
  %i.bl = and i32 %i.bk, 1023
  %i.bm = uitofp nneg i32 %i.bh to float
  %i.bn = uitofp nneg i32 %i.bj to float
  %i.bo = fmul float %i.z, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bm, float %i.bo)
  %i.bq = uitofp nneg i32 %i.bl to float
  %i.br = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bq, float %i.bp)
  %i.bs = fadd float %i.br, 5.000000e-01
  %i.bt = fptosi float %i.bs to i32
  %i.bu = add nsw i32 %i.ab, %i.bt
  %.tr178 = trunc i32 %i.bu to i16
  %i.bv = shl i16 %.tr178, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %.1183186, i64 2 ; 2 uses
  store i16 %i.bv, ptr %.1183186, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa4 = phi ptr [ %i.al, %middle.block ], [ %i.bw, %scalar.ph ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.lcssa4, i64 %i.t
  %i.by = getelementptr inbounds i8, ptr %.0162189, i64 %i.u
  %i.bz = add nuw nsw i32 %.0160190, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond217.not, label %._crit_edge191.split, label %.preheader185, !llvm.loop !110

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader185.lr.ph
  %.not236 = icmp eq i32 %1, 1
  br i1 %.not236, label %._crit_edge201, label %.preheader184.lr.ph

.preheader184.lr.ph:                              ; preds = %._crit_edge191.split
  %.neg = sdiv i32 %i.h, -2
  %.neg168 = shl nsw i32 %.neg, 1
  %i.ca = add i32 %i.m, %.neg168
  %i.cb = sext i32 %3 to i64
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb     ; 2 uses
  %i.cd = icmp sgt i32 %0, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.not173 = icmp eq i32 %i.e, 0
  %i.cg = zext i32 %i.ca to i64
  %i.ch = sext i32 %i.a to i64                    ; 3 uses
  %wide.trip.count221 = zext i32 %i.d to i64      ; 5 uses
  %i.ci = shl nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.cj = add nsw i32 %i.b, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ch, %i.ck
  %i.cm = shl nuw nsw i64 %wide.trip.count221, 3
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %scevgep24.a = getelementptr i8, ptr %2, i64 %i.cn
  %i.co = getelementptr i8, ptr %scevgep24.a, i64 %i.u
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.cn
  %i.cp = shl nuw nsw i64 %wide.trip.count221, 2
  %min.iters.check27 = icmp ult i32 %0, 8
  %stride.check32 = icmp slt i32 %i.a, 0
  %n.vec37 = and i64 %wide.trip.count221, 1073741820 ; 4 uses
  %i.cq = shl nuw nsw i64 %n.vec37, 2
  %cmp.n59 = icmp eq i64 %n.vec37, %wide.trip.count221
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.lr.ph, %bb.c
  %.1161200 = phi i32 [ 0, %.preheader184.lr.ph ], [ %i.ht, %bb.c ]
  %.1163199 = phi ptr [ %2, %.preheader184.lr.ph ], [ %i.hr, %bb.c ] ; 4 uses
  %.0164198 = phi ptr [ %i.cc, %.preheader184.lr.ph ], [ %i.hs, %bb.c ] ; 5 uses
  %.0165197 = phi ptr [ %i.p, %.preheader184.lr.ph ], [ %i.hq, %bb.c ] ; 8 uses
  br i1 %i.cd, label %.lr.ph, label %._crit_edge194

.lr.ph:                                           ; preds = %.preheader184
  %i.cr = load <4 x float>, ptr %i.ce, align 8    ; 7 uses
  %i.cs = load <2 x float>, ptr %i.cf, align 8    ; 4 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.memcheck28

vector.memcheck28:                                ; preds = %.lr.ph
  %i.ct = getelementptr i8, ptr %.0165197, i64 %i.cp ; 2 uses
  %bound029 = icmp ult ptr %.0165197, %scevgep25
  %bound130 = icmp ult ptr %2, %i.ct
  %found.conflict31 = and i1 %bound029, %bound130
  %i.cu = or i1 %found.conflict31, %stride.check32
  %bound033 = icmp ult ptr %.0165197, %i.co
  %bound134 = icmp ult ptr %i.cc, %i.ct
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %i.cu, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph26.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck28
  %i.cv = getelementptr i8, ptr %.0165197, i64 %i.cq ; 2 uses
  %broadcast.splat39 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat41 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat43 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat45 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat47 = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat49 = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph36
  %index51 = phi i64 [ 0, %vector.ph36 ], [ %index.next57, %vector.body50 ] ; 3 uses
  %i.cw = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %.0165197, i64 %i.cw
  %i.cx = shl nuw nsw i64 %index51, 1             ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.cx
  %wide.vec = load <8 x i32>, ptr %i.cy, align 4, !alias.scope !125 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec53 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.cx
  %wide.vec54 = load <8 x i32>, ptr %i.cz, align 4, !alias.scope !126 ; 2 uses
  %strided.vec55 = shufflevector <8 x i32> %wide.vec54, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec56 = shufflevector <8 x i32> %wide.vec54, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.da = and <4 x i32> %strided.vec, splat (i32 1023)
  %i.db = and <4 x i32> %strided.vec53, splat (i32 1023)
  %i.dc = add nuw nsw <4 x i32> %i.db, %i.da
  %i.dd = and <4 x i32> %strided.vec55, splat (i32 1023)
  %i.de = add nuw nsw <4 x i32> %i.dc, %i.dd
  %i.df = and <4 x i32> %strided.vec56, splat (i32 1023)
  %i.dg = add nuw nsw <4 x i32> %i.de, %i.df
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 2)
  %i.di = and <4 x i32> %strided.vec, splat (i32 1047552)
  %i.dj = and <4 x i32> %strided.vec53, splat (i32 1047552)
  %i.dk = add nuw nsw <4 x i32> %i.dj, %i.di
  %i.dl = and <4 x i32> %strided.vec55, splat (i32 1047552)
  %i.dm = add nuw nsw <4 x i32> %i.dk, %i.dl
  %i.dn = and <4 x i32> %strided.vec56, splat (i32 1047552)
  %i.do = add nuw nsw <4 x i32> %i.dm, %i.dn
  %i.dp = lshr <4 x i32> %i.do, splat (i32 12)
  %i.dq = and <4 x i32> %strided.vec, splat (i32 1072693248)
  %i.dr = and <4 x i32> %strided.vec53, splat (i32 1072693248)
  %i.ds = add nuw nsw <4 x i32> %i.dr, %i.dq
  %i.dt = and <4 x i32> %strided.vec55, splat (i32 1072693248)
  %i.du = add nuw <4 x i32> %i.ds, %i.dt
  %i.dv = and <4 x i32> %strided.vec56, splat (i32 1072693248)
  %i.dw = add nuw <4 x i32> %i.du, %i.dv
  %i.dx = lshr <4 x i32> %i.dw, splat (i32 22)
  %i.dy = uitofp nneg <4 x i32> %i.dh to <4 x float> ; 2 uses
  %i.dz = uitofp nneg <4 x i32> %i.dp to <4 x float> ; 2 uses
  %i.ea = fmul <4 x float> %broadcast.splat41, %i.dz
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat39, <4 x float> %i.dy, <4 x float> %i.ea)
  %i.ec = uitofp nneg <4 x i32> %i.dx to <4 x float> ; 2 uses
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat43, <4 x float> %i.ec, <4 x float> %i.eb)
  %i.ee = fmul <4 x float> %broadcast.splat47, %i.dz
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat45, <4 x float> %i.dy, <4 x float> %i.ee)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat49, <4 x float> %i.ec, <4 x float> %i.ef)
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.eg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ei = fadd <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <8 x float> %i.ei to <8 x i32>
  %i.ek = trunc <8 x i32> %i.ej to <8 x i16>
  %i.el = shl <8 x i16> %i.ek, splat (i16 6)
  %interleaved.vec = xor <8 x i16> %i.el, splat (i16 -32768)
  store <8 x i16> %interleaved.vec, ptr %next.gep52, align 2, !alias.scope !127, !noalias !128
  %index.next57 = add nuw i64 %index51, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next57, %n.vec37
  br i1 %i.em, label %middle.block58, label %vector.body50, !llvm.loop !115

middle.block58:                                   ; preds = %vector.body50
  br i1 %cmp.n59, label %._crit_edge194, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %vector.memcheck28, %.lr.ph, %middle.block58
  %indvars.iv218.ph = phi i64 [ 0, %vector.memcheck28 ], [ 0, %.lr.ph ], [ %n.vec37, %middle.block58 ]
  %.1166192.ph = phi ptr [ %.0165197, %vector.memcheck28 ], [ %.0165197, %.lr.ph ], [ %i.cv, %middle.block58 ]
  %i.en = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.eo = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.cr, <4 x float> %i.eo, <2 x i32> <i32 1, i32 4>
  %i.eq = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.er = shufflevector <2 x float> %i.en, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph26 ], [ %indvars.iv218.ph, %scalar.ph26.preheader ] ; 2 uses
  %.1166192 = phi ptr [ %i.ez, %scalar.ph26 ], [ %.1166192.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.es = shl nuw nsw i64 %indvars.iv218, 1       ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.es
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.1166192, i64 4 ; 2 uses
  %i.fa = load <2 x i32>, ptr %i.et, align 4      ; 2 uses
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.fc = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.fd = and <3 x i32> %i.fc, <i32 1072693248, i32 1023, i32 1047552>
  %i.fe = and <3 x i32> %i.fb, <i32 1072693248, i32 1023, i32 1047552>
  %i.ff = add nuw nsw <3 x i32> %i.fe, %i.fd
  %i.fg = insertelement <3 x i32> poison, i32 %i.ev, i64 0
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fi = and <3 x i32> %i.fh, <i32 1072693248, i32 1023, i32 1047552>
  %i.fj = add nuw <3 x i32> %i.ff, %i.fi
  %i.fk = insertelement <3 x i32> poison, i32 %i.ey, i64 0
  %i.fl = shufflevector <3 x i32> %i.fk, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fm = and <3 x i32> %i.fl, <i32 1072693248, i32 1023, i32 1047552>
  %i.fn = add nuw <3 x i32> %i.fj, %i.fm
  %i.fo = lshr <3 x i32> %i.fn, <i32 22, i32 2, i32 12>
  %i.fp = uitofp nneg <3 x i32> %i.fo to <3 x float> ; 3 uses
  %i.fq = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fr = fmul <2 x float> %i.ep, %i.fq
  %i.fs = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.fu, <2 x float> %i.ft)
  %i.fw = fadd <2 x float> %i.fv, splat (float 5.000000e-01)
  %i.fx = fptosi <2 x float> %i.fw to <2 x i32>
  %i.fy = trunc <2 x i32> %i.fx to <2 x i16>
  %i.fz = shl <2 x i16> %i.fy, splat (i16 6)
  %i.ga = xor <2 x i16> %i.fz, splat (i16 -32768)
  store <2 x i16> %i.ga, ptr %.1166192, align 2
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge194, label %scalar.ph26, !llvm.loop !116

._crit_edge194:                                   ; preds = %scalar.ph26, %middle.block58, %.preheader184
  %.1166.lcssa = phi ptr [ %.0165197, %.preheader184 ], [ %i.cv, %middle.block58 ], [ %i.ez, %scalar.ph26 ] ; 3 uses
  %.1.lcssa.shrunk = phi i32 [ 0, %.preheader184 ], [ %i.ci, %middle.block58 ], [ %i.ci, %scalar.ph26 ]
  br i1 %.not173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge194
  %.1.lcssa = zext nneg i32 %.1.lcssa.shrunk to i64 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %.1.lcssa
  %i.gc = load i32, ptr %i.gb, align 4            ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %.1.lcssa
  %i.ge = load i32, ptr %i.gd, align 4            ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1166.lcssa, i64 4
  %i.gg = and i32 %i.gc, 1023
  %i.gh = and i32 %i.ge, 1023
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %i.gj = lshr i32 %i.gi, 1
  %i.gk = and i32 %i.gc, 1047552
  %i.gl = and i32 %i.ge, 1047552
  %i.gm = add nuw nsw i32 %i.gl, %i.gk
  %i.gn = lshr i32 %i.gm, 11
  %i.go = and i32 %i.gc, 1072693248
  %i.gp = and i32 %i.ge, 1072693248
  %i.gq = add nuw nsw i32 %i.gp, %i.go
  %i.gr = lshr i32 %i.gq, 21
  %i.gs = uitofp nneg i32 %i.gj to float
  %i.gt = uitofp nneg i32 %i.gn to float
  %i.gu = uitofp nneg i32 %i.gr to float
  %i.gv = load <4 x float>, ptr %i.ce, align 8    ; 3 uses
  %i.gw = load <2 x float>, ptr %i.cf, align 8    ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gy = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> %i.gy, <2 x i32> <i32 1, i32 4>
  %i.ha = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gz, %i.hb
  %i.hd = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.he = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hf, <2 x float> %i.hc)
  %i.hh = shufflevector <2 x float> %i.gx, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.hi = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hj, <2 x float> %i.hg)
  %i.hl = fadd <2 x float> %i.hk, splat (float 5.000000e-01)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>
  %i.hn = trunc <2 x i32> %i.hm to <2 x i16>
  %i.ho = shl <2 x i16> %i.hn, splat (i16 6)
  %i.hp = xor <2 x i16> %i.ho, splat (i16 -32768)
  store <2 x i16> %i.hp, ptr %.1166.lcssa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge194
  %.2167 = phi ptr [ %i.gf, %bb.b ], [ %.1166.lcssa, %._crit_edge194 ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.2167, i64 %i.cg ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %.1163199, i64 %i.ch ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.0164198, i64 %i.ch
  %i.ht = add nuw nsw i32 %.1161200, 1            ; 2 uses
  %exitcond223.not = icmp eq i32 %i.ht, %i.b
  br i1 %exitcond223.not, label %._crit_edge201, label %.preheader184, !llvm.loop !117

._crit_edge201:                                   ; preds = %bb.c, %bb.a, %._crit_edge191.split
  %.0165.lcssa = phi ptr [ %i.p, %._crit_edge191.split ], [ %i.p, %bb.a ], [ %i.hq, %bb.c ] ; 7 uses
  %.1163.lcssa = phi ptr [ %2, %._crit_edge191.split ], [ %2, %bb.a ], [ %i.hr, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge201
  %i.hu = icmp sgt i32 %0, 1
  br i1 %i.hu, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
end_hunk_3
begin_hunk_4_@SDL_ConvertPixels_YUV_to_YUV:bb.a
  %i.el = getelementptr inbounds i8, ptr %.47390.i, i64 %i.ee ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ek, i64 %i.ec, i1 false)
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.ed ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.ee ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.em, i64 %i.ec, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.ed ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.ee ; 2 uses
  %i.eq = add nsw i32 %.491.i, -4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.eo, i64 %i.ec, i1 false)
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.ed
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.ee
  %.not.i.3 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.3, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph.i.new, !llvm.loop !140

IsPacked4Format.exit.i:                           ; preds = %bb.e
  %i.et = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.eu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16, ptr noundef %i.et) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.j:                                             ; preds = %bb.c
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 1448433993, label %bb.k
    i32 842094169, label %bb.k
    i32 842094158, label %bb.k
    i32 825382478, label %bb.k
    i32 808530000, label %bb.k
    i32 1498831189, label %bb.bf
    i32 844715353, label %bb.bf
    i32 1431918169, label %bb.bf
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  switch i32 %7, label %IsPlanar2x2Format.exit [
    i32 1448433993, label %bb.l
    i32 842094169, label %bb.l
    i32 842094158, label %bb.l
    i32 825382478, label %bb.l
    i32 808530000, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %.not.i60 = icmp eq ptr %5, %10
  %.not97328.i = icmp eq i32 %1, 0
  %or.cond.i = or i1 %.not97328.i, %.not.i60
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.l
  %i.ev = sext i32 %0 to i64                      ; 5 uses
  %i.ew = sext i32 %6 to i64                      ; 5 uses
  %i.ex = sext i32 %11 to i64                     ; 5 uses
  %i.ey = add i32 %1, -1
  %xtraiter = and i32 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i61, %.prol.preheader
  %.0331.i.prol = phi ptr [ %i.fb, %.prol.preheader ], [ %10, %.lr.ph.i61 ] ; 2 uses
  %.092330.i.prol = phi ptr [ %i.fa, %.prol.preheader ], [ %5, %.lr.ph.i61 ] ; 2 uses
  %.093329.i.prol = phi i32 [ %i.ez, %.prol.preheader ], [ %1, %.lr.ph.i61 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i61 ]
  %i.ez = add nsw i32 %.093329.i.prol, -1         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i.prol, ptr align 1 %.092330.i.prol, i64 %i.ev, i1 false)
  %i.fa = getelementptr inbounds i8, ptr %.092330.i.prol, i64 %i.ew ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.0331.i.prol, i64 %i.ex ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !141

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i61
  %.0331.i.unr = phi ptr [ %10, %.lr.ph.i61 ], [ %i.fb, %.prol.preheader ]
  %.092330.i.unr = phi ptr [ %5, %.lr.ph.i61 ], [ %i.fa, %.prol.preheader ]
  %.093329.i.unr = phi i32 [ %1, %.lr.ph.i61 ], [ %i.ez, %.prol.preheader ]
  %i.fc = icmp ult i32 %i.ey, 3
  br i1 %i.fc, label %.loopexit.i, label %.lr.ph.i61.new

.lr.ph.i61.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i61.new
  %.0331.i = phi ptr [ %i.fl, %.lr.ph.i61.new ], [ %.0331.i.unr, %.prol.loopexit ] ; 2 uses
  %.092330.i = phi ptr [ %i.fk, %.lr.ph.i61.new ], [ %.092330.i.unr, %.prol.loopexit ] ; 2 uses
  %.093329.i = phi i32 [ %i.fj, %.lr.ph.i61.new ], [ %.093329.i.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i, ptr align 1 %.092330.i, i64 %i.ev, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %.092330.i, i64 %i.ew ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.0331.i, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.fd, i64 %i.ev, i1 false)
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.ew ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fg, ptr align 1 %i.ff, i64 %i.ev, i1 false)
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.ew ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.ex ; 2 uses
  %i.fj = add nsw i32 %.093329.i, -4              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fh, i64 %i.ev, i1 false)
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.ew
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.ex
  %.not97.i.3 = icmp eq i32 %i.fj, 0
  br i1 %.not97.i.3, label %.loopexit.i, label %.lr.ph.i61.new, !llvm.loop !142

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph.i61.new, %bb.l
  switch i32 %2, label %bb.be [
    i32 842094169, label %bb.m
    i32 1448433993, label %bb.w
    i32 842094158, label %bb.ag
    i32 825382478, label %bb.as
  ]

bb.m:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 1448433993, label %bb.n
    i32 842094158, label %bb.o
    i32 825382478, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fm = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.o:                                             ; preds = %bb.m
  %i.fn = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.fo = insertelement <4 x i32> %i.fn, i32 %1, i64 1
  %i.fp = insertelement <4 x i32> %i.fo, i32 %6, i64 2
  %i.fq = insertelement <4 x i32> %i.fp, i32 %11, i64 3
  %i.fr = add nsw <4 x i32> %i.fq, splat (i32 1)
  %i.fs = sdiv <4 x i32> %i.fr, splat (i32 2)     ; 6 uses
  %i.ft = extractelement <4 x i32> %i.fs, i64 0   ; 6 uses
  %i.fu = extractelement <4 x i32> %i.fs, i64 2   ; 3 uses
  %i.fv = sub nsw i32 %i.fu, %i.ft
  %shift = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %shift, %i.fs
  %i.fw = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.fx = shl nsw i32 %i.fw, 1
  %i.fy = mul nsw i32 %6, %1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %5, i64 %i.fz ; 3 uses
  %i.gb = mul nsw i32 %11, %1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %10, i64 %i.gc ; 2 uses
  %i.ge = icmp eq ptr %i.ga, %i.gd
  br i1 %i.ge, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gf = extractelement <4 x i32> %i.fs, i64 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 1
  %i.gi = sext i32 %i.fu to i64
  %i.gj = mul nsw i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.gj) #6 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr readonly align 1 %i.ga, i64 %i.gj, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.058.i.i.i = phi ptr [ %i.gk, %bb.q ], [ %i.ga, %bb.o ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.gk, %bb.q ], [ null, %bb.o ]
  %.off.i.i.i = add i32 %1, 2
  %.not6271.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not6271.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.r
  %.off76.i.i.i = add i32 %0, 2
  %.not6364.i.i.i = icmp ult i32 %.off76.i.i.i, 3
  %i.gl = sext i32 %i.fv to i64                   ; 2 uses
  %i.gm = sext i32 %i.fx to i64
  br i1 %.not6364.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.i.i.i
  %i.gn = extractelement <4 x i32> %i.fs, i64 1   ; 2 uses
  %i.go = mul nsw i32 %i.fu, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %.058.i.i.i, i64 %i.gp
  %i.gr = add nsw i32 %i.ft, -1                   ; 3 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 7 uses
  %i.gu = shl nuw nsw i64 %i.gs, 1
  %min.iters.check742 = icmp ult i32 %i.gr, 3
  %min.iters.check752 = icmp ult i32 %i.gr, 15
  %i.gv = and i64 %i.gt, 12
  %n.vec754 = and i64 %i.gt, 8589934576           ; 7 uses
  %i.gw = shl nuw nsw i64 %n.vec754, 1
  %i.gx = trunc i64 %n.vec754 to i32
  %i.gy = sub i32 %i.ft, %i.gx
  %cmp.n769 = icmp eq i64 %i.gt, %n.vec754
  %min.epilog.iters.check773 = icmp eq i64 %i.gv, 0
  %n.vec776 = and i64 %i.gt, 8589934588           ; 6 uses
  %i.gz = shl nuw nsw i64 %n.vec776, 1
  %i.ha = trunc i64 %n.vec776 to i32
  %i.hb = sub i32 %i.ft, %i.ha
  %cmp.n787 = icmp eq i64 %i.gt, %n.vec776
  br label %iter.check770

iter.check770:                                    ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.in.i.i.i = phi i32 [ %i.jb, %._crit_edge.i.i.i ], [ %i.gn, %.preheader.preheader.i.i.i ]
  %.04974.i.i.i = phi ptr [ %i.je, %._crit_edge.i.i.i ], [ %i.gd, %.preheader.preheader.i.i.i ] ; 10 uses
  %.15173.i.i.i = phi ptr [ %i.jd, %._crit_edge.i.i.i ], [ %.058.i.i.i, %.preheader.preheader.i.i.i ] ; 8 uses
  %.15372.i.i.i = phi ptr [ %i.jc, %._crit_edge.i.i.i ], [ %i.gq, %.preheader.preheader.i.i.i ] ; 8 uses
  br i1 %min.iters.check742, label %vec.epilog.scalar.ph772.preheader, label %vector.memcheck743

vector.memcheck743:                               ; preds = %iter.check770
  %i.hc = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gu
  %i.hd = getelementptr i8, ptr %i.hc, i64 2      ; 2 uses
  %i.he = getelementptr i8, ptr %.15372.i.i.i, i64 %i.gt
  %i.hf = getelementptr i8, ptr %.15173.i.i.i, i64 %i.gt
  %bound0744 = icmp ult ptr %.04974.i.i.i, %i.he
  %bound1745 = icmp ult ptr %.15372.i.i.i, %i.hd
  %found.conflict746 = and i1 %bound0744, %bound1745
  %bound0747 = icmp ult ptr %.04974.i.i.i, %i.hf
  %bound1748 = icmp ult ptr %.15173.i.i.i, %i.hd
  %found.conflict749 = and i1 %bound0747, %bound1748
  %conflict.rdx750 = or i1 %found.conflict746, %found.conflict749
  br i1 %conflict.rdx750, label %vec.epilog.scalar.ph772.preheader, label %vector.main.loop.iter.check751

vector.main.loop.iter.check751:                   ; preds = %vector.memcheck743
  br i1 %min.iters.check752, label %vec.epilog.ph774, label %vector.ph753

vector.ph753:                                     ; preds = %vector.main.loop.iter.check751
  %i.hg = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gw ; 2 uses
  %i.hh = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec754 ; 2 uses
  %i.hi = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec754 ; 2 uses
  br label %vector.body755

vector.body755:                                   ; preds = %vector.ph753, %vector.body755
  %index756 = phi i64 [ 0, %vector.ph753 ], [ %index.next767, %vector.body755 ] ; 4 uses
  %i.hj = shl i64 %index756, 1                    ; 2 uses
  %next.gep757 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hj
  %i.hk = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hj
  %next.gep758 = getelementptr i8, ptr %i.hk, i64 16
  %next.gep759 = getelementptr i8, ptr %.15173.i.i.i, i64 %index756 ; 2 uses
  %next.gep760 = getelementptr i8, ptr %.15372.i.i.i, i64 %index756 ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep760, i64 8
  %wide.load761 = load <8 x i8>, ptr %next.gep760, align 1, !alias.scope !219
  %wide.load762 = load <8 x i8>, ptr %i.hl, align 1, !alias.scope !219
  %i.hm = getelementptr i8, ptr %next.gep759, i64 8
  %wide.load763 = load <8 x i8>, ptr %next.gep759, align 1, !alias.scope !220
  %wide.load764 = load <8 x i8>, ptr %i.hm, align 1, !alias.scope !220
  %interleaved.vec765 = shufflevector <8 x i8> %wide.load761, <8 x i8> %wide.load763, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec765, ptr %next.gep757, align 1, !alias.scope !221, !noalias !222
  %interleaved.vec766 = shufflevector <8 x i8> %wide.load762, <8 x i8> %wide.load764, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec766, ptr %next.gep758, align 1, !alias.scope !221, !noalias !222
  %index.next767 = add nuw i64 %index756, 16      ; 2 uses
  %i.hn = icmp eq i64 %index.next767, %n.vec754
  br i1 %i.hn, label %middle.block768, label %vector.body755, !llvm.loop !147

middle.block768:                                  ; preds = %vector.body755
  br i1 %cmp.n769, label %._crit_edge.i.i.i, label %vec.epilog.iter.check771

vec.epilog.iter.check771:                         ; preds = %middle.block768
  br i1 %min.epilog.iters.check773, label %vec.epilog.scalar.ph772.preheader, label %vec.epilog.ph774, !prof !223

vec.epilog.ph774:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check771
  %vec.epilog.resume.val775 = phi i64 [ %n.vec754, %vec.epilog.iter.check771 ], [ 0, %vector.main.loop.iter.check751 ]
  %i.ho = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gz ; 2 uses
  %i.hp = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec776 ; 2 uses
  %i.hq = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec776 ; 2 uses
  br label %vec.epilog.vector.body777

vec.epilog.vector.body777:                        ; preds = %vec.epilog.vector.body777, %vec.epilog.ph774
  %index778 = phi i64 [ %vec.epilog.resume.val775, %vec.epilog.ph774 ], [ %index.next785, %vec.epilog.vector.body777 ] ; 4 uses
  %i.hr = shl i64 %index778, 1
  %next.gep779 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hr
  %next.gep780 = getelementptr i8, ptr %.15173.i.i.i, i64 %index778
  %next.gep781 = getelementptr i8, ptr %.15372.i.i.i, i64 %index778
  %wide.load782 = load <4 x i8>, ptr %next.gep781, align 1, !alias.scope !219
  %wide.load783 = load <4 x i8>, ptr %next.gep780, align 1, !alias.scope !220
  %interleaved.vec784 = shufflevector <4 x i8> %wide.load782, <4 x i8> %wide.load783, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec784, ptr %next.gep779, align 1, !alias.scope !221, !noalias !222
  %index.next785 = add nuw i64 %index778, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next785, %n.vec776
  br i1 %i.hs, label %vec.epilog.middle.block786, label %vec.epilog.vector.body777, !llvm.loop !148

vec.epilog.middle.block786:                       ; preds = %vec.epilog.vector.body777
  br i1 %cmp.n787, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772.preheader

vec.epilog.scalar.ph772.preheader:                ; preds = %iter.check770, %vector.memcheck743, %vec.epilog.iter.check771, %vec.epilog.middle.block786
  %.168.i.i.i.ph = phi ptr [ %.04974.i.i.i, %iter.check770 ], [ %.04974.i.i.i, %vector.memcheck743 ], [ %i.hg, %vec.epilog.iter.check771 ], [ %i.ho, %vec.epilog.middle.block786 ] ; 2 uses
  %.267.i.i.i.ph = phi ptr [ %.15173.i.i.i, %iter.check770 ], [ %.15173.i.i.i, %vector.memcheck743 ], [ %i.hh, %vec.epilog.iter.check771 ], [ %i.hp, %vec.epilog.middle.block786 ] ; 2 uses
  %.25466.i.i.i.ph = phi ptr [ %.15372.i.i.i, %iter.check770 ], [ %.15372.i.i.i, %vector.memcheck743 ], [ %i.hi, %vec.epilog.iter.check771 ], [ %i.hq, %vec.epilog.middle.block786 ] ; 2 uses
  %.05665.i.i.i.ph = phi i32 [ %i.ft, %iter.check770 ], [ %i.ft, %vector.memcheck743 ], [ %i.gy, %vec.epilog.iter.check771 ], [ %i.hb, %vec.epilog.middle.block786 ] ; 4 uses
  %i.ht = add nsw i32 %.05665.i.i.i.ph, -1
  %xtraiter936 = and i32 %.05665.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod937.not = icmp eq i32 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %vec.epilog.scalar.ph772.prol.loopexit, label %vec.epilog.scalar.ph772.prol

vec.epilog.scalar.ph772.prol:                     ; preds = %vec.epilog.scalar.ph772.preheader, %vec.epilog.scalar.ph772.prol
  %.168.i.i.i.prol = phi ptr [ %i.ia, %vec.epilog.scalar.ph772.prol ], [ %.168.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 3 uses
  %.267.i.i.i.prol = phi ptr [ %i.hy, %vec.epilog.scalar.ph772.prol ], [ %.267.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 2 uses
  %.25466.i.i.i.prol = phi ptr [ %i.hv, %vec.epilog.scalar.ph772.prol ], [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 2 uses
  %.05665.i.i.i.prol = phi i32 [ %i.hu, %vec.epilog.scalar.ph772.prol ], [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ]
  %prol.iter938 = phi i32 [ %prol.iter938.next, %vec.epilog.scalar.ph772.prol ], [ 0, %vec.epilog.scalar.ph772.preheader ]
  %i.hu = add nsw i32 %.05665.i.i.i.prol, -1      ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.25466.i.i.i.prol, i64 1 ; 3 uses
  %i.hw = load i8, ptr %.25466.i.i.i.prol, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 1
  store i8 %i.hw, ptr %.168.i.i.i.prol, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.267.i.i.i.prol, i64 1 ; 3 uses
  %i.hz = load i8, ptr %.267.i.i.i.prol, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 2 ; 3 uses
  store i8 %i.hz, ptr %i.hx, align 1
  %prol.iter938.next = add i32 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i32 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %vec.epilog.scalar.ph772.prol.loopexit, label %vec.epilog.scalar.ph772.prol, !llvm.loop !149

vec.epilog.scalar.ph772.prol.loopexit:            ; preds = %vec.epilog.scalar.ph772.prol, %vec.epilog.scalar.ph772.preheader
  %.lcssa857.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.hv, %vec.epilog.scalar.ph772.prol ]
  %.lcssa856.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.hy, %vec.epilog.scalar.ph772.prol ]
  %.lcssa855.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.ia, %vec.epilog.scalar.ph772.prol ]
  %.168.i.i.i.unr = phi ptr [ %.168.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.ia, %vec.epilog.scalar.ph772.prol ]
  %.267.i.i.i.unr = phi ptr [ %.267.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hy, %vec.epilog.scalar.ph772.prol ]
  %.25466.i.i.i.unr = phi ptr [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hv, %vec.epilog.scalar.ph772.prol ]
  %.05665.i.i.i.unr = phi i32 [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hu, %vec.epilog.scalar.ph772.prol ]
  %i.ib = icmp ult i32 %i.ht, 3
  br i1 %i.ib, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772

vec.epilog.scalar.ph772:                          ; preds = %vec.epilog.scalar.ph772.prol.loopexit, %vec.epilog.scalar.ph772
  %.168.i.i.i = phi ptr [ %i.ja, %vec.epilog.scalar.ph772 ], [ %.168.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 9 uses
  %.267.i.i.i = phi ptr [ %i.iy, %vec.epilog.scalar.ph772 ], [ %.267.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 5 uses
  %.25466.i.i.i = phi ptr [ %i.iv, %vec.epilog.scalar.ph772 ], [ %.25466.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 5 uses
  %.05665.i.i.i = phi i32 [ %i.iu, %vec.epilog.scalar.ph772 ], [ %.05665.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 1
  %i.id = load i8, ptr %.25466.i.i.i, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 1
  store i8 %i.id, ptr %.168.i.i.i, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 1
  %i.ig = load i8, ptr %.267.i.i.i, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 2
  store i8 %i.ig, ptr %i.ie, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 2
  %i.ij = load i8, ptr %i.ic, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 3
  store i8 %i.ij, ptr %i.ih, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 2
  %i.im = load i8, ptr %i.if, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 4
  store i8 %i.im, ptr %i.ik, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 3
  %i.ip = load i8, ptr %i.ii, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 5
  store i8 %i.ip, ptr %i.in, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 3
  %i.is = load i8, ptr %i.il, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 6
  store i8 %i.is, ptr %i.iq, align 1
  %i.iu = add nsw i32 %.05665.i.i.i, -4           ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 4 ; 2 uses
  %i.iw = load i8, ptr %i.io, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 7
  store i8 %i.iw, ptr %i.it, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 4 ; 2 uses
  %i.iz = load i8, ptr %i.ir, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 8 ; 2 uses
  store i8 %i.iz, ptr %i.ix, align 1
  %.not63.i.i.i.3 = icmp eq i32 %i.iu, 0
  br i1 %.not63.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772, !llvm.loop !150

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph772.prol.loopexit, %vec.epilog.scalar.ph772, %vec.epilog.middle.block786, %middle.block768
  %.lcssa475 = phi ptr [ %i.hq, %vec.epilog.middle.block786 ], [ %i.hi, %middle.block768 ], [ %.lcssa857.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.iv, %vec.epilog.scalar.ph772 ]
  %.lcssa474 = phi ptr [ %i.hp, %vec.epilog.middle.block786 ], [ %i.hh, %middle.block768 ], [ %.lcssa856.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.iy, %vec.epilog.scalar.ph772 ]
  %.lcssa473 = phi ptr [ %i.ho, %vec.epilog.middle.block786 ], [ %i.hg, %middle.block768 ], [ %.lcssa855.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.ja, %vec.epilog.scalar.ph772 ]
  %i.jb = add nsw i32 %.in.i.i.i, -1              ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.lcssa475, i64 %i.gl
  %i.jd = getelementptr inbounds i8, ptr %.lcssa474, i64 %i.gl
  %i.je = getelementptr inbounds i8, ptr %.lcssa473, i64 %i.gm
  %.not62.i.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not62.i.i.i, label %._crit_edge75.split.i.i.i, label %iter.check770, !llvm.loop !151

._crit_edge75.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i, %bb.r
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.s:                                             ; preds = %bb.m
  %i.jf = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.jg = insertelement <4 x i32> %i.jf, i32 %1, i64 1
  %i.jh = insertelement <4 x i32> %i.jg, i32 %6, i64 2
  %i.ji = insertelement <4 x i32> %i.jh, i32 %11, i64 3
  %i.jj = add nsw <4 x i32> %i.ji, splat (i32 1)
  %i.jk = sdiv <4 x i32> %i.jj, splat (i32 2)     ; 6 uses
  %i.jl = extractelement <4 x i32> %i.jk, i64 0   ; 6 uses
  %i.jm = extractelement <4 x i32> %i.jk, i64 2   ; 3 uses
  %i.jn = sub nsw i32 %i.jm, %i.jl
  %shift794 = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop795 = sub nsw <4 x i32> %shift794, %i.jk
  %i.jo = extractelement <4 x i32> %foldExtExtBinop795, i64 0
  %i.jp = shl nsw i32 %i.jo, 1
  %i.jq = mul nsw i32 %6, %1
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %5, i64 %i.jr ; 3 uses
  %i.jt = mul nsw i32 %11, %1
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %10, i64 %i.ju ; 2 uses
  %i.jw = icmp eq ptr %i.js, %i.jv
  br i1 %i.jw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jx = extractelement <4 x i32> %i.jk, i64 1
  %i.jy = sext i32 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 1
  %i.ka = sext i32 %i.jm to i64
  %i.kb = mul nsw i64 %i.jz, %i.ka                ; 2 uses
  %i.kc = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.kb) #6 ; 4 uses
  %.not.i.i120.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i120.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr readonly align 1 %i.js, i64 %i.kb, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.058.i.i98.i = phi ptr [ %i.kc, %bb.u ], [ %i.js, %bb.s ] ; 2 uses
  %.0.i.i99.i = phi ptr [ %i.kc, %bb.u ], [ null, %bb.s ]
  %.off.i.i100.i = add i32 %1, 2
  %.not6271.i.i101.i = icmp ult i32 %.off.i.i100.i, 3
  br i1 %.not6271.i.i101.i, label %._crit_edge75.split.i.i118.i, label %.preheader.lr.ph.i.i102.i

.preheader.lr.ph.i.i102.i:                        ; preds = %bb.v
  %.off76.i.i103.i = add i32 %0, 2
  %.not6364.i.i104.i = icmp ult i32 %.off76.i.i103.i, 3
  %i.kd = sext i32 %i.jn to i64                   ; 2 uses
  %i.ke = sext i32 %i.jp to i64
  br i1 %.not6364.i.i104.i, label %._crit_edge75.split.i.i118.i, label %.preheader.preheader.i.i105.i

.preheader.preheader.i.i105.i:                    ; preds = %.preheader.lr.ph.i.i102.i
  %i.kf = extractelement <4 x i32> %i.jk, i64 1   ; 2 uses
  %i.kg = mul nsw i32 %i.jm, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %.058.i.i98.i, i64 %i.kh
  %i.kj = add nsw i32 %i.jl, -1                   ; 3 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 7 uses
  %i.km = shl nuw nsw i64 %i.kk, 1
  %min.iters.check682 = icmp ult i32 %i.kj, 3
  %min.iters.check692 = icmp ult i32 %i.kj, 15
  %i.kn = and i64 %i.kl, 12
  %n.vec694 = and i64 %i.kl, 8589934576           ; 7 uses
  %i.ko = shl nuw nsw i64 %n.vec694, 1
  %i.kp = trunc i64 %n.vec694 to i32
  %i.kq = sub i32 %i.jl, %i.kp
  %cmp.n709 = icmp eq i64 %i.kl, %n.vec694
  %min.epilog.iters.check713 = icmp eq i64 %i.kn, 0
  %n.vec716 = and i64 %i.kl, 8589934588           ; 6 uses
  %i.kr = shl nuw nsw i64 %n.vec716, 1
  %i.ks = trunc i64 %n.vec716 to i32
  %i.kt = sub i32 %i.jl, %i.ks
  %cmp.n727 = icmp eq i64 %i.kl, %n.vec716
  br label %iter.check710

iter.check710:                                    ; preds = %._crit_edge.i.i116.i, %.preheader.preheader.i.i105.i
  %.in.i.i107.i = phi i32 [ %i.mt, %._crit_edge.i.i116.i ], [ %i.kf, %.preheader.preheader.i.i105.i ]
  %.04974.i.i108.i = phi ptr [ %i.mw, %._crit_edge.i.i116.i ], [ %i.jv, %.preheader.preheader.i.i105.i ] ; 10 uses
  %.15173.i.i109.i = phi ptr [ %i.mv, %._crit_edge.i.i116.i ], [ %i.ki, %.preheader.preheader.i.i105.i ] ; 8 uses
  %.15372.i.i110.i = phi ptr [ %i.mu, %._crit_edge.i.i116.i ], [ %.058.i.i98.i, %.preheader.preheader.i.i105.i ] ; 8 uses
  br i1 %min.iters.check682, label %vec.epilog.scalar.ph712.preheader, label %vector.memcheck683

vector.memcheck683:                               ; preds = %iter.check710
  %i.ku = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.km
  %i.kv = getelementptr i8, ptr %i.ku, i64 2      ; 2 uses
  %i.kw = getelementptr i8, ptr %.15372.i.i110.i, i64 %i.kl
  %i.kx = getelementptr i8, ptr %.15173.i.i109.i, i64 %i.kl
  %bound0684 = icmp ult ptr %.04974.i.i108.i, %i.kw
  %bound1685 = icmp ult ptr %.15372.i.i110.i, %i.kv
  %found.conflict686 = and i1 %bound0684, %bound1685
  %bound0687 = icmp ult ptr %.04974.i.i108.i, %i.kx
  %bound1688 = icmp ult ptr %.15173.i.i109.i, %i.kv
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %found.conflict686, %found.conflict689
  br i1 %conflict.rdx690, label %vec.epilog.scalar.ph712.preheader, label %vector.main.loop.iter.check691

vector.main.loop.iter.check691:                   ; preds = %vector.memcheck683
  br i1 %min.iters.check692, label %vec.epilog.ph714, label %vector.ph693

vector.ph693:                                     ; preds = %vector.main.loop.iter.check691
  %i.ky = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.ko ; 2 uses
  %i.kz = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec694 ; 2 uses
  %i.la = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec694 ; 2 uses
  br label %vector.body695

vector.body695:                                   ; preds = %vector.ph693, %vector.body695
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next707, %vector.body695 ] ; 4 uses
  %i.lb = shl i64 %index696, 1                    ; 2 uses
  %next.gep697 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.lb
  %i.lc = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.lb
  %next.gep698 = getelementptr i8, ptr %i.lc, i64 16
  %next.gep699 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index696 ; 2 uses
  %next.gep700 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index696 ; 2 uses
  %i.ld = getelementptr i8, ptr %next.gep700, i64 8
  %wide.load701 = load <8 x i8>, ptr %next.gep700, align 1, !alias.scope !224
  %wide.load702 = load <8 x i8>, ptr %i.ld, align 1, !alias.scope !224
  %i.le = getelementptr i8, ptr %next.gep699, i64 8
  %wide.load703 = load <8 x i8>, ptr %next.gep699, align 1, !alias.scope !225
  %wide.load704 = load <8 x i8>, ptr %i.le, align 1, !alias.scope !225
  %interleaved.vec705 = shufflevector <8 x i8> %wide.load701, <8 x i8> %wide.load703, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec705, ptr %next.gep697, align 1, !alias.scope !226, !noalias !227
  %interleaved.vec706 = shufflevector <8 x i8> %wide.load702, <8 x i8> %wide.load704, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec706, ptr %next.gep698, align 1, !alias.scope !226, !noalias !227
  %index.next707 = add nuw i64 %index696, 16      ; 2 uses
  %i.lf = icmp eq i64 %index.next707, %n.vec694
  br i1 %i.lf, label %middle.block708, label %vector.body695, !llvm.loop !156

middle.block708:                                  ; preds = %vector.body695
  br i1 %cmp.n709, label %._crit_edge.i.i116.i, label %vec.epilog.iter.check711

vec.epilog.iter.check711:                         ; preds = %middle.block708
  br i1 %min.epilog.iters.check713, label %vec.epilog.scalar.ph712.preheader, label %vec.epilog.ph714, !prof !223

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check691, %vec.epilog.iter.check711
  %vec.epilog.resume.val715 = phi i64 [ %n.vec694, %vec.epilog.iter.check711 ], [ 0, %vector.main.loop.iter.check691 ]
  %i.lg = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kr ; 2 uses
  %i.lh = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec716 ; 2 uses
  %i.li = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec716 ; 2 uses
  br label %vec.epilog.vector.body717

vec.epilog.vector.body717:                        ; preds = %vec.epilog.vector.body717, %vec.epilog.ph714
  %index718 = phi i64 [ %vec.epilog.resume.val715, %vec.epilog.ph714 ], [ %index.next725, %vec.epilog.vector.body717 ] ; 4 uses
  %i.lj = shl i64 %index718, 1
  %next.gep719 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.lj
  %next.gep720 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index718
  %next.gep721 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index718
  %wide.load722 = load <4 x i8>, ptr %next.gep721, align 1, !alias.scope !224
  %wide.load723 = load <4 x i8>, ptr %next.gep720, align 1, !alias.scope !225
  %interleaved.vec724 = shufflevector <4 x i8> %wide.load722, <4 x i8> %wide.load723, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec724, ptr %next.gep719, align 1, !alias.scope !226, !noalias !227
  %index.next725 = add nuw i64 %index718, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next725, %n.vec716
  br i1 %i.lk, label %vec.epilog.middle.block726, label %vec.epilog.vector.body717, !llvm.loop !157

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body717
  br i1 %cmp.n727, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712.preheader

vec.epilog.scalar.ph712.preheader:                ; preds = %iter.check710, %vector.memcheck683, %vec.epilog.iter.check711, %vec.epilog.middle.block726
  %.168.i.i111.i.ph = phi ptr [ %.04974.i.i108.i, %iter.check710 ], [ %.04974.i.i108.i, %vector.memcheck683 ], [ %i.ky, %vec.epilog.iter.check711 ], [ %i.lg, %vec.epilog.middle.block726 ] ; 2 uses
  %.267.i.i112.i.ph = phi ptr [ %.15173.i.i109.i, %iter.check710 ], [ %.15173.i.i109.i, %vector.memcheck683 ], [ %i.kz, %vec.epilog.iter.check711 ], [ %i.lh, %vec.epilog.middle.block726 ] ; 2 uses
  %.25466.i.i113.i.ph = phi ptr [ %.15372.i.i110.i, %iter.check710 ], [ %.15372.i.i110.i, %vector.memcheck683 ], [ %i.la, %vec.epilog.iter.check711 ], [ %i.li, %vec.epilog.middle.block726 ] ; 2 uses
  %.05665.i.i114.i.ph = phi i32 [ %i.jl, %iter.check710 ], [ %i.jl, %vector.memcheck683 ], [ %i.kq, %vec.epilog.iter.check711 ], [ %i.kt, %vec.epilog.middle.block726 ] ; 4 uses
  %i.ll = add nsw i32 %.05665.i.i114.i.ph, -1
  %xtraiter933 = and i32 %.05665.i.i114.i.ph, 3   ; 2 uses
  %lcmp.mod934.not = icmp eq i32 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %vec.epilog.scalar.ph712.prol.loopexit, label %vec.epilog.scalar.ph712.prol

vec.epilog.scalar.ph712.prol:                     ; preds = %vec.epilog.scalar.ph712.preheader, %vec.epilog.scalar.ph712.prol
  %.168.i.i111.i.prol = phi ptr [ %i.ls, %vec.epilog.scalar.ph712.prol ], [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 3 uses
  %.267.i.i112.i.prol = phi ptr [ %i.lq, %vec.epilog.scalar.ph712.prol ], [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 2 uses
  %.25466.i.i113.i.prol = phi ptr [ %i.ln, %vec.epilog.scalar.ph712.prol ], [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 2 uses
  %.05665.i.i114.i.prol = phi i32 [ %i.lm, %vec.epilog.scalar.ph712.prol ], [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph712.preheader ]
  %prol.iter935 = phi i32 [ %prol.iter935.next, %vec.epilog.scalar.ph712.prol ], [ 0, %vec.epilog.scalar.ph712.preheader ]
  %i.lm = add nsw i32 %.05665.i.i114.i.prol, -1   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i.prol, i64 1 ; 3 uses
  %i.lo = load i8, ptr %.25466.i.i113.i.prol, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 1
  store i8 %i.lo, ptr %.168.i.i111.i.prol, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.267.i.i112.i.prol, i64 1 ; 3 uses
  %i.lr = load i8, ptr %.267.i.i112.i.prol, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 2 ; 3 uses
  store i8 %i.lr, ptr %i.lp, align 1
  %prol.iter935.next = add i32 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i32 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %vec.epilog.scalar.ph712.prol.loopexit, label %vec.epilog.scalar.ph712.prol, !llvm.loop !158

vec.epilog.scalar.ph712.prol.loopexit:            ; preds = %vec.epilog.scalar.ph712.prol, %vec.epilog.scalar.ph712.preheader
  %.lcssa860.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.ln, %vec.epilog.scalar.ph712.prol ]
  %.lcssa859.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.lq, %vec.epilog.scalar.ph712.prol ]
  %.lcssa858.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.ls, %vec.epilog.scalar.ph712.prol ]
  %.168.i.i111.i.unr = phi ptr [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.ls, %vec.epilog.scalar.ph712.prol ]
  %.267.i.i112.i.unr = phi ptr [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.lq, %vec.epilog.scalar.ph712.prol ]
  %.25466.i.i113.i.unr = phi ptr [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.ln, %vec.epilog.scalar.ph712.prol ]
  %.05665.i.i114.i.unr = phi i32 [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.lm, %vec.epilog.scalar.ph712.prol ]
  %i.lt = icmp ult i32 %i.ll, 3
  br i1 %i.lt, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712

vec.epilog.scalar.ph712:                          ; preds = %vec.epilog.scalar.ph712.prol.loopexit, %vec.epilog.scalar.ph712
  %.168.i.i111.i = phi ptr [ %i.ms, %vec.epilog.scalar.ph712 ], [ %.168.i.i111.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 9 uses
  %.267.i.i112.i = phi ptr [ %i.mq, %vec.epilog.scalar.ph712 ], [ %.267.i.i112.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 5 uses
  %.25466.i.i113.i = phi ptr [ %i.mn, %vec.epilog.scalar.ph712 ], [ %.25466.i.i113.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 5 uses
  %.05665.i.i114.i = phi i32 [ %i.mm, %vec.epilog.scalar.ph712 ], [ %.05665.i.i114.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 1
  %i.lv = load i8, ptr %.25466.i.i113.i, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 1
  store i8 %i.lv, ptr %.168.i.i111.i, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 1
  %i.ly = load i8, ptr %.267.i.i112.i, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 2
  store i8 %i.ly, ptr %i.lw, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 2
  %i.mb = load i8, ptr %i.lu, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 3
  store i8 %i.mb, ptr %i.lz, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 2
  %i.me = load i8, ptr %i.lx, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 4
  store i8 %i.me, ptr %i.mc, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 3
  %i.mh = load i8, ptr %i.ma, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 5
  store i8 %i.mh, ptr %i.mf, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 3
  %i.mk = load i8, ptr %i.md, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 6
  store i8 %i.mk, ptr %i.mi, align 1
  %i.mm = add nsw i32 %.05665.i.i114.i, -4        ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 4 ; 2 uses
  %i.mo = load i8, ptr %i.mg, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 7
  store i8 %i.mo, ptr %i.ml, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 4 ; 2 uses
  %i.mr = load i8, ptr %i.mj, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 8 ; 2 uses
  store i8 %i.mr, ptr %i.mp, align 1
  %.not63.i.i115.i.3 = icmp eq i32 %i.mm, 0
  br i1 %.not63.i.i115.i.3, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712, !llvm.loop !159

._crit_edge.i.i116.i:                             ; preds = %vec.epilog.scalar.ph712.prol.loopexit, %vec.epilog.scalar.ph712, %vec.epilog.middle.block726, %middle.block708
  %.lcssa478 = phi ptr [ %i.li, %vec.epilog.middle.block726 ], [ %i.la, %middle.block708 ], [ %.lcssa860.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.mn, %vec.epilog.scalar.ph712 ]
  %.lcssa477 = phi ptr [ %i.lh, %vec.epilog.middle.block726 ], [ %i.kz, %middle.block708 ], [ %.lcssa859.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.mq, %vec.epilog.scalar.ph712 ]
  %.lcssa476 = phi ptr [ %i.lg, %vec.epilog.middle.block726 ], [ %i.ky, %middle.block708 ], [ %.lcssa858.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.ms, %vec.epilog.scalar.ph712 ]
  %i.mt = add nsw i32 %.in.i.i107.i, -1           ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %.lcssa478, i64 %i.kd
  %i.mv = getelementptr inbounds i8, ptr %.lcssa477, i64 %i.kd
  %i.mw = getelementptr inbounds i8, ptr %.lcssa476, i64 %i.ke
  %.not62.i.i117.i = icmp eq i32 %i.mt, 0
  br i1 %.not62.i.i117.i, label %._crit_edge75.split.i.i118.i, label %iter.check710, !llvm.loop !151

._crit_edge75.split.i.i118.i:                     ; preds = %._crit_edge.i.i116.i, %.preheader.lr.ph.i.i102.i, %bb.v
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i99.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.w:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.x
    i32 842094158, label %bb.y
    i32 825382478, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.mx = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.y:                                             ; preds = %bb.w
  %i.my = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.mz = insertelement <4 x i32> %i.my, i32 %1, i64 1
  %i.na = insertelement <4 x i32> %i.mz, i32 %6, i64 2
  %i.nb = insertelement <4 x i32> %i.na, i32 %11, i64 3
  %i.nc = add nsw <4 x i32> %i.nb, splat (i32 1)
  %i.nd = sdiv <4 x i32> %i.nc, splat (i32 2)     ; 6 uses
  %i.ne = extractelement <4 x i32> %i.nd, i64 0   ; 6 uses
  %i.nf = extractelement <4 x i32> %i.nd, i64 2   ; 3 uses
  %i.ng = sub nsw i32 %i.nf, %i.ne
  %shift797 = shufflevector <4 x i32> %i.nd, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop798 = sub nsw <4 x i32> %shift797, %i.nd
  %i.nh = extractelement <4 x i32> %foldExtExtBinop798, i64 0
  %i.ni = shl nsw i32 %i.nh, 1
  %i.nj = mul nsw i32 %6, %1
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds i8, ptr %5, i64 %i.nk ; 3 uses
  %i.nm = mul nsw i32 %11, %1
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds i8, ptr %10, i64 %i.nn ; 2 uses
  %i.np = icmp eq ptr %i.nl, %i.no
  br i1 %i.np, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.nq = extractelement <4 x i32> %i.nd, i64 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl nsw i64 %i.nr, 1
  %i.nt = sext i32 %i.nf to i64
  %i.nu = mul nsw i64 %i.ns, %i.nt                ; 2 uses
  %i.nv = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.nu) #6 ; 4 uses
  %.not.i.i144.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i144.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nv, ptr readonly align 1 %i.nl, i64 %i.nu, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.058.i.i122.i = phi ptr [ %i.nv, %bb.aa ], [ %i.nl, %bb.y ] ; 2 uses
  %.0.i.i123.i = phi ptr [ %i.nv, %bb.aa ], [ null, %bb.y ]
  %.off.i.i124.i = add i32 %1, 2
  %.not6271.i.i125.i = icmp ult i32 %.off.i.i124.i, 3
  br i1 %.not6271.i.i125.i, label %._crit_edge75.split.i.i142.i, label %.preheader.lr.ph.i.i126.i

.preheader.lr.ph.i.i126.i:                        ; preds = %bb.ab
  %.off76.i.i127.i = add i32 %0, 2
  %.not6364.i.i128.i = icmp ult i32 %.off76.i.i127.i, 3
  %i.nw = sext i32 %i.ng to i64                   ; 2 uses
  %i.nx = sext i32 %i.ni to i64
  br i1 %.not6364.i.i128.i, label %._crit_edge75.split.i.i142.i, label %.preheader.preheader.i.i129.i

.preheader.preheader.i.i129.i:                    ; preds = %.preheader.lr.ph.i.i126.i
  %i.ny = extractelement <4 x i32> %i.nd, i64 1   ; 2 uses
  %i.nz = mul nsw i32 %i.nf, %i.ny
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds i8, ptr %.058.i.i122.i, i64 %i.oa
  %i.oc = add nsw i32 %i.ne, -1                   ; 3 uses
  %i.od = zext i32 %i.oc to i64                   ; 2 uses
  %i.oe = add nuw nsw i64 %i.od, 1                ; 7 uses
  %i.of = shl nuw nsw i64 %i.od, 1
  %min.iters.check622 = icmp ult i32 %i.oc, 3
  %min.iters.check632 = icmp ult i32 %i.oc, 15
  %i.og = and i64 %i.oe, 12
  %n.vec634 = and i64 %i.oe, 8589934576           ; 7 uses
  %i.oh = shl nuw nsw i64 %n.vec634, 1
  %i.oi = trunc i64 %n.vec634 to i32
  %i.oj = sub i32 %i.ne, %i.oi
  %cmp.n649 = icmp eq i64 %i.oe, %n.vec634
  %min.epilog.iters.check653 = icmp eq i64 %i.og, 0
  %n.vec656 = and i64 %i.oe, 8589934588           ; 6 uses
  %i.ok = shl nuw nsw i64 %n.vec656, 1
  %i.ol = trunc i64 %n.vec656 to i32
  %i.om = sub i32 %i.ne, %i.ol
  %cmp.n667 = icmp eq i64 %i.oe, %n.vec656
  br label %iter.check650

iter.check650:                                    ; preds = %._crit_edge.i.i140.i, %.preheader.preheader.i.i129.i
  %.in.i.i131.i = phi i32 [ %i.qm, %._crit_edge.i.i140.i ], [ %i.ny, %.preheader.preheader.i.i129.i ]
  %.04974.i.i132.i = phi ptr [ %i.qp, %._crit_edge.i.i140.i ], [ %i.no, %.preheader.preheader.i.i129.i ] ; 10 uses
  %.15173.i.i133.i = phi ptr [ %i.qo, %._crit_edge.i.i140.i ], [ %i.ob, %.preheader.preheader.i.i129.i ] ; 8 uses
  %.15372.i.i134.i = phi ptr [ %i.qn, %._crit_edge.i.i140.i ], [ %.058.i.i122.i, %.preheader.preheader.i.i129.i ] ; 8 uses
  br i1 %min.iters.check622, label %vec.epilog.scalar.ph652.preheader, label %vector.memcheck623

vector.memcheck623:                               ; preds = %iter.check650
  %i.on = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.of
  %i.oo = getelementptr i8, ptr %i.on, i64 2      ; 2 uses
  %i.op = getelementptr i8, ptr %.15372.i.i134.i, i64 %i.oe
  %i.oq = getelementptr i8, ptr %.15173.i.i133.i, i64 %i.oe
  %bound0624 = icmp ult ptr %.04974.i.i132.i, %i.op
  %bound1625 = icmp ult ptr %.15372.i.i134.i, %i.oo
  %found.conflict626 = and i1 %bound0624, %bound1625
  %bound0627 = icmp ult ptr %.04974.i.i132.i, %i.oq
  %bound1628 = icmp ult ptr %.15173.i.i133.i, %i.oo
  %found.conflict629 = and i1 %bound0627, %bound1628
  %conflict.rdx630 = or i1 %found.conflict626, %found.conflict629
  br i1 %conflict.rdx630, label %vec.epilog.scalar.ph652.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck623
  br i1 %min.iters.check632, label %vec.epilog.ph654, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %i.or = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.oh ; 2 uses
  %i.os = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec634 ; 2 uses
  %i.ot = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec634 ; 2 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.ph633, %vector.body635
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next647, %vector.body635 ] ; 4 uses
  %i.ou = shl i64 %index636, 1                    ; 2 uses
  %next.gep637 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ou
  %i.ov = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ou
  %next.gep638 = getelementptr i8, ptr %i.ov, i64 16
  %next.gep639 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index636 ; 2 uses
  %next.gep640 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index636 ; 2 uses
  %i.ow = getelementptr i8, ptr %next.gep640, i64 8
  %wide.load641 = load <8 x i8>, ptr %next.gep640, align 1, !alias.scope !228
  %wide.load642 = load <8 x i8>, ptr %i.ow, align 1, !alias.scope !228
  %i.ox = getelementptr i8, ptr %next.gep639, i64 8
  %wide.load643 = load <8 x i8>, ptr %next.gep639, align 1, !alias.scope !229
  %wide.load644 = load <8 x i8>, ptr %i.ox, align 1, !alias.scope !229
  %interleaved.vec645 = shufflevector <8 x i8> %wide.load641, <8 x i8> %wide.load643, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec645, ptr %next.gep637, align 1, !alias.scope !230, !noalias !231
  %interleaved.vec646 = shufflevector <8 x i8> %wide.load642, <8 x i8> %wide.load644, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec646, ptr %next.gep638, align 1, !alias.scope !230, !noalias !231
  %index.next647 = add nuw i64 %index636, 16      ; 2 uses
  %i.oy = icmp eq i64 %index.next647, %n.vec634
  br i1 %i.oy, label %middle.block648, label %vector.body635, !llvm.loop !164

middle.block648:                                  ; preds = %vector.body635
  br i1 %cmp.n649, label %._crit_edge.i.i140.i, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block648
  br i1 %min.epilog.iters.check653, label %vec.epilog.scalar.ph652.preheader, label %vec.epilog.ph654, !prof !223

vec.epilog.ph654:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check651
  %vec.epilog.resume.val655 = phi i64 [ %n.vec634, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check631 ]
  %i.oz = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ok ; 2 uses
  %i.pa = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec656 ; 2 uses
  %i.pb = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec656 ; 2 uses
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph654
  %index658 = phi i64 [ %vec.epilog.resume.val655, %vec.epilog.ph654 ], [ %index.next665, %vec.epilog.vector.body657 ] ; 4 uses
  %i.pc = shl i64 %index658, 1
  %next.gep659 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.pc
  %next.gep660 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index658
  %next.gep661 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index658
  %wide.load662 = load <4 x i8>, ptr %next.gep661, align 1, !alias.scope !228
  %wide.load663 = load <4 x i8>, ptr %next.gep660, align 1, !alias.scope !229
  %interleaved.vec664 = shufflevector <4 x i8> %wide.load662, <4 x i8> %wide.load663, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec664, ptr %next.gep659, align 1, !alias.scope !230, !noalias !231
  %index.next665 = add nuw i64 %index658, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next665, %n.vec656
  br i1 %i.pd, label %vec.epilog.middle.block666, label %vec.epilog.vector.body657, !llvm.loop !165

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body657
  br i1 %cmp.n667, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652.preheader

vec.epilog.scalar.ph652.preheader:                ; preds = %iter.check650, %vector.memcheck623, %vec.epilog.iter.check651, %vec.epilog.middle.block666
  %.168.i.i135.i.ph = phi ptr [ %.04974.i.i132.i, %iter.check650 ], [ %.04974.i.i132.i, %vector.memcheck623 ], [ %i.or, %vec.epilog.iter.check651 ], [ %i.oz, %vec.epilog.middle.block666 ] ; 2 uses
  %.267.i.i136.i.ph = phi ptr [ %.15173.i.i133.i, %iter.check650 ], [ %.15173.i.i133.i, %vector.memcheck623 ], [ %i.os, %vec.epilog.iter.check651 ], [ %i.pa, %vec.epilog.middle.block666 ] ; 2 uses
  %.25466.i.i137.i.ph = phi ptr [ %.15372.i.i134.i, %iter.check650 ], [ %.15372.i.i134.i, %vector.memcheck623 ], [ %i.ot, %vec.epilog.iter.check651 ], [ %i.pb, %vec.epilog.middle.block666 ] ; 2 uses
  %.05665.i.i138.i.ph = phi i32 [ %i.ne, %iter.check650 ], [ %i.ne, %vector.memcheck623 ], [ %i.oj, %vec.epilog.iter.check651 ], [ %i.om, %vec.epilog.middle.block666 ] ; 4 uses
  %i.pe = add nsw i32 %.05665.i.i138.i.ph, -1
  %xtraiter930 = and i32 %.05665.i.i138.i.ph, 3   ; 2 uses
  %lcmp.mod931.not = icmp eq i32 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %vec.epilog.scalar.ph652.prol.loopexit, label %vec.epilog.scalar.ph652.prol

vec.epilog.scalar.ph652.prol:                     ; preds = %vec.epilog.scalar.ph652.preheader, %vec.epilog.scalar.ph652.prol
  %.168.i.i135.i.prol = phi ptr [ %i.pl, %vec.epilog.scalar.ph652.prol ], [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 3 uses
  %.267.i.i136.i.prol = phi ptr [ %i.pj, %vec.epilog.scalar.ph652.prol ], [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 2 uses
  %.25466.i.i137.i.prol = phi ptr [ %i.pg, %vec.epilog.scalar.ph652.prol ], [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 2 uses
  %.05665.i.i138.i.prol = phi i32 [ %i.pf, %vec.epilog.scalar.ph652.prol ], [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph652.preheader ]
  %prol.iter932 = phi i32 [ %prol.iter932.next, %vec.epilog.scalar.ph652.prol ], [ 0, %vec.epilog.scalar.ph652.preheader ]
  %i.pf = add nsw i32 %.05665.i.i138.i.prol, -1   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i.prol, i64 1 ; 3 uses
  %i.ph = load i8, ptr %.25466.i.i137.i.prol, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 1
  store i8 %i.ph, ptr %.168.i.i135.i.prol, align 1
  %i.pj = getelementptr inbounds nuw i8, ptr %.267.i.i136.i.prol, i64 1 ; 3 uses
  %i.pk = load i8, ptr %.267.i.i136.i.prol, align 1
  %i.pl = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 2 ; 3 uses
  store i8 %i.pk, ptr %i.pi, align 1
  %prol.iter932.next = add i32 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i32 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %vec.epilog.scalar.ph652.prol.loopexit, label %vec.epilog.scalar.ph652.prol, !llvm.loop !166

vec.epilog.scalar.ph652.prol.loopexit:            ; preds = %vec.epilog.scalar.ph652.prol, %vec.epilog.scalar.ph652.preheader
  %.lcssa863.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pg, %vec.epilog.scalar.ph652.prol ]
  %.lcssa862.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pj, %vec.epilog.scalar.ph652.prol ]
  %.lcssa861.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pl, %vec.epilog.scalar.ph652.prol ]
  %.168.i.i135.i.unr = phi ptr [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pl, %vec.epilog.scalar.ph652.prol ]
  %.267.i.i136.i.unr = phi ptr [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pj, %vec.epilog.scalar.ph652.prol ]
  %.25466.i.i137.i.unr = phi ptr [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pg, %vec.epilog.scalar.ph652.prol ]
  %.05665.i.i138.i.unr = phi i32 [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pf, %vec.epilog.scalar.ph652.prol ]
  %i.pm = icmp ult i32 %i.pe, 3
  br i1 %i.pm, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652

vec.epilog.scalar.ph652:                          ; preds = %vec.epilog.scalar.ph652.prol.loopexit, %vec.epilog.scalar.ph652
  %.168.i.i135.i = phi ptr [ %i.ql, %vec.epilog.scalar.ph652 ], [ %.168.i.i135.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 9 uses
  %.267.i.i136.i = phi ptr [ %i.qj, %vec.epilog.scalar.ph652 ], [ %.267.i.i136.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 5 uses
  %.25466.i.i137.i = phi ptr [ %i.qg, %vec.epilog.scalar.ph652 ], [ %.25466.i.i137.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 5 uses
  %.05665.i.i138.i = phi i32 [ %i.qf, %vec.epilog.scalar.ph652 ], [ %.05665.i.i138.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 1
  %i.po = load i8, ptr %.25466.i.i137.i, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 1
  store i8 %i.po, ptr %.168.i.i135.i, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 1
  %i.pr = load i8, ptr %.267.i.i136.i, align 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 2
  store i8 %i.pr, ptr %i.pp, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 2
  %i.pu = load i8, ptr %i.pn, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 3
  store i8 %i.pu, ptr %i.ps, align 1
  %i.pw = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 2
  %i.px = load i8, ptr %i.pq, align 1
  %i.py = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 4
  store i8 %i.px, ptr %i.pv, align 1
  %i.pz = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 3
  %i.qa = load i8, ptr %i.pt, align 1
  %i.qb = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 5
  store i8 %i.qa, ptr %i.py, align 1
  %i.qc = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 3
  %i.qd = load i8, ptr %i.pw, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 6
  store i8 %i.qd, ptr %i.qb, align 1
  %i.qf = add nsw i32 %.05665.i.i138.i, -4        ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 4 ; 2 uses
  %i.qh = load i8, ptr %i.pz, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 7
  store i8 %i.qh, ptr %i.qe, align 1
  %i.qj = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 4 ; 2 uses
  %i.qk = load i8, ptr %i.qc, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 8 ; 2 uses
  store i8 %i.qk, ptr %i.qi, align 1
  %.not63.i.i139.i.3 = icmp eq i32 %i.qf, 0
  br i1 %.not63.i.i139.i.3, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652, !llvm.loop !167

._crit_edge.i.i140.i:                             ; preds = %vec.epilog.scalar.ph652.prol.loopexit, %vec.epilog.scalar.ph652, %vec.epilog.middle.block666, %middle.block648
  %.lcssa481 = phi ptr [ %i.pb, %vec.epilog.middle.block666 ], [ %i.ot, %middle.block648 ], [ %.lcssa863.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.qg, %vec.epilog.scalar.ph652 ]
  %.lcssa480 = phi ptr [ %i.pa, %vec.epilog.middle.block666 ], [ %i.os, %middle.block648 ], [ %.lcssa862.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.qj, %vec.epilog.scalar.ph652 ]
  %.lcssa479 = phi ptr [ %i.oz, %vec.epilog.middle.block666 ], [ %i.or, %middle.block648 ], [ %.lcssa861.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.ql, %vec.epilog.scalar.ph652 ]
  %i.qm = add nsw i32 %.in.i.i131.i, -1           ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.lcssa481, i64 %i.nw
  %i.qo = getelementptr inbounds i8, ptr %.lcssa480, i64 %i.nw
  %i.qp = getelementptr inbounds i8, ptr %.lcssa479, i64 %i.nx
  %.not62.i.i141.i = icmp eq i32 %i.qm, 0
  br i1 %.not62.i.i141.i, label %._crit_edge75.split.i.i142.i, label %iter.check650, !llvm.loop !151

._crit_edge75.split.i.i142.i:                     ; preds = %._crit_edge.i.i140.i, %.preheader.lr.ph.i.i126.i, %bb.ab
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i123.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ac:                                            ; preds = %bb.w
  %i.qq = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.qr = insertelement <4 x i32> %i.qq, i32 %1, i64 1
  %i.qs = insertelement <4 x i32> %i.qr, i32 %6, i64 2
  %i.qt = insertelement <4 x i32> %i.qs, i32 %11, i64 3
  %i.qu = add nsw <4 x i32> %i.qt, splat (i32 1)
  %i.qv = sdiv <4 x i32> %i.qu, splat (i32 2)     ; 6 uses
  %i.qw = extractelement <4 x i32> %i.qv, i64 0   ; 6 uses
  %i.qx = extractelement <4 x i32> %i.qv, i64 2   ; 3 uses
  %i.qy = sub nsw i32 %i.qx, %i.qw
  %shift800 = shufflevector <4 x i32> %i.qv, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop801 = sub nsw <4 x i32> %shift800, %i.qv
  %i.qz = extractelement <4 x i32> %foldExtExtBinop801, i64 0
  %i.ra = shl nsw i32 %i.qz, 1
  %i.rb = mul nsw i32 %6, %1
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %5, i64 %i.rc ; 3 uses
  %i.re = mul nsw i32 %11, %1
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %10, i64 %i.rf ; 2 uses
  %i.rh = icmp eq ptr %i.rd, %i.rg
  br i1 %i.rh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ri = extractelement <4 x i32> %i.qv, i64 1
  %i.rj = sext i32 %i.ri to i64
  %i.rk = shl nsw i64 %i.rj, 1
  %i.rl = sext i32 %i.qx to i64
  %i.rm = mul nsw i64 %i.rk, %i.rl                ; 2 uses
  %i.rn = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.rm) #6 ; 4 uses
  %.not.i.i168.i = icmp eq ptr %i.rn, null
  br i1 %.not.i.i168.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rn, ptr readonly align 1 %i.rd, i64 %i.rm, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.058.i.i146.i = phi ptr [ %i.rn, %bb.ae ], [ %i.rd, %bb.ac ] ; 2 uses
  %.0.i.i147.i = phi ptr [ %i.rn, %bb.ae ], [ null, %bb.ac ]
  %.off.i.i148.i = add i32 %1, 2
  %.not6271.i.i149.i = icmp ult i32 %.off.i.i148.i, 3
  br i1 %.not6271.i.i149.i, label %._crit_edge75.split.i.i166.i, label %.preheader.lr.ph.i.i150.i

.preheader.lr.ph.i.i150.i:                        ; preds = %bb.af
  %.off76.i.i151.i = add i32 %0, 2
  %.not6364.i.i152.i = icmp ult i32 %.off76.i.i151.i, 3
  %i.ro = sext i32 %i.qy to i64                   ; 2 uses
  %i.rp = sext i32 %i.ra to i64
  br i1 %.not6364.i.i152.i, label %._crit_edge75.split.i.i166.i, label %.preheader.preheader.i.i153.i

.preheader.preheader.i.i153.i:                    ; preds = %.preheader.lr.ph.i.i150.i
  %i.rq = extractelement <4 x i32> %i.qv, i64 1   ; 2 uses
  %i.rr = mul nsw i32 %i.qx, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %.058.i.i146.i, i64 %i.rs
  %i.ru = add nsw i32 %i.qw, -1                   ; 3 uses
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = add nuw nsw i64 %i.rv, 1                ; 7 uses
  %i.rx = shl nuw nsw i64 %i.rv, 1
  %min.iters.check567 = icmp ult i32 %i.ru, 3
  %min.iters.check573 = icmp ult i32 %i.ru, 15
  %i.ry = and i64 %i.rw, 12
  %n.vec575 = and i64 %i.rw, 8589934576           ; 7 uses
  %i.rz = shl nuw nsw i64 %n.vec575, 1
  %i.sa = trunc i64 %n.vec575 to i32
  %i.sb = sub i32 %i.qw, %i.sa
  %cmp.n589 = icmp eq i64 %i.rw, %n.vec575
  %min.epilog.iters.check593 = icmp eq i64 %i.ry, 0
  %n.vec596 = and i64 %i.rw, 8589934588           ; 6 uses
  %i.sc = shl nuw nsw i64 %n.vec596, 1
  %i.sd = trunc i64 %n.vec596 to i32
  %i.se = sub i32 %i.qw, %i.sd
  %cmp.n607 = icmp eq i64 %i.rw, %n.vec596
  br label %iter.check590

iter.check590:                                    ; preds = %._crit_edge.i.i164.i, %.preheader.preheader.i.i153.i
  %.in.i.i155.i = phi i32 [ %i.ue, %._crit_edge.i.i164.i ], [ %i.rq, %.preheader.preheader.i.i153.i ]
  %.04974.i.i156.i = phi ptr [ %i.uh, %._crit_edge.i.i164.i ], [ %i.rg, %.preheader.preheader.i.i153.i ] ; 10 uses
  %.15173.i.i157.i = phi ptr [ %i.ug, %._crit_edge.i.i164.i ], [ %.058.i.i146.i, %.preheader.preheader.i.i153.i ] ; 8 uses
  %.15372.i.i158.i = phi ptr [ %i.uf, %._crit_edge.i.i164.i ], [ %i.rt, %.preheader.preheader.i.i153.i ] ; 8 uses
  br i1 %min.iters.check567, label %vec.epilog.scalar.ph592.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check590
  %i.sf = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rx
  %i.sg = getelementptr i8, ptr %i.sf, i64 2      ; 2 uses
  %i.sh = getelementptr i8, ptr %.15372.i.i158.i, i64 %i.rw
  %i.si = getelementptr i8, ptr %.15173.i.i157.i, i64 %i.rw
  %bound0 = icmp ult ptr %.04974.i.i156.i, %i.sh
  %bound1 = icmp ult ptr %.15372.i.i158.i, %i.sg
  %found.conflict = and i1 %bound0, %bound1
  %bound0569 = icmp ult ptr %.04974.i.i156.i, %i.si
  %bound1570 = icmp ult ptr %.15173.i.i157.i, %i.sg
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx = or i1 %found.conflict, %found.conflict571
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph592.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %vector.memcheck568
  br i1 %min.iters.check573, label %vec.epilog.ph594, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %i.sj = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rz ; 2 uses
  %i.sk = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec575 ; 2 uses
  %i.sl = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec575 ; 2 uses
  br label %vector.body576

vector.body576:                                   ; preds = %vector.ph574, %vector.body576
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next587, %vector.body576 ] ; 4 uses
  %i.sm = shl i64 %index577, 1                    ; 2 uses
  %next.gep578 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sm
  %i.sn = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sm
  %next.gep579 = getelementptr i8, ptr %i.sn, i64 16
  %next.gep580 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index577 ; 2 uses
  %next.gep581 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index577 ; 2 uses
  %i.so = getelementptr i8, ptr %next.gep581, i64 8
  %wide.load582 = load <8 x i8>, ptr %next.gep581, align 1, !alias.scope !232
  %wide.load583 = load <8 x i8>, ptr %i.so, align 1, !alias.scope !232
  %i.sp = getelementptr i8, ptr %next.gep580, i64 8
  %wide.load584 = load <8 x i8>, ptr %next.gep580, align 1, !alias.scope !233
  %wide.load585 = load <8 x i8>, ptr %i.sp, align 1, !alias.scope !233
  %interleaved.vec = shufflevector <8 x i8> %wide.load582, <8 x i8> %wide.load584, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep578, align 1, !alias.scope !234, !noalias !235
  %interleaved.vec586 = shufflevector <8 x i8> %wide.load583, <8 x i8> %wide.load585, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec586, ptr %next.gep579, align 1, !alias.scope !234, !noalias !235
  %index.next587 = add nuw i64 %index577, 16      ; 2 uses
  %i.sq = icmp eq i64 %index.next587, %n.vec575
  br i1 %i.sq, label %middle.block588, label %vector.body576, !llvm.loop !172

middle.block588:                                  ; preds = %vector.body576
  br i1 %cmp.n589, label %._crit_edge.i.i164.i, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block588
  br i1 %min.epilog.iters.check593, label %vec.epilog.scalar.ph592.preheader, label %vec.epilog.ph594, !prof !223

vec.epilog.ph594:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check591
  %vec.epilog.resume.val595 = phi i64 [ %n.vec575, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check572 ]
  %i.sr = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sc ; 2 uses
  %i.ss = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec596 ; 2 uses
  %i.st = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec596 ; 2 uses
  br label %vec.epilog.vector.body597

vec.epilog.vector.body597:                        ; preds = %vec.epilog.vector.body597, %vec.epilog.ph594
  %index598 = phi i64 [ %vec.epilog.resume.val595, %vec.epilog.ph594 ], [ %index.next605, %vec.epilog.vector.body597 ] ; 4 uses
  %i.su = shl i64 %index598, 1
  %next.gep599 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.su
  %next.gep600 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index598
  %next.gep601 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index598
  %wide.load602 = load <4 x i8>, ptr %next.gep601, align 1, !alias.scope !232
  %wide.load603 = load <4 x i8>, ptr %next.gep600, align 1, !alias.scope !233
  %interleaved.vec604 = shufflevector <4 x i8> %wide.load602, <4 x i8> %wide.load603, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec604, ptr %next.gep599, align 1, !alias.scope !234, !noalias !235
  %index.next605 = add nuw i64 %index598, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next605, %n.vec596
  br i1 %i.sv, label %vec.epilog.middle.block606, label %vec.epilog.vector.body597, !llvm.loop !173

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body597
  br i1 %cmp.n607, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592.preheader

vec.epilog.scalar.ph592.preheader:                ; preds = %iter.check590, %vector.memcheck568, %vec.epilog.iter.check591, %vec.epilog.middle.block606
  %.168.i.i159.i.ph = phi ptr [ %.04974.i.i156.i, %iter.check590 ], [ %.04974.i.i156.i, %vector.memcheck568 ], [ %i.sj, %vec.epilog.iter.check591 ], [ %i.sr, %vec.epilog.middle.block606 ] ; 2 uses
  %.267.i.i160.i.ph = phi ptr [ %.15173.i.i157.i, %iter.check590 ], [ %.15173.i.i157.i, %vector.memcheck568 ], [ %i.sk, %vec.epilog.iter.check591 ], [ %i.ss, %vec.epilog.middle.block606 ] ; 2 uses
  %.25466.i.i161.i.ph = phi ptr [ %.15372.i.i158.i, %iter.check590 ], [ %.15372.i.i158.i, %vector.memcheck568 ], [ %i.sl, %vec.epilog.iter.check591 ], [ %i.st, %vec.epilog.middle.block606 ] ; 2 uses
  %.05665.i.i162.i.ph = phi i32 [ %i.qw, %iter.check590 ], [ %i.qw, %vector.memcheck568 ], [ %i.sb, %vec.epilog.iter.check591 ], [ %i.se, %vec.epilog.middle.block606 ] ; 4 uses
  %i.sw = add nsw i32 %.05665.i.i162.i.ph, -1
  %xtraiter927 = and i32 %.05665.i.i162.i.ph, 3   ; 2 uses
  %lcmp.mod928.not = icmp eq i32 %xtraiter927, 0
  br i1 %lcmp.mod928.not, label %vec.epilog.scalar.ph592.prol.loopexit, label %vec.epilog.scalar.ph592.prol

vec.epilog.scalar.ph592.prol:                     ; preds = %vec.epilog.scalar.ph592.preheader, %vec.epilog.scalar.ph592.prol
  %.168.i.i159.i.prol = phi ptr [ %i.td, %vec.epilog.scalar.ph592.prol ], [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 3 uses
  %.267.i.i160.i.prol = phi ptr [ %i.tb, %vec.epilog.scalar.ph592.prol ], [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 2 uses
  %.25466.i.i161.i.prol = phi ptr [ %i.sy, %vec.epilog.scalar.ph592.prol ], [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 2 uses
  %.05665.i.i162.i.prol = phi i32 [ %i.sx, %vec.epilog.scalar.ph592.prol ], [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph592.preheader ]
  %prol.iter929 = phi i32 [ %prol.iter929.next, %vec.epilog.scalar.ph592.prol ], [ 0, %vec.epilog.scalar.ph592.preheader ]
  %i.sx = add nsw i32 %.05665.i.i162.i.prol, -1   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i.prol, i64 1 ; 3 uses
  %i.sz = load i8, ptr %.25466.i.i161.i.prol, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 1
  store i8 %i.sz, ptr %.168.i.i159.i.prol, align 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.267.i.i160.i.prol, i64 1 ; 3 uses
  %i.tc = load i8, ptr %.267.i.i160.i.prol, align 1
  %i.td = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 2 ; 3 uses
  store i8 %i.tc, ptr %i.ta, align 1
  %prol.iter929.next = add i32 %prol.iter929, 1   ; 2 uses
  %prol.iter929.cmp.not = icmp eq i32 %prol.iter929.next, %xtraiter927
  br i1 %prol.iter929.cmp.not, label %vec.epilog.scalar.ph592.prol.loopexit, label %vec.epilog.scalar.ph592.prol, !llvm.loop !174

vec.epilog.scalar.ph592.prol.loopexit:            ; preds = %vec.epilog.scalar.ph592.prol, %vec.epilog.scalar.ph592.preheader
  %.lcssa866.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.sy, %vec.epilog.scalar.ph592.prol ]
  %.lcssa865.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.tb, %vec.epilog.scalar.ph592.prol ]
  %.lcssa864.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.td, %vec.epilog.scalar.ph592.prol ]
  %.168.i.i159.i.unr = phi ptr [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.td, %vec.epilog.scalar.ph592.prol ]
  %.267.i.i160.i.unr = phi ptr [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.tb, %vec.epilog.scalar.ph592.prol ]
  %.25466.i.i161.i.unr = phi ptr [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.sy, %vec.epilog.scalar.ph592.prol ]
  %.05665.i.i162.i.unr = phi i32 [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.sx, %vec.epilog.scalar.ph592.prol ]
  %i.te = icmp ult i32 %i.sw, 3
  br i1 %i.te, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592

vec.epilog.scalar.ph592:                          ; preds = %vec.epilog.scalar.ph592.prol.loopexit, %vec.epilog.scalar.ph592
  %.168.i.i159.i = phi ptr [ %i.ud, %vec.epilog.scalar.ph592 ], [ %.168.i.i159.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 9 uses
  %.267.i.i160.i = phi ptr [ %i.ub, %vec.epilog.scalar.ph592 ], [ %.267.i.i160.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 5 uses
  %.25466.i.i161.i = phi ptr [ %i.ty, %vec.epilog.scalar.ph592 ], [ %.25466.i.i161.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 5 uses
  %.05665.i.i162.i = phi i32 [ %i.tx, %vec.epilog.scalar.ph592 ], [ %.05665.i.i162.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ]
  %i.tf = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 1
  %i.tg = load i8, ptr %.25466.i.i161.i, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 1
  store i8 %i.tg, ptr %.168.i.i159.i, align 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 1
  %i.tj = load i8, ptr %.267.i.i160.i, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 2
  store i8 %i.tj, ptr %i.th, align 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 2
  %i.tm = load i8, ptr %i.tf, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 3
  store i8 %i.tm, ptr %i.tk, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 2
  %i.tp = load i8, ptr %i.ti, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 4
  store i8 %i.tp, ptr %i.tn, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 3
  %i.ts = load i8, ptr %i.tl, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 5
  store i8 %i.ts, ptr %i.tq, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 3
  %i.tv = load i8, ptr %i.to, align 1
  %i.tw = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 6
  store i8 %i.tv, ptr %i.tt, align 1
  %i.tx = add nsw i32 %.05665.i.i162.i, -4        ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 4 ; 2 uses
  %i.tz = load i8, ptr %i.tr, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 7
  store i8 %i.tz, ptr %i.tw, align 1
  %i.ub = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 4 ; 2 uses
  %i.uc = load i8, ptr %i.tu, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 8 ; 2 uses
  store i8 %i.uc, ptr %i.ua, align 1
  %.not63.i.i163.i.3 = icmp eq i32 %i.tx, 0
  br i1 %.not63.i.i163.i.3, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592, !llvm.loop !175

._crit_edge.i.i164.i:                             ; preds = %vec.epilog.scalar.ph592.prol.loopexit, %vec.epilog.scalar.ph592, %vec.epilog.middle.block606, %middle.block588
  %.lcssa484 = phi ptr [ %i.st, %vec.epilog.middle.block606 ], [ %i.sl, %middle.block588 ], [ %.lcssa866.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.ty, %vec.epilog.scalar.ph592 ]
  %.lcssa483 = phi ptr [ %i.ss, %vec.epilog.middle.block606 ], [ %i.sk, %middle.block588 ], [ %.lcssa865.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.ub, %vec.epilog.scalar.ph592 ]
  %.lcssa482 = phi ptr [ %i.sr, %vec.epilog.middle.block606 ], [ %i.sj, %middle.block588 ], [ %.lcssa864.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.ud, %vec.epilog.scalar.ph592 ]
  %i.ue = add nsw i32 %.in.i.i155.i, -1           ; 2 uses
  %i.uf = getelementptr inbounds i8, ptr %.lcssa484, i64 %i.ro
  %i.ug = getelementptr inbounds i8, ptr %.lcssa483, i64 %i.ro
  %i.uh = getelementptr inbounds i8, ptr %.lcssa482, i64 %i.rp
  %.not62.i.i165.i = icmp eq i32 %i.ue, 0
  br i1 %.not62.i.i165.i, label %._crit_edge75.split.i.i166.i, label %iter.check590, !llvm.loop !151

._crit_edge75.split.i.i166.i:                     ; preds = %._crit_edge.i.i164.i, %.preheader.lr.ph.i.i150.i, %bb.af
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i147.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ag:                                            ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.ah
    i32 1448433993, label %bb.al
    i32 825382478, label %bb.ap
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ui = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.uj = insertelement <4 x i32> %i.ui, i32 %1, i64 1
  %i.uk = insertelement <4 x i32> %i.uj, i32 %6, i64 2
  %i.ul = insertelement <4 x i32> %i.uk, i32 %11, i64 3
  %i.um = add nsw <4 x i32> %i.ul, splat (i32 1)
  %i.un = sdiv <4 x i32> %i.um, splat (i32 2)     ; 5 uses
  %i.uo = extractelement <4 x i32> %i.un, i64 0   ; 6 uses
  %i.up = extractelement <4 x i32> %i.un, i64 2   ; 2 uses
  %i.uq = sub nsw i32 %i.up, %i.uo
  %i.ur = shl nsw i32 %i.uq, 1
  %i.us = extractelement <4 x i32> %i.un, i64 3   ; 2 uses
  %i.ut = sub nsw i32 %i.us, %i.uo
  %i.uu = mul nsw i32 %6, %1
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds i8, ptr %5, i64 %i.uv ; 3 uses
  %i.ux = mul nsw i32 %11, %1
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds i8, ptr %10, i64 %i.uy ; 3 uses
  %i.va = icmp eq ptr %i.uw, %i.uz
  br i1 %i.va, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.vb = shl nsw i32 %i.up, 1
  %i.vc = extractelement <4 x i32> %i.un, i64 1
  %i.vd = sext i32 %i.vc to i64
  %i.ve = sext i32 %i.vb to i64
  %i.vf = mul nsw i64 %i.ve, %i.vd                ; 2 uses
  %i.vg = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.vf) #6 ; 4 uses
  %.not.i.i187.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i187.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.aj

end_hunk_4
begin_hunk_5_@SDL_ConvertPixels_SwapUVPlanes:bb.a
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph82, label %bb.f, !llvm.loop !237

.lr.ph82:                                         ; preds = %bb.f, %.lr.ph82.unr-lcssa
  %.lcssa = phi ptr [ %i.ax, %.lr.ph82.unr-lcssa ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = sext i32 %i.b to i64                    ; 5 uses
  %i.ao = sext i32 %i.aa to i64                   ; 5 uses
  %i.ap = sext i32 %i.ac to i64                   ; 5 uses
  %xtraiter98 = and i32 %smax, 3                  ; 3 uses
  %i.aq = icmp slt i32 %1, 7
  br i1 %i.aq, label %.epil.preheader97, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter102 = and i32 %smax, 1073741820
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.078 = phi ptr [ %i.ag, %.lr.ph.new ], [ %i.ay, %bb.g ] ; 2 uses
  %.06277 = phi ptr [ %i.g, %.lr.ph.new ], [ %i.ax, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078, ptr align 1 %.06277, i64 %i.ah, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %.06277, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.078, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.ah, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.ai ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.at, i64 %i.ah, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.ai ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.av, i64 %i.ah, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.ai ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.aj ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph82.unr-lcssa, label %bb.g, !llvm.loop !238

bb.h:                                             ; preds = %bb.h, %.lr.ph82.new
  %.181 = phi ptr [ %i.j, %.lr.ph82.new ], [ %i.bg, %bb.h ] ; 2 uses
  %.16380 = phi ptr [ %.lcssa, %.lr.ph82.new ], [ %i.bf, %bb.h ] ; 2 uses
  %niter103 = phi i32 [ 0, %.lr.ph82.new ], [ %niter103.next.3, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181, ptr align 1 %.16380, i64 %i.an, i1 false)
  %i.az = getelementptr inbounds i8, ptr %.16380, i64 %i.ao ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.181, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.az, i64 %i.an, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ao ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bb, i64 %i.an, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.ao ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bd, i64 %i.an, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ao ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.ap ; 2 uses
  %niter103.next.3 = add i32 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i32 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !239

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %.critedge, label %.epil.preheader97

.epil.preheader97:                                ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph82
  %.181.epil.init = phi ptr [ %i.j, %.lr.ph82 ], [ %i.bg, %.critedge.loopexit.unr-lcssa ]
  %.16380.epil.init = phi ptr [ %.lcssa, %.lr.ph82 ], [ %i.bf, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader97
  %.181.epil = phi ptr [ %.181.epil.init, %.epil.preheader97 ], [ %i.bi, %bb.i ] ; 2 uses
  %.16380.epil = phi ptr [ %.16380.epil.init, %.epil.preheader97 ], [ %i.bh, %bb.i ] ; 2 uses
  %epil.iter99 = phi i32 [ 0, %.epil.preheader97 ], [ %epil.iter99.next, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181.epil, ptr align 1 %.16380.epil, i64 %i.an, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.16380.epil, i64 %i.ao
  %i.bi = getelementptr inbounds i8, ptr %.181.epil, i64 %i.ap
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %.critedge, label %bb.i, !llvm.loop !240

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.i, %bb.e, %._crit_edge, %bb.b
  %.170 = phi i1 [ false, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ], [ true, %bb.i ], [ true, %.critedge.loopexit.unr-lcssa ]
  ret i1 %.170
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, i1 false, !"LVerDomain"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !3, !4, !5}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !3, !4, !5}
!19 = distinct !{!19, !3, !4}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !3, !4, !5}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !3, !4}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !3, !4, !5}
!34 = distinct !{!34, !3, !4}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !3, !4, !5}
!40 = distinct !{!40, !3, !4}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !3, !4, !5}
!46 = distinct !{!46, !3, !4}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !3, !4, !5}
!52 = distinct !{!52, !3, !4}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !3, !4, !5}
!57 = distinct !{!57, !3, !4}
!58 = distinct !{!58, !3}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !3, !4, !5}
!63 = distinct !{!63, !3, !4}
!64 = distinct !{!64, !3}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !3, !4, !5}
!69 = distinct !{!69, !3, !4}
!70 = distinct !{!70, !3}
!71 = !{!8}
!72 = !{!9}
!73 = !{!14}
!74 = !{!15}
!75 = !{!16}
!76 = !{!17, !14, !15}
!77 = !{!17}
!78 = !{!14, !15}
!79 = !{!22}
!80 = !{!23}
!81 = !{!25, !24, !22}
!82 = !{!24}
!83 = !{!27}
!84 = !{!23, !25, !24, !22}
!85 = !{!25}
!86 = !{!24, !22}
!87 = !{!30}
!88 = !{!31}
!89 = !{!32}
!90 = !{!30, !31}
!91 = !{!37}
!92 = !{!38}
!93 = !{!42}
!94 = !{!43}
!95 = !{!44}
!96 = !{!42, !43}
!97 = !{!49}
!98 = !{!50}
!99 = !{!54}
!100 = !{!55}
!101 = !{!60}
!102 = !{!61}
!103 = !{!66}
!104 = !{!67}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !3, !4, !5}
!109 = distinct !{!109, !3, !4}
!110 = distinct !{!110, !3}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !111}
!115 = distinct !{!115, !3, !4, !5}
!116 = distinct !{!116, !3, !4}
!117 = distinct !{!117, !3}
!118 = distinct !{!118, i1 false, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !3, !4, !5}
!122 = distinct !{!122, !3, !4}
!123 = !{!106}
!124 = !{!107}
!125 = !{!112}
!126 = !{!113}
!127 = !{!114}
!128 = !{!112, !113}
!129 = !{!119}
!130 = !{!120}
!131 = distinct !{!131, !6}
!132 = distinct !{!132, !3}
!133 = distinct !{!133, !6}
!134 = distinct !{!134, !3}
!135 = distinct !{!135, !6}
!136 = distinct !{!136, !3}
!137 = distinct !{!137, !6}
!138 = distinct !{!138, !3}
!139 = distinct !{!139, !6}
!140 = distinct !{!140, !3}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !3}
!143 = distinct !{!143, i1 false, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = distinct !{!147, !3, !4, !5}
!148 = distinct !{!148, !3, !4, !5}
!149 = distinct !{!149, !6}
!150 = distinct !{!150, !3, !4}
!151 = distinct !{!151, !3}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !152}
!156 = distinct !{!156, !3, !4, !5}
!157 = distinct !{!157, !3, !4, !5}
!158 = distinct !{!158, !6}
!159 = distinct !{!159, !3, !4}
!160 = distinct !{!160, i1 false, !"LVerDomain"}
!161 = distinct !{!161, !160}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !160}
!164 = distinct !{!164, !3, !4, !5}
!165 = distinct !{!165, !3, !4, !5}
!166 = distinct !{!166, !6}
!167 = distinct !{!167, !3, !4}
!168 = distinct !{!168, i1 false, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !168}
!172 = distinct !{!172, !3, !4, !5}
!173 = distinct !{!173, !3, !4, !5}
!174 = distinct !{!174, !6}
!175 = distinct !{!175, !3, !4}
!176 = distinct !{!176, !6}
!177 = distinct !{!177, !3}
!178 = distinct !{!178, !3}
!179 = distinct !{!179, !6}
!180 = distinct !{!180, !3, !4, !5}
!181 = distinct !{!181, !3, !4, !5}
!182 = distinct !{!182, !6}
!183 = distinct !{!183, !3, !4}
!184 = distinct !{!184, !3}
!185 = distinct !{!185, !6}
!186 = distinct !{!186, !3}
!187 = distinct !{!187, !3}
!188 = distinct !{!188, !6}
!189 = distinct !{!189, !6}
!190 = distinct !{!190, !3, !4, !5}
!191 = distinct !{!191, !3, !4, !5}
!192 = distinct !{!192, !6}
!193 = distinct !{!193, !3, !4}
!194 = distinct !{!194, !6}
!195 = distinct !{!195, !6}
!196 = distinct !{!196, !3}
!197 = distinct !{!197, !3}
!198 = distinct !{!198, !6}
!199 = distinct !{!199, !3}
!200 = distinct !{!200, !3}
!201 = distinct !{!201, !6}
!202 = distinct !{!202, !3}
!203 = distinct !{!203, !3}
!204 = distinct !{!204, !6}
!205 = distinct !{!205, !3}
!206 = distinct !{!206, !3}
!207 = distinct !{!207, !6}
!208 = distinct !{!208, !3}
!209 = distinct !{!209, !3}
!210 = distinct !{!210, !6}
!211 = distinct !{!211, !3}
!212 = distinct !{!212, !3}
!213 = distinct !{!213, !3}
!214 = distinct !{!214, !3}
!215 = distinct !{!215, !3}
!216 = distinct !{!216, !3}
!217 = distinct !{!217, !3}
!218 = distinct !{!218, !3}
!219 = !{!144}
!220 = !{!145}
!221 = !{!146}
!222 = !{!144, !145}
!223 = !{!"branch_weights", i32 4, i32 12}
!224 = !{!153}
!225 = !{!154}
!226 = !{!155}
!227 = !{!153, !154}
!228 = !{!161}
!229 = !{!162}
!230 = !{!163}
!231 = !{!161, !162}
!232 = !{!169}
!233 = !{!170}
!234 = !{!171}
!235 = !{!169, !170}
!236 = distinct !{!236, !3}
!237 = distinct !{!237, !6}
!238 = distinct !{!238, !3}
!239 = distinct !{!239, !3}
!240 = distinct !{!240, !6}
end_hunk_5
