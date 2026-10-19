Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
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
  %scevgep1849 = getelementptr i8, ptr %i.ai, i64 %i.ah
  %min.iters.check1855 = icmp ult i32 %0, 4
  %stride.check1853 = icmp slt i32 %3, 0
  %n.vec1857 = and i64 %wide.trip.count1600, 2147483644 ; 4 uses
  %broadcast.splatinsert1858 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat1859 = shufflevector <4 x float> %broadcast.splatinsert1858, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1860 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat1861 = shufflevector <4 x float> %broadcast.splatinsert1860, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1862 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat1863 = shufflevector <4 x float> %broadcast.splatinsert1862, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1864 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat1865 = shufflevector <4 x i32> %broadcast.splatinsert1864, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1871 = icmp eq i64 %n.vec1857, %wide.trip.count1600
  br label %.preheader1442.us

.preheader1442.us:                                ; preds = %._crit_edge1477.us, %.preheader1442.lr.ph.split.us
  %.013191483.us = phi ptr [ %2, %.preheader1442.lr.ph.split.us ], [ %i.ca, %._crit_edge1477.us ] ; 3 uses
  %.013231482.us = phi i32 [ 0, %.preheader1442.lr.ph.split.us ], [ %i.cb, %._crit_edge1477.us ]
  %.lcssa14801481.us = phi ptr [ %i.n, %.preheader1442.lr.ph.split.us ], [ %i.bz, %._crit_edge1477.us ] ; 6 uses
  br i1 %min.iters.check1855, label %scalar.ph1854.preheader, label %vector.memcheck1847

vector.memcheck1847:                              ; preds = %.preheader1442.us
  %scevgep1848 = getelementptr i8, ptr %.lcssa14801481.us, i64 %wide.trip.count1600
  %bound01850 = icmp ult ptr %.lcssa14801481.us, %scevgep1849
  %bound11851 = icmp ult ptr %2, %scevgep1848
  %found.conflict1852 = and i1 %bound01850, %bound11851
  %i.aj = or i1 %found.conflict1852, %stride.check1853
  br i1 %i.aj, label %scalar.ph1854.preheader, label %vector.ph1856

vector.ph1856:                                    ; preds = %vector.memcheck1847
  %i.ak = getelementptr i8, ptr %.lcssa14801481.us, i64 %n.vec1857 ; 2 uses
  br label %vector.body1866

vector.body1866:                                  ; preds = %vector.body1866, %vector.ph1856
  %index1867 = phi i64 [ 0, %vector.ph1856 ], [ %index.next1869, %vector.body1866 ] ; 3 uses
  %next.gep1868 = getelementptr i8, ptr %.lcssa14801481.us, i64 %index1867
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.013191483.us, i64 %index1867
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !alias.scope !71 ; 3 uses
  %i.am = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.an = and <4 x i32> %i.am, splat (i32 255)
  %i.ao = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.ap = and <4 x i32> %i.ao, splat (i32 255)
  %i.aq = and <4 x i32> %wide.load, splat (i32 255)
  %i.ar = uitofp nneg <4 x i32> %i.an to <4 x float>
  %i.as = uitofp nneg <4 x i32> %i.ap to <4 x float>
  %i.at = fmul <4 x float> %broadcast.splat1859, %i.as
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1861, <4 x float> %i.ar, <4 x float> %i.at)
  %i.av = uitofp nneg <4 x i32> %i.aq to <4 x float>
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1863, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = fadd <4 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fptosi <4 x float> %i.ax to <4 x i32>
  %i.az = add nsw <4 x i32> %broadcast.splat1865, %i.ay
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> zeroinitializer)
  %i.bb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ba, <4 x i32> splat (i32 255))
  %i.bc = trunc nuw <4 x i32> %i.bb to <4 x i8>
  store <4 x i8> %i.bc, ptr %next.gep1868, align 1, !alias.scope !72, !noalias !71
  %index.next1869 = add nuw i64 %index1867, 4     ; 2 uses
  %i.bd = icmp eq i64 %index.next1869, %n.vec1857
  br i1 %i.bd, label %middle.block1870, label %vector.body1866, !llvm.loop !10

middle.block1870:                                 ; preds = %vector.body1866
  br i1 %cmp.n1871, label %._crit_edge1477.us, label %scalar.ph1854.preheader

scalar.ph1854.preheader:                          ; preds = %vector.memcheck1847, %.preheader1442.us, %middle.block1870
  %indvars.iv1597.ph = phi i64 [ 0, %vector.memcheck1847 ], [ 0, %.preheader1442.us ], [ %n.vec1857, %middle.block1870 ]
  %.ph2270 = phi ptr [ %.lcssa14801481.us, %vector.memcheck1847 ], [ %.lcssa14801481.us, %.preheader1442.us ], [ %i.ak, %middle.block1870 ]
  br label %scalar.ph1854

scalar.ph1854:                                    ; preds = %scalar.ph1854.preheader, %scalar.ph1854
  %indvars.iv1597 = phi i64 [ %indvars.iv.next1598, %scalar.ph1854 ], [ %indvars.iv1597.ph, %scalar.ph1854.preheader ] ; 2 uses
  %i.be = phi ptr [ %i.by, %scalar.ph1854 ], [ %.ph2270, %scalar.ph1854.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.013191483.us, i64 %indvars.iv1597
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = lshr i32 %i.bg, 8
  %i.bk = and i32 %i.bj, 255
  %i.bl = and i32 %i.bg, 255
  %i.bm = uitofp nneg i32 %i.bi to float
  %i.bn = uitofp nneg i32 %i.bk to float
  %i.bo = fmul float %i.ab, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bm, float %i.bo)
  %i.bq = uitofp nneg i32 %i.bl to float
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.bq, float %i.bp)
  %i.bs = fadd float %i.br, 5.000000e-01
  %i.bt = fptosi float %i.bs to i32
  %i.bu = add nsw i32 %i.ad, %i.bt
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 255)
  %i.bx = trunc nuw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store i8 %i.bx, ptr %i.be, align 1
  %indvars.iv.next1598 = add nuw nsw i64 %indvars.iv1597, 1 ; 2 uses
  %exitcond1601.not = icmp eq i64 %indvars.iv.next1598, %wide.trip.count1600
  br i1 %exitcond1601.not, label %._crit_edge1477.us, label %scalar.ph1854, !llvm.loop !11

