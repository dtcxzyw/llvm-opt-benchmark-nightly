Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dbbcsd?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dbbcsd_:bb.a

.sink.split2193:                                  ; preds = %bb.dx, %.lr.ph1990
  %.sink2194 = phi double [ 0.000000e+00, %.lr.ph1990 ], [ f0x3FF921FB54442D18, %bb.dx ]
  store double %.sink2194, ptr %i.aux, align 8, !tbaa !36
  br label %bb.dy

bb.dy:                                            ; preds = %.sink.split2193, %bb.dx
  %indvars.iv.next2062 = add nsw i64 %indvars.iv2061, 1 ; 2 uses
  %exitcond2066.not = icmp eq i64 %indvars.iv.next2062, %wide.trip.count2065
  br i1 %exitcond2066.not, label %.preheader1949.preheader, label %.lr.ph1990, !llvm.loop !26

.preheader1949.preheader:                         ; preds = %bb.dy, %middle.block2283, %vec.epilog.middle.block2301, %._crit_edge1986
  br label %.preheader1949

.preheader1949:                                   ; preds = %.preheader1949.preheader, %bb.dz
  %indvars.iv2067 = phi i64 [ %indvars.iv.next2068, %bb.dz ], [ %i.in, %.preheader1949.preheader ] ; 3 uses
  %i.avb = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv2067
  %i.avc = getelementptr i8, ptr %i.avb, i64 -8
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !36
  %i.ave = fcmp oeq double %i.avd, 0.000000e+00
  %i.avf = trunc nuw i64 %indvars.iv2067 to i32   ; 2 uses
  br i1 %i.ave, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.preheader1949
  %indvars.iv.next2068 = add nsw i64 %indvars.iv2067, -1
  %i.avg = icmp slt i32 %i.avf, 3
  br i1 %i.avg, label %bb.ea, label %.preheader1949, !llvm.loop !27

bb.ea:                                            ; preds = %.preheader1949, %bb.dz
  %.31837 = phi i32 [ 1, %bb.dz ], [ %i.avf, %.preheader1949 ] ; 3 uses
  %i.avh = add nsw i32 %.31837, -1
  %spec.select1908 = call i32 @llvm.smin.i32(i32 %.218421992, i32 %i.avh) ; 3 uses
  %i.avi = icmp sgt i32 %spec.select1908, 1
  br i1 %i.avi, label %.preheader.preheader, label %.loopexit1948

.preheader.preheader:                             ; preds = %bb.ea
  %i.avj = zext nneg i32 %spec.select1908 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.eb
  %indvars.iv2071 = phi i64 [ %i.avj, %.preheader.preheader ], [ %indvars.iv.next2072, %bb.eb ] ; 4 uses
  %i.avk = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv2071
  %i.avl = getelementptr i8, ptr %i.avk, i64 -8
  %i.avm = load double, ptr %i.avl, align 8, !tbaa !36
  %i.avn = fcmp une double %i.avm, 0.000000e+00
  br i1 %i.avn, label %bb.eb, label %.loopexit1948.loopexit.split.loop.exit2177

bb.eb:                                            ; preds = %.preheader
  %indvars.iv.next2072 = add nsw i64 %indvars.iv2071, -1
  %i.avo = icmp slt i64 %indvars.iv2071, 3
  br i1 %i.avo, label %.loopexit1948, label %.preheader, !llvm.loop !28

.loopexit1948.loopexit.split.loop.exit2177:       ; preds = %.preheader
  %i.avp = trunc nuw nsw i64 %indvars.iv2071 to i32
  br label %.loopexit1948

.loopexit1948:                                    ; preds = %bb.eb, %.loopexit1948.loopexit.split.loop.exit2177, %bb.ea
  %.51845 = phi i32 [ %spec.select1908, %bb.ea ], [ %i.avp, %.loopexit1948.loopexit.split.loop.exit2177 ], [ 1, %bb.eb ]
  %i.avq = icmp sgt i32 %.31837, 1
  br i1 %i.avq, label %bb.z, label %._crit_edge1998.loopexit, !llvm.loop !29

._crit_edge1998.loopexit:                         ; preds = %.loopexit1948
  %.pre2093 = load i32, ptr %7, align 4, !tbaa !34
  br label %._crit_edge1998

