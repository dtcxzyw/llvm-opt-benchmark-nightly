inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISD_ESaISt4pairIKSD_SE_EEEiRKNS0_12_OutputArrayESR_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !90    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph229.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toIS9_ESaISt4pairIKS9_SA_EEEiRKNS0_12_OutputArrayESN_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESU_E4typeEOSV_DpOSW_.exit"

.lr.ph229.i.i.i:                                  ; preds = %bb.a
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
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.y = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %.lr.ph229.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.y, %.lr.ph229.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.z = load ptr, ptr %.val, align 8, !tbaa !497, !nonnull !107, !align !305
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  store i32 %i.ac, ptr %2, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  store i32 %i.ae, ptr %i.e, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !18
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !499, !nonnull !107, !align !305
  %i.ai = call ptr @_ZNKSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !500, !nonnull !107, !align !311
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !35 ; 3 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !18
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul float %i.ak, %i.am
  %i.ao = load <2 x i32>, ptr %i.e, align 4, !tbaa !18
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>   ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = extractelement <2 x float> %i.ap, i64 1
  %i.at = fmul float %i.ak, %i.as
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !501, !nonnull !107, !align !311
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader204.preheader.i.i.i, label %._crit_edge226.i.i.i

.preheader204.preheader.i.i.i:                    ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %.preheader204.i.i.i

.preheader204.i.i.i:                              ; preds = %._crit_edge223.i.i.i, %.preheader204.preheader.i.i.i
  %i.ay = phi i32 [ %i.bh, %._crit_edge223.i.i.i ], [ %i.av, %.preheader204.preheader.i.i.i ] ; 4 uses
  %.050224.i.i.i = phi i32 [ %i.bi, %._crit_edge223.i.i.i ], [ 0, %.preheader204.preheader.i.i.i ] ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader.i.i.i, label %._crit_edge223.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader204.i.i.i
  %i.ba = uitofp nneg i32 %.050224.i.i.i to float
  br label %.preheader.i.i.i