._crit_edge1477.us:                               ; preds = %scalar.ph1854, %middle.block1870
  %.lcssa1725 = phi ptr [ %i.ak, %middle.block1870 ], [ %i.by, %scalar.ph1854 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa1725, i64 %i.v
  %i.ca = getelementptr inbounds i8, ptr %.013191483.us, i64 %i.w
  %i.cb = add nuw nsw i32 %.013231482.us, 1       ; 2 uses
  %exitcond1602.not = icmp eq i32 %i.cb, %1
  br i1 %exitcond1602.not, label %._crit_edge1484, label %.preheader1442.us, !llvm.loop !12

._crit_edge1484:                                  ; preds = %._crit_edge1477.us, %.preheader1442.lr.ph, %.._crit_edge1484_crit_edge
  %.pre-phi = phi i64 [ %.pre1637, %.._crit_edge1484_crit_edge ], [ %i.w, %.preheader1442.lr.ph ], [ %i.w, %._crit_edge1477.us ] ; 4 uses
  %i.cc = getelementptr i8, ptr %2, i64 %.pre-phi ; 7 uses
  switch i32 %4, label %bb.bh [
    i32 1448433993, label %bb.d
    i32 842094169, label %bb.d
    i32 842094158, label %bb.af
  ]

bb.d:                                             ; preds = %._crit_edge1484, %._crit_edge1484
  %.promoted1513 = load ptr, ptr %i.b, align 8    ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.cd = icmp sgt i32 %1, 1
  br i1 %i.cd, label %.preheader1439.lr.ph, label %._crit_edge1523

.preheader1439.lr.ph:                             ; preds = %bb.d
  %i.ce = load i32, ptr %i.e, align 4
  %i.cf = add nsw i32 %0, 1
  %.neg1408 = sdiv i32 %i.cf, -2
  %i.cg = add i32 %i.ce, %.neg1408
  %i.ch = icmp sgt i32 %0, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1411 = icmp eq i32 %i.j, 0
  %i.co = zext i32 %i.cg to i64                   ; 2 uses
  %i.cp = sext i32 %i.f to i64                    ; 3 uses
  %wide.trip.count1617 = zext i32 %i.i to i64     ; 6 uses
  %i.cq = shl nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.cr = add nsw i32 %i.g, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cp, %i.cs                ; 2 uses
  %i.cu = shl nuw nsw i64 %wide.trip.count1617, 3 ; 2 uses
  %i.cv = getelementptr i8, ptr %2, i64 %.pre-phi
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ct
  %scevgep1966.a = getelementptr i8, ptr %i.cw, i64 %i.cu ; 2 uses
  %i.cx = getelementptr i8, ptr %2, i64 %i.ct
  %scevgep1967 = getelementptr i8, ptr %i.cx, i64 %i.cu ; 2 uses
  %min.iters.check1992 = icmp ult i32 %0, 8
  %stride.check1974 = icmp slt i32 %i.f, 0
  %n.vec1994 = and i64 %wide.trip.count1617, 1073741820 ; 5 uses
  %cmp.n2023 = icmp eq i64 %n.vec1994, %wide.trip.count1617
  br label %.preheader1439

.preheader1439:                                   ; preds = %.preheader1439.lr.ph, %bb.r
  %.013161522 = phi ptr [ %i.cc, %.preheader1439.lr.ph ], [ %i.jl, %bb.r ] ; 5 uses
  %.113201521 = phi ptr [ %2, %.preheader1439.lr.ph ], [ %i.jk, %bb.r ] ; 5 uses
  %.113241520 = phi i32 [ 0, %.preheader1439.lr.ph ], [ %i.jm, %bb.r ]
  %.lcssa15141519 = phi ptr [ %.promoted1513, %.preheader1439.lr.ph ], [ %i.ji, %bb.r ] ; 9 uses
  %.lcssa150615161518 = phi ptr [ %.promoted, %.preheader1439.lr.ph ], [ %i.jj, %bb.r ] ; 9 uses
  br i1 %i.ch, label %.lr.ph1508, label %._crit_edge1509

.lr.ph1508:                                       ; preds = %.preheader1439
  %i.cy = load float, ptr %i.ci, align 8          ; 2 uses
  %i.cz = load float, ptr %i.cj, align 4          ; 2 uses
  %i.da = load float, ptr %i.ck, align 8          ; 2 uses
  %i.db = load float, ptr %i.cl, align 4          ; 2 uses
  %i.dc = load float, ptr %i.cm, align 8          ; 2 uses
  %i.dd = load float, ptr %i.cn, align 4          ; 2 uses
  br i1 %min.iters.check1992, label %scalar.ph1991.preheader, label %vector.memcheck1963

vector.memcheck1963:                              ; preds = %.lr.ph1508
  %scevgep1964.a = getelementptr i8, ptr %.lcssa15141519, i64 %wide.trip.count1617 ; 3 uses
  %scevgep1965 = getelementptr i8, ptr %.lcssa150615161518, i64 %wide.trip.count1617 ; 3 uses
  %bound01968 = icmp ult ptr %.lcssa15141519, %scevgep1965
  %bound11969 = icmp ult ptr %.lcssa150615161518, %scevgep1964.a
  %found.conflict1970 = and i1 %bound01968, %bound11969
  %bound01971 = icmp ult ptr %.lcssa15141519, %scevgep1966.a
  %bound11972 = icmp ult ptr %i.cc, %scevgep1964.a
  %found.conflict1973 = and i1 %bound01971, %bound11972
  %i.de = or i1 %found.conflict1973, %stride.check1974
  %conflict.rdx1975 = or i1 %found.conflict1970, %i.de
  %bound01976 = icmp ult ptr %.lcssa15141519, %scevgep1967
  %bound11977 = icmp ult ptr %2, %scevgep1964.a
  %found.conflict1978 = and i1 %bound01976, %bound11977
  %conflict.rdx1980 = or i1 %conflict.rdx1975, %found.conflict1978
  %bound01981 = icmp ult ptr %.lcssa150615161518, %scevgep1966.a
  %bound11982 = icmp ult ptr %i.cc, %scevgep1965
  %found.conflict1983 = and i1 %bound01981, %bound11982
  %conflict.rdx1985 = or i1 %conflict.rdx1980, %found.conflict1983
  %bound01986 = icmp ult ptr %.lcssa150615161518, %scevgep1967
  %bound11987 = icmp ult ptr %2, %scevgep1965
  %found.conflict1988 = and i1 %bound01986, %bound11987
  %conflict.rdx1990 = or i1 %conflict.rdx1985, %found.conflict1988
  br i1 %conflict.rdx1990, label %scalar.ph1991.preheader, label %vector.ph1993

vector.ph1993:                                    ; preds = %vector.memcheck1963
  %i.df = getelementptr i8, ptr %.lcssa15141519, i64 %n.vec1994 ; 2 uses
  %i.dg = getelementptr i8, ptr %.lcssa150615161518, i64 %n.vec1994 ; 2 uses
  %broadcast.splatinsert1995.a = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat1996.a = shufflevector <4 x float> %broadcast.splatinsert1995.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1997.a = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat1998.a = shufflevector <4 x float> %broadcast.splatinsert1997.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1999.a = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat2000.a = shufflevector <4 x float> %broadcast.splatinsert1999.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2001.a = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat2002.a = shufflevector <4 x float> %broadcast.splatinsert2001.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2003 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat2004 = shufflevector <4 x float> %broadcast.splatinsert2003, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2005 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat2006 = shufflevector <4 x float> %broadcast.splatinsert2005, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2007

vector.body2007:                                  ; preds = %vector.body2007, %vector.ph1993
  %index2008 = phi i64 [ 0, %vector.ph1993 ], [ %index.next2021, %vector.body2007 ] ; 4 uses
  %next.gep2009 = getelementptr i8, ptr %.lcssa15141519, i64 %index2008
  %next.gep2010 = getelementptr i8, ptr %.lcssa150615161518, i64 %index2008
  %i.dh = shl nuw nsw i64 %index2008, 1           ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.dh
  %wide.vec2011 = load <8 x i32>, ptr %i.di, align 4, !alias.scope !73 ; 2 uses
  %strided.vec2012.a = shufflevector <8 x i32> %wide.vec2011, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2013 = shufflevector <8 x i32> %wide.vec2011, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.dh
  %wide.vec2014 = load <8 x i32>, ptr %i.dj, align 4, !alias.scope !74 ; 2 uses
  %strided.vec2015 = shufflevector <8 x i32> %wide.vec2014, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2016 = shufflevector <8 x i32> %wide.vec2014, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.dk = and <4 x i32> %strided.vec2012.a, splat (i32 16711680)
  %i.dl = and <4 x i32> %strided.vec2013, splat (i32 16711680)
  %i.dm = add nuw nsw <4 x i32> %i.dl, %i.dk
  %i.dn = and <4 x i32> %strided.vec2015, splat (i32 16711680)
  %i.do = add nuw nsw <4 x i32> %i.dm, %i.dn
  %i.dp = and <4 x i32> %strided.vec2016, splat (i32 16711680)
  %i.dq = add nuw nsw <4 x i32> %i.do, %i.dp
  %i.dr = lshr <4 x i32> %i.dq, splat (i32 18)
  %i.ds = and <4 x i32> %strided.vec2012.a, splat (i32 65280)
  %i.dt = and <4 x i32> %strided.vec2013, splat (i32 65280)
  %i.du = add nuw nsw <4 x i32> %i.dt, %i.ds
  %i.dv = and <4 x i32> %strided.vec2015, splat (i32 65280)
  %i.dw = add nuw nsw <4 x i32> %i.du, %i.dv
  %i.dx = and <4 x i32> %strided.vec2016, splat (i32 65280)
  %i.dy = add nuw nsw <4 x i32> %i.dw, %i.dx
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 10)
  %i.ea = and <4 x i32> %strided.vec2012.a, splat (i32 255)
  %i.eb = and <4 x i32> %strided.vec2013, splat (i32 255)
  %i.ec = add nuw nsw <4 x i32> %i.eb, %i.ea
  %i.ed = and <4 x i32> %strided.vec2015, splat (i32 255)
  %i.ee = add nuw nsw <4 x i32> %i.ec, %i.ed
  %i.ef = and <4 x i32> %strided.vec2016, splat (i32 255)
  %i.eg = add nuw nsw <4 x i32> %i.ee, %i.ef
  %i.eh = lshr <4 x i32> %i.eg, splat (i32 2)
  %i.ei = uitofp nneg <4 x i32> %i.dr to <4 x float> ; 2 uses
  %i.ej = uitofp nneg <4 x i32> %i.dz to <4 x float> ; 2 uses
  %i.ek = fmul <4 x float> %broadcast.splat1998.a, %i.ej
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1996.a, <4 x float> %i.ei, <4 x float> %i.ek)
  %i.em = uitofp nneg <4 x i32> %i.eh to <4 x float> ; 2 uses
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2000.a, <4 x float> %i.em, <4 x float> %i.el)
  %i.eo = fadd <4 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = fptosi <4 x float> %i.eo to <4 x i32>   ; 3 uses
  %i.eq = icmp sgt <4 x i32> %i.ep, splat (i32 -129)
  %i.er = icmp sgt <4 x i32> %i.ep, splat (i32 127)
  %i.es = trunc <4 x i32> %i.ep to <4 x i8>
  %i.et = xor <4 x i8> %i.es, splat (i8 -128)
  %predphi2017 = select <4 x i1> %i.er, <4 x i8> splat (i8 -1), <4 x i8> %i.et
  %predphi2018 = select <4 x i1> %i.eq, <4 x i8> %predphi2017, <4 x i8> zeroinitializer
  store <4 x i8> %predphi2018, ptr %next.gep2009, align 1, !alias.scope !75, !noalias !76
  %i.eu = fmul <4 x float> %broadcast.splat2004, %i.ej
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2002.a, <4 x float> %i.ei, <4 x float> %i.eu)
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2006, <4 x float> %i.em, <4 x float> %i.ev)
  %i.ex = fadd <4 x float> %i.ew, splat (float 5.000000e-01)
  %i.ey = fptosi <4 x float> %i.ex to <4 x i32>   ; 3 uses
  %i.ez = icmp sgt <4 x i32> %i.ey, splat (i32 -129)
  %i.fa = icmp sgt <4 x i32> %i.ey, splat (i32 127)
  %i.fb = trunc <4 x i32> %i.ey to <4 x i8>
  %i.fc = xor <4 x i8> %i.fb, splat (i8 -128)
  %predphi2019 = select <4 x i1> %i.fa, <4 x i8> splat (i8 -1), <4 x i8> %i.fc
  %predphi2020 = select <4 x i1> %i.ez, <4 x i8> %predphi2019, <4 x i8> zeroinitializer
  store <4 x i8> %predphi2020, ptr %next.gep2010, align 1, !alias.scope !77, !noalias !78
  %index.next2021 = add nuw i64 %index2008, 4     ; 2 uses
  %i.fd = icmp eq i64 %index.next2021, %n.vec1994
  br i1 %i.fd, label %middle.block2022, label %vector.body2007, !llvm.loop !18

middle.block2022:                                 ; preds = %vector.body2007
  br i1 %cmp.n2023, label %._crit_edge1509, label %scalar.ph1991.preheader

scalar.ph1991.preheader:                          ; preds = %vector.memcheck1963, %.lr.ph1508, %middle.block2022
  %indvars.iv1614.ph = phi i64 [ 0, %vector.memcheck1963 ], [ 0, %.lr.ph1508 ], [ %n.vec1994, %middle.block2022 ]
  %.ph2259 = phi ptr [ %.lcssa15141519, %vector.memcheck1963 ], [ %.lcssa15141519, %.lr.ph1508 ], [ %i.df, %middle.block2022 ]
  %.ph2260 = phi ptr [ %.lcssa150615161518, %vector.memcheck1963 ], [ %.lcssa150615161518, %.lr.ph1508 ], [ %i.dg, %middle.block2022 ]
  br label %scalar.ph1991