._crit_edge1998:                                  ; preds = %bb.w, %._crit_edge, %._crit_edge1998.loopexit, %.loopexit1951
  %i.avr = phi i32 [ %.pre2093, %._crit_edge1998.loopexit ], [ %i.cj, %.loopexit1951 ], [ %i.cj, %._crit_edge ], [ %i.cj, %bb.w ] ; 2 uses
  store i32 %i.avr, ptr %i.a, align 4, !tbaa !34
  %.not18812008 = icmp slt i32 %i.avr, 1
  br i1 %.not18812008, label %.loopexit, label %.lr.ph2011

.lr.ph2011:                                       ; preds = %._crit_edge1998
  %.not1884 = icmp eq i32 %i.ap, 0                ; 2 uses
  %.not1885 = icmp eq i32 %i.aq, 0                ; 2 uses
  %.not1886 = icmp eq i32 %i.ar, 0                ; 2 uses
  %.not1887 = icmp eq i32 %i.as, 0                ; 2 uses
  %i.avs = sext i32 %i.s to i64                   ; 2 uses
  %i.avt = sext i32 %i.v to i64                   ; 2 uses
  %i.avu = sext i32 %i.y to i64                   ; 2 uses
  %i.avv = sext i32 %i.ab to i64                  ; 2 uses
  %invariant.gep2179 = getelementptr [8 x i8], ptr %i.u, i64 %i.avs
  %invariant.gep2181 = getelementptr [8 x i8], ptr %i.x, i64 %i.avt
  %invariant.gep2183 = getelementptr [8 x i8], ptr %i.aa, i64 %i.avu
  %invariant.gep2185 = getelementptr [8 x i8], ptr %i.ad, i64 %i.avv
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph2011, %bb.eu
  %indvar = phi i32 [ 0, %.lr.ph2011 ], [ %indvar.next, %bb.eu ] ; 3 uses
  %indvars.iv2083 = phi i64 [ 1, %.lr.ph2011 ], [ %indvars.iv.next2084, %bb.eu ] ; 14 uses
  %indvars.iv2075 = phi i64 [ 2, %.lr.ph2011 ], [ %indvars.iv.next2076, %bb.eu ] ; 3 uses
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv2083 ; 2 uses
  %i.avx = load double, ptr %i.avw, align 8, !tbaa !36 ; 4 uses
  %i.avy = load i32, ptr %7, align 4, !tbaa !34   ; 5 uses
  store i32 %i.avy, ptr %i.b, align 4, !tbaa !34
  %indvars.iv.next2084 = add nuw nsw i64 %indvars.iv2083, 1
  %i.avz = sext i32 %i.avy to i64
  %.not18821999.not = icmp slt i64 %indvars.iv2083, %i.avz
  %i.awa = trunc nuw nsw i64 %indvars.iv2083 to i32 ; 3 uses
  br i1 %.not18821999.not, label %.lr.ph2004.preheader, label %._crit_edge2005

.lr.ph2004.preheader:                             ; preds = %bb.ec
  %i.awb = xor i32 %indvar, -1
  %i.awc = add i32 %i.avy, 1
  %i.awd = add i32 %i.avy, %i.awb
  %reass.sub = sub i32 %i.avy, %indvar
  %i.awe = add i32 %reass.sub, -2
  %xtraiter2355 = and i32 %i.awd, 7               ; 2 uses
  %lcmp.mod2356.not = icmp eq i32 %xtraiter2355, 0
  br i1 %lcmp.mod2356.not, label %.lr.ph2004.prol.loopexit, label %.lr.ph2004.prol

