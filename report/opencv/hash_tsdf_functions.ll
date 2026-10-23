Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@"_ZZN2cv34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEiS5_RKNS_12_OutputArrayEENK3$_0clERKNS7_IfLi4EEEPKi":bb.a
  %i.m = phi <2 x float> [ %i.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x float> [ %i.j, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x float> [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.p = phi <2 x float> [ %i.l, %bb.b ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !482
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load float, ptr %1, align 4, !tbaa !41, !noalias !484 ; 3 uses
  %i.s = load float, ptr %i.q, align 4, !tbaa !41, !noalias !484 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !41, !noalias !484
  %.fr.i = freeze float %i.u                      ; 3 uses
  %i.v = fcmp uno float %i.r, 0.000000e+00
  %spec.select.i = fcmp uno float %i.s, %.fr.i
  %i.w = select i1 %i.v, i1 true, i1 %spec.select.i
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2cv7Affine3IfE3invEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.p, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.ab, <2 x float> %i.z)
  %i.ad = insertelement <2 x float> poison, float %.fr.i, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = fadd <2 x float> %i.m, %i.af
  %i.ah = fmul float %.sroa.0.i.sroa.13.0, %i.s
  %i.ai = call float @llvm.fmuladd.f32(float %.sroa.0.i.sroa.12.0, float %i.r, float %i.ah)
  %i.aj = call float @llvm.fmuladd.f32(float %.sroa.0.i.sroa.14.0, float %.fr.i, float %i.ai)
  %i.ak = fadd float %.sroa.0.i.sroa.15.0, %i.aj
  store <2 x float> %i.ag, ptr %6, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ak, ptr %.sroa.29.0..sroa_idx, align 8
  %i.al = load ptr, ptr %0, align 8, !tbaa !481, !nonnull !92, !align !194 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !41, !noalias !485
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !41, !noalias !485
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.as = load float, ptr %i.ar, align 4, !tbaa !41, !noalias !485
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.au = load float, ptr %i.at, align 4, !tbaa !41, !noalias !485
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41, !noalias !485
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !486, !nonnull !92, !align !194
  %i.az = load float, ptr %i.ay, align 4, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !487, !nonnull !92, !align !194
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !488, !nonnull !92, !align !194
  %i.bf = load <4 x i32>, ptr %i.be, align 4, !tbaa !29
  store <4 x i32> %i.bf, ptr %7, align 16, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !489, !nonnull !92, !align !192
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !490, !nonnull !92, !align !192
  %i.bk = load <2 x float>, ptr %i.al, align 4, !tbaa !41, !noalias !485 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.ao, align 4, !tbaa !41, !noalias !485 ; 2 uses
  %i.bm = call { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_7Point3_IfEEfiNS_3VecIiLi4EEERKNS_3MatERKSt13unordered_mapINS4_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISA_ESaISt4pairIKSA_SB_EEE(ptr noundef nonnull align 4 dereferenceable(12) %6, float noundef %i.az, i32 noundef %i.bc, ptr noundef nonnull align 4 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(208) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.bj) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.bm, 0 ; 4 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.bm, 1 ; 2 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 0
  %.sroa.022.4.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 1
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x float> %.fca.0.extract1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> zeroinitializer)
  %i.bq = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.br = shufflevector <2 x float> %.fca.0.extract1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.aq, i64 1
  %i.bv = insertelement <2 x float> poison, float %.fca.1.extract2, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs)
  %i.by = call float @llvm.fmuladd.f32(float %i.as, float %.sroa.022.0.vec.extract, float 0.000000e+00)
  %i.bz = call float @llvm.fmuladd.f32(float %i.au, float %.sroa.022.4.vec.extract, float %i.by)
  %i.ca = call float @llvm.fmuladd.f32(float %i.aw, float %.fca.1.extract2, float %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2cv7Affine3IfE3invEi.exit
  %.sroa.7.0 = phi float [ +qnan, %_ZNK2cv7Affine3IfE3invEi.exit ], [ %i.ca, %bb.c ]
  %.sroa.027.0 = phi <2 x float> [ splat (float +qnan), %_ZNK2cv7Affine3IfE3invEi.exit ], [ %i.bx, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !491, !nonnull !92, !align !192 ; 3 uses
  %i.cd = load i32, ptr %2, align 4, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !100
  %i.ci = icmp slt i32 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !169
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = sext i32 %i.cd to i64
  %i.co = mul i64 %i.cm, %i.cn
  %.sink.idx.i = select i1 %i.ci, i64 0, i64 %i.co
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i
  %i.cp = sext i32 %i.cf to i64
  %i.cq = getelementptr inbounds [16 x i8], ptr %.sink.i, i64 %i.cp ; 3 uses
  store <2 x float> %.sroa.027.0, ptr %i.cq, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store float %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store float 0.000000e+00, ptr %.sroa.621.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISD_ESaISt4pairIKSD_SE_EEEiRKNS0_12_OutputArrayESR_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Vec.2", align 4         ; 8 uses
  %3 = alloca %"class.std::vector.58", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.58", align 8    ; 13 uses
  %5 = alloca %"class.cv::Point3_.4", align 8     ; 6 uses
  %6 = alloca %"class.cv::Vec.47", align 16       ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !86    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph224.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toIS9_ESaISt4pairIKS9_SA_EEEiRKNS0_12_OutputArrayESN_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESU_E4typeEOSV_DpOSW_.exit"

.lr.ph224.i.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.sroa.215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.y = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.aa, %.lr.ph224.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.y, %.lr.ph224.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.z = load ptr, ptr %.val, align 8, !tbaa !501, !nonnull !92, !align !192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  store i32 %i.ac, ptr %2, align 4, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  store i32 %i.ae, ptr %i.e, align 4, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !29
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !502, !nonnull !92, !align !192
  %i.ai = call ptr @_ZNKSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !503, !nonnull !92, !align !194
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41 ; 3 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !29
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul float %i.ak, %i.am
  %i.ao = load <2 x i32>, ptr %i.e, align 4, !tbaa !29
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>   ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = extractelement <2 x float> %i.ap, i64 1
  %i.at = fmul float %i.ak, %i.as
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !504, !nonnull !92, !align !194
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader199.preheader.i.i.i, label %._crit_edge221.i.i.i

.preheader199.preheader.i.i.i:                    ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %.preheader199.i.i.i

.preheader199.i.i.i:                              ; preds = %._crit_edge218.i.i.i, %.preheader199.preheader.i.i.i
  %i.ay = phi i32 [ %11, %._crit_edge218.i.i.i ], [ %i.av, %.preheader199.preheader.i.i.i ] ; 4 uses
  %.050219.i.i.i = phi i32 [ %i.bd, %._crit_edge218.i.i.i ], [ 0, %.preheader199.preheader.i.i.i ] ; 4 uses
  %7 = icmp sgt i32 %i.ay, 0
  br i1 %7, label %.preheader.preheader.i.i.i, label %._crit_edge218.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader199.i.i.i
  %8 = uitofp nneg i32 %.050219.i.i.i to float
  br label %.preheader.i.i.i

._crit_edge221.i.i.i:                             ; preds = %._crit_edge218.i.i.i, %bb.c
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !505, !nonnull !92, !align !192 ; 3 uses
  %i.ba = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge221.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ba) #22
          to label %.noexc.i.i.i unwind label %bb.w

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %i.bb = phi i32 [ %12, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.bc = phi i32 [ %13, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 4 uses
  %.051217.i.i.i = phi i32 [ %i.bf, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 4 uses
  %invariant.smax.i.i.i = call i32 @llvm.smax.i32(i32 %.050219.i.i.i, i32 %.051217.i.i.i)
  %9 = icmp sgt i32 %i.bc, 0
  br i1 %9, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %10 = uitofp nneg i32 %.051217.i.i.i to float
  br label %bb.e

._crit_edge218.i.i.i:                             ; preds = %._crit_edge.i.i.i, %.preheader199.i.i.i
  %11 = phi i32 [ %i.ay, %.preheader199.i.i.i ], [ %12, %._crit_edge.i.i.i ] ; 2 uses
  %i.bd = add nuw nsw i32 %.050219.i.i.i, 1       ; 2 uses
  %i.be = icmp slt i32 %i.bd, %11
  br i1 %i.be, label %.preheader199.i.i.i, label %._crit_edge221.i.i.i, !llvm.loop !492

._crit_edge.i.i.i:                                ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, %.preheader.i.i.i
  %12 = phi i32 [ %i.bb, %.preheader.i.i.i ], [ %i.hw, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %13 = phi i32 [ %i.bc, %.preheader.i.i.i ], [ %i.hx, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bf = add nuw nsw i32 %.051217.i.i.i, 1       ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %13
  br i1 %i.bg, label %.preheader.i.i.i, label %._crit_edge218.i.i.i, !llvm.loop !493

bb.e:                                             ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.bh = phi i32 [ %i.bb, %.lr.ph.i.i.i ], [ %i.hw, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bi = phi i32 [ %i.bc, %.lr.ph.i.i.i ], [ %i.hx, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bj = phi i32 [ %i.bc, %.lr.ph.i.i.i ], [ %i.hy, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %.052216.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hz, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !506, !nonnull !92, !align !194
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !208 ; 2 uses
  %or.cond197.i.i.i = icmp sle i32 %i.bl, %invariant.smax.i.i.i
  %.not16.i.i.i.i = icmp sge i32 %.052216.i.i.i, %i.bl
  %or.cond198.i.i.i = or i1 %.not16.i.i.i.i, %or.cond197.i.i.i
  br i1 %or.cond198.i.i.i, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i

_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i: ; preds = %bb.e
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !507, !nonnull !92, !align !194 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bs = load i32, ptr %i.ax, align 4, !tbaa !168
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !508, !nonnull !92, !align !192 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !169
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.by = sext i32 %i.bs to i64
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = mul nsw i32 %i.br, %.050219.i.i.i
  %i.cc = mul nsw i32 %i.bq, %.051217.i.i.i
  %i.cd = mul nsw i32 %i.bo, %.052216.i.i.i
  %i.ce = add i32 %i.cc, %i.cd
  %i.cf = add i32 %i.ce, %i.cb
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !27 ; 2 uses
  %i.cj = and i16 %i.ci, 255
  %i.ck = icmp ne i16 %i.cj, 128
  %i.cl = icmp ugt i16 %i.ci, 255
  %or.cond.i.i.i = and i1 %i.cl, %i.ck
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !509, !nonnull !92, !align !194
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !41 ; 3 uses
  %i.co = fmul float %i.cn, %8
  %i.cp = fmul float %i.cn, %10
  %i.cq = uitofp nneg i32 %.052216.i.i.i to float
  %i.cr = fmul float %i.cn, %i.cq
  %i.cs = load ptr, ptr %i.n, align 8, !tbaa !510, !nonnull !92, !align !194
  %.scalar = fadd float %i.an, %i.co
  %i.ct = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar97 = fadd float %i.ar, %i.cp            ; 2 uses
  %i.cv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar97, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar98 = fadd float %i.at, %i.cr            ; 2 uses
  %i.cx = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar98, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = insertelement <2 x float> %i.ct, float %.scalar97, i64 1
  store <2 x float> %i.cz, ptr %5, align 8
  store float %.scalar98, ptr %.sroa.215.0..sroa_idx.i.i.i, align 8
  %i.da = load <12 x float>, ptr %i.cs, align 4, !tbaa !41 ; 4 uses
  %i.db = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.dc = insertelement <4 x float> %i.db, float -0.000000e+00, i64 3
  %i.dd = fmul <4 x float> %i.dc, %i.cw
  %i.de = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.df = insertelement <4 x float> %i.de, float 0.000000e+00, i64 3
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cu, <4 x float> %i.dd)
  %i.dh = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.di = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 3
  %i.dj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.cy, <4 x float> %i.dg)
  %i.dk = shufflevector <12 x float> %i.da, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float 0.000000e+00, i64 3
  %i.dm = fadd <4 x float> %i.dl, %i.dj           ; 2 uses
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !187 ; 6 uses
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !190
  %.not.i.i77.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i77.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = insertelement <4 x float> %i.dm, float 0.000000e+00, i64 3
  store <4 x float> %i.dp, ptr %i.dn, align 4, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !187
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.dr = load ptr, ptr %3, align 8, !tbaa !188   ; 5 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.m, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i115.i.i.i = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i115.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #24
          to label %.noexc120.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc120.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store <4 x float> %i.dm, ptr %i.ed, align 4, !tbaa !41
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.dn
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i116.i.i.i

.lr.ph.i.i.i.i.i.i116.i.i.i:                      ; preds = %.noexc120.i.i.i, %.lr.ph.i.i.i.i.i.i116.i.i.i
  %.015.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i116.i.i.i ], [ %i.ec, %.noexc120.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i116.i.i.i ], [ %i.dr, %.noexc120.i.i.i ] ; 5 uses
  %i.ee = load float, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41
  store float %i.ee, ptr %.015.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.eg, ptr %i.eh, align 4, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.ej, ptr %i.ek, align 4, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.em = load float, ptr %i.el, align 4, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.em, ptr %i.en, align 4, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i117.i.i.i = icmp eq ptr %i.eo, %i.dn
  br i1 %.not.i.i.i.i.i.i117.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i116.i.i.i, !llvm.loop !11

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i116.i.i.i, %.noexc120.i.i.i
  %.0.lcssa.i.i.i.i.i.i118.i.i.i = phi ptr [ %i.ec, %.noexc120.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i116.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i118.i.i.i, i64 16
  %.not.i35.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i35.i.i.i.i, label %.noexc78.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !190
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.et) #23
  br label %.noexc78.i.i.i

.noexc78.i.i.i:                                   ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  store ptr %i.ec, ptr %3, align 8, !tbaa !188
  store ptr %i.eq, ptr %i.o, align 8, !tbaa !187
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eu, ptr %i.p, align 8, !tbaa !190
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i: ; preds = %.noexc78.i.i.i, %bb.g
  %i.ev = load ptr, ptr %i.q, align 8, !tbaa !511, !nonnull !92
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !139, !range !159, !noundef !92
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.j, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i
  %i.ey = load ptr, ptr %i.r, align 8, !tbaa !512, !nonnull !92, !align !194
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !41
  %i.fa = load ptr, ptr %i.s, align 8, !tbaa !513, !nonnull !92, !align !194
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !507, !nonnull !92, !align !194
  %i.fd = load <4 x i32>, ptr %i.fc, align 4, !tbaa !29
  store <4 x i32> %i.fd, ptr %6, align 16, !tbaa !29
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !508, !nonnull !92, !align !192
  %i.ff = load ptr, ptr %i.g, align 8, !tbaa !502, !nonnull !92, !align !192
  %i.fg = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_7Point3_IfEEfiNS_3VecIiLi4EEERKNS_3MatERKSt13unordered_mapINS4_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISA_ESaISt4pairIKSA_SB_EEE(ptr noundef nonnull align 4 dereferenceable(12) %5, float noundef %i.ez, i32 noundef %i.fb, ptr noundef nonnull align 4 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(208) %i.fe, ptr noundef nonnull align 8 dereferenceable(56) %i.ff)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.fca.0.extract4.i.i.i = extractvalue { <2 x float>, float } %i.fg, 0 ; 2 uses
  %.fca.1.extract5.i.i.i = extractvalue { <2 x float>, float } %i.fg, 1
  %i.fh = load ptr, ptr %i.n, align 8, !tbaa !510, !nonnull !92, !align !194 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !41, !noalias !514
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !41, !noalias !514
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !41, !noalias !514
  %i.fq = load <2 x float>, ptr %i.fh, align 4, !tbaa !41, !noalias !514
  %i.fr = load <2 x float>, ptr %i.fk, align 4, !tbaa !41, !noalias !514
  %i.fs = load <2 x float>, ptr %i.fn, align 4, !tbaa !41, !noalias !514
  %i.ft = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fu = insertelement <4 x float> %i.ft, float 0.000000e+00, i64 3
  %i.fv = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.fx = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fz = shufflevector <2 x float> %.fca.0.extract4.i.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float -0.000000e+00, i64 3
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.ga, <4 x float> zeroinitializer)
  %i.gc = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.fv, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <2 x float> %.fca.0.extract4.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> %i.gg, <4 x float> %i.gb)
  %i.gi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fj, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.fm, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.fp, i64 2
  %i.gl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract5.i.i.i, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gm, <4 x float> %i.gh) ; 2 uses
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !187 ; 6 uses
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !190
  %.not.i.i81.i.i.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i.i81.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = insertelement <4 x float> %i.gn, float 0.000000e+00, i64 3
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !41
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.gr, ptr %i.t, align 8, !tbaa !187
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.gs = load ptr, ptr %4, align 8, !tbaa !188   ; 5 uses
  %i.gt = ptrtoint ptr %i.go to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 3 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775792
  br i1 %i.gw, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i: ; preds = %bb.m
  %i.gx = ashr exact i64 %i.gv, 4                 ; 3 uses
  %.sroa.speculated.i.i122.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i122.i.i.i, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 576460752303423487)
  %i.hb = select i1 %i.gz, i64 576460752303423487, i64 %i.ha ; 3 uses
  %.not.i.i123.i.i.i = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i123.i.i.i)
  %i.hc = shl nuw nsw i64 %i.hb, 4
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #24
          to label %.noexc140.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc140.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gv
  store <4 x float> %i.gn, ptr %i.he, align 4, !tbaa !41
  %.not13.i.i.i.i.i.i124.i.i.i = icmp eq ptr %i.gs, %i.go
  br i1 %.not13.i.i.i.i.i.i124.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i, label %.lr.ph.i.i.i.i.i.i125.i.i.i

.lr.ph.i.i.i.i.i.i125.i.i.i:                      ; preds = %.noexc140.i.i.i, %.lr.ph.i.i.i.i.i.i125.i.i.i
  %.015.i.i.i.i.i.i126.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i125.i.i.i ], [ %i.hd, %.noexc140.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i127.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i125.i.i.i ], [ %i.gs, %.noexc140.i.i.i ] ; 5 uses
  %i.hf = load float, ptr %.01214.i.i.i.i.i.i127.i.i.i, align 4, !tbaa !41
  store float %i.hf, ptr %.015.i.i.i.i.i.i126.i.i.i, align 4, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 4
  store float %i.hh, ptr %i.hi, align 4, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 8
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !41
  %i.hl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 8
  store float %i.hk, ptr %i.hl, align 4, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 12
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 12
  store float %i.hn, ptr %i.ho, align 4, !tbaa !41
  %i.hp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i128.i.i.i = icmp eq ptr %i.hp, %i.go
  br i1 %.not.i.i.i.i.i.i128.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i, label %.lr.ph.i.i.i.i.i.i125.i.i.i, !llvm.loop !11

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i125.i.i.i, %.noexc140.i.i.i
  %.0.lcssa.i.i.i.i.i.i130.i.i.i = phi ptr [ %i.hd, %.noexc140.i.i.i ], [ %i.hq, %.lr.ph.i.i.i.i.i.i125.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i130.i.i.i, i64 16
  %.not.i35.i138.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i35.i138.i.i.i, label %.noexc82.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i
  %i.hs = load ptr, ptr %i.u, align 8, !tbaa !190
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.ht, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hu) #23
  br label %.noexc82.i.i.i

.noexc82.i.i.i:                                   ; preds = %bb.n, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i
  store ptr %i.hd, ptr %4, align 8, !tbaa !188
  store ptr %i.hr, ptr %i.t, align 8, !tbaa !187
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hv, ptr %i.u, align 8, !tbaa !190
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i, %bb.j, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.x

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i: ; preds = %.noexc82.i.i.i, %bb.l, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !504
  %.pre240.i.i.i = load i32, ptr %.pre.i.i.i, align 4, !tbaa !29 ; 3 uses
  br label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i

_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i, %bb.e
  %i.hw = phi i32 [ %i.bh, %bb.e ], [ %.pre240.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bh, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hx = phi i32 [ %i.bi, %bb.e ], [ %.pre240.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bi, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hy = phi i32 [ %i.bj, %bb.e ], [ %.pre240.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bj, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hz = add nuw nsw i32 %.052216.i.i.i, 1       ; 2 uses
  %i.ia = icmp slt i32 %i.hz, %i.hy
  br i1 %i.ia, label %bb.e, label %._crit_edge.i.i.i, !llvm.loop !498

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i: ; preds = %._crit_edge221.i.i.i
  %i.ib = load ptr, ptr %i.w, align 8, !tbaa !515, !nonnull !92, !align !192 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !183 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !191
  %.not.i84.i.i.i = icmp eq ptr %i.id, %i.if
  br i1 %.not.i84.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  %i.ig = load ptr, ptr %i.o, align 8, !tbaa !187 ; 2 uses
  %i.ih = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc86.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.il = icmp ugt i64 %i.ik, 9223372036854775792
  br i1 %i.il, label %.noexc.i.i.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !162

.noexc.i.i.i.i.i.i.invoke:                        ; preds = %bb.s, %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc.i.i.i.i.i.i.cont unwind label %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i.i.i.cont:                          ; preds = %.noexc.i.i.i.i.i.i.invoke
  unreachable

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #24
          to label %.noexc86.i.i.i unwind label %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc86.i.i.i:                                   ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.in = phi ptr [ null, %bb.o ], [ %i.im, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.in, ptr %i.id, align 8, !tbaa !188
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  store ptr %i.in, ptr %i.io, align 8, !tbaa !187
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !190
  %i.ir = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.is = load ptr, ptr %i.o, align 8, !tbaa !189 ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, %i.is
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc86.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.in, %.noexc86.i.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ir, %.noexc86.i.i.i ] ; 5 uses
  %i.it = load float, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41
  store float %i.it, ptr %.013.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !41
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.iv, ptr %i.iw, align 4, !tbaa !41
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 8
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !41
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.iy, ptr %i.iz, align 4, !tbaa !41
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.jb, ptr %i.jc, align 4, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jd, %i.is
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !12

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc86.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.in, %.noexc86.i.i.i ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.io, align 8, !tbaa !187
  %i.jf = load ptr, ptr %i.ic, align 8, !tbaa !183
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store ptr %i.jg, ptr %i.ic, align 8, !tbaa !183
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i

bb.q:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  invoke void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr %i.id, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i unwind label %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i
  %i.jh = load ptr, ptr %i.x, align 8, !tbaa !516, !nonnull !92, !align !192 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !183 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !191
  %.not.i88.i.i.i = icmp eq ptr %i.jj, %i.jl
  br i1 %.not.i88.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i
  %i.jm = load ptr, ptr %i.t, align 8, !tbaa !187 ; 2 uses
  %i.jn = load ptr, ptr %4, align 8, !tbaa !188   ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i89.i.i.i = icmp eq ptr %i.jm, %i.jn
  br i1 %.not.i.i.i.i.i89.i.i.i, label %.noexc100.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jr = icmp ugt i64 %i.jq, 9223372036854775792
  br i1 %i.jr, label %.noexc.i.i.i.i.i.i.invoke, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i90.i.i.i, !prof !162

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i90.i.i.i: ; preds = %bb.s
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #24
          to label %.noexc100.i.i.i unwind label %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc100.i.i.i:                                  ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i90.i.i.i, %bb.r
  %i.jt = phi ptr [ null, %bb.r ], [ %i.js, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i90.i.i.i ] ; 5 uses
  store ptr %i.jt, ptr %i.jj, align 8, !tbaa !188
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !187
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jq
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !190
  %i.jx = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.jy = load ptr, ptr %i.t, align 8, !tbaa !189 ; 2 uses
  %.not11.i.i.i.i.i.i91.i.i.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not11.i.i.i.i.i.i91.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i96.i.i.i, label %.lr.ph.i.i.i.i.i.i92.i.i.i

.lr.ph.i.i.i.i.i.i92.i.i.i:                       ; preds = %.noexc100.i.i.i, %.lr.ph.i.i.i.i.i.i92.i.i.i
  %.013.i.i.i.i.i.i93.i.i.i = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i92.i.i.i ], [ %i.jt, %.noexc100.i.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i94.i.i.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i92.i.i.i ], [ %i.jx, %.noexc100.i.i.i ] ; 5 uses
  %i.jz = load float, ptr %.sroa.08.012.i.i.i.i.i.i94.i.i.i, align 4, !tbaa !41
  store float %i.jz, ptr %.013.i.i.i.i.i.i93.i.i.i, align 4, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i94.i.i.i, i64 4
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i93.i.i.i, i64 4
  store float %i.kb, ptr %i.kc, align 4, !tbaa !41
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i94.i.i.i, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i93.i.i.i, i64 8
  store float %i.ke, ptr %i.kf, align 4, !tbaa !41
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i94.i.i.i, i64 12
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i93.i.i.i, i64 12
  store float %i.kh, ptr %i.ki, align 4, !tbaa !41
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i94.i.i.i, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i93.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i95.i.i.i = icmp eq ptr %i.kj, %i.jy
  br i1 %.not.i.i.i.i.i.i95.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i96.i.i.i, label %.lr.ph.i.i.i.i.i.i92.i.i.i, !llvm.loop !12

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i96.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i92.i.i.i, %.noexc100.i.i.i
  %.0.lcssa.i.i.i.i.i.i97.i.i.i = phi ptr [ %i.jt, %.noexc100.i.i.i ], [ %i.kk, %.lr.ph.i.i.i.i.i.i92.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i97.i.i.i, ptr %i.ju, align 8, !tbaa !187
  %i.kl = load ptr, ptr %i.ji, align 8, !tbaa !183
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store ptr %i.km, ptr %i.ji, align 8, !tbaa !183
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit102.i.i.i

bb.t:                                             ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i
  invoke void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit102.i.i.i unwind label %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit102.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i96.i.i.i
  %i.kn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #21 ; 0 uses
  %i.ko = load ptr, ptr %4, align 8, !tbaa !188   ; 3 uses
  %.not.i.i.i103.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i103.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit104.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit102.i.i.i
  %i.kp = load ptr, ptr %i.u, align 8, !tbaa !190
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.ko to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.ks) #23
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit104.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit104.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.kt = load ptr, ptr %3, align 8, !tbaa !188   ; 3 uses
  %.not.i.i.i105.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i105.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit106.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit104.i.i.i
  %i.ku = load ptr, ptr %i.p, align 8, !tbaa !190
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #23
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit106.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit106.i.i.i: ; preds = %bb.v, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit104.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.aa

bb.w:                                             ; preds = %bb.d
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.q, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i90.i.i.i, %bb.t, %.noexc.i.i.i.i.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_0
