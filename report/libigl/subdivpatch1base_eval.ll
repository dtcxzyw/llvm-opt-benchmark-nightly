Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/subdivpatch1base_eval?download=true
inline.NumInlined: 170
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_:_ZNK6embree13GregoryPatchTINS_6Vec3faES1_E4evalINS_11vfloat_implILi4EEEEENS_4Vec3IT_EERKS7_SA_.exit

bb.c:                                             ; preds = %bb.b
  %i.ant = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = zext i32 %i.ann to i64                 ; 8 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.anv
  store <4 x float> %i.ka, ptr %i.anw, align 1
  %i.anx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.any = load ptr, ptr %i.anx, align 8
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.anv
  store <4 x float> %i.nf, ptr %i.anz, align 1
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aob = load ptr, ptr %i.aoa, align 8
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.anv
  store <4 x float> %i.qk, ptr %i.aoc, align 1
  %i.aod = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aoe = load ptr, ptr %i.aod, align 8
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %i.anv
  store <4 x float> %i.amm, ptr %i.aof, align 1
  %i.aog = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aoh = load ptr, ptr %i.aog, align 8
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.anv
  store <4 x float> %i.ams, ptr %i.aoi, align 1
  %i.aoj = load ptr, ptr %i.qo, align 8           ; 2 uses
  %.not21 = icmp eq ptr %i.aoj, null
  br i1 %.not21, label %_ZN6embree20foreach_unique_indexINS_11vboolf_implILi4EEENS_9vint_implILi4EEEZZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES9_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKS2_RKS4_SO_E_clESM_SO_SO_EUlSM_iiE_EEvRSD_RKT0_RKT1_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.aoj, i64 %i.anv
  store <4 x i32> %.sroa.0.0, ptr %i.aok, align 1
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aom = load ptr, ptr %i.aol, align 8
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %i.anv
  store <4 x i32> %.sroa.6.0, ptr %i.aon, align 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aop = load ptr, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.anv
  store <4 x i32> %.sroa.10.0, ptr %i.aoq, align 1
  br label %_ZN6embree20foreach_unique_indexINS_11vboolf_implILi4EEENS_9vint_implILi4EEEZZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES9_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKS2_RKS4_SO_E_clESM_SO_SO_EUlSM_iiE_EEvRSD_RKT0_RKT1_.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.aor = icmp slt <4 x i32> %i.anj, zeroinitializer
  %i.aos = bitcast <4 x i1> %i.aor to i4          ; 2 uses
  %.not28322833 = icmp eq i4 %i.aos, 0
  br i1 %.not28322833, label %_ZN6embree20foreach_unique_indexINS_11vboolf_implILi4EEENS_9vint_implILi4EEEZZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES9_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKS2_RKS4_SO_E_clESM_SO_SO_EUlSM_iiE_EEvRSD_RKT0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.aot = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aou = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aov = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aow = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aox = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit
  %i.apa = phi i4 [ %i.aos, %.lr.ph ], [ %i.arp, %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit ]
  %.sroa.0441.02834 = phi <4 x i32> [ %i.anj, %.lr.ph ], [ %i.apn, %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit ] ; 2 uses
  %i.apb = zext i4 %i.apa to i64
  %i.apc = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.apb) #23, !srcloc !19 ; 2 uses
  %i.apd = trunc i64 %i.apc to i32
  %sext.i = shl i64 %i.apc, 32
  %i.ape = ashr exact i64 %sext.i, 30             ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4
  %i.aph = insertelement <4 x i32> poison, i32 %i.apg, i64 0
  %i.api = shufflevector <4 x i32> %i.aph, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apj = load <4 x i32>, ptr %3, align 16, !noalias !913
  %i.apk = icmp eq <4 x i32> %i.api, %i.apj
  %i.apl = select <4 x i1> %i.apk, <4 x i32> %.sroa.0441.02834, <4 x i32> zeroinitializer ; 10 uses
  %i.apm = xor <4 x i32> %i.apl, splat (i32 -1)   ; 8 uses
  %i.apn = xor <4 x i32> %i.apl, %.sroa.0441.02834 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %4, i64 %i.ape
  %i.app = load i32, ptr %i.apo, align 4
  %i.apq = sub nsw i32 %i.app, %i.apd
  %i.apr = load ptr, ptr %i.aot, align 8
  %i.aps = zext i32 %i.apq to i64                 ; 8 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.aps ; 2 uses
  %i.apu = load <4 x i32>, ptr %i.apt, align 1, !noalias !914
  %i.apv = and <4 x i32> %i.apl, %i.ql
  %i.apw = and <4 x i32> %i.apu, %i.apm
  %i.apx = or <4 x i32> %i.apv, %i.apw
  store <4 x i32> %i.apx, ptr %i.apt, align 1
  %i.apy = load ptr, ptr %i.aou, align 8
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %i.aps ; 2 uses
  %i.aqa = load <4 x i32>, ptr %i.apz, align 1, !noalias !915
  %i.aqb = and <4 x i32> %i.apl, %i.qm
  %i.aqc = and <4 x i32> %i.aqa, %i.apm
  %i.aqd = or <4 x i32> %i.aqc, %i.aqb
  store <4 x i32> %i.aqd, ptr %i.apz, align 1
  %i.aqe = load ptr, ptr %i.aov, align 8
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %i.aps ; 2 uses
  %i.aqg = load <4 x i32>, ptr %i.aqf, align 1, !noalias !916
  %i.aqh = and <4 x i32> %i.apl, %i.qn
  %i.aqi = and <4 x i32> %i.aqg, %i.apm
  %i.aqj = or <4 x i32> %i.aqi, %i.aqh
  store <4 x i32> %i.aqj, ptr %i.aqf, align 1
  %i.aqk = load ptr, ptr %i.aow, align 8
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.aps ; 2 uses
  %i.aqm = load <4 x i32>, ptr %i.aql, align 1, !noalias !917
  %i.aqn = and <4 x i32> %i.apl, %i.amn
  %i.aqo = and <4 x i32> %i.aqm, %i.apm
  %i.aqp = or <4 x i32> %i.aqo, %i.aqn
  store <4 x i32> %i.aqp, ptr %i.aql, align 1
  %i.aqq = load ptr, ptr %i.aox, align 8
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %i.aps ; 2 uses
  %i.aqs = load <4 x i32>, ptr %i.aqr, align 1, !noalias !918
  %i.aqt = and <4 x i32> %i.apl, %i.amt
  %i.aqu = and <4 x i32> %i.aqs, %i.apm
  %i.aqv = or <4 x i32> %i.aqu, %i.aqt
  store <4 x i32> %i.aqv, ptr %i.aqr, align 1
  %i.aqw = load ptr, ptr %i.qo, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.aqw, null
  br i1 %.not.i, label %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqw, i64 %i.aps ; 2 uses
  %i.aqy = load <4 x i32>, ptr %i.aqx, align 1, !noalias !919
  %i.aqz = and <4 x i32> %i.apl, %.sroa.0.0
  %i.ara = and <4 x i32> %i.aqy, %i.apm
  %i.arb = or <4 x i32> %i.ara, %i.aqz
  store <4 x i32> %i.arb, ptr %i.aqx, align 1
  %i.arc = load ptr, ptr %i.aoy, align 8
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %i.aps ; 2 uses
  %i.are = load <4 x i32>, ptr %i.ard, align 1, !noalias !920
  %i.arf = and <4 x i32> %i.apl, %.sroa.6.0
  %i.arg = and <4 x i32> %i.are, %i.apm
  %i.arh = or <4 x i32> %i.arg, %i.arf
  store <4 x i32> %i.arh, ptr %i.ard, align 1
  %i.ari = load ptr, ptr %i.aoz, align 8
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %i.aps ; 2 uses
  %i.ark = load <4 x i32>, ptr %i.arj, align 1, !noalias !921
  %i.arl = and <4 x i32> %i.apl, %.sroa.10.0
  %i.arm = and <4 x i32> %i.ark, %i.apm
  %i.arn = or <4 x i32> %i.arm, %i.arl
  store <4 x i32> %i.arn, ptr %i.arj, align 1
  br label %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit

_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit: ; preds = %bb.e, %bb.f
  %i.aro = icmp slt <4 x i32> %i.apn, zeroinitializer
  %i.arp = bitcast <4 x i1> %i.aro to i4          ; 2 uses
  %.not2832 = icmp eq i4 %i.arp, 0
  br i1 %.not2832, label %_ZN6embree20foreach_unique_indexINS_11vboolf_implILi4EEENS_9vint_implILi4EEEZZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES9_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKS2_RKS4_SO_E_clESM_SO_SO_EUlSM_iiE_EEvRSD_RKT0_RKT1_.exit, label %bb.e, !llvm.loop !907

_ZN6embree20foreach_unique_indexINS_11vboolf_implILi4EEENS_9vint_implILi4EEEZZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES9_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKS2_RKS4_SO_E_clESM_SO_SO_EUlSM_iiE_EEvRSD_RKT0_RKT1_.exit: ; preds = %_ZZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_ENKUlSJ_iiE_clESJ_ii.exit, %.critedge, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev(ptr noundef nonnull align 64 dead_on_return(832) dereferenceable(832) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.c = load ptr, ptr %i.b, align 64             ; 3 uses
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = icmp eq ptr %i.c, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.c)
          to label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 64             ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.h
  %i.l = icmp eq ptr %i.j, null
  %or.cond1 = or i1 %i.k, %i.l
  br i1 %or.cond1, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #22
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EED2Ev.exit