.lr.ph2004.prol:                                  ; preds = %.lr.ph2004.preheader, %.lr.ph2004.prol
  %indvars.iv2077.prol = phi i64 [ %indvars.iv.next2078.prol, %.lr.ph2004.prol ], [ %indvars.iv2075, %.lr.ph2004.preheader ] ; 3 uses
  %.218312001.prol = phi double [ %spec.select1910.prol, %.lr.ph2004.prol ], [ %i.avx, %.lr.ph2004.preheader ] ; 2 uses
  %.018382000.prol = phi i32 [ %spec.select1909.prol, %.lr.ph2004.prol ], [ %i.awa, %.lr.ph2004.preheader ]
  %prol.iter2357 = phi i32 [ %prol.iter2357.next, %.lr.ph2004.prol ], [ 0, %.lr.ph2004.preheader ]
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv2077.prol
  %i.awg = load double, ptr %i.awf, align 8, !tbaa !36 ; 2 uses
  %i.awh = fcmp olt double %i.awg, %.218312001.prol ; 2 uses
  %i.awi = trunc nuw i64 %indvars.iv2077.prol to i32
  %spec.select1909.prol = select i1 %i.awh, i32 %i.awi, i32 %.018382000.prol ; 3 uses
  %spec.select1910.prol = select i1 %i.awh, double %i.awg, double %.218312001.prol ; 3 uses
  %indvars.iv.next2078.prol = add nuw nsw i64 %indvars.iv2077.prol, 1 ; 2 uses
  %prol.iter2357.next = add i32 %prol.iter2357, 1 ; 2 uses
  %prol.iter2357.cmp.not = icmp eq i32 %prol.iter2357.next, %xtraiter2355
  br i1 %prol.iter2357.cmp.not, label %.lr.ph2004.prol.loopexit, label %.lr.ph2004.prol, !llvm.loop !30

.lr.ph2004.prol.loopexit:                         ; preds = %.lr.ph2004.prol, %.lr.ph2004.preheader
  %spec.select1909.lcssa.unr = phi i32 [ poison, %.lr.ph2004.preheader ], [ %spec.select1909.prol, %.lr.ph2004.prol ]
  %spec.select1910.lcssa.unr = phi double [ poison, %.lr.ph2004.preheader ], [ %spec.select1910.prol, %.lr.ph2004.prol ]
  %indvars.iv2077.unr = phi i64 [ %indvars.iv2075, %.lr.ph2004.preheader ], [ %indvars.iv.next2078.prol, %.lr.ph2004.prol ]
  %.218312001.unr = phi double [ %i.avx, %.lr.ph2004.preheader ], [ %spec.select1910.prol, %.lr.ph2004.prol ]
  %.018382000.unr = phi i32 [ %i.awa, %.lr.ph2004.preheader ], [ %spec.select1909.prol, %.lr.ph2004.prol ]
  %i.awj = icmp ult i32 %i.awe, 7
  br i1 %i.awj, label %._crit_edge2005, label %.lr.ph2004

