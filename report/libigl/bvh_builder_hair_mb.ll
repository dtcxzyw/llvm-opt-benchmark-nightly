Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_:bb.a
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = load i64, ptr %i.ani, align 16, !noalias !604
  %i.ans = add i64 %i.anr, %i.anq                 ; 2 uses
  store i64 %i.ans, ptr %i.ani, align 16, !noalias !604
  %i.ant = load i64, ptr %i.b, align 8, !noalias !604 ; 2 uses
  store i64 %i.ant, ptr %i.amp, align 8, !noalias !604
  store i64 %i.amf, ptr %i.amj, align 16, !noalias !604
  %.not24.i26 = icmp ugt i64 %i.amf, %i.ant
  br i1 %.not24.i26, label %bb.df, label %bb.de, !prof !40

bb.de:                                            ; preds = %bb.dd
  store i64 %i.ans, ptr %i.ani, align 16, !noalias !604
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  store i64 0, ptr %i.amj, align 16, !noalias !604
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dc
  %.0.i25 = phi ptr [ %i.and, %bb.dc ], [ %i.ann, %bb.de ], [ null, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !604
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27: ; preds = %bb.cy, %bb.da, %bb.dg
  %.1.i23 = phi ptr [ %i.amx, %bb.cy ], [ %i.anc, %bb.da ], [ %.0.i25, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.anu = ptrtoint ptr %.1.i23 to i64
  %i.anv = call noundef i64 @llvm.umin.i64(i64 %i.ow, i64 7)
  %i.anw = or i64 %i.anv, %i.anu
  %i.anx = or i64 %i.anw, 8
  %.not686 = icmp eq i64 %i.ow, 0
  br i1 %.not686, label %_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, label %.lr.ph647

.lr.ph647:                                        ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27
  %i.any = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  %i.anz = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aoa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aob = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aoc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aod = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aoe = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aof = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aog = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aoh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aoi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aoj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aok = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aol = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aom = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.aon = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.aoo = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.aop = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aor = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aos = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph647, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit
  %.0.i13646 = phi i64 [ 0, %.lr.ph647 ], [ %i.bab, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ] ; 2 uses
  %.sroa.0161.0645 = phi <4 x float> [ splat (float +inf), %.lr.ph647 ], [ %i.azx, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.6163.0644 = phi <4 x float> [ splat (float -inf), %.lr.ph647 ], [ %i.azy, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.10165.0643 = phi <4 x float> [ splat (float +inf), %.lr.ph647 ], [ %i.azz, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.14167.0642 = phi <4 x float> [ splat (float -inf), %.lr.ph647 ], [ %i.baa, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.0576641 = phi i64 [ %i.k, %.lr.ph647 ], [ %.1577.lcssa, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ] ; 6 uses
  %i.aot = getelementptr inbounds nuw [178 x i8], ptr %.1.i23, i64 %.0.i13646 ; 5 uses
  %i.aou = load ptr, ptr %i.s, align 16, !noalias !604
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 32
  %i.aow = load ptr, ptr %i.aov, align 8, !noalias !604 ; 2 uses
  %i.aox = load ptr, ptr %i.any, align 8, !noalias !604
  %.sroa.01.0.copyload.i14 = load <2 x float>, ptr %i.anz, align 8, !noalias !604
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.01.0.copyload.i14, ptr %4, align 8, !noalias !605
  %i.aoy = add i64 %.0576641, 4
  %i.aoz = call noundef i64 @llvm.umin.i64(i64 %i.aoy, i64 %i.j) ; 3 uses
  %i.apa = sub i64 %i.aoz, %.0576641
  %i.apb = trunc i64 %i.apa to i8                 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aot, i64 1 ; 4 uses
  store i8 %i.apb, ptr %i.apc, align 1, !noalias !605
  %i.apd = getelementptr inbounds nuw [80 x i8], ptr %i.aow, i64 %.0576641 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 12
  %i.apf = load i32, ptr %i.ape, align 4, !noalias !605 ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aot, i64 2
  store i32 %i.apf, ptr %i.apg, align 4, !noalias !605
  %i.aph = zext i32 %i.apf to i64
  %i.api = getelementptr inbounds nuw i8, ptr %i.aox, i64 488 ; 4 uses
  %i.apj = load ptr, ptr %i.api, align 8, !noalias !605
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.aph
  %i.apl = load ptr, ptr %i.apk, align 8, !noalias !605
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 60
  %i.apn = load i32, ptr %i.apm, align 4, !noalias !605
  %i.apo = trunc i32 %i.apn to i8
  store i8 %i.apo, ptr %i.aot, align 2, !noalias !605
  %.not687 = icmp eq i8 %i.apb, 0
  br i1 %.not687, label %._crit_edge, label %.lr.ph631

._crit_edge:                                      ; preds = %.lr.ph631, %bb.dh
  %.sroa.17.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.dh ], [ %i.arn, %.lr.ph631 ] ; 2 uses
  %.sroa.12.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.dh ], [ %i.arl, %.lr.ph631 ] ; 2 uses
  %.sroa.7.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.dh ], [ %i.arj, %.lr.ph631 ] ; 2 uses
  %.sroa.0152.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.dh ], [ %i.arh, %.lr.ph631 ] ; 2 uses
  %i.app = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0152.0.lcssa, <4 x float> %.sroa.12.0.lcssa) ; 4 uses
  %i.apq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.0.lcssa, <4 x float> %.sroa.17.0.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !605
  store <4 x float> %i.app, ptr %6, align 16, !noalias !605
  %i.apr = fsub <4 x float> %i.apq, %i.app        ; 2 uses
  %i.aps = fmul <4 x float> %i.apr, <float f0x3FDDB3D7, float f0x3FDDB3D7, float f0x3FDDB3D7, float poison>
  %i.apt = fdiv <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float poison>, %i.aps ; 3 uses
  %.sroa.0496.0.vec.extract = extractelement <4 x float> %i.apt, i64 0 ; 2 uses
  %.sroa.0496.4.vec.extract = extractelement <4 x float> %i.apt, i64 1 ; 2 uses
  %i.apu = fcmp olt float %.sroa.0496.0.vec.extract, %.sroa.0496.4.vec.extract
  %i.apv = select i1 %i.apu, float %.sroa.0496.0.vec.extract, float %.sroa.0496.4.vec.extract ; 2 uses
  %.sroa.0496.8.vec.extract = extractelement <4 x float> %i.apt, i64 2 ; 2 uses
  %i.apw = fcmp olt float %i.apv, %.sroa.0496.8.vec.extract
  %i.apx = select i1 %i.apw, float %i.apv, float %.sroa.0496.8.vec.extract
  %i.apy = fcmp oeq <4 x float> %i.apr, zeroinitializer
  %i.apz = bitcast <4 x i1> %i.apy to i4
  %i.aqa = and i4 %i.apz, 7
  %i.aqb = icmp eq i4 %i.aqa, 7
  %.059.i = select i1 %i.aqb, float 0.000000e+00, float %i.apx ; 2 uses
  %i.aqc = extractelement <4 x float> %i.app, i64 2
  %i.aqd = load i8, ptr %i.apc, align 1, !noalias !605
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aot, i64 6 ; 23 uses
  %i.aqg = mul nuw nsw i64 %i.aqe, 37             ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqg ; 2 uses
  %i.aqi = shufflevector <4 x float> %i.app, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aqi, ptr %i.aqh, align 4, !noalias !604
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  store float %i.aqc, ptr %i.aqj, align 4, !noalias !604
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aot, i64 %i.aqg ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 18
  store float %.059.i, ptr %i.aql, align 4, !noalias !604
  %i.aqm = load float, ptr %4, align 8, !noalias !605 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 22
  store float %i.aqm, ptr %i.aqn, align 4, !noalias !604
  %i.aqo = load float, ptr %i.aod, align 4, !noalias !605
  %i.aqp = fsub float %i.aqo, %i.aqm
  %i.aqq = fdiv float 1.000000e+00, %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqk, i64 26
  store float %i.aqq, ptr %i.aqr, align 4, !noalias !604
  %i.aqs = icmp ult i64 %.0576641, %i.aoz
  br i1 %i.aqs, label %.lr.ph639, label %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit

.lr.ph631:                                        ; preds = %bb.dh, %.lr.ph631
  %.0.i52630 = phi i64 [ %i.aro, %.lr.ph631 ], [ 0, %bb.dh ] ; 2 uses
  %.sroa.0152.0629 = phi <4 x float> [ %i.arh, %.lr.ph631 ], [ splat (float +inf), %bb.dh ]
  %.sroa.7.0628 = phi <4 x float> [ %i.arj, %.lr.ph631 ], [ splat (float -inf), %bb.dh ]
  %.sroa.12.0627 = phi <4 x float> [ %i.arl, %.lr.ph631 ], [ splat (float +inf), %bb.dh ]
  %.sroa.17.0626 = phi <4 x float> [ %i.arn, %.lr.ph631 ], [ splat (float -inf), %bb.dh ]
  %i.aqt = getelementptr [80 x i8], ptr %i.apd, i64 %.0.i52630 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 12
  %i.aqv = load i32, ptr %i.aqu, align 4, !noalias !605
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 28
  %i.aqx = load i32, ptr %i.aqw, align 4, !noalias !605
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !605
  %i.aqy = zext i32 %i.aqv to i64
  %i.aqz = load ptr, ptr %i.api, align 8, !noalias !605
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.aqz, i64 %i.aqy
  %i.arb = load ptr, ptr %i.ara, align 8, !noalias !604 ; 2 uses
  %i.arc = zext i32 %i.aqx to i64
  %i.ard = load ptr, ptr %i.arb, align 16, !noalias !604
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 480
  %i.arf = load ptr, ptr %i.are, align 8, !noalias !604
  call void %i.arf(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %5, ptr noundef nonnull align 16 dereferenceable(88) %i.arb, i64 noundef %i.arc, ptr noundef nonnull align 4 dereferenceable(8) %4), !noalias !604, !inline_history !560
  %i.arg = load <4 x float>, ptr %5, align 16, !noalias !606
  %i.arh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0152.0629, <4 x float> %i.arg) ; 2 uses
  %i.ari = load <4 x float>, ptr %i.aoa, align 16, !noalias !607
  %i.arj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.0628, <4 x float> %i.ari) ; 2 uses
  %i.ark = load <4 x float>, ptr %i.aob, align 16, !noalias !608
  %i.arl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.12.0627, <4 x float> %i.ark) ; 2 uses
  %i.arm = load <4 x float>, ptr %i.aoc, align 16, !noalias !609
  %i.arn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.17.0626, <4 x float> %i.arm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !605
  %i.aro = add nuw nsw i64 %.0.i52630, 1          ; 2 uses
  %i.arp = load i8, ptr %i.apc, align 1, !noalias !605
  %i.arq = zext i8 %i.arp to i64
  %i.arr = icmp samesign ult i64 %i.aro, %i.arq
  br i1 %i.arr, label %.lr.ph631, label %._crit_edge, !llvm.loop !569

