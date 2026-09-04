Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZNSt17_Function_handlerIFvllEZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOlS7_":bb.a
  %i.fp = phi i32 [ %.pre91.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fq = phi i32 [ %.pre89.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fr = phi i32 [ %.pre87.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fs = phi i32 [ %.pre85.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ft = phi i32 [ %.pre83.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fu = phi i32 [ %.pre81.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fv = phi i32 [ %.pre79.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fw = phi i32 [ %.pre77.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fx = phi i32 [ %.pre75.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fy = phi i32 [ %.pre73.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.fz = phi i32 [ %.pre71.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ga = phi i32 [ %.pre.i.i.i, %.critedge43.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gd = atomicrmw add ptr %i.gc, i32 %i.ga seq_cst, align 4 ; 0 uses
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = atomicrmw add ptr %i.gf, i32 %i.fz seq_cst, align 4 ; 0 uses
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = atomicrmw add ptr %i.gi, i32 %i.fy seq_cst, align 4 ; 0 uses
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = atomicrmw add ptr %i.gl, i32 %i.fx seq_cst, align 4 ; 0 uses
  %i.gn = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = atomicrmw add ptr %i.go, i32 %i.fw seq_cst, align 4 ; 0 uses
  %i.gq = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.gs = atomicrmw add ptr %i.gr, i32 %i.fv seq_cst, align 4 ; 0 uses
  %i.gt = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = atomicrmw add ptr %i.gu, i32 %i.fu seq_cst, align 4 ; 0 uses
  %i.gw = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.gy = atomicrmw add ptr %i.gx, i32 %i.ft seq_cst, align 4 ; 0 uses
  %i.gz = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = atomicrmw add ptr %i.ha, i32 %i.fs seq_cst, align 4 ; 0 uses
  %i.hc = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 36
  %i.he = atomicrmw add ptr %i.hd, i32 %i.fr seq_cst, align 4 ; 0 uses
  %i.hf = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = atomicrmw add ptr %i.hg, i32 %i.fq seq_cst, align 4 ; 0 uses
  %i.hi = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %i.hk = atomicrmw add ptr %i.hj, i32 %i.fp seq_cst, align 4 ; 0 uses
  %i.hl = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = atomicrmw add ptr %i.hm, i32 %i.fo seq_cst, align 4 ; 0 uses
  %i.ho = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 52
  %i.hq = atomicrmw add ptr %i.hp, i32 %i.fn seq_cst, align 4 ; 0 uses
  %i.hr = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ht = atomicrmw add ptr %i.hs, i32 %i.fm seq_cst, align 4 ; 0 uses
  %i.hu = load ptr, ptr %i.gb, align 8, !tbaa !693, !nonnull !30, !align !127
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 60
  %i.hw = atomicrmw add ptr %i.hv, i32 %i.fl seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !128
  br label %"_ZNSt14_Function_base13_Base_managerIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN28WeightedReservoir_Basic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOlS7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #25 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 12 uses
  %.val = load i64, ptr %1, align 8, !tbaa !61    ; 2 uses
  %.val3 = load i64, ptr %2, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp slt i64 %.val, %.val3
  br i1 %i.b, label %.lr.ph.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !696, !nonnull !30, !align !127 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.f = fadd float %i.e, 0.000000e+00            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !22 ; 2 uses
  %i.i = fadd float %i.f, %i.h                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !22 ; 2 uses
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  %i.m = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.c, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !22 ; 4 uses
  %i.n = shufflevector <7 x float> %i.m, <7 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %i.n, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.p = fadd <4 x float> %i.o, <float 0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.q = shufflevector <7 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison, float poison, float poison>, <7 x float> %i.m, <4 x i32> <i32 9, i32 1, i32 2, i32 3>
  %i.r = fadd <4 x float> %i.p, %i.q              ; 2 uses
  %i.s = shufflevector <7 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison, float poison, float poison>, <7 x float> %i.m, <4 x i32> <i32 11, i32 1, i32 2, i32 3>
  %i.t = fadd <4 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <7 x float> %i.m, <7 x float> poison, <4 x i32> <i32 6, i32 2, i32 4, i32 6>
  %i.v = fadd <4 x float> %i.t, %i.u              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !22 ; 2 uses
  %i.y = fadd float %i.l, %i.x                    ; 2 uses
  %i.z = insertelement <4 x float> poison, float %i.x, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.k, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.h, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.e, i64 3
  %i.ad = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.l, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.i, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.f, i64 3
  %i.ah = fdiv <4 x float> %i.ac, %i.ag
  %i.ai = extractelement <4 x float> %i.v, i64 0  ; 2 uses
  %i.aj = fcmp ule float %i.ai, 0.000000e+00
  %i.ak = fadd float %i.ai, %i.y
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> %i.r, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ap = fdiv <4 x float> %i.v, %i.ao
  br label %_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i

.preheader.loopexit.i.i.i:                        ; preds = %_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.a, align 16, !tbaa !20
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre38.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !20
  %.phi.trans.insert39.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre40.i.i.i = load i32, ptr %.phi.trans.insert39.i.i.i, align 8, !tbaa !20
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre42.i.i.i = load i32, ptr %.phi.trans.insert41.i.i.i, align 4, !tbaa !20
  %.phi.trans.insert43.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre44.i.i.i = load i32, ptr %.phi.trans.insert43.i.i.i, align 16, !tbaa !20
  %.phi.trans.insert45.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre46.i.i.i = load i32, ptr %.phi.trans.insert45.i.i.i, align 4, !tbaa !20
  %.phi.trans.insert47.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre48.i.i.i = load i32, ptr %.phi.trans.insert47.i.i.i, align 8, !tbaa !20
  %.phi.trans.insert49.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre50.i.i.i = load i32, ptr %.phi.trans.insert49.i.i.i, align 4, !tbaa !20
  br label %"_ZSt10__invoke_rIvRZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.b:                                             ; preds = %_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i
  %i.aq = mul i64 %i.db, 6364136223846793005
  %i.ar = lshr i64 %i.cu, 31
  %i.as = xor i64 %i.ar, %i.cu
  %i.at = mul i64 %i.as, 9202493588570546565      ; 2 uses
  %i.au = lshr i64 %i.at, 27
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -9089707755183418291     ; 2 uses
  %i.ax = lshr i64 %i.aw, 33
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = shl i64 %i.cu, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 5 uses
  %i.bb = add i64 %i.ay, %i.ba
  %i.bc = mul i64 %i.bb, 6364136223846793005
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = mul i64 %i.bd, 6364136223846793005
  %i.bf = add i64 %i.aq, %i.cr
  %i.bg = add i64 %i.be, %i.ba                    ; 2 uses
  %i.bh = mul i64 %i.bg, 6364136223846793005
  %i.bi = add i64 %i.bh, %i.ba                    ; 2 uses
  %i.bj = mul i64 %i.bi, 6364136223846793005
  %i.bk = add i64 %i.bj, %i.ba
  %i.bl = insertelement <4 x i64> poison, i64 %i.bf, i64 0
  %i.bm = insertelement <4 x i64> %i.bl, i64 %i.bg, i64 1
  %i.bn = insertelement <4 x i64> %i.bm, i64 %i.bi, i64 2
  %i.bo = insertelement <4 x i64> %i.bn, i64 %i.bk, i64 3 ; 3 uses
  %i.bp = lshr <4 x i64> %i.bo, splat (i64 45)
  %i.bq = lshr <4 x i64> %i.bo, splat (i64 27)
  %i.br = xor <4 x i64> %i.bp, %i.bq
  %i.bs = trunc <4 x i64> %i.br to <4 x i32>      ; 2 uses
  %i.bt = lshr <4 x i64> %i.bo, splat (i64 59)
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = tail call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.bs, <4 x i32> %i.bs, <4 x i32> %i.bu)
  %i.bw = uitofp <4 x i32> %i.bv to <4 x float>
  %i.bx = fmul nnan <4 x float> %i.bw, splat (float f0x2F800000) ; 2 uses
  %i.by = fcmp olt <4 x float> %i.bx, splat (float f0x3F7FFFFF)
  %i.bz = select <4 x i1> %i.by, <4 x float> %i.bx, <4 x float> splat (float f0x3F7FFFFF)
  %i.ca = fcmp olt <4 x float> %i.bz, %i.ap       ; 4 uses
  %i.cb = extractelement <4 x i1> %i.ca, i64 1
  %spec.select23.2.i.i.i = select i1 %i.cb, i32 2, i32 0
  %i.cc = extractelement <4 x i1> %i.ca, i64 2
  %spec.select23.4.i.i.i = select i1 %i.cc, i32 4, i32 %spec.select23.2.i.i.i
  %i.cd = extractelement <4 x i1> %i.ca, i64 3
  %spec.select23.6.i.i.i = select i1 %i.cd, i32 6, i32 %spec.select23.4.i.i.i
  %i.ce = extractelement <4 x i1> %i.ca, i64 0
  %spec.select.i.i.i = select i1 %i.ce, i32 %spec.select23.6.i.i.i, i32 %spec.select22.7.i.i.i
  br label %_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i

_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i: ; preds = %_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i, %bb.b
  %.sroa.19.2.i.i.i = phi i32 [ %spec.select22.7.i.i.i, %_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i ], [ %spec.select.i.i.i, %bb.b ]
  %3 = zext nneg i32 %.sroa.19.2.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !20
  %exitcond.not.i.i.i = icmp eq i64 %i.cu, %.val3
  br i1 %exitcond.not.i.i.i, label %.preheader.loopexit.i.i.i, label %_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i, !llvm.loop !694

_ZN4pbrt24WeightedReservoirSamplerIiE3AddERKif.exit.7.i.i.i: ; preds = %_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.01033.i.i.i = phi i64 [ %i.cu, %_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i ], [ %.val, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.ci = lshr i64 %.01033.i.i.i, 31
  %i.cj = xor i64 %i.ci, %.01033.i.i.i
  %i.ck = mul i64 %i.cj, 9202493588570546565      ; 2 uses
  %i.cl = lshr i64 %i.ck, 27
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, -9089707755183418291     ; 2 uses
  %i.co = lshr i64 %i.cn, 33
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = shl i64 %.01033.i.i.i, 1
  %i.cr = or disjoint i64 %i.cq, 1                ; 6 uses
  %i.cs = add i64 %i.cp, %i.cr
  %i.ct = mul i64 %i.cs, 6364136223846793005
  %i.cu = add nsw i64 %.01033.i.i.i, 1            ; 5 uses
  %i.cv = add i64 %i.ct, %i.cr                    ; 2 uses
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, %i.cr                    ; 2 uses
  %i.cy = mul i64 %i.cx, 6364136223846793005
  %i.cz = add i64 %i.cy, %i.cr                    ; 2 uses
  %i.da = mul i64 %i.cz, 6364136223846793005
  %i.db = add i64 %i.da, %i.cr                    ; 2 uses
  %i.dc = insertelement <4 x i64> poison, i64 %i.db, i64 0
  %i.dd = insertelement <4 x i64> %i.dc, i64 %i.cz, i64 1
  %i.de = insertelement <4 x i64> %i.dd, i64 %i.cx, i64 2
  %i.df = insertelement <4 x i64> %i.de, i64 %i.cv, i64 3 ; 3 uses
  %i.dg = lshr <4 x i64> %i.df, splat (i64 45)
  %i.dh = lshr <4 x i64> %i.df, splat (i64 27)
  %i.di = xor <4 x i64> %i.dg, %i.dh
  %i.dj = trunc <4 x i64> %i.di to <4 x i32>      ; 2 uses
  %i.dk = lshr <4 x i64> %i.df, splat (i64 59)
  %i.dl = trunc nuw nsw <4 x i64> %i.dk to <4 x i32>
  %i.dm = tail call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.dj, <4 x i32> %i.dj, <4 x i32> %i.dl)
  %i.dn = uitofp <4 x i32> %i.dm to <4 x float>
  %i.do = fmul nnan <4 x float> %i.dn, splat (float f0x2F800000) ; 2 uses
  %i.dp = fcmp olt <4 x float> %i.do, splat (float f0x3F7FFFFF)
  %i.dq = select <4 x i1> %i.dp, <4 x float> %i.do, <4 x float> splat (float f0x3F7FFFFF)
  %i.dr = fcmp olt <4 x float> %i.dq, %i.ah       ; 4 uses
  %i.ds = extractelement <4 x i1> %i.dr, i64 3
  %spec.select22.1.i.i.i = zext i1 %i.ds to i32
  %i.dt = extractelement <4 x i1> %i.dr, i64 2
  %spec.select22.3.i.i.i = select i1 %i.dt, i32 3, i32 %spec.select22.1.i.i.i
  %i.du = extractelement <4 x i1> %i.dr, i64 1
  %spec.select22.5.i.i.i = select i1 %i.du, i32 5, i32 %spec.select22.3.i.i.i
  %i.dv = extractelement <4 x i1> %i.dr, i64 0
  %spec.select22.7.i.i.i = select i1 %i.dv, i32 7, i32 %spec.select22.5.i.i.i ; 2 uses
  br i1 %i.aj, label %_ZN4pbrt24WeightedReservoirSamplerIiE5MergeERKS1_.exit.i.i.i, label %bb.b

"_ZSt10__invoke_rIvRZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit": ; preds = %bb.a, %.preheader.loopexit.i.i.i
  %i.dw = phi i32 [ %.pre50.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.dx = phi i32 [ %.pre48.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.dy = phi i32 [ %.pre46.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.dz = phi i32 [ %.pre44.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ea = phi i32 [ %.pre42.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.eb = phi i32 [ %.pre40.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ec = phi i32 [ %.pre38.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ed = phi i32 [ %.pre.i.i.i, %.preheader.loopexit.i.i.i ], [ 0, %bb.a ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.eg = atomicrmw add ptr %i.ef, i32 %i.ed seq_cst, align 4 ; 0 uses
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = atomicrmw add ptr %i.ei, i32 %i.ec seq_cst, align 4 ; 0 uses
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = atomicrmw add ptr %i.el, i32 %i.eb seq_cst, align 4 ; 0 uses
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ep = atomicrmw add ptr %i.eo, i32 %i.ea seq_cst, align 4 ; 0 uses
  %i.eq = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = atomicrmw add ptr %i.er, i32 %i.dz seq_cst, align 4 ; 0 uses
  %i.et = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ev = atomicrmw add ptr %i.eu, i32 %i.dy seq_cst, align 4 ; 0 uses
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = atomicrmw add ptr %i.ex, i32 %i.dx seq_cst, align 4 ; 0 uses
  %i.ez = load ptr, ptr %i.ee, align 8, !tbaa !697, !nonnull !30, !align !127
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.fb = atomicrmw add ptr %i.fa, i32 %i.dw seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !128
  br label %"_ZNSt14_Function_base13_Base_managerIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN38WeightedReservoir_MergeReservoirs_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRdJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #30
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 115, i64 noundef 0) #30
  %.not20 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 100, i64 noundef 0) #30
  %.not21 = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.ab
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %cond = icmp eq i64 %i.g, 2
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = icmp ne i16 %i.i, 26149
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = load i16, ptr %i.h, align 1
  %i.n = icmp ne i16 %i.m, 29477
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.q = load double, ptr %2, align 8, !tbaa !58
  invoke void @_ZN4pbrt6detail14DoubleToStringB5cxx11Ed(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, double noundef %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.373) #33
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.x = load ptr, ptr %5, align 8, !tbaa !36
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !42
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ab

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.f
  %.pn28 = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  br i1 %.not21, label %bb.h, label %.invoke

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81
  br i1 %.not20, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = load double, ptr %2, align 8, !tbaa !58
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, double noundef %i.am)
          to label %_ZNSolsEd.exit unwind label %bb.r ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ao = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
end_hunk_0