.lr.ph2004:                                       ; preds = %.lr.ph2004.prol.loopexit, %.lr.ph2004
  %indvars.iv2077 = phi i64 [ %indvars.iv.next2078.7, %.lr.ph2004 ], [ %indvars.iv2077.unr, %.lr.ph2004.prol.loopexit ] ; 11 uses
  %.218312001 = phi double [ %spec.select1910.7, %.lr.ph2004 ], [ %.218312001.unr, %.lr.ph2004.prol.loopexit ] ; 2 uses
  %.018382000 = phi i32 [ %spec.select1909.7, %.lr.ph2004 ], [ %.018382000.unr, %.lr.ph2004.prol.loopexit ]
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv2077
  %i.awl = load double, ptr %i.awk, align 8, !tbaa !36 ; 2 uses
  %i.awm = fcmp olt double %i.awl, %.218312001    ; 2 uses
  %i.awn = trunc nuw i64 %indvars.iv2077 to i32
  %spec.select1909 = select i1 %i.awm, i32 %i.awn, i32 %.018382000
  %spec.select1910 = select i1 %i.awm, double %i.awl, double %.218312001 ; 2 uses
  %i.awo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv2077
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !36 ; 2 uses
  %i.awq = fcmp olt double %i.awp, %spec.select1910 ; 2 uses
  %i.awr = trunc i64 %indvars.iv2077 to i32
  %i.aws = add i32 %i.awr, 1
  %spec.select1909.1 = select i1 %i.awq, i32 %i.aws, i32 %spec.select1909
  %spec.select1910.1 = select i1 %i.awq, double %i.awp, double %spec.select1910 ; 2 uses
  %indvars.iv.next2078.1 = add nuw nsw i64 %indvars.iv2077, 2 ; 2 uses
  %i.awt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.1
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !36 ; 2 uses
  %i.awv = fcmp olt double %i.awu, %spec.select1910.1 ; 2 uses
  %i.aww = trunc nuw i64 %indvars.iv.next2078.1 to i32
  %spec.select1909.2 = select i1 %i.awv, i32 %i.aww, i32 %spec.select1909.1
  %spec.select1910.2 = select i1 %i.awv, double %i.awu, double %spec.select1910.1 ; 2 uses
  %indvars.iv.next2078.2 = add nuw nsw i64 %indvars.iv2077, 3 ; 2 uses
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.2
  %i.awy = load double, ptr %i.awx, align 8, !tbaa !36 ; 2 uses
  %i.awz = fcmp olt double %i.awy, %spec.select1910.2 ; 2 uses
  %i.axa = trunc nuw i64 %indvars.iv.next2078.2 to i32
  %spec.select1909.3 = select i1 %i.awz, i32 %i.axa, i32 %spec.select1909.2
  %spec.select1910.3 = select i1 %i.awz, double %i.awy, double %spec.select1910.2 ; 2 uses
  %indvars.iv.next2078.3 = add nuw nsw i64 %indvars.iv2077, 4 ; 2 uses
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.3
  %i.axc = load double, ptr %i.axb, align 8, !tbaa !36 ; 2 uses
  %i.axd = fcmp olt double %i.axc, %spec.select1910.3 ; 2 uses
  %i.axe = trunc nuw i64 %indvars.iv.next2078.3 to i32
  %spec.select1909.4 = select i1 %i.axd, i32 %i.axe, i32 %spec.select1909.3
  %spec.select1910.4 = select i1 %i.axd, double %i.axc, double %spec.select1910.3 ; 2 uses
  %indvars.iv.next2078.4 = add nuw nsw i64 %indvars.iv2077, 5 ; 2 uses
  %i.axf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.4
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !36 ; 2 uses
  %i.axh = fcmp olt double %i.axg, %spec.select1910.4 ; 2 uses
  %i.axi = trunc nuw i64 %indvars.iv.next2078.4 to i32
  %spec.select1909.5 = select i1 %i.axh, i32 %i.axi, i32 %spec.select1909.4
  %spec.select1910.5 = select i1 %i.axh, double %i.axg, double %spec.select1910.4 ; 2 uses
  %indvars.iv.next2078.5 = add nuw nsw i64 %indvars.iv2077, 6 ; 2 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.5
  %i.axk = load double, ptr %i.axj, align 8, !tbaa !36 ; 2 uses
  %i.axl = fcmp olt double %i.axk, %spec.select1910.5 ; 2 uses
  %i.axm = trunc nuw i64 %indvars.iv.next2078.5 to i32
  %spec.select1909.6 = select i1 %i.axl, i32 %i.axm, i32 %spec.select1909.5
  %spec.select1910.6 = select i1 %i.axl, double %i.axk, double %spec.select1910.5 ; 2 uses
  %indvars.iv.next2078.6 = add nuw nsw i64 %indvars.iv2077, 7 ; 2 uses
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next2078.6
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !36 ; 2 uses
  %i.axp = fcmp olt double %i.axo, %spec.select1910.6 ; 2 uses
  %i.axq = trunc nuw i64 %indvars.iv.next2078.6 to i32
  %spec.select1909.7 = select i1 %i.axp, i32 %i.axq, i32 %spec.select1909.6 ; 2 uses
  %spec.select1910.7 = select i1 %i.axp, double %i.axo, double %spec.select1910.6 ; 2 uses
  %indvars.iv.next2078.7 = add nuw nsw i64 %indvars.iv2077, 8 ; 2 uses
  %lftr.wideiv2081.7 = trunc i64 %indvars.iv.next2078.7 to i32
  %exitcond2082.not.7 = icmp eq i32 %i.awc, %lftr.wideiv2081.7
  br i1 %exitcond2082.not.7, label %._crit_edge2005, label %.lr.ph2004, !llvm.loop !31

._crit_edge2005:                                  ; preds = %.lr.ph2004.prol.loopexit, %.lr.ph2004, %bb.ec
  %.01838.lcssa = phi i32 [ %i.awa, %bb.ec ], [ %spec.select1909.lcssa.unr, %.lr.ph2004.prol.loopexit ], [ %spec.select1909.7, %.lr.ph2004 ] ; 10 uses
  %.21831.lcssa = phi double [ %i.avx, %bb.ec ], [ %spec.select1910.lcssa.unr, %.lr.ph2004.prol.loopexit ], [ %spec.select1910.7, %.lr.ph2004 ]
  %i.axr = zext i32 %.01838.lcssa to i64
  %.not1883 = icmp eq i64 %indvars.iv2083, %i.axr
  br i1 %.not1883, label %bb.eu, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge2005
  %29 = sext i32 %.01838.lcssa to i64
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.q, i64 %29
  store double %i.avx, ptr %i.axs, align 8, !tbaa !36
  store double %.21831.lcssa, ptr %i.avw, align 8, !tbaa !36
  br i1 %.not, label %bb.ee, label %bb.em

