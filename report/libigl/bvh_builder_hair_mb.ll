Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_:bb.a
  store i16 %i.awd, ptr %i.awg, align 2, !noalias !604
  %i.awh = load float, ptr %i.aok, align 16, !noalias !605
  %i.awi = call noundef float @llvm.ceil.f32(float %i.awh) ; 2 uses
  %i.awj = fcmp olt float %i.awi, 3.276700e+04
  %i.awk = select i1 %i.awj, float %i.awi, float 3.276700e+04 ; 2 uses
  %i.awl = fcmp olt float %i.awk, -3.276700e+04
  %i.awm = select i1 %i.awl, float -3.276700e+04, float %i.awk
  %i.awn = fptosi float %i.awm to i16
  %i.awo = mul nuw nsw i64 %i.aup, 13
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.awo
  %i.awq = getelementptr inbounds nuw [2 x i8], ptr %i.awp, i64 %.060.i637
  store i16 %i.awn, ptr %i.awq, align 2, !noalias !604
  %i.awr = fptosi float %.sroa.0471.0.vec.extract to i16
  %i.aws = trunc i16 %i.awr to i8
  %i.awt = mul nuw nsw i64 %i.aup, 15
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 %.060.i637
  store i8 %i.aws, ptr %i.awv, align 1, !noalias !604
  %i.aww = shl nuw nsw i64 %i.aup, 4
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aww
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 %.060.i637
  %i.awz = mul nuw nsw i64 %i.aup, 17
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.awz
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 %.060.i637
  %i.axc = mul nuw nsw i64 %i.aup, 18
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axc
  %i.axe = getelementptr inbounds nuw [2 x i8], ptr %i.axd, i64 %.060.i637
  %i.axf = mul nuw nsw i64 %i.aup, 20
  %i.axg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axf
  %i.axh = getelementptr inbounds nuw [2 x i8], ptr %i.axg, i64 %.060.i637
  %i.axi = mul nuw nsw i64 %i.aup, 22
  %i.axj = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axi
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %i.axj, i64 %.060.i637
  %i.axl = mul nuw nsw i64 %i.aup, 24
  %i.axm = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axl
  %i.axn = getelementptr inbounds nuw [2 x i8], ptr %i.axm, i64 %.060.i637
  %i.axo = mul nuw nsw i64 %i.aup, 26
  %i.axp = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axo
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 %.060.i637
  %i.axr = shufflevector <4 x float> %i.aso, <4 x float> %i.asw, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.axs = fptosi <4 x float> %i.axr to <4 x i16>
  %i.axt = trunc <4 x i16> %i.axs to <4 x i8>     ; 4 uses
  %i.axu = extractelement <4 x i8> %i.axt, i64 0
  store i8 %i.axu, ptr %i.awy, align 1, !noalias !604
  %i.axv = extractelement <4 x i8> %i.axt, i64 1
  store i8 %i.axv, ptr %i.axb, align 1, !noalias !604
  %i.axw = load float, ptr %i.aol, align 4, !noalias !605
  %i.axx = call noundef float @llvm.floor.f32(float %i.axw) ; 2 uses
  %i.axy = fcmp olt float %i.axx, 3.276700e+04
  %i.axz = select i1 %i.axy, float %i.axx, float 3.276700e+04 ; 2 uses
  %i.aya = fcmp olt float %i.axz, -3.276700e+04
  %i.ayb = select i1 %i.aya, float -3.276700e+04, float %i.axz
  %i.ayc = fptosi float %i.ayb to i16
  store i16 %i.ayc, ptr %i.axe, align 2, !noalias !604
  %i.ayd = load float, ptr %i.aom, align 4, !noalias !605
  %i.aye = call noundef float @llvm.ceil.f32(float %i.ayd) ; 2 uses
  %i.ayf = fcmp olt float %i.aye, 3.276700e+04
  %i.ayg = select i1 %i.ayf, float %i.aye, float 3.276700e+04 ; 2 uses
  %i.ayh = fcmp olt float %i.ayg, -3.276700e+04
  %i.ayi = select i1 %i.ayh, float -3.276700e+04, float %i.ayg
  %i.ayj = fptosi float %i.ayi to i16
  store i16 %i.ayj, ptr %i.axh, align 2, !noalias !604
  %i.ayk = load float, ptr %i.aon, align 4, !noalias !605
  %i.ayl = call noundef float @llvm.floor.f32(float %i.ayk) ; 2 uses
  %i.aym = fcmp olt float %i.ayl, 3.276700e+04
  %i.ayn = select i1 %i.aym, float %i.ayl, float 3.276700e+04 ; 2 uses
  %i.ayo = fcmp olt float %i.ayn, -3.276700e+04
  %i.ayp = select i1 %i.ayo, float -3.276700e+04, float %i.ayn
  %i.ayq = fptosi float %i.ayp to i16
  store i16 %i.ayq, ptr %i.axk, align 2, !noalias !604
  %i.ayr = load float, ptr %i.aoo, align 4, !noalias !605
  %i.ays = call noundef float @llvm.ceil.f32(float %i.ayr) ; 2 uses
  %i.ayt = fcmp olt float %i.ays, 3.276700e+04
  %i.ayu = select i1 %i.ayt, float %i.ays, float 3.276700e+04 ; 2 uses
  %i.ayv = fcmp olt float %i.ayu, -3.276700e+04
  %i.ayw = select i1 %i.ayv, float -3.276700e+04, float %i.ayu
  %i.ayx = fptosi float %i.ayw to i16
  store i16 %i.ayx, ptr %i.axn, align 2, !noalias !604
  %i.ayy = extractelement <4 x i8> %i.axt, i64 2
  store i8 %i.ayy, ptr %i.axq, align 1, !noalias !604
  %i.ayz = mul nuw nsw i64 %i.aup, 27
  %i.aza = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 %.060.i637
  %i.azc = extractelement <4 x i8> %i.axt, i64 3
  store i8 %i.azc, ptr %i.azb, align 1, !noalias !604
  %i.azd = fptosi float %.sroa.0469.8.vec.extract to i16
  %i.aze = trunc i16 %i.azd to i8
  %i.azf = mul nuw nsw i64 %i.aup, 28
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.azf
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 %.060.i637
  store i8 %i.aze, ptr %i.azh, align 1, !noalias !604
  %i.azi = load float, ptr %i.aop, align 8, !noalias !605
  %i.azj = call noundef float @llvm.floor.f32(float %i.azi) ; 2 uses
  %i.azk = fcmp olt float %i.azj, 3.276700e+04
  %i.azl = select i1 %i.azk, float %i.azj, float 3.276700e+04 ; 2 uses
  %i.azm = fcmp olt float %i.azl, -3.276700e+04
  %i.azn = select i1 %i.azm, float -3.276700e+04, float %i.azl
  %i.azo = fptosi float %i.azn to i16
  %i.azp = mul nuw nsw i64 %i.aup, 29
  %i.azq = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.azp
  %i.azr = getelementptr inbounds nuw [2 x i8], ptr %i.azq, i64 %.060.i637
  store i16 %i.azo, ptr %i.azr, align 2, !noalias !604
  %i.azs = load float, ptr %i.aoq, align 8, !noalias !605
  %i.azt = call noundef float @llvm.ceil.f32(float %i.azs) ; 2 uses
  %i.azu = fcmp olt float %i.azt, 3.276700e+04
  %i.azv = select i1 %i.azu, float %i.azt, float 3.276700e+04 ; 2 uses
  %i.azw = fcmp olt float %i.azv, -3.276700e+04
  %i.azx = select i1 %i.azw, float -3.276700e+04, float %i.azv
  %i.azy = fptosi float %i.azx to i16
  %i.azz = mul nuw nsw i64 %i.aup, 31
  %i.baa = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.azz
  %i.bab = getelementptr inbounds nuw [2 x i8], ptr %i.baa, i64 %.060.i637
  store i16 %i.azy, ptr %i.bab, align 2, !noalias !604
  %i.bac = load float, ptr %i.aor, align 8, !noalias !605
  %i.bad = call noundef float @llvm.floor.f32(float %i.bac) ; 2 uses
  %i.bae = fcmp olt float %i.bad, 3.276700e+04
  %i.baf = select i1 %i.bae, float %i.bad, float 3.276700e+04 ; 2 uses
  %i.bag = fcmp olt float %i.baf, -3.276700e+04
  %i.bah = select i1 %i.bag, float -3.276700e+04, float %i.baf
  %i.bai = fptosi float %i.bah to i16
  %i.baj = mul nuw nsw i64 %i.aup, 33
  %i.bak = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.baj
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.bak, i64 %.060.i637
  store i16 %i.bai, ptr %i.bal, align 2, !noalias !604
  %i.bam = load float, ptr %i.aos, align 8, !noalias !605
  %i.ban = call noundef float @llvm.ceil.f32(float %i.bam) ; 2 uses
  %i.bao = fcmp olt float %i.ban, 3.276700e+04
  %i.bap = select i1 %i.bao, float %i.ban, float 3.276700e+04 ; 2 uses
  %i.baq = fcmp olt float %i.bap, -3.276700e+04
  %i.bar = select i1 %i.baq, float -3.276700e+04, float %i.bap
  %i.bas = fptosi float %i.bar to i16
  %i.bat = mul nuw nsw i64 %i.aup, 35
  %i.bau = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.bat
  %i.bav = getelementptr inbounds nuw [2 x i8], ptr %i.bau, i64 %.060.i637
  store i16 %i.bas, ptr %i.bav, align 2, !noalias !604
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.aqf, i64 %.060.i637
  store i32 %i.arw, ptr %i.baw, align 4, !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !605
  %i.bax = add nuw nsw i64 %.060.i637, 1
  %i.bay = add nuw i64 %.1577636, 1               ; 3 uses
  %i.baz = icmp samesign ult i64 %.060.i637, 3
  %i.bba = icmp ult i64 %i.bay, %i.aoz
  %or.cond = select i1 %i.baz, i1 %i.bba, i1 false
  br i1 %or.cond, label %.lr.ph639, label %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit, !llvm.loop !578