_ZN6embree17DynamicStackArrayIfLm16ELm64EED2Ev.exit: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(3328) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.embree::BSplinePatchT", align 64 ; 4 uses
  %10 = alloca %"class.embree::GregoryPatchT", align 64 ; 4 uses
  %11 = alloca %"class.embree::BSplinePatchT", align 64 ; 4 uses
  %12 = alloca %"class.embree::array_t.74", align 64 ; 106 uses
  %13 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %14 = alloca %"struct.embree::BBox.61", align 4 ; 8 uses
  %15 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %16 = alloca %"struct.embree::BBox.61", align 4 ; 8 uses
  %17 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %18 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %19 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %20 = alloca %"struct.embree::BBox.61", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %3, align 4              ; 2 uses
  %i.c = load float, ptr %i.a, align 4            ; 5 uses
  %i.d = fcmp ogt float %i.b, %i.c
  br i1 %i.d, label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load float, ptr %i.g, align 4            ; 5 uses
  %i.i = fcmp ogt float %i.f, %i.h
  br i1 %i.i, label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216, label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit

_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit:      ; preds = %bb.b
  %i.j = tail call float @llvm.ceil.f32(float %i.b)
  %i.k = fptosi float %i.j to i32                 ; 4 uses
  %i.l = tail call float @llvm.ceil.f32(float %i.c)
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = uitofp i32 %i.o to float
  %i.q = fcmp oeq float %i.c, %i.p
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit
  %i.r = load float, ptr %2, align 4
  %i.s = fcmp olt float %i.r, %i.c
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp oeq float %i.c, 0.000000e+00
  %i.u = zext i1 %i.t to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit
  %i.v = phi i32 [ 0, %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit ], [ 1, %bb.c ], [ %i.u, %bb.d ]
  %i.w = add nsw i32 %i.v, %i.m                   ; 4 uses
  %i.x = tail call float @llvm.ceil.f32(float %i.f)
  %i.y = fptosi float %i.x to i32                 ; 4 uses
  %i.z = tail call float @llvm.ceil.f32(float %i.h)
  %i.aa = fptosi float %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = uitofp i32 %i.ac to float
  %i.ae = fcmp oeq float %i.h, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp olt float %i.ag, %i.h
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = fcmp oeq float %i.h, 0.000000e+00
  %i.aj = zext i1 %i.ai to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ak = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = add nsw i32 %i.ak, %i.aa                ; 4 uses
  %.not = icmp sgt i32 %i.w, %i.k
  %.not83 = icmp sgt i32 %i.al, %i.y
  %or.cond = select i1 %.not, i1 %.not83, i1 false
  br i1 %or.cond, label %.preheader217, label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216