bb.ee:                                            ; preds = %bb.ed
  br i1 %.not1884, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.axt = mul nsw i64 %indvars.iv2083, %i.avs
  %i.axu = getelementptr [8 x i8], ptr %i.u, i64 %i.axt
  %i.axv = getelementptr i8, ptr %i.axu, i64 8
  %i.axw = mul nsw i32 %.01838.lcssa, %i.s
  %i.axx = sext i32 %i.axw to i64
  %i.axy = getelementptr [8 x i8], ptr %i.u, i64 %i.axx
  %i.axz = getelementptr i8, ptr %i.axy, i64 8
  call void @dswap_(ptr noundef nonnull %6, ptr noundef %i.axv, ptr noundef nonnull @c__1, ptr noundef %i.axz, ptr noundef nonnull @c__1) #7
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  br i1 %.not1885, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aya = load i32, ptr %5, align 4, !tbaa !34
  %i.ayb = load i32, ptr %6, align 4, !tbaa !34
  %i.ayc = sub nsw i32 %i.aya, %i.ayb
  store i32 %i.ayc, ptr %i.b, align 4, !tbaa !34
  %i.ayd = mul nsw i64 %indvars.iv2083, %i.avt
  %i.aye = getelementptr [8 x i8], ptr %i.x, i64 %i.ayd
  %i.ayf = getelementptr i8, ptr %i.aye, i64 8
  %i.ayg = mul nsw i32 %.01838.lcssa, %i.v
  %i.ayh = sext i32 %i.ayg to i64
  %i.ayi = getelementptr [8 x i8], ptr %i.x, i64 %i.ayh
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 8
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %i.ayf, ptr noundef nonnull @c__1, ptr noundef %i.ayj, ptr noundef nonnull @c__1) #7
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  br i1 %.not1886, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %gep2184 = getelementptr [8 x i8], ptr %invariant.gep2183, i64 %indvars.iv2083
  %i.ayk = add nsw i32 %.01838.lcssa, %i.y
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ayl
  call void @dswap_(ptr noundef nonnull %7, ptr noundef %gep2184, ptr noundef nonnull %15, ptr noundef %i.aym, ptr noundef nonnull %15) #7
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  br i1 %.not1887, label %bb.eu, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ayn = load i32, ptr %5, align 4, !tbaa !34
  %i.ayo = load i32, ptr %7, align 4, !tbaa !34
  %i.ayp = sub nsw i32 %i.ayn, %i.ayo
  store i32 %i.ayp, ptr %i.b, align 4, !tbaa !34
  %gep2186 = getelementptr [8 x i8], ptr %invariant.gep2185, i64 %indvars.iv2083
  %i.ayq = add nsw i32 %.01838.lcssa, %i.ab
  %i.ayr = sext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ayr
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %gep2186, ptr noundef nonnull %17, ptr noundef %i.ays, ptr noundef nonnull %17) #7
  br label %bb.eu