scalar.ph1991:                                    ; preds = %scalar.ph1991.preheader, %bb.j
  %indvars.iv1614 = phi i64 [ %indvars.iv.next1615, %bb.j ], [ %indvars.iv1614.ph, %scalar.ph1991.preheader ] ; 2 uses
  %i.fe = phi ptr [ %i.hb, %bb.j ], [ %.ph2259, %scalar.ph1991.preheader ] ; 2 uses
  %i.ff = phi ptr [ %i.hm, %bb.j ], [ %.ph2260, %scalar.ph1991.preheader ] ; 2 uses
  %i.fg = shl nuw nsw i64 %indvars.iv1614, 1      ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4            ; 3 uses
  %i.fj = or disjoint i64 %i.fg, 1                ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4            ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fg
  %i.fn = load i32, ptr %i.fm, align 4            ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fj
  %i.fp = load i32, ptr %i.fo, align 4            ; 3 uses
  %i.fq = and i32 %i.fi, 16711680
  %i.fr = and i32 %i.fl, 16711680
  %i.fs = add nuw nsw i32 %i.fr, %i.fq
  %i.ft = and i32 %i.fn, 16711680
  %i.fu = add nuw nsw i32 %i.fs, %i.ft
  %i.fv = and i32 %i.fp, 16711680
  %i.fw = add nuw nsw i32 %i.fu, %i.fv
  %i.fx = lshr i32 %i.fw, 18
  %i.fy = and i32 %i.fi, 65280
  %i.fz = and i32 %i.fl, 65280
  %i.ga = add nuw nsw i32 %i.fz, %i.fy
  %i.gb = and i32 %i.fn, 65280
  %i.gc = add nuw nsw i32 %i.ga, %i.gb
  %i.gd = and i32 %i.fp, 65280
  %i.ge = add nuw nsw i32 %i.gc, %i.gd
  %i.gf = lshr i32 %i.ge, 10
  %i.gg = and i32 %i.fi, 255
  %i.gh = and i32 %i.fl, 255
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %i.gj = and i32 %i.fn, 255
  %i.gk = add nuw nsw i32 %i.gi, %i.gj
  %i.gl = and i32 %i.fp, 255
  %i.gm = add nuw nsw i32 %i.gk, %i.gl
  %i.gn = lshr i32 %i.gm, 2
  %i.go = uitofp nneg i32 %i.fx to float          ; 2 uses
  %i.gp = uitofp nneg i32 %i.gf to float          ; 2 uses
  %i.gq = fmul float %i.cz, %i.gp
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.go, float %i.gq)
  %i.gs = uitofp nneg i32 %i.gn to float          ; 2 uses
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.da, float %i.gs, float %i.gr)
  %i.gu = fadd float %i.gt, 5.000000e-01
  %i.gv = fptosi float %i.gu to i32               ; 3 uses
  %i.gw = icmp slt i32 %i.gv, -128
  br i1 %i.gw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %scalar.ph1991
  %i.gx = icmp sgt i32 %i.gv, 127
  br i1 %i.gx, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gy = trunc nsw i32 %i.gv to i8
  %i.gz = xor i8 %i.gy, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %scalar.ph1991
  %i.ha = phi i8 [ 0, %scalar.ph1991 ], [ %i.gz, %bb.f ], [ -1, %bb.e ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  store i8 %i.ha, ptr %i.fe, align 1
  %i.hc = fmul float %i.dc, %i.gp
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.db, float %i.go, float %i.hc)
  %i.he = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.gs, float %i.hd)
  %i.hf = fadd float %i.he, 5.000000e-01
  %i.hg = fptosi float %i.hf to i32               ; 3 uses
  %i.hh = icmp slt i32 %i.hg, -128
  br i1 %i.hh, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hi = icmp sgt i32 %i.hg, 127
  br i1 %i.hi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hj = trunc nsw i32 %i.hg to i8
  %i.hk = xor i8 %i.hj, -128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.hl = phi i8 [ 0, %bb.g ], [ %i.hk, %bb.i ], [ -1, %bb.h ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 2 uses
  store i8 %i.hl, ptr %i.ff, align 1
  %indvars.iv.next1615 = add nuw nsw i64 %indvars.iv1614, 1 ; 2 uses
  %exitcond1618.not = icmp eq i64 %indvars.iv.next1615, %wide.trip.count1617
  br i1 %exitcond1618.not, label %._crit_edge1509, label %scalar.ph1991, !llvm.loop !19

._crit_edge1509:                                  ; preds = %bb.j, %middle.block2022, %.preheader1439
  %.lcssa1506 = phi ptr [ %.lcssa150615161518, %.preheader1439 ], [ %i.dg, %middle.block2022 ], [ %i.hm, %bb.j ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa15141519, %.preheader1439 ], [ %i.df, %middle.block2022 ], [ %i.hb, %bb.j ] ; 3 uses
  %.11331.lcssa.shrunk = phi i32 [ 0, %.preheader1439 ], [ %i.cq, %middle.block2022 ], [ %i.cq, %bb.j ]
  br i1 %.not1411, label %bb.r, label %bb.k

bb.k:                                             ; preds = %._crit_edge1509
  %.11331.lcssa = zext nneg i32 %.11331.lcssa.shrunk to i64 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %.11331.lcssa
  %i.ho = load i32, ptr %i.hn, align 4            ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %.11331.lcssa
  %i.hq = load i32, ptr %i.hp, align 4            ; 3 uses
  %i.hr = and i32 %i.ho, 16711680
  %i.hs = and i32 %i.hq, 16711680
  %i.ht = add nuw nsw i32 %i.hs, %i.hr
  %i.hu = lshr i32 %i.ht, 17
  %i.hv = and i32 %i.ho, 65280
end_hunk_0
begin_hunk_1_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.mb = and i32 %i.ly, 16711680
  %i.mc = and i32 %i.ma, 16711680
  %i.md = add nuw nsw i32 %i.mc, %i.mb
  %i.me = lshr i32 %i.md, 17
  %i.mf = and i32 %i.ly, 65280
  %i.mg = and i32 %i.ma, 65280
  %i.mh = add nuw nsw i32 %i.mg, %i.mf
  %i.mi = lshr i32 %i.mh, 9
  %i.mj = and i32 %i.ly, 255
  %i.mk = and i32 %i.ma, 255
  %i.ml = add nuw nsw i32 %i.mk, %i.mj
  %i.mm = lshr i32 %i.ml, 1
  %i.mn = uitofp nneg i32 %i.me to float          ; 2 uses
  %i.mo = uitofp nneg i32 %i.mi to float          ; 2 uses
  %i.mp = fmul float %i.jr, %i.mo
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.mn, float %i.mp)
  %i.mr = uitofp nneg i32 %i.mm to float          ; 2 uses
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.mr, float %i.mq)
  %i.mt = fadd float %i.ms, 5.000000e-01
  %i.mu = fptosi float %i.mt to i32               ; 3 uses
  %i.mv = icmp slt i32 %i.mu, -128
  br i1 %i.mv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %scalar.ph2072
  %i.mw = icmp sgt i32 %i.mu, 127
  br i1 %i.mw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mx = trunc nsw i32 %i.mu to i8
  %i.my = xor i8 %i.mx, -128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %scalar.ph2072
  %i.mz = phi i8 [ 0, %scalar.ph2072 ], [ %i.my, %bb.t ], [ -1, %bb.s ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 2 uses
  store ptr %i.na, ptr %i.b, align 8
  store i8 %i.mz, ptr %i.lv, align 1
  %i.nb = fmul float %i.jx, %i.mo
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.mn, float %i.nb)
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.mr, float %i.nc)
  %i.ne = fadd float %i.nd, 5.000000e-01
  %i.nf = fptosi float %i.ne to i32               ; 3 uses
  %i.ng = icmp slt i32 %i.nf, -128
  br i1 %i.ng, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nh = icmp sgt i32 %i.nf, 127
  br i1 %i.nh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ni = trunc nsw i32 %i.nf to i8
  %i.nj = xor i8 %i.ni, -128
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.nk = phi i8 [ 0, %bb.u ], [ %i.nj, %bb.w ], [ -1, %bb.v ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lw, i64 1 ; 2 uses
  store ptr %i.nl, ptr %i.c, align 8
  store i8 %i.nk, ptr %i.lw, align 1
  %indvars.iv.next1621 = add nuw nsw i64 %indvars.iv1620, 1 ; 2 uses
  %exitcond1624.not = icmp eq i64 %indvars.iv.next1621, %wide.trip.count1623
  br i1 %exitcond1624.not, label %._crit_edge1531.loopexit, label %scalar.ph2072, !llvm.loop !28

._crit_edge1531.loopexit:                         ; preds = %bb.x, %middle.block2142
  %i.nm = shl nuw nsw i32 %i.i, 1
  %i.nn = zext nneg i32 %i.nm to i64
  br label %._crit_edge1531

._crit_edge1531:                                  ; preds = %._crit_edge1531.loopexit, %.preheader1438
  %.21332.lcssa = phi i64 [ 0, %.preheader1438 ], [ %i.nn, %._crit_edge1531.loopexit ]
  %.not1410 = icmp eq i32 %i.j, 0
  br i1 %.not1410, label %._crit_edge1531._crit_edge, label %bb.y

bb.y:                                             ; preds = %._crit_edge1531
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.11320.lcssa, i64 %.21332.lcssa
  %i.np = load i32, ptr %i.no, align 4            ; 3 uses
  %i.nq = lshr i32 %i.np, 16
  %i.nr = and i32 %i.nq, 255
  %i.ns = lshr i32 %i.np, 8
  %i.nt = and i32 %i.ns, 255
  %i.nu = and i32 %i.np, 255
  %i.nv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.nw = load float, ptr %i.nv, align 8
  %i.nx = uitofp nneg i32 %i.nr to float          ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = uitofp nneg i32 %i.nt to float          ; 2 uses
  %i.ob = fmul float %i.nz, %i.oa
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.nx, float %i.ob)
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oe = load float, ptr %i.od, align 8
  %i.of = uitofp nneg i32 %i.nu to float          ; 2 uses
  %i.og = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.of, float %i.oc)
  %i.oh = fadd float %i.og, 5.000000e-01
  %i.oi = fptosi float %i.oh to i32               ; 3 uses
  %i.oj = icmp slt i32 %i.oi, -128
  br i1 %i.oj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ok = icmp sgt i32 %i.oi, 127
  br i1 %i.ok, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ol = trunc nsw i32 %i.oi to i8
  %i.om = xor i8 %i.ol, -128
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.on = phi i8 [ 0, %bb.y ], [ %i.om, %bb.aa ], [ -1, %bb.z ]
  %i.oo = load ptr, ptr %i.b, align 8
  store i8 %i.on, ptr %i.oo, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.oq = load float, ptr %i.op, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.os = load float, ptr %i.or, align 8
  %i.ot = fmul float %i.os, %i.oa
  %i.ou = tail call float @llvm.fmuladd.f32(float %i.oq, float %i.nx, float %i.ot)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ow = load float, ptr %i.ov, align 4
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ow, float %i.of, float %i.ou)
  %i.oy = fadd float %i.ox, 5.000000e-01
  %i.oz = fptosi float %i.oy to i32               ; 3 uses
  %i.pa = icmp slt i32 %i.oz, -128
  br i1 %i.pa, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pb = icmp sgt i32 %i.oz, 127
  br i1 %i.pb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pc = trunc nsw i32 %i.oz to i8
  %i.pd = xor i8 %i.pc, -128
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.pe = phi i8 [ 0, %bb.ab ], [ %i.pd, %bb.ad ], [ -1, %bb.ac ]
  %i.pf = load ptr, ptr %i.c, align 8
  store i8 %i.pe, ptr %i.pf, align 1
  br label %._crit_edge1531._crit_edge

bb.af:                                            ; preds = %._crit_edge1484
  %i.pg = icmp sgt i32 %1, 1
  br i1 %i.pg, label %.preheader1441.lr.ph, label %._crit_edge1496

.preheader1441.lr.ph:                             ; preds = %bb.af
  %i.ph = load i32, ptr %i.e, align 4
  %i.pi = add nsw i32 %0, 1
  %.neg1403 = sdiv i32 %i.pi, -2
  %.neg1404 = shl nsw i32 %.neg1403, 1
  %i.pj = add i32 %i.ph, %.neg1404
  %i.pk = icmp sgt i32 %0, 1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1407 = icmp eq i32 %i.j, 0
  %i.pr = zext i32 %i.pj to i64
  %i.ps = sext i32 %i.f to i64                    ; 3 uses
  %wide.trip.count1606 = zext i32 %i.i to i64     ; 5 uses
  %i.pt = shl nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.pu = shl nuw nsw i64 %wide.trip.count1606, 1
  %i.pv = add nsw i32 %i.g, -1
  %i.pw = zext i32 %i.pv to i64
  %i.px = mul nsw i64 %i.ps, %i.pw                ; 2 uses
  %i.py = shl nuw nsw i64 %wide.trip.count1606, 3 ; 2 uses
  %i.pz = getelementptr i8, ptr %2, i64 %.pre-phi
  %i.qa = getelementptr i8, ptr %i.pz, i64 %i.px
  %scevgep1876 = getelementptr i8, ptr %i.qa, i64 %i.py
  %i.qb = getelementptr i8, ptr %2, i64 %i.px
  %scevgep1877 = getelementptr i8, ptr %i.qb, i64 %i.py
  %min.iters.check1887 = icmp ult i32 %0, 8
  %stride.check1885 = icmp slt i32 %i.f, 0
  %n.vec1889 = and i64 %wide.trip.count1606, 1073741820 ; 4 uses
  %i.qc = shl nuw nsw i64 %n.vec1889, 1
  %cmp.n1918 = icmp eq i64 %n.vec1889, %wide.trip.count1606
  br label %.preheader1441

.preheader1441:                                   ; preds = %.preheader1441.lr.ph, %bb.at
  %.013081495 = phi ptr [ %i.r, %.preheader1441.lr.ph ], [ %i.wk, %bb.at ] ; 8 uses
  %.113171494 = phi ptr [ %i.cc, %.preheader1441.lr.ph ], [ %i.wm, %bb.at ] ; 5 uses
  %.213211493 = phi ptr [ %2, %.preheader1441.lr.ph ], [ %i.wl, %bb.at ] ; 5 uses
  %.213251492 = phi i32 [ 0, %.preheader1441.lr.ph ], [ %i.wn, %bb.at ]
  br i1 %i.pk, label %.lr.ph1488, label %._crit_edge1489