_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit: ; preds = %.lr.ph639, %._crit_edge
  %.1577.lcssa = phi i64 [ %.0576641, %._crit_edge ], [ %i.bay, %.lr.ph639 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bbb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0161.0645, <4 x float> %.sroa.0152.0.lcssa) ; 2 uses
  %i.bbc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6163.0644, <4 x float> %.sroa.7.0.lcssa) ; 2 uses
  %i.bbd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10165.0643, <4 x float> %.sroa.12.0.lcssa) ; 2 uses
  %i.bbe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14167.0642, <4 x float> %.sroa.17.0.lcssa) ; 2 uses
  %i.bbf = add nuw nsw i64 %.0.i13646, 1          ; 2 uses
  %exitcond717.not = icmp eq i64 %i.bbf, %i.ow
  br i1 %exitcond717.not, label %_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, label %bb.dh, !llvm.loop !579

_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit: ; preds = %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27
  %.sroa.14167.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.bbe, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.10165.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.bbd, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.6163.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.bbc, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.0161.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.bbb, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %i.bbg = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %i.anx, ptr %0, align 16, !alias.scope !604
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0161.0.lcssa, ptr %i.bbh, align 16
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6163.0.lcssa, ptr %i.bbi, align 16
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.10165.0.lcssa, ptr %i.bbj, align 16
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.14167.0.lcssa, ptr %i.bbk, align 16
  %i.bbl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bbm = load i64, ptr %i.bbg, align 8, !noalias !604
  store i64 %i.bbm, ptr %i.bbl, align 16, !alias.scope !604
  br label %bb.di