.lr.ph639:                                        ; preds = %._crit_edge, %.lr.ph639
  %.060.i637 = phi i64 [ %i.azt, %.lr.ph639 ], [ 0, %._crit_edge ] ; 24 uses
  %.1577636 = phi i64 [ %i.azu, %.lr.ph639 ], [ %.0576641, %._crit_edge ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [80 x i8], ptr %i.aow, i64 %.1577636 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 12
  %i.aru = load i32, ptr %i.art, align 4, !noalias !605
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ars, i64 28
  %i.arw = load i32, ptr %i.arv, align 4, !noalias !605 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !605
  %i.arx = zext i32 %i.aru to i64                 ; 2 uses
  %i.ary = load ptr, ptr %i.api, align 8, !noalias !605
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.ary, i64 %i.arx
  %i.asa = load ptr, ptr %i.arz, align 8, !noalias !604 ; 2 uses
  %i.asb = zext i32 %i.arw to i64                 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %4, align 8, !noalias !605
  %i.asc = load ptr, ptr %i.asa, align 16, !noalias !604
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 432
  %i.ase = load ptr, ptr %i.asd, align 8, !noalias !604
  call void %i.ase(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %7, ptr noundef nonnull align 16 dereferenceable(88) %i.asa, i64 noundef %i.asb, <2 x float> %.sroa.0.0.copyload.i), !noalias !604, !inline_history !560
  %i.asf = load <4 x float>, ptr %7, align 16, !noalias !610
  %i.asg = fmul <4 x float> %i.asf, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0473.0.vec.extract = extractelement <4 x float> %i.asg, i64 0 ; 2 uses
  %i.ash = call float @llvm.trunc.f32(float %.sroa.0473.0.vec.extract)
  %.sroa.0473.4.vec.extract = extractelement <4 x float> %i.asg, i64 1 ; 2 uses
  %i.asi = call float @llvm.trunc.f32(float %.sroa.0473.4.vec.extract)
  %.sroa.0473.8.vec.extract = extractelement <4 x float> %i.asg, i64 2 ; 2 uses
  %i.asj = call float @llvm.trunc.f32(float %.sroa.0473.8.vec.extract)
  %i.ask = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ash, i64 0
  %i.asl = insertelement <4 x float> %i.ask, float %i.asi, i64 1 ; 2 uses
  %i.asm = insertelement <4 x float> %i.asl, float %i.asj, i64 2 ; 3 uses
  %i.asn = load <4 x float>, ptr %i.aoe, align 16, !noalias !611
  %i.aso = fmul <4 x float> %i.asn, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 4 uses
  %.sroa.0471.0.vec.extract = extractelement <4 x float> %i.aso, i64 0 ; 2 uses
  %i.asp = call float @llvm.trunc.f32(float %.sroa.0471.0.vec.extract)
  %.sroa.0471.4.vec.extract = extractelement <4 x float> %i.aso, i64 1
  %i.asq = call float @llvm.trunc.f32(float %.sroa.0471.4.vec.extract)
  %.sroa.0471.8.vec.extract = extractelement <4 x float> %i.aso, i64 2
  %i.asr = call float @llvm.trunc.f32(float %.sroa.0471.8.vec.extract)
  %i.ass = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.asp, i64 0
  %i.ast = insertelement <4 x float> %i.ass, float %i.asq, i64 1 ; 2 uses
  %i.asu = insertelement <4 x float> %i.ast, float %i.asr, i64 2 ; 3 uses
  %i.asv = load <4 x float>, ptr %i.aof, align 16, !noalias !612
  %i.asw = fmul <4 x float> %i.asv, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 4 uses
  %.sroa.0469.0.vec.extract = extractelement <4 x float> %i.asw, i64 0
  %i.asx = call float @llvm.trunc.f32(float %.sroa.0469.0.vec.extract)
  %.sroa.0469.4.vec.extract = extractelement <4 x float> %i.asw, i64 1
  %i.asy = call float @llvm.trunc.f32(float %.sroa.0469.4.vec.extract)
  %.sroa.0469.8.vec.extract = extractelement <4 x float> %i.asw, i64 2 ; 2 uses
  %i.asz = call float @llvm.trunc.f32(float %.sroa.0469.8.vec.extract)
  %i.ata = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.asx, i64 0
  %i.atb = insertelement <4 x float> %i.ata, float %i.asy, i64 1 ; 2 uses
  %i.atc = insertelement <4 x float> %i.atb, float %i.asz, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11, !noalias !605
  %i.atd = load ptr, ptr %i.api, align 8, !noalias !605
  %i.ate = getelementptr inbounds nuw [8 x i8], ptr %i.atd, i64 %i.arx
  %i.atf = load ptr, ptr %i.ate, align 8, !noalias !604 ; 2 uses
  %i.atg = fmul <4 x float> %i.asm, %i.asm        ; 3 uses
  %i.ath = shufflevector <4 x float> %i.atg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ati = shufflevector <4 x float> %i.atg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.atj = fadd <4 x float> %i.atg, %i.ath
  %i.atk = fadd <4 x float> %i.ati, %i.atj
  %i.atl = extractelement <4 x float> %i.atk, i64 0
  %sqrt591 = call float @llvm.sqrt.f32(float %i.atl) ; 2 uses
  %i.atm = fmul <4 x float> %i.asu, %i.asu        ; 3 uses
  %i.atn = shufflevector <4 x float> %i.atm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ato = shufflevector <4 x float> %i.atm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.atp = fadd <4 x float> %i.atm, %i.atn
  %i.atq = fadd <4 x float> %i.ato, %i.atp
  %i.atr = extractelement <4 x float> %i.atq, i64 0
  %sqrt590 = call float @llvm.sqrt.f32(float %i.atr) ; 2 uses
  %i.ats = fmul <4 x float> %i.atc, %i.atc        ; 3 uses
  %i.att = shufflevector <4 x float> %i.ats, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.atu = shufflevector <4 x float> %i.ats, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.atv = fadd <4 x float> %i.ats, %i.att
  %i.atw = fadd <4 x float> %i.atu, %i.atv
  %i.atx = extractelement <4 x float> %i.atw, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.atx) ; 2 uses
  %i.aty = fcmp olt float %sqrt591, %sqrt590
  %i.atz = select i1 %i.aty, float %sqrt590, float %sqrt591 ; 2 uses
  %i.aua = fcmp olt float %i.atz, %sqrt
  %i.aub = select i1 %i.aua, float %sqrt, float %i.atz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11, !noalias !605
  %i.auc = shufflevector <4 x float> %i.asl, <4 x float> %i.atb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aud = shufflevector <4 x float> %i.asm, <4 x float> %i.atc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aue = shufflevector <4 x float> %i.ast, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auf = shufflevector <4 x float> %i.asu, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aug = shufflevector <4 x float> %i.auc, <4 x float> %i.aue, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.auh = shufflevector <4 x float> %i.auc, <4 x float> %i.aue, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aui = shufflevector <4 x float> %i.aud, <4 x float> %i.auf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.aug, ptr %9, align 16, !alias.scope !613, !noalias !604
  store <4 x float> %i.auh, ptr %i.aog, align 16, !alias.scope !613, !noalias !604
  store <4 x float> %i.aui, ptr %i.aoh, align 16, !alias.scope !613, !noalias !604
  %i.auj = load ptr, ptr %i.atf, align 16, !noalias !604
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 504
  %i.aul = load ptr, ptr %i.auk, align 8, !noalias !604
  call void %i.aul(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %8, ptr noundef nonnull align 16 dereferenceable(88) %i.atf, ptr noundef nonnull align 16 dereferenceable(16) %6, float noundef %.059.i, float noundef %i.aub, ptr noundef nonnull align 16 dereferenceable(48) %9, i64 noundef %i.asb, ptr noundef nonnull align 4 dereferenceable(8) %4), !noalias !604, !inline_history !560
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !605
  %i.aum = fptosi float %.sroa.0473.0.vec.extract to i16
  %i.aun = trunc i16 %i.aum to i8
  %i.auo = load i8, ptr %i.apc, align 1, !noalias !605
  %i.aup = zext i8 %i.auo to i64                  ; 21 uses
  %i.auq = shl nuw nsw i64 %i.aup, 2
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.auq
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 %.060.i637
  store i8 %i.aun, ptr %i.aus, align 1, !noalias !604
  %i.aut = fptosi float %.sroa.0473.4.vec.extract to i16
  %i.auu = trunc i16 %i.aut to i8
  %i.auv = mul nuw nsw i64 %i.aup, 5
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 %.060.i637
  store i8 %i.auu, ptr %i.aux, align 1, !noalias !604
  %i.auy = fptosi float %.sroa.0473.8.vec.extract to i16
  %i.auz = trunc i16 %i.auy to i8
  %i.ava = mul nuw nsw i64 %i.aup, 6
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.ava
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 %.060.i637
  store i8 %i.auz, ptr %i.avc, align 1, !noalias !604
  %i.avd = load float, ptr %8, align 16, !noalias !605
  %i.ave = call noundef float @llvm.floor.f32(float %i.avd) ; 2 uses
  %i.avf = fcmp olt float %i.ave, 3.276700e+04
  %i.avg = select i1 %i.avf, float %i.ave, float 3.276700e+04 ; 2 uses
  %i.avh = fcmp olt float %i.avg, -3.276700e+04
  %i.avi = select i1 %i.avh, float -3.276700e+04, float %i.avg
  %i.avj = fptosi float %i.avi to i16
  %i.avk = mul nuw nsw i64 %i.aup, 7
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.avk
  %i.avm = getelementptr inbounds nuw [2 x i8], ptr %i.avl, i64 %.060.i637
  store i16 %i.avj, ptr %i.avm, align 2, !noalias !604
  %i.avn = load float, ptr %i.aoi, align 16, !noalias !605
  %i.avo = call noundef float @llvm.ceil.f32(float %i.avn) ; 2 uses
  %i.avp = fcmp olt float %i.avo, 3.276700e+04
  %i.avq = select i1 %i.avp, float %i.avo, float 3.276700e+04 ; 2 uses
  %i.avr = fcmp olt float %i.avq, -3.276700e+04
  %i.avs = select i1 %i.avr, float -3.276700e+04, float %i.avq
  %i.avt = fptosi float %i.avs to i16
  %i.avu = mul nuw nsw i64 %i.aup, 9
  %i.avv = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.avu
  %i.avw = getelementptr inbounds nuw [2 x i8], ptr %i.avv, i64 %.060.i637
  store i16 %i.avt, ptr %i.avw, align 2, !noalias !604
  %i.avx = load float, ptr %i.aoj, align 16, !noalias !605
  %i.avy = call noundef float @llvm.floor.f32(float %i.avx) ; 2 uses
  %i.avz = fcmp olt float %i.avy, 3.276700e+04
  %i.awa = select i1 %i.avz, float %i.avy, float 3.276700e+04 ; 2 uses
  %i.awb = fcmp olt float %i.awa, -3.276700e+04
  %i.awc = select i1 %i.awb, float -3.276700e+04, float %i.awa
  %i.awd = fptosi float %i.awc to i16
  %i.awe = mul nuw nsw i64 %i.aup, 11
  %i.awf = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.awe
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %i.awf, i64 %.060.i637
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
  %16 = shl nuw nsw i64 %i.aup, 4
  %17 = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %.060.i637
  %19 = mul nuw nsw i64 %i.aup, 17
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %19
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 %.060.i637
  %20 = mul nuw nsw i64 %i.aup, 18
  %21 = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %20
  %22 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %.060.i637
  %i.awy = mul nuw nsw i64 %i.aup, 20
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.awy
  %23 = getelementptr inbounds nuw [2 x i8], ptr %i.awz, i64 %.060.i637
  %24 = mul nuw nsw i64 %i.aup, 22
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %24
  %25 = getelementptr inbounds nuw [2 x i8], ptr %i.axa, i64 %.060.i637
  %26 = mul nuw nsw i64 %i.aup, 24
  %27 = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %26
  %28 = getelementptr inbounds nuw [2 x i8], ptr %27, i64 %.060.i637
  %29 = mul nuw nsw i64 %i.aup, 26
  %30 = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %.060.i637
  %32 = shufflevector <4 x float> %i.aso, <4 x float> %i.asw, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %33 = fptosi <4 x float> %32 to <4 x i16>
  %34 = trunc <4 x i16> %33 to <4 x i8>           ; 4 uses
  %35 = extractelement <4 x i8> %34, i64 0
  store i8 %35, ptr %18, align 1, !noalias !604
  %36 = extractelement <4 x i8> %34, i64 1
  store i8 %36, ptr %i.awx, align 1, !noalias !604
  %i.axb = load float, ptr %i.aol, align 4, !noalias !605
  %i.axc = call noundef float @llvm.floor.f32(float %i.axb) ; 2 uses
  %i.axd = fcmp olt float %i.axc, 3.276700e+04
  %i.axe = select i1 %i.axd, float %i.axc, float 3.276700e+04 ; 2 uses
  %i.axf = fcmp olt float %i.axe, -3.276700e+04
  %i.axg = select i1 %i.axf, float -3.276700e+04, float %i.axe
  %i.axh = fptosi float %i.axg to i16
  store i16 %i.axh, ptr %22, align 2, !noalias !604
  %i.axi = load float, ptr %i.aom, align 4, !noalias !605
  %i.axj = call noundef float @llvm.ceil.f32(float %i.axi) ; 2 uses
  %i.axk = fcmp olt float %i.axj, 3.276700e+04
  %i.axl = select i1 %i.axk, float %i.axj, float 3.276700e+04 ; 2 uses
  %i.axm = fcmp olt float %i.axl, -3.276700e+04
  %i.axn = select i1 %i.axm, float -3.276700e+04, float %i.axl
  %i.axo = fptosi float %i.axn to i16
  store i16 %i.axo, ptr %23, align 2, !noalias !604
  %i.axp = load float, ptr %i.aon, align 4, !noalias !605
  %i.axq = call noundef float @llvm.floor.f32(float %i.axp) ; 2 uses
  %i.axr = fcmp olt float %i.axq, 3.276700e+04
  %i.axs = select i1 %i.axr, float %i.axq, float 3.276700e+04 ; 2 uses
  %i.axt = fcmp olt float %i.axs, -3.276700e+04
  %i.axu = select i1 %i.axt, float -3.276700e+04, float %i.axs
  %i.axv = fptosi float %i.axu to i16
  store i16 %i.axv, ptr %25, align 2, !noalias !604
  %37 = load float, ptr %i.aoo, align 4, !noalias !605
  %38 = call noundef float @llvm.ceil.f32(float %37) ; 2 uses
  %39 = fcmp olt float %38, 3.276700e+04
  %40 = select i1 %39, float %38, float 3.276700e+04 ; 2 uses
  %41 = fcmp olt float %40, -3.276700e+04
  %42 = select i1 %41, float -3.276700e+04, float %40
  %43 = fptosi float %42 to i16
  store i16 %43, ptr %28, align 2, !noalias !604
  %44 = extractelement <4 x i8> %34, i64 2
  store i8 %44, ptr %31, align 1, !noalias !604
  %i.axw = mul nuw nsw i64 %i.aup, 27
  %i.axx = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 %.060.i637
  %45 = extractelement <4 x i8> %34, i64 3
  store i8 %45, ptr %i.axy, align 1, !noalias !604
  %i.axz = fptosi float %.sroa.0469.8.vec.extract to i16
  %i.aya = trunc i16 %i.axz to i8
  %i.ayb = mul nuw nsw i64 %i.aup, 28
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.ayb
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 %.060.i637
  store i8 %i.aya, ptr %i.ayd, align 1, !noalias !604
  %i.aye = load float, ptr %i.aop, align 8, !noalias !605
  %i.ayf = call noundef float @llvm.floor.f32(float %i.aye) ; 2 uses
  %i.ayg = fcmp olt float %i.ayf, 3.276700e+04
  %i.ayh = select i1 %i.ayg, float %i.ayf, float 3.276700e+04 ; 2 uses
  %i.ayi = fcmp olt float %i.ayh, -3.276700e+04
  %i.ayj = select i1 %i.ayi, float -3.276700e+04, float %i.ayh
  %i.ayk = fptosi float %i.ayj to i16
  %i.ayl = mul nuw nsw i64 %i.aup, 29
  %i.aym = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.ayl
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.aym, i64 %.060.i637
  store i16 %i.ayk, ptr %i.ayn, align 2, !noalias !604
  %i.ayo = load float, ptr %i.aoq, align 8, !noalias !605
  %i.ayp = call noundef float @llvm.ceil.f32(float %i.ayo) ; 2 uses
  %i.ayq = fcmp olt float %i.ayp, 3.276700e+04
  %i.ayr = select i1 %i.ayq, float %i.ayp, float 3.276700e+04 ; 2 uses
  %i.ays = fcmp olt float %i.ayr, -3.276700e+04
  %i.ayt = select i1 %i.ays, float -3.276700e+04, float %i.ayr
  %i.ayu = fptosi float %i.ayt to i16
  %i.ayv = mul nuw nsw i64 %i.aup, 31
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.ayv
  %i.ayx = getelementptr inbounds nuw [2 x i8], ptr %i.ayw, i64 %.060.i637
  store i16 %i.ayu, ptr %i.ayx, align 2, !noalias !604
  %i.ayy = load float, ptr %i.aor, align 8, !noalias !605
  %i.ayz = call noundef float @llvm.floor.f32(float %i.ayy) ; 2 uses
  %i.aza = fcmp olt float %i.ayz, 3.276700e+04
  %i.azb = select i1 %i.aza, float %i.ayz, float 3.276700e+04 ; 2 uses
  %i.azc = fcmp olt float %i.azb, -3.276700e+04
  %i.azd = select i1 %i.azc, float -3.276700e+04, float %i.azb
  %i.aze = fptosi float %i.azd to i16
  %i.azf = mul nuw nsw i64 %i.aup, 33
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.azf
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %i.azg, i64 %.060.i637
  store i16 %i.aze, ptr %i.azh, align 2, !noalias !604
  %i.azi = load float, ptr %i.aos, align 8, !noalias !605
  %i.azj = call noundef float @llvm.ceil.f32(float %i.azi) ; 2 uses
  %i.azk = fcmp olt float %i.azj, 3.276700e+04
  %i.azl = select i1 %i.azk, float %i.azj, float 3.276700e+04 ; 2 uses
  %i.azm = fcmp olt float %i.azl, -3.276700e+04
  %i.azn = select i1 %i.azm, float -3.276700e+04, float %i.azl
  %i.azo = fptosi float %i.azn to i16
  %i.azp = mul nuw nsw i64 %i.aup, 35
  %i.azq = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.azp
  %i.azr = getelementptr inbounds nuw [2 x i8], ptr %i.azq, i64 %.060.i637
  store i16 %i.azo, ptr %i.azr, align 2, !noalias !604
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.aqf, i64 %.060.i637
  store i32 %i.arw, ptr %i.azs, align 4, !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !605
  %i.azt = add nuw nsw i64 %.060.i637, 1
  %i.azu = add nuw i64 %.1577636, 1               ; 3 uses
  %i.azv = icmp samesign ult i64 %.060.i637, 3
  %i.azw = icmp ult i64 %i.azu, %i.aoz
  %or.cond = select i1 %i.azv, i1 %i.azw, i1 false
  br i1 %or.cond, label %.lr.ph639, label %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit, !llvm.loop !578