.lr.ph1488:                                       ; preds = %.preheader1441
  %i.qd = load float, ptr %i.pl, align 8          ; 2 uses
  %i.qe = load float, ptr %i.pm, align 4          ; 2 uses
  %i.qf = load float, ptr %i.pn, align 8          ; 2 uses
  %i.qg = load float, ptr %i.po, align 4          ; 2 uses
  %i.qh = load float, ptr %i.pp, align 8          ; 2 uses
  %i.qi = load float, ptr %i.pq, align 4          ; 2 uses
  br i1 %min.iters.check1887, label %scalar.ph1886.preheader, label %vector.memcheck1874

vector.memcheck1874:                              ; preds = %.lr.ph1488
  %scevgep1875 = getelementptr i8, ptr %.013081495, i64 %i.pu ; 2 uses
  %bound01878 = icmp ult ptr %.013081495, %scevgep1876
  %bound11879 = icmp ult ptr %i.cc, %scevgep1875
  %found.conflict1880 = and i1 %bound01878, %bound11879
  %8 = or i1 %found.conflict1880, %stride.check1885
  %bound01882 = icmp ult ptr %.013081495, %scevgep1877
  %bound11883 = icmp ult ptr %2, %scevgep1875
  %found.conflict1884 = and i1 %bound01882, %bound11883
  %conflict.rdx = or i1 %8, %found.conflict1884
  br i1 %conflict.rdx, label %scalar.ph1886.preheader, label %vector.ph1888

vector.ph1888:                                    ; preds = %vector.memcheck1874
  %i.qj = getelementptr i8, ptr %.013081495, i64 %i.qc ; 2 uses
  %broadcast.splatinsert1890 = insertelement <4 x float> poison, float %i.qd, i64 0
  %broadcast.splat1891 = shufflevector <4 x float> %broadcast.splatinsert1890, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1892 = insertelement <4 x float> poison, float %i.qe, i64 0
  %broadcast.splat1893 = shufflevector <4 x float> %broadcast.splatinsert1892, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1894 = insertelement <4 x float> poison, float %i.qf, i64 0
  %broadcast.splat1895 = shufflevector <4 x float> %broadcast.splatinsert1894, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1896 = insertelement <4 x float> poison, float %i.qg, i64 0
  %broadcast.splat1897 = shufflevector <4 x float> %broadcast.splatinsert1896, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1898 = insertelement <4 x float> poison, float %i.qh, i64 0
  %broadcast.splat1899 = shufflevector <4 x float> %broadcast.splatinsert1898, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1900 = insertelement <4 x float> poison, float %i.qi, i64 0
  %broadcast.splat1901 = shufflevector <4 x float> %broadcast.splatinsert1900, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1902

vector.body1902:                                  ; preds = %vector.body1902, %vector.ph1888
  %index1903 = phi i64 [ 0, %vector.ph1888 ], [ %index.next1916, %vector.body1902 ] ; 3 uses
  %i.qk = shl i64 %index1903, 1
  %next.gep1904 = getelementptr i8, ptr %.013081495, i64 %i.qk
  %i.ql = shl nuw nsw i64 %index1903, 1           ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.ql
  %wide.vec1905 = load <8 x i32>, ptr %i.qm, align 4, !alias.scope !87 ; 2 uses
  %strided.vec1906.a = shufflevector <8 x i32> %wide.vec1905, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1907 = shufflevector <8 x i32> %wide.vec1905, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.ql
  %wide.vec1908 = load <8 x i32>, ptr %i.qn, align 4, !alias.scope !88 ; 2 uses
  %strided.vec1909.a = shufflevector <8 x i32> %wide.vec1908, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1910 = shufflevector <8 x i32> %wide.vec1908, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qo = and <4 x i32> %strided.vec1906.a, splat (i32 16711680)
  %i.qp = and <4 x i32> %strided.vec1907, splat (i32 16711680)
  %i.qq = add nuw nsw <4 x i32> %i.qp, %i.qo
  %i.qr = and <4 x i32> %strided.vec1909.a, splat (i32 16711680)
  %i.qs = add nuw nsw <4 x i32> %i.qq, %i.qr
  %i.qt = and <4 x i32> %strided.vec1910, splat (i32 16711680)
  %i.qu = add nuw nsw <4 x i32> %i.qs, %i.qt
  %i.qv = lshr <4 x i32> %i.qu, splat (i32 18)
  %i.qw = and <4 x i32> %strided.vec1906.a, splat (i32 65280)
  %i.qx = and <4 x i32> %strided.vec1907, splat (i32 65280)
  %i.qy = add nuw nsw <4 x i32> %i.qx, %i.qw
  %i.qz = and <4 x i32> %strided.vec1909.a, splat (i32 65280)
  %i.ra = add nuw nsw <4 x i32> %i.qy, %i.qz
  %i.rb = and <4 x i32> %strided.vec1910, splat (i32 65280)
  %i.rc = add nuw nsw <4 x i32> %i.ra, %i.rb
  %i.rd = lshr <4 x i32> %i.rc, splat (i32 10)
  %i.re = and <4 x i32> %strided.vec1906.a, splat (i32 255)
  %i.rf = and <4 x i32> %strided.vec1907, splat (i32 255)
  %i.rg = add nuw nsw <4 x i32> %i.rf, %i.re
  %i.rh = and <4 x i32> %strided.vec1909.a, splat (i32 255)
  %i.ri = add nuw nsw <4 x i32> %i.rg, %i.rh
  %i.rj = and <4 x i32> %strided.vec1910, splat (i32 255)
  %i.rk = add nuw nsw <4 x i32> %i.ri, %i.rj
  %i.rl = lshr <4 x i32> %i.rk, splat (i32 2)
  %i.rm = uitofp nneg <4 x i32> %i.qv to <4 x float> ; 2 uses
  %i.rn = uitofp nneg <4 x i32> %i.rd to <4 x float> ; 2 uses
  %i.ro = fmul <4 x float> %broadcast.splat1893, %i.rn
  %i.rp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1891, <4 x float> %i.rm, <4 x float> %i.ro)
  %i.rq = uitofp nneg <4 x i32> %i.rl to <4 x float> ; 2 uses
  %i.rr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1895, <4 x float> %i.rq, <4 x float> %i.rp)
  %i.rs = fadd <4 x float> %i.rr, splat (float 5.000000e-01)
  %i.rt = fptosi <4 x float> %i.rs to <4 x i32>   ; 3 uses
  %i.ru = fmul <4 x float> %broadcast.splat1899, %i.rn
  %i.rv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1897, <4 x float> %i.rm, <4 x float> %i.ru)
  %i.rw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1901, <4 x float> %i.rq, <4 x float> %i.rv)
  %i.rx = fadd <4 x float> %i.rw, splat (float 5.000000e-01)
  %i.ry = fptosi <4 x float> %i.rx to <4 x i32>   ; 3 uses
  %i.rz = shufflevector <4 x i32> %i.rt, <4 x i32> %i.ry, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sa = icmp sgt <8 x i32> %i.rz, splat (i32 -129)
  %i.sb = shufflevector <4 x i32> %i.rt, <4 x i32> %i.ry, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sc = icmp sgt <8 x i32> %i.sb, splat (i32 127)
  %i.sd = shufflevector <4 x i32> %i.rt, <4 x i32> %i.ry, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.se = trunc <8 x i32> %i.sd to <8 x i8>
  %i.sf = xor <8 x i8> %i.se, splat (i8 -128)
  %i.sg = select <8 x i1> %i.sc, <8 x i8> splat (i8 -1), <8 x i8> %i.sf
  %interleaved.vec1915 = select <8 x i1> %i.sa, <8 x i8> %i.sg, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec1915, ptr %next.gep1904, align 1, !alias.scope !89, !noalias !90
  %index.next1916 = add nuw i64 %index1903, 4     ; 2 uses
  %i.sh = icmp eq i64 %index.next1916, %n.vec1889
  br i1 %i.sh, label %middle.block1917, label %vector.body1902, !llvm.loop !33

middle.block1917:                                 ; preds = %vector.body1902
  br i1 %cmp.n1918, label %._crit_edge1489, label %scalar.ph1886.preheader

scalar.ph1886.preheader:                          ; preds = %vector.memcheck1874, %.lr.ph1488, %middle.block1917
  %indvars.iv1603.ph = phi i64 [ 0, %vector.memcheck1874 ], [ 0, %.lr.ph1488 ], [ %n.vec1889, %middle.block1917 ]
  %.113091487.ph = phi ptr [ %.013081495, %vector.memcheck1874 ], [ %.013081495, %.lr.ph1488 ], [ %i.qj, %middle.block1917 ]
  br label %scalar.ph1886