bb.em:                                            ; preds = %bb.ed
  br i1 %.not1884, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %gep2180 = getelementptr [8 x i8], ptr %invariant.gep2179, i64 %indvars.iv2083
  %i.ayt = add nsw i32 %.01838.lcssa, %i.s
  %i.ayu = sext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ayu
  call void @dswap_(ptr noundef nonnull %6, ptr noundef %gep2180, ptr noundef nonnull %11, ptr noundef %i.ayv, ptr noundef nonnull %11) #7
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  br i1 %.not1885, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ayw = load i32, ptr %5, align 4, !tbaa !34
  %i.ayx = load i32, ptr %6, align 4, !tbaa !34
  %i.ayy = sub nsw i32 %i.ayw, %i.ayx
  store i32 %i.ayy, ptr %i.b, align 4, !tbaa !34
  %gep2182 = getelementptr [8 x i8], ptr %invariant.gep2181, i64 %indvars.iv2083
  %i.ayz = add nsw i32 %.01838.lcssa, %i.v
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aza
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %gep2182, ptr noundef nonnull %13, ptr noundef %i.azb, ptr noundef nonnull %13) #7
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  br i1 %.not1886, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.azc = mul nsw i64 %indvars.iv2083, %i.avu
  %i.azd = getelementptr [8 x i8], ptr %i.aa, i64 %i.azc
  %i.aze = getelementptr i8, ptr %i.azd, i64 8
  %i.azf = mul nsw i32 %.01838.lcssa, %i.y
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr [8 x i8], ptr %i.aa, i64 %i.azg
  %i.azi = getelementptr i8, ptr %i.azh, i64 8
  call void @dswap_(ptr noundef nonnull %7, ptr noundef %i.aze, ptr noundef nonnull @c__1, ptr noundef %i.azi, ptr noundef nonnull @c__1) #7
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  br i1 %.not1887, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.azj = load i32, ptr %5, align 4, !tbaa !34
  %i.azk = load i32, ptr %7, align 4, !tbaa !34
  %i.azl = sub nsw i32 %i.azj, %i.azk
  store i32 %i.azl, ptr %i.b, align 4, !tbaa !34
  %i.azm = mul nsw i64 %indvars.iv2083, %i.avv
  %i.azn = getelementptr [8 x i8], ptr %i.ad, i64 %i.azm
  %i.azo = getelementptr i8, ptr %i.azn, i64 8
  %i.azp = mul nsw i32 %.01838.lcssa, %i.ab
  %i.azq = sext i32 %i.azp to i64
  %i.azr = getelementptr [8 x i8], ptr %i.ad, i64 %i.azq
  %i.azs = getelementptr i8, ptr %i.azr, i64 8
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %i.azo, ptr noundef nonnull @c__1, ptr noundef %i.azs, ptr noundef nonnull @c__1) #7
  br label %bb.eu

bb.eu:                                            ; preds = %._crit_edge2005, %bb.es, %bb.et, %bb.ek, %bb.el
  %i.azt = load i32, ptr %i.a, align 4, !tbaa !34
  %i.azu = sext i32 %i.azt to i64
  %.not1881.not = icmp slt i64 %indvars.iv2083, %i.azu
  %indvars.iv.next2076 = add nuw nsw i64 %indvars.iv2075, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %.not1881.not, label %bb.ec, label %.loopexit, !llvm.loop !32

.loopexit.loopexit2345.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod2353.not = icmp eq i64 %xtraiter2352, 0
  br i1 %lcmp.mod2353.not, label %.loopexit, label %.lr.ph2015.epil.preheader

.lr.ph2015.epil.preheader:                        ; preds = %.loopexit.loopexit2345.unr-lcssa, %.lr.ph2015.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph2015.preheader ], [ %i.jv, %.loopexit.loopexit2345.unr-lcssa ]
  %indvars.iv2087.epil.init = phi i64 [ 1, %.lr.ph2015.preheader ], [ %indvars.iv.next2088.3, %.loopexit.loopexit2345.unr-lcssa ]
  %lcmp.mod2354 = icmp ne i64 %xtraiter2352, 0
  call void @llvm.assume(i1 %lcmp.mod2354)
  br label %.lr.ph2015.epil

.lr.ph2015.epil:                                  ; preds = %bb.ew, %.lr.ph2015.epil.preheader
  %i.azv = phi i32 [ %.epil.init, %.lr.ph2015.epil.preheader ], [ %i.baa, %bb.ew ] ; 2 uses
  %indvars.iv2087.epil = phi i64 [ %indvars.iv2087.epil.init, %.lr.ph2015.epil.preheader ], [ %indvars.iv.next2088.epil, %bb.ew ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph2015.epil.preheader ], [ %epil.iter.next, %bb.ew ]
  %i.azw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv2087.epil
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !36
  %i.azy = fcmp une double %i.azx, 0.000000e+00
  br i1 %i.azy, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph2015.epil
  %i.azz = add nsw i32 %i.azv, 1                  ; 2 uses
  store i32 %i.azz, ptr %28, align 4, !tbaa !34
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph2015.epil
  %i.baa = phi i32 [ %i.azv, %.lr.ph2015.epil ], [ %i.azz, %bb.ev ]
  %indvars.iv.next2088.epil = add nuw nsw i64 %indvars.iv2087.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2352
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph2015.epil, !llvm.loop !33

.loopexit:                                        ; preds = %.loopexit.loopexit2345.unr-lcssa, %bb.ew, %bb.eu, %bb.r, %._crit_edge1998, %bb.aa, %.thread1913, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare void @dlas2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