_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit: ; preds = %.lr.ph639, %._crit_edge
  %.1577.lcssa = phi i64 [ %.0576641, %._crit_edge ], [ %i.azu, %.lr.ph639 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.azx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0161.0645, <4 x float> %.sroa.0152.0.lcssa) ; 2 uses
  %i.azy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6163.0644, <4 x float> %.sroa.7.0.lcssa) ; 2 uses
  %i.azz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10165.0643, <4 x float> %.sroa.12.0.lcssa) ; 2 uses
  %i.baa = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14167.0642, <4 x float> %.sroa.17.0.lcssa) ; 2 uses
  %i.bab = add nuw nsw i64 %.0.i13646, 1          ; 2 uses
  %exitcond717.not = icmp eq i64 %i.bab, %i.ow
  br i1 %exitcond717.not, label %_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, label %bb.dh, !llvm.loop !579

_ZN6embree9CurveNiMBILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit: ; preds = %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27
  %.sroa.14167.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.baa, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.10165.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.azz, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.6163.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.azy, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.0161.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit27 ], [ %i.azx, %_ZN6embree9CurveNiMBILi4EE6fillMBEPKNS_9PrimRefMBERmmPNS_5SceneENS_4BBoxIfEE.exit ]
  %i.bac = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %i.anx, ptr %0, align 16, !alias.scope !604
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0161.0.lcssa, ptr %i.bad, align 16
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6163.0.lcssa, ptr %i.bae, align 16
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.10165.0.lcssa, ptr %i.baf, align 16
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.14167.0.lcssa, ptr %i.bag, align 16
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bai = load i64, ptr %i.bac, align 8, !noalias !604
  store i64 %i.bai, ptr %i.bah, align 16, !alias.scope !604
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
  %.sroa.4662.0 = phi i64 [ 0, %bb.a ], [ %i.di, %.critedge37.i ] ; 2 uses
  %.sroa.4059.0 = phi i64 [ 0, %bb.a ], [ %i.dh, %.critedge37.i ] ; 2 uses
  %.sroa.3255.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.da, %.critedge37.i ] ; 2 uses
  %.sroa.2652.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.cz, %.critedge37.i ] ; 2 uses
  %.sroa.2049.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.cy, %.critedge37.i ] ; 2 uses
  %.sroa.1446.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.cx, %.critedge37.i ] ; 2 uses
  %.sroa.843.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.cw, %.critedge37.i ] ; 2 uses
  %.sroa.040.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.cv, %.critedge37.i ] ; 2 uses
  %.sroa.68.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.em, %.critedge37.i ] ; 2 uses
  %.sroa.63.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.ej, %.critedge37.i ] ; 2 uses
  %.sroa.52.0 = phi i64 [ 0, %bb.a ], [ %.sroa.52.3, %.critedge37.i ] ; 2 uses
  %.sroa.46.0 = phi i64 [ 0, %bb.a ], [ %i.eq, %.critedge37.i ] ; 2 uses
  %.sroa.40.0 = phi i64 [ 0, %bb.a ], [ %i.en, %.critedge37.i ]
  %.sroa.32.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ed, %.critedge37.i ] ; 2 uses
  %.sroa.26.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ec, %.critedge37.i ] ; 2 uses
  %.sroa.20.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.eb, %.critedge37.i ] ; 2 uses
  %.sroa.14.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ea, %.critedge37.i ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.dz, %.critedge37.i ] ; 2 uses
  %.sroa.021.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dy, %.critedge37.i ] ; 2 uses
  %.sroa.6067.0 = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.6067.3, %.critedge37.i ] ; 2 uses
  %.sroa.6368.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.dd, %.critedge37.i ] ; 2 uses
  %.sroa.6870.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.dg, %.critedge37.i ] ; 2 uses
  %.033.i = phi ptr [ %i.i, %bb.a ], [ %i.fc, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.l, %bb.a ], [ %.1.i176, %.critedge37.i ]
  %i.m = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.ew, %.critedge37.i ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 4 uses
  %.not.i119 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i119, label %.critedge.i.preheader, label %.lr.ph, !prof !45