scalar.ph1886:                                    ; preds = %scalar.ph1886.preheader, %bb.al
  %indvars.iv1603 = phi i64 [ %indvars.iv.next1604, %bb.al ], [ %indvars.iv1603.ph, %scalar.ph1886.preheader ] ; 2 uses
  %.113091487 = phi ptr [ %i.uo, %bb.al ], [ %.113091487.ph, %scalar.ph1886.preheader ] ; 3 uses
  %i.si = shl nuw nsw i64 %indvars.iv1603, 1      ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4            ; 3 uses
  %i.sl = or disjoint i64 %i.si, 1                ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4            ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.si
  %i.sp = load i32, ptr %i.so, align 4            ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.sl
  %i.sr = load i32, ptr %i.sq, align 4            ; 3 uses
  %i.ss = and i32 %i.sk, 16711680
  %i.st = and i32 %i.sn, 16711680
  %i.su = add nuw nsw i32 %i.st, %i.ss
  %i.sv = and i32 %i.sp, 16711680
  %i.sw = add nuw nsw i32 %i.su, %i.sv
  %i.sx = and i32 %i.sr, 16711680
  %i.sy = add nuw nsw i32 %i.sw, %i.sx
  %i.sz = lshr i32 %i.sy, 18
  %i.ta = and i32 %i.sk, 65280
  %i.tb = and i32 %i.sn, 65280
  %i.tc = add nuw nsw i32 %i.tb, %i.ta
  %i.td = and i32 %i.sp, 65280
  %i.te = add nuw nsw i32 %i.tc, %i.td
  %i.tf = and i32 %i.sr, 65280
  %i.tg = add nuw nsw i32 %i.te, %i.tf
  %i.th = lshr i32 %i.tg, 10
  %i.ti = and i32 %i.sk, 255
  %i.tj = and i32 %i.sn, 255
  %i.tk = add nuw nsw i32 %i.tj, %i.ti
  %i.tl = and i32 %i.sp, 255
  %i.tm = add nuw nsw i32 %i.tk, %i.tl
  %i.tn = and i32 %i.sr, 255
  %i.to = add nuw nsw i32 %i.tm, %i.tn
  %i.tp = lshr i32 %i.to, 2
  %i.tq = uitofp nneg i32 %i.sz to float          ; 2 uses
  %i.tr = uitofp nneg i32 %i.th to float          ; 2 uses
  %i.ts = fmul float %i.qe, %i.tr
  %i.tt = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.tq, float %i.ts)
  %i.tu = uitofp nneg i32 %i.tp to float          ; 2 uses
  %i.tv = tail call float @llvm.fmuladd.f32(float %i.qf, float %i.tu, float %i.tt)
  %i.tw = fadd float %i.tv, 5.000000e-01
  %i.tx = fptosi float %i.tw to i32               ; 3 uses
  %i.ty = icmp slt i32 %i.tx, -128
  br i1 %i.ty, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %scalar.ph1886
  %i.tz = icmp sgt i32 %i.tx, 127
  br i1 %i.tz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ua = trunc nsw i32 %i.tx to i8
  %i.ub = xor i8 %i.ua, -128
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %scalar.ph1886
  %i.uc = phi i8 [ 0, %scalar.ph1886 ], [ %i.ub, %bb.ah ], [ -1, %bb.ag ]
  %i.ud = getelementptr inbounds nuw i8, ptr %.113091487, i64 1
  store i8 %i.uc, ptr %.113091487, align 1
  %i.ue = fmul float %i.qh, %i.tr
  %i.uf = tail call float @llvm.fmuladd.f32(float %i.qg, float %i.tq, float %i.ue)
  %i.ug = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.tu, float %i.uf)
  %i.uh = fadd float %i.ug, 5.000000e-01
  %i.ui = fptosi float %i.uh to i32               ; 3 uses
  %i.uj = icmp slt i32 %i.ui, -128
  br i1 %i.uj, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.uk = icmp sgt i32 %i.ui, 127
  br i1 %i.uk, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ul = trunc nsw i32 %i.ui to i8
  %i.um = xor i8 %i.ul, -128
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.un = phi i8 [ 0, %bb.ai ], [ %i.um, %bb.ak ], [ -1, %bb.aj ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.113091487, i64 2 ; 2 uses
  store i8 %i.un, ptr %i.ud, align 1
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %wide.trip.count1606
  br i1 %exitcond1607.not, label %._crit_edge1489, label %scalar.ph1886, !llvm.loop !34

._crit_edge1489:                                  ; preds = %bb.al, %middle.block1917, %.preheader1441
  %.31333.lcssa.shrunk = phi i32 [ 0, %.preheader1441 ], [ %i.pt, %middle.block1917 ], [ %i.pt, %bb.al ]
  %.11309.lcssa = phi ptr [ %.013081495, %.preheader1441 ], [ %i.qj, %middle.block1917 ], [ %i.uo, %bb.al ] ; 4 uses
  br i1 %.not1407, label %bb.at, label %bb.am

bb.am:                                            ; preds = %._crit_edge1489
  %.31333.lcssa = zext nneg i32 %.31333.lcssa.shrunk to i64 ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %.31333.lcssa
  %i.uq = load i32, ptr %i.up, align 4            ; 3 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %.31333.lcssa
  %i.us = load i32, ptr %i.ur, align 4            ; 3 uses
  %i.ut = and i32 %i.uq, 16711680
  %i.uu = and i32 %i.us, 16711680
  %i.uv = add nuw nsw i32 %i.uu, %i.ut
  %i.uw = lshr i32 %i.uv, 17
  %i.ux = and i32 %i.uq, 65280
  %i.uy = and i32 %i.us, 65280
  %i.uz = add nuw nsw i32 %i.uy, %i.ux
  %i.va = lshr i32 %i.uz, 9
  %i.vb = and i32 %i.uq, 255
  %i.vc = and i32 %i.us, 255
  %i.vd = add nuw nsw i32 %i.vc, %i.vb
  %i.ve = lshr i32 %i.vd, 1
  %i.vf = load float, ptr %i.pl, align 8
end_hunk_1
begin_hunk_2_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.yv = load i32, ptr %i.yu, align 4            ; 3 uses
  %i.yw = and i32 %i.yt, 16711680
  %i.yx = and i32 %i.yv, 16711680
  %i.yy = add nuw nsw i32 %i.yx, %i.yw
  %i.yz = lshr i32 %i.yy, 17
  %i.za = and i32 %i.yt, 65280
  %i.zb = and i32 %i.yv, 65280
  %i.zc = add nuw nsw i32 %i.zb, %i.za
  %i.zd = lshr i32 %i.zc, 9
  %i.ze = and i32 %i.yt, 255
  %i.zf = and i32 %i.yv, 255
  %i.zg = add nuw nsw i32 %i.zf, %i.ze
  %i.zh = lshr i32 %i.zg, 1
  %i.zi = uitofp nneg i32 %i.yz to float          ; 2 uses
  %i.zj = uitofp nneg i32 %i.zd to float          ; 2 uses
  %i.zk = fmul float %i.ws, %i.zj
  %i.zl = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.zi, float %i.zk)
  %i.zm = uitofp nneg i32 %i.zh to float          ; 2 uses
  %i.zn = tail call float @llvm.fmuladd.f32(float %i.wu, float %i.zm, float %i.zl)
  %i.zo = fadd float %i.zn, 5.000000e-01
  %i.zp = fptosi float %i.zo to i32               ; 3 uses
  %i.zq = icmp slt i32 %i.zp, -128
  br i1 %i.zq, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %scalar.ph1927
  %i.zr = icmp sgt i32 %i.zp, 127
  br i1 %i.zr, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zs = trunc nsw i32 %i.zp to i8
  %i.zt = xor i8 %i.zs, -128
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %scalar.ph1927
  %i.zu = phi i8 [ 0, %scalar.ph1927 ], [ %i.zt, %bb.av ], [ -1, %bb.au ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.313111500, i64 1
  store i8 %i.zu, ptr %.313111500, align 1
  %i.zw = fmul float %i.wy, %i.zj
  %i.zx = tail call float @llvm.fmuladd.f32(float %i.ww, float %i.zi, float %i.zw)
  %i.zy = tail call float @llvm.fmuladd.f32(float %i.xa, float %i.zm, float %i.zx)
  %i.zz = fadd float %i.zy, 5.000000e-01
  %i.aaa = fptosi float %i.zz to i32              ; 3 uses
  %i.aab = icmp slt i32 %i.aaa, -128
  br i1 %i.aab, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aac = icmp sgt i32 %i.aaa, 127
  br i1 %i.aac, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aad = trunc nsw i32 %i.aaa to i8
  %i.aae = xor i8 %i.aad, -128
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.aaf = phi i8 [ 0, %bb.aw ], [ %i.aae, %bb.ay ], [ -1, %bb.ax ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.313111500, i64 2 ; 2 uses
  store i8 %i.aaf, ptr %i.zv, align 1
  %indvars.iv.next1610 = add nuw nsw i64 %indvars.iv1609, 1 ; 2 uses
  %exitcond1613.not = icmp eq i64 %indvars.iv.next1610, %wide.trip.count1612
  br i1 %exitcond1613.not, label %._crit_edge1502.loopexit, label %scalar.ph1927, !llvm.loop !40

._crit_edge1502.loopexit:                         ; preds = %bb.az, %middle.block1959
  %.lcssa1721 = phi ptr [ %i.xg, %middle.block1959 ], [ %i.aag, %bb.az ]
  %i.aah = shl nuw nsw i32 %i.i, 1
  %i.aai = zext nneg i32 %i.aah to i64
  br label %._crit_edge1502

._crit_edge1502:                                  ; preds = %._crit_edge1502.loopexit, %.preheader1440
  %.41334.lcssa = phi i64 [ 0, %.preheader1440 ], [ %i.aai, %._crit_edge1502.loopexit ]
  %.31311.lcssa = phi ptr [ %.01308.lcssa, %.preheader1440 ], [ %.lcssa1721, %._crit_edge1502.loopexit ] ; 2 uses
  %.not1406 = icmp eq i32 %i.j, 0
  br i1 %.not1406, label %._crit_edge1531._crit_edge, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1502
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.21321.lcssa, i64 %.41334.lcssa
  %i.aak = load i32, ptr %i.aaj, align 4          ; 3 uses
  %i.aal = lshr i32 %i.aak, 16
  %i.aam = and i32 %i.aal, 255
  %i.aan = lshr i32 %i.aak, 8
  %i.aao = and i32 %i.aan, 255
  %i.aap = and i32 %i.aak, 255
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aar = load float, ptr %i.aaq, align 8
  %i.aas = uitofp nneg i32 %i.aam to float        ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aau = load float, ptr %i.aat, align 4
  %i.aav = uitofp nneg i32 %i.aao to float        ; 2 uses
  %i.aaw = fmul float %i.aau, %i.aav
  %i.aax = tail call float @llvm.fmuladd.f32(float %i.aar, float %i.aas, float %i.aaw)
  %i.aay = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aaz = load float, ptr %i.aay, align 8
  %i.aba = uitofp nneg i32 %i.aap to float        ; 2 uses
  %i.abb = tail call float @llvm.fmuladd.f32(float %i.aaz, float %i.aba, float %i.aax)
  %i.abc = fadd float %i.abb, 5.000000e-01
  %i.abd = fptosi float %i.abc to i32             ; 3 uses
  %i.abe = icmp slt i32 %i.abd, -128
  br i1 %i.abe, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abf = icmp sgt i32 %i.abd, 127
  br i1 %i.abf, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.abg = trunc nsw i32 %i.abd to i8
  %i.abh = xor i8 %i.abg, -128
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.abi = phi i8 [ 0, %bb.ba ], [ %i.abh, %bb.bc ], [ -1, %bb.bb ]
  %i.abj = getelementptr inbounds nuw i8, ptr %.31311.lcssa, i64 1
  store i8 %i.abi, ptr %.31311.lcssa, align 1
  %i.abk = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.abl = load float, ptr %i.abk, align 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.abn = load float, ptr %i.abm, align 8
  %i.abo = fmul float %i.abn, %i.aav
  %i.abp = tail call float @llvm.fmuladd.f32(float %i.abl, float %i.aas, float %i.abo)
  %i.abq = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.abr = load float, ptr %i.abq, align 4
  %i.abs = tail call float @llvm.fmuladd.f32(float %i.abr, float %i.aba, float %i.abp)
  %i.abt = fadd float %i.abs, 5.000000e-01
  %i.abu = fptosi float %i.abt to i32             ; 3 uses
  %i.abv = icmp slt i32 %i.abu, -128
  br i1 %i.abv, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.abw = icmp sgt i32 %i.abu, 127
  br i1 %i.abw, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.abx = trunc nsw i32 %i.abu to i8
  %i.aby = xor i8 %i.abx, -128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.abz = phi i8 [ 0, %bb.bd ], [ %i.aby, %bb.bf ], [ -1, %bb.be ]
  store i8 %i.abz, ptr %i.abj, align 1
  br label %._crit_edge1531._crit_edge

bb.bh:                                            ; preds = %._crit_edge1484
  %i.aca = icmp sgt i32 %1, 1
  br i1 %i.aca, label %.preheader1437.lr.ph, label %._crit_edge1543

.preheader1437.lr.ph:                             ; preds = %bb.bh
  %i.acb = load i32, ptr %i.e, align 4
  %i.acc = add nsw i32 %0, 1
  %.neg = sdiv i32 %i.acc, -2
  %.neg1399 = shl nsw i32 %.neg, 1
  %i.acd = add i32 %i.acb, %.neg1399
  %i.ace = icmp sgt i32 %0, 1
  %i.acf = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not1402 = icmp eq i32 %i.j, 0
  %i.acl = zext i32 %i.acd to i64
  %i.acm = sext i32 %i.f to i64                   ; 3 uses
  %wide.trip.count1628 = zext i32 %i.i to i64     ; 5 uses
  %i.acn = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %i.aco = shl nuw nsw i64 %wide.trip.count1628, 1
  %i.acp = add nsw i32 %i.g, -1
  %i.acq = zext i32 %i.acp to i64
  %i.acr = mul nsw i64 %i.acm, %i.acq             ; 2 uses
  %i.acs = shl nuw nsw i64 %wide.trip.count1628, 3 ; 2 uses
  %i.act = getelementptr i8, ptr %2, i64 %.pre-phi
  %i.acu = getelementptr i8, ptr %i.act, i64 %i.acr
  %scevgep2149 = getelementptr i8, ptr %i.acu, i64 %i.acs
  %i.acv = getelementptr i8, ptr %2, i64 %i.acr
  %scevgep2150 = getelementptr i8, ptr %i.acv, i64 %i.acs
  %min.iters.check2161 = icmp ult i32 %0, 8
  %stride.check2158 = icmp slt i32 %i.f, 0
  %n.vec2163 = and i64 %wide.trip.count1628, 1073741820 ; 4 uses
  %i.acw = shl nuw nsw i64 %n.vec2163, 1
  %cmp.n2192 = icmp eq i64 %n.vec2163, %wide.trip.count1628
  br label %.preheader1437

.preheader1437:                                   ; preds = %.preheader1437.lr.ph, %bb.bv
  %.413121542 = phi ptr [ %i.r, %.preheader1437.lr.ph ], [ %i.aje, %bb.bv ] ; 8 uses
  %.213181541 = phi ptr [ %i.cc, %.preheader1437.lr.ph ], [ %i.ajg, %bb.bv ] ; 5 uses
  %.313221540 = phi ptr [ %2, %.preheader1437.lr.ph ], [ %i.ajf, %bb.bv ] ; 5 uses
  %.313261539 = phi i32 [ 0, %.preheader1437.lr.ph ], [ %i.ajh, %bb.bv ]
  br i1 %i.ace, label %.lr.ph1535, label %._crit_edge1536

.lr.ph1535:                                       ; preds = %.preheader1437
  %i.acx = load float, ptr %i.acf, align 4        ; 2 uses
  %i.acy = load float, ptr %i.acg, align 8        ; 2 uses
  %i.acz = load float, ptr %i.ach, align 4        ; 2 uses
  %i.ada = load float, ptr %i.aci, align 8        ; 2 uses
  %i.adb = load float, ptr %i.acj, align 4        ; 2 uses
  %i.adc = load float, ptr %i.ack, align 8        ; 2 uses
  br i1 %min.iters.check2161, label %scalar.ph2160.preheader, label %vector.memcheck2147

vector.memcheck2147:                              ; preds = %.lr.ph1535
  %scevgep2148 = getelementptr i8, ptr %.413121542, i64 %i.aco ; 2 uses
  %bound02151.a = icmp ult ptr %.413121542, %scevgep2149
  %bound12152.a = icmp ult ptr %i.cc, %scevgep2148
  %found.conflict2153.a = and i1 %bound02151.a, %bound12152.a
  %9 = or i1 %found.conflict2153.a, %stride.check2158
  %bound02155 = icmp ult ptr %.413121542, %scevgep2150
  %bound12156 = icmp ult ptr %2, %scevgep2148
  %found.conflict2157 = and i1 %bound02155, %bound12156
  %conflict.rdx2159 = or i1 %9, %found.conflict2157
  br i1 %conflict.rdx2159, label %scalar.ph2160.preheader, label %vector.ph2162

vector.ph2162:                                    ; preds = %vector.memcheck2147
  %i.add = getelementptr i8, ptr %.413121542, i64 %i.acw ; 2 uses
  %broadcast.splatinsert2164 = insertelement <4 x float> poison, float %i.acx, i64 0
  %broadcast.splat2165 = shufflevector <4 x float> %broadcast.splatinsert2164, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2166 = insertelement <4 x float> poison, float %i.acy, i64 0
  %broadcast.splat2167 = shufflevector <4 x float> %broadcast.splatinsert2166, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2168 = insertelement <4 x float> poison, float %i.acz, i64 0
  %broadcast.splat2169 = shufflevector <4 x float> %broadcast.splatinsert2168, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2170 = insertelement <4 x float> poison, float %i.ada, i64 0
  %broadcast.splat2171 = shufflevector <4 x float> %broadcast.splatinsert2170, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2172 = insertelement <4 x float> poison, float %i.adb, i64 0
  %broadcast.splat2173 = shufflevector <4 x float> %broadcast.splatinsert2172, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2174 = insertelement <4 x float> poison, float %i.adc, i64 0
  %broadcast.splat2175 = shufflevector <4 x float> %broadcast.splatinsert2174, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2176

vector.body2176:                                  ; preds = %vector.body2176, %vector.ph2162
  %index2177 = phi i64 [ 0, %vector.ph2162 ], [ %index.next2190, %vector.body2176 ] ; 3 uses
  %i.ade = shl i64 %index2177, 1
  %next.gep2178 = getelementptr i8, ptr %.413121542, i64 %i.ade
  %i.adf = shl nuw nsw i64 %index2177, 1          ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.adf
  %wide.vec2179 = load <8 x i32>, ptr %i.adg, align 4, !alias.scope !93 ; 2 uses
  %strided.vec2180 = shufflevector <8 x i32> %wide.vec2179, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2181 = shufflevector <8 x i32> %wide.vec2179, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.adf
  %wide.vec2182 = load <8 x i32>, ptr %i.adh, align 4, !alias.scope !94 ; 2 uses
  %strided.vec2183 = shufflevector <8 x i32> %wide.vec2182, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2184 = shufflevector <8 x i32> %wide.vec2182, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.adi = and <4 x i32> %strided.vec2180, splat (i32 16711680)
  %i.adj = and <4 x i32> %strided.vec2181, splat (i32 16711680)
  %i.adk = add nuw nsw <4 x i32> %i.adj, %i.adi
  %i.adl = and <4 x i32> %strided.vec2183, splat (i32 16711680)
  %i.adm = add nuw nsw <4 x i32> %i.adk, %i.adl
  %i.adn = and <4 x i32> %strided.vec2184, splat (i32 16711680)
  %i.ado = add nuw nsw <4 x i32> %i.adm, %i.adn
  %i.adp = lshr <4 x i32> %i.ado, splat (i32 18)
  %i.adq = and <4 x i32> %strided.vec2180, splat (i32 65280)
  %i.adr = and <4 x i32> %strided.vec2181, splat (i32 65280)
  %i.ads = add nuw nsw <4 x i32> %i.adr, %i.adq
  %i.adt = and <4 x i32> %strided.vec2183, splat (i32 65280)
  %i.adu = add nuw nsw <4 x i32> %i.ads, %i.adt
  %i.adv = and <4 x i32> %strided.vec2184, splat (i32 65280)
  %i.adw = add nuw nsw <4 x i32> %i.adu, %i.adv
  %i.adx = lshr <4 x i32> %i.adw, splat (i32 10)
  %i.ady = and <4 x i32> %strided.vec2180, splat (i32 255)
  %i.adz = and <4 x i32> %strided.vec2181, splat (i32 255)
  %i.aea = add nuw nsw <4 x i32> %i.adz, %i.ady
  %i.aeb = and <4 x i32> %strided.vec2183, splat (i32 255)
  %i.aec = add nuw nsw <4 x i32> %i.aea, %i.aeb
  %i.aed = and <4 x i32> %strided.vec2184, splat (i32 255)
  %i.aee = add nuw nsw <4 x i32> %i.aec, %i.aed
  %i.aef = lshr <4 x i32> %i.aee, splat (i32 2)
  %i.aeg = uitofp nneg <4 x i32> %i.adp to <4 x float> ; 2 uses
  %i.aeh = uitofp nneg <4 x i32> %i.adx to <4 x float> ; 2 uses
  %i.aei = fmul <4 x float> %broadcast.splat2167, %i.aeh
  %i.aej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2165, <4 x float> %i.aeg, <4 x float> %i.aei)
  %i.aek = uitofp nneg <4 x i32> %i.aef to <4 x float> ; 2 uses
  %i.ael = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2169, <4 x float> %i.aek, <4 x float> %i.aej)
  %i.aem = fadd <4 x float> %i.ael, splat (float 5.000000e-01)
  %i.aen = fptosi <4 x float> %i.aem to <4 x i32> ; 3 uses
  %i.aeo = fmul <4 x float> %broadcast.splat2173, %i.aeh
  %i.aep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2171, <4 x float> %i.aeg, <4 x float> %i.aeo)
  %i.aeq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2175, <4 x float> %i.aek, <4 x float> %i.aep)
  %i.aer = fadd <4 x float> %i.aeq, splat (float 5.000000e-01)
  %i.aes = fptosi <4 x float> %i.aer to <4 x i32> ; 3 uses
  %i.aet = shufflevector <4 x i32> %i.aen, <4 x i32> %i.aes, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aeu = icmp sgt <8 x i32> %i.aet, splat (i32 -129)
  %i.aev = shufflevector <4 x i32> %i.aen, <4 x i32> %i.aes, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aew = icmp sgt <8 x i32> %i.aev, splat (i32 127)
  %i.aex = shufflevector <4 x i32> %i.aen, <4 x i32> %i.aes, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aey = trunc <8 x i32> %i.aex to <8 x i8>
  %i.aez = xor <8 x i8> %i.aey, splat (i8 -128)
  %i.afa = select <8 x i1> %i.aew, <8 x i8> splat (i8 -1), <8 x i8> %i.aez
  %interleaved.vec2189 = select <8 x i1> %i.aeu, <8 x i8> %i.afa, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec2189, ptr %next.gep2178, align 1, !alias.scope !95, !noalias !96
  %index.next2190 = add nuw i64 %index2177, 4     ; 2 uses
  %i.afb = icmp eq i64 %index.next2190, %n.vec2163
  br i1 %i.afb, label %middle.block2191, label %vector.body2176, !llvm.loop !45