bb.di:                                            ; preds = %_ZN6embree7PointMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, %_ZN6embree6LineMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, %_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 16 dereferenceable(152) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %.critedge37.i, %bb.a
  %.sroa.5766.0 = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.5766.3, %.critedge37.i ] ; 2 uses
  %.sroa.5264.0 = phi i64 [ 0, %bb.a ], [ %.sroa.5264.3, %.critedge37.i ] ; 2 uses
  %.sroa.4662.0 = phi i64 [ 0, %bb.a ], [ %i.cv, %.critedge37.i ] ; 2 uses
  %.sroa.4059.0 = phi i64 [ 0, %bb.a ], [ %i.cu, %.critedge37.i ] ; 2 uses
  %.sroa.3255.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ct, %.critedge37.i ] ; 2 uses
  %.sroa.2652.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.cs, %.critedge37.i ] ; 2 uses
  %.sroa.2049.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.cr, %.critedge37.i ] ; 2 uses
  %.sroa.1446.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.cq, %.critedge37.i ] ; 2 uses
  %.sroa.843.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.cp, %.critedge37.i ] ; 2 uses
  %.sroa.040.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.co, %.critedge37.i ] ; 2 uses
  %.sroa.68.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.dz, %.critedge37.i ] ; 2 uses
  %.sroa.63.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.dw, %.critedge37.i ] ; 2 uses
  %.sroa.52.0 = phi i64 [ 0, %bb.a ], [ %.sroa.52.3, %.critedge37.i ] ; 2 uses
  %.sroa.46.0 = phi i64 [ 0, %bb.a ], [ %i.ed, %.critedge37.i ] ; 2 uses
  %.sroa.40.0 = phi i64 [ 0, %bb.a ], [ %i.ea, %.critedge37.i ]
  %.sroa.32.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.dq, %.critedge37.i ] ; 2 uses
  %.sroa.26.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dp, %.critedge37.i ] ; 2 uses
  %.sroa.20.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.do, %.critedge37.i ] ; 2 uses
  %.sroa.14.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dn, %.critedge37.i ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.dm, %.critedge37.i ] ; 2 uses
  %.sroa.021.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dl, %.critedge37.i ] ; 2 uses
  %.sroa.6067.0 = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.6067.3, %.critedge37.i ] ; 2 uses
  %.sroa.6368.0 = phi float [ 1.000000e+00, %bb.a ], [ %13, %.critedge37.i ] ; 2 uses
  %.sroa.6870.0 = phi float [ 0.000000e+00, %bb.a ], [ %16, %.critedge37.i ] ; 2 uses
  %.033.i = phi ptr [ %i.i, %bb.a ], [ %i.ep, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.l, %bb.a ], [ %.1.i176, %.critedge37.i ]
  %i.m = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.ej, %.critedge37.i ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 4 uses
  %.not.i119 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i119, label %.critedge.i.preheader, label %.lr.ph, !prof !45