.preheader217:                                    ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 6 uses
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %.not240 = icmp eq i32 %i.an, 0
  br i1 %.not240, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader217
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = load ptr, ptr %i.ap, align 64           ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ao, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi269 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %wide.load = load <2 x float>, ptr %i.ar, align 4
  %wide.load270 = load <2 x float>, ptr %i.as, align 4
  %i.at = fcmp ogt <2 x float> %wide.load, zeroinitializer
  %i.au = fcmp ogt <2 x float> %wide.load270, zeroinitializer
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = add <2 x i64> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <2 x i64> %vec.phi269, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !922

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0.i152223.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05.i222.ph = phi i64 [ 0, %.lr.ph ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i152223 = phi i64 [ %i.bg, %scalar.ph ], [ %.0.i152223.ph, %scalar.ph.preheader ] ; 2 uses
  %.05.i222 = phi i64 [ %i.bf, %scalar.ph ], [ %.05.i222.ph, %scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0.i152223
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = fcmp ogt float %i.bc, 0.000000e+00
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05.i222, %i.be        ; 2 uses
  %i.bg = add nuw nsw i64 %.0.i152223, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.ao
  br i1 %exitcond.not, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit, label %scalar.ph, !llvm.loop !923

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit: ; preds = %scalar.ph, %middle.block, %.preheader217
  %.05.i.lcssa = phi i64 [ 0, %.preheader217 ], [ %i.ba, %middle.block ], [ %i.bf, %scalar.ph ]
  %i.bh = load i32, ptr %1, align 64
  %i.bi = icmp ne i32 %i.bh, -1                   ; 4 uses
  %.v.i139 = select i1 %i.bi, i64 2, i64 0
  %i.bj = icmp eq i64 %.05.i.lcssa, %.v.i139
  %spec.select.i140 = select i1 %i.bj, i32 15, i32 5 ; 3 uses
  %i.bk = icmp eq i32 %i.an, 2
  %or.cond.i143 = select i1 %i.bk, i1 %i.bi, i1 false
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = load float, ptr %i.bl, align 4          ; 3 uses
  br i1 %or.cond.i143, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit
  %i.bn = fcmp oeq float %i.bm, 0.000000e+00
  br i1 %i.bn, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = fcmp oeq float %i.bm, +inf
  %.1..i150 = select i1 %i.bo, i32 %spec.select.i140, i32 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151

bb.k:                                             ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit
  %i.bp = fcmp une float %i.bm, 0.000000e+00
  br i1 %i.bp, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq i32 %i.an, 3
  %or.cond3.i144 = select i1 %i.bq, i1 %i.bi, i1 false
  %or.cond3.not.i145 = xor i1 %or.cond3.i144, true
  %i.br = icmp ne i32 %i.an, 4
  %or.cond5.i146 = select i1 %i.br, i1 true, i1 %i.bi
  %or.cond22.i147 = select i1 %or.cond3.not.i145, i1 %or.cond5.i146, i1 false
  %spec.select23.i148 = select i1 %or.cond22.i147, i32 0, i32 %spec.select.i140
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.020.i149 = phi i32 [ %spec.select23.i148, %bb.l ], [ %.1..i150, %bb.j ], [ %spec.select.i140, %bb.i ], [ 16, %bb.k ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 836
  %i.bu = load i32, ptr %i.bt, align 4            ; 6 uses
  %i.bv = zext i32 %i.bu to i64                   ; 3 uses
  %.not241 = icmp eq i32 %i.bu, 0
  br i1 %.not241, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E14numEdgeCreasesEv.exit155, label %.lr.ph227

.lr.ph227:                                        ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit151
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.bx = load ptr, ptr %i.bw, align 64           ; 2 uses
  %min.iters.check272 = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check272, label %scalar.ph271.preheader, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph227
  %n.vec274 = and i64 %i.bv, 4294967292           ; 3 uses
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next281, %vector.body275 ] ; 2 uses
  %vec.phi277 = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.ce, %vector.body275 ]
  %vec.phi278 = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.cf, %vector.body275 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index276 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load279 = load <2 x float>, ptr %i.by, align 4
  %wide.load280 = load <2 x float>, ptr %i.bz, align 4
  %i.ca = fcmp ogt <2 x float> %wide.load279, zeroinitializer
  %i.cb = fcmp ogt <2 x float> %wide.load280, zeroinitializer
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = add <2 x i64> %vec.phi277, %i.cc        ; 2 uses
  %i.cf = add <2 x i64> %vec.phi278, %i.cd        ; 2 uses
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next281, %n.vec274
end_hunk_0
begin_hunk_1_@_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_:bb.a
  br i1 %i.fq, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit
  %i.fr = and i32 %i.fp, 1
  %.not91 = icmp eq i32 %i.fr, 0
  br i1 %.not91, label %.preheader.preheader, label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit108

_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit108: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN6embree13BSplinePatchTINS_6Vec3faES1_E4initERKNS_18CatmullClarkPatchTIS1_S1_EE(ptr noundef nonnull align 64 dereferenceable(256) %9, ptr noundef nonnull align 64 dereferenceable(3328) %1)
  call void @_ZN6embree4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES4_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(256) %9, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.k, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216

.preheader.preheader:                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN6embree13GregoryPatchTINS_6Vec3faES1_E13init_crackfixERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_(ptr noundef nonnull align 64 dereferenceable(320) %10, ptr noundef nonnull align 64 dereferenceable(3328) %1, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @_ZN6embree4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13GregoryPatchTINS_6Vec3faES4_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(320) %10, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.k, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216

bb.z:                                             ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E4typeEv.exit
  %i.fs = and i32 %i.fp, 2
  %.not84 = icmp eq i32 %i.fs, 0
  br i1 %.not84, label %bb.aa, label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit

_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN6embree13BSplinePatchTINS_6Vec3faES1_E4initERKNS_18CatmullClarkPatchTIS1_S1_EE(ptr noundef nonnull align 64 dereferenceable(256) %11, ptr noundef nonnull align 64 dereferenceable(3328) %1)
  call void @_ZN6embree4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES4_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(256) %11, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.k, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.ft, ptr %i.fu, align 64
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 200
  store i32 0, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 204
  store i32 0, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 768
  store ptr %i.fx, ptr %i.fy, align 64
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 896
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 960
  store ptr %i.fz, ptr %i.ga, align 64
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 1032
  store i32 0, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 1036
  store i32 0, ptr %i.gc, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 1088
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 1600
  store ptr %i.gd, ptr %i.ge, align 64
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 1728
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 1792
  store ptr %i.gf, ptr %i.gg, align 64
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 1864
  store i32 0, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 1868
  store i32 0, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 1920
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 2432
  store ptr %i.gj, ptr %i.gk, align 64
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 2560
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 2624
  store ptr %i.gl, ptr %i.gm, align 64
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 2696
  store i32 0, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 2700
  store i32 0, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 2752
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 3264
  store ptr %i.gp, ptr %i.gq, align 64
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 3392
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 3456
  store ptr %i.gr, ptr %i.gs, align 64
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 3528
  store i32 0, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 3532
  store i32 0, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 3584
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 4096
  store ptr %i.gv, ptr %i.gw, align 64
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 4224
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 4288
  store ptr %i.gx, ptr %i.gy, align 64
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 4360
  store i32 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 4364
  store i32 0, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 4416
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 4928
  store ptr %i.hb, ptr %i.hc, align 64
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 5056
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 5120
  store ptr %i.hd, ptr %i.he, align 64
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 5192
  store i32 0, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 5196
  store i32 0, ptr %i.hg, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 5248
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 5760
  store ptr %i.hh, ptr %i.hi, align 64
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 5888
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 5952
  store ptr %i.hj, ptr %i.hk, align 64
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 6024
  store i32 0, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 6028
  store i32 0, ptr %i.hm, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 6080
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 6592
  store ptr %i.hn, ptr %i.ho, align 64
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 6720
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 6784
  store ptr %i.hp, ptr %i.hq, align 64
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 6856
  store i32 0, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 6860
  store i32 0, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 6912
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 7424
  store ptr %i.ht, ptr %i.hu, align 64
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 7552
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 7616
  store ptr %i.hv, ptr %i.hw, align 64
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 7688
  store i32 0, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 7692
  store i32 0, ptr %i.hy, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 7744
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 8256
  store ptr %i.hz, ptr %i.ia, align 64
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 8384
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 8448
  store ptr %i.ib, ptr %i.ic, align 64
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 8520
  store i32 0, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 8524
  store i32 0, ptr %i.ie, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 8576
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 9088
  store ptr %i.if, ptr %i.ig, align 64
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 9216
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 9280
  store ptr %i.ih, ptr %i.ii, align 64
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 9352
  store i32 0, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 9356
  store i32 0, ptr %i.ik, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 9408
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 9920
  store ptr %i.il, ptr %i.im, align 64
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 10048
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 10112
  store ptr %i.in, ptr %i.io, align 64
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 10184
  store i32 0, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 10188
  store i32 0, ptr %i.iq, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 10240
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 10752
  store ptr %i.ir, ptr %i.is, align 64
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 10880
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 10944
  store ptr %i.it, ptr %i.iu, align 64
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 11016
  store i32 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 11020
  store i32 0, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 11072
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 11584
  store ptr %i.ix, ptr %i.iy, align 64
  %i.iz = getelementptr inbounds nuw i8, ptr %12, i64 11712
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 11776
  store ptr %i.iz, ptr %i.ja, align 64
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 11848
  store i32 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 11852
  store i32 0, ptr %i.jc, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 11904
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 12416
  store ptr %i.jd, ptr %i.je, align 64
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 12544
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 12608
  store ptr %i.jf, ptr %i.jg, align 64
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 12680
  store i32 0, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 12684
  store i32 0, ptr %i.ji, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 12736
  %i.jk = getelementptr inbounds nuw i8, ptr %12, i64 13248
  store ptr %i.jj, ptr %i.jk, align 64
  invoke void @_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE(ptr noundef nonnull align 64 dereferenceable(3328) %1, ptr noundef nonnull align 64 dereferenceable(13312) %12)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jm = load <2 x float>, ptr %2, align 4, !noalias !940 ; 7 uses
  %i.jn = load <2 x float>, ptr %i.jl, align 4, !noalias !940 ; 6 uses
  %i.jo = fadd <2 x float> %i.jm, %i.jn
  %i.jp = fmul <2 x float> %i.jo, splat (float 5.000000e-01) ; 8 uses
  %21 = extractelement <2 x float> %i.jp, i64 1   ; 2 uses
  %22 = extractelement <2 x float> %i.jp, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %23 = extractelement <2 x float> %i.jm, i64 0
  %24 = extractelement <2 x float> %i.jm, i64 1
  %i.jq = shufflevector <2 x float> %i.jm, <2 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.jq, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store float %22, ptr %14, align 4
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  store float %24, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %27 = extractelement <2 x float> %i.jn, i64 0   ; 2 uses
  store float %27, ptr %26, align 4
  %28 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float %21, ptr %28, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %29 = extractelement <2 x float> %i.jn, i64 1
  %i.jr = shufflevector <2 x float> %i.jp, <2 x float> %i.jn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.jr, ptr %15, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store float %23, ptr %16, align 4
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %21, ptr %30, align 4
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %22, ptr %31, align 4
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float %29, ptr %32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.js = load <4 x float>, ptr %3, align 4, !noalias !14 ; 3 uses
  %i.jt = fcmp olt <4 x float> %i.jq, %i.js
  %i.ju = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> %i.js, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.jw = shufflevector <2 x float> %i.jm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jy = select <4 x i1> %i.jt, <4 x float> %i.jv, <4 x float> %i.jx
  store <4 x float> %i.jy, ptr %17, align 16, !alias.scope !941
  %i.jz = add nuw nsw i32 %4, 1                   ; 4 uses
  invoke void @_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(3328) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %17, i32 noundef %i.jz, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 3328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %33 = load <4 x float>, ptr %3, align 4, !noalias !14 ; 3 uses
  %34 = shufflevector <2 x float> %i.jp, <2 x float> %i.jm, <4 x i32> <i32 0, i32 3, i32 poison, i32 1> ; 2 uses
  %i.kb = insertelement <4 x float> %34, float %27, i64 2
  %i.kc = fcmp olt <4 x float> %i.kb, %33
  %i.kd = shufflevector <2 x float> %i.jn, <2 x float> %i.jp, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ke = shufflevector <4 x float> %33, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kf = shufflevector <4 x float> %34, <4 x float> %33, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kg = select <4 x i1> %i.kc, <4 x float> %i.ke, <4 x float> %i.kf
  store <4 x float> %i.kg, ptr %18, align 16, !alias.scope !942
  invoke void @_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(3328) %i.ka, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 noundef %i.jz, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 6656 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.ki = load <4 x float>, ptr %3, align 4, !noalias !14 ; 3 uses
  %i.kj = fcmp olt <4 x float> %i.jr, %i.ki
  %35 = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.kk = shufflevector <4 x float> %35, <4 x float> %i.ki, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.kl = shufflevector <4 x float> %i.ju, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.km = select <4 x i1> %i.kj, <4 x float> %i.kk, <4 x float> %i.kl
  store <4 x float> %i.km, ptr %19, align 16, !alias.scope !943
  invoke void @_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(3328) %i.kh, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %19, i32 noundef %i.jz, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 9984 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.ko = load <4 x float>, ptr %3, align 4, !noalias !14 ; 3 uses
  %i.kp = shufflevector <2 x float> %i.jm, <2 x float> %i.jp, <4 x i32> <i32 0, i32 3, i32 2, i32 poison> ; 2 uses
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> %35, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.kr = fcmp olt <4 x float> %i.kq, %i.ko
  %i.ks = shufflevector <4 x float> %i.ko, <4 x float> %i.kq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kt = shufflevector <4 x float> %i.kp, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ku = select <4 x i1> %i.kr, <4 x float> %i.ks, <4 x float> %i.kt
  store <4 x float> %i.ku, ptr %20, align 16, !alias.scope !944
  invoke void @_ZN6embree4sse223FeatureAdaptiveEvalGrid4evalERKNS_18CatmullClarkPatchTINS_6Vec3faES3_EERKNS_4BBoxINS_4Vec2IfEEEESC_jPKNS_16CubicBezierCurveIS3_EESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(3328) %i.kn, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef %i.jz, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %i.kn) #19
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %i.kh) #19
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %i.ka) #19
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(13312) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216