middle.block2191:                                 ; preds = %vector.body2176
  br i1 %cmp.n2192, label %._crit_edge1536, label %scalar.ph2160.preheader

scalar.ph2160.preheader:                          ; preds = %vector.memcheck2147, %.lr.ph1535, %middle.block2191
  %indvars.iv1625.ph = phi i64 [ 0, %vector.memcheck2147 ], [ 0, %.lr.ph1535 ], [ %n.vec2163, %middle.block2191 ]
  %.513131534.ph = phi ptr [ %.413121542, %vector.memcheck2147 ], [ %.413121542, %.lr.ph1535 ], [ %i.add, %middle.block2191 ]
  br label %scalar.ph2160

scalar.ph2160:                                    ; preds = %scalar.ph2160.preheader, %bb.bn
  %indvars.iv1625 = phi i64 [ %indvars.iv.next1626, %bb.bn ], [ %indvars.iv1625.ph, %scalar.ph2160.preheader ] ; 2 uses
  %.513131534 = phi ptr [ %i.ahi, %bb.bn ], [ %.513131534.ph, %scalar.ph2160.preheader ] ; 3 uses
  %i.afc = shl nuw nsw i64 %indvars.iv1625, 1     ; 3 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.afc
  %i.afe = load i32, ptr %i.afd, align 4          ; 3 uses
  %i.aff = or disjoint i64 %i.afc, 1              ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4          ; 3 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.afc
  %i.afj = load i32, ptr %i.afi, align 4          ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.aff
  %i.afl = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.afm = and i32 %i.afe, 16711680
  %i.afn = and i32 %i.afh, 16711680
  %i.afo = add nuw nsw i32 %i.afn, %i.afm
  %i.afp = and i32 %i.afj, 16711680
  %i.afq = add nuw nsw i32 %i.afo, %i.afp
  %i.afr = and i32 %i.afl, 16711680
  %i.afs = add nuw nsw i32 %i.afq, %i.afr
  %i.aft = lshr i32 %i.afs, 18
  %i.afu = and i32 %i.afe, 65280
  %i.afv = and i32 %i.afh, 65280
  %i.afw = add nuw nsw i32 %i.afv, %i.afu
  %i.afx = and i32 %i.afj, 65280
  %i.afy = add nuw nsw i32 %i.afw, %i.afx
  %i.afz = and i32 %i.afl, 65280
  %i.aga = add nuw nsw i32 %i.afy, %i.afz
  %i.agb = lshr i32 %i.aga, 10
  %i.agc = and i32 %i.afe, 255
  %i.agd = and i32 %i.afh, 255
  %i.age = add nuw nsw i32 %i.agd, %i.agc
  %i.agf = and i32 %i.afj, 255
  %i.agg = add nuw nsw i32 %i.age, %i.agf
  %i.agh = and i32 %i.afl, 255
  %i.agi = add nuw nsw i32 %i.agg, %i.agh
  %i.agj = lshr i32 %i.agi, 2
  %i.agk = uitofp nneg i32 %i.aft to float        ; 2 uses
  %i.agl = uitofp nneg i32 %i.agb to float        ; 2 uses
  %i.agm = fmul float %i.acy, %i.agl
  %i.agn = tail call float @llvm.fmuladd.f32(float %i.acx, float %i.agk, float %i.agm)
  %i.ago = uitofp nneg i32 %i.agj to float        ; 2 uses
  %i.agp = tail call float @llvm.fmuladd.f32(float %i.acz, float %i.ago, float %i.agn)
  %i.agq = fadd float %i.agp, 5.000000e-01
  %i.agr = fptosi float %i.agq to i32             ; 3 uses
  %i.ags = icmp slt i32 %i.agr, -128
  br i1 %i.ags, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %scalar.ph2160
  %i.agt = icmp sgt i32 %i.agr, 127
  br i1 %i.agt, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.agu = trunc nsw i32 %i.agr to i8
  %i.agv = xor i8 %i.agu, -128
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %scalar.ph2160
  %i.agw = phi i8 [ 0, %scalar.ph2160 ], [ %i.agv, %bb.bj ], [ -1, %bb.bi ]
  %i.agx = getelementptr inbounds nuw i8, ptr %.513131534, i64 1
  store i8 %i.agw, ptr %.513131534, align 1
  %i.agy = fmul float %i.adb, %i.agl
  %i.agz = tail call float @llvm.fmuladd.f32(float %i.ada, float %i.agk, float %i.agy)
  %i.aha = tail call float @llvm.fmuladd.f32(float %i.adc, float %i.ago, float %i.agz)
  %i.ahb = fadd float %i.aha, 5.000000e-01
  %i.ahc = fptosi float %i.ahb to i32             ; 3 uses
  %i.ahd = icmp slt i32 %i.ahc, -128
  br i1 %i.ahd, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ahe = icmp sgt i32 %i.ahc, 127
  br i1 %i.ahe, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ahf = trunc nsw i32 %i.ahc to i8
  %i.ahg = xor i8 %i.ahf, -128
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ahh = phi i8 [ 0, %bb.bk ], [ %i.ahg, %bb.bm ], [ -1, %bb.bl ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %.513131534, i64 2 ; 2 uses
  store i8 %i.ahh, ptr %i.agx, align 1
  %indvars.iv.next1626 = add nuw nsw i64 %indvars.iv1625, 1 ; 2 uses
  %exitcond1629.not = icmp eq i64 %indvars.iv.next1626, %wide.trip.count1628
  br i1 %exitcond1629.not, label %._crit_edge1536, label %scalar.ph2160, !llvm.loop !46

._crit_edge1536:                                  ; preds = %bb.bn, %middle.block2191, %.preheader1437
  %.51335.lcssa.shrunk = phi i32 [ 0, %.preheader1437 ], [ %i.acn, %middle.block2191 ], [ %i.acn, %bb.bn ]
  %.51313.lcssa = phi ptr [ %.413121542, %.preheader1437 ], [ %i.add, %middle.block2191 ], [ %i.ahi, %bb.bn ] ; 4 uses
  br i1 %.not1402, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1536
  %.51335.lcssa = zext nneg i32 %.51335.lcssa.shrunk to i64 ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %.51335.lcssa
  %i.ahk = load i32, ptr %i.ahj, align 4          ; 3 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %.51335.lcssa
  %i.ahm = load i32, ptr %i.ahl, align 4          ; 3 uses
  %i.ahn = and i32 %i.ahk, 16711680
  %i.aho = and i32 %i.ahm, 16711680
  %i.ahp = add nuw nsw i32 %i.aho, %i.ahn
  %i.ahq = lshr i32 %i.ahp, 17
  %i.ahr = and i32 %i.ahk, 65280
  %i.ahs = and i32 %i.ahm, 65280
  %i.aht = add nuw nsw i32 %i.ahs, %i.ahr
  %i.ahu = lshr i32 %i.aht, 9
  %i.ahv = and i32 %i.ahk, 255
  %i.ahw = and i32 %i.ahm, 255
  %i.ahx = add nuw nsw i32 %i.ahw, %i.ahv
  %i.ahy = lshr i32 %i.ahx, 1
  %i.ahz = load float, ptr %i.acf, align 4
end_hunk_2
begin_hunk_3_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a

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
  %i.ac = shl nuw nsw i64 %wide.trip.count, 1
  %i.ad = add nsw i32 %1, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.u, %i.ae
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2
  %i.ah = getelementptr i8, ptr %2, i64 %i.af
  %scevgep5 = getelementptr i8, ptr %i.ah, i64 %i.ag
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
  %.0160190 = phi i32 [ 0, %.preheader185.lr.ph.split ], [ %i.by, %._crit_edge ]
  %.0162189 = phi ptr [ %2, %.preheader185.lr.ph.split ], [ %i.bx, %._crit_edge ] ; 3 uses
  %.0188 = phi ptr [ %4, %.preheader185.lr.ph.split ], [ %i.bw, %._crit_edge ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader185
  %scevgep = getelementptr i8, ptr %.0188, i64 %i.ac
  %bound0 = icmp ult ptr %.0188, %scevgep5
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i1 %found.conflict, %stride.check
  br i1 %i.aj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ak = getelementptr i8, ptr %.0188, i64 %i.ai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0188, i64 %i.al
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %index
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !alias.scope !123 ; 3 uses
  %i.an = and <4 x i32> %wide.load, splat (i32 1023)
  %i.ao = lshr <4 x i32> %wide.load, splat (i32 10)
  %i.ap = and <4 x i32> %i.ao, splat (i32 1023)
  %i.aq = lshr <4 x i32> %wide.load, splat (i32 20)
  %i.ar = and <4 x i32> %i.aq, splat (i32 1023)
  %i.as = uitofp nneg <4 x i32> %i.an to <4 x float>
  %i.at = uitofp nneg <4 x i32> %i.ap to <4 x float>
  %i.au = fmul <4 x float> %broadcast.splat, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat7, <4 x float> %i.as, <4 x float> %i.au)
  %i.aw = uitofp nneg <4 x i32> %i.ar to <4 x float>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.aw, <4 x float> %i.av)
  %i.ay = fadd <4 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fptosi <4 x float> %i.ay to <4 x i32>
  %i.ba = add nsw <4 x i32> %broadcast.splat11, %i.az
  %i.bb = trunc <4 x i32> %i.ba to <4 x i16>
  %i.bc = shl <4 x i16> %i.bb, splat (i16 6)
  store <4 x i16> %i.bc, ptr %next.gep, align 2, !alias.scope !124, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader185, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader185 ], [ %n.vec, %middle.block ]
  %.1183186.ph = phi ptr [ %.0188, %vector.memcheck ], [ %.0188, %.preheader185 ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1183186 = phi ptr [ %i.bv, %scalar.ph ], [ %.1183186.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = and i32 %i.bf, 1023
  %i.bh = lshr i32 %i.bf, 10
  %i.bi = and i32 %i.bh, 1023
  %i.bj = lshr i32 %i.bf, 20
  %i.bk = and i32 %i.bj, 1023
  %i.bl = uitofp nneg i32 %i.bg to float
  %i.bm = uitofp nneg i32 %i.bi to float
  %i.bn = fmul float %i.z, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bl, float %i.bn)
  %i.bp = uitofp nneg i32 %i.bk to float
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bp, float %i.bo)
  %i.br = fadd float %i.bq, 5.000000e-01
  %i.bs = fptosi float %i.br to i32
  %i.bt = add nsw i32 %i.ab, %i.bs
  %.tr178 = trunc i32 %i.bt to i16
  %i.bu = shl i16 %.tr178, 6
  %i.bv = getelementptr inbounds nuw i8, ptr %.1183186, i64 2 ; 2 uses
  store i16 %i.bu, ptr %.1183186, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa4 = phi ptr [ %i.ak, %middle.block ], [ %i.bv, %scalar.ph ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.lcssa4, i64 %i.t
  %i.bx = getelementptr inbounds i8, ptr %.0162189, i64 %i.u
  %i.by = add nuw nsw i32 %.0160190, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.by, %1
  br i1 %exitcond217.not, label %._crit_edge191.split, label %.preheader185, !llvm.loop !110

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader185.lr.ph
  %.not236 = icmp eq i32 %1, 1
  br i1 %.not236, label %._crit_edge201, label %.preheader184.lr.ph

.preheader184.lr.ph:                              ; preds = %._crit_edge191.split
  %.neg = sdiv i32 %i.h, -2
  %.neg168 = shl nsw i32 %.neg, 1
  %i.bz = add i32 %i.m, %.neg168
  %i.ca = sext i32 %3 to i64
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca     ; 2 uses
  %i.cc = icmp sgt i32 %0, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.not173 = icmp eq i32 %i.e, 0
  %i.cf = zext i32 %i.bz to i64
  %i.cg = sext i32 %i.a to i64                    ; 3 uses
  %wide.trip.count221 = zext i32 %i.d to i64      ; 5 uses
  %i.ch = shl nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.ci = shl nuw nsw i64 %wide.trip.count221, 2
  %i.cj = add nsw i32 %i.b, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.cg, %i.ck
  %i.cm = shl nuw nsw i64 %wide.trip.count221, 3
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr i8, ptr %2, i64 %i.cn
  %scevgep15 = getelementptr i8, ptr %i.co, i64 %i.u
  %scevgep16 = getelementptr i8, ptr %2, i64 %i.cn
  %min.iters.check26 = icmp ult i32 %0, 8
  %stride.check24 = icmp slt i32 %i.a, 0
  %n.vec28 = and i64 %wide.trip.count221, 1073741820 ; 4 uses
  %i.cp = shl nuw nsw i64 %n.vec28, 2
  %cmp.n50 = icmp eq i64 %n.vec28, %wide.trip.count221
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.lr.ph, %bb.c
  %.1161200 = phi i32 [ 0, %.preheader184.lr.ph ], [ %i.hq, %bb.c ]
  %.1163199 = phi ptr [ %2, %.preheader184.lr.ph ], [ %i.ho, %bb.c ] ; 4 uses
  %.0164198 = phi ptr [ %i.cb, %.preheader184.lr.ph ], [ %i.hp, %bb.c ] ; 5 uses
  %.0165197 = phi ptr [ %i.p, %.preheader184.lr.ph ], [ %i.hn, %bb.c ] ; 8 uses
  br i1 %i.cc, label %.lr.ph, label %._crit_edge194

.lr.ph:                                           ; preds = %.preheader184
  %i.cq = load <4 x float>, ptr %i.cd, align 8    ; 7 uses
  %i.cr = load <2 x float>, ptr %i.ce, align 8    ; 4 uses
  br i1 %min.iters.check26, label %scalar.ph25.preheader, label %vector.memcheck13

vector.memcheck13:                                ; preds = %.lr.ph
  %scevgep14 = getelementptr i8, ptr %.0165197, i64 %i.ci ; 2 uses
  %bound017 = icmp ult ptr %.0165197, %scevgep15
  %bound118 = icmp ult ptr %i.cb, %scevgep14
  %found.conflict19 = and i1 %bound017, %bound118
  %7 = or i1 %found.conflict19, %stride.check24
  %bound021 = icmp ult ptr %.0165197, %scevgep16
  %bound122 = icmp ult ptr %2, %scevgep14
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %7, %found.conflict23
  br i1 %conflict.rdx, label %scalar.ph25.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %vector.memcheck13
  %i.cs = getelementptr i8, ptr %.0165197, i64 %i.cp ; 2 uses
  %broadcast.splat30 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat34 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat36 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat38 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat40 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph27
  %index42 = phi i64 [ 0, %vector.ph27 ], [ %index.next48, %vector.body41 ] ; 3 uses
  %i.ct = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %.0165197, i64 %i.ct
  %i.cu = shl nuw nsw i64 %index42, 1             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.cu
  %wide.vec = load <8 x i32>, ptr %i.cv, align 4, !alias.scope !125 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec44 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.cu
  %wide.vec45 = load <8 x i32>, ptr %i.cw, align 4, !alias.scope !126 ; 2 uses
  %strided.vec46.a = shufflevector <8 x i32> %wide.vec45, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec47 = shufflevector <8 x i32> %wide.vec45, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cx = and <4 x i32> %strided.vec, splat (i32 1023)
  %i.cy = and <4 x i32> %strided.vec44, splat (i32 1023)
  %i.cz = add nuw nsw <4 x i32> %i.cy, %i.cx
  %i.da = and <4 x i32> %strided.vec46.a, splat (i32 1023)
  %i.db = add nuw nsw <4 x i32> %i.cz, %i.da
  %i.dc = and <4 x i32> %strided.vec47, splat (i32 1023)
  %i.dd = add nuw nsw <4 x i32> %i.db, %i.dc
  %i.de = lshr <4 x i32> %i.dd, splat (i32 2)
  %i.df = and <4 x i32> %strided.vec, splat (i32 1047552)
  %i.dg = and <4 x i32> %strided.vec44, splat (i32 1047552)
  %i.dh = add nuw nsw <4 x i32> %i.dg, %i.df
  %i.di = and <4 x i32> %strided.vec46.a, splat (i32 1047552)
  %i.dj = add nuw nsw <4 x i32> %i.dh, %i.di
  %i.dk = and <4 x i32> %strided.vec47, splat (i32 1047552)
  %i.dl = add nuw nsw <4 x i32> %i.dj, %i.dk
  %i.dm = lshr <4 x i32> %i.dl, splat (i32 12)
  %i.dn = and <4 x i32> %strided.vec, splat (i32 1072693248)
  %i.do = and <4 x i32> %strided.vec44, splat (i32 1072693248)
  %i.dp = add nuw nsw <4 x i32> %i.do, %i.dn
  %i.dq = and <4 x i32> %strided.vec46.a, splat (i32 1072693248)
  %i.dr = add nuw <4 x i32> %i.dp, %i.dq
  %i.ds = and <4 x i32> %strided.vec47, splat (i32 1072693248)
  %i.dt = add nuw <4 x i32> %i.dr, %i.ds
  %i.du = lshr <4 x i32> %i.dt, splat (i32 22)
  %i.dv = uitofp nneg <4 x i32> %i.de to <4 x float> ; 2 uses
  %i.dw = uitofp nneg <4 x i32> %i.dm to <4 x float> ; 2 uses
  %i.dx = fmul <4 x float> %broadcast.splat32, %i.dw
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat30, <4 x float> %i.dv, <4 x float> %i.dx)
  %i.dz = uitofp nneg <4 x i32> %i.du to <4 x float> ; 2 uses
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat34, <4 x float> %i.dz, <4 x float> %i.dy)
  %i.eb = fmul <4 x float> %broadcast.splat38, %i.dw
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.dv, <4 x float> %i.eb)
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat40, <4 x float> %i.dz, <4 x float> %i.ec)
  %i.ee = shufflevector <4 x float> %i.ea, <4 x float> %i.ed, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ef = fadd <8 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fptosi <8 x float> %i.ef to <8 x i32>
  %i.eh = trunc <8 x i32> %i.eg to <8 x i16>
  %i.ei = shl <8 x i16> %i.eh, splat (i16 6)
  %interleaved.vec = xor <8 x i16> %i.ei, splat (i16 -32768)
  store <8 x i16> %interleaved.vec, ptr %next.gep43, align 2, !alias.scope !127, !noalias !128
  %index.next48 = add nuw i64 %index42, 4         ; 2 uses
  %i.ej = icmp eq i64 %index.next48, %n.vec28
  br i1 %i.ej, label %middle.block49, label %vector.body41, !llvm.loop !115