._crit_edge226.i.i.i:                             ; preds = %._crit_edge223.i.i.i, %bb.c
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !502, !nonnull !107, !align !305 ; 3 uses
  %i.bc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge226.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #22
          to label %.noexc.i.i.i unwind label %bb.aa

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %i.bd = phi i32 [ %i.bk, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.be = phi i32 [ %i.bl, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 4 uses
  %.051222.i.i.i = phi i32 [ %i.bm, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 4 uses
  %invariant.smax.i.i.i = call i32 @llvm.smax.i32(i32 %.050224.i.i.i, i32 %.051222.i.i.i)
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.bg = uitofp nneg i32 %.051222.i.i.i to float
  br label %bb.e

._crit_edge223.i.i.i:                             ; preds = %._crit_edge.i.i.i, %.preheader204.i.i.i
  %i.bh = phi i32 [ %i.ay, %.preheader204.i.i.i ], [ %i.bk, %._crit_edge.i.i.i ] ; 2 uses
  %i.bi = add nuw nsw i32 %.050224.i.i.i, 1       ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %.preheader204.i.i.i, label %._crit_edge226.i.i.i, !llvm.loop !503

._crit_edge.i.i.i:                                ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, %.preheader.i.i.i
  %i.bk = phi i32 [ %i.bd, %.preheader.i.i.i ], [ %i.hu, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bl = phi i32 [ %i.be, %.preheader.i.i.i ], [ %i.hv, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bm = add nuw nsw i32 %.051222.i.i.i, 1       ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.i.i.i, label %._crit_edge223.i.i.i, !llvm.loop !504

bb.e:                                             ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.bo = phi i32 [ %i.bd, %.lr.ph.i.i.i ], [ %i.hu, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bp = phi i32 [ %i.be, %.lr.ph.i.i.i ], [ %i.hv, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %i.bq = phi i32 [ %i.be, %.lr.ph.i.i.i ], [ %i.hw, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 2 uses
  %.052221.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hx, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i ] ; 4 uses
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !505, !nonnull !107, !align !311
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !463 ; 2 uses
  %or.cond197.i.i.i = icmp sle i32 %i.bs, %invariant.smax.i.i.i
  %.not16.i.i.i.i = icmp sge i32 %.052221.i.i.i, %i.bs
  %or.cond198.i.i.i = or i1 %.not16.i.i.i.i, %or.cond197.i.i.i
  br i1 %or.cond198.i.i.i, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i

_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i: ; preds = %bb.e
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !506, !nonnull !107, !align !311 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !18
  %i.bz = load i32, ptr %i.ax, align 4, !tbaa !209
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !507, !nonnull !107, !align !305 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !211
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.cf = sext i32 %i.bz to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = mul nsw i32 %i.by, %.050224.i.i.i
  %i.cj = mul nsw i32 %i.bx, %.051222.i.i.i
  %i.ck = mul nsw i32 %i.bv, %.052221.i.i.i
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = add i32 %i.cl, %i.ci
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 1            ; 2 uses
  %i.cq = and i16 %i.cp, 255
  %i.cr = icmp ne i16 %i.cq, 128
  %i.cs = icmp ugt i16 %i.cp, 255
  %or.cond.i.i.i = and i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !508, !nonnull !107, !align !311
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !35 ; 3 uses
  %i.cv = fmul float %i.cu, %i.ba
  %i.cw = fmul float %i.cu, %i.bg
  %i.cx = uitofp nneg i32 %.052221.i.i.i to float
  %i.cy = fmul float %i.cu, %i.cx
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !509, !nonnull !107, !align !311
  %.scalar = fadd float %i.an, %i.cv
  %i.da = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar93 = fadd float %i.ar, %i.cw            ; 2 uses
  %i.dc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar93, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar94 = fadd float %i.at, %i.cy            ; 2 uses
  %i.de = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar94, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dg = insertelement <2 x float> %i.da, float %.scalar93, i64 1
  store <2 x float> %i.dg, ptr %5, align 8
  store float %.scalar94, ptr %.sroa.215.0..sroa_idx.i.i.i, align 8
  %i.dh = load <12 x float>, ptr %i.cz, align 4, !tbaa !35 ; 4 uses
  %i.di = shufflevector <12 x float> %i.dh, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.dj = insertelement <4 x float> %i.di, float -0.000000e+00, i64 3
  %i.dk = fmul <4 x float> %i.dj, %i.dd
  %i.dl = shufflevector <12 x float> %i.dh, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float 0.000000e+00, i64 3
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.db, <4 x float> %i.dk)
  %i.do = shufflevector <12 x float> %i.dh, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float 0.000000e+00, i64 3
  %i.dq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.df, <4 x float> %i.dn)
  %i.dr = shufflevector <12 x float> %i.dh, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  %i.ds = insertelement <4 x float> %i.dr, float 0.000000e+00, i64 3
  %i.dt = fadd <4 x float> %i.ds, %i.dq           ; 3 uses
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !286 ; 8 uses
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !298
  %.not.i.i77.i.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i77.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %7 = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %7, ptr %i.du, align 4, !tbaa !35
  %8 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %9 = extractelement <4 x float> %i.dt, i64 2
  store float %9, ptr %8, align 4, !tbaa !35
  %10 = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store float 0.000000e+00, ptr %10, align 4, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.dw, ptr %i.o, align 8, !tbaa !286
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.dx = load ptr, ptr %3, align 8, !tbaa !289   ; 5 uses
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775792
  br i1 %i.eb, label %bb.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
          to label %.noexc119.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc119.i.i.i:                                  ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ec = ashr exact i64 %i.ea, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %i.eg = select i1 %i.ee, i64 576460752303423487, i64 %i.ef ; 3 uses
  %.not.i.i115.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i115.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24
          to label %.noexc120.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc120.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  store <4 x float> %i.dt, ptr %i.ej, align 4, !tbaa !35
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.du
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i116.i.i.i

.lr.ph.i.i.i.i.i.i116.i.i.i:                      ; preds = %.noexc120.i.i.i, %.lr.ph.i.i.i.i.i.i116.i.i.i
  %.015.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i116.i.i.i ], [ %i.ei, %.noexc120.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i116.i.i.i ], [ %i.dx, %.noexc120.i.i.i ] ; 5 uses
  %i.ek = load float, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !35
  store float %i.ek, ptr %.015.i.i.i.i.i.i.i.i.i, align 4, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.em, ptr %i.en, align 4, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !35
  %i.eq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.ep, ptr %i.eq, align 4, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.es = load float, ptr %i.er, align 4, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.es, ptr %i.et, align 4, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i117.i.i.i = icmp eq ptr %i.eu, %i.du
  br i1 %.not.i.i.i.i.i.i117.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i116.i.i.i, !llvm.loop !510

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i116.i.i.i, %.noexc120.i.i.i
  %.0.lcssa.i.i.i.i.i.i118.i.i.i = phi ptr [ %i.ei, %.noexc120.i.i.i ], [ %i.ev, %.lr.ph.i.i.i.i.i.i116.i.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i118.i.i.i, i64 16
  %.not.i35.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i35.i.i.i.i, label %.noexc78.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ea) #23
  br label %.noexc78.i.i.i

.noexc78.i.i.i:                                   ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  store ptr %i.ei, ptr %3, align 8, !tbaa !289
  store ptr %i.ew, ptr %i.o, align 8, !tbaa !286
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.ex, ptr %i.p, align 8, !tbaa !298
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i: ; preds = %.noexc78.i.i.i, %bb.g
  %i.ey = load ptr, ptr %i.q, align 8, !tbaa !511, !nonnull !107
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !172, !range !192, !noundef !107
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.k, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !512, !nonnull !107, !align !311
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !35
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !513, !nonnull !107, !align !311
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !18
  %i.ff = load ptr, ptr %i.l, align 8, !tbaa !506, !nonnull !107, !align !311
  %i.fg = load <4 x i32>, ptr %i.ff, align 4, !tbaa !18
  store <4 x i32> %i.fg, ptr %6, align 16, !tbaa !18
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !507, !nonnull !107, !align !305
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !499, !nonnull !107, !align !305
  %i.fj = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_7Point3_IfEEfiNS_3VecIiLi4EEERKNS_3MatERKSt13unordered_mapINS4_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISA_ESaISt4pairIKSA_SB_EEE(ptr noundef nonnull align 4 dereferenceable(12) %5, float noundef %i.fc, i32 noundef %i.fe, ptr noundef nonnull align 4 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull align 8 dereferenceable(56) %i.fi)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.fca.0.extract4.i.i.i = extractvalue { <2 x float>, float } %i.fj, 0 ; 2 uses
  %.fca.1.extract5.i.i.i = extractvalue { <2 x float>, float } %i.fj, 1
  %i.fk = load ptr, ptr %i.n, align 8, !tbaa !509, !nonnull !107, !align !311 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !35, !noalias !514
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !35, !noalias !514
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !35, !noalias !514
  %i.ft = load <2 x float>, ptr %i.fk, align 4, !tbaa !35, !noalias !514
  %i.fu = load <2 x float>, ptr %i.fn, align 4, !tbaa !35, !noalias !514
  %i.fv = load <2 x float>, ptr %i.fq, align 4, !tbaa !35, !noalias !514
  %i.fw = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fx = insertelement <4 x float> %i.fw, float 0.000000e+00, i64 3
  %i.fy = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ga = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gb = shufflevector <4 x float> %i.fz, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gc = shufflevector <2 x float> %.fca.0.extract4.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.gc, <4 x float> zeroinitializer)
  %i.ge = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.fw, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> %i.fy, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gh = shufflevector <2 x float> %.fca.0.extract4.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gh, <4 x float> %i.gd)
  %i.gj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fm, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.fp, i64 1
  %i.gl = insertelement <4 x float> %i.gk, float %i.fs, i64 2
  %i.gm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract5.i.i.i, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gn, <4 x float> %i.gi) ; 3 uses
  %i.gp = load ptr, ptr %i.t, align 8, !tbaa !286 ; 8 uses
  %i.gq = load ptr, ptr %i.u, align 8, !tbaa !298
  %.not.i.i81.i.i.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i.i81.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %11 = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %11, ptr %i.gp, align 4, !tbaa !35
  %12 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %13 = extractelement <4 x float> %i.go, i64 2
  store float %13, ptr %12, align 4, !tbaa !35
  %14 = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store float 0.000000e+00, ptr %14, align 4, !tbaa !35
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %i.gr, ptr %i.t, align 8, !tbaa !286
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.gs = load ptr, ptr %4, align 8, !tbaa !289   ; 5 uses
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 4 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775792
  br i1 %i.gw, label %bb.o, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
          to label %.noexc139.i.i.i unwind label %.loopexit.split-lp200.i.i.i

.noexc139.i.i.i:                                  ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i: ; preds = %bb.n
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
          to label %.noexc140.i.i.i unwind label %.loopexit199.i.i.i ; 5 uses

.noexc140.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gv
  store <4 x float> %i.go, ptr %i.he, align 4, !tbaa !35
  %.not13.i.i.i.i.i.i124.i.i.i = icmp eq ptr %i.gs, %i.gp
  br i1 %.not13.i.i.i.i.i.i124.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i, label %.lr.ph.i.i.i.i.i.i125.i.i.i

.lr.ph.i.i.i.i.i.i125.i.i.i:                      ; preds = %.noexc140.i.i.i, %.lr.ph.i.i.i.i.i.i125.i.i.i
  %.015.i.i.i.i.i.i126.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i125.i.i.i ], [ %i.hd, %.noexc140.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i127.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i125.i.i.i ], [ %i.gs, %.noexc140.i.i.i ] ; 5 uses
  %i.hf = load float, ptr %.01214.i.i.i.i.i.i127.i.i.i, align 4, !tbaa !35
  store float %i.hf, ptr %.015.i.i.i.i.i.i126.i.i.i, align 4, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !35
  %i.hi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 4
  store float %i.hh, ptr %i.hi, align 4, !tbaa !35
  %i.hj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 8
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !35
  %i.hl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 8
  store float %i.hk, ptr %i.hl, align 4, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 12
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !35
  %i.ho = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 12
  store float %i.hn, ptr %i.ho, align 4, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i127.i.i.i, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i126.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i128.i.i.i = icmp eq ptr %i.hp, %i.gp
  br i1 %.not.i.i.i.i.i.i128.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i, label %.lr.ph.i.i.i.i.i.i125.i.i.i, !llvm.loop !510

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i125.i.i.i, %.noexc140.i.i.i
  %.0.lcssa.i.i.i.i.i.i130.i.i.i = phi ptr [ %i.hd, %.noexc140.i.i.i ], [ %i.hq, %.lr.ph.i.i.i.i.i.i125.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i130.i.i.i, i64 16
  %.not.i35.i138.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i35.i138.i.i.i, label %.noexc82.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #23
  br label %.noexc82.i.i.i

.noexc82.i.i.i:                                   ; preds = %bb.p, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i136.i.i.i
  store ptr %i.hd, ptr %4, align 8, !tbaa !289
  store ptr %i.hr, ptr %i.t, align 8, !tbaa !286
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hs, ptr %i.u, align 8, !tbaa !298
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i.i:                         ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit199.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i121.i.i.i
  %lpad.loopexit201.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp200.i.i.i:                      ; preds = %bb.o
  %lpad.loopexit.split-lp202.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i: ; preds = %.noexc82.i.i.i, %bb.m, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !501
  %.pre244.i.i.i = load i32, ptr %.pre.i.i.i, align 4, !tbaa !18 ; 3 uses
  br label %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i

bb.r:                                             ; preds = %.loopexit.split-lp200.i.i.i, %.loopexit199.i.i.i, %bb.q, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn54.pn.i.i.i = phi { ptr, i32 } [ %i.ht, %bb.q ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit201.i.i.i, %.loopexit199.i.i.i ], [ %lpad.loopexit.split-lp202.i.i.i, %.loopexit.split-lp200.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ac

_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i, %bb.e
  %i.hu = phi i32 [ %i.bo, %bb.e ], [ %.pre244.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bo, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hv = phi i32 [ %i.bp, %bb.e ], [ %.pre244.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bp, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hw = phi i32 [ %i.bq, %bb.e ], [ %.pre244.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit83.i.i.i ], [ %i.bq, %_ZN2cv3_atERNS_3MatERKNS_3VecIiLi3EEEiiNS2_IiLi4EEE.exit.i.i.i ] ; 2 uses
  %i.hx = add nuw nsw i32 %.052221.i.i.i, 1       ; 2 uses
  %i.hy = icmp slt i32 %i.hx, %i.hw
  br i1 %i.hy, label %bb.e, label %._crit_edge.i.i.i, !llvm.loop !519

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i: ; preds = %._crit_edge226.i.i.i
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !520, !nonnull !107, !align !305 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !282 ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !300
  %.not.i84.i.i.i = icmp eq ptr %i.ib, %i.id
  br i1 %.not.i84.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  %i.ie = load ptr, ptr %i.o, align 8, !tbaa !286 ; 2 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !289   ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc86.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ij = icmp ugt i64 %i.ii, 9223372036854775792
  br i1 %i.ij, label %.noexc.i.i.i98.i.i.i.invoke, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !197

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #24
          to label %.noexc86.i.i.i unwind label %.loopexit205.i.i.i

.noexc86.i.i.i:                                   ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.s
  %i.il = phi ptr [ null, %bb.s ], [ %i.ik, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.il, ptr %i.ib, align 8, !tbaa !289
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  store ptr %i.il, ptr %i.im, align 8, !tbaa !286
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ii
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store ptr %i.in, ptr %i.io, align 8, !tbaa !298
  %i.ip = load ptr, ptr %3, align 8, !tbaa !290   ; 2 uses
  %i.iq = load ptr, ptr %i.o, align 8, !tbaa !290 ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, %i.iq
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc86.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.il, %.noexc86.i.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ip, %.noexc86.i.i.i ] ; 5 uses
  %i.ir = load float, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, align 4, !tbaa !35
  store float %i.ir, ptr %.013.i.i.i.i.i.i.i.i.i, align 4, !tbaa !35
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 4
  %i.it = load float, ptr %i.is, align 4, !tbaa !35
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.it, ptr %i.iu, align 4, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !35
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.iw, ptr %i.ix, align 4, !tbaa !35
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 12
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !35
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.iz, ptr %i.ja, align 4, !tbaa !35
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jb, %i.iq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !521

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc86.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.il, %.noexc86.i.i.i ], [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.im, align 8, !tbaa !286
  %i.jd = load ptr, ptr %i.ia, align 8, !tbaa !282
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %i.je, ptr %i.ia, align 8, !tbaa !282
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i

bb.u:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  invoke void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i unwind label %.loopexit205.i.i.i

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i
  %i.jf = load ptr, ptr %i.x, align 8, !tbaa !522, !nonnull !107, !align !305 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !282 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
end_hunk_0