.lr.ph:                                           ; preds = %bb.b, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit
  %.134.i133 = phi ptr [ %i.as, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.033.i, %bb.b ] ; 9 uses
  %.sroa.6870.1132 = phi float [ %10, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6870.0, %bb.b ] ; 3 uses
  %.sroa.6368.1131 = phi float [ %6, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6368.0, %bb.b ] ; 3 uses
  %.sroa.6067.1130 = phi float [ %.sroa.6067.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6067.0, %bb.b ] ; 2 uses
  %.sroa.040.1129.a = phi <4 x float> [ %i.ae, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.040.0, %bb.b ] ; 2 uses
  %.sroa.843.1128 = phi <4 x float> [ %i.af, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.843.0, %bb.b ] ; 2 uses
  %.sroa.1446.1127 = phi <4 x float> [ %i.ag, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.1446.0, %bb.b ] ; 2 uses
  %.sroa.2049.1126 = phi <4 x float> [ %i.ah, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2049.0, %bb.b ] ; 2 uses
  %.sroa.2652.1125 = phi <4 x float> [ %i.ai, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2652.0, %bb.b ] ; 2 uses
  %.sroa.3255.1124 = phi <4 x float> [ %i.aj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.3255.0, %bb.b ] ; 2 uses
  %.sroa.4059.1123.a = phi i64 [ %i.al, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4059.0, %bb.b ] ; 2 uses
  %.sroa.4662.1122 = phi i64 [ %i.ao, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4662.0, %bb.b ] ; 2 uses
  %.sroa.5264.1121 = phi i64 [ %.sroa.5264.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5264.0, %bb.b ] ; 3 uses
  %.sroa.5766.1120 = phi float [ %.sroa.5766.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5766.0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.134.i133, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %i.k
  br i1 %i.p, label %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit, label %.critedge.i.preheader, !prof !41

.critedge.i.preheader:                            ; preds = %.lr.ph, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit, %bb.b
  %.sroa.5766.1.lcssa = phi float [ %.sroa.5766.0, %bb.b ], [ %.sroa.5766.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5766.1120, %.lr.ph ] ; 2 uses
  %.sroa.5264.1.lcssa = phi i64 [ %.sroa.5264.0, %bb.b ], [ %.sroa.5264.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5264.1121, %.lr.ph ] ; 3 uses
  %.sroa.4662.1.lcssa = phi i64 [ %.sroa.4662.0, %bb.b ], [ %i.ao, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4662.1122, %.lr.ph ] ; 2 uses
  %.sroa.4059.1.lcssa = phi i64 [ %.sroa.4059.0, %bb.b ], [ %i.al, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4059.1123.a, %.lr.ph ]
  %.sroa.3255.1.lcssa = phi <4 x float> [ %.sroa.3255.0, %bb.b ], [ %i.aj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.3255.1124, %.lr.ph ] ; 2 uses
  %.sroa.2652.1.lcssa = phi <4 x float> [ %.sroa.2652.0, %bb.b ], [ %i.ai, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2652.1125, %.lr.ph ] ; 2 uses
  %.sroa.2049.1.lcssa = phi <4 x float> [ %.sroa.2049.0, %bb.b ], [ %i.ah, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2049.1126, %.lr.ph ] ; 2 uses
  %.sroa.1446.1.lcssa = phi <4 x float> [ %.sroa.1446.0, %bb.b ], [ %i.ag, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.1446.1127, %.lr.ph ] ; 2 uses
  %.sroa.843.1.lcssa = phi <4 x float> [ %.sroa.843.0, %bb.b ], [ %i.af, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.843.1128, %.lr.ph ] ; 2 uses
  %.sroa.040.1.lcssa = phi <4 x float> [ %.sroa.040.0, %bb.b ], [ %i.ae, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.040.1129.a, %.lr.ph ] ; 2 uses
  %.sroa.6067.1.lcssa = phi float [ %.sroa.6067.0, %bb.b ], [ %.sroa.6067.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6067.1130, %.lr.ph ] ; 2 uses
  %.sroa.6368.1.lcssa = phi float [ %.sroa.6368.0, %bb.b ], [ %6, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6368.1131, %.lr.ph ] ; 4 uses
  %.sroa.6870.1.lcssa = phi float [ %.sroa.6870.0, %bb.b ], [ %10, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6870.1132, %.lr.ph ] ; 4 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.b ], [ %i.as, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.134.i133, %.lr.ph ] ; 11 uses
  %.not35.i162 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i162, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSH_3SetENS_11OBBNodeMB_tISB_Li4EE6CreateENSL_3SetEZNS7_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESY_RSW_S17_EUlRKS1_E_ZNS16_15splitByGeometryESY_S17_S17_EUlRS6_S19_E_EEmPT_mmRT0_S1G_RKT1_RKT2_.exit, label %.lr.ph177, !prof !45