middle.block49:                                   ; preds = %vector.body41
  br i1 %cmp.n50, label %._crit_edge194, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %vector.memcheck13, %.lr.ph, %middle.block49
  %indvars.iv218.ph = phi i64 [ 0, %vector.memcheck13 ], [ 0, %.lr.ph ], [ %n.vec28, %middle.block49 ]
  %.1166192.ph = phi ptr [ %.0165197, %vector.memcheck13 ], [ %.0165197, %.lr.ph ], [ %i.cs, %middle.block49 ]
  %i.ek = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.el = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.em = shufflevector <4 x float> %i.cq, <4 x float> %i.el, <2 x i32> <i32 1, i32 4>
  %i.en = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eo = shufflevector <2 x float> %i.ek, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph25

scalar.ph25:                                      ; preds = %scalar.ph25.preheader, %scalar.ph25
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph25 ], [ %indvars.iv218.ph, %scalar.ph25.preheader ] ; 2 uses
  %.1166192 = phi ptr [ %i.ew, %scalar.ph25 ], [ %.1166192.ph, %scalar.ph25.preheader ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv218, 1       ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.1166192, i64 4 ; 2 uses
  %i.ex = load <2 x i32>, ptr %i.eq, align 4      ; 2 uses
  %i.ey = shufflevector <2 x i32> %i.ex, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.ez = shufflevector <2 x i32> %i.ex, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.fa = and <3 x i32> %i.ez, <i32 1072693248, i32 1023, i32 1047552>
  %i.fb = and <3 x i32> %i.ey, <i32 1072693248, i32 1023, i32 1047552>
  %i.fc = add nuw nsw <3 x i32> %i.fb, %i.fa
  %i.fd = insertelement <3 x i32> poison, i32 %i.es, i64 0
  %i.fe = shufflevector <3 x i32> %i.fd, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.ff = and <3 x i32> %i.fe, <i32 1072693248, i32 1023, i32 1047552>
  %i.fg = add nuw <3 x i32> %i.fc, %i.ff
  %i.fh = insertelement <3 x i32> poison, i32 %i.ev, i64 0
  %i.fi = shufflevector <3 x i32> %i.fh, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fj = and <3 x i32> %i.fi, <i32 1072693248, i32 1023, i32 1047552>
  %i.fk = add nuw <3 x i32> %i.fg, %i.fj
  %i.fl = lshr <3 x i32> %i.fk, <i32 22, i32 2, i32 12>
  %i.fm = uitofp nneg <3 x i32> %i.fl to <3 x float> ; 3 uses
  %i.fn = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fo = fmul <2 x float> %i.em, %i.fn
  %i.fp = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.fp, <2 x float> %i.fo)
  %i.fr = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.fr, <2 x float> %i.fq)
  %i.ft = fadd <2 x float> %i.fs, splat (float 5.000000e-01)
  %i.fu = fptosi <2 x float> %i.ft to <2 x i32>
  %i.fv = trunc <2 x i32> %i.fu to <2 x i16>
  %i.fw = shl <2 x i16> %i.fv, splat (i16 6)
  %i.fx = xor <2 x i16> %i.fw, splat (i16 -32768)
  store <2 x i16> %i.fx, ptr %.1166192, align 2
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge194, label %scalar.ph25, !llvm.loop !116