bb.ag:                                            ; preds = %bb.aa
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.al

bb.ai:                                            ; preds = %bb.ac
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.al

bb.aj:                                            ; preds = %bb.ad
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.kz, %bb.ak ], [ %i.ky, %bb.aj ], [ %i.kx, %bb.ai ], [ %i.kw, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ag
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kv, %bb.ag ], [ %.pn, %bb.al ]
  call void @_ZN6embree7array_tINS_18CatmullClarkPatchTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(13312) dereferenceable(13312) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread216: ; preds = %bb.a, %bb.b, %bb.h, %bb.af, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit, %.preheader.preheader, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EEPKNS_16CubicBezierCurveIS1_EESA_SA_SA_.exit108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES4_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 64 dereferenceable(256) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 64               ; 6 uses
  %i.b = alloca [8 x i32], align 64               ; 6 uses
  %7 = alloca %"struct.embree::vboolf_impl", align 16 ; 8 uses
  %8 = alloca %"struct.embree::vint_impl", align 16 ; 8 uses
  %9 = alloca %"struct.embree::vint_impl", align 16 ; 8 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %10 = alloca %class.anon.75, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.f = load <2 x float>, ptr %i.e, align 4
  %i.g = load <2 x float>, ptr %2, align 4
  %i.h = fsub <2 x float> %i.f, %i.g              ; 3 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.j = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.i) ; 2 uses
  %i.k = extractelement <4 x float> %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.m = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.l) ; 2 uses
  %i.n = extractelement <4 x float> %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.j, <4 x float> %i.m, <2 x i32> <i32 0, i32 4>
  %i.p = fmul <2 x float> %i.h, %i.o
  %i.q = fsub <2 x float> splat (float 2.000000e+00), %i.p ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fmul float %i.k, %i.r
  store float %i.s, ptr %i.c, align 4
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fmul float %i.n, %i.t
  store float %i.u, ptr %i.d, align 4
  %i.v = sub nsw i32 %4, %3
  %i.w = sub nsw i32 %6, %5
  %i.x = mul nsw i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %0, ptr %10, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.d, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %1, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.af = icmp slt i32 %5, %6
  %i.ag = icmp slt i32 %3, %4
  %or.cond26 = and i1 %i.af, %i.ag
  br i1 %or.cond26, label %.lr.ph, label %_ZN6embree8foreach2IZNS_4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES5_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiEUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_EEviiiiS9_.exit

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.c
  %.us-phi = phi i32 [ %.2.i.us, %bb.c ], [ %.2.i, %bb.e ]
  %exitcond.not = icmp eq i32 %i.ah, %6
  br i1 %exitcond.not, label %_ZN6embree8foreach2IZNS_4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES5_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiEUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_EEviiiiS9_.exit, label %.lr.ph, !llvm.loop !945