_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit: ; preds = %.lr.ph
  %i.q = load <4 x float>, ptr %.134.i133, align 16, !noalias !633 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.134.i133, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 16, !noalias !634 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.134.i133, i64 32
  %i.u = load <4 x float>, ptr %i.t, align 16, !noalias !635 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i133, i64 48
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !636 ; 3 uses
  %i.x = fmul <4 x float> %i.u, splat (float 5.000000e-01)
  %i.y = fmul <4 x float> %i.q, splat (float 5.000000e-01)
  %i.z = fadd <4 x float> %i.y, %i.x
  %i.aa = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  %i.ab = fmul <4 x float> %i.s, splat (float 5.000000e-01)
  %i.ac = fadd <4 x float> %i.ab, %i.aa
  %i.ad = fadd <4 x float> %i.z, %i.ac            ; 2 uses
  %i.ae = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.040.1129.a, <4 x float> %i.q) ; 2 uses
  %i.af = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.843.1128, <4 x float> %i.s) ; 2 uses
  %i.ag = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1446.1127, <4 x float> %i.u) ; 2 uses
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2049.1126, <4 x float> %i.w) ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2652.1125, <4 x float> %i.ad) ; 2 uses
  %i.aj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3255.1124, <4 x float> %i.ad) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.134.i133, i64 64
  %4 = load float, ptr %i.ak, align 16            ; 3 uses
  %5 = fcmp olt float %.sroa.6368.1131, %4
  %6 = select i1 %5, float %.sroa.6368.1131, float %4 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.134.i133, i64 68
  %8 = load float, ptr %7, align 4                ; 3 uses
  %9 = fcmp olt float %.sroa.6870.1132, %8
  %10 = select i1 %9, float %8, float %.sroa.6870.1132 ; 2 uses
  %i.al = add i64 %.sroa.4059.1123.a, 1           ; 2 uses
  %bc = bitcast <4 x float> %i.u to <4 x i32>
  %i.am = extractelement <4 x i32> %bc, i64 3
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %.sroa.4662.1122, %i.an         ; 2 uses
  %bc298 = bitcast <4 x float> %i.w to <4 x i32>
  %i.ap = extractelement <4 x i32> %bc298, i64 3
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ult i64 %.sroa.5264.1121, %i.aq    ; 2 uses
  %.sroa.5766.2 = select i1 %i.ar, float %4, float %.sroa.5766.1120 ; 2 uses
  %.sroa.5264.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5264.1121, i64 %i.aq) ; 2 uses
  %.sroa.6067.2 = select i1 %i.ar, float %8, float %.sroa.6067.1130 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.134.i133, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.as, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph, !prof !46, !llvm.loop !622