.lr.ph:                                           ; preds = %bb.b, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit
  %.134.i133 = phi ptr [ %i.az, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.033.i, %bb.b ] ; 9 uses
  %.sroa.6870.1132 = phi float [ %i.ar, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6870.0, %bb.b ] ; 3 uses
  %.sroa.6368.1131 = phi float [ %i.an, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6368.0, %bb.b ] ; 3 uses
  %.sroa.6067.1130 = phi float [ %.sroa.6067.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6067.0, %bb.b ] ; 2 uses
  %.sroa.040.1129 = phi <4 x float> [ %i.ae, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.040.0, %bb.b ] ; 2 uses
  %.sroa.843.1128 = phi <4 x float> [ %i.af, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.843.0, %bb.b ] ; 2 uses
  %.sroa.1446.1127 = phi <4 x float> [ %i.ag, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.1446.0, %bb.b ] ; 2 uses
  %.sroa.2049.1126 = phi <4 x float> [ %i.ah, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2049.0, %bb.b ] ; 2 uses
  %.sroa.2652.1125 = phi <4 x float> [ %i.ai, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2652.0, %bb.b ] ; 2 uses
  %.sroa.3255.1124 = phi <4 x float> [ %i.aj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.3255.0, %bb.b ] ; 2 uses
  %.sroa.4059.1123 = phi i64 [ %i.as, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4059.0, %bb.b ] ; 2 uses
  %.sroa.4662.1122 = phi i64 [ %i.av, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4662.0, %bb.b ] ; 2 uses
  %.sroa.5264.1121 = phi i64 [ %.sroa.5264.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5264.0, %bb.b ] ; 3 uses
  %.sroa.5766.1120 = phi float [ %.sroa.5766.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5766.0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.134.i133, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %i.k
  br i1 %i.p, label %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit, label %.critedge.i.preheader, !prof !41

.critedge.i.preheader:                            ; preds = %.lr.ph, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit, %bb.b
  %.sroa.5766.1.lcssa = phi float [ %.sroa.5766.0, %bb.b ], [ %.sroa.5766.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5766.1120, %.lr.ph ] ; 2 uses
  %.sroa.5264.1.lcssa = phi i64 [ %.sroa.5264.0, %bb.b ], [ %.sroa.5264.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.5264.1121, %.lr.ph ] ; 3 uses
  %.sroa.4662.1.lcssa = phi i64 [ %.sroa.4662.0, %bb.b ], [ %i.av, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4662.1122, %.lr.ph ] ; 2 uses
  %.sroa.4059.1.lcssa = phi i64 [ %.sroa.4059.0, %bb.b ], [ %i.as, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.4059.1123, %.lr.ph ]
  %.sroa.3255.1.lcssa = phi <4 x float> [ %.sroa.3255.0, %bb.b ], [ %i.aj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.3255.1124, %.lr.ph ] ; 2 uses
  %.sroa.2652.1.lcssa = phi <4 x float> [ %.sroa.2652.0, %bb.b ], [ %i.ai, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2652.1125, %.lr.ph ] ; 2 uses
  %.sroa.2049.1.lcssa = phi <4 x float> [ %.sroa.2049.0, %bb.b ], [ %i.ah, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.2049.1126, %.lr.ph ] ; 2 uses
  %.sroa.1446.1.lcssa = phi <4 x float> [ %.sroa.1446.0, %bb.b ], [ %i.ag, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.1446.1127, %.lr.ph ] ; 2 uses
  %.sroa.843.1.lcssa = phi <4 x float> [ %.sroa.843.0, %bb.b ], [ %i.af, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.843.1128, %.lr.ph ] ; 2 uses
  %.sroa.040.1.lcssa = phi <4 x float> [ %.sroa.040.0, %bb.b ], [ %i.ae, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.040.1129, %.lr.ph ] ; 2 uses
  %.sroa.6067.1.lcssa = phi float [ %.sroa.6067.0, %bb.b ], [ %.sroa.6067.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6067.1130, %.lr.ph ] ; 2 uses
  %.sroa.6368.1.lcssa = phi float [ %.sroa.6368.0, %bb.b ], [ %i.an, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6368.1131, %.lr.ph ] ; 4 uses
  %.sroa.6870.1.lcssa = phi float [ %.sroa.6870.0, %bb.b ], [ %i.ar, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.sroa.6870.1132, %.lr.ph ] ; 4 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.b ], [ %i.az, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit ], [ %.134.i133, %.lr.ph ] ; 11 uses
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
  %i.ae = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.040.1129, <4 x float> %i.q) ; 2 uses
  %i.af = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.843.1128, <4 x float> %i.s) ; 2 uses
end_hunk_0