.lr.ph:                                           ; preds = %bb.a, %..loopexit_crit_edge
  %.028.i23 = phi i32 [ %i.ah, %..loopexit_crit_edge ], [ %5, %bb.a ] ; 2 uses
  %.029.i22 = phi i32 [ %.us-phi, %..loopexit_crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.ah = add nsw i32 %.028.i23, 1                ; 3 uses
  %.not = icmp slt i32 %i.ah, %6
  %i.ai = insertelement <4 x i32> poison, i32 %.028.i23, i64 0
  %i.aj = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.0.i21.us = phi i32 [ %.1.i.us, %bb.c ], [ %3, %.lr.ph ] ; 3 uses
  %.130.i20.us = phi i32 [ %.2.i.us, %bb.c ], [ %.029.i22, %.lr.ph ] ; 2 uses
  %i.ak = insertelement <4 x i32> poison, i32 %.0.i21.us, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = add <4 x i32> %i.al, <i32 0, i32 1, i32 2, i32 3>
  %i.an = sext i32 %.130.i20.us to i64            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.an
  store <4 x i32> %i.am, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.an
  store <4 x i32> %i.aj, ptr %i.ap, align 4
  %i.aq = sub nsw i32 %4, %.0.i21.us
  %i.ar = call noundef i32 @llvm.smin.i32(i32 %i.aq, i32 4) ; 2 uses
  %i.as = add nsw i32 %i.ar, %.130.i20.us         ; 4 uses
  %i.at = add nsw i32 %i.ar, %.0.i21.us           ; 2 uses
  %i.au = icmp sgt i32 %i.as, 3
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.av = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = icmp sgt <4 x i32> %i.aw, <i32 0, i32 1, i32 2, i32 3>
  %i.ay = sext <4 x i1> %i.ax to <4 x i32>
  store <4 x i32> %i.ay, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.az = load <2 x i64>, ptr %i.a, align 64, !noalias !951
  store <2 x i64> %i.az, ptr %8, align 16, !alias.scope !951
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.ba = load <2 x i64>, ptr %i.b, align 64, !noalias !952
  store <2 x i64> %i.ba, ptr %9, align 16, !alias.scope !952
  call void @_ZZN6embree4sse223FeatureAdaptiveEvalGrid13evalLocalGridINS_13BSplinePatchTINS_6Vec3faES4_EEEEvRKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESM_E_clESI_SM_SM_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.neg19.us = add i32 %i.at, 4
  %i.bb = sub i32 %.neg19.us, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us, %bb.b
  %.2.i.us = phi i32 [ 0, %bb.b ], [ %i.as, %.lr.ph.split.us ] ; 2 uses
  %.1.i.us = phi i32 [ %i.bb, %bb.b ], [ %i.at, %.lr.ph.split.us ] ; 2 uses
  %i.bc = icmp slt i32 %.1.i.us, %4
  br i1 %i.bc, label %.lr.ph.split.us, label %..loopexit_crit_edge, !llvm.loop !950

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.0.i21 = phi i32 [ %.1.i, %bb.e ], [ %3, %.lr.ph ] ; 4 uses
  %.130.i20 = phi i32 [ %.2.i, %bb.e ], [ %.029.i22, %.lr.ph ] ; 2 uses
  %i.bd = insertelement <4 x i32> poison, i32 %.0.i21, i64 0
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bf = add <4 x i32> %i.be, <i32 0, i32 1, i32 2, i32 3>
  %i.bg = sext i32 %.130.i20 to i64               ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bg
  store <4 x i32> %i.bf, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg
  store <4 x i32> %i.aj, ptr %i.bi, align 4
  %i.bj = sub nsw i32 %4, %.0.i21
  %i.bk = call noundef i32 @llvm.smin.i32(i32 %i.bj, i32 4) ; 2 uses
  %i.bl = add nsw i32 %i.bk, %.130.i20            ; 4 uses
  %i.bm = add nsw i32 %i.bk, %.0.i21              ; 2 uses
end_hunk_1