.lr.ph177:                                        ; preds = %.critedge.i.preheader, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11
  %.1.i176 = phi ptr [ %i.ci, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.0.i, %.critedge.i.preheader ] ; 14 uses
  %.sroa.021.1175 = phi <4 x float> [ %i.bq, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.021.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8.1174 = phi <4 x float> [ %i.br, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14.1173 = phi <4 x float> [ %i.bs, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20.1172 = phi <4 x float> [ %i.bt, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.26.1171 = phi <4 x float> [ %i.bu, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.32.1170 = phi <4 x float> [ %i.bv, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.40.1169 = phi i64 [ %i.cc, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.40.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.46.1168 = phi i64 [ %i.cd, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.46.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1167 = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.52.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.63.1164 = phi float [ %i.by, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.68.1163 = phi float [ %i.cb, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 4 uses
  %i.at = phi <2 x float> [ %i.ch, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %i.m, %.critedge.i.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i176, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %.not = icmp eq i32 %i.av, %i.k
  %i.aw = load <4 x float>, ptr %.1.i176, align 16, !noalias !35 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i176, i64 16
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !noalias !35 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i176, i64 32
  %i.ba = load <4 x float>, ptr %i.az, align 16, !noalias !35 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i176, i64 48
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !35 ; 4 uses
  %i.bd = fmul <4 x float> %i.ba, splat (float 5.000000e-01)
  %i.be = fmul <4 x float> %i.aw, splat (float 5.000000e-01)
  %i.bf = fadd <4 x float> %i.be, %i.bd
  %i.bg = fmul <4 x float> %i.bc, splat (float 5.000000e-01)
  %i.bh = fmul <4 x float> %i.ay, splat (float 5.000000e-01)
  %i.bi = fadd <4 x float> %i.bh, %i.bg
  %i.bj = fadd <4 x float> %i.bf, %i.bi           ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i176, i64 64
  %i.bl = load <2 x float>, ptr %i.bk, align 16   ; 5 uses
  %bc301 = bitcast <4 x float> %i.ba to <4 x i32>
  %i.bm = extractelement <4 x i32> %bc301, i64 3
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %bc302 = bitcast <4 x float> %i.bc to <4 x i32>
  %i.bo = extractelement <4 x i32> %bc302, i64 3
  %i.bp = zext i32 %i.bo to i64                   ; 4 uses
  br i1 %.not, label %.critedge37.i, label %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11, !prof !40

_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11: ; preds = %.lr.ph177
  %i.bq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.021.1175, <4 x float> %i.aw) ; 2 uses
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1174, <4 x float> %i.ay) ; 2 uses
  %i.bs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1173, <4 x float> %i.ba) ; 2 uses
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1172, <4 x float> %i.bc) ; 2 uses
  %i.bu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1171, <4 x float> %i.bj) ; 2 uses
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1170, <4 x float> %i.bj) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bx = fcmp olt float %.sroa.63.1164, %i.bw
  %i.by = select i1 %i.bx, float %.sroa.63.1164, float %i.bw ; 2 uses
  %i.bz = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.ca = fcmp olt float %.sroa.68.1163, %i.bz
  %i.cb = select i1 %i.ca, float %i.bz, float %.sroa.68.1163 ; 2 uses
  %i.cc = add i64 %.sroa.40.1169, 1
  %i.cd = add i64 %.sroa.46.1168, %i.bn           ; 2 uses
  %i.ce = icmp ult i64 %.sroa.52.1167, %i.bp
  %i.cf = insertelement <2 x i1> poison, i1 %i.ce, i64 0
  %i.cg = shufflevector <2 x i1> %i.cf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ch = select <2 x i1> %i.cg, <2 x float> %i.bl, <2 x float> %i.at ; 2 uses
  %.sroa.52.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1167, i64 %i.bp) ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.1.i176, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.ci
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSH_3SetENS_11OBBNodeMB_tISB_Li4EE6CreateENSL_3SetEZNS7_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESY_RSW_S17_EUlRKS1_E_ZNS16_15splitByGeometryESY_S17_S17_EUlRS6_S19_E_EEmPT_mmRT0_S1G_RKT1_RKT2_.exit, label %.lr.ph177, !prof !46, !llvm.loop !623

.critedge37.i:                                    ; preds = %.lr.ph177
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i176, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i176, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i176, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i176, i64 64 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i176, i64 68
  %i.co = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.040.1.lcssa, <4 x float> %i.aw)
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.843.1.lcssa, <4 x float> %i.ay)
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1446.1.lcssa, <4 x float> %i.ba)
  %i.cr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2049.1.lcssa, <4 x float> %i.bc)
  %i.cs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2652.1.lcssa, <4 x float> %i.bj)
  %i.ct = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3255.1.lcssa, <4 x float> %i.bj)
  %11 = extractelement <2 x float> %i.bl, i64 0   ; 3 uses
  %12 = fcmp olt float %.sroa.6368.1.lcssa, %11
  %13 = select i1 %12, float %.sroa.6368.1.lcssa, float %11
  %14 = extractelement <2 x float> %i.bl, i64 1   ; 3 uses
  %15 = fcmp olt float %.sroa.6870.1.lcssa, %14
  %16 = select i1 %15, float %14, float %.sroa.6870.1.lcssa
  %i.cu = add i64 %.sroa.4059.1.lcssa, 1
  %i.cv = add i64 %.sroa.4662.1.lcssa, %i.bn
  %i.cw = icmp ult i64 %.sroa.5264.1.lcssa, %i.bp ; 2 uses
  %.sroa.5766.3 = select i1 %i.cw, float %11, float %.sroa.5766.1.lcssa
  %.sroa.5264.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5264.1.lcssa, i64 %i.bp)
  %.sroa.6067.3 = select i1 %i.cw, float %14, float %.sroa.6067.1.lcssa
  %i.cx = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !637 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !noalias !638 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.db = load <4 x float>, ptr %i.da, align 16, !noalias !639 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !noalias !640 ; 4 uses
  %i.de = fmul <4 x float> %i.db, splat (float 5.000000e-01)
  %i.df = fmul <4 x float> %i.cx, splat (float 5.000000e-01)
  %i.dg = fadd <4 x float> %i.df, %i.de
  %i.dh = fmul <4 x float> %i.dd, splat (float 5.000000e-01)
  %i.di = fmul <4 x float> %i.cz, splat (float 5.000000e-01)
  %i.dj = fadd <4 x float> %i.di, %i.dh
  %i.dk = fadd <4 x float> %i.dg, %i.dj           ; 2 uses
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.021.1175, <4 x float> %i.cx)
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1174, <4 x float> %i.cz)
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1173, <4 x float> %i.db)
  %i.do = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1172, <4 x float> %i.dd)
  %i.dp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1171, <4 x float> %i.dk)
  %i.dq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1170, <4 x float> %i.dk)
  %i.dr = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.dt = load <2 x float>, ptr %i.dr, align 16   ; 4 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dv = fcmp olt float %.sroa.63.1164, %i.du
  %i.dw = select i1 %i.dv, float %.sroa.63.1164, float %i.du
  %i.dx = extractelement <2 x float> %i.dt, i64 1 ; 2 uses
  %i.dy = fcmp olt float %.sroa.68.1163, %i.dx
  %i.dz = select i1 %i.dy, float %i.dx, float %.sroa.68.1163
  %i.ea = add i64 %.sroa.40.1169, 1
  %bc303 = bitcast <4 x float> %i.db to <4 x i32>
  %i.eb = extractelement <4 x i32> %bc303, i64 3
  %i.ec = zext i32 %i.eb to i64
  %i.ed = add i64 %.sroa.46.1168, %i.ec
  %bc304 = bitcast <4 x float> %i.dd to <4 x i32>
  %i.ee = extractelement <4 x i32> %bc304, i64 3
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = icmp ult i64 %.sroa.52.1167, %i.ef
  %i.eh = insertelement <2 x i1> poison, i1 %i.eg, i64 0
  %i.ei = shufflevector <2 x i1> %i.eh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ej = select <2 x i1> %i.ei, <2 x float> %i.dt, <2 x float> %i.at
  %.sroa.52.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1167, i64 %i.ef)
  store <4 x float> %i.aw, ptr %.134.i.lcssa, align 16
  %i.ek = load <4 x float>, ptr %i.cj, align 16
  store <4 x float> %i.ek, ptr %i.cy, align 16
  %i.el = load <4 x float>, ptr %i.ck, align 16
  store <4 x float> %i.el, ptr %i.da, align 16
  %i.em = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.em, ptr %i.dc, align 16
  %i.en = load float, ptr %i.cm, align 16
  store float %i.en, ptr %i.dr, align 16
  %i.eo = load float, ptr %i.cn, align 4
  store float %i.eo, ptr %i.ds, align 4
  store <4 x float> %i.cx, ptr %.1.i176, align 16
  store <4 x float> %i.cz, ptr %i.cj, align 16
  store <4 x float> %i.db, ptr %i.ck, align 16
  store <4 x float> %i.dd, ptr %i.cl, align 16
  store <2 x float> %i.dt, ptr %i.cm, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !632

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSH_3SetENS_11OBBNodeMB_tISB_Li4EE6CreateENSL_3SetEZNS7_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESY_RSW_S17_EUlRKS1_E_ZNS16_15splitByGeometryESY_S17_S17_EUlRS6_S19_E_EEmPT_mmRT0_S1G_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11
  %.sroa.68.1.lcssa = phi float [ %i.cb, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.63.1.lcssa = phi float [ %i.by, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1.lcssa = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.52.0, %.critedge.i.preheader ]
  %.sroa.46.1.lcssa = phi i64 [ %i.cd, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.46.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.bv, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.bu, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.bt, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.bs, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.br, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.021.1.lcssa = phi <4 x float> [ %i.bq, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.021.0, %.critedge.i.preheader ]
  %i.eq = phi <2 x float> [ %i.ch, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %i.m, %.critedge.i.preheader ]
  %i.er = ptrtoint ptr %.134.i.lcssa to i64
  %i.es = ptrtoint ptr %i.h to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = sdiv exact i64 %i.et, 80                ; 2 uses
  %i.ev = load ptr, ptr %i.e, align 16
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ew, align 8 ; 2 uses
  store <4 x float> %.sroa.040.1.lcssa, ptr %2, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.843.1.lcssa, ptr %i.ex, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1446.1.lcssa, ptr %i.ey, align 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.2049.1.lcssa, ptr %i.ez, align 16
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.2652.1.lcssa, ptr %i.fa, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.3255.1.lcssa, ptr %i.fb, align 16
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.4662.1.lcssa, ptr %i.fe, align 16
  %.sroa.5264.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.5264.1.lcssa, ptr %.sroa.5264.112..sroa_idx, align 8
  %.sroa.5766.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  store float %.sroa.5766.1.lcssa, ptr %.sroa.5766.112..sroa_idx, align 16
  %.sroa.6067.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 132
  store float %.sroa.6067.1.lcssa, ptr %.sroa.6067.112..sroa_idx, align 4
  %.sroa.6368.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.6870.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.ev, ptr %i.ff, align 16
  store i64 %i.b, ptr %i.fc, align 16
  store i64 %i.eu, ptr %i.fd, align 8
  %.sroa.091.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %17 = fcmp olt float %.sroa.6368.1.lcssa, %.sroa.091.0.vec.extract
  %18 = select i1 %17, float %.sroa.091.0.vec.extract, float %.sroa.6368.1.lcssa
  %.sroa.091.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload, i64 1 ; 2 uses
  %19 = fcmp olt float %.sroa.6870.1.lcssa, %.sroa.091.4.vec.extract
  %20 = select i1 %19, float %.sroa.6870.1.lcssa, float %.sroa.091.4.vec.extract
  store float %18, ptr %.sroa.6368.112..sroa_idx, align 8
  store float %20, ptr %.sroa.6870.112..sroa_idx, align 4
  %i.fg = load ptr, ptr %i.e, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ew, align 8 ; 2 uses
  store <4 x float> %.sroa.021.1.lcssa, ptr %3, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.fh, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.fi, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.fl, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.46.1.lcssa, ptr %i.fo, align 16
  %.sroa.52.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.52.1.lcssa, ptr %.sroa.52.112..sroa_idx, align 8
  %.sroa.57.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> %i.eq, ptr %.sroa.57.112..sroa_idx, align 16
  %.sroa.63.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.sroa.68.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.fg, ptr %i.fp, align 16
  store i64 %i.eu, ptr %i.fm, align 16
  store i64 %i.d, ptr %i.fn, align 8
  %.sroa.089.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.fq = fcmp olt float %.sroa.63.1.lcssa, %.sroa.089.0.vec.extract
  %i.fr = select i1 %i.fq, float %.sroa.089.0.vec.extract, float %.sroa.63.1.lcssa
  %.sroa.089.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.fs = fcmp olt float %.sroa.68.1.lcssa, %.sroa.089.4.vec.extract
  %i.ft = select i1 %i.fs, float %.sroa.68.1.lcssa, float %.sroa.089.4.vec.extract
  store float %i.fr, ptr %.sroa.63.112..sroa_idx, align 8
  store float %i.ft, ptr %.sroa.68.112..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 16 dereferenceable(152) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = add i64 %i.f, %i.d
  %i.h = lshr i64 %i.g, 1                         ; 6 uses
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, label %.preheader

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18

.preheader:                                       ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, %bb.a
  %.sroa.3646.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.av, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.030.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ah, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.l = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.bb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.m = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ], [ %i.as, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.n = icmp ult i64 %i.h, %i.f
  br i1 %i.n, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph, label %._crit_edge

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph: ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18
  %.0153 = phi i64 [ %i.d, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %.sroa.030.0151 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ah, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0150 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0149 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0148 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0147 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0146 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0144 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.av, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3646.0143 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %i.q = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.r = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.as, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %.0153 ; 5 uses
  %i.t = load <4 x float>, ptr %i.s, align 16, !noalias !657 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 16, !noalias !658 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load <4 x float>, ptr %i.w, align 16, !noalias !659 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !660 ; 3 uses
  %i.aa = fmul <4 x float> %i.x, splat (float 5.000000e-01)
  %i.ab = fmul <4 x float> %i.t, splat (float 5.000000e-01)
  %i.ac = fadd <4 x float> %i.ab, %i.aa
  %i.ad = fmul <4 x float> %i.z, splat (float 5.000000e-01)
  %i.ae = fmul <4 x float> %i.v, splat (float 5.000000e-01)
  %i.af = fadd <4 x float> %i.ae, %i.ad
  %i.ag = fadd <4 x float> %i.ac, %i.af           ; 2 uses
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151, <4 x float> %i.t) ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150, <4 x float> %i.v) ; 2 uses
  %i.aj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149, <4 x float> %i.x) ; 2 uses
  %i.ak = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148, <4 x float> %i.z) ; 2 uses
  %i.al = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147, <4 x float> %i.ag) ; 2 uses
  %i.am = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146, <4 x float> %i.ag) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = load <2 x float>, ptr %i.an, align 16   ; 4 uses
  %i.ap = fcmp olt <2 x float> %i.r, %i.ao
  %i.aq = shufflevector <2 x float> %i.r, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.ar = shufflevector <2 x float> %i.ao, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.as = select <2 x i1> %i.ap, <2 x float> %i.aq, <2 x float> %i.ar ; 2 uses
  %bc = bitcast <4 x float> %i.x to <4 x i32>
  %i.at = extractelement <4 x i32> %bc, i64 3
  %i.au = zext i32 %i.at to i64
  %i.av = add i64 %.sroa.3245.0144, %i.au         ; 2 uses
  %bc215 = bitcast <4 x float> %i.z to <4 x i32>
  %i.aw = extractelement <4 x i32> %bc215, i64 3
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp samesign ult i64 %.sroa.3646.0143, %i.ax
  %i.az = insertelement <2 x i1> poison, i1 %i.ay, i64 0
  %i.ba = shufflevector <2 x i1> %i.az, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.ao, <2 x float> %i.q ; 2 uses
  %.sroa.3646.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.3646.0143, i64 %i.ax) ; 2 uses
  %i.bc = add nuw nsw i64 %.0153, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.h
  br i1 %exitcond.not, label %.preheader, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, %.preheader
  %.sroa.36.0.lcssa = phi i64 [ 0, %.preheader ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.32.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.dm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.18.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.dc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.022.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.cy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.bd = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.be = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.bf, align 8 ; 3 uses
  store <4 x float> %.sroa.030.0.lcssa, ptr %2, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.632.0.lcssa, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1034.0.lcssa, ptr %i.bh, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.1436.0.lcssa, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.1838.0.lcssa, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.2240.0.lcssa, ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.3245.0.lcssa, ptr %i.bn, align 16
  %.sroa.3646.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.3646.0.lcssa, ptr %.sroa.3646.112..sroa_idx, align 8
  %.sroa.3947.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x float> %i.l, ptr %.sroa.3947.112..sroa_idx, align 16
  %.sroa.4349.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.b, ptr %i.bo, align 16
  store i64 %i.d, ptr %i.bl, align 16
  store i64 %i.h, ptr %i.bm, align 8
  %i.bp = fcmp olt <2 x float> %i.m, %.sroa.01.0.copyload
  %i.bq = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <2 x float> %i.m, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bs = select <2 x i1> %i.bp, <2 x float> %i.bq, <2 x float> %i.br
  store <2 x float> %i.bs, ptr %.sroa.4349.112..sroa_idx, align 8
  %i.bt = load ptr, ptr %i.a, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bf, align 8 ; 3 uses
  store <4 x float> %.sroa.022.0.lcssa, ptr %3, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.bu, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.bv, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.18.0.lcssa, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.32.0.lcssa, ptr %i.cb, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> %i.bd, ptr %.sroa.39.112..sroa_idx, align 16
  %.sroa.43.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.bt, ptr %i.cc, align 16
  store i64 %i.h, ptr %i.bz, align 16
  store i64 %i.f, ptr %i.ca, align 8
  %i.cd = fcmp olt <2 x float> %i.be, %.sroa.0.0.copyload
end_hunk_0