._crit_edge194:                                   ; preds = %scalar.ph25, %middle.block49, %.preheader184
  %.1166.lcssa = phi ptr [ %.0165197, %.preheader184 ], [ %i.cs, %middle.block49 ], [ %i.ew, %scalar.ph25 ] ; 3 uses
  %.1.lcssa.shrunk = phi i32 [ 0, %.preheader184 ], [ %i.ch, %middle.block49 ], [ %i.ch, %scalar.ph25 ]
  br i1 %.not173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge194
  %.1.lcssa = zext nneg i32 %.1.lcssa.shrunk to i64 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %.1.lcssa
  %i.fz = load i32, ptr %i.fy, align 4            ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %.1.lcssa
  %i.gb = load i32, ptr %i.ga, align 4            ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1166.lcssa, i64 4
  %i.gd = and i32 %i.fz, 1023
  %i.ge = and i32 %i.gb, 1023
  %i.gf = add nuw nsw i32 %i.ge, %i.gd
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.fz, 1047552
  %i.gi = and i32 %i.gb, 1047552
  %i.gj = add nuw nsw i32 %i.gi, %i.gh
  %i.gk = lshr i32 %i.gj, 11
  %i.gl = and i32 %i.fz, 1072693248
  %i.gm = and i32 %i.gb, 1072693248
  %i.gn = add nuw nsw i32 %i.gm, %i.gl
  %i.go = lshr i32 %i.gn, 21
  %i.gp = uitofp nneg i32 %i.gg to float
  %i.gq = uitofp nneg i32 %i.gk to float
  %i.gr = uitofp nneg i32 %i.go to float
  %i.gs = load <4 x float>, ptr %i.cd, align 8    ; 3 uses
  %i.gt = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.gu = shufflevector <4 x float> %i.gs, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gv, <2 x i32> <i32 1, i32 4>
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.gw, %i.gy
  %i.ha = shufflevector <4 x float> %i.gs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hb = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hc, <2 x float> %i.gz)
  %i.he = shufflevector <2 x float> %i.gu, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.hf = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.hg, <2 x float> %i.hd)
  %i.hi = fadd <2 x float> %i.hh, splat (float 5.000000e-01)
  %i.hj = fptosi <2 x float> %i.hi to <2 x i32>
  %i.hk = trunc <2 x i32> %i.hj to <2 x i16>
  %i.hl = shl <2 x i16> %i.hk, splat (i16 6)
  %i.hm = xor <2 x i16> %i.hl, splat (i16 -32768)
  store <2 x i16> %i.hm, ptr %.1166.lcssa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge194
  %.2167 = phi ptr [ %i.gc, %bb.b ], [ %.1166.lcssa, %._crit_edge194 ]
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.2167, i64 %i.cf ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %.1163199, i64 %i.cg ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.0164198, i64 %i.cg
  %i.hq = add nuw nsw i32 %.1161200, 1            ; 2 uses
  %exitcond223.not = icmp eq i32 %i.hq, %i.b
  br i1 %exitcond223.not, label %._crit_edge201, label %.preheader184, !llvm.loop !117

._crit_edge201:                                   ; preds = %bb.c, %bb.a, %._crit_edge191.split
  %.0165.lcssa = phi ptr [ %i.p, %._crit_edge191.split ], [ %i.p, %bb.a ], [ %i.hn, %bb.c ] ; 7 uses
  %.1163.lcssa = phi ptr [ %2, %._crit_edge191.split ], [ %2, %bb.a ], [ %i.ho, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge201
  %i.hr = icmp sgt i32 %0, 1
  br i1 %i.hr, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hu = load <4 x float>, ptr %i.hs, align 8    ; 7 uses
  %i.hv = load <2 x float>, ptr %i.ht, align 8    ; 4 uses
end_hunk_3
